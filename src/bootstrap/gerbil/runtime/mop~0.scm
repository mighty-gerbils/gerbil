(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1713453198)
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
      (let ((_%flags98867%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties98868%_ '((direct-slots:) (system: . #t)))
            (_%slot-table98869%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags98867%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table98869%_
           _%properties98868%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots98843%_
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
             (_%slot-vector98845%_ (list->vector (cons '#f _%slots98843%_)))
             (_%slot-table98852%_
              (let ((_%slot-table98847%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp100310
                       (lambda (_%slot98849%_ _%field98850%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table98847%_
                            _%slot98849%_
                            _%field98850%_))
                         (let ((__tmp100311
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot98849%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table98847%_
                            __tmp100311
                            _%field98850%_))))
                      (__tmp100308
                       (let ((__tmp100309
                              (let ()
                                (declare (not safe))
                                (##length _%slots98843%_))))
                         (declare (not safe))
                         (##iota __tmp100309 '1))))
                  (declare (not safe))
                  (##for-each __tmp100310 _%slots98843%_ __tmp100308))
                _%slot-table98847%_))
             (_%flags98854%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields98860%_
              (list->vector
               (let ((__tmp100312
                      (map (lambda (_%g9885598857%_)
                             (list _%g9885598857%_ '5 '#f))
                           (drop _%slots98843%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp100312))))
             (_%properties98862%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots98843%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t98864%_
              (let ((__tmp100313 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags98854%_
                 ##type-type
                 _%fields98860%_
                 __tmp100313
                 _%slot-vector98845%_
                 _%slot-table98852%_
                 _%properties98862%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t98864%_ _%t98864%_))
        _%t98864%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags98839%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties98840%_ '((direct-slots:) (system: . #t)))
            (_%slot-table98841%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp100314 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags98839%_
           '#f
           '#()
           __tmp100314
           '#(#f)
           _%slot-table98841%_
           _%properties98840%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj98837%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj98837%_ 'class))))
    (define class-type=?
      (lambda (_%x98812%_ _%y98813%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x98812%_ 'class))
            (let ((_%x98817%_ _%x98812%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y98813%_ 'class))
                  (let ((_%y98827%_ _%y98813%_))
                    (__class-type=? _%x98817%_ _%y98827%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y98813%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x98812%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x98791%_ _%y98792%_)
        (let* ((_%x98795%_ _%x98791%_) (_%y98803%_ _%y98792%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x98795%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y98803%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type98777%_)
        (if (let () (declare (not safe)) (##type? _%type98777%_))
            (let ((_%type98781%_ _%type98777%_))
              (__type-opaque? _%type98781%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type98777%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type98765%_)
        (let* ((_%type98768%_ _%type98765%_)
               (__tmp100315
                (let ((__tmp100316
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type98768%_))))
                  (declare (not safe))
                  (##fxand __tmp100316 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp100315 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type98751%_)
        (if (let () (declare (not safe)) (##type? _%type98751%_))
            (let ((_%type98755%_ _%type98751%_))
              (__type-extensible? _%type98755%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type98751%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type98739%_)
        (let* ((_%type98742%_ _%type98739%_)
               (__tmp100317
                (let ((__tmp100318
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type98742%_))))
                  (declare (not safe))
                  (##fxand __tmp100318 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp100317 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type98725%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type98725%_ 'class))
            (let ((_%type98729%_ _%type98725%_))
              (__class-type-final? _%type98729%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type98725%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type98713%_)
        (let* ((_%type98716%_ _%type98713%_)
               (__tmp100319
                (let ((__tmp100320
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type98716%_))))
                  (declare (not safe))
                  (##fxand __tmp100320 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp100319 '0))))
    (define class-type-struct?
      (lambda (_%klass98699%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98699%_ 'class))
            (let ((_%klass98703%_ _%klass98699%_))
              (__class-type-struct? _%klass98703%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass98699%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass98687%_)
        (let* ((_%klass98690%_ _%klass98687%_)
               (__tmp100321
                (let ((__tmp100322
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass98690%_))))
                  (declare (not safe))
                  (##fxand __tmp100322 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp100321 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass98673%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98673%_ 'class))
            (let ((_%klass98677%_ _%klass98673%_))
              (__class-type-sealed? _%klass98677%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass98673%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass98661%_)
        (let* ((_%klass98664%_ _%klass98661%_)
               (__tmp100323
                (let ((__tmp100324
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass98664%_))))
                  (declare (not safe))
                  (##fxand __tmp100324 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp100323 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass98647%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98647%_ 'class))
            (let ((_%klass98651%_ _%klass98647%_))
              (__class-type-metaclass? _%klass98651%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass98647%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass98635%_)
        (let* ((_%klass98638%_ _%klass98635%_)
               (__tmp100325
                (let ((__tmp100326
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass98638%_))))
                  (declare (not safe))
                  (##fxand __tmp100326 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp100325 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass98621%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98621%_ 'class))
            (let ((_%klass98625%_ _%klass98621%_))
              (__class-type-system? _%klass98625%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass98621%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass98609%_)
        (let* ((_%klass98612%_ _%klass98609%_)
               (__tmp100327
                (let ((__tmp100328
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass98612%_))))
                  (declare (not safe))
                  (##fxand __tmp100328 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp100327 class-type-flag-system))))
    (define make-class-type-descriptor
      (lambda (_%type-id98494%_
               _%type-name98495%_
               _%type-super98496%_
               _%precedence-list98497%_
               _%slot-vector98498%_
               _%properties98499%_
               _%constructor98500%_
               _%slot-table98501%_
               _%methods98502%_)
        (letrec ((_%make-props!98505%_
                  (lambda (_%key98578%_)
                    (letrec* ((_%ht98580%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!98581%_
                               (lambda (_%ht98602%_ _%slots98603%_)
                                 (for-each
                                  (lambda (_%g9860498606%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht98602%_
                                       _%g9860498606%_
                                       '#t)))
                                  _%slots98603%_)))
                              (_%put-alist!98582%_
                               (lambda (_%ht98591%_
                                        _%key98592%_
                                        _%alist98593%_)
                                 (let ((_%$e98595%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key98592%_
                                           _%alist98593%_))))
                                   (if _%$e98595%_
                                       ((lambda (_%g9859798599%_)
                                          (_%put-slots!98581%_
                                           _%ht98591%_
                                           _%g9859798599%_))
                                        _%$e98595%_)
                                       '#!void)))))
                      (_%put-alist!98582%_
                       _%ht98580%_
                       _%key98578%_
                       _%properties98499%_)
                      (for-each
                       (lambda (_%mixin98584%_)
                         (let ((_%alist98586%_
                                (##structure-ref
                                 _%mixin98584%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist98586%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key98578%_
                                           _%alist98586%_))))
                               (_%put-slots!98581%_
                                _%ht98580%_
                                (class-type-slot-list _%mixin98584%_))
                               (_%put-alist!98582%_
                                _%ht98580%_
                                _%key98578%_
                                _%alist98586%_))))
                       _%precedence-list98497%_)
                      _%ht98580%_))))
          (let* ((_%transparent?98507%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties98499%_)))
                 (_%all-slots-printable?98512%_
                  (let ((_%$e98509%_ _%transparent?98507%_))
                    (if _%$e98509%_
                        _%$e98509%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties98499%_))))))
                 (_%printable98514%_
                  (if (not _%all-slots-printable?98512%_)
                      (_%make-props!98505%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?98519%_
                  (let ((_%$e98516%_ _%transparent?98507%_))
                    (if _%$e98516%_
                        _%$e98516%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties98499%_))))))
                 (_%equalable98521%_
                  (if (not _%all-slots-equalable?98519%_)
                      (_%make-props!98505%_ 'equal:)
                      '#f))
                 (_%first-new-field98523%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super98496%_ 'class))
                      (let ((__tmp100329
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super98496%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp100329))
                      '1))
                 (_%field-info-length98525%_
                  (let ((__tmp100330
                         (let ((__tmp100331
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector98498%_))))
                           (declare (not safe))
                           (##fx- __tmp100331 _%first-new-field98523%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp100330)))
                 (_%field-info98527%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length98525%_ '#f)))
                 (_%struct?98529%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties98499%_)))
                 (_%final?98531%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties98499%_)))
                 (_%metaclass98539%_
                  (let ((_%metaclass9853298534%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties98499%_))))
                    (if _%metaclass9853298534%_
                        (let ((_%metaclass98537%_ _%metaclass9853298534%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass98537%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id98494%_
                                     'metaclass:
                                     _%metaclass98537%_))
                          _%metaclass98537%_)
                        '#f)))
                 (_%system?98541%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties98499%_)))
                 (_%opaque?98546%_
                  (let ((_%$e98543%_ (not _%all-slots-equalable?98519%_)))
                    (if _%$e98543%_
                        _%$e98543%_
                        (if _%type-super98496%_
                            (__type-opaque? _%type-super98496%_)
                            '#f))))
                 (_%type-flags98548%_
                  (let ((__tmp100336
                         (if _%final?98531%_ '0 type-flag-extensible))
                        (__tmp100335 (if _%opaque?98546%_ type-flag-opaque '0))
                        (__tmp100334
                         (if _%struct?98529%_ class-type-flag-struct '0))
                        (__tmp100333
                         (if _%metaclass98539%_ class-type-flag-metaclass '0))
                        (__tmp100332
                         (if _%system?98541%_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp100336
                             __tmp100335
                             __tmp100334
                             __tmp100333
                             __tmp100332)))
                 (_%precedence-list98556%_
                  (let ((_%$e98550%_ (memq t::t _%precedence-list98497%_)))
                    (if _%$e98550%_
                        ((lambda (_%tail98553%_)
                           (if (null? (cdr _%tail98553%_))
                               _%precedence-list98497%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list98497%_)))
                         _%$e98550%_)
                        (let ((__tmp100337 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list98497%_ __tmp100337))))))
            (let _%loop98559%_ ((_%i98561%_ _%first-new-field98523%_)
                                (_%j98562%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j98562%_ _%field-info-length98525%_))
                  (let* ((_%slot98564%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector98498%_ _%i98561%_)))
                         (_%flags98572%_
                          (if _%transparent?98507%_
                              '0
                              (let ((__tmp100339
                                     (if (or _%all-slots-printable?98512%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable98514%_
                                                _%slot98564%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp100338
                                     (if (or _%all-slots-equalable?98519%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable98521%_
                                                _%slot98564%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp100339 __tmp100338)))))
                    (vector-set! _%field-info98527%_ _%j98562%_ _%slot98564%_)
                    (vector-set!
                     _%field-info98527%_
                     (let () (declare (not safe)) (##fx+ _%j98562%_ '1))
                     _%flags98572%_)
                    (_%loop98559%_
                     (let () (declare (not safe)) (##fx+ _%i98561%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j98562%_ '3))))
                  '#!void))
            (if _%metaclass98539%_
                (let ((_%val98575%_
                       (make-instance
                        _%metaclass98539%_
                        _%type-id98494%_
                        _%type-name98495%_
                        _%type-flags98548%_
                        _%type-super98496%_
                        _%field-info98527%_
                        _%precedence-list98556%_
                        _%slot-vector98498%_
                        _%slot-table98501%_
                        _%properties98499%_
                        _%constructor98500%_
                        _%methods98502%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val98575%_ 'class))
                      _%val98575%_
                      (error '"bad cast" class::t _%val98575%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id98494%_
                   _%type-name98495%_
                   _%type-flags98548%_
                   _%type-super98496%_
                   _%field-info98527%_
                   _%precedence-list98556%_
                   _%slot-vector98498%_
                   _%slot-table98501%_
                   _%properties98499%_
                   _%constructor98500%_
                   _%methods98502%_)))))))
    (define class-type-id
      (lambda (_%klass98492%_)
        (##structure-ref _%klass98492%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass98490%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98490%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass98487%_ _%val98488%_)
        (##structure-set! _%klass98487%_ _%val98488%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass98482%_ _%val98484%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98482%_
           _%val98484%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass98480%_)
        (##structure-ref _%klass98480%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass98478%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98478%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass98475%_ _%val98476%_)
        (##structure-set! _%klass98475%_ _%val98476%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass98470%_ _%val98472%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98470%_
           _%val98472%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass98468%_)
        (##structure-ref _%klass98468%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass98466%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98466%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass98463%_ _%val98464%_)
        (##structure-set! _%klass98463%_ _%val98464%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass98458%_ _%val98460%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98458%_
           _%val98460%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass98456%_)
        (##structure-ref _%klass98456%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass98454%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98454%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass98451%_ _%val98452%_)
        (##structure-set! _%klass98451%_ _%val98452%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass98446%_ _%val98448%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98446%_
           _%val98448%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass98444%_)
        (##structure-ref _%klass98444%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass98442%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98442%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass98439%_ _%val98440%_)
        (##structure-set! _%klass98439%_ _%val98440%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass98434%_ _%val98436%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98434%_
           _%val98436%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass98432%_)
        (##structure-ref _%klass98432%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass98430%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass98430%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass98427%_ _%val98428%_)
        (##structure-set!
         _%klass98427%_
         _%val98428%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass98422%_ _%val98424%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98422%_
           _%val98424%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass98420%_)
        (##structure-ref _%klass98420%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass98418%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass98418%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass98415%_ _%val98416%_)
        (##structure-set!
         _%klass98415%_
         _%val98416%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass98410%_ _%val98412%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98410%_
           _%val98412%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass98408%_)
        (##structure-ref _%klass98408%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass98406%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98406%_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass98403%_ _%val98404%_)
        (##structure-set!
         _%klass98403%_
         _%val98404%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass98398%_ _%val98400%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98398%_
           _%val98400%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass98396%_)
        (##structure-ref _%klass98396%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass98394%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98394%_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_%klass98391%_ _%val98392%_)
        (##structure-set!
         _%klass98391%_
         _%val98392%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass98386%_ _%val98388%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98386%_
           _%val98388%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass98384%_)
        (##structure-ref _%klass98384%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass98382%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass98382%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass98379%_ _%val98380%_)
        (##structure-set!
         _%klass98379%_
         _%val98380%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass98374%_ _%val98376%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98374%_
           _%val98376%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass98372%_)
        (##structure-ref _%klass98372%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass98370%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98370%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass98367%_ _%val98368%_)
        (##structure-set! _%klass98367%_ _%val98368%_ '11 class::t 'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass98362%_ _%val98364%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98362%_
           _%val98364%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass98348%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98348%_ 'class))
            (let ((_%klass98352%_ _%klass98348%_))
              (__class-type-slot-list _%klass98352%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass98348%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass98336%_)
        (let ((_%klass98339%_ _%klass98336%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass98339%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass98322%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98322%_ 'class))
            (let ((_%klass98326%_ _%klass98322%_))
              (__class-type-field-count _%klass98326%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass98322%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass98310%_)
        (let* ((_%klass98313%_ _%klass98310%_)
               (__tmp100340
                (let ((__tmp100341
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass98313%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp100341))))
          (declare (not safe))
          (##fx- __tmp100340 '1))))
    (define class-type-seal!
      (lambda (_%klass98296%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98296%_ 'class))
            (let ((_%klass98300%_ _%klass98296%_))
              (__class-type-seal! _%klass98300%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass98296%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass98284%_)
        (let ((_%klass98287%_ _%klass98284%_))
          (let ((__tmp100342
                 (let ((__tmp100343
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass98287%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp100343))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass98287%_
             __tmp100342
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct98259%_ _%maybe-super-struct98260%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct98259%_ 'class))
            (let ((_%maybe-sub-struct98264%_ _%maybe-sub-struct98259%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct98260%_
                     'class))
                  (let ((_%maybe-super-struct98274%_
                         _%maybe-super-struct98260%_))
                    (__substruct?
                     _%maybe-sub-struct98264%_
                     _%maybe-super-struct98274%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct98260%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct98259%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct98228%_ _%maybe-super-struct98229%_)
        (let* ((_%maybe-sub-struct98232%_ _%maybe-sub-struct98228%_)
               (_%maybe-super-struct98240%_ _%maybe-super-struct98229%_)
               (_%maybe-super-struct-id98249%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct98240%_))))
          (let _%lp98251%_ ((_%super-struct98253%_ _%maybe-sub-struct98232%_))
            (if (not _%super-struct98253%_)
                '#f
                (if (eq? _%maybe-super-struct-id98249%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct98253%_)))
                    '#t
                    (_%lp98251%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct98253%_)))))))))
    (define base-struct/1
      (lambda (_%klass98223%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98223%_ 'class))
            (if (__class-type-struct? _%klass98223%_)
                _%klass98223%_
                (let () (declare (not safe)) (##type-super _%klass98223%_)))
            (if (not _%klass98223%_)
                '#f
                (error '"not a class or false" _%klass98223%_)))))
    (define base-struct/2
      (lambda (_%klass198208%_ _%klass298209%_)
        (let ((_%s198211%_ (base-struct/1 _%klass198208%_))
              (_%s298212%_ (base-struct/1 _%klass298209%_)))
          (if (or (not _%s198211%_)
                  (and _%s298212%_ (substruct? _%s198211%_ _%s298212%_)))
              _%s298212%_
              (if (or (not _%s298212%_)
                      (and _%s198211%_ (substruct? _%s298212%_ _%s198211%_)))
                  _%s198211%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass198208%_
                         _%klass298209%_
                         _%s198211%_
                         _%s298212%_))))))
    (define base-struct/list
      (lambda (_%all-supers98092%_)
        (let* ((_%all-supers9809398118%_ _%all-supers98092%_)
               (_%E9809898122%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers9809398118%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K9811698205%_ (lambda () '#f))
                (_%K9811398191%_
                 (lambda (_%x98189%_) (base-struct/1 _%x98189%_)))
                (_%K9810898168%_
                 (lambda (_%y98165%_ _%x98166%_)
                   (base-struct/2 _%x98166%_ _%y98165%_)))
                (_%K9809998129%_
                 (lambda (_%y98126%_ _%x98127%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x98127%_ _%y98126%_)))))
            (let* ((_%__match100302100303%_
                    (lambda (_%hd9810098132%_ _%tl9810198134%_)
                      (let ((_%x98137%_ _%hd9810098132%_))
                        (letrec ((_%splice-rest9810398139%_
                                  (lambda (_%rest9810798146%_ _%y98148%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%rest9810798146%_))
                                        (_%K9809998129%_ _%y98148%_ _%x98137%_)
                                        (_%E9809898122%_))))
                                 (_%splice-try9810598141%_
                                  (lambda (_%hd9810698150%_
                                           _%rest9810798152%_
                                           _%y9810298153%_)
                                    (let ((_%y98156%_ _%hd9810698150%_))
                                      (_%splice-loop9810498143%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest9810798152%_))
                                       (cons _%y98156%_ _%y9810298153%_)))))
                                 (_%splice-loop9810498143%_
                                  (lambda (_%rest9810798158%_ _%y9810298159%_)
                                    (if (pair? _%rest9810798158%_)
                                        (_%splice-try9810598141%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest9810798158%_))
                                         _%rest9810798158%_
                                         _%y9810298159%_)
                                        (_%splice-rest9810398139%_
                                         _%rest9810798158%_
                                         (reverse _%y9810298159%_))))))
                          (_%splice-loop9810498143%_ _%tl9810198134%_ '())))))
                   (_%try-match9809598201%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all-supers9809398118%_))
                          (let ((_%tl9811598196%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers9809398118%_)))
                                (_%hd9811498194%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers9809398118%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl9811598196%_))
                                (let ((_%x98199%_ _%hd9811498194%_))
                                  (base-struct/1 _%x98199%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl9811598196%_))
                                    (let ((_%tl9811298180%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl9811598196%_)))
                                          (_%hd9811198178%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl9811598196%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl9811298180%_))
                                          (let ((_%x98176%_ _%hd9811498194%_)
                                                (_%y98183%_ _%hd9811198178%_))
                                            (_%K9810898168%_
                                             _%y98183%_
                                             _%x98176%_))
                                          (_%__match100302100303%_
                                           _%hd9811498194%_
                                           _%tl9811598196%_)))
                                    (_%__match100302100303%_
                                     _%hd9811498194%_
                                     _%tl9811598196%_))))
                          (_%E9809898122%_)))))
              (if (let ()
                    (declare (not safe))
                    (##null? _%all-supers9809398118%_))
                  (_%K9811698205%_)
                  (_%try-match9809598201%_)))))))
    (define base-struct
      (lambda _%all-supers98090%_ (base-struct/list _%all-supers98090%_)))
    (define find-super-constructor
      (lambda (_%super98041%_)
        (let _%lp98043%_ ((_%rest98045%_ _%super98041%_)
                          (_%constructor98046%_ '#f))
          (let* ((_%rest9804798055%_ _%rest98045%_)
                 (_%else9804998063%_ (lambda () _%constructor98046%_))
                 (_%K9805198078%_
                  (lambda (_%rest98066%_ _%hd98067%_)
                    (let ((_%$e98069%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd98067%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e98069%_
                          ((lambda (_%xconstructor98072%_)
                             (if (or (not _%constructor98046%_)
                                     (eq? _%constructor98046%_
                                          _%xconstructor98072%_))
                                 (_%lp98043%_
                                  _%rest98066%_
                                  _%xconstructor98072%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor98046%_
                                        _%xconstructor98072%_)))
                           _%$e98069%_)
                          (_%lp98043%_ _%rest98066%_ _%constructor98046%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest9804798055%_))
                (let ((_%hd9805298081%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9804798055%_)))
                      (_%tl9805398083%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9804798055%_))))
                  (let* ((_%hd98086%_ _%hd9805298081%_)
                         (_%rest98088%_ _%tl9805398083%_))
                    (_%K9805198078%_ _%rest98088%_ _%hd98086%_)))
                (_%else9804998063%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list98017%_ _%direct-slots98018%_)
        (let* ((_%next-slot98020%_ '1)
               (_%slot-table98022%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots98024%_ '(__class))
               (_%process-slot98028%_
                (lambda (_%slot98026%_)
                  (if (symbol? _%slot98026%_)
                      '#!void
                      (error '"invalid slot name" _%slot98026%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table98022%_
                              _%slot98026%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table98022%_
                           _%slot98026%_
                           _%next-slot98020%_))
                        (let ((__tmp100344
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot98026%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table98022%_
                           __tmp100344
                           _%next-slot98020%_))
                        (set! _%r-slots98024%_
                              (cons _%slot98026%_ _%r-slots98024%_))
                        (set! _%next-slot98020%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot98020%_ '1))))
                      '#!void)))
               (_%process-slots98034%_
                (lambda (_%g9802998031%_)
                  (for-each _%process-slot98028%_ _%g9802998031%_))))
          (let ((__tmp100346
                 (lambda (_%mixin98037%_)
                   (_%process-slots98034%_
                    (let ((__tmp100347
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin98037%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp100347 '())))))
                (__tmp100345 (reverse _%class-precedence-list98017%_)))
            (declare (not safe))
            (##for-each __tmp100346 __tmp100345))
          (_%process-slots98034%_ _%direct-slots98018%_)
          (let ((_%slot-vector98039%_
                 (list->vector
                  (let () (declare (not safe)) (##reverse _%r-slots98024%_)))))
            (values _%slot-vector98039%_ _%slot-table98022%_)))))
    (define make-class-type
      (lambda (_%id97942%_
               _%name97943%_
               _%direct-supers97944%_
               _%direct-slots97945%_
               _%properties97946%_
               _%constructor97947%_)
        (if (symbol? _%id97942%_)
            (let ((_%id97951%_ _%id97942%_))
              (if (symbol? _%name97943%_)
                  (let ((_%name97961%_ _%name97943%_))
                    (if (list? _%direct-supers97944%_)
                        (let ((_%direct-supers97971%_ _%direct-supers97944%_))
                          (if (list? _%direct-slots97945%_)
                              (let ((_%direct-slots97981%_
                                     _%direct-slots97945%_))
                                (if (list? _%properties97946%_)
                                    (let ((_%properties97991%_
                                           _%properties97946%_))
                                      (if ((lambda (_%$obj98000%_)
                                             (or (not _%$obj98000%_)
                                                 (symbol? _%$obj98000%_)))
                                           _%constructor97947%_)
                                          (let ((_%constructor98007%_
                                                 _%constructor97947%_))
                                            (__make-class-type
                                             _%id97951%_
                                             _%name97961%_
                                             _%direct-supers97971%_
                                             _%direct-slots97981%_
                                             _%properties97991%_
                                             _%constructor98007%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor97947%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties97946%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots97945%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers97944%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name97943%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id97942%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id97811%_
               _%name97812%_
               _%direct-supers97813%_
               _%direct-slots97814%_
               _%properties97815%_
               _%constructor97816%_)
        (let* ((_%id97819%_ _%id97811%_)
               (_%name97827%_ _%name97812%_)
               (_%direct-supers97835%_ _%direct-supers97813%_)
               (_%direct-slots97843%_ _%direct-slots97814%_)
               (_%properties97851%_ _%properties97815%_)
               (_%constructor97859%_ _%constructor97816%_))
          (let ((_%$e97871%_
                 (let ((__tmp100348
                        (lambda (_%$obj97868%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj97868%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp100348 _%direct-supers97835%_))))
            (if _%$e97871%_
                ((lambda (_%g9787397875%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g9787397875%_))
                 _%$e97871%_)
                (let ((_%$e97878%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final? _%direct-supers97835%_))))
                  (if _%$e97878%_
                      ((lambda (_%g9788097882%_)
                         (error '"Cannot extend final class" _%g9788097882%_))
                       _%$e97878%_)
                      '#!void))))
          (let ((_g100349_ (compute-precedence-list _%direct-supers97835%_)))
            (begin
              (let ((_g100350_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g100349_)
                           (##vector-length _g100349_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g100350_ 2)))
                    (error "Context expects 2 values" _g100350_)))
              (let ((_%precedence-list97885%_
                     (let () (declare (not safe)) (##vector-ref _g100349_ 0)))
                    (_%struct-super97886%_
                     (let () (declare (not safe)) (##vector-ref _g100349_ 1))))
                (let ((_g100351_
                       (compute-class-slots
                        _%precedence-list97885%_
                        _%direct-slots97843%_)))
                  (begin
                    (let ((_g100352_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g100351_)
                                 (##vector-length _g100351_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g100352_ 2)))
                          (error "Context expects 2 values" _g100352_)))
                    (let ((_%slot-vector97888%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g100351_ 0)))
                          (_%slot-table97889%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g100351_ 1))))
                      (let* ((_%properties97891%_
                              (cons (cons 'direct-slots: _%direct-slots97843%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers97835%_)
                                          _%properties97851%_)))
                             (_%constructor*97896%_
                              (let ((_%$e97893%_ _%constructor97859%_))
                                (if _%$e97893%_
                                    _%$e97893%_
                                    (find-super-constructor
                                     _%direct-supers97835%_))))
                             (_%precedence-list97939%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties97891%_))
                                      (memq object::t
                                            _%precedence-list97885%_))
                                  _%precedence-list97885%_
                                  (let _%loop97901%_ ((_%tail97903%_
                                                       _%precedence-list97885%_)
                                                      (_%head97904%_ '()))
                                    (let* ((_%tail9790597913%_ _%tail97903%_)
                                           (_%else9790797921%_
                                            (lambda ()
                                              (let ((__tmp100353
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp100353
                                                 _%head97904%_))))
                                           (_%K9790997927%_
                                            (lambda (_%rest97924%_ _%hd97925%_)
                                              (if (eq? _%hd97925%_ t::t)
                                                  (let ((__tmp100354
                                                         (cons object::t
                                                               _%tail97903%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp100354
                                                     _%head97904%_))
                                                  (_%loop97901%_
                                                   _%rest97924%_
                                                   (cons _%hd97925%_
                                                         _%head97904%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tail9790597913%_))
                                          (let ((_%hd9791097930%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail9790597913%_)))
                                                (_%tl9791197932%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail9790597913%_))))
                                            (let* ((_%hd97935%_
                                                    _%hd9791097930%_)
                                                   (_%rest97937%_
                                                    _%tl9791197932%_))
                                              (_%K9790997927%_
                                               _%rest97937%_
                                               _%hd97935%_)))
                                          (_%else9790797921%_)))))))
                        (make-class-type-descriptor
                         _%id97819%_
                         _%name97827%_
                         _%struct-super97886%_
                         _%precedence-list97939%_
                         _%slot-vector97888%_
                         _%properties97891%_
                         _%constructor*97896%_
                         _%slot-table97889%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass97797%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97797%_ 'class))
            (let ((_%klass97801%_ _%klass97797%_))
              (__class-precedence-list _%klass97801%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass97797%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass97785%_)
        (let ((_%klass97788%_ _%klass97785%_))
          (cons _%klass97788%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass97788%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers97782%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers97782%_))))
    (define make-class-predicate
      (lambda (_%klass97768%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97768%_ 'class))
            (let ((_%klass97772%_ _%klass97768%_))
              (__make-class-predicate _%klass97772%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass97768%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass97739%_)
        (let* ((_%klass97742%_ _%klass97739%_)
               (_%tid97751%_
                (let () (declare (not safe)) (##type-id _%klass97742%_))))
          (if (__class-type-final? _%klass97742%_)
              (lambda (_%g9775397755%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g9775397755%_
                   _%tid97751%_)))
              (if (__class-type-struct? _%klass97742%_)
                  (lambda (_%g9775897760%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%g9775897760%_ _%tid97751%_)))
                  (lambda (_%g9776397765%_)
                    (__class-instance? _%klass97742%_ _%g9776397765%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass97714%_ _%slot97715%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97714%_ 'class))
            (let ((_%klass97719%_ _%klass97714%_))
              (if (symbol? _%slot97715%_)
                  (let ((_%slot97729%_ _%slot97715%_))
                    (__make-class-slot-accessor _%klass97719%_ _%slot97729%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot97715%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass97714%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass97682%_ _%slot97683%_)
        (let* ((_%klass97686%_ _%klass97682%_)
               (_%slot97694%_ _%slot97683%_)
               (_%field97703%_
                (let ((__tmp100355
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass97686%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp100355 _%slot97694%_ '#f))))
          (if (not _%field97703%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass97686%_
                       'slot:
                       _%slot97694%_)
                '#!void)
              (if (__class-type-final? _%klass97686%_)
                  (make-final-slot-accessor
                   _%klass97686%_
                   _%slot97694%_
                   _%field97703%_)
                  (if (__class-type-struct? _%klass97686%_)
                      (make-struct-slot-accessor
                       _%klass97686%_
                       _%slot97694%_
                       _%field97703%_)
                      (if (let ((_%strukt97709%_
                                 (base-struct/1 _%klass97686%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt97709%_
                                    'class))
                                 (let ((__tmp100356
                                        (let ((__tmp100357
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt97709%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp100357))))
                                   (declare (not safe))
                                   (##fx< _%field97703%_ __tmp100356))))
                          (make-struct-subclass-slot-accessor
                           _%klass97686%_
                           _%slot97694%_
                           _%field97703%_)
                          (make-class-cached-slot-accessor
                           _%klass97686%_
                           _%slot97694%_
                           _%field97703%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass97657%_ _%slot97658%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97657%_ 'class))
            (let ((_%klass97662%_ _%klass97657%_))
              (if (symbol? _%slot97658%_)
                  (let ((_%slot97672%_ _%slot97658%_))
                    (__make-class-slot-mutator _%klass97662%_ _%slot97672%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot97658%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass97657%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass97625%_ _%slot97626%_)
        (let* ((_%klass97629%_ _%klass97625%_)
               (_%slot97637%_ _%slot97626%_)
               (_%field97646%_
                (let ((__tmp100358
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass97629%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp100358 _%slot97637%_ '#f))))
          (if (not _%field97646%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass97629%_
                       'slot:
                       _%slot97637%_)
                '#!void)
              (if (__class-type-final? _%klass97629%_)
                  (make-final-slot-mutator
                   _%klass97629%_
                   _%slot97637%_
                   _%field97646%_)
                  (if (__class-type-struct? _%klass97629%_)
                      (make-struct-slot-mutator
                       _%klass97629%_
                       _%slot97637%_
                       _%field97646%_)
                      (if (let ((_%strukt97652%_
                                 (base-struct/1 _%klass97629%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt97652%_
                                    'class))
                                 (let ((__tmp100359
                                        (let ((__tmp100360
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt97652%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp100360))))
                                   (declare (not safe))
                                   (##fx< _%field97646%_ __tmp100359))))
                          (make-struct-subclass-slot-mutator
                           _%klass97629%_
                           _%slot97637%_
                           _%field97646%_)
                          (make-class-cached-slot-mutator
                           _%klass97629%_
                           _%slot97637%_
                           _%field97646%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass97600%_ _%slot97601%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97600%_ 'class))
            (let ((_%klass97605%_ _%klass97600%_))
              (if (symbol? _%slot97601%_)
                  (let ((_%slot97615%_ _%slot97601%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass97605%_
                     _%slot97615%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot97601%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass97600%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass97568%_ _%slot97569%_)
        (let* ((_%klass97572%_ _%klass97568%_)
               (_%slot97580%_ _%slot97569%_)
               (_%field97589%_
                (let ((__tmp100361
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass97572%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp100361 _%slot97580%_ '#f))))
          (if (not _%field97589%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass97572%_
                       'slot:
                       _%slot97580%_)
                '#!void)
              (if (__class-type-final? _%klass97572%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass97572%_
                   _%slot97580%_
                   _%field97589%_)
                  (if (__class-type-struct? _%klass97572%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass97572%_
                       _%slot97580%_
                       _%field97589%_)
                      (if (let ((_%strukt97595%_
                                 (base-struct/1 _%klass97572%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt97595%_
                                    'class))
                                 (let ((__tmp100362
                                        (let ((__tmp100363
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt97595%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp100363))))
                                   (declare (not safe))
                                   (##fx< _%field97589%_ __tmp100362))))
                          (make-struct-slot-unchecked-accessor
                           _%klass97572%_
                           _%slot97580%_
                           _%field97589%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass97572%_
                           _%slot97580%_
                           _%field97589%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass97543%_ _%slot97544%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97543%_ 'class))
            (let ((_%klass97548%_ _%klass97543%_))
              (if (symbol? _%slot97544%_)
                  (let ((_%slot97558%_ _%slot97544%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass97548%_
                     _%slot97558%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot97544%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass97543%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass97511%_ _%slot97512%_)
        (let* ((_%klass97515%_ _%klass97511%_)
               (_%slot97523%_ _%slot97512%_)
               (_%field97532%_
                (let ((__tmp100364
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass97515%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp100364 _%slot97523%_ '#f))))
          (if (not _%field97532%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass97515%_
                       'slot:
                       _%slot97523%_)
                '#!void)
              (if (__class-type-final? _%klass97515%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass97515%_
                   _%slot97523%_
                   _%field97532%_)
                  (if (__class-type-struct? _%klass97515%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass97515%_
                       _%slot97523%_
                       _%field97532%_)
                      (if (let ((_%strukt97538%_
                                 (base-struct/1 _%klass97515%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt97538%_
                                    'class))
                                 (let ((__tmp100365
                                        (let ((__tmp100366
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt97538%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp100366))))
                                   (declare (not safe))
                                   (##fx< _%field97532%_ __tmp100365))))
                          (make-struct-slot-unchecked-mutator
                           _%klass97515%_
                           _%slot97523%_
                           _%field97532%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass97515%_
                           _%slot97523%_
                           _%field97532%_))))))))
    (define not-an-instance__%
      (lambda (_%object97495%_ _%class97496%_ _%slot97497%_)
        (apply error
               '"not an instance"
               'object:
               _%object97495%_
               'class:
               _%class97496%_
               (if _%slot97497%_ (cons 'slot: (cons _%slot97497%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object97502%_ _%class97503%_)
        (let ((_%slot97505%_ '#f))
          (not-an-instance__% _%object97502%_ _%class97503%_ _%slot97505%_))))
    (define not-an-instance
      (lambda _g100368_
        (let ((_g100367_ (let () (declare (not safe)) (##length _g100368_))))
          (cond ((let () (declare (not safe)) (##fx= _g100367_ 2))
                 (apply not-an-instance__0 _g100368_))
                ((let () (declare (not safe)) (##fx= _g100367_ 3))
                 (apply not-an-instance__% _g100368_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g100368_))))))
    (define make-final-slot-accessor
      (lambda (_%klass97488%_ _%slot97489%_ _%field97490%_)
        (lambda (_%obj97492%_)
          (##direct-structure-ref
           _%obj97492%_
           _%field97490%_
           _%klass97488%_
           _%slot97489%_))))
    (define make-final-slot-mutator
      (lambda (_%klass97481%_ _%slot97482%_ _%field97483%_)
        (lambda (_%obj97485%_ _%val97486%_)
          (##direct-structure-set!
           _%obj97485%_
           _%val97486%_
           _%field97483%_
           _%klass97481%_
           _%slot97482%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass97475%_ _%slot97476%_ _%field97477%_)
        (lambda (_%obj97479%_)
          (##structure-ref
           _%obj97479%_
           _%field97477%_
           _%klass97475%_
           _%slot97476%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass97468%_ _%slot97469%_ _%field97470%_)
        (lambda (_%obj97472%_ _%val97473%_)
          (##structure-set!
           _%obj97472%_
           _%val97473%_
           _%field97470%_
           _%klass97468%_
           _%slot97469%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass97462%_ _%slot97463%_ _%field97464%_)
        (lambda (_%obj97466%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj97466%_
             _%field97464%_
             _%klass97462%_
             _%slot97463%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass97455%_ _%slot97456%_ _%field97457%_)
        (lambda (_%obj97459%_ _%val97460%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj97459%_
             _%val97460%_
             _%field97457%_
             _%klass97455%_
             _%slot97456%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass97449%_ _%slot97450%_ _%field97451%_)
        (lambda (_%obj97453%_)
          (if (class-instance? _%klass97449%_ _%obj97453%_)
              (unchecked-slot-ref _%obj97453%_ _%field97451%_)
              (not-an-instance__%
               _%obj97453%_
               _%klass97449%_
               _%slot97450%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass97442%_ _%slot97443%_ _%field97444%_)
        (lambda (_%obj97446%_ _%val97447%_)
          (if (class-instance? _%klass97442%_ _%obj97446%_)
              (unchecked-field-set! _%obj97446%_ _%field97444%_ _%val97447%_)
              (not-an-instance__%
               _%obj97446%_
               _%klass97442%_
               _%slot97443%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass97433%_ _%slot97434%_ _%field97435%_)
        (lambda (_%obj97437%_)
          (if (let ((__tmp100369
                     (let () (declare (not safe)) (##type-id _%klass97433%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj97437%_ __tmp100369))
              (unchecked-field-ref _%obj97437%_ _%field97435%_)
              (if (class-instance? _%klass97433%_ _%obj97437%_)
                  (unchecked-slot-ref _%obj97437%_ _%slot97434%_)
                  (not-an-instance__%
                   _%obj97437%_
                   _%klass97433%_
                   _%slot97434%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass97423%_ _%slot97424%_ _%field97425%_)
        (lambda (_%obj97427%_ _%val97428%_)
          (if (let ((__tmp100370
                     (let () (declare (not safe)) (##type-id _%klass97423%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj97427%_ __tmp100370))
              (unchecked-field-set! _%obj97427%_ _%field97425%_ _%val97428%_)
              (if (class-instance? _%klass97423%_ _%obj97427%_)
                  (unchecked-slot-set! _%obj97427%_ _%slot97424%_ _%val97428%_)
                  (not-an-instance__%
                   _%obj97427%_
                   _%klass97423%_
                   _%slot97424%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass97417%_ _%slot97418%_ _%field97419%_)
        (lambda (_%obj97421%_)
          (if (let ((__tmp100371
                     (let () (declare (not safe)) (##type-id _%klass97417%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj97421%_ __tmp100371))
              (unchecked-field-ref _%obj97421%_ _%field97419%_)
              (unchecked-slot-ref _%obj97421%_ _%slot97418%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass97410%_ _%slot97411%_ _%field97412%_)
        (lambda (_%obj97414%_ _%val97415%_)
          (if (let ((__tmp100372
                     (let () (declare (not safe)) (##type-id _%klass97410%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj97414%_ __tmp100372))
              (unchecked-field-set! _%obj97414%_ _%field97412%_ _%val97415%_)
              (unchecked-slot-set! _%obj97414%_ _%slot97411%_ _%val97415%_)))))
    (define class-slot-offset
      (lambda (_%klass97385%_ _%slot97386%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97385%_ 'class))
            (let ((_%klass97390%_ _%klass97385%_))
              (if (let () (declare (not safe)) (symbolic? _%slot97386%_))
                  (let ((_%slot97400%_ _%slot97386%_))
                    (__class-slot-offset _%klass97390%_ _%slot97400%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot97386%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass97385%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass97364%_ _%slot97365%_)
        (let* ((_%klass97368%_ _%klass97364%_)
               (_%slot97376%_ _%slot97365%_)
               (__tmp100373
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass97368%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp100373 _%slot97376%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass97338%_ _%obj97339%_ _%slot97340%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97338%_ 'class))
            (let ((_%klass97344%_ _%klass97338%_))
              (if (let () (declare (not safe)) (symbolic? _%slot97340%_))
                  (let ((_%slot97354%_ _%slot97340%_))
                    (__class-slot-ref
                     _%klass97344%_
                     _%obj97339%_
                     _%slot97354%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot97340%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass97338%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass97314%_ _%obj97315%_ _%slot97316%_)
        (let* ((_%klass97319%_ _%klass97314%_) (_%slot97327%_ _%slot97316%_))
          (if (__class-instance? _%klass97319%_ _%obj97315%_)
              (let ((_%off97336%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj97315%_))
                      _%slot97327%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj97315%_
                 _%off97336%_
                 _%klass97319%_
                 _%slot97327%_))
              (not-an-instance__0 _%obj97315%_ _%klass97319%_)))))
    (define class-slot-set!
      (lambda (_%klass97287%_ _%obj97288%_ _%slot97289%_ _%val97290%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97287%_ 'class))
            (let ((_%klass97294%_ _%klass97287%_))
              (if (let () (declare (not safe)) (symbolic? _%slot97289%_))
                  (let ((_%slot97304%_ _%slot97289%_))
                    (__class-slot-set!
                     _%klass97294%_
                     _%obj97288%_
                     _%slot97304%_
                     _%val97290%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot97289%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass97287%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass97262%_ _%obj97263%_ _%slot97264%_ _%val97265%_)
        (let* ((_%klass97268%_ _%klass97262%_) (_%slot97276%_ _%slot97264%_))
          (if (__class-instance? _%klass97268%_ _%obj97263%_)
              (let ((_%off97285%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj97263%_))
                      _%slot97276%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj97263%_
                 _%val97265%_
                 _%off97285%_
                 _%klass97268%_
                 _%slot97276%_))
              (not-an-instance__0 _%obj97263%_ _%klass97268%_)))))
    (define unchecked-field-ref
      (lambda (_%obj97259%_ _%off97260%_)
        (let ((__tmp100374
               (let () (declare (not safe)) (##structure-type _%obj97259%_))))
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj97259%_
           _%off97260%_
           __tmp100374
           '#f))))
    (define unchecked-field-set!
      (lambda (_%obj97255%_ _%off97256%_ _%val97257%_)
        (let ((__tmp100375
               (let () (declare (not safe)) (##structure-type _%obj97255%_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj97255%_
           _%val97257%_
           _%off97256%_
           __tmp100375
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj97252%_ _%slot97253%_)
        (unchecked-field-ref
         _%obj97252%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj97252%_))
          _%slot97253%_))))
    (define unchecked-slot-set!
      (lambda (_%obj97248%_ _%slot97249%_ _%val97250%_)
        (unchecked-field-set!
         _%obj97248%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj97248%_))
          _%slot97249%_)
         _%val97250%_)))
    (define slot-ref__%
      (lambda (_%obj97210%_ _%slot97211%_ _%E97212%_)
        (if (symbol? _%slot97211%_)
            (let ((_%slot97216%_ _%slot97211%_))
              (if (procedure? _%E97212%_)
                  (let ((_%E97226%_ _%E97212%_))
                    (__slot-ref__% _%obj97210%_ _%slot97216%_ _%E97226%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E97212%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot97211%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj97239%_ _%slot97240%_)
        (let ((_%E97242%_ __slot-error))
          (slot-ref__% _%obj97239%_ _%slot97240%_ _%E97242%_))))
    (define slot-ref
      (lambda _g100377_
        (let ((_g100376_ (let () (declare (not safe)) (##length _g100377_))))
          (cond ((let () (declare (not safe)) (##fx= _g100376_ 2))
                 (apply slot-ref__0 _g100377_))
                ((let () (declare (not safe)) (##fx= _g100376_ 3))
                 (apply slot-ref__% _g100377_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g100377_))))))
    (define __slot-ref__%
      (lambda (_%obj97166%_ _%slot97167%_ _%E97168%_)
        (let* ((_%slot97171%_ _%slot97167%_)
               (_%E97179%_ _%E97168%_)
               (_%klass97188%_ (class-of _%obj97166%_))
               (_%$e97191%_
                (__class-slot-offset _%klass97188%_ _%slot97171%_)))
          (if _%$e97191%_
              ((lambda (_%off97194%_)
                 (unchecked-field-ref _%obj97166%_ _%off97194%_))
               _%$e97191%_)
              (let ()
                (declare (not safe))
                (_%E97179%_ _%obj97166%_ _%slot97171%_))))))
    (define __slot-ref__0
      (lambda (_%obj97200%_ _%slot97201%_)
        (let ((_%E97203%_ __slot-error))
          (__slot-ref__% _%obj97200%_ _%slot97201%_ _%E97203%_))))
    (define __slot-ref
      (lambda _g100379_
        (let ((_g100378_ (let () (declare (not safe)) (##length _g100379_))))
          (cond ((let () (declare (not safe)) (##fx= _g100378_ 2))
                 (apply __slot-ref__0 _g100379_))
                ((let () (declare (not safe)) (##fx= _g100378_ 3))
                 (apply __slot-ref__% _g100379_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g100379_))))))
    (define slot-set!__%
      (lambda (_%obj97124%_ _%slot97125%_ _%val97126%_ _%E97127%_)
        (if (symbol? _%slot97125%_)
            (let ((_%slot97131%_ _%slot97125%_))
              (if (procedure? _%E97127%_)
                  (let ((_%E97141%_ _%E97127%_))
                    (__slot-set!__%
                     _%obj97124%_
                     _%slot97131%_
                     _%val97126%_
                     _%E97141%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E97127%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot97125%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj97154%_ _%slot97155%_ _%val97156%_)
        (let ((_%E97158%_ __slot-error))
          (slot-set!__% _%obj97154%_ _%slot97155%_ _%val97156%_ _%E97158%_))))
    (define slot-set!
      (lambda _g100381_
        (let ((_g100380_ (let () (declare (not safe)) (##length _g100381_))))
          (cond ((let () (declare (not safe)) (##fx= _g100380_ 3))
                 (apply slot-set!__0 _g100381_))
                ((let () (declare (not safe)) (##fx= _g100380_ 4))
                 (apply slot-set!__% _g100381_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g100381_))))))
    (define __slot-set!__%
      (lambda (_%obj97077%_ _%slot97078%_ _%val97079%_ _%E97080%_)
        (let* ((_%slot97083%_ _%slot97078%_)
               (_%E97091%_ _%E97080%_)
               (_%klass97100%_ (class-of _%obj97077%_))
               (_%$e97103%_
                (__class-slot-offset _%klass97100%_ _%slot97083%_)))
          (if _%$e97103%_
              ((lambda (_%off97106%_)
                 (unchecked-field-set! _%obj97077%_ _%off97106%_ _%val97079%_))
               _%$e97103%_)
              (let ()
                (declare (not safe))
                (_%E97091%_ _%obj97077%_ _%slot97083%_))))))
    (define __slot-set!__0
      (lambda (_%obj97112%_ _%slot97113%_ _%val97114%_)
        (let ((_%E97116%_ __slot-error))
          (__slot-set!__%
           _%obj97112%_
           _%slot97113%_
           _%val97114%_
           _%E97116%_))))
    (define __slot-set!
      (lambda _g100383_
        (let ((_g100382_ (let () (declare (not safe)) (##length _g100383_))))
          (cond ((let () (declare (not safe)) (##fx= _g100382_ 3))
                 (apply __slot-set!__0 _g100383_))
                ((let () (declare (not safe)) (##fx= _g100382_ 4))
                 (apply __slot-set!__% _g100383_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g100383_))))))
    (define __slot-error
      (lambda (_%obj97073%_ _%slot97074%_)
        (error '"Cannot find slot"
               'object:
               _%obj97073%_
               'slot:
               _%slot97074%_)))
    (define subclass?
      (lambda (_%maybe-sub-class97048%_ _%maybe-super-class97049%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class97048%_ 'class))
            (let ((_%maybe-sub-class97053%_ _%maybe-sub-class97048%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class97049%_
                     'class))
                  (let ((_%maybe-super-class97063%_
                         _%maybe-super-class97049%_))
                    (__subclass?
                     _%maybe-sub-class97053%_
                     _%maybe-super-class97063%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class97049%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class97048%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class97020%_ _%maybe-super-class97021%_)
        (let* ((_%maybe-sub-class97024%_ _%maybe-sub-class97020%_)
               (_%maybe-super-class97032%_ _%maybe-super-class97021%_)
               (_%maybe-super-class-id97041%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class97032%_)))
               (_%$e97043%_
                (eq? _%maybe-super-class-id97041%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class97024%_)))))
          (if _%$e97043%_
              _%$e97043%_
              (let ((__tmp100385
                     (lambda (_%super-class97046%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class97046%_))
                            _%maybe-super-class-id97041%_)))
                    (__tmp100384
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class97024%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp100385 __tmp100384))))))
    (define object?
      (lambda (_%o97017%_)
        (if (let () (declare (not safe)) (##structure? _%o97017%_))
            (let ((__tmp100386
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o97017%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp100386 'class))
            '#f)))
    (define object-type
      (lambda (_%o97012%_)
        (if (let () (declare (not safe)) (##structure? _%o97012%_))
            (let ((_%klass97015%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o97012%_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass97015%_ 'class))
                  _%klass97015%_
                  (begin
                    (error '"not an object" _%o97012%_ _%klass97015%_)
                    '#!void)))
            (begin (error '"not an object" _%o97012%_) '#!void))))
    (define direct-instance?
      (lambda (_%klass96997%_ _%obj96998%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96997%_ 'class))
            (let ((_%klass97002%_ _%klass96997%_))
              (__direct-instance? _%klass97002%_ _%obj96998%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass96997%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass96984%_ _%obj96985%_)
        (let* ((_%klass96988%_ _%klass96984%_)
               (__tmp100387
                (let () (declare (not safe)) (##type-id _%klass96988%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj96985%_ __tmp100387))))
    (define immediate-instance-of?
      (lambda (_%klass96980%_ _%obj96981%_)
        (if (let () (declare (not safe)) (##structure? _%obj96981%_))
            (eq? _%klass96980%_
                 (let () (declare (not safe)) (##structure-type _%obj96981%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass96965%_ _%obj96966%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96965%_ 'class))
            (let ((_%klass96970%_ _%klass96965%_))
              (__struct-instance? _%klass96970%_ _%obj96966%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass96965%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass96952%_ _%obj96953%_)
        (let* ((_%klass96956%_ _%klass96952%_)
               (__tmp100388
                (let () (declare (not safe)) (##type-id _%klass96956%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj96953%_ __tmp100388))))
    (define class-instance?
      (lambda (_%klass96937%_ _%obj96938%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96937%_ 'class))
            (let ((_%klass96942%_ _%klass96937%_))
              (__class-instance? _%klass96942%_ _%obj96938%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass96937%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass96922%_ _%obj96923%_)
        (let* ((_%klass96926%_ _%klass96922%_)
               (_%type96935%_ (class-of _%obj96923%_)))
          (__subclass? _%type96935%_ _%klass96926%_))))
    (define make-object
      (lambda (_%klass96897%_ _%k96898%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96897%_ 'class))
            (let ((_%klass96902%_ _%klass96897%_))
              (if (fixnum? _%k96898%_)
                  (let ((_%k96912%_ _%k96898%_))
                    (__make-object _%klass96902%_ _%k96912%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k96898%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass96897%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass96874%_ _%k96875%_)
        (let* ((_%klass96878%_ _%klass96874%_) (_%k96886%_ _%k96875%_))
          (if (__class-type-system? _%klass96878%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass96878%_)
                '#!void)
              (let ((_%obj96895%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass96878%_ _%k96886%_))))
                (object-fill! _%obj96895%_ '#f))))))
    (define object-fill!
      (lambda (_%obj96859%_ _%fill96860%_)
        (if '#t
            (let ((_%obj96864%_ _%obj96859%_))
              (__object-fill! _%obj96864%_ _%fill96860%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj96859%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj96841%_ _%fill96842%_)
        (let ((_%obj96845%_ _%obj96841%_))
          (let _%loop96854%_ ((_%i96856%_
                               (let ((__tmp100389
                                      (let ()
                                        (declare (not safe))
                                        (##structure-length _%obj96845%_))))
                                 (declare (not safe))
                                 (##fx- __tmp100389 '1))))
            (if (let () (declare (not safe)) (##fx> _%i96856%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj96845%_
                     _%fill96842%_
                     _%i96856%_
                     '#f
                     '#f))
                  (_%loop96854%_
                   (let () (declare (not safe)) (##fx- _%i96856%_ '1))))
                _%obj96845%_)))))
    (define new-instance
      (lambda (_%klass96827%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96827%_ 'class))
            (let ((_%klass96831%_ _%klass96827%_))
              (__new-instance _%klass96831%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass96827%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass96815%_)
        (let* ((_%klass96818%_ _%klass96815%_)
               (__obj100304
                (let ((__tmp100390
                       (let ((__tmp100391
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass96818%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp100391))))
                  (declare (not safe))
                  (##make-structure _%klass96818%_ __tmp100390))))
          (object-fill! __obj100304 '#f)
          __obj100304)))
    (define make-instance
      (lambda (_%klass96800%_ . _%args96801%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96800%_ 'class))
            (let ((_%klass96805%_ _%klass96800%_))
              (declare (not safe))
              (##apply __make-instance _%klass96805%_ _%args96801%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass96800%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass96772%_ . _%args96773%_)
        (let* ((_%klass96776%_ _%klass96772%_)
               (_%$e96785%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass96776%_ '10 '#f '#f))))
          (if _%$e96785%_
              ((lambda (_%kons-id96788%_)
                 (let ((_%obj96790%_ (__new-instance _%klass96776%_)))
                   (___constructor-init!
                    _%klass96776%_
                    _%kons-id96788%_
                    _%obj96790%_
                    _%args96773%_)
                   _%obj96790%_))
               _%$e96785%_)
              (if (__class-type-metaclass? _%klass96776%_)
                  (let ((_%obj96793%_ (__new-instance _%klass96776%_)))
                    (__metaclass-instance-init!
                     _%klass96776%_
                     _%obj96793%_
                     _%args96773%_)
                    _%obj96793%_)
                  (if (__class-type-struct? _%klass96776%_)
                      (if (let ((__tmp100393
                                 (__class-type-field-count _%klass96776%_))
                                (__tmp100392
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args96773%_))))
                            (declare (not safe))
                            (##fx= __tmp100393 __tmp100392))
                          (apply ##structure _%klass96776%_ _%args96773%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass96776%_
                                   'slots:
                                   (__class-type-slot-list _%klass96776%_)
                                   'args:
                                   _%args96773%_)
                            '#!void))
                      (let ((_%obj96796%_ (__new-instance _%klass96776%_)))
                        (___class-instance-init!
                         _%klass96776%_
                         _%obj96796%_
                         _%args96773%_)
                        _%obj96796%_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj96757%_ . _%args96758%_)
        (if '#t
            (let ((_%obj96762%_ _%obj96757%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj96762%_ _%args96758%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj96757%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj96744%_ . _%args96745%_)
        (let ((_%obj96748%_ _%obj96744%_))
          (if (let ((__tmp100395
                     (let () (declare (not safe)) (##length _%args96745%_)))
                    (__tmp100394
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj96748%_))))
                (declare (not safe))
                (##fx< __tmp100395 __tmp100394))
              (___struct-instance-init! _%obj96748%_ _%args96745%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj96748%_
                     'args:
                     _%args96745%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj96703%_ _%args96704%_)
        (let _%lp96706%_ ((_%k96708%_ '1) (_%rest96709%_ _%args96704%_))
          (let* ((_%rest9671096718%_ _%rest96709%_)
                 (_%else9671296726%_ (lambda () _%obj96703%_))
                 (_%K9671496732%_
                  (lambda (_%rest96729%_ _%hd96730%_)
                    (unchecked-field-set! _%obj96703%_ _%k96708%_ _%hd96730%_)
                    (_%lp96706%_
                     (let () (declare (not safe)) (##fx+ _%k96708%_ '1))
                     _%rest96729%_))))
            (if (let () (declare (not safe)) (##pair? _%rest9671096718%_))
                (let ((_%hd9671596735%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9671096718%_)))
                      (_%tl9671696737%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9671096718%_))))
                  (let* ((_%hd96740%_ _%hd9671596735%_)
                         (_%rest96742%_ _%tl9671696737%_))
                    (_%K9671496732%_ _%rest96742%_ _%hd96740%_)))
                (_%else9671296726%_))))))
    (define class-instance-init!
      (lambda (_%obj96688%_ . _%args96689%_)
        (if '#t
            (let ((_%obj96693%_ _%obj96688%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj96693%_ _%args96689%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj96688%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj96675%_ . _%args96676%_)
        (let ((_%obj96679%_ _%obj96675%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj96679%_))
           _%obj96679%_
           _%args96676%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass96617%_ _%obj96618%_ _%args96619%_)
        (let _%lp96621%_ ((_%rest96623%_ _%args96619%_))
          (let* ((_%rest9662496634%_ _%rest96623%_)
                 (_%else9662696642%_
                  (lambda ()
                    (if (null? _%rest96623%_)
                        _%obj96618%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass96617%_
                               'rest:
                               _%rest96623%_))))
                 (_%K9662896656%_
                  (lambda (_%rest96645%_ _%val96646%_ _%key96647%_)
                    (if (keyword? _%key96647%_)
                        (let ((_%$e96650%_
                               (__class-slot-offset
                                _%klass96617%_
                                _%key96647%_)))
                          (if _%$e96650%_
                              ((lambda (_%off96653%_)
                                 (unchecked-field-set!
                                  _%obj96618%_
                                  _%off96653%_
                                  _%val96646%_)
                                 (_%lp96621%_ _%rest96645%_))
                               _%$e96650%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass96617%_
                                     'slot:
                                     _%key96647%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key96647%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest9662496634%_))
                (let ((_%hd9662996659%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9662496634%_)))
                      (_%tl9663096661%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9662496634%_))))
                  (let ((_%key96664%_ _%hd9662996659%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9663096661%_))
                        (let ((_%hd9663196666%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9663096661%_)))
                              (_%tl9663296668%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9663096661%_))))
                          (let* ((_%val96671%_ _%hd9663196666%_)
                                 (_%rest96673%_ _%tl9663296668%_))
                            (_%K9662896656%_
                             _%rest96673%_
                             _%val96671%_
                             _%key96664%_)))
                        (_%else9662696642%_))))
                (_%else9662696642%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass96613%_ _%obj96614%_ _%args96615%_)
        (apply call-method
               _%klass96613%_
               'instance-init!
               _%obj96614%_
               _%args96615%_)))
    (define constructor-init!
      (lambda (_%klass96576%_ _%kons-id96577%_ _%obj96578%_ . _%args96579%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96576%_ 'class))
            (let ((_%klass96583%_ _%klass96576%_))
              (if (symbol? _%kons-id96577%_)
                  (let ((_%kons-id96593%_ _%kons-id96577%_))
                    (if '#t
                        (let ((_%obj96603%_ _%obj96578%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass96583%_
                                   _%kons-id96593%_
                                   _%obj96603%_
                                   _%args96579%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                           'contract:
                           'true
                           'value:
                           _%obj96578%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id96577%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass96576%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass96545%_ _%kons-id96546%_ _%obj96547%_ . _%args96548%_)
        (let* ((_%klass96551%_ _%klass96545%_)
               (_%kons-id96559%_ _%kons-id96546%_)
               (_%obj96567%_ _%obj96547%_))
          (___constructor-init!
           _%klass96551%_
           _%kons-id96559%_
           _%obj96567%_
           _%args96548%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass96534%_ _%kons-id96535%_ _%obj96536%_ _%args96537%_)
        (let ((_%$e96539%_
               (__find-method _%klass96534%_ _%obj96536%_ _%kons-id96535%_)))
          (if _%$e96539%_
              ((lambda (_%kons96542%_)
                 (apply _%kons96542%_ _%obj96536%_ _%args96537%_)
                 _%obj96536%_)
               _%$e96539%_)
              (error '"missing constructor"
                     'class:
                     _%klass96534%_
                     'method:
                     _%kons-id96535%_)))))
    (define struct-copy
      (lambda (_%struct96520%_)
        (if '#t
            (let ((_%struct96524%_ _%struct96520%_))
              (__struct-copy _%struct96524%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct96520%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct96508%_)
        (let ((_%struct96511%_ _%struct96508%_))
          (declare (not safe))
          (##structure-copy _%struct96511%_))))
    (define struct->list
      (lambda (_%obj96494%_)
        (if '#t
            (let ((_%obj96498%_ _%obj96494%_)) (__struct->list _%obj96498%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj96494%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj96482%_)
        (let ((_%obj96485%_ _%obj96482%_))
          (declare (not safe))
          (##vector->list _%obj96485%_))))
    (define class->list
      (lambda (_%obj96468%_)
        (if '#t
            (let ((_%obj96472%_ _%obj96468%_)) (__class->list _%obj96472%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@837.20-837.23"
               'contract:
               'true
               'value:
               _%obj96468%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj96444%_)
        (let* ((_%obj96447%_ _%obj96444%_)
               (_%klass96456%_
                (let () (declare (not safe)) (##structure-type _%obj96447%_)))
               (_%slot-vector96458%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass96456%_ '7 '#f '#f))))
          (let _%loop96460%_ ((_%index96462%_
                               (let ((__tmp100396
                                      (let ()
                                        (declare (not safe))
                                        (##vector-length
                                         _%slot-vector96458%_))))
                                 (declare (not safe))
                                 (##fx- __tmp100396 '1)))
                              (_%plist96463%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index96462%_ '1))
                (cons _%klass96456%_ _%plist96463%_)
                (let ((_%slot96466%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%slot-vector96458%_ _%index96462%_))))
                  (_%loop96460%_
                   (let () (declare (not safe)) (##fx- _%index96462%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot96466%_))
                         (cons (unchecked-field-ref
                                _%obj96447%_
                                _%index96462%_)
                               _%plist96463%_)))))))))
    (define call-method
      (lambda (_%obj96428%_ _%id96429%_ . _%args96430%_)
        (if (symbol? _%id96429%_)
            (let ((_%id96434%_ _%id96429%_))
              (declare (not safe))
              (##apply __call-method _%obj96428%_ _%id96434%_ _%args96430%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.24-852.26"
               'contract:
               'symbol?
               'value:
               _%id96429%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj96397%_ _%id96398%_ . _%args96399%_)
        (let* ((_%id96402%_ _%id96398%_)
               (_%$e96411%_ (__method-ref _%obj96397%_ _%id96402%_)))
          (if _%$e96411%_
              ((lambda (_%method96414%_)
                 (let ((_%method96416%_ _%method96414%_))
                   (apply _%method96416%_ _%obj96397%_ _%args96399%_)))
               _%$e96411%_)
              (error '"cannot find method"
                     'object:
                     _%obj96397%_
                     'method:
                     _%id96402%_)))))
    (define method-ref
      (lambda (_%obj96382%_ _%id96383%_)
        (if (symbol? _%id96383%_)
            (let ((_%id96387%_ _%id96383%_))
              (__method-ref _%obj96382%_ _%id96387%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@879.23-879.25"
               'contract:
               'symbol?
               'value:
               _%id96383%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj96369%_ _%id96370%_)
        (let ((_%id96373%_ _%id96370%_))
          (__find-method (class-of _%obj96369%_) _%obj96369%_ _%id96373%_))))
    (define checked-method-ref
      (lambda (_%obj96362%_ _%id96363%_)
        (let ((_%$e96366%_ (method-ref _%obj96362%_ _%id96363%_)))
          (if _%$e96366%_
              _%$e96366%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj96362%_
                       'method:
                       _%id96363%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj96347%_ _%id96348%_)
        (if (symbol? _%id96348%_)
            (let ((_%id96352%_ _%id96348%_))
              (__bound-method-ref _%obj96347%_ _%id96352%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@887.29-887.31"
               'contract:
               'symbol?
               'value:
               _%id96348%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj96315%_ _%id96316%_)
        (let* ((_%id96319%_ _%id96316%_)
               (_%$e96328%_ (__method-ref _%obj96315%_ _%id96319%_)))
          (if _%$e96328%_
              ((lambda (_%method96331%_)
                 (let ((_%method96333%_ _%method96331%_))
                   (lambda _%args96344%_
                     (apply _%method96333%_ _%obj96315%_ _%args96344%_))))
               _%$e96328%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj96300%_ _%id96301%_)
        (if (symbol? _%id96301%_)
            (let ((_%id96305%_ _%id96301%_))
              (__checked-bound-method-ref _%obj96300%_ _%id96305%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@896.37-896.39"
               'contract:
               'symbol?
               'value:
               _%id96301%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj96283%_ _%id96284%_)
        (let* ((_%id96287%_ _%id96284%_)
               (_%method96296%_ (checked-method-ref _%obj96283%_ _%id96287%_)))
          (lambda _%args96298%_
            (apply _%method96296%_ _%obj96283%_ _%args96298%_)))))
    (define find-method
      (lambda (_%klass96257%_ _%obj96258%_ _%id96259%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96257%_ 'class))
            (let ((_%klass96263%_ _%klass96257%_))
              (if (symbol? _%id96259%_)
                  (let ((_%id96273%_ _%id96259%_))
                    (__find-method _%klass96263%_ _%obj96258%_ _%id96273%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@901.41-901.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id96259%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@901.20-901.25"
               'contract:
               'class-type?
               'value:
               _%klass96257%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass96230%_ _%obj96231%_ _%id96232%_)
        (let* ((_%klass96235%_ _%klass96230%_)
               (_%id96243%_ _%id96232%_)
               (_%$e96252%_
                (__direct-method-ref _%klass96235%_ _%obj96231%_ _%id96243%_)))
          (if _%$e96252%_
              _%$e96252%_
              (if (__class-type-sealed? _%klass96235%_)
                  '#f
                  (__mixin-method-ref
                   _%klass96235%_
                   _%obj96231%_
                   _%id96243%_))))))
    (define mixin-find-method
      (lambda (_%mixins96214%_ _%obj96215%_ _%id96216%_)
        (if (symbol? _%id96216%_)
            (let ((_%id96220%_ _%id96216%_))
              (__mixin-find-method _%mixins96214%_ _%obj96215%_ _%id96220%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@909.37-909.39"
               'contract:
               'symbol?
               'value:
               _%id96216%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins96196%_ _%obj96197%_ _%id96198%_)
        (let* ((_%id96201%_ _%id96198%_)
               (__tmp100397
                (lambda (_%g9620996211%_)
                  (direct-method-ref
                   _%g9620996211%_
                   _%obj96197%_
                   _%id96201%_))))
          (declare (not safe))
          (__ormap1 __tmp100397 _%mixins96196%_))))
    (define direct-method-ref
      (lambda (_%klass96170%_ _%obj96171%_ _%id96172%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96170%_ 'class))
            (let ((_%klass96176%_ _%klass96170%_))
              (if (symbol? _%id96172%_)
                  (let ((_%id96186%_ _%id96172%_))
                    (__direct-method-ref
                     _%klass96176%_
                     _%obj96171%_
                     _%id96186%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@912.47-912.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id96172%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@912.26-912.31"
               'contract:
               'class-type?
               'value:
               _%klass96170%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass96124%_ _%obj96125%_ _%id96126%_)
        (let* ((_%klass96129%_ _%klass96124%_) (_%id96137%_ _%id96126%_))
          (letrec ((_%metaclass-resolve-method96146%_
                    (lambda ()
                      (let ((__method100305
                             (__method-ref _%klass96129%_ 'direct-method-ref)))
                        (if __method100305
                            (let ()
                              (declare (not safe))
                              (__method100305
                               _%klass96129%_
                               _%obj96125%_
                               _%id96137%_))
                            (begin
                              (error '"Missing method"
                                     _%klass96129%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!96147%_
                    (lambda ()
                      (let ((_%method96167%_
                             (_%metaclass-resolve-method96146%_)))
                        (let ((__tmp100399
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass96129%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp100398
                               (if _%method96167%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp100399
                           _%id96137%_
                           __tmp100398))
                        _%method96167%_))))
            (let ((_%$e96149%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass96129%_ '11 '#f '#f))))
              (if _%$e96149%_
                  ((lambda (_%ht96152%_)
                     (let ((_%method96154%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht96152%_
                               _%id96137%_
                               '#f))))
                       (if (procedure? _%method96154%_)
                           _%method96154%_
                           (if (__class-type-metaclass? _%klass96129%_)
                               (let ((_%$e96158%_ _%method96154%_))
                                 (if (eq? 'resolved _%$e96158%_)
                                     (_%metaclass-resolve-method96146%_)
                                     (if (eq? 'unknown _%$e96158%_)
                                         '#f
                                         (_%metaclass-resolve-method!96147%_))))
                               '#f))))
                   _%$e96149%_)
                  (if (__class-type-metaclass? _%klass96129%_)
                      (let ((_%tab96163%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass96129%_
                           _%tab96163%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!96147%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass96098%_ _%obj96099%_ _%id96100%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96098%_ 'class))
            (let ((_%klass96104%_ _%klass96098%_))
              (if (symbol? _%id96100%_)
                  (let ((_%id96114%_ _%id96100%_))
                    (__mixin-method-ref
                     _%klass96104%_
                     _%obj96099%_
                     _%id96114%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@942.46-942.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id96100%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@942.25-942.30"
               'contract:
               'class-type?
               'value:
               _%klass96098%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass96076%_ _%obj96077%_ _%id96078%_)
        (let* ((_%klass96081%_ _%klass96076%_) (_%id96089%_ _%id96078%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass96081%_ '6 '#f '#f))
           _%obj96077%_
           _%id96089%_))))
    (define bind-method!__%
      (lambda (_%klass96035%_ _%id96036%_ _%proc96037%_ _%rebind?96038%_)
        (if (symbol? _%id96036%_)
            (let ((_%id96042%_ _%id96036%_))
              (if (procedure? _%proc96037%_)
                  (let ((_%proc96052%_ _%proc96037%_))
                    (__bind-method!__%
                     _%klass96035%_
                     _%id96042%_
                     _%proc96052%_
                     _%rebind?96038%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@945.42-945.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc96037%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@945.27-945.29"
               'contract:
               'symbol?
               'value:
               _%id96036%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass96065%_ _%id96066%_ _%proc96067%_)
        (let ((_%rebind?96069%_ '#f))
          (bind-method!__%
           _%klass96065%_
           _%id96066%_
           _%proc96067%_
           _%rebind?96069%_))))
    (define bind-method!
      (lambda _g100401_
        (let ((_g100400_ (let () (declare (not safe)) (##length _g100401_))))
          (cond ((let () (declare (not safe)) (##fx= _g100400_ 3))
                 (apply bind-method!__0 _g100401_))
                ((let () (declare (not safe)) (##fx= _g100400_ 4))
                 (apply bind-method!__% _g100401_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g100401_))))))
    (define __bind-method!__%
      (lambda (_%klass95986%_ _%id95987%_ _%proc95988%_ _%rebind?95989%_)
        (let* ((_%id95992%_ _%id95987%_) (_%proc96000%_ _%proc95988%_))
          (letrec ((_%bind!96009%_
                    (lambda (_%ht96018%_)
                      (if (and (not _%rebind?95989%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht96018%_
                                  _%id95992%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass95986%_
                                 'method:
                                 _%id95992%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht96018%_
                               _%id95992%_
                               _%proc96000%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass95986%_ 'class))
                (let ((_%ht96012%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass95986%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht96012%_
                      (_%bind!96009%_ _%ht96012%_)
                      (let ((_%ht96014%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass95986%_
                           _%ht96014%_
                           '11
                           '#f
                           '#f))
                        (_%bind!96009%_ _%ht96014%_))))
                (if (let () (declare (not safe)) (##type? _%klass95986%_))
                    (__bind-method!__%
                     (__shadow-class _%klass95986%_)
                     _%id95992%_
                     _%proc96000%_
                     _%rebind?95989%_)
                    (error '"bad class; expected class or builtin type"
                           _%klass95986%_)))))))
    (define __bind-method!__0
      (lambda (_%klass96023%_ _%id96024%_ _%proc96025%_)
        (let ((_%rebind?96027%_ '#f))
          (__bind-method!__%
           _%klass96023%_
           _%id96024%_
           _%proc96025%_
           _%rebind?96027%_))))
    (define __bind-method!
      (lambda _g100403_
        (let ((_g100402_ (let () (declare (not safe)) (##length _g100403_))))
          (cond ((let () (declare (not safe)) (##fx= _g100402_ 3))
                 (apply __bind-method!__0 _g100403_))
                ((let () (declare (not safe)) (##fx= _g100402_ 4))
                 (apply __bind-method!__% _g100403_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g100403_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint95966%_ _%seed95968%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint95966%_
           procedure-hash
           eq?
           _%seed95968%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint95974%_ '#f) (_%seed95976%_ '0))
          (make-method-specializer-table__%
           _%size-hint95974%_
           _%seed95976%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint95978%_)
        (let ((_%seed95980%_ '0))
          (make-method-specializer-table__%
           _%size-hint95978%_
           _%seed95980%_))))
    (define make-method-specializer-table
      (lambda _g100405_
        (let ((_g100404_ (let () (declare (not safe)) (##length _g100405_))))
          (cond ((let () (declare (not safe)) (##fx= _g100404_ 0))
                 (apply make-method-specializer-table__0 _g100405_))
                ((let () (declare (not safe)) (##fx= _g100404_ 1))
                 (apply make-method-specializer-table__1 _g100405_))
                ((let () (declare (not safe)) (##fx= _g100404_ 2))
                 (apply make-method-specializer-table__% _g100405_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g100405_))))))
    (define method-specializer-table-ref
      (lambda (_%tab95919%_ _%key95920%_ _%default95921%_)
        (let ((_%table95923%_
               (let () (declare (not safe)) (&raw-table-table _%tab95919%_)))
              (_%seed95924%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95919%_))))
          (let* ((_%h95926%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key95920%_))
                         _%seed95924%_))
                 (_%size95929%_ (vector-length _%table95923%_))
                 (_%entries95932%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95929%_ '2)))
                 (_%start95935%_
                  (let ((__tmp100406
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95926%_ _%entries95932%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100406 '1))))
            (let _%loop95939%_ ((_%probe95942%_ _%start95935%_)
                                (_%i95944%_ '1)
                                (_%deleted95946%_ '#f))
              (let ((_%k95949%_ (vector-ref _%table95923%_ _%probe95942%_)))
                (if (eq? _%k95949%_ (macro-unused-obj))
                    _%default95921%_
                    (if (eq? _%k95949%_ (macro-deleted-obj))
                        (_%loop95939%_
                         (let ((_%next-probe95954%_
                                (fx+ _%start95935%_
                                     _%i95944%_
                                     (fx* _%i95944%_ _%i95944%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95954%_ _%size95929%_))
                         (let () (declare (not safe)) (##fx+ _%i95944%_ '1))
                         (let ((_%$e95957%_ _%deleted95946%_))
                           (if _%$e95957%_ _%$e95957%_ _%probe95942%_)))
                        (if (eq? _%key95920%_ _%k95949%_)
                            (vector-ref
                             _%table95923%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe95942%_ '1)))
                            (_%loop95939%_
                             (let ((_%next-probe95962%_
                                    (fx+ _%start95935%_
                                         _%i95944%_
                                         (fx* _%i95944%_ _%i95944%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95962%_ _%size95929%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95944%_ '1))
                             _%deleted95946%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab95915%_ _%key95916%_ _%value95917%_)
        (if (let ((__tmp100409
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab95915%_)))
                  (__tmp100407
                   (let ((__tmp100408
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab95915%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp100408 '4))))
              (declare (not safe))
              (##fx< __tmp100409 __tmp100407))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab95915%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab95915%_
         _%key95916%_
         _%value95917%_)))
    (define __method-specializer-table-set!
      (lambda (_%tab95866%_ _%key95867%_ _%value95868%_)
        (let ((_%table95871%_
               (let () (declare (not safe)) (&raw-table-table _%tab95866%_)))
              (_%seed95872%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95866%_))))
          (let* ((_%h95874%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key95867%_))
                         _%seed95872%_))
                 (_%size95877%_ (vector-length _%table95871%_))
                 (_%entries95880%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95877%_ '2)))
                 (_%start95883%_
                  (let ((__tmp100410
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95874%_ _%entries95880%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100410 '1))))
            (let _%loop95887%_ ((_%probe95890%_ _%start95883%_)
                                (_%i95892%_ '1)
                                (_%deleted95894%_ '#f))
              (let ((_%k95897%_ (vector-ref _%table95871%_ _%probe95890%_)))
                (if (eq? _%k95897%_ (macro-unused-obj))
                    (if _%deleted95894%_
                        (begin
                          (vector-set!
                           _%table95871%_
                           _%deleted95894%_
                           _%key95867%_)
                          (vector-set!
                           _%table95871%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted95894%_ '1))
                           _%value95868%_)
                          ((lambda ()
                             (let ((__tmp100411
                                    (let ((__tmp100412
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95866%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100412 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95866%_
                                __tmp100411)))))
                        (begin
                          (vector-set!
                           _%table95871%_
                           _%probe95890%_
                           _%key95867%_)
                          (vector-set!
                           _%table95871%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe95890%_ '1))
                           _%value95868%_)
                          ((lambda ()
                             (let ((__tmp100413
                                    (let ((__tmp100414
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab95866%_))))
                                      (declare (not safe))
                                      (##fx- __tmp100414 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab95866%_ __tmp100413))
                             (let ((__tmp100415
                                    (let ((__tmp100416
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95866%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100416 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95866%_
                                __tmp100415))))))
                    (if (eq? _%k95897%_ (macro-deleted-obj))
                        (_%loop95887%_
                         (let ((_%next-probe95904%_
                                (fx+ _%start95883%_
                                     _%i95892%_
                                     (fx* _%i95892%_ _%i95892%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95904%_ _%size95877%_))
                         (let () (declare (not safe)) (##fx+ _%i95892%_ '1))
                         (let ((_%$e95907%_ _%deleted95894%_))
                           (if _%$e95907%_ _%$e95907%_ _%probe95890%_)))
                        (if (eq? _%key95867%_ _%k95897%_)
                            (let ()
                              (vector-set!
                               _%table95871%_
                               _%probe95890%_
                               _%key95867%_)
                              (vector-set!
                               _%table95871%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95890%_ '1))
                               _%value95868%_))
                            (_%loop95887%_
                             (let ((_%next-probe95912%_
                                    (fx+ _%start95883%_
                                         _%i95892%_
                                         (fx* _%i95892%_ _%i95892%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95912%_ _%size95877%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95892%_ '1))
                             _%deleted95894%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab95861%_
               _%key95862%_
               _%method-specializer-table-update!95863%_
               _%default95864%_)
        (if (let ((__tmp100419
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab95861%_)))
                  (__tmp100417
                   (let ((__tmp100418
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab95861%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp100418 '4))))
              (declare (not safe))
              (##fx< __tmp100419 __tmp100417))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab95861%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab95861%_
         _%key95862%_
         _%method-specializer-table-update!95863%_
         _%default95864%_)))
    (define __method-specializer-table-update!
      (lambda (_%tab95811%_
               _%key95812%_
               _%method-specializer-table-update!95813%_
               _%default95814%_)
        (let ((_%table95817%_
               (let () (declare (not safe)) (&raw-table-table _%tab95811%_)))
              (_%seed95818%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95811%_))))
          (let* ((_%h95820%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key95812%_))
                         _%seed95818%_))
                 (_%size95823%_ (vector-length _%table95817%_))
                 (_%entries95826%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95823%_ '2)))
                 (_%start95829%_
                  (let ((__tmp100420
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95820%_ _%entries95826%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100420 '1))))
            (let _%loop95833%_ ((_%probe95836%_ _%start95829%_)
                                (_%i95838%_ '1)
                                (_%deleted95840%_ '#f))
              (let ((_%k95843%_ (vector-ref _%table95817%_ _%probe95836%_)))
                (if (eq? _%k95843%_ (macro-unused-obj))
                    (if _%deleted95840%_
                        (begin
                          (vector-set!
                           _%table95817%_
                           _%deleted95840%_
                           _%key95812%_)
                          (vector-set!
                           _%table95817%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted95840%_ '1))
                           (_%method-specializer-table-update!95813%_
                            _%default95814%_))
                          ((lambda ()
                             (let ((__tmp100421
                                    (let ((__tmp100422
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95811%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100422 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95811%_
                                __tmp100421)))))
                        (begin
                          (vector-set!
                           _%table95817%_
                           _%probe95836%_
                           _%key95812%_)
                          (vector-set!
                           _%table95817%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe95836%_ '1))
                           (_%method-specializer-table-update!95813%_
                            _%default95814%_))
                          ((lambda ()
                             (let ((__tmp100423
                                    (let ((__tmp100424
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab95811%_))))
                                      (declare (not safe))
                                      (##fx- __tmp100424 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab95811%_ __tmp100423))
                             (let ((__tmp100425
                                    (let ((__tmp100426
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95811%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100426 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95811%_
                                __tmp100425))))))
                    (if (eq? _%k95843%_ (macro-deleted-obj))
                        (_%loop95833%_
                         (let ((_%next-probe95850%_
                                (fx+ _%start95829%_
                                     _%i95838%_
                                     (fx* _%i95838%_ _%i95838%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95850%_ _%size95823%_))
                         (let () (declare (not safe)) (##fx+ _%i95838%_ '1))
                         (let ((_%$e95853%_ _%deleted95840%_))
                           (if _%$e95853%_ _%$e95853%_ _%probe95836%_)))
                        (if (eq? _%key95812%_ _%k95843%_)
                            (let ()
                              (vector-set!
                               _%table95817%_
                               _%probe95836%_
                               _%key95812%_)
                              (vector-set!
                               _%table95817%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95836%_ '1))
                               (_%method-specializer-table-update!95813%_
                                (vector-ref
                                 _%table95817%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe95836%_ '1))))))
                            (_%loop95833%_
                             (let ((_%next-probe95858%_
                                    (fx+ _%start95829%_
                                         _%i95838%_
                                         (fx* _%i95838%_ _%i95838%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95858%_ _%size95823%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95838%_ '1))
                             _%deleted95840%_))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab95766%_ _%key95768%_)
        (let ((_%table95771%_
               (let () (declare (not safe)) (&raw-table-table _%tab95766%_)))
              (_%seed95773%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95766%_))))
          (let* ((_%h95776%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key95768%_))
                         _%seed95773%_))
                 (_%size95779%_ (vector-length _%table95771%_))
                 (_%entries95782%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95779%_ '2)))
                 (_%start95785%_
                  (let ((__tmp100427
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95776%_ _%entries95782%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100427 '1))))
            (let _%loop95789%_ ((_%probe95792%_ _%start95785%_)
                                (_%i95794%_ '1))
              (let ((_%k95797%_ (vector-ref _%table95771%_ _%probe95792%_)))
                (if (eq? _%k95797%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k95797%_ (macro-deleted-obj))
                        (_%loop95789%_
                         (let ((_%next-probe95802%_
                                (fx+ _%start95785%_
                                     _%i95794%_
                                     (fx* _%i95794%_ _%i95794%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95802%_ _%size95779%_))
                         (let () (declare (not safe)) (##fx+ _%i95794%_ '1)))
                        (if (eq? _%key95768%_ _%k95797%_)
                            (let ()
                              (vector-set!
                               _%table95771%_
                               _%probe95792%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table95771%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95792%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp100428
                                        (let ((__tmp100429
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab95766%_))))
                                          (declare (not safe))
                                          (##fx- __tmp100429 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab95766%_
                                    __tmp100428)))))
                            (_%loop95789%_
                             (let ((_%next-probe95808%_
                                    (fx+ _%start95785%_
                                         _%i95794%_
                                         (fx* _%i95794%_ _%i95794%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95808%_ _%size95779%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95794%_ '1))))))))))))
    (define __method-specializers (make-method-specializer-table__% '#f '0))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc95757%_ _%specializer95758%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again95762%_ ()
            (if (let ((__tmp100430
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp100430 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again95762%_)))))
        (method-specializer-table-set!
         __method-specializers
         _%method-proc95757%_
         _%specializer95758%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc95747%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again95751%_ ()
            (if (let ((__tmp100431
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp100431 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again95751%_)))))
        (let ((_%specializer95755%_
               (method-specializer-table-ref
                __method-specializers
                _%proc95747%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer95755%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass95745%_)
        (let ((__tmp100432
               (let () (declare (not safe)) (##type-id _%klass95745%_))))
          (declare (not safe))
          (symbolic-hash __tmp100432))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint95726%_ _%seed95728%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint95726%_
           __class-specializer-hash-key
           eq?
           _%seed95728%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint95734%_ '#f) (_%seed95736%_ '0))
          (make-class-specializer-table__% _%size-hint95734%_ _%seed95736%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint95738%_)
        (let ((_%seed95740%_ '0))
          (make-class-specializer-table__% _%size-hint95738%_ _%seed95740%_))))
    (define make-class-specializer-table
      (lambda _g100434_
        (let ((_g100433_ (let () (declare (not safe)) (##length _g100434_))))
          (cond ((let () (declare (not safe)) (##fx= _g100433_ 0))
                 (apply make-class-specializer-table__0 _g100434_))
                ((let () (declare (not safe)) (##fx= _g100433_ 1))
                 (apply make-class-specializer-table__1 _g100434_))
                ((let () (declare (not safe)) (##fx= _g100433_ 2))
                 (apply make-class-specializer-table__% _g100434_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g100434_))))))
    (define class-specializer-table-ref
      (lambda (_%tab95679%_ _%key95680%_ _%default95681%_)
        (let ((_%table95683%_
               (let () (declare (not safe)) (&raw-table-table _%tab95679%_)))
              (_%seed95684%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95679%_))))
          (let* ((_%h95686%_
                  (fxxor (__class-specializer-hash-key _%key95680%_)
                         _%seed95684%_))
                 (_%size95689%_ (vector-length _%table95683%_))
                 (_%entries95692%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95689%_ '2)))
                 (_%start95695%_
                  (let ((__tmp100435
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95686%_ _%entries95692%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100435 '1))))
            (let _%loop95699%_ ((_%probe95702%_ _%start95695%_)
                                (_%i95704%_ '1)
                                (_%deleted95706%_ '#f))
              (let ((_%k95709%_ (vector-ref _%table95683%_ _%probe95702%_)))
                (if (eq? _%k95709%_ (macro-unused-obj))
                    _%default95681%_
                    (if (eq? _%k95709%_ (macro-deleted-obj))
                        (_%loop95699%_
                         (let ((_%next-probe95714%_
                                (fx+ _%start95695%_
                                     _%i95704%_
                                     (fx* _%i95704%_ _%i95704%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95714%_ _%size95689%_))
                         (let () (declare (not safe)) (##fx+ _%i95704%_ '1))
                         (let ((_%$e95717%_ _%deleted95706%_))
                           (if _%$e95717%_ _%$e95717%_ _%probe95702%_)))
                        (if (eq? _%key95680%_ _%k95709%_)
                            (vector-ref
                             _%table95683%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe95702%_ '1)))
                            (_%loop95699%_
                             (let ((_%next-probe95722%_
                                    (fx+ _%start95695%_
                                         _%i95704%_
                                         (fx* _%i95704%_ _%i95704%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95722%_ _%size95689%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95704%_ '1))
                             _%deleted95706%_))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab95675%_ _%key95676%_ _%value95677%_)
        (if (let ((__tmp100438
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab95675%_)))
                  (__tmp100436
                   (let ((__tmp100437
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab95675%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp100437 '4))))
              (declare (not safe))
              (##fx< __tmp100438 __tmp100436))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab95675%_))
            '#!void)
        (__class-specializer-table-set!
         _%tab95675%_
         _%key95676%_
         _%value95677%_)))
    (define __class-specializer-table-set!
      (lambda (_%tab95626%_ _%key95627%_ _%value95628%_)
        (let ((_%table95631%_
               (let () (declare (not safe)) (&raw-table-table _%tab95626%_)))
              (_%seed95632%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95626%_))))
          (let* ((_%h95634%_
                  (fxxor (__class-specializer-hash-key _%key95627%_)
                         _%seed95632%_))
                 (_%size95637%_ (vector-length _%table95631%_))
                 (_%entries95640%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95637%_ '2)))
                 (_%start95643%_
                  (let ((__tmp100439
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95634%_ _%entries95640%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100439 '1))))
            (let _%loop95647%_ ((_%probe95650%_ _%start95643%_)
                                (_%i95652%_ '1)
                                (_%deleted95654%_ '#f))
              (let ((_%k95657%_ (vector-ref _%table95631%_ _%probe95650%_)))
                (if (eq? _%k95657%_ (macro-unused-obj))
                    (if _%deleted95654%_
                        (begin
                          (vector-set!
                           _%table95631%_
                           _%deleted95654%_
                           _%key95627%_)
                          (vector-set!
                           _%table95631%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted95654%_ '1))
                           _%value95628%_)
                          ((lambda ()
                             (let ((__tmp100440
                                    (let ((__tmp100441
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95626%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100441 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95626%_
                                __tmp100440)))))
                        (begin
                          (vector-set!
                           _%table95631%_
                           _%probe95650%_
                           _%key95627%_)
                          (vector-set!
                           _%table95631%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe95650%_ '1))
                           _%value95628%_)
                          ((lambda ()
                             (let ((__tmp100442
                                    (let ((__tmp100443
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab95626%_))))
                                      (declare (not safe))
                                      (##fx- __tmp100443 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab95626%_ __tmp100442))
                             (let ((__tmp100444
                                    (let ((__tmp100445
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95626%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100445 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95626%_
                                __tmp100444))))))
                    (if (eq? _%k95657%_ (macro-deleted-obj))
                        (_%loop95647%_
                         (let ((_%next-probe95664%_
                                (fx+ _%start95643%_
                                     _%i95652%_
                                     (fx* _%i95652%_ _%i95652%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95664%_ _%size95637%_))
                         (let () (declare (not safe)) (##fx+ _%i95652%_ '1))
                         (let ((_%$e95667%_ _%deleted95654%_))
                           (if _%$e95667%_ _%$e95667%_ _%probe95650%_)))
                        (if (eq? _%key95627%_ _%k95657%_)
                            (let ()
                              (vector-set!
                               _%table95631%_
                               _%probe95650%_
                               _%key95627%_)
                              (vector-set!
                               _%table95631%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95650%_ '1))
                               _%value95628%_))
                            (_%loop95647%_
                             (let ((_%next-probe95672%_
                                    (fx+ _%start95643%_
                                         _%i95652%_
                                         (fx* _%i95652%_ _%i95652%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95672%_ _%size95637%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95652%_ '1))
                             _%deleted95654%_))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab95621%_
               _%key95622%_
               _%class-specializer-table-update!95623%_
               _%default95624%_)
        (if (let ((__tmp100448
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab95621%_)))
                  (__tmp100446
                   (let ((__tmp100447
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab95621%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp100447 '4))))
              (declare (not safe))
              (##fx< __tmp100448 __tmp100446))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab95621%_))
            '#!void)
        (__class-specializer-table-update!
         _%tab95621%_
         _%key95622%_
         _%class-specializer-table-update!95623%_
         _%default95624%_)))
    (define __class-specializer-table-update!
      (lambda (_%tab95571%_
               _%key95572%_
               _%class-specializer-table-update!95573%_
               _%default95574%_)
        (let ((_%table95577%_
               (let () (declare (not safe)) (&raw-table-table _%tab95571%_)))
              (_%seed95578%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95571%_))))
          (let* ((_%h95580%_
                  (fxxor (__class-specializer-hash-key _%key95572%_)
                         _%seed95578%_))
                 (_%size95583%_ (vector-length _%table95577%_))
                 (_%entries95586%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95583%_ '2)))
                 (_%start95589%_
                  (let ((__tmp100449
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95580%_ _%entries95586%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100449 '1))))
            (let _%loop95593%_ ((_%probe95596%_ _%start95589%_)
                                (_%i95598%_ '1)
                                (_%deleted95600%_ '#f))
              (let ((_%k95603%_ (vector-ref _%table95577%_ _%probe95596%_)))
                (if (eq? _%k95603%_ (macro-unused-obj))
                    (if _%deleted95600%_
                        (begin
                          (vector-set!
                           _%table95577%_
                           _%deleted95600%_
                           _%key95572%_)
                          (vector-set!
                           _%table95577%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted95600%_ '1))
                           (_%class-specializer-table-update!95573%_
                            _%default95574%_))
                          ((lambda ()
                             (let ((__tmp100450
                                    (let ((__tmp100451
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95571%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100451 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95571%_
                                __tmp100450)))))
                        (begin
                          (vector-set!
                           _%table95577%_
                           _%probe95596%_
                           _%key95572%_)
                          (vector-set!
                           _%table95577%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe95596%_ '1))
                           (_%class-specializer-table-update!95573%_
                            _%default95574%_))
                          ((lambda ()
                             (let ((__tmp100452
                                    (let ((__tmp100453
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab95571%_))))
                                      (declare (not safe))
                                      (##fx- __tmp100453 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab95571%_ __tmp100452))
                             (let ((__tmp100454
                                    (let ((__tmp100455
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95571%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100455 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95571%_
                                __tmp100454))))))
                    (if (eq? _%k95603%_ (macro-deleted-obj))
                        (_%loop95593%_
                         (let ((_%next-probe95610%_
                                (fx+ _%start95589%_
                                     _%i95598%_
                                     (fx* _%i95598%_ _%i95598%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95610%_ _%size95583%_))
                         (let () (declare (not safe)) (##fx+ _%i95598%_ '1))
                         (let ((_%$e95613%_ _%deleted95600%_))
                           (if _%$e95613%_ _%$e95613%_ _%probe95596%_)))
                        (if (eq? _%key95572%_ _%k95603%_)
                            (let ()
                              (vector-set!
                               _%table95577%_
                               _%probe95596%_
                               _%key95572%_)
                              (vector-set!
                               _%table95577%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95596%_ '1))
                               (_%class-specializer-table-update!95573%_
                                (vector-ref
                                 _%table95577%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe95596%_ '1))))))
                            (_%loop95593%_
                             (let ((_%next-probe95618%_
                                    (fx+ _%start95589%_
                                         _%i95598%_
                                         (fx* _%i95598%_ _%i95598%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95618%_ _%size95583%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95598%_ '1))
                             _%deleted95600%_))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab95526%_ _%key95528%_)
        (let ((_%table95531%_
               (let () (declare (not safe)) (&raw-table-table _%tab95526%_)))
              (_%seed95533%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95526%_))))
          (let* ((_%h95536%_
                  (fxxor (__class-specializer-hash-key _%key95528%_)
                         _%seed95533%_))
                 (_%size95539%_ (vector-length _%table95531%_))
                 (_%entries95542%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95539%_ '2)))
                 (_%start95545%_
                  (let ((__tmp100456
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95536%_ _%entries95542%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100456 '1))))
            (let _%loop95549%_ ((_%probe95552%_ _%start95545%_)
                                (_%i95554%_ '1))
              (let ((_%k95557%_ (vector-ref _%table95531%_ _%probe95552%_)))
                (if (eq? _%k95557%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k95557%_ (macro-deleted-obj))
                        (_%loop95549%_
                         (let ((_%next-probe95562%_
                                (fx+ _%start95545%_
                                     _%i95554%_
                                     (fx* _%i95554%_ _%i95554%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95562%_ _%size95539%_))
                         (let () (declare (not safe)) (##fx+ _%i95554%_ '1)))
                        (if (eq? _%key95528%_ _%k95557%_)
                            (let ()
                              (vector-set!
                               _%table95531%_
                               _%probe95552%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table95531%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95552%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp100457
                                        (let ((__tmp100458
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab95526%_))))
                                          (declare (not safe))
                                          (##fx- __tmp100458 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab95526%_
                                    __tmp100457)))))
                            (_%loop95549%_
                             (let ((_%next-probe95568%_
                                    (fx+ _%start95545%_
                                         _%i95554%_
                                         (fx* _%i95554%_ _%i95554%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95568%_ _%size95539%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95554%_ '1))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers (make-class-specializer-table__% '#f '0))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass95512%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95512%_ 'class))
            (let ((_%klass95516%_ _%klass95512%_))
              (__specialize-class _%klass95516%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1020.25-1020.30"
               'contract:
               'class-type?
               'value:
               _%klass95512%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass95494%_)
        (let* ((_%klass95497%_ _%klass95494%_)
               (_%$e95506%_ (__lookup-class-specializer _%klass95497%_)))
          (if _%$e95506%_
              _%$e95506%_
              (let ((_%method-table95510%_
                     (___specialize-class _%klass95497%_)))
                (__bind-class-specializer!
                 _%klass95497%_
                 _%method-table95510%_)
                _%method-table95510%_)))))
    (define __lookup-class-specializer
      (lambda (_%klass95484%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again95488%_ ()
            (if (let ((__tmp100459
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp100459 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again95488%_)))))
        (let ((_%method-table95492%_
               (class-specializer-table-ref
                __class-specializers
                _%klass95484%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table95492%_)))
    (define __bind-class-specializer!
      (lambda (_%klass95475%_ _%method-table95476%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again95480%_ ()
            (if (let ((__tmp100460
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp100460 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again95480%_)))))
        (class-specializer-table-set!
         __class-specializers
         _%klass95475%_
         _%method-table95476%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass95459%_
               _%method-table95460%_
               _%method95461%_
               _%proc95462%_)
        (let ((_%$e95464%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table95460%_
                  _%method95461%_
                  '#f))))
          (if _%$e95464%_
              _%$e95464%_
              (let ((_%$e95467%_ (__lookup-method-specializer _%proc95462%_)))
                (if _%$e95467%_
                    ((lambda (_%specialize95470%_)
                       (let ((_%specialized-proc95472%_
                              (_%specialize95470%_
                               _%klass95459%_
                               _%method-table95460%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table95460%_
                          _%method95461%_
                          _%specialized-proc95472%_)))
                     _%$e95467%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table95460%_
                       _%method95461%_
                       _%proc95462%_))))))))
    (define ___specialize-class
      (lambda (_%klass95401%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95401%_ 'class))
            (if (__class-type-metaclass? _%klass95401%_)
                (let ((__method100306
                       (__method-ref _%klass95401%_ 'specialize-class)))
                  (if __method100306
                      (let ()
                        (declare (not safe))
                        (__method100306 _%klass95401%_))
                      (begin
                        (error '"Missing method"
                               _%klass95401%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp100461
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass95401%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp100461))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass95401%_)
                    (let ((_%method-table95407%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop95409%_ ((_%rest95411%_
                                           (__class-precedence-list
                                            _%klass95401%_)))
                        (let* ((_%rest9541295420%_ _%rest95411%_)
                               (_%else9541495428%_
                                (lambda () _%method-table95407%_))
                               (_%K9541695447%_
                                (lambda (_%rest95431%_ _%xklass95432%_)
                                  (let ((_%xmethod-table9543395435%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass95432%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table9543395435%_
                                        (let* ((_%xmethod-table95438%_
                                                _%xmethod-table9543395435%_)
                                               (__tmp100462
                                                (lambda (_%g9543995442%_
                                                         _%g9544095444%_)
                                                  (__specialize-method
                                                   _%klass95401%_
                                                   _%method-table95407%_
                                                   _%g9543995442%_
                                                   _%g9544095444%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table95438%_
                                           __tmp100462))
                                        '#f))
                                  (_%loop95409%_ _%rest95431%_))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9541295420%_))
                              (let ((_%hd9541795450%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9541295420%_)))
                                    (_%tl9541895452%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9541295420%_))))
                                (let* ((_%xklass95455%_ _%hd9541795450%_)
                                       (_%rest95457%_ _%tl9541895452%_))
                                  (_%K9541695447%_
                                   _%rest95457%_
                                   _%xklass95455%_)))
                              (_%else9541495428%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass95401%_))
                (__specialize-class (__shadow-class _%klass95401%_))
                (error '"bad class; cannot specialize" _%klass95401%_)))))
    (define seal-class!
      (lambda (_%klass95387%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95387%_ 'class))
            (let ((_%klass95391%_ _%klass95387%_))
              (__seal-class! _%klass95391%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1077.20-1077.25"
               'contract:
               'class-type?
               'value:
               _%klass95387%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass95370%_)
        (let ((_%klass95373%_ _%klass95370%_))
          (if (__class-type-sealed? _%klass95373%_)
              '#!void
              (begin
                (if (__class-type-final? _%klass95373%_)
                    '#!void
                    (error '"cannot seal non-final class" _%klass95373%_))
                (if (__class-type-metaclass? _%klass95373%_)
                    (let ((__method100307
                           (__method-ref _%klass95373%_ 'seal-class!)))
                      (if __method100307
                          (let ()
                            (declare (not safe))
                            (__method100307 _%klass95373%_))
                          (begin
                            (error '"Missing method"
                                   _%klass95373%_
                                   'seal-class!)
                            '#!void)))
                    (if (let ((__tmp100463
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass95373%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp100463))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass95373%_)
                        (let ((_%method-table95385%_
                               (__specialize-class _%klass95373%_)))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass95373%_
                           _%method-table95385%_
                           '11
                           '#f
                           '#f))))
                (__class-type-seal! _%klass95373%_))))))
    (define next-method
      (lambda (_%subklass95344%_ _%obj95345%_ _%id95346%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass95344%_ 'class))
            (let ((_%subklass95350%_ _%subklass95344%_))
              (if (symbol? _%id95346%_)
                  (let ((_%id95360%_ _%id95346%_))
                    (__next-method _%subklass95350%_ _%obj95345%_ _%id95360%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1101.44-1101.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id95346%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1101.20-1101.28"
               'contract:
               'class-type?
               'value:
               _%subklass95344%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass95281%_ _%obj95282%_ _%id95283%_)
        (let* ((_%subklass95286%_ _%subklass95281%_) (_%id95294%_ _%id95283%_))
          (letrec ((_%find-next-method95303%_
                    (lambda (_%klass95305%_)
                      (let _%lp95307%_ ((_%rest95309%_
                                         (class-precedence-list
                                          _%klass95305%_)))
                        (let* ((_%rest9531095318%_ _%rest95309%_)
                               (_%else9531295326%_ (lambda () '#f))
                               (_%K9531495332%_
                                (lambda (_%rest95329%_ _%klass95330%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass95286%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass95330%_)))
                                      (__mixin-find-method
                                       _%rest95329%_
                                       _%obj95282%_
                                       _%id95294%_)
                                      (_%lp95307%_ _%rest95329%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9531095318%_))
                              (let ((_%hd9531595335%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9531095318%_)))
                                    (_%tl9531695337%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9531095318%_))))
                                (let* ((_%klass95340%_ _%hd9531595335%_)
                                       (_%rest95342%_ _%tl9531695337%_))
                                  (_%K9531495332%_
                                   _%rest95342%_
                                   _%klass95340%_)))
                              (_%else9531295326%_)))))))
            (_%find-next-method95303%_ (class-of _%obj95282%_))))))
    (define call-next-method
      (lambda (_%subklass95254%_ _%obj95255%_ _%id95256%_ . _%args95257%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass95254%_ 'class))
            (let ((_%subklass95261%_ _%subklass95254%_))
              (if (symbol? _%id95256%_)
                  (let ((_%id95271%_ _%id95256%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass95261%_
                             _%obj95255%_
                             _%id95271%_
                             _%args95257%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1112.49-1112.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id95256%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1112.25-1112.33"
               'contract:
               'class-type?
               'value:
               _%subklass95254%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass95225%_ _%obj95226%_ _%id95227%_ . _%args95228%_)
        (let* ((_%subklass95231%_ _%subklass95225%_)
               (_%id95239%_ _%id95227%_)
               (_%$e95248%_
                (__next-method _%subklass95231%_ _%obj95226%_ _%id95239%_)))
          (if _%$e95248%_
              ((lambda (_%methodf95251%_)
                 (apply _%methodf95251%_ _%obj95226%_ _%args95228%_))
               _%$e95248%_)
              (error '"cannot find next method"
                     'object:
                     _%obj95226%_
                     'method:
                     _%id95239%_)))))
    (define write-style
      (lambda (_%we95223%_) (macro-writeenv-style _%we95223%_)))
    (define write-object
      (lambda (_%we95214%_ _%obj95215%_)
        (let ((_%$e95217%_ (__method-ref _%obj95215%_ ':wr)))
          (if _%$e95217%_
              ((lambda (_%method95220%_)
                 (_%method95220%_ _%obj95215%_ _%we95214%_))
               _%$e95217%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we95214%_ _%obj95215%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type95129%_)
        (letrec ((_%shadow-type-id95131%_
                  (lambda (_%type95212%_)
                    (let ((__tmp100464
                           (let ()
                             (declare (not safe))
                             (##type-name _%type95212%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp100464 '"::t"))))
                 (_%shadow-type-name95132%_
                  (lambda (_%type95210%_)
                    (let () (declare (not safe)) (##type-name _%type95210%_))))
                 (_%make-shadow-class95133%_
                  (lambda (_%type95202%_ _%precedence-list95203%_)
                    (let* ((_%super95205%_
                            (if (pair? _%precedence-list95203%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list95203%_))
                                      '())
                                '()))
                           (_%klass95207%_
                            (make-class-type
                             (_%shadow-type-id95131%_ _%type95202%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type95202%_))
                             _%super95205%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (if (__type-extensible? _%type95202%_)
                                             '()
                                             (cons (cons 'final: '#t) '()))))
                             '#f)))
                      (let ((__tmp100465
                             (let ()
                               (declare (not safe))
                               (##type-id _%type95202%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp100465
                         _%klass95207%_))
                      _%klass95207%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again95137%_ ()
              (if (let ((__tmp100466
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp100466 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (_%again95137%_)))))
          (let ((_%$e95141%_
                 (let ((__tmp100467
                        (let ()
                          (declare (not safe))
                          (##type-id _%type95129%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp100467 '#f))))
            (if _%$e95141%_
                ((lambda (_%klass95144%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass95144%_)
                 _%$e95141%_)
                (let _%loop95147%_ ((_%super95149%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-super _%type95129%_)))
                                    (_%hierarchy95150%_ '()))
                  (if (not _%super95149%_)
                      (let _%loop95153%_ ((_%rest95155%_ _%hierarchy95150%_)
                                          (_%precedence-list95156%_ '()))
                        (let* ((_%rest9515795165%_ _%rest95155%_)
                               (_%else9515995175%_
                                (lambda ()
                                  (let ((_%klass95173%_
                                         (_%make-shadow-class95133%_
                                          _%type95129%_
                                          _%precedence-list95156%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass95173%_)))
                               (_%K9516195189%_
                                (lambda (_%rest95178%_ _%type95179%_)
                                  (let ((_%$e95181%_
                                         (let ((__tmp100468
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type95179%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp100468
                                            '#f))))
                                    (if _%$e95181%_
                                        ((lambda (_%klass95184%_)
                                           (_%loop95153%_
                                            _%rest95178%_
                                            (cons _%klass95184%_
                                                  _%precedence-list95156%_)))
                                         _%$e95181%_)
                                        (let ((_%klass95187%_
                                               (_%make-shadow-class95133%_
                                                _%type95179%_
                                                _%precedence-list95156%_)))
                                          (_%loop95153%_
                                           _%rest95178%_
                                           (cons _%klass95187%_
                                                 _%precedence-list95156%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9515795165%_))
                              (let ((_%hd9516295192%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9515795165%_)))
                                    (_%tl9516395194%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9515795165%_))))
                                (let* ((_%type95197%_ _%hd9516295192%_)
                                       (_%rest95199%_ _%tl9516395194%_))
                                  (_%K9516195189%_
                                   _%rest95199%_
                                   _%type95197%_)))
                              (_%else9515995175%_))))
                      (_%loop95147%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super95149%_))
                       (cons _%super95149%_ _%hierarchy95150%_)))))))))
    (define class-of
      (lambda (_%obj95102%_)
        (let ()
          (declare (not interrupts-enabled))
          (let ((_%t95106%_
                 (let () (declare (not safe)) (##type _%obj95102%_))))
            (if (fx= _%t95106%_ (macro-type-subtyped))
                (let ((_%st95109%_
                       (let () (declare (not safe)) (##subtype _%obj95102%_))))
                  (if (fx= _%st95109%_ (macro-subtype-structure))
                      (let ((_%klass95112%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj95102%_))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of? _%klass95112%_ 'class))
                            _%klass95112%_
                            (__shadow-class _%klass95112%_)))
                      (if (fx= _%st95109%_ (macro-subtype-boxvalues))
                          (if (let ((__tmp100469
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _%obj95102%_))))
                                (declare (not safe))
                                (##fx= __tmp100469 '1))
                              (__system-class 'box)
                              (__system-class 'values))
                          (let ((_%$e95115%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref __subtype-id _%st95109%_))))
                            (if _%$e95115%_
                                (__system-class _%$e95115%_)
                                (error '"unknown class"
                                       'subtype:
                                       _%st95109%_
                                       'object:
                                       _%obj95102%_))))))
                (if (fx= _%t95106%_ (macro-type-mem2))
                    (__system-class 'pair)
                    (if (fx= _%t95106%_ (macro-type-fixnum))
                        (__system-class 'fixnum)
                        (if (char? _%obj95102%_)
                            (__system-class 'char)
                            (if (eq? _%obj95102%_ '())
                                (__system-class 'null)
                                (if (eq? _%obj95102%_ '#f)
                                    (__system-class 'boolean)
                                    (if (eq? _%obj95102%_ '#t)
                                        (__system-class 'boolean)
                                        (if (eq? _%obj95102%_ '#!void)
                                            (__system-class 'void)
                                            (if (eq? _%obj95102%_ '#!eof)
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
      (lambda (_%id95096%_)
        (let ((_%$e95098%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id95096%_ '#f))))
          (if _%$e95098%_
              _%$e95098%_
              (error '"unknown system class" _%id95096%_)))))
    (define __make-system-class
      (lambda (_%id95091%_ _%super95092%_)
        (let ((_%klass95094%_
               (make-class-type
                _%id95091%_
                _%id95091%_
                _%super95092%_
                '()
                '((system: . #t))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id95091%_ _%klass95094%_))
          _%klass95094%_)))))
