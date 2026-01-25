(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1769382893)
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
      (let ((_%flags110761%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties110762%_ '((direct-slots:) (system: . #t)))
            (_%slot-table110763%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags110761%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table110763%_
           _%properties110762%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots110737%_
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
             (_%slot-vector110739%_ (list->vector (cons '#f _%slots110737%_)))
             (_%slot-table110746%_
              (let ((_%slot-table110741%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp112336
                       (lambda (_%slot110743%_ _%field110744%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110741%_
                            _%slot110743%_
                            _%field110744%_))
                         (let ((__tmp112337
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot110743%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table110741%_
                            __tmp112337
                            _%field110744%_))))
                      (__tmp112334
                       (let ((__tmp112335
                              (let ()
                                (declare (not safe))
                                (##length _%slots110737%_))))
                         (declare (not safe))
                         (##iota __tmp112335 '1))))
                  (declare (not safe))
                  (##for-each __tmp112336 _%slots110737%_ __tmp112334))
                _%slot-table110741%_))
             (_%flags110748%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields110754%_
              (list->vector
               (let ((__tmp112338
                      (map (lambda (_%g110749110751%_)
                             (list _%g110749110751%_ '5 '#f))
                           (drop _%slots110737%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp112338))))
             (_%properties110756%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots110737%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t110758%_
              (let ((__tmp112339 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags110748%_
                 ##type-type
                 _%fields110754%_
                 __tmp112339
                 _%slot-vector110739%_
                 _%slot-table110746%_
                 _%properties110756%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t110758%_ _%t110758%_))
        _%t110758%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags110733%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties110734%_ '((direct-slots:) (system: . #t)))
            (_%slot-table110735%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp112340 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags110733%_
           '#f
           '#()
           __tmp112340
           '#(#f)
           _%slot-table110735%_
           _%properties110734%_
           '#f
           '#f
           '#f
           '#f))))
    (define class-type
      (lambda (_%klass110719%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110719%_ 'class))
            (let ((_%klass110723%_ _%klass110719%_))
              (__class-type _%klass110723%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass110719%_)
              '#!void))))
    (define __class-type
      (lambda (_%klass110707%_)
        (let ((_%klass110710%_ _%klass110707%_))
          (declare (not safe))
          (##structure-type _%klass110710%_))))
    (define class-type?
      (lambda (_%obj110705%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj110705%_ 'class))))
    (define class-type=?
      (lambda (_%x110680%_ _%y110681%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x110680%_ 'class))
            (let ((_%x110685%_ _%x110680%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y110681%_ 'class))
                  (let ((_%y110695%_ _%y110681%_))
                    (__class-type=? _%x110685%_ _%y110695%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y110681%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x110680%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x110659%_ _%y110660%_)
        (let* ((_%x110663%_ _%x110659%_) (_%y110671%_ _%y110660%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x110663%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y110671%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type110645%_)
        (if (let () (declare (not safe)) (##type? _%type110645%_))
            (let ((_%type110649%_ _%type110645%_))
              (__type-opaque? _%type110649%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type110645%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type110633%_)
        (let* ((_%type110636%_ _%type110633%_)
               (__tmp112341
                (let ((__tmp112342
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type110636%_))))
                  (declare (not safe))
                  (##fxand __tmp112342 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp112341 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass110619%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110619%_ 'class))
            (let ((_%klass110623%_ _%klass110619%_))
              (__class-type-opaque? _%klass110623%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass110619%_)
              '#!void))))
    (define __class-type-opaque?
      (lambda (_%klass110607%_)
        (let* ((_%klass110610%_ _%klass110607%_)
               (__tmp112343
                (let ((__tmp112344
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass110610%_))))
                  (declare (not safe))
                  (##fxand __tmp112344 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp112343 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type110593%_)
        (if (let () (declare (not safe)) (##type? _%type110593%_))
            (let ((_%type110597%_ _%type110593%_))
              (__type-extensible? _%type110597%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type110593%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type110581%_)
        (let* ((_%type110584%_ _%type110581%_)
               (__tmp112345
                (let ((__tmp112346
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type110584%_))))
                  (declare (not safe))
                  (##fxand __tmp112346 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp112345 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type110567%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type110567%_ 'class))
            (let ((_%type110571%_ _%type110567%_))
              (__class-type-final? _%type110571%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type110567%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type110555%_)
        (let* ((_%type110558%_ _%type110555%_)
               (__tmp112347
                (let ((__tmp112348
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type110558%_))))
                  (declare (not safe))
                  (##fxand __tmp112348 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp112347 '0))))
    (define class-type-struct?
      (lambda (_%klass110541%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110541%_ 'class))
            (let ((_%klass110545%_ _%klass110541%_))
              (__class-type-struct? _%klass110545%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass110541%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass110529%_)
        (let* ((_%klass110532%_ _%klass110529%_)
               (__tmp112349
                (let ((__tmp112350
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass110532%_))))
                  (declare (not safe))
                  (##fxand __tmp112350 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp112349 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass110515%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110515%_ 'class))
            (let ((_%klass110519%_ _%klass110515%_))
              (__class-type-sealed? _%klass110519%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass110515%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass110503%_)
        (let* ((_%klass110506%_ _%klass110503%_)
               (__tmp112351
                (let ((__tmp112352
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass110506%_))))
                  (declare (not safe))
                  (##fxand __tmp112352 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp112351 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass110489%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110489%_ 'class))
            (let ((_%klass110493%_ _%klass110489%_))
              (__class-type-metaclass? _%klass110493%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass110489%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass110477%_)
        (let* ((_%klass110480%_ _%klass110477%_)
               (__tmp112353
                (let ((__tmp112354
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass110480%_))))
                  (declare (not safe))
                  (##fxand __tmp112354 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp112353 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass110463%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110463%_ 'class))
            (let ((_%klass110467%_ _%klass110463%_))
              (__class-type-system? _%klass110467%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass110463%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass110451%_)
        (let* ((_%klass110454%_ _%klass110451%_)
               (__tmp112355
                (let ((__tmp112356
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass110454%_))))
                  (declare (not safe))
                  (##fxand __tmp112356 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp112355 class-type-flag-system))))
    (define class-type-acyclic?
      (lambda (_%klass110437%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110437%_ 'class))
            (let ((_%klass110441%_ _%klass110437%_))
              (__class-type-acyclic? _%klass110441%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass110437%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass110425%_)
        (let* ((_%klass110428%_ _%klass110425%_)
               (__tmp112357
                (let ((__tmp112358
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass110428%_))))
                  (declare (not safe))
                  (##fxand __tmp112358 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp112357 class-type-flag-acyclic))))
    (define make-class-type-descriptor
      (lambda (_%type-id110306%_
               _%type-name110307%_
               _%type-super110308%_
               _%precedence-list110309%_
               _%slot-vector110310%_
               _%properties110311%_
               _%constructor110312%_
               _%slot-table110313%_
               _%methods110314%_)
        (letrec ((_%make-props!110317%_
                  (lambda (_%key110394%_)
                    (letrec* ((_%ht110396%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!110397%_
                               (lambda (_%ht110418%_ _%slots110419%_)
                                 (for-each
                                  (lambda (_%g110420110422%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht110418%_
                                       _%g110420110422%_
                                       '#t)))
                                  _%slots110419%_)))
                              (_%put-alist!110398%_
                               (lambda (_%ht110407%_
                                        _%key110408%_
                                        _%alist110409%_)
                                 (let ((_%$e110411%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key110408%_
                                           _%alist110409%_))))
                                   (if _%$e110411%_
                                       ((lambda (_%g110413110415%_)
                                          (_%put-slots!110397%_
                                           _%ht110407%_
                                           _%g110413110415%_))
                                        _%$e110411%_)
                                       '#!void)))))
                      (_%put-alist!110398%_
                       _%ht110396%_
                       _%key110394%_
                       _%properties110311%_)
                      (for-each
                       (lambda (_%mixin110400%_)
                         (let ((_%alist110402%_
                                (##structure-ref
                                 _%mixin110400%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist110402%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key110394%_
                                           _%alist110402%_))))
                               (_%put-slots!110397%_
                                _%ht110396%_
                                (class-type-slot-list _%mixin110400%_))
                               (_%put-alist!110398%_
                                _%ht110396%_
                                _%key110394%_
                                _%alist110402%_))))
                       _%precedence-list110309%_)
                      _%ht110396%_))))
          (let* ((_%transparent?110319%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties110311%_)))
                 (_%all-slots-printable?110324%_
                  (let ((_%$e110321%_ _%transparent?110319%_))
                    (if _%$e110321%_
                        _%$e110321%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties110311%_))))))
                 (_%printable110326%_
                  (if (not _%all-slots-printable?110324%_)
                      (_%make-props!110317%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?110331%_
                  (let ((_%$e110328%_ _%transparent?110319%_))
                    (if _%$e110328%_
                        _%$e110328%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties110311%_))))))
                 (_%equalable110333%_
                  (if (not _%all-slots-equalable?110331%_)
                      (_%make-props!110317%_ 'equal:)
                      '#f))
                 (_%first-new-field110335%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super110308%_ 'class))
                      (let ((__tmp112359
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super110308%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp112359))
                      '1))
                 (_%field-info-length110337%_
                  (let ((__tmp112360
                         (let ((__tmp112361
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector110310%_))))
                           (declare (not safe))
                           (##fx- __tmp112361 _%first-new-field110335%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp112360)))
                 (_%field-info110339%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length110337%_ '#f)))
                 (_%struct?110341%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties110311%_)))
                 (_%final?110343%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties110311%_)))
                 (_%metaclass110350%_
                  (let ((_%metaclass110344110346%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties110311%_))))
                    (if _%metaclass110344110346%_
                        (let ((_%metaclass110348%_ _%metaclass110344110346%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass110348%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id110306%_
                                     'metaclass:
                                     _%metaclass110348%_))
                          _%metaclass110348%_)
                        '#f)))
                 (_%system?110352%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties110311%_)))
                 (_%opaque?110360%_
                  (if (or _%transparent?110319%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties110311%_)))
                      '#f
                      (let ((_%$e110357%_ (not _%type-super110308%_)))
                        (if _%$e110357%_
                            _%$e110357%_
                            (__type-opaque? _%type-super110308%_)))))
                 (_%acyclic?110362%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties110311%_)))
                 (_%type-flags110364%_
                  (let ((__tmp112367
                         (if _%final?110343%_ '0 type-flag-extensible))
                        (__tmp112366
                         (if _%opaque?110360%_ type-flag-opaque '0))
                        (__tmp112365
                         (if _%struct?110341%_ class-type-flag-struct '0))
                        (__tmp112364
                         (if _%metaclass110350%_ class-type-flag-metaclass '0))
                        (__tmp112363
                         (if _%system?110352%_ class-type-flag-system '0))
                        (__tmp112362
                         (if _%acyclic?110362%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp112367
                             __tmp112366
                             __tmp112365
                             __tmp112364
                             __tmp112363
                             __tmp112362)))
                 (_%precedence-list110372%_
                  (let ((_%$e110366%_ (memq t::t _%precedence-list110309%_)))
                    (if _%$e110366%_
                        ((lambda (_%tail110369%_)
                           (if (null? (cdr _%tail110369%_))
                               _%precedence-list110309%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list110309%_)))
                         _%$e110366%_)
                        (let ((__tmp112368 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list110309%_ __tmp112368))))))
            (let _%loop110375%_ ((_%i110377%_ _%first-new-field110335%_)
                                 (_%j110378%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j110378%_ _%field-info-length110337%_))
                  (let* ((_%slot110380%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector110310%_ _%i110377%_)))
                         (_%flags110388%_
                          (if _%transparent?110319%_
                              '0
                              (let ((__tmp112370
                                     (if (or _%all-slots-printable?110324%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable110326%_
                                                _%slot110380%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp112369
                                     (if (or _%all-slots-equalable?110331%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable110333%_
                                                _%slot110380%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp112370 __tmp112369)))))
                    (vector-set!
                     _%field-info110339%_
                     _%j110378%_
                     _%slot110380%_)
                    (vector-set!
                     _%field-info110339%_
                     (let () (declare (not safe)) (##fx+ _%j110378%_ '1))
                     _%flags110388%_)
                    (_%loop110375%_
                     (let () (declare (not safe)) (##fx+ _%i110377%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j110378%_ '3))))
                  '#!void))
            (if _%metaclass110350%_
                (let ((_%val110391%_
                       (make-instance
                        _%metaclass110350%_
                        _%type-id110306%_
                        _%type-name110307%_
                        _%type-flags110364%_
                        _%type-super110308%_
                        _%field-info110339%_
                        _%precedence-list110372%_
                        _%slot-vector110310%_
                        _%slot-table110313%_
                        _%properties110311%_
                        _%constructor110312%_
                        _%methods110314%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val110391%_ 'class))
                      _%val110391%_
                      (error '"bad cast" class::t _%val110391%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id110306%_
                   _%type-name110307%_
                   _%type-flags110364%_
                   _%type-super110308%_
                   _%field-info110339%_
                   _%precedence-list110372%_
                   _%slot-vector110310%_
                   _%slot-table110313%_
                   _%properties110311%_
                   _%constructor110312%_
                   _%methods110314%_
                   '#f
                   '#f)))))))
    (define class-type-id
      (lambda (_%klass110304%_)
        (##structure-ref _%klass110304%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass110302%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass110302%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass110299%_ _%val110300%_)
        (##structure-set! _%klass110299%_ _%val110300%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass110294%_ _%val110296%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass110294%_
           _%val110296%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass110292%_)
        (##structure-ref _%klass110292%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass110290%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass110290%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass110287%_ _%val110288%_)
        (##structure-set! _%klass110287%_ _%val110288%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass110282%_ _%val110284%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass110282%_
           _%val110284%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass110280%_)
        (##structure-ref _%klass110280%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass110278%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass110278%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass110275%_ _%val110276%_)
        (##structure-set! _%klass110275%_ _%val110276%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass110270%_ _%val110272%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass110270%_
           _%val110272%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass110268%_)
        (##structure-ref _%klass110268%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass110266%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass110266%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass110263%_ _%val110264%_)
        (##structure-set! _%klass110263%_ _%val110264%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass110258%_ _%val110260%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass110258%_
           _%val110260%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass110256%_)
        (##structure-ref _%klass110256%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass110254%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass110254%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass110251%_ _%val110252%_)
        (##structure-set! _%klass110251%_ _%val110252%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass110246%_ _%val110248%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass110246%_
           _%val110248%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass110244%_)
        (##structure-ref _%klass110244%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass110242%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass110242%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass110239%_ _%val110240%_)
        (##structure-set!
         _%klass110239%_
         _%val110240%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass110234%_ _%val110236%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass110234%_
           _%val110236%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass110232%_)
        (##structure-ref _%klass110232%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass110230%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass110230%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass110227%_ _%val110228%_)
        (##structure-set!
         _%klass110227%_
         _%val110228%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass110222%_ _%val110224%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass110222%_
           _%val110224%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass110220%_)
        (##structure-ref _%klass110220%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass110218%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass110218%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass110215%_ _%val110216%_)
        (##structure-set!
         _%klass110215%_
         _%val110216%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass110210%_ _%val110212%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass110210%_
           _%val110212%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass110208%_)
        (##structure-ref _%klass110208%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass110206%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass110206%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass110203%_ _%val110204%_)
        (##structure-set!
         _%klass110203%_
         _%val110204%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass110198%_ _%val110200%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass110198%_
           _%val110200%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass110196%_)
        (##structure-ref _%klass110196%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass110194%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass110194%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass110191%_ _%val110192%_)
        (##structure-set!
         _%klass110191%_
         _%val110192%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass110186%_ _%val110188%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass110186%_
           _%val110188%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass110184%_)
        (##structure-ref _%klass110184%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass110182%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass110182%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass110179%_ _%val110180%_)
        (##structure-set!
         _%klass110179%_
         _%val110180%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass110174%_ _%val110176%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass110174%_
           _%val110176%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass110172%_)
        (##structure-ref _%klass110172%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass110170%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass110170%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass110167%_ _%val110168%_)
        (##structure-set!
         _%klass110167%_
         _%val110168%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass110162%_ _%val110164%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass110162%_
           _%val110164%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass110160%_)
        (##structure-ref _%klass110160%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass110158%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass110158%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass110155%_ _%val110156%_)
        (##structure-set!
         _%klass110155%_
         _%val110156%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass110150%_ _%val110152%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass110150%_
           _%val110152%_
           '13
           class::t
           'interface))))
    (define class-type-slot-list
      (lambda (_%klass110136%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110136%_ 'class))
            (let ((_%klass110140%_ _%klass110136%_))
              (__class-type-slot-list _%klass110140%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@345.29-345.34"
               'contract:
               'class-type?
               'value:
               _%klass110136%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass110124%_)
        (let ((_%klass110127%_ _%klass110124%_))
          (vector->list
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass110127%_ '7 '#f '#f))
           '1))))
    (define class-type-field-count
      (lambda (_%klass110110%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110110%_ 'class))
            (let ((_%klass110114%_ _%klass110110%_))
              (__class-type-field-count _%klass110114%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@347.31-347.36"
               'contract:
               'class-type?
               'value:
               _%klass110110%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass110098%_)
        (let* ((_%klass110101%_ _%klass110098%_)
               (__tmp112371
                (let ((__tmp112372
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass110101%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp112372))))
          (declare (not safe))
          (##fx- __tmp112371 '1))))
    (define class-type-seal!
      (lambda (_%klass110084%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110084%_ 'class))
            (let ((_%klass110088%_ _%klass110084%_))
              (__class-type-seal! _%klass110088%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@350.25-350.30"
               'contract:
               'class-type?
               'value:
               _%klass110084%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass110072%_)
        (let ((_%klass110075%_ _%klass110072%_))
          (let ((__tmp112373
                 (let ((__tmp112374
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass110075%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp112374))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass110075%_
             __tmp112373
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define class-type-printable-slots
      (lambda (_%klass110058%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass110058%_ 'class))
            (let ((_%klass110062%_ _%klass110058%_))
              (__class-type-printable-slots _%klass110062%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@357.35-357.40"
               'contract:
               'class-type?
               'value:
               _%klass110058%_)
              '#!void))))
    (define __class-type-printable-slots
      (lambda (_%klass109991%_)
        (let ((_%klass109994%_ _%klass109991%_))
          (letrec ((_%get-field-vector110003%_
                    (lambda (_%type110042%_)
                      (let _%loop110044%_ ((_%type110046%_ _%type110042%_))
                        (let* ((_%fields110048%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type110046%_)))
                               (_%$e110050%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type110046%_))))
                          (if _%$e110050%_
                              ((lambda (_%super110053%_)
                                 (let ((_%super-fields110055%_
                                        (_%loop110044%_ _%super110053%_)))
                                   (vector-append
                                    _%super-fields110055%_
                                    _%fields110048%_)))
                               _%$e110050%_)
                              _%fields110048%_)))))
                   (_%get-printable-slot-alist110004%_
                    (lambda (_%type110025%_)
                      (let* ((_%fields110027%_
                              (_%get-field-vector110003%_ _%type110025%_))
                             (_%count110029%_
                              (vector-length _%fields110027%_)))
                        (let _%loop110032%_ ((_%i110034%_ '3)
                                             (_%offset110035%_ '1)
                                             (_%r110036%_ '()))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i110034%_ _%count110029%_))
                              (let ((_%slot-name110038%_
                                     (vector-ref _%fields110027%_ _%i110034%_))
                                    (_%slot-flags110039%_
                                     (vector-ref
                                      _%fields110027%_
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%i110034%_ '1))))
                                    (_%next-i110040%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i110034%_ '2))))
                                (if (let ((__tmp112375
                                           (let ()
                                             (declare (not safe))
                                             (##fxand _%slot-flags110039%_
                                                      '1))))
                                      (declare (not safe))
                                      (##fx= __tmp112375 '0))
                                    (_%loop110032%_
                                     _%next-i110040%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset110035%_ '1))
                                     _%r110036%_)
                                    (_%loop110032%_
                                     _%next-i110040%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset110035%_ '1))
                                     (cons (cons _%slot-name110038%_
                                                 _%offset110035%_)
                                           _%r110036%_))))
                              (reverse! _%r110036%_))))))
                   (_%get-printable-slots!110005%_
                    (lambda (_%klass110020%_ _%type110021%_)
                      (let ((_%printable110023%_
                             (_%get-printable-slot-alist110004%_
                              _%type110021%_)))
                        (##structure-set!
                         _%klass110020%_
                         (cons (cons 'printable-slots: _%printable110023%_)
                               (##structure-ref
                                _%klass110020%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%printable110023%_))))
            (let* ((_%props110007%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass109994%_ '9 '#f '#f)))
                   (_%$e110009%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'printable-slots: _%props110007%_))))
              (if _%$e110009%_
                  _%$e110009%_
                  (let ((_%$e110012%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props110007%_))))
                    (if _%$e110012%_
                        ((lambda (_%g110014110016%_)
                           (_%get-printable-slots!110005%_
                            _%klass109994%_
                            _%g110014110016%_))
                         _%$e110012%_)
                        (_%get-printable-slots!110005%_
                         _%klass109994%_
                         _%klass109994%_)))))))))
    (define substruct?
      (lambda (_%maybe-sub-struct109966%_ _%maybe-super-struct109967%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct109966%_ 'class))
            (let ((_%maybe-sub-struct109971%_ _%maybe-sub-struct109966%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct109967%_
                     'class))
                  (let ((_%maybe-super-struct109981%_
                         _%maybe-super-struct109967%_))
                    (__substruct?
                     _%maybe-sub-struct109971%_
                     _%maybe-super-struct109981%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@403.47-403.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct109967%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@403.19-403.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct109966%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct109935%_ _%maybe-super-struct109936%_)
        (let* ((_%maybe-sub-struct109939%_ _%maybe-sub-struct109935%_)
               (_%maybe-super-struct109947%_ _%maybe-super-struct109936%_)
               (_%maybe-super-struct-id109956%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct109947%_))))
          (let _%lp109958%_ ((_%super-struct109960%_
                              _%maybe-sub-struct109939%_))
            (if (not _%super-struct109960%_)
                '#f
                (if (eq? _%maybe-super-struct-id109956%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct109960%_)))
                    '#t
                    (_%lp109958%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct109960%_)))))))))
    (define base-struct/1
      (lambda (_%klass109930%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109930%_ 'class))
            (if (__class-type-struct? _%klass109930%_)
                _%klass109930%_
                (let () (declare (not safe)) (##type-super _%klass109930%_)))
            (if (not _%klass109930%_)
                '#f
                (error '"not a class or false" _%klass109930%_)))))
    (define base-struct/2
      (lambda (_%klass1109915%_ _%klass2109916%_)
        (let ((_%s1109918%_ (base-struct/1 _%klass1109915%_))
              (_%s2109919%_ (base-struct/1 _%klass2109916%_)))
          (if (or (not _%s1109918%_)
                  (and _%s2109919%_ (substruct? _%s1109918%_ _%s2109919%_)))
              _%s2109919%_
              (if (or (not _%s2109919%_)
                      (and _%s1109918%_
                           (substruct? _%s2109919%_ _%s1109918%_)))
                  _%s1109918%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1109915%_
                         _%klass2109916%_
                         _%s1109918%_
                         _%s2109919%_))))))
    (define base-struct/list
      (lambda (_%all-supers109800%_)
        (let* ((_%all-supers109801109826%_ _%all-supers109800%_)
               (_%E109806109830%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers109801109826%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K109824109912%_ (lambda () '#f))
                (_%K109821109898%_
                 (lambda (_%x109896%_) (base-struct/1 _%x109896%_)))
                (_%K109816109875%_
                 (lambda (_%y109872%_ _%x109873%_)
                   (base-struct/2 _%x109873%_ _%y109872%_)))
                (_%K109807109837%_
                 (lambda (_%y109834%_ _%x109835%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x109835%_ _%y109834%_)))))
            (let* ((_%__match112184112185%_
                    (lambda (_%hd109808109840%_ _%tl109809109842%_)
                      (let ((_%x109845%_ _%hd109808109840%_))
                        (letrec ((_%splice-rest109811109847%_
                                  (lambda (_%rest109815109854%_ _%y109856%_)
                                    (if (null? _%rest109815109854%_)
                                        (_%K109807109837%_
                                         _%y109856%_
                                         _%x109845%_)
                                        (_%E109806109830%_))))
                                 (_%splice-try109813109849%_
                                  (lambda (_%hd109814109858%_
                                           _%rest109815109860%_
                                           _%y109810109861%_)
                                    (let ((_%y109863%_ _%hd109814109858%_))
                                      (_%splice-loop109812109851%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest109815109860%_))
                                       (cons _%y109863%_ _%y109810109861%_)))))
                                 (_%splice-loop109812109851%_
                                  (lambda (_%rest109815109865%_
                                           _%y109810109866%_)
                                    (if (pair? _%rest109815109865%_)
                                        (_%splice-try109813109849%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest109815109865%_))
                                         _%rest109815109865%_
                                         _%y109810109866%_)
                                        (_%splice-rest109811109847%_
                                         _%rest109815109865%_
                                         (reverse _%y109810109866%_))))))
                          (_%splice-loop109812109851%_
                           _%tl109809109842%_
                           '())))))
                   (_%try-match109803109908%_
                    (lambda ()
                      (if (pair? _%all-supers109801109826%_)
                          (let ((_%tl109823109903%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers109801109826%_)))
                                (_%hd109822109901%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers109801109826%_))))
                            (if (null? _%tl109823109903%_)
                                (let ((_%x109906%_ _%hd109822109901%_))
                                  (base-struct/1 _%x109906%_))
                                (if (pair? _%tl109823109903%_)
                                    (let ((_%tl109820109887%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl109823109903%_)))
                                          (_%hd109819109885%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl109823109903%_))))
                                      (if (null? _%tl109820109887%_)
                                          (let ((_%x109883%_
                                                 _%hd109822109901%_)
                                                (_%y109890%_
                                                 _%hd109819109885%_))
                                            (_%K109816109875%_
                                             _%y109890%_
                                             _%x109883%_))
                                          (_%__match112184112185%_
                                           _%hd109822109901%_
                                           _%tl109823109903%_)))
                                    (_%__match112184112185%_
                                     _%hd109822109901%_
                                     _%tl109823109903%_))))
                          (_%E109806109830%_)))))
              (if (null? _%all-supers109801109826%_)
                  (_%K109824109912%_)
                  (_%try-match109803109908%_)))))))
    (define base-struct
      (lambda _%all-supers109798%_ (base-struct/list _%all-supers109798%_)))
    (define find-super-constructor
      (lambda (_%super109749%_)
        (let _%lp109751%_ ((_%rest109753%_ _%super109749%_)
                           (_%constructor109754%_ '#f))
          (let* ((_%rest109755109763%_ _%rest109753%_)
                 (_%else109757109771%_ (lambda () _%constructor109754%_))
                 (_%K109759109786%_
                  (lambda (_%rest109774%_ _%hd109775%_)
                    (let ((_%$e109777%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd109775%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e109777%_
                          ((lambda (_%xconstructor109780%_)
                             (if (or (not _%constructor109754%_)
                                     (eq? _%constructor109754%_
                                          _%xconstructor109780%_))
                                 (_%lp109751%_
                                  _%rest109774%_
                                  _%xconstructor109780%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor109754%_
                                        _%xconstructor109780%_)))
                           _%$e109777%_)
                          (_%lp109751%_
                           _%rest109774%_
                           _%constructor109754%_))))))
            (if (pair? _%rest109755109763%_)
                (let ((_%hd109760109789%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest109755109763%_)))
                      (_%tl109761109791%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest109755109763%_))))
                  (let* ((_%hd109794%_ _%hd109760109789%_)
                         (_%rest109796%_ _%tl109761109791%_))
                    (_%K109759109786%_ _%rest109796%_ _%hd109794%_)))
                (_%else109757109771%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list109725%_ _%direct-slots109726%_)
        (let* ((_%next-slot109728%_ '1)
               (_%slot-table109730%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots109732%_ '(__class))
               (_%process-slot109736%_
                (lambda (_%slot109734%_)
                  (if (symbol? _%slot109734%_)
                      '#!void
                      (error '"invalid slot name" _%slot109734%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table109730%_
                              _%slot109734%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table109730%_
                           _%slot109734%_
                           _%next-slot109728%_))
                        (let ((__tmp112376
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot109734%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table109730%_
                           __tmp112376
                           _%next-slot109728%_))
                        (set! _%r-slots109732%_
                              (cons _%slot109734%_ _%r-slots109732%_))
                        (set! _%next-slot109728%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot109728%_ '1))))
                      '#!void)))
               (_%process-slots109742%_
                (lambda (_%g109737109739%_)
                  (for-each _%process-slot109736%_ _%g109737109739%_))))
          (let ((__tmp112378
                 (lambda (_%mixin109745%_)
                   (_%process-slots109742%_
                    (let ((__tmp112379
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin109745%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp112379 '())))))
                (__tmp112377 (reverse _%class-precedence-list109725%_)))
            (declare (not safe))
            (##for-each __tmp112378 __tmp112377))
          (_%process-slots109742%_ _%direct-slots109726%_)
          (let ((_%slot-vector109747%_
                 (list->vector
                  (let ()
                    (declare (not safe))
                    (##reverse _%r-slots109732%_)))))
            (values _%slot-vector109747%_ _%slot-table109730%_)))))
    (define make-class-type
      (lambda (_%id109650%_
               _%name109651%_
               _%direct-supers109652%_
               _%direct-slots109653%_
               _%properties109654%_
               _%constructor109655%_)
        (if (symbol? _%id109650%_)
            (let ((_%id109659%_ _%id109650%_))
              (if (symbol? _%name109651%_)
                  (let ((_%name109669%_ _%name109651%_))
                    (if (list? _%direct-supers109652%_)
                        (let ((_%direct-supers109679%_
                               _%direct-supers109652%_))
                          (if (list? _%direct-slots109653%_)
                              (let ((_%direct-slots109689%_
                                     _%direct-slots109653%_))
                                (if (list? _%properties109654%_)
                                    (let ((_%properties109699%_
                                           _%properties109654%_))
                                      (if ((lambda (_%$obj109708%_)
                                             (or (not _%$obj109708%_)
                                                 (symbol? _%$obj109708%_)))
                                           _%constructor109655%_)
                                          (let ((_%constructor109715%_
                                                 _%constructor109655%_))
                                            (__make-class-type
                                             _%id109659%_
                                             _%name109669%_
                                             _%direct-supers109679%_
                                             _%direct-slots109689%_
                                             _%properties109699%_
                                             _%constructor109715%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@500.24-500.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor109655%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@499.24-499.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties109654%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@498.24-498.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots109653%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@497.24-497.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers109652%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@496.24-496.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name109651%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@495.24-495.26"
               'contract:
               'symbol?
               'value:
               _%id109650%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id109519%_
               _%name109520%_
               _%direct-supers109521%_
               _%direct-slots109522%_
               _%properties109523%_
               _%constructor109524%_)
        (let* ((_%id109527%_ _%id109519%_)
               (_%name109535%_ _%name109520%_)
               (_%direct-supers109543%_ _%direct-supers109521%_)
               (_%direct-slots109551%_ _%direct-slots109522%_)
               (_%properties109559%_ _%properties109523%_)
               (_%constructor109567%_ _%constructor109524%_))
          (let ((_%$e109579%_
                 (let ((__tmp112380
                        (lambda (_%$obj109576%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj109576%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp112380 _%direct-supers109543%_))))
            (if _%$e109579%_
                ((lambda (_%g109581109583%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g109581109583%_))
                 _%$e109579%_)
                (let ((_%$e109586%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final?
                                 _%direct-supers109543%_))))
                  (if _%$e109586%_
                      ((lambda (_%g109588109590%_)
                         (error '"Cannot extend final class"
                                _%g109588109590%_))
                       _%$e109586%_)
                      '#!void))))
          (let ((_g112381_ (compute-precedence-list _%direct-supers109543%_)))
            (begin
              (let ((_g112382_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g112381_)
                           (##values-length _g112381_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g112382_ 2)))
                    (error "Context expects 2 values" _g112382_)))
              (let ((_%precedence-list109593%_
                     (let () (declare (not safe)) (##values-ref _g112381_ 0)))
                    (_%struct-super109594%_
                     (let () (declare (not safe)) (##values-ref _g112381_ 1))))
                (let ((_g112383_
                       (compute-class-slots
                        _%precedence-list109593%_
                        _%direct-slots109551%_)))
                  (begin
                    (let ((_g112384_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g112383_)
                                 (##values-length _g112383_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g112384_ 2)))
                          (error "Context expects 2 values" _g112384_)))
                    (let ((_%slot-vector109596%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g112383_ 0)))
                          (_%slot-table109597%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g112383_ 1))))
                      (let* ((_%properties109599%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots109551%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers109543%_)
                                          _%properties109559%_)))
                             (_%constructor*109604%_
                              (let ((_%$e109601%_ _%constructor109567%_))
                                (if _%$e109601%_
                                    _%$e109601%_
                                    (find-super-constructor
                                     _%direct-supers109543%_))))
                             (_%precedence-list109647%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties109599%_))
                                      (memq object::t
                                            _%precedence-list109593%_))
                                  _%precedence-list109593%_
                                  (let _%loop109609%_ ((_%tail109611%_
                                                        _%precedence-list109593%_)
                                                       (_%head109612%_ '()))
                                    (let* ((_%tail109613109621%_
                                            _%tail109611%_)
                                           (_%else109615109629%_
                                            (lambda ()
                                              (let ((__tmp112385
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp112385
                                                 _%head109612%_))))
                                           (_%K109617109635%_
                                            (lambda (_%rest109632%_
                                                     _%hd109633%_)
                                              (if (eq? _%hd109633%_ t::t)
                                                  (let ((__tmp112386
                                                         (cons object::t
                                                               _%tail109611%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp112386
                                                     _%head109612%_))
                                                  (_%loop109609%_
                                                   _%rest109632%_
                                                   (cons _%hd109633%_
                                                         _%head109612%_))))))
                                      (if (pair? _%tail109613109621%_)
                                          (let ((_%hd109618109638%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail109613109621%_)))
                                                (_%tl109619109640%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail109613109621%_))))
                                            (let* ((_%hd109643%_
                                                    _%hd109618109638%_)
                                                   (_%rest109645%_
                                                    _%tl109619109640%_))
                                              (_%K109617109635%_
                                               _%rest109645%_
                                               _%hd109643%_)))
                                          (_%else109615109629%_)))))))
                        (make-class-type-descriptor
                         _%id109527%_
                         _%name109535%_
                         _%struct-super109594%_
                         _%precedence-list109647%_
                         _%slot-vector109596%_
                         _%properties109599%_
                         _%constructor*109604%_
                         _%slot-table109597%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass109505%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109505%_ 'class))
            (let ((_%klass109509%_ _%klass109505%_))
              (__class-precedence-list _%klass109509%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@533.30-533.35"
               'contract:
               'class-type?
               'value:
               _%klass109505%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass109493%_)
        (let ((_%klass109496%_ _%klass109493%_))
          (cons _%klass109496%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass109496%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers109490%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers109490%_))))
    (define make-class-predicate
      (lambda (_%klass109476%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109476%_ 'class))
            (let ((_%klass109480%_ _%klass109476%_))
              (__make-class-predicate _%klass109480%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@545.29-545.34"
               'contract:
               'class-type?
               'value:
               _%klass109476%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass109447%_)
        (let* ((_%klass109450%_ _%klass109447%_)
               (_%tid109459%_
                (let () (declare (not safe)) (##type-id _%klass109450%_))))
          (if (__class-type-final? _%klass109450%_)
              (lambda (_%g109461109463%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g109461109463%_
                   _%tid109459%_)))
              (if (__class-type-struct? _%klass109450%_)
                  (lambda (_%g109466109468%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%g109466109468%_
                       _%tid109459%_)))
                  (lambda (_%g109471109473%_)
                    (__class-instance? _%klass109450%_ _%g109471109473%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass109422%_ _%slot109423%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109422%_ 'class))
            (let ((_%klass109427%_ _%klass109422%_))
              (if (symbol? _%slot109423%_)
                  (let ((_%slot109437%_ _%slot109423%_))
                    (__make-class-slot-accessor
                     _%klass109427%_
                     _%slot109437%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@576.50-576.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot109423%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@576.33-576.38"
               'contract:
               'class-type?
               'value:
               _%klass109422%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass109390%_ _%slot109391%_)
        (let* ((_%klass109394%_ _%klass109390%_)
               (_%slot109402%_ _%slot109391%_)
               (_%field109411%_
                (let ((__tmp112387
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass109394%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp112387 _%slot109402%_ '#f))))
          (if (not _%field109411%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass109394%_
                       'slot:
                       _%slot109402%_)
                '#!void)
              (if (__class-type-final? _%klass109394%_)
                  (make-final-slot-accessor
                   _%klass109394%_
                   _%slot109402%_
                   _%field109411%_)
                  (if (__class-type-struct? _%klass109394%_)
                      (make-struct-slot-accessor
                       _%klass109394%_
                       _%slot109402%_
                       _%field109411%_)
                      (if (let ((_%strukt109417%_
                                 (base-struct/1 _%klass109394%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt109417%_
                                    'class))
                                 (let ((__tmp112388
                                        (let ((__tmp112389
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt109417%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp112389))))
                                   (declare (not safe))
                                   (##fx< _%field109411%_ __tmp112388))))
                          (make-struct-subclass-slot-accessor
                           _%klass109394%_
                           _%slot109402%_
                           _%field109411%_)
                          (make-class-cached-slot-accessor
                           _%klass109394%_
                           _%slot109402%_
                           _%field109411%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass109365%_ _%slot109366%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109365%_ 'class))
            (let ((_%klass109370%_ _%klass109365%_))
              (if (symbol? _%slot109366%_)
                  (let ((_%slot109380%_ _%slot109366%_))
                    (__make-class-slot-mutator _%klass109370%_ _%slot109380%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@584.49-584.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot109366%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@584.32-584.37"
               'contract:
               'class-type?
               'value:
               _%klass109365%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass109333%_ _%slot109334%_)
        (let* ((_%klass109337%_ _%klass109333%_)
               (_%slot109345%_ _%slot109334%_)
               (_%field109354%_
                (let ((__tmp112390
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass109337%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp112390 _%slot109345%_ '#f))))
          (if (not _%field109354%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass109337%_
                       'slot:
                       _%slot109345%_)
                '#!void)
              (if (__class-type-final? _%klass109337%_)
                  (make-final-slot-mutator
                   _%klass109337%_
                   _%slot109345%_
                   _%field109354%_)
                  (if (__class-type-struct? _%klass109337%_)
                      (make-struct-slot-mutator
                       _%klass109337%_
                       _%slot109345%_
                       _%field109354%_)
                      (if (let ((_%strukt109360%_
                                 (base-struct/1 _%klass109337%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt109360%_
                                    'class))
                                 (let ((__tmp112391
                                        (let ((__tmp112392
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt109360%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp112392))))
                                   (declare (not safe))
                                   (##fx< _%field109354%_ __tmp112391))))
                          (make-struct-subclass-slot-mutator
                           _%klass109337%_
                           _%slot109345%_
                           _%field109354%_)
                          (make-class-cached-slot-mutator
                           _%klass109337%_
                           _%slot109345%_
                           _%field109354%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass109308%_ _%slot109309%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109308%_ 'class))
            (let ((_%klass109313%_ _%klass109308%_))
              (if (symbol? _%slot109309%_)
                  (let ((_%slot109323%_ _%slot109309%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass109313%_
                     _%slot109323%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.60-592.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot109309%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.43-592.48"
               'contract:
               'class-type?
               'value:
               _%klass109308%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass109276%_ _%slot109277%_)
        (let* ((_%klass109280%_ _%klass109276%_)
               (_%slot109288%_ _%slot109277%_)
               (_%field109297%_
                (let ((__tmp112393
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass109280%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp112393 _%slot109288%_ '#f))))
          (if (not _%field109297%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass109280%_
                       'slot:
                       _%slot109288%_)
                '#!void)
              (if (__class-type-final? _%klass109280%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass109280%_
                   _%slot109288%_
                   _%field109297%_)
                  (if (__class-type-struct? _%klass109280%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass109280%_
                       _%slot109288%_
                       _%field109297%_)
                      (if (let ((_%strukt109303%_
                                 (base-struct/1 _%klass109280%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt109303%_
                                    'class))
                                 (let ((__tmp112394
                                        (let ((__tmp112395
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt109303%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp112395))))
                                   (declare (not safe))
                                   (##fx< _%field109297%_ __tmp112394))))
                          (make-struct-slot-unchecked-accessor
                           _%klass109280%_
                           _%slot109288%_
                           _%field109297%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass109280%_
                           _%slot109288%_
                           _%field109297%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass109251%_ _%slot109252%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109251%_ 'class))
            (let ((_%klass109256%_ _%klass109251%_))
              (if (symbol? _%slot109252%_)
                  (let ((_%slot109266%_ _%slot109252%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass109256%_
                     _%slot109266%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@600.59-600.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot109252%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@600.42-600.47"
               'contract:
               'class-type?
               'value:
               _%klass109251%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass109219%_ _%slot109220%_)
        (let* ((_%klass109223%_ _%klass109219%_)
               (_%slot109231%_ _%slot109220%_)
               (_%field109240%_
                (let ((__tmp112396
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass109223%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp112396 _%slot109231%_ '#f))))
          (if (not _%field109240%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass109223%_
                       'slot:
                       _%slot109231%_)
                '#!void)
              (if (__class-type-final? _%klass109223%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass109223%_
                   _%slot109231%_
                   _%field109240%_)
                  (if (__class-type-struct? _%klass109223%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass109223%_
                       _%slot109231%_
                       _%field109240%_)
                      (if (let ((_%strukt109246%_
                                 (base-struct/1 _%klass109223%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt109246%_
                                    'class))
                                 (let ((__tmp112397
                                        (let ((__tmp112398
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt109246%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp112398))))
                                   (declare (not safe))
                                   (##fx< _%field109240%_ __tmp112397))))
                          (make-struct-slot-unchecked-mutator
                           _%klass109223%_
                           _%slot109231%_
                           _%field109240%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass109223%_
                           _%slot109231%_
                           _%field109240%_))))))))
    (define not-an-instance__%
      (lambda (_%object109203%_ _%class109204%_ _%slot109205%_)
        (apply error
               '"not an instance"
               'object:
               _%object109203%_
               'class:
               _%class109204%_
               (if _%slot109205%_
                   (cons 'slot: (cons _%slot109205%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object109210%_ _%class109211%_)
        (let ((_%slot109213%_ '#f))
          (not-an-instance__%
           _%object109210%_
           _%class109211%_
           _%slot109213%_))))
    (define not-an-instance
      (lambda _g112399_
        (let ((_g112400_ (let () (declare (not safe)) (##length _g112399_))))
          (cond ((let () (declare (not safe)) (##fx= _g112400_ 2))
                 (apply not-an-instance__0 _g112399_))
                ((let () (declare (not safe)) (##fx= _g112400_ 3))
                 (apply not-an-instance__% _g112399_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g112399_))))))
    (define make-final-slot-accessor
      (lambda (_%klass109196%_ _%slot109197%_ _%field109198%_)
        (lambda (_%obj109200%_)
          (##direct-structure-ref
           _%obj109200%_
           _%field109198%_
           _%klass109196%_
           _%slot109197%_))))
    (define make-final-slot-mutator
      (lambda (_%klass109189%_ _%slot109190%_ _%field109191%_)
        (lambda (_%obj109193%_ _%val109194%_)
          (##direct-structure-set!
           _%obj109193%_
           _%val109194%_
           _%field109191%_
           _%klass109189%_
           _%slot109190%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass109183%_ _%slot109184%_ _%field109185%_)
        (lambda (_%obj109187%_)
          (##structure-ref
           _%obj109187%_
           _%field109185%_
           _%klass109183%_
           _%slot109184%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass109176%_ _%slot109177%_ _%field109178%_)
        (lambda (_%obj109180%_ _%val109181%_)
          (##structure-set!
           _%obj109180%_
           _%val109181%_
           _%field109178%_
           _%klass109176%_
           _%slot109177%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass109170%_ _%slot109171%_ _%field109172%_)
        (lambda (_%obj109174%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj109174%_
             _%field109172%_
             _%klass109170%_
             _%slot109171%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass109163%_ _%slot109164%_ _%field109165%_)
        (lambda (_%obj109167%_ _%val109168%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj109167%_
             _%val109168%_
             _%field109165%_
             _%klass109163%_
             _%slot109164%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass109157%_ _%slot109158%_ _%field109159%_)
        (lambda (_%obj109161%_)
          (if (class-instance? _%klass109157%_ _%obj109161%_)
              (unchecked-slot-ref _%obj109161%_ _%field109159%_)
              (not-an-instance__%
               _%obj109161%_
               _%klass109157%_
               _%slot109158%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass109150%_ _%slot109151%_ _%field109152%_)
        (lambda (_%obj109154%_ _%val109155%_)
          (if (class-instance? _%klass109150%_ _%obj109154%_)
              (unchecked-field-set!
               _%obj109154%_
               _%field109152%_
               _%val109155%_)
              (not-an-instance__%
               _%obj109154%_
               _%klass109150%_
               _%slot109151%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass109141%_ _%slot109142%_ _%field109143%_)
        (lambda (_%obj109145%_)
          (if (let ((__tmp112401
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass109141%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj109145%_ __tmp112401))
              (unchecked-field-ref _%obj109145%_ _%field109143%_)
              (if (class-instance? _%klass109141%_ _%obj109145%_)
                  (unchecked-slot-ref _%obj109145%_ _%slot109142%_)
                  (not-an-instance__%
                   _%obj109145%_
                   _%klass109141%_
                   _%slot109142%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass109131%_ _%slot109132%_ _%field109133%_)
        (lambda (_%obj109135%_ _%val109136%_)
          (if (let ((__tmp112402
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass109131%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj109135%_ __tmp112402))
              (unchecked-field-set!
               _%obj109135%_
               _%field109133%_
               _%val109136%_)
              (if (class-instance? _%klass109131%_ _%obj109135%_)
                  (unchecked-slot-set!
                   _%obj109135%_
                   _%slot109132%_
                   _%val109136%_)
                  (not-an-instance__%
                   _%obj109135%_
                   _%klass109131%_
                   _%slot109132%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass109125%_ _%slot109126%_ _%field109127%_)
        (lambda (_%obj109129%_)
          (if (let ((__tmp112403
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass109125%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj109129%_ __tmp112403))
              (unchecked-field-ref _%obj109129%_ _%field109127%_)
              (unchecked-slot-ref _%obj109129%_ _%slot109126%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass109118%_ _%slot109119%_ _%field109120%_)
        (lambda (_%obj109122%_ _%val109123%_)
          (if (let ((__tmp112404
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass109118%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj109122%_ __tmp112404))
              (unchecked-field-set!
               _%obj109122%_
               _%field109120%_
               _%val109123%_)
              (unchecked-slot-set!
               _%obj109122%_
               _%slot109119%_
               _%val109123%_)))))
    (define class-slot-offset
      (lambda (_%klass109093%_ _%slot109094%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109093%_ 'class))
            (let ((_%klass109098%_ _%klass109093%_))
              (if (let () (declare (not safe)) (symbolic? _%slot109094%_))
                  (let ((_%slot109108%_ _%slot109094%_))
                    (__class-slot-offset _%klass109098%_ _%slot109108%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@662.43-662.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot109094%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@662.26-662.31"
               'contract:
               'class-type?
               'value:
               _%klass109093%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass109072%_ _%slot109073%_)
        (let* ((_%klass109076%_ _%klass109072%_)
               (_%slot109084%_ _%slot109073%_)
               (__tmp112405
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass109076%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp112405 _%slot109084%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass109046%_ _%obj109047%_ _%slot109048%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass109046%_ 'class))
            (let ((_%klass109052%_ _%klass109046%_))
              (if (let () (declare (not safe)) (symbolic? _%slot109048%_))
                  (let ((_%slot109062%_ _%slot109048%_))
                    (__class-slot-ref
                     _%klass109052%_
                     _%obj109047%_
                     _%slot109062%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@665.44-665.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot109048%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@665.23-665.28"
               'contract:
               'class-type?
               'value:
               _%klass109046%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass109022%_ _%obj109023%_ _%slot109024%_)
        (let* ((_%klass109027%_ _%klass109022%_)
               (_%slot109035%_ _%slot109024%_))
          (if (__class-instance? _%klass109027%_ _%obj109023%_)
              (let ((_%off109044%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj109023%_))
                      _%slot109035%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj109023%_
                 _%off109044%_
                 _%klass109027%_
                 _%slot109035%_))
              (not-an-instance__0 _%obj109023%_ _%klass109027%_)))))
    (define class-slot-set!
      (lambda (_%klass108995%_ _%obj108996%_ _%slot108997%_ _%val108998%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108995%_ 'class))
            (let ((_%klass109002%_ _%klass108995%_))
              (if (let () (declare (not safe)) (symbolic? _%slot108997%_))
                  (let ((_%slot109012%_ _%slot108997%_))
                    (__class-slot-set!
                     _%klass109002%_
                     _%obj108996%_
                     _%slot109012%_
                     _%val108998%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@671.45-671.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot108997%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@671.24-671.29"
               'contract:
               'class-type?
               'value:
               _%klass108995%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass108970%_ _%obj108971%_ _%slot108972%_ _%val108973%_)
        (let* ((_%klass108976%_ _%klass108970%_)
               (_%slot108984%_ _%slot108972%_))
          (if (__class-instance? _%klass108976%_ _%obj108971%_)
              (let ((_%off108993%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj108971%_))
                      _%slot108984%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj108971%_
                 _%val108973%_
                 _%off108993%_
                 _%klass108976%_
                 _%slot108984%_))
              (not-an-instance__0 _%obj108971%_ _%klass108976%_)))))
    (define unchecked-field-ref
      (lambda (_%obj108967%_ _%off108968%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj108967%_ _%off108968%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj108963%_ _%off108964%_ _%val108965%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj108963%_
           _%val108965%_
           _%off108964%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj108960%_ _%slot108961%_)
        (unchecked-field-ref
         _%obj108960%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj108960%_))
          _%slot108961%_))))
    (define unchecked-slot-set!
      (lambda (_%obj108956%_ _%slot108957%_ _%val108958%_)
        (unchecked-field-set!
         _%obj108956%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj108956%_))
          _%slot108957%_)
         _%val108958%_)))
    (define slot-ref__%
      (lambda (_%obj108918%_ _%slot108919%_ _%E108920%_)
        (if (symbol? _%slot108919%_)
            (let ((_%slot108924%_ _%slot108919%_))
              (if (procedure? _%E108920%_)
                  (let ((_%E108934%_ _%E108920%_))
                    (__slot-ref__% _%obj108918%_ _%slot108924%_ _%E108934%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@694.38-694.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E108920%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.21-694.25"
               'contract:
               'symbol?
               'value:
               _%slot108919%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj108947%_ _%slot108948%_)
        (let ((_%E108950%_ __slot-error))
          (slot-ref__% _%obj108947%_ _%slot108948%_ _%E108950%_))))
    (define slot-ref
      (lambda _g112406_
        (let ((_g112407_ (let () (declare (not safe)) (##length _g112406_))))
          (cond ((let () (declare (not safe)) (##fx= _g112407_ 2))
                 (apply slot-ref__0 _g112406_))
                ((let () (declare (not safe)) (##fx= _g112407_ 3))
                 (apply slot-ref__% _g112406_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g112406_))))))
    (define __slot-ref__%
      (lambda (_%obj108874%_ _%slot108875%_ _%E108876%_)
        (let* ((_%slot108879%_ _%slot108875%_)
               (_%E108887%_ _%E108876%_)
               (_%klass108896%_ (class-of _%obj108874%_))
               (_%$e108899%_
                (__class-slot-offset _%klass108896%_ _%slot108879%_)))
          (if _%$e108899%_
              ((lambda (_%off108902%_)
                 (unchecked-field-ref _%obj108874%_ _%off108902%_))
               _%$e108899%_)
              (let ()
                (declare (not safe))
                (_%E108887%_ _%obj108874%_ _%slot108879%_))))))
    (define __slot-ref__0
      (lambda (_%obj108908%_ _%slot108909%_)
        (let ((_%E108911%_ __slot-error))
          (__slot-ref__% _%obj108908%_ _%slot108909%_ _%E108911%_))))
    (define __slot-ref
      (lambda _g112408_
        (let ((_g112409_ (let () (declare (not safe)) (##length _g112408_))))
          (cond ((let () (declare (not safe)) (##fx= _g112409_ 2))
                 (apply __slot-ref__0 _g112408_))
                ((let () (declare (not safe)) (##fx= _g112409_ 3))
                 (apply __slot-ref__% _g112408_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g112408_))))))
    (define slot-set!__%
      (lambda (_%obj108832%_ _%slot108833%_ _%val108834%_ _%E108835%_)
        (if (symbol? _%slot108833%_)
            (let ((_%slot108839%_ _%slot108833%_))
              (if (procedure? _%E108835%_)
                  (let ((_%E108849%_ _%E108835%_))
                    (__slot-set!__%
                     _%obj108832%_
                     _%slot108839%_
                     _%val108834%_
                     _%E108849%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@696.43-696.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E108835%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@696.22-696.26"
               'contract:
               'symbol?
               'value:
               _%slot108833%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj108862%_ _%slot108863%_ _%val108864%_)
        (let ((_%E108866%_ __slot-error))
          (slot-set!__%
           _%obj108862%_
           _%slot108863%_
           _%val108864%_
           _%E108866%_))))
    (define slot-set!
      (lambda _g112410_
        (let ((_g112411_ (let () (declare (not safe)) (##length _g112410_))))
          (cond ((let () (declare (not safe)) (##fx= _g112411_ 3))
                 (apply slot-set!__0 _g112410_))
                ((let () (declare (not safe)) (##fx= _g112411_ 4))
                 (apply slot-set!__% _g112410_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g112410_))))))
    (define __slot-set!__%
      (lambda (_%obj108785%_ _%slot108786%_ _%val108787%_ _%E108788%_)
        (let* ((_%slot108791%_ _%slot108786%_)
               (_%E108799%_ _%E108788%_)
               (_%klass108808%_ (class-of _%obj108785%_))
               (_%$e108811%_
                (__class-slot-offset _%klass108808%_ _%slot108791%_)))
          (if _%$e108811%_
              ((lambda (_%off108814%_)
                 (unchecked-field-set!
                  _%obj108785%_
                  _%off108814%_
                  _%val108787%_))
               _%$e108811%_)
              (let ()
                (declare (not safe))
                (_%E108799%_ _%obj108785%_ _%slot108791%_))))))
    (define __slot-set!__0
      (lambda (_%obj108820%_ _%slot108821%_ _%val108822%_)
        (let ((_%E108824%_ __slot-error))
          (__slot-set!__%
           _%obj108820%_
           _%slot108821%_
           _%val108822%_
           _%E108824%_))))
    (define __slot-set!
      (lambda _g112412_
        (let ((_g112413_ (let () (declare (not safe)) (##length _g112412_))))
          (cond ((let () (declare (not safe)) (##fx= _g112413_ 3))
                 (apply __slot-set!__0 _g112412_))
                ((let () (declare (not safe)) (##fx= _g112413_ 4))
                 (apply __slot-set!__% _g112412_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g112412_))))))
    (define __slot-error
      (lambda (_%obj108781%_ _%slot108782%_)
        (error '"Cannot find slot"
               'object:
               _%obj108781%_
               'slot:
               _%slot108782%_)))
    (define subclass?
      (lambda (_%maybe-sub-class108756%_ _%maybe-super-class108757%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class108756%_ 'class))
            (let ((_%maybe-sub-class108761%_ _%maybe-sub-class108756%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class108757%_
                     'class))
                  (let ((_%maybe-super-class108771%_
                         _%maybe-super-class108757%_))
                    (__subclass?
                     _%maybe-sub-class108761%_
                     _%maybe-super-class108771%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@704.45-704.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class108757%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@704.18-704.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class108756%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class108728%_ _%maybe-super-class108729%_)
        (let* ((_%maybe-sub-class108732%_ _%maybe-sub-class108728%_)
               (_%maybe-super-class108740%_ _%maybe-super-class108729%_)
               (_%maybe-super-class-id108749%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class108740%_)))
               (_%$e108751%_
                (eq? _%maybe-super-class-id108749%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class108732%_)))))
          (if _%$e108751%_
              _%$e108751%_
              (let ((__tmp112415
                     (lambda (_%super-class108754%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class108754%_))
                            _%maybe-super-class-id108749%_)))
                    (__tmp112414
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class108732%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp112415 __tmp112414))))))
    (define object?
      (lambda (_%o108725%_)
        (if (let () (declare (not safe)) (##structure? _%o108725%_))
            (let ((__tmp112416
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o108725%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp112416 'class))
            '#f)))
    (define direct-instance?
      (lambda (_%klass108710%_ _%obj108711%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108710%_ 'class))
            (let ((_%klass108715%_ _%klass108710%_))
              (__direct-instance? _%klass108715%_ _%obj108711%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@718.25-718.30"
               'contract:
               'class-type?
               'value:
               _%klass108710%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass108697%_ _%obj108698%_)
        (let* ((_%klass108701%_ _%klass108697%_)
               (__tmp112417
                (let () (declare (not safe)) (##type-id _%klass108701%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj108698%_ __tmp112417))))
    (define immediate-instance-of?
      (lambda (_%klass108693%_ _%obj108694%_)
        (if (let () (declare (not safe)) (##structure? _%obj108694%_))
            (eq? _%klass108693%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj108694%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass108678%_ _%obj108679%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108678%_ 'class))
            (let ((_%klass108683%_ _%klass108678%_))
              (__struct-instance? _%klass108683%_ _%obj108679%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@747.25-747.30"
               'contract:
               'class-type?
               'value:
               _%klass108678%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass108665%_ _%obj108666%_)
        (let* ((_%klass108669%_ _%klass108665%_)
               (__tmp112418
                (let () (declare (not safe)) (##type-id _%klass108669%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj108666%_ __tmp112418))))
    (define class-instance?
      (lambda (_%klass108650%_ _%obj108651%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108650%_ 'class))
            (let ((_%klass108655%_ _%klass108650%_))
              (__class-instance? _%klass108655%_ _%obj108651%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@752.24-752.29"
               'contract:
               'class-type?
               'value:
               _%klass108650%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass108635%_ _%obj108636%_)
        (let* ((_%klass108639%_ _%klass108635%_)
               (_%type108648%_ (class-of _%obj108636%_)))
          (__subclass? _%type108648%_ _%klass108639%_))))
    (define make-object
      (lambda (_%klass108610%_ _%k108611%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108610%_ 'class))
            (let ((_%klass108615%_ _%klass108610%_))
              (if (fixnum? _%k108611%_)
                  (let ((_%k108625%_ _%k108611%_))
                    (__make-object _%klass108615%_ _%k108625%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@757.37-757.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k108611%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@757.20-757.25"
               'contract:
               'class-type?
               'value:
               _%klass108610%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass108587%_ _%k108588%_)
        (let* ((_%klass108591%_ _%klass108587%_) (_%k108599%_ _%k108588%_))
          (if (__class-type-system? _%klass108591%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass108591%_)
                '#!void)
              (let ((_%obj108608%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass108591%_ _%k108599%_))))
                (__object-fill! _%obj108608%_ '#f))))))
    (define object-class
      (lambda (_%obj108573%_)
        (if (object? _%obj108573%_)
            (let ((_%obj108577%_ _%obj108573%_))
              (__object-class _%obj108577%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@777.21-777.24"
               'contract:
               'object?
               'value:
               _%obj108573%_)
              '#!void))))
    (define __object-class
      (lambda (_%obj108561%_)
        (let ((_%obj108564%_ _%obj108561%_))
          (declare (not safe))
          (##structure-type _%obj108564%_))))
    (define object-fill!
      (lambda (_%obj108546%_ _%fill108547%_)
        (if (object? _%obj108546%_)
            (let ((_%obj108551%_ _%obj108546%_))
              (__object-fill! _%obj108551%_ _%fill108547%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@782.21-782.24"
               'contract:
               'object?
               'value:
               _%obj108546%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj108528%_ _%fill108529%_)
        (let ((_%obj108532%_ _%obj108528%_))
          (let _%loop108541%_ ((_%i108543%_
                                (let ((__tmp112419
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj108532%_))))
                                  (declare (not safe))
                                  (##fx- __tmp112419 '1))))
            (if (let () (declare (not safe)) (##fx> _%i108543%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj108532%_
                     _%fill108529%_
                     _%i108543%_
                     '#f
                     '#f))
                  (_%loop108541%_
                   (let () (declare (not safe)) (##fx- _%i108543%_ '1))))
                _%obj108532%_)))))
    (define new-instance
      (lambda (_%klass108514%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108514%_ 'class))
            (let ((_%klass108518%_ _%klass108514%_))
              (__new-instance _%klass108518%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.21-793.26"
               'contract:
               'class-type?
               'value:
               _%klass108514%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass108502%_)
        (let* ((_%klass108505%_ _%klass108502%_)
               (__obj112330
                (let ((__tmp112420
                       (let ((__tmp112421
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass108505%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp112421))))
                  (declare (not safe))
                  (##make-structure _%klass108505%_ __tmp112420))))
          (object-fill! __obj112330 '#f)
          __obj112330)))
    (define make-instance
      (lambda (_%klass108487%_ . _%args108488%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108487%_ 'class))
            (let ((_%klass108492%_ _%klass108487%_))
              (declare (not safe))
              (##apply __make-instance _%klass108492%_ _%args108488%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@796.22-796.27"
               'contract:
               'class-type?
               'value:
               _%klass108487%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass108459%_ . _%args108460%_)
        (let* ((_%klass108463%_ _%klass108459%_)
               (_%$e108472%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass108463%_ '10 '#f '#f))))
          (if _%$e108472%_
              ((lambda (_%kons-id108475%_)
                 (let ((_%obj108477%_ (__new-instance _%klass108463%_)))
                   (___constructor-init!
                    _%klass108463%_
                    _%kons-id108475%_
                    _%obj108477%_
                    _%args108460%_)
                   _%obj108477%_))
               _%$e108472%_)
              (if (__class-type-metaclass? _%klass108463%_)
                  (let ((_%obj108480%_ (__new-instance _%klass108463%_)))
                    (__metaclass-instance-init!
                     _%klass108463%_
                     _%obj108480%_
                     _%args108460%_)
                    _%obj108480%_)
                  (if (__class-type-struct? _%klass108463%_)
                      (if (let ((__tmp112423
                                 (__class-type-field-count _%klass108463%_))
                                (__tmp112422
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args108460%_))))
                            (declare (not safe))
                            (##fx= __tmp112423 __tmp112422))
                          (apply ##structure _%klass108463%_ _%args108460%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass108463%_
                                   'slots:
                                   (__class-type-slot-list _%klass108463%_)
                                   'args:
                                   _%args108460%_)
                            '#!void))
                      (let ((_%obj108483%_ (__new-instance _%klass108463%_)))
                        (___class-instance-init!
                         _%klass108463%_
                         _%obj108483%_
                         _%args108460%_)
                        _%obj108483%_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj108444%_ . _%args108445%_)
        (if (object? _%obj108444%_)
            (let ((_%obj108449%_ _%obj108444%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj108449%_ _%args108445%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@821.30-821.33"
               'contract:
               'object?
               'value:
               _%obj108444%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj108431%_ . _%args108432%_)
        (let ((_%obj108435%_ _%obj108431%_))
          (if (let ((__tmp112425
                     (let () (declare (not safe)) (##length _%args108432%_)))
                    (__tmp112424
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj108435%_))))
                (declare (not safe))
                (##fx< __tmp112425 __tmp112424))
              (___struct-instance-init! _%obj108435%_ _%args108432%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj108435%_
                     'args:
                     _%args108432%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj108390%_ _%args108391%_)
        (let _%lp108393%_ ((_%k108395%_ '1) (_%rest108396%_ _%args108391%_))
          (let* ((_%rest108397108405%_ _%rest108396%_)
                 (_%else108399108413%_ (lambda () _%obj108390%_))
                 (_%K108401108419%_
                  (lambda (_%rest108416%_ _%hd108417%_)
                    (unchecked-field-set!
                     _%obj108390%_
                     _%k108395%_
                     _%hd108417%_)
                    (_%lp108393%_
                     (let () (declare (not safe)) (##fx+ _%k108395%_ '1))
                     _%rest108416%_))))
            (if (pair? _%rest108397108405%_)
                (let ((_%hd108402108422%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest108397108405%_)))
                      (_%tl108403108424%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest108397108405%_))))
                  (let* ((_%hd108427%_ _%hd108402108422%_)
                         (_%rest108429%_ _%tl108403108424%_))
                    (_%K108401108419%_ _%rest108429%_ _%hd108427%_)))
                (_%else108399108413%_))))))
    (define class-instance-init!
      (lambda (_%obj108375%_ . _%args108376%_)
        (if (object? _%obj108375%_)
            (let ((_%obj108380%_ _%obj108375%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj108380%_ _%args108376%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@861.29-861.32"
               'contract:
               'object?
               'value:
               _%obj108375%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj108362%_ . _%args108363%_)
        (let ((_%obj108366%_ _%obj108362%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj108366%_))
           _%obj108366%_
           _%args108363%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass108304%_ _%obj108305%_ _%args108306%_)
        (let _%lp108308%_ ((_%rest108310%_ _%args108306%_))
          (let* ((_%rest108311108321%_ _%rest108310%_)
                 (_%else108313108329%_
                  (lambda ()
                    (if (null? _%rest108310%_)
                        _%obj108305%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass108304%_
                               'rest:
                               _%rest108310%_))))
                 (_%K108315108343%_
                  (lambda (_%rest108332%_ _%val108333%_ _%key108334%_)
                    (if (keyword? _%key108334%_)
                        (let ((_%$e108337%_
                               (__class-slot-offset
                                _%klass108304%_
                                _%key108334%_)))
                          (if _%$e108337%_
                              ((lambda (_%off108340%_)
                                 (unchecked-field-set!
                                  _%obj108305%_
                                  _%off108340%_
                                  _%val108333%_)
                                 (_%lp108308%_ _%rest108332%_))
                               _%$e108337%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass108304%_
                                     'slot:
                                     _%key108334%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key108334%_)))))
            (if (pair? _%rest108311108321%_)
                (let ((_%hd108316108346%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest108311108321%_)))
                      (_%tl108317108348%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest108311108321%_))))
                  (let ((_%key108351%_ _%hd108316108346%_))
                    (if (pair? _%tl108317108348%_)
                        (let ((_%hd108318108353%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl108317108348%_)))
                              (_%tl108319108355%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl108317108348%_))))
                          (let* ((_%val108358%_ _%hd108318108353%_)
                                 (_%rest108360%_ _%tl108319108355%_))
                            (_%K108315108343%_
                             _%rest108360%_
                             _%val108358%_
                             _%key108351%_)))
                        (_%else108313108329%_))))
                (_%else108313108329%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass108300%_ _%obj108301%_ _%args108302%_)
        (apply call-method
               _%klass108300%_
               'instance-init!
               _%obj108301%_
               _%args108302%_)))
    (define constructor-init!
      (lambda (_%klass108263%_
               _%kons-id108264%_
               _%obj108265%_
               .
               _%args108266%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass108263%_ 'class))
            (let ((_%klass108270%_ _%klass108263%_))
              (if (symbol? _%kons-id108264%_)
                  (let ((_%kons-id108280%_ _%kons-id108264%_))
                    (if (object? _%obj108265%_)
                        (let ((_%obj108290%_ _%obj108265%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass108270%_
                                   _%kons-id108280%_
                                   _%obj108290%_
                                   _%args108266%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@885.63-885.66"
                           'contract:
                           'object?
                           'value:
                           _%obj108265%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@885.43-885.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id108264%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@885.26-885.31"
               'contract:
               'class-type?
               'value:
               _%klass108263%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass108232%_
               _%kons-id108233%_
               _%obj108234%_
               .
               _%args108235%_)
        (let* ((_%klass108238%_ _%klass108232%_)
               (_%kons-id108246%_ _%kons-id108233%_)
               (_%obj108254%_ _%obj108234%_))
          (___constructor-init!
           _%klass108238%_
           _%kons-id108246%_
           _%obj108254%_
           _%args108235%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass108221%_ _%kons-id108222%_ _%obj108223%_ _%args108224%_)
        (let ((_%$e108226%_
               (__find-method
                _%klass108221%_
                _%obj108223%_
                _%kons-id108222%_)))
          (if _%$e108226%_
              ((lambda (_%kons108229%_)
                 (apply _%kons108229%_ _%obj108223%_ _%args108224%_)
                 _%obj108223%_)
               _%$e108226%_)
              (error '"missing constructor"
                     'class:
                     _%klass108221%_
                     'method:
                     _%kons-id108222%_)))))
    (define struct-copy
      (lambda (_%struct108207%_)
        (if (object? _%struct108207%_)
            (let ((_%struct108211%_ _%struct108207%_))
              (__struct-copy _%struct108211%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@899.20-899.26"
               'contract:
               'object?
               'value:
               _%struct108207%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct108195%_)
        (let ((_%struct108198%_ _%struct108195%_))
          (declare (not safe))
          (##structure-copy _%struct108198%_))))
    (define struct->list
      (lambda (_%obj108181%_)
        (if (object? _%obj108181%_)
            (let ((_%obj108185%_ _%obj108181%_))
              (__struct->list _%obj108185%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@902.21-902.24"
               'contract:
               'object?
               'value:
               _%obj108181%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj108162%_)
        (let* ((_%obj108165%_ _%obj108162%_)
               (_%len108174%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj108165%_))))
          (let _%recur108176%_ ((_%i108178%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i108178%_ _%len108174%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj108165%_
                         _%i108178%_
                         '#f
                         '#f))
                      (_%recur108176%_
                       (let () (declare (not safe)) (##fx+ _%i108178%_ '1))))
                '())))))
    (define class->list
      (lambda (_%obj108148%_)
        (if (object? _%obj108148%_)
            (let ((_%obj108152%_ _%obj108148%_)) (__class->list _%obj108152%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@910.20-910.23"
               'contract:
               'object?
               'value:
               _%obj108148%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj108124%_)
        (let* ((_%obj108127%_ _%obj108124%_)
               (_%klass108136%_
                (let () (declare (not safe)) (##structure-type _%obj108127%_)))
               (_%slot-vector108138%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass108136%_ '7 '#f '#f))))
          (let _%loop108140%_ ((_%index108142%_
                                (let ((__tmp112426
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector108138%_))))
                                  (declare (not safe))
                                  (##fx- __tmp112426 '1)))
                               (_%plist108143%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index108142%_ '1))
                (cons _%klass108136%_ _%plist108143%_)
                (let ((_%slot108146%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector108138%_
                          _%index108142%_))))
                  (_%loop108140%_
                   (let () (declare (not safe)) (##fx- _%index108142%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot108146%_))
                         (cons (unchecked-field-ref
                                _%obj108127%_
                                _%index108142%_)
                               _%plist108143%_)))))))))
    (define call-method
      (lambda (_%obj108108%_ _%id108109%_ . _%args108110%_)
        (if (symbol? _%id108109%_)
            (let ((_%id108114%_ _%id108109%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj108108%_
                       _%id108114%_
                       _%args108110%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@925.24-925.26"
               'contract:
               'symbol?
               'value:
               _%id108109%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj108077%_ _%id108078%_ . _%args108079%_)
        (let* ((_%id108082%_ _%id108078%_)
               (_%$e108091%_ (__method-ref _%obj108077%_ _%id108082%_)))
          (if _%$e108091%_
              ((lambda (_%method108094%_)
                 (let ((_%method108096%_ _%method108094%_))
                   (apply _%method108096%_ _%obj108077%_ _%args108079%_)))
               _%$e108091%_)
              (error '"cannot find method"
                     'object:
                     _%obj108077%_
                     'method:
                     _%id108082%_)))))
    (define method-ref
      (lambda (_%obj108062%_ _%id108063%_)
        (if (symbol? _%id108063%_)
            (let ((_%id108067%_ _%id108063%_))
              (__method-ref _%obj108062%_ _%id108067%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@952.23-952.25"
               'contract:
               'symbol?
               'value:
               _%id108063%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj108049%_ _%id108050%_)
        (let ((_%id108053%_ _%id108050%_))
          (__find-method
           (class-of _%obj108049%_)
           _%obj108049%_
           _%id108053%_))))
    (define checked-method-ref
      (lambda (_%obj108042%_ _%id108043%_)
        (let ((_%$e108046%_ (method-ref _%obj108042%_ _%id108043%_)))
          (if _%$e108046%_
              _%$e108046%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj108042%_
                       'method:
                       _%id108043%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj108027%_ _%id108028%_)
        (if (symbol? _%id108028%_)
            (let ((_%id108032%_ _%id108028%_))
              (__bound-method-ref _%obj108027%_ _%id108032%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@960.29-960.31"
               'contract:
               'symbol?
               'value:
               _%id108028%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj107995%_ _%id107996%_)
        (let* ((_%id107999%_ _%id107996%_)
               (_%$e108008%_ (__method-ref _%obj107995%_ _%id107999%_)))
          (if _%$e108008%_
              ((lambda (_%method108011%_)
                 (let ((_%method108013%_ _%method108011%_))
                   (lambda _%args108024%_
                     (apply _%method108013%_ _%obj107995%_ _%args108024%_))))
               _%$e108008%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj107980%_ _%id107981%_)
        (if (symbol? _%id107981%_)
            (let ((_%id107985%_ _%id107981%_))
              (__checked-bound-method-ref _%obj107980%_ _%id107985%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@969.37-969.39"
               'contract:
               'symbol?
               'value:
               _%id107981%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj107963%_ _%id107964%_)
        (let* ((_%id107967%_ _%id107964%_)
               (_%method107976%_
                (checked-method-ref _%obj107963%_ _%id107967%_)))
          (lambda _%args107978%_
            (apply _%method107976%_ _%obj107963%_ _%args107978%_)))))
    (define find-method
      (lambda (_%klass107937%_ _%obj107938%_ _%id107939%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107937%_ 'class))
            (let ((_%klass107943%_ _%klass107937%_))
              (if (symbol? _%id107939%_)
                  (let ((_%id107953%_ _%id107939%_))
                    (__find-method _%klass107943%_ _%obj107938%_ _%id107953%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@974.41-974.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id107939%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@974.20-974.25"
               'contract:
               'class-type?
               'value:
               _%klass107937%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass107908%_ _%obj107909%_ _%id107910%_)
        (let* ((_%klass107913%_ _%klass107908%_) (_%id107921%_ _%id107910%_))
          (if (__class-type-sealed? _%klass107913%_)
              (let ((_%tab107931%_ (__specialize-class _%klass107913%_)))
                (declare (not safe))
                (symbolic-table-ref _%tab107931%_ _%id107921%_ '#f))
              (let ((_%$e107933%_
                     (__direct-method-ref
                      _%klass107913%_
                      _%obj107909%_
                      _%id107921%_)))
                (if _%$e107933%_
                    _%$e107933%_
                    (__mixin-method-ref
                     _%klass107913%_
                     _%obj107909%_
                     _%id107921%_)))))))
    (define mixin-find-method
      (lambda (_%mixins107892%_ _%obj107893%_ _%id107894%_)
        (if (symbol? _%id107894%_)
            (let ((_%id107898%_ _%id107894%_))
              (__mixin-find-method
               _%mixins107892%_
               _%obj107893%_
               _%id107898%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@983.37-983.39"
               'contract:
               'symbol?
               'value:
               _%id107894%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins107874%_ _%obj107875%_ _%id107876%_)
        (let* ((_%id107879%_ _%id107876%_)
               (__tmp112427
                (lambda (_%g107887107889%_)
                  (direct-method-ref
                   _%g107887107889%_
                   _%obj107875%_
                   _%id107879%_))))
          (declare (not safe))
          (__ormap1 __tmp112427 _%mixins107874%_))))
    (define direct-method-ref
      (lambda (_%klass107848%_ _%obj107849%_ _%id107850%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107848%_ 'class))
            (let ((_%klass107854%_ _%klass107848%_))
              (if (symbol? _%id107850%_)
                  (let ((_%id107864%_ _%id107850%_))
                    (__direct-method-ref
                     _%klass107854%_
                     _%obj107849%_
                     _%id107864%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@986.47-986.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id107850%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@986.26-986.31"
               'contract:
               'class-type?
               'value:
               _%klass107848%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass107802%_ _%obj107803%_ _%id107804%_)
        (let* ((_%klass107807%_ _%klass107802%_) (_%id107815%_ _%id107804%_))
          (letrec ((_%metaclass-resolve-method107824%_
                    (lambda ()
                      (let ((__method112331
                             (__method-ref
                              _%klass107807%_
                              'direct-method-ref)))
                        (if __method112331
                            (let ()
                              (declare (not safe))
                              (__method112331
                               _%klass107807%_
                               _%obj107803%_
                               _%id107815%_))
                            (begin
                              (error '"Missing method"
                                     _%klass107807%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!107825%_
                    (lambda ()
                      (let ((_%method107845%_
                             (_%metaclass-resolve-method107824%_)))
                        (let ((__tmp112429
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass107807%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp112428
                               (if _%method107845%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp112429
                           _%id107815%_
                           __tmp112428))
                        _%method107845%_))))
            (let ((_%$e107827%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass107807%_ '11 '#f '#f))))
              (if _%$e107827%_
                  ((lambda (_%ht107830%_)
                     (let ((_%method107832%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht107830%_
                               _%id107815%_
                               '#f))))
                       (if (procedure? _%method107832%_)
                           _%method107832%_
                           (if (__class-type-metaclass? _%klass107807%_)
                               (let ((_%$e107836%_ _%method107832%_))
                                 (if (eq? 'resolved _%$e107836%_)
                                     (_%metaclass-resolve-method107824%_)
                                     (if (eq? 'unknown _%$e107836%_)
                                         '#f
                                         (_%metaclass-resolve-method!107825%_))))
                               '#f))))
                   _%$e107827%_)
                  (if (__class-type-metaclass? _%klass107807%_)
                      (let ((_%tab107841%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass107807%_
                           _%tab107841%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!107825%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass107776%_ _%obj107777%_ _%id107778%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107776%_ 'class))
            (let ((_%klass107782%_ _%klass107776%_))
              (if (symbol? _%id107778%_)
                  (let ((_%id107792%_ _%id107778%_))
                    (__mixin-method-ref
                     _%klass107782%_
                     _%obj107777%_
                     _%id107792%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1016.46-1016.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id107778%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1016.25-1016.30"
               'contract:
               'class-type?
               'value:
               _%klass107776%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass107754%_ _%obj107755%_ _%id107756%_)
        (let* ((_%klass107759%_ _%klass107754%_) (_%id107767%_ _%id107756%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass107759%_ '6 '#f '#f))
           _%obj107755%_
           _%id107767%_))))
    (define bind-method!__%
      (lambda (_%klass107713%_ _%id107714%_ _%proc107715%_ _%rebind?107716%_)
        (if (symbol? _%id107714%_)
            (let ((_%id107720%_ _%id107714%_))
              (if (procedure? _%proc107715%_)
                  (let ((_%proc107730%_ _%proc107715%_))
                    (__bind-method!__%
                     _%klass107713%_
                     _%id107720%_
                     _%proc107730%_
                     _%rebind?107716%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1019.42-1019.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc107715%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1019.27-1019.29"
               'contract:
               'symbol?
               'value:
               _%id107714%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass107743%_ _%id107744%_ _%proc107745%_)
        (let ((_%rebind?107747%_ '#f))
          (bind-method!__%
           _%klass107743%_
           _%id107744%_
           _%proc107745%_
           _%rebind?107747%_))))
    (define bind-method!
      (lambda _g112430_
        (let ((_g112431_ (let () (declare (not safe)) (##length _g112430_))))
          (cond ((let () (declare (not safe)) (##fx= _g112431_ 3))
                 (apply bind-method!__0 _g112430_))
                ((let () (declare (not safe)) (##fx= _g112431_ 4))
                 (apply bind-method!__% _g112430_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g112430_))))))
    (define __bind-method!__%
      (lambda (_%klass107664%_ _%id107665%_ _%proc107666%_ _%rebind?107667%_)
        (let* ((_%id107670%_ _%id107665%_) (_%proc107678%_ _%proc107666%_))
          (letrec ((_%bind!107687%_
                    (lambda (_%ht107696%_)
                      (if (and (not _%rebind?107667%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht107696%_
                                  _%id107670%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass107664%_
                                 'method:
                                 _%id107670%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht107696%_
                               _%id107670%_
                               _%proc107678%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass107664%_ 'class))
                (let ((_%ht107690%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass107664%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht107690%_
                      (_%bind!107687%_ _%ht107690%_)
                      (let ((_%ht107692%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass107664%_
                           _%ht107692%_
                           '11
                           '#f
                           '#f))
                        (_%bind!107687%_ _%ht107692%_))))
                (if (let () (declare (not safe)) (##type? _%klass107664%_))
                    (__bind-method!__%
                     (__shadow-class__0 _%klass107664%_)
                     _%id107670%_
                     _%proc107678%_
                     _%rebind?107667%_)
                    (error '"bad class; expected class or builtin type"
                           _%klass107664%_)))))))
    (define __bind-method!__0
      (lambda (_%klass107701%_ _%id107702%_ _%proc107703%_)
        (let ((_%rebind?107705%_ '#f))
          (__bind-method!__%
           _%klass107701%_
           _%id107702%_
           _%proc107703%_
           _%rebind?107705%_))))
    (define __bind-method!
      (lambda _g112432_
        (let ((_g112433_ (let () (declare (not safe)) (##length _g112432_))))
          (cond ((let () (declare (not safe)) (##fx= _g112433_ 3))
                 (apply __bind-method!__0 _g112432_))
                ((let () (declare (not safe)) (##fx= _g112433_ 4))
                 (apply __bind-method!__% _g112432_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g112432_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint107645%_ _%seed107646%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint107645%_
           procedure-hash
           eq?
           _%seed107646%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint107652%_ '#f) (_%seed107654%_ '0))
          (make-method-specializer-table__%
           _%size-hint107652%_
           _%seed107654%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint107656%_)
        (let ((_%seed107658%_ '0))
          (make-method-specializer-table__%
           _%size-hint107656%_
           _%seed107658%_))))
    (define make-method-specializer-table
      (lambda _g112434_
        (let ((_g112435_ (let () (declare (not safe)) (##length _g112434_))))
          (cond ((let () (declare (not safe)) (##fx= _g112435_ 0))
                 (apply make-method-specializer-table__0 _g112434_))
                ((let () (declare (not safe)) (##fx= _g112435_ 1))
                 (apply make-method-specializer-table__1 _g112434_))
                ((let () (declare (not safe)) (##fx= _g112435_ 2))
                 (apply make-method-specializer-table__% _g112434_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g112434_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint107625%_ _%seed107627%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint107625%_
           procedure-hash
           eq?
           _%seed107627%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint107633%_ '#f) (_%seed107635%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint107633%_
           _%seed107635%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint107637%_)
        (let ((_%seed107639%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint107637%_
           _%seed107639%_))))
    (define make-method-specializer-table/lock
      (lambda _g112436_
        (let ((_g112437_ (let () (declare (not safe)) (##length _g112436_))))
          (cond ((let () (declare (not safe)) (##fx= _g112437_ 0))
                 (apply make-method-specializer-table/lock__0 _g112436_))
                ((let () (declare (not safe)) (##fx= _g112437_ 1))
                 (apply make-method-specializer-table/lock__1 _g112436_))
                ((let () (declare (not safe)) (##fx= _g112437_ 2))
                 (apply make-method-specializer-table/lock__% _g112436_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g112436_))))))
    (define method-specializer-table-ref
      (lambda (_%tab107578%_ _%key107579%_ _%default107580%_)
        (let ((_%table107582%_
               (let () (declare (not safe)) (&raw-table-table _%tab107578%_)))
              (_%seed107583%_
               (let () (declare (not safe)) (&raw-table-seed _%tab107578%_))))
          (let* ((_%h107585%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key107579%_))
                         _%seed107583%_))
                 (_%size107588%_ (vector-length _%table107582%_))
                 (_%entries107591%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size107588%_ '2)))
                 (_%start107594%_
                  (let ((__tmp112438
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h107585%_ _%entries107591%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp112438 '1))))
            (let _%loop107598%_ ((_%probe107601%_ _%start107594%_)
                                 (_%i107603%_ '1)
                                 (_%deleted107605%_ '#f))
              (let ((_%k107608%_ (vector-ref _%table107582%_ _%probe107601%_)))
                (if (eq? _%k107608%_ (macro-unused-obj))
                    _%default107580%_
                    (if (eq? _%k107608%_ (macro-deleted-obj))
                        (_%loop107598%_
                         (let ((_%next-probe107613%_
                                (fx+ _%start107594%_
                                     _%i107603%_
                                     (fx* _%i107603%_ _%i107603%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe107613%_ _%size107588%_))
                         (let () (declare (not safe)) (##fx+ _%i107603%_ '1))
                         (let ((_%$e107616%_ _%deleted107605%_))
                           (if _%$e107616%_ _%$e107616%_ _%probe107601%_)))
                        (if (eq? _%key107579%_ _%k107608%_)
                            (vector-ref
                             _%table107582%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe107601%_ '1)))
                            (_%loop107598%_
                             (let ((_%next-probe107621%_
                                    (fx+ _%start107594%_
                                         _%i107603%_
                                         (fx* _%i107603%_ _%i107603%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe107621%_
                                _%size107588%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i107603%_ '1))
                             _%deleted107605%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab107551%_ _%key107552%_ _%default107553%_)
        (let ((_%lock107555%_
               (let () (declare (not safe)) (&raw-table-lock _%tab107551%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107560%_ ((_%spin107563%_ '0))
              (if (let ((__tmp112439
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock107555%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp112439 '0))
                  (let ((__tmp112440 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock107555%_ '1 __tmp112440))
                  (if (let () (declare (not safe)) (##fx< _%spin107563%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again107560%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin107563%_ '1))))
                      (let ((_%owner107569%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock107555%_ '1))))
                        (if (eq? _%owner107569%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner107569%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again107560%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r107575%_
                 (method-specializer-table-ref
                  _%tab107551%_
                  _%key107552%_
                  _%default107553%_)))
            (let () (declare (not safe)) (##vector-set! _%lock107555%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock107555%_ '0 '0 '1))
            _%$r107575%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab107503%_ _%key107504%_ _%value107505%_)
        (let ((_%table107507%_
               (let () (declare (not safe)) (&raw-table-table _%tab107503%_)))
              (_%seed107508%_
               (let () (declare (not safe)) (&raw-table-seed _%tab107503%_))))
          (let* ((_%h107510%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key107504%_))
                         _%seed107508%_))
                 (_%size107513%_ (vector-length _%table107507%_))
                 (_%entries107516%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size107513%_ '2)))
                 (_%start107519%_
                  (let ((__tmp112441
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h107510%_ _%entries107516%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp112441 '1))))
            (let _%loop107523%_ ((_%probe107526%_ _%start107519%_)
                                 (_%i107528%_ '1)
                                 (_%deleted107530%_ '#f))
              (let ((_%k107533%_ (vector-ref _%table107507%_ _%probe107526%_)))
                (if (eq? _%k107533%_ (macro-unused-obj))
                    (if _%deleted107530%_
                        (begin
                          (vector-set!
                           _%table107507%_
                           _%deleted107530%_
                           _%key107504%_)
                          (vector-set!
                           _%table107507%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted107530%_ '1))
                           _%value107505%_)
                          ((lambda ()
                             (let ((__tmp112442
                                    (let ((__tmp112443
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab107503%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp112443 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab107503%_
                                __tmp112442)))))
                        (begin
                          (vector-set!
                           _%table107507%_
                           _%probe107526%_
                           _%key107504%_)
                          (vector-set!
                           _%table107507%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe107526%_ '1))
                           _%value107505%_)
                          ((lambda ()
                             (let ((__tmp112444
                                    (let ((__tmp112445
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab107503%_))))
                                      (declare (not safe))
                                      (##fx- __tmp112445 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab107503%_
                                __tmp112444))
                             (let ((__tmp112446
                                    (let ((__tmp112447
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab107503%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp112447 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab107503%_
                                __tmp112446))))))
                    (if (eq? _%k107533%_ (macro-deleted-obj))
                        (_%loop107523%_
                         (let ((_%next-probe107540%_
                                (fx+ _%start107519%_
                                     _%i107528%_
                                     (fx* _%i107528%_ _%i107528%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe107540%_ _%size107513%_))
                         (let () (declare (not safe)) (##fx+ _%i107528%_ '1))
                         (let ((_%$e107543%_ _%deleted107530%_))
                           (if _%$e107543%_ _%$e107543%_ _%probe107526%_)))
                        (if (eq? _%key107504%_ _%k107533%_)
                            (let ()
                              (vector-set!
                               _%table107507%_
                               _%probe107526%_
                               _%key107504%_)
                              (vector-set!
                               _%table107507%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe107526%_ '1))
                               _%value107505%_))
                            (_%loop107523%_
                             (let ((_%next-probe107548%_
                                    (fx+ _%start107519%_
                                         _%i107528%_
                                         (fx* _%i107528%_ _%i107528%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe107548%_
                                _%size107513%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i107528%_ '1))
                             _%deleted107530%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab107499%_ _%key107500%_ _%value107501%_)
        (if (let ((__tmp112450
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab107499%_)))
                  (__tmp112448
                   (let ((__tmp112449
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab107499%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp112449 '4))))
              (declare (not safe))
              (##fx< __tmp112450 __tmp112448))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab107499%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab107499%_
         _%key107500%_
         _%value107501%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab107471%_ _%key107472%_ _%value107473%_)
        (let ((_%lock107476%_
               (let () (declare (not safe)) (&raw-table-lock _%tab107471%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107481%_ ((_%spin107484%_ '0))
              (if (let ((__tmp112451
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock107476%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp112451 '0))
                  (let ((__tmp112452 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock107476%_ '1 __tmp112452))
                  (if (let () (declare (not safe)) (##fx< _%spin107484%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again107481%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin107484%_ '1))))
                      (let ((_%owner107490%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock107476%_ '1))))
                        (if (eq? _%owner107490%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner107490%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again107481%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r107496%_
                 (method-specializer-table-set!
                  _%tab107471%_
                  _%key107472%_
                  _%value107473%_)))
            (let () (declare (not safe)) (##vector-set! _%lock107476%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock107476%_ '0 '0 '1))
            _%$r107496%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab107422%_
               _%key107423%_
               _%method-specializer-table-update!107424%_
               _%default107425%_)
        (let ((_%table107427%_
               (let () (declare (not safe)) (&raw-table-table _%tab107422%_)))
              (_%seed107428%_
               (let () (declare (not safe)) (&raw-table-seed _%tab107422%_))))
          (let* ((_%h107430%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key107423%_))
                         _%seed107428%_))
                 (_%size107433%_ (vector-length _%table107427%_))
                 (_%entries107436%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size107433%_ '2)))
                 (_%start107439%_
                  (let ((__tmp112453
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h107430%_ _%entries107436%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp112453 '1))))
            (let _%loop107443%_ ((_%probe107446%_ _%start107439%_)
                                 (_%i107448%_ '1)
                                 (_%deleted107450%_ '#f))
              (let ((_%k107453%_ (vector-ref _%table107427%_ _%probe107446%_)))
                (if (eq? _%k107453%_ (macro-unused-obj))
                    (if _%deleted107450%_
                        (begin
                          (vector-set!
                           _%table107427%_
                           _%deleted107450%_
                           _%key107423%_)
                          (vector-set!
                           _%table107427%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted107450%_ '1))
                           (_%method-specializer-table-update!107424%_
                            _%default107425%_))
                          ((lambda ()
                             (let ((__tmp112454
                                    (let ((__tmp112455
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab107422%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp112455 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab107422%_
                                __tmp112454)))))
                        (begin
                          (vector-set!
                           _%table107427%_
                           _%probe107446%_
                           _%key107423%_)
                          (vector-set!
                           _%table107427%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe107446%_ '1))
                           (_%method-specializer-table-update!107424%_
                            _%default107425%_))
                          ((lambda ()
                             (let ((__tmp112456
                                    (let ((__tmp112457
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab107422%_))))
                                      (declare (not safe))
                                      (##fx- __tmp112457 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab107422%_
                                __tmp112456))
                             (let ((__tmp112458
                                    (let ((__tmp112459
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab107422%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp112459 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab107422%_
                                __tmp112458))))))
                    (if (eq? _%k107453%_ (macro-deleted-obj))
                        (_%loop107443%_
                         (let ((_%next-probe107460%_
                                (fx+ _%start107439%_
                                     _%i107448%_
                                     (fx* _%i107448%_ _%i107448%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe107460%_ _%size107433%_))
                         (let () (declare (not safe)) (##fx+ _%i107448%_ '1))
                         (let ((_%$e107463%_ _%deleted107450%_))
                           (if _%$e107463%_ _%$e107463%_ _%probe107446%_)))
                        (if (eq? _%key107423%_ _%k107453%_)
                            (let ()
                              (vector-set!
                               _%table107427%_
                               _%probe107446%_
                               _%key107423%_)
                              (vector-set!
                               _%table107427%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe107446%_ '1))
                               (_%method-specializer-table-update!107424%_
                                (vector-ref
                                 _%table107427%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe107446%_ '1))))))
                            (_%loop107443%_
                             (let ((_%next-probe107468%_
                                    (fx+ _%start107439%_
                                         _%i107448%_
                                         (fx* _%i107448%_ _%i107448%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe107468%_
                                _%size107433%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i107448%_ '1))
                             _%deleted107450%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab107417%_
               _%key107418%_
               _%method-specializer-table-update!107419%_
               _%default107420%_)
        (if (let ((__tmp112462
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab107417%_)))
                  (__tmp112460
                   (let ((__tmp112461
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab107417%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp112461 '4))))
              (declare (not safe))
              (##fx< __tmp112462 __tmp112460))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab107417%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab107417%_
         _%key107418%_
         _%method-specializer-table-update!107419%_
         _%default107420%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab107388%_
               _%key107389%_
               _%method-specializer-table-update!107390%_
               _%default107391%_)
        (let ((_%lock107394%_
               (let () (declare (not safe)) (&raw-table-lock _%tab107388%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107399%_ ((_%spin107402%_ '0))
              (if (let ((__tmp112463
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock107394%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp112463 '0))
                  (let ((__tmp112464 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock107394%_ '1 __tmp112464))
                  (if (let () (declare (not safe)) (##fx< _%spin107402%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again107399%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin107402%_ '1))))
                      (let ((_%owner107408%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock107394%_ '1))))
                        (if (eq? _%owner107408%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner107408%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again107399%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r107414%_
                 (_%method-specializer-table-update!107390%_
                  _%tab107388%_
                  _%key107389%_
                  _%method-specializer-table-update!107390%_
                  _%default107391%_)))
            (let () (declare (not safe)) (##vector-set! _%lock107394%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock107394%_ '0 '0 '1))
            _%$r107414%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab107345%_ _%key107346%_)
        (let ((_%table107348%_
               (let () (declare (not safe)) (&raw-table-table _%tab107345%_)))
              (_%seed107350%_
               (let () (declare (not safe)) (&raw-table-seed _%tab107345%_))))
          (let* ((_%h107353%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key107346%_))
                         _%seed107350%_))
                 (_%size107356%_ (vector-length _%table107348%_))
                 (_%entries107359%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size107356%_ '2)))
                 (_%start107362%_
                  (let ((__tmp112465
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h107353%_ _%entries107359%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp112465 '1))))
            (let _%loop107366%_ ((_%probe107369%_ _%start107362%_)
                                 (_%i107371%_ '1))
              (let ((_%k107374%_ (vector-ref _%table107348%_ _%probe107369%_)))
                (if (eq? _%k107374%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k107374%_ (macro-deleted-obj))
                        (_%loop107366%_
                         (let ((_%next-probe107379%_
                                (fx+ _%start107362%_
                                     _%i107371%_
                                     (fx* _%i107371%_ _%i107371%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe107379%_ _%size107356%_))
                         (let () (declare (not safe)) (##fx+ _%i107371%_ '1)))
                        (if (eq? _%key107346%_ _%k107374%_)
                            (let ()
                              (vector-set!
                               _%table107348%_
                               _%probe107369%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table107348%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe107369%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp112466
                                        (let ((__tmp112467
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab107345%_))))
                                          (declare (not safe))
                                          (##fx- __tmp112467 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab107345%_
                                    __tmp112466)))))
                            (_%loop107366%_
                             (let ((_%next-probe107385%_
                                    (fx+ _%start107362%_
                                         _%i107371%_
                                         (fx* _%i107371%_ _%i107371%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe107385%_
                                _%size107356%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i107371%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab107317%_ _%key107319%_)
        (let ((_%lock107322%_
               (let () (declare (not safe)) (&raw-table-lock _%tab107317%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again107327%_ ((_%spin107330%_ '0))
              (if (let ((__tmp112468
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock107322%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp112468 '0))
                  (let ((__tmp112469 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock107322%_ '1 __tmp112469))
                  (if (let () (declare (not safe)) (##fx< _%spin107330%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again107327%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin107330%_ '1))))
                      (let ((_%owner107336%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock107322%_ '1))))
                        (if (eq? _%owner107336%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner107336%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again107327%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r107342%_
                 (method-specializer-table-delete!
                  _%tab107317%_
                  _%key107319%_)))
            (let () (declare (not safe)) (##vector-set! _%lock107322%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock107322%_ '0 '0 '1))
            _%$r107342%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc107314%_ _%specializer107315%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc107314%_
         _%specializer107315%_)))
    (define __lookup-method-specializer
      (lambda (_%proc107312%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc107312%_
         '#f)))
    (define specialize-class
      (lambda (_%klass107298%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107298%_ 'class))
            (let ((_%klass107302%_ _%klass107298%_))
              (__specialize-class _%klass107302%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1069.25-1069.30"
               'contract:
               'class-type?
               'value:
               _%klass107298%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass107280%_)
        (let* ((_%klass107283%_ _%klass107280%_)
               (_%$e107292%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass107283%_ '12 '#f '#f))))
          (if _%$e107292%_
              _%$e107292%_
              (let ((_%method-table107296%_
                     (___specialize-class _%klass107283%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass107283%_
                   _%method-table107296%_
                   '12
                   '#f
                   '#f))
                _%method-table107296%_)))))
    (define __specialize-method
      (lambda (_%klass107264%_
               _%method-table107265%_
               _%method107266%_
               _%proc107267%_)
        (let ((_%$e107269%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table107265%_
                  _%method107266%_
                  '#f))))
          (if _%$e107269%_
              _%$e107269%_
              (let ((_%$e107272%_
                     (__lookup-method-specializer _%proc107267%_)))
                (if _%$e107272%_
                    ((lambda (_%specialize107275%_)
                       (let ((_%specialized-proc107277%_
                              (_%specialize107275%_
                               _%klass107264%_
                               _%method-table107265%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table107265%_
                          _%method107266%_
                          _%specialized-proc107277%_)))
                     _%$e107272%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table107265%_
                       _%method107266%_
                       _%proc107267%_))))))))
    (define ___specialize-class
      (lambda (_%klass107207%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107207%_ 'class))
            (if (__class-type-metaclass? _%klass107207%_)
                (let ((__method112332
                       (__method-ref _%klass107207%_ 'specialize-class)))
                  (if __method112332
                      (let ()
                        (declare (not safe))
                        (__method112332 _%klass107207%_))
                      (begin
                        (error '"Missing method"
                               _%klass107207%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp112470
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass107207%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp112470))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass107207%_)
                    (let ((_%method-table107213%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop107215%_ ((_%rest107217%_
                                            (__class-precedence-list
                                             _%klass107207%_)))
                        (let* ((_%rest107218107226%_ _%rest107217%_)
                               (_%else107220107234%_
                                (lambda () _%method-table107213%_))
                               (_%K107222107252%_
                                (lambda (_%rest107237%_ _%xklass107238%_)
                                  (let ((_%xmethod-table107239107241%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass107238%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table107239107241%_
                                        (let* ((_%xmethod-table107243%_
                                                _%xmethod-table107239107241%_)
                                               (__tmp112471
                                                (lambda (_%g107244107247%_
                                                         _%g107245107249%_)
                                                  (__specialize-method
                                                   _%klass107207%_
                                                   _%method-table107213%_
                                                   _%g107244107247%_
                                                   _%g107245107249%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table107243%_
                                           __tmp112471))
                                        '#f))
                                  (_%loop107215%_ _%rest107237%_))))
                          (if (pair? _%rest107218107226%_)
                              (let ((_%hd107223107255%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest107218107226%_)))
                                    (_%tl107224107257%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest107218107226%_))))
                                (let* ((_%xklass107260%_ _%hd107223107255%_)
                                       (_%rest107262%_ _%tl107224107257%_))
                                  (_%K107222107252%_
                                   _%rest107262%_
                                   _%xklass107260%_)))
                              (_%else107220107234%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass107207%_))
                (__specialize-class (__shadow-class__0 _%klass107207%_))
                (error '"bad class; cannot specialize" _%klass107207%_)))))
    (define seal-class!
      (lambda (_%klass107193%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107193%_ 'class))
            (let ((_%klass107197%_ _%klass107193%_))
              (__seal-class! _%klass107197%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1115.20-1115.25"
               'contract:
               'class-type?
               'value:
               _%klass107193%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass107178%_)
        (let ((_%klass107181%_ _%klass107178%_))
          (if (__class-type-sealed? _%klass107181%_)
              '#!void
              (begin
                (if (__class-type-metaclass? _%klass107181%_)
                    (let ()
                      (let ((__method112333
                             (__method-ref _%klass107181%_ 'seal-class!)))
                        (if __method112333
                            (let ()
                              (declare (not safe))
                              (__method112333 _%klass107181%_))
                            (begin
                              (error '"Missing method"
                                     _%klass107181%_
                                     'seal-class!)
                              '#!void)))
                      (__specialize-class _%klass107181%_))
                    (if (let ((__tmp112472
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass107181%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp112472))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass107181%_)
                        (__specialize-class _%klass107181%_)))
                (__class-type-seal! _%klass107181%_))))))
    (define next-method
      (lambda (_%subklass107152%_ _%obj107153%_ _%id107154%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass107152%_ 'class))
            (let ((_%subklass107158%_ _%subklass107152%_))
              (if (symbol? _%id107154%_)
                  (let ((_%id107168%_ _%id107154%_))
                    (__next-method
                     _%subklass107158%_
                     _%obj107153%_
                     _%id107168%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1137.44-1137.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id107154%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1137.20-1137.28"
               'contract:
               'class-type?
               'value:
               _%subklass107152%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass107089%_ _%obj107090%_ _%id107091%_)
        (let* ((_%subklass107094%_ _%subklass107089%_)
               (_%id107102%_ _%id107091%_))
          (letrec ((_%find-next-method107111%_
                    (lambda (_%klass107113%_)
                      (let _%lp107115%_ ((_%rest107117%_
                                          (class-precedence-list
                                           _%klass107113%_)))
                        (let* ((_%rest107118107126%_ _%rest107117%_)
                               (_%else107120107134%_ (lambda () '#f))
                               (_%K107122107140%_
                                (lambda (_%rest107137%_ _%klass107138%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass107094%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass107138%_)))
                                      (__mixin-find-method
                                       _%rest107137%_
                                       _%obj107090%_
                                       _%id107102%_)
                                      (_%lp107115%_ _%rest107137%_)))))
                          (if (pair? _%rest107118107126%_)
                              (let ((_%hd107123107143%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest107118107126%_)))
                                    (_%tl107124107145%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest107118107126%_))))
                                (let* ((_%klass107148%_ _%hd107123107143%_)
                                       (_%rest107150%_ _%tl107124107145%_))
                                  (_%K107122107140%_
                                   _%rest107150%_
                                   _%klass107148%_)))
                              (_%else107120107134%_)))))))
            (_%find-next-method107111%_ (class-of _%obj107090%_))))))
    (define call-next-method
      (lambda (_%subklass107062%_ _%obj107063%_ _%id107064%_ . _%args107065%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass107062%_ 'class))
            (let ((_%subklass107069%_ _%subklass107062%_))
              (if (symbol? _%id107064%_)
                  (let ((_%id107079%_ _%id107064%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass107069%_
                             _%obj107063%_
                             _%id107079%_
                             _%args107065%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1148.49-1148.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id107064%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1148.25-1148.33"
               'contract:
               'class-type?
               'value:
               _%subklass107062%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass107033%_ _%obj107034%_ _%id107035%_ . _%args107036%_)
        (let* ((_%subklass107039%_ _%subklass107033%_)
               (_%id107047%_ _%id107035%_)
               (_%$e107056%_
                (__next-method _%subklass107039%_ _%obj107034%_ _%id107047%_)))
          (if _%$e107056%_
              ((lambda (_%methodf107059%_)
                 (apply _%methodf107059%_ _%obj107034%_ _%args107036%_))
               _%$e107056%_)
              (error '"cannot find next method"
                     'object:
                     _%obj107034%_
                     'method:
                     _%id107047%_)))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type106926%_ _%properties106927%_)
        (letrec ((_%shadow-type-id106929%_
                  (lambda (_%type107021%_)
                    (let ((__tmp112473
                           (let ()
                             (declare (not safe))
                             (##type-name _%type107021%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp112473 '"::t"))))
                 (_%shadow-type-name106930%_
                  (lambda (_%type107019%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type107019%_))))
                 (_%make-shadow-class106931%_
                  (lambda (_%type107011%_ _%precedence-list107012%_)
                    (let* ((_%super107014%_
                            (if (pair? _%precedence-list107012%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list107012%_))
                                      '())
                                '()))
                           (_%klass107016%_
                            (make-class-type
                             (_%shadow-type-id106929%_ _%type107011%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type107011%_))
                             _%super107014%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (cons (cons 'system-type:
                                                     _%type107011%_)
                                               (let ((__tmp112474
                                                      (if (__type-extensible?
                                                           _%type107011%_)
                                                          '()
                                                          (cons (cons 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#t)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldr1
                                                  cons
                                                  _%properties106927%_
                                                  __tmp112474)))))
                             '#f)))
                      (let ((__tmp112475
                             (let ()
                               (declare (not safe))
                               (##type-id _%type107011%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp112475
                         _%klass107016%_))
                      _%klass107016%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again106935%_ ((_%spin106938%_ '0))
              (if (let ((__tmp112476
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp112476 '0))
                  (let ((__tmp112477 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp112477))
                  (if (let () (declare (not safe)) (##fx< _%spin106938%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again106935%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin106938%_ '1))))
                      (let ((_%owner106944%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner106944%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner106944%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again106935%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e106950%_
                 (let ((__tmp112478
                        (let ()
                          (declare (not safe))
                          (##type-id _%type106926%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp112478 '#f))))
            (if _%$e106950%_
                ((lambda (_%klass106953%_)
                   (let ()
                     (declare (not safe))
                     (##vector-set! __shadow-classes-lock '1 '#f))
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-lock '0 '0 '1))
                   _%klass106953%_)
                 _%$e106950%_)
                (let _%loop106956%_ ((_%super106958%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type106926%_)))
                                     (_%hierarchy106959%_ '()))
                  (if (not _%super106958%_)
                      (let _%loop106962%_ ((_%rest106964%_ _%hierarchy106959%_)
                                           (_%precedence-list106965%_ '()))
                        (let* ((_%rest106966106974%_ _%rest106964%_)
                               (_%else106968106984%_
                                (lambda ()
                                  (let ((_%klass106982%_
                                         (_%make-shadow-class106931%_
                                          _%type106926%_
                                          _%precedence-list106965%_)))
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
                                    _%klass106982%_)))
                               (_%K106970106998%_
                                (lambda (_%rest106987%_ _%type106988%_)
                                  (let ((_%$e106990%_
                                         (let ((__tmp112479
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type106988%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp112479
                                            '#f))))
                                    (if _%$e106990%_
                                        ((lambda (_%klass106993%_)
                                           (_%loop106962%_
                                            _%rest106987%_
                                            (cons _%klass106993%_
                                                  _%precedence-list106965%_)))
                                         _%$e106990%_)
                                        (let ((_%klass106996%_
                                               (_%make-shadow-class106931%_
                                                _%type106988%_
                                                _%precedence-list106965%_)))
                                          (_%loop106962%_
                                           _%rest106987%_
                                           (cons _%klass106996%_
                                                 _%precedence-list106965%_))))))))
                          (if (pair? _%rest106966106974%_)
                              (let ((_%hd106971107001%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest106966106974%_)))
                                    (_%tl106972107003%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest106966106974%_))))
                                (let* ((_%type107006%_ _%hd106971107001%_)
                                       (_%rest107008%_ _%tl106972107003%_))
                                  (_%K106970106998%_
                                   _%rest107008%_
                                   _%type107006%_)))
                              (_%else106968106984%_))))
                      (_%loop106956%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super106958%_))
                       (cons _%super106958%_ _%hierarchy106959%_)))))))))
    (define __shadow-class__0
      (lambda (_%type107026%_)
        (let ((_%properties107028%_ '()))
          (__shadow-class__% _%type107026%_ _%properties107028%_))))
    (define __shadow-class
      (lambda _g112480_
        (let ((_g112481_ (let () (declare (not safe)) (##length _g112480_))))
          (cond ((let () (declare (not safe)) (##fx= _g112481_ 1))
                 (apply __shadow-class__0 _g112480_))
                ((let () (declare (not safe)) (##fx= _g112481_ 2))
                 (apply __shadow-class__% _g112480_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g112480_))))))
    (define __type
      (let* ((_%tb106914%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e106916%_ _%tb106914%_))
        (if (eq? '2 _%$e106916%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e106916%_)
                (let ((_%flonum-self-tagging-tags106919%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits106920%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e106922%_ _%flonum-self-tagging-tags106919%_))
                    (if (eq? '0 _%$e106922%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits106920%_ '2))
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
                        (if (eq? '1 _%$e106922%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits106920%_ '2))
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
                            (if (eq? '2 _%$e106922%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e106922%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e106922%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags106919%_))))))))
                (error '"unexpected tag width" _%tb106914%_)))))
    (define __class
      (let* ((_%len106862%_
              (let () (declare (not safe)) (##vector-length __type)))
             (_%cv106864%_
              (let () (declare (not safe)) (##make-vector _%len106862%_ '#f))))
        (let _%loop106867%_ ((_%i106869%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i106869%_ _%len106862%_))
              (let* ((_%t106871%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i106869%_)))
                     (_%f106911%_
                      (if (eq? _%t106871%_ 'undefined)
                          (lambda (_%obj106874%_)
                            (error '"object type is undefined" _%obj106874%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t106871%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj106877%_)
                                (declare (not interrupts-enabled) (not safe))
                                (__system-class _%t106871%_))
                              (if (eq? _%t106871%_ 'subtyped)
                                  (lambda (_%obj106881%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st106884%_
                                           (##subtype _%obj106881%_)))
                                      (if (##fx= _%st106884%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass106887%_
                                                 (##structure-type
                                                  _%obj106881%_)))
                                            (if (##structure-instance-of?
                                                 _%klass106887%_
                                                 'class)
                                                _%klass106887%_
                                                (__shadow-class__0
                                                 _%klass106887%_)))
                                          (if (##fx= _%st106884%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj106881%_)
                                                         '1)
                                                  (__system-class 'box)
                                                  (__system-class 'values))
                                              (let ((_%$e106890%_
                                                     (##vector-ref
                                                      __subtype-id
                                                      _%st106884%_)))
                                                (if _%$e106890%_
                                                    (__system-class
                                                     _%$e106890%_)
                                                    (error '"unknown class"
                                                           'subtype:
                                                           _%st106884%_
                                                           'object:
                                                           _%obj106881%_)))))))
                                  (if (eq? _%t106871%_ 'special)
                                      (lambda (_%obj106895%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (if (char? _%obj106895%_)
                                            (__system-class 'char)
                                            (if (eq? _%obj106895%_ '())
                                                (__system-class 'null)
                                                (if (eq? _%obj106895%_ '#f)
                                                    (__system-class 'boolean)
                                                    (if (eq? _%obj106895%_ '#t)
                                                        (__system-class
                                                         'boolean)
                                                        (if (eq? _%obj106895%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void)
                    (__system-class 'void)
                    (if (eq? _%obj106895%_ '#!eof)
                        (__system-class 'eof)
                        (if (eq? _%obj106895%_ '#!unbound)
                            (__system-class 'unbound)
                            (if (eq? _%obj106895%_ '#!unbound2)
                                (__system-class 'unbound2)
                                (if (eq? _%obj106895%_ '#!optional)
                                    (__system-class 'optional)
                                    (if (eq? _%obj106895%_ '#!rest)
                                        (__system-class 'rest)
                                        (if (eq? _%obj106895%_ '#!key)
                                            (__system-class 'key)
                                            (__system-class
                                             'special)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t106871%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv106864%_ _%i106869%_ _%f106911%_))
                (_%loop106867%_
                 (let () (declare (not safe)) (##fx+ _%i106869%_ '1))))
              _%cv106864%_))))
    (define type-of
      (lambda (_%obj106858%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj106858%_)))))
    (define class-of
      (lambda (_%obj106849%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t106853%_ (##type _%obj106849%_))
                 (_%f106855%_ (##vector-ref __class _%t106853%_)))
            (_%f106855%_ _%obj106849%_)))))
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
      (lambda (_%id106843%_)
        (let ((_%$e106845%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id106843%_ '#f))))
          (if _%$e106845%_
              _%$e106845%_
              (error '"unknown system class" _%id106843%_)))))
    (define __make-system-class
      (lambda (_%id106837%_ _%super106838%_ _%properties106839%_)
        (let ((_%klass106841%_
               (make-class-type
                _%id106837%_
                _%id106837%_
                _%super106838%_
                '()
                (cons (cons 'system: '#t)
                      (let ()
                        (declare (not safe))
                        (__foldr1 cons '() _%properties106839%_)))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id106837%_
             _%klass106841%_))
          _%klass106841%_)))))
