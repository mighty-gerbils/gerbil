(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1713000276)
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
      (let ((_%flags99170%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties99171%_ '((direct-slots:) (system: . #t)))
            (_%slot-table99172%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags99170%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table99172%_
           _%properties99171%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots99146%_
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
             (_%slot-vector99148%_ (list->vector (cons '#f _%slots99146%_)))
             (_%slot-table99155%_
              (let ((_%slot-table99150%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp100613
                       (lambda (_%slot99152%_ _%field99153%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table99150%_
                            _%slot99152%_
                            _%field99153%_))
                         (let ((__tmp100614
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot99152%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table99150%_
                            __tmp100614
                            _%field99153%_))))
                      (__tmp100611
                       (let ((__tmp100612
                              (let ()
                                (declare (not safe))
                                (##length _%slots99146%_))))
                         (declare (not safe))
                         (##iota __tmp100612 '1))))
                  (declare (not safe))
                  (##for-each __tmp100613 _%slots99146%_ __tmp100611))
                _%slot-table99150%_))
             (_%flags99157%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields99163%_
              (list->vector
               (let ((__tmp100615
                      (map (lambda (_%g9915899160%_)
                             (list _%g9915899160%_ '5 '#f))
                           (drop _%slots99146%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp100615))))
             (_%properties99165%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots99146%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t99167%_
              (let ((__tmp100616 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags99157%_
                 ##type-type
                 _%fields99163%_
                 __tmp100616
                 _%slot-vector99148%_
                 _%slot-table99155%_
                 _%properties99165%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t99167%_ _%t99167%_))
        _%t99167%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags99142%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties99143%_ '((direct-slots:) (system: . #t)))
            (_%slot-table99144%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp100617 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags99142%_
           '#f
           '#()
           __tmp100617
           '#(#f)
           _%slot-table99144%_
           _%properties99143%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj99140%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj99140%_ 'class))))
    (define class-type=?
      (lambda (_%x99115%_ _%y99116%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x99115%_ 'class))
            (let ((_%x99120%_ _%x99115%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y99116%_ 'class))
                  (let ((_%y99130%_ _%y99116%_))
                    (__class-type=? _%x99120%_ _%y99130%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y99116%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x99115%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x99094%_ _%y99095%_)
        (let* ((_%x99098%_ _%x99094%_) (_%y99106%_ _%y99095%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x99098%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y99106%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type99080%_)
        (if (let () (declare (not safe)) (##type? _%type99080%_))
            (let ((_%type99084%_ _%type99080%_))
              (__type-opaque? _%type99084%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type99080%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type99068%_)
        (let* ((_%type99071%_ _%type99068%_)
               (__tmp100618
                (let ((__tmp100619
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type99071%_))))
                  (declare (not safe))
                  (##fxand __tmp100619 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp100618 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type99054%_)
        (if (let () (declare (not safe)) (##type? _%type99054%_))
            (let ((_%type99058%_ _%type99054%_))
              (__type-extensible? _%type99058%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type99054%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type99042%_)
        (let* ((_%type99045%_ _%type99042%_)
               (__tmp100620
                (let ((__tmp100621
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type99045%_))))
                  (declare (not safe))
                  (##fxand __tmp100621 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp100620 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type99028%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type99028%_ 'class))
            (let ((_%type99032%_ _%type99028%_))
              (__class-type-final? _%type99032%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type99028%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type99016%_)
        (let* ((_%type99019%_ _%type99016%_)
               (__tmp100622
                (let ((__tmp100623
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type99019%_))))
                  (declare (not safe))
                  (##fxand __tmp100623 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp100622 '0))))
    (define class-type-struct?
      (lambda (_%klass99002%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass99002%_ 'class))
            (let ((_%klass99006%_ _%klass99002%_))
              (__class-type-struct? _%klass99006%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass99002%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass98990%_)
        (let* ((_%klass98993%_ _%klass98990%_)
               (__tmp100624
                (let ((__tmp100625
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass98993%_))))
                  (declare (not safe))
                  (##fxand __tmp100625 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp100624 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass98976%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98976%_ 'class))
            (let ((_%klass98980%_ _%klass98976%_))
              (__class-type-sealed? _%klass98980%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass98976%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass98964%_)
        (let* ((_%klass98967%_ _%klass98964%_)
               (__tmp100626
                (let ((__tmp100627
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass98967%_))))
                  (declare (not safe))
                  (##fxand __tmp100627 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp100626 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass98950%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98950%_ 'class))
            (let ((_%klass98954%_ _%klass98950%_))
              (__class-type-metaclass? _%klass98954%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass98950%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass98938%_)
        (let* ((_%klass98941%_ _%klass98938%_)
               (__tmp100628
                (let ((__tmp100629
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass98941%_))))
                  (declare (not safe))
                  (##fxand __tmp100629 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp100628 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass98924%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98924%_ 'class))
            (let ((_%klass98928%_ _%klass98924%_))
              (__class-type-system? _%klass98928%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass98924%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass98912%_)
        (let* ((_%klass98915%_ _%klass98912%_)
               (__tmp100630
                (let ((__tmp100631
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass98915%_))))
                  (declare (not safe))
                  (##fxand __tmp100631 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp100630 class-type-flag-system))))
    (define make-class-type-descriptor
      (lambda (_%type-id98797%_
               _%type-name98798%_
               _%type-super98799%_
               _%precedence-list98800%_
               _%slot-vector98801%_
               _%properties98802%_
               _%constructor98803%_
               _%slot-table98804%_
               _%methods98805%_)
        (letrec ((_%make-props!98808%_
                  (lambda (_%key98881%_)
                    (letrec* ((_%ht98883%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!98884%_
                               (lambda (_%ht98905%_ _%slots98906%_)
                                 (for-each
                                  (lambda (_%g9890798909%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht98905%_
                                       _%g9890798909%_
                                       '#t)))
                                  _%slots98906%_)))
                              (_%put-alist!98885%_
                               (lambda (_%ht98894%_
                                        _%key98895%_
                                        _%alist98896%_)
                                 (let ((_%$e98898%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key98895%_
                                           _%alist98896%_))))
                                   (if _%$e98898%_
                                       ((lambda (_%g9890098902%_)
                                          (_%put-slots!98884%_
                                           _%ht98894%_
                                           _%g9890098902%_))
                                        _%$e98898%_)
                                       '#!void)))))
                      (_%put-alist!98885%_
                       _%ht98883%_
                       _%key98881%_
                       _%properties98802%_)
                      (for-each
                       (lambda (_%mixin98887%_)
                         (let ((_%alist98889%_
                                (##structure-ref
                                 _%mixin98887%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist98889%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key98881%_
                                           _%alist98889%_))))
                               (_%put-slots!98884%_
                                _%ht98883%_
                                (class-type-slot-list _%mixin98887%_))
                               (_%put-alist!98885%_
                                _%ht98883%_
                                _%key98881%_
                                _%alist98889%_))))
                       _%precedence-list98800%_)
                      _%ht98883%_))))
          (let* ((_%transparent?98810%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties98802%_)))
                 (_%all-slots-printable?98815%_
                  (let ((_%$e98812%_ _%transparent?98810%_))
                    (if _%$e98812%_
                        _%$e98812%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties98802%_))))))
                 (_%printable98817%_
                  (if (not _%all-slots-printable?98815%_)
                      (_%make-props!98808%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?98822%_
                  (let ((_%$e98819%_ _%transparent?98810%_))
                    (if _%$e98819%_
                        _%$e98819%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties98802%_))))))
                 (_%equalable98824%_
                  (if (not _%all-slots-equalable?98822%_)
                      (_%make-props!98808%_ 'equal:)
                      '#f))
                 (_%first-new-field98826%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super98799%_ 'class))
                      (let ((__tmp100632
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super98799%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp100632))
                      '1))
                 (_%field-info-length98828%_
                  (let ((__tmp100633
                         (let ((__tmp100634
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector98801%_))))
                           (declare (not safe))
                           (##fx- __tmp100634 _%first-new-field98826%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp100633)))
                 (_%field-info98830%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length98828%_ '#f)))
                 (_%struct?98832%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties98802%_)))
                 (_%final?98834%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties98802%_)))
                 (_%metaclass98842%_
                  (let ((_%metaclass9883598837%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties98802%_))))
                    (if _%metaclass9883598837%_
                        (let ((_%metaclass98840%_ _%metaclass9883598837%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass98840%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id98797%_
                                     'metaclass:
                                     _%metaclass98840%_))
                          _%metaclass98840%_)
                        '#f)))
                 (_%system?98844%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties98802%_)))
                 (_%opaque?98849%_
                  (let ((_%$e98846%_ (not _%all-slots-equalable?98822%_)))
                    (if _%$e98846%_
                        _%$e98846%_
                        (if _%type-super98799%_
                            (__type-opaque? _%type-super98799%_)
                            '#f))))
                 (_%type-flags98851%_
                  (let ((__tmp100639
                         (if _%final?98834%_ '0 type-flag-extensible))
                        (__tmp100638 (if _%opaque?98849%_ type-flag-opaque '0))
                        (__tmp100637
                         (if _%struct?98832%_ class-type-flag-struct '0))
                        (__tmp100636
                         (if _%metaclass98842%_ class-type-flag-metaclass '0))
                        (__tmp100635
                         (if _%system?98844%_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp100639
                             __tmp100638
                             __tmp100637
                             __tmp100636
                             __tmp100635)))
                 (_%precedence-list98859%_
                  (let ((_%$e98853%_ (memq t::t _%precedence-list98800%_)))
                    (if _%$e98853%_
                        ((lambda (_%tail98856%_)
                           (if (null? (cdr _%tail98856%_))
                               _%precedence-list98800%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list98800%_)))
                         _%$e98853%_)
                        (let ((__tmp100640 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list98800%_ __tmp100640))))))
            (let _%loop98862%_ ((_%i98864%_ _%first-new-field98826%_)
                                (_%j98865%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j98865%_ _%field-info-length98828%_))
                  (let* ((_%slot98867%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector98801%_ _%i98864%_)))
                         (_%flags98875%_
                          (if _%transparent?98810%_
                              '0
                              (let ((__tmp100642
                                     (if (or _%all-slots-printable?98815%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable98817%_
                                                _%slot98867%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp100641
                                     (if (or _%all-slots-equalable?98822%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable98824%_
                                                _%slot98867%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp100642 __tmp100641)))))
                    (vector-set! _%field-info98830%_ _%j98865%_ _%slot98867%_)
                    (vector-set!
                     _%field-info98830%_
                     (let () (declare (not safe)) (##fx+ _%j98865%_ '1))
                     _%flags98875%_)
                    (_%loop98862%_
                     (let () (declare (not safe)) (##fx+ _%i98864%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j98865%_ '3))))
                  '#!void))
            (if _%metaclass98842%_
                (let ((_%val98878%_
                       (make-instance
                        _%metaclass98842%_
                        _%type-id98797%_
                        _%type-name98798%_
                        _%type-flags98851%_
                        _%type-super98799%_
                        _%field-info98830%_
                        _%precedence-list98859%_
                        _%slot-vector98801%_
                        _%slot-table98804%_
                        _%properties98802%_
                        _%constructor98803%_
                        _%methods98805%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val98878%_ 'class))
                      _%val98878%_
                      (error '"bad cast" class::t _%val98878%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id98797%_
                   _%type-name98798%_
                   _%type-flags98851%_
                   _%type-super98799%_
                   _%field-info98830%_
                   _%precedence-list98859%_
                   _%slot-vector98801%_
                   _%slot-table98804%_
                   _%properties98802%_
                   _%constructor98803%_
                   _%methods98805%_)))))))
    (define class-type-id
      (lambda (_%klass98795%_)
        (##structure-ref _%klass98795%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass98793%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98793%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass98790%_ _%val98791%_)
        (##structure-set! _%klass98790%_ _%val98791%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass98785%_ _%val98787%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98785%_
           _%val98787%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass98783%_)
        (##structure-ref _%klass98783%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass98781%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98781%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass98778%_ _%val98779%_)
        (##structure-set! _%klass98778%_ _%val98779%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass98773%_ _%val98775%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98773%_
           _%val98775%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass98771%_)
        (##structure-ref _%klass98771%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass98769%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98769%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass98766%_ _%val98767%_)
        (##structure-set! _%klass98766%_ _%val98767%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass98761%_ _%val98763%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98761%_
           _%val98763%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass98759%_)
        (##structure-ref _%klass98759%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass98757%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98757%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass98754%_ _%val98755%_)
        (##structure-set! _%klass98754%_ _%val98755%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass98749%_ _%val98751%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98749%_
           _%val98751%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass98747%_)
        (##structure-ref _%klass98747%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass98745%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98745%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass98742%_ _%val98743%_)
        (##structure-set! _%klass98742%_ _%val98743%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass98737%_ _%val98739%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98737%_
           _%val98739%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass98735%_)
        (##structure-ref _%klass98735%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass98733%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass98733%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass98730%_ _%val98731%_)
        (##structure-set!
         _%klass98730%_
         _%val98731%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass98725%_ _%val98727%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98725%_
           _%val98727%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass98723%_)
        (##structure-ref _%klass98723%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass98721%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass98721%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass98718%_ _%val98719%_)
        (##structure-set!
         _%klass98718%_
         _%val98719%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass98713%_ _%val98715%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98713%_
           _%val98715%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass98711%_)
        (##structure-ref _%klass98711%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass98709%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98709%_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass98706%_ _%val98707%_)
        (##structure-set!
         _%klass98706%_
         _%val98707%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass98701%_ _%val98703%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98701%_
           _%val98703%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass98699%_)
        (##structure-ref _%klass98699%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass98697%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98697%_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_%klass98694%_ _%val98695%_)
        (##structure-set!
         _%klass98694%_
         _%val98695%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass98689%_ _%val98691%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98689%_
           _%val98691%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass98687%_)
        (##structure-ref _%klass98687%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass98685%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass98685%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass98682%_ _%val98683%_)
        (##structure-set!
         _%klass98682%_
         _%val98683%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass98677%_ _%val98679%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98677%_
           _%val98679%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass98675%_)
        (##structure-ref _%klass98675%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass98673%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98673%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass98670%_ _%val98671%_)
        (##structure-set! _%klass98670%_ _%val98671%_ '11 class::t 'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass98665%_ _%val98667%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98665%_
           _%val98667%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass98651%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98651%_ 'class))
            (let ((_%klass98655%_ _%klass98651%_))
              (__class-type-slot-list _%klass98655%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass98651%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass98639%_)
        (let ((_%klass98642%_ _%klass98639%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass98642%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass98625%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98625%_ 'class))
            (let ((_%klass98629%_ _%klass98625%_))
              (__class-type-field-count _%klass98629%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass98625%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass98613%_)
        (let* ((_%klass98616%_ _%klass98613%_)
               (__tmp100643
                (let ((__tmp100644
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass98616%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp100644))))
          (declare (not safe))
          (##fx- __tmp100643 '1))))
    (define class-type-seal!
      (lambda (_%klass98599%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98599%_ 'class))
            (let ((_%klass98603%_ _%klass98599%_))
              (__class-type-seal! _%klass98603%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass98599%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass98587%_)
        (let ((_%klass98590%_ _%klass98587%_))
          (let ((__tmp100645
                 (let ((__tmp100646
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass98590%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp100646))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass98590%_
             __tmp100645
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct98562%_ _%maybe-super-struct98563%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct98562%_ 'class))
            (let ((_%maybe-sub-struct98567%_ _%maybe-sub-struct98562%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct98563%_
                     'class))
                  (let ((_%maybe-super-struct98577%_
                         _%maybe-super-struct98563%_))
                    (__substruct?
                     _%maybe-sub-struct98567%_
                     _%maybe-super-struct98577%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct98563%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct98562%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct98531%_ _%maybe-super-struct98532%_)
        (let* ((_%maybe-sub-struct98535%_ _%maybe-sub-struct98531%_)
               (_%maybe-super-struct98543%_ _%maybe-super-struct98532%_)
               (_%maybe-super-struct-id98552%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct98543%_))))
          (let _%lp98554%_ ((_%super-struct98556%_ _%maybe-sub-struct98535%_))
            (if (not _%super-struct98556%_)
                '#f
                (if (eq? _%maybe-super-struct-id98552%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct98556%_)))
                    '#t
                    (_%lp98554%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct98556%_)))))))))
    (define base-struct/1
      (lambda (_%klass98526%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98526%_ 'class))
            (if (__class-type-struct? _%klass98526%_)
                _%klass98526%_
                (let () (declare (not safe)) (##type-super _%klass98526%_)))
            (if (not _%klass98526%_)
                '#f
                (error '"not a class or false" _%klass98526%_)))))
    (define base-struct/2
      (lambda (_%klass198511%_ _%klass298512%_)
        (let ((_%s198514%_ (base-struct/1 _%klass198511%_))
              (_%s298515%_ (base-struct/1 _%klass298512%_)))
          (if (or (not _%s198514%_)
                  (and _%s298515%_ (substruct? _%s198514%_ _%s298515%_)))
              _%s298515%_
              (if (or (not _%s298515%_)
                      (and _%s198514%_ (substruct? _%s298515%_ _%s198514%_)))
                  _%s198514%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass198511%_
                         _%klass298512%_
                         _%s198514%_
                         _%s298515%_))))))
    (define base-struct/list
      (lambda (_%all-supers98395%_)
        (let* ((_%all-supers9839698421%_ _%all-supers98395%_)
               (_%E9840198425%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers9839698421%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K9841998508%_ (lambda () '#f))
                (_%K9841698494%_
                 (lambda (_%x98492%_) (base-struct/1 _%x98492%_)))
                (_%K9841198471%_
                 (lambda (_%y98468%_ _%x98469%_)
                   (base-struct/2 _%x98469%_ _%y98468%_)))
                (_%K9840298432%_
                 (lambda (_%y98429%_ _%x98430%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x98430%_ _%y98429%_)))))
            (let* ((_%__match100605100606%_
                    (lambda (_%hd9840398435%_ _%tl9840498437%_)
                      (let ((_%x98440%_ _%hd9840398435%_))
                        (letrec ((_%splice-rest9840698442%_
                                  (lambda (_%rest9841098449%_ _%y98451%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%rest9841098449%_))
                                        (_%K9840298432%_ _%y98451%_ _%x98440%_)
                                        (_%E9840198425%_))))
                                 (_%splice-try9840898444%_
                                  (lambda (_%hd9840998453%_
                                           _%rest9841098455%_
                                           _%y9840598456%_)
                                    (let ((_%y98459%_ _%hd9840998453%_))
                                      (_%splice-loop9840798446%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest9841098455%_))
                                       (cons _%y98459%_ _%y9840598456%_)))))
                                 (_%splice-loop9840798446%_
                                  (lambda (_%rest9841098461%_ _%y9840598462%_)
                                    (if (pair? _%rest9841098461%_)
                                        (_%splice-try9840898444%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest9841098461%_))
                                         _%rest9841098461%_
                                         _%y9840598462%_)
                                        (_%splice-rest9840698442%_
                                         _%rest9841098461%_
                                         (reverse _%y9840598462%_))))))
                          (_%splice-loop9840798446%_ _%tl9840498437%_ '())))))
                   (_%try-match9839898504%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all-supers9839698421%_))
                          (let ((_%tl9841898499%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers9839698421%_)))
                                (_%hd9841798497%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers9839698421%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl9841898499%_))
                                (let ((_%x98502%_ _%hd9841798497%_))
                                  (base-struct/1 _%x98502%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl9841898499%_))
                                    (let ((_%tl9841598483%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl9841898499%_)))
                                          (_%hd9841498481%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl9841898499%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl9841598483%_))
                                          (let ((_%x98479%_ _%hd9841798497%_)
                                                (_%y98486%_ _%hd9841498481%_))
                                            (_%K9841198471%_
                                             _%y98486%_
                                             _%x98479%_))
                                          (_%__match100605100606%_
                                           _%hd9841798497%_
                                           _%tl9841898499%_)))
                                    (_%__match100605100606%_
                                     _%hd9841798497%_
                                     _%tl9841898499%_))))
                          (_%E9840198425%_)))))
              (if (let ()
                    (declare (not safe))
                    (##null? _%all-supers9839698421%_))
                  (_%K9841998508%_)
                  (_%try-match9839898504%_)))))))
    (define base-struct
      (lambda _%all-supers98393%_ (base-struct/list _%all-supers98393%_)))
    (define find-super-constructor
      (lambda (_%super98344%_)
        (let _%lp98346%_ ((_%rest98348%_ _%super98344%_)
                          (_%constructor98349%_ '#f))
          (let* ((_%rest9835098358%_ _%rest98348%_)
                 (_%else9835298366%_ (lambda () _%constructor98349%_))
                 (_%K9835498381%_
                  (lambda (_%rest98369%_ _%hd98370%_)
                    (let ((_%$e98372%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd98370%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e98372%_
                          ((lambda (_%xconstructor98375%_)
                             (if (or (not _%constructor98349%_)
                                     (eq? _%constructor98349%_
                                          _%xconstructor98375%_))
                                 (_%lp98346%_
                                  _%rest98369%_
                                  _%xconstructor98375%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor98349%_
                                        _%xconstructor98375%_)))
                           _%$e98372%_)
                          (_%lp98346%_ _%rest98369%_ _%constructor98349%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest9835098358%_))
                (let ((_%hd9835598384%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9835098358%_)))
                      (_%tl9835698386%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9835098358%_))))
                  (let* ((_%hd98389%_ _%hd9835598384%_)
                         (_%rest98391%_ _%tl9835698386%_))
                    (_%K9835498381%_ _%rest98391%_ _%hd98389%_)))
                (_%else9835298366%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list98320%_ _%direct-slots98321%_)
        (let* ((_%next-slot98323%_ '1)
               (_%slot-table98325%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots98327%_ '(__class))
               (_%process-slot98331%_
                (lambda (_%slot98329%_)
                  (if (symbol? _%slot98329%_)
                      '#!void
                      (error '"invalid slot name" _%slot98329%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table98325%_
                              _%slot98329%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table98325%_
                           _%slot98329%_
                           _%next-slot98323%_))
                        (let ((__tmp100647
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot98329%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table98325%_
                           __tmp100647
                           _%next-slot98323%_))
                        (set! _%r-slots98327%_
                              (cons _%slot98329%_ _%r-slots98327%_))
                        (set! _%next-slot98323%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot98323%_ '1))))
                      '#!void)))
               (_%process-slots98337%_
                (lambda (_%g9833298334%_)
                  (for-each _%process-slot98331%_ _%g9833298334%_))))
          (let ((__tmp100649
                 (lambda (_%mixin98340%_)
                   (_%process-slots98337%_
                    (let ((__tmp100650
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin98340%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp100650 '())))))
                (__tmp100648 (reverse _%class-precedence-list98320%_)))
            (declare (not safe))
            (##for-each __tmp100649 __tmp100648))
          (_%process-slots98337%_ _%direct-slots98321%_)
          (let ((_%slot-vector98342%_
                 (list->vector
                  (let () (declare (not safe)) (##reverse _%r-slots98327%_)))))
            (values _%slot-vector98342%_ _%slot-table98325%_)))))
    (define make-class-type
      (lambda (_%id98245%_
               _%name98246%_
               _%direct-supers98247%_
               _%direct-slots98248%_
               _%properties98249%_
               _%constructor98250%_)
        (if (symbol? _%id98245%_)
            (let ((_%id98254%_ _%id98245%_))
              (if (symbol? _%name98246%_)
                  (let ((_%name98264%_ _%name98246%_))
                    (if (list? _%direct-supers98247%_)
                        (let ((_%direct-supers98274%_ _%direct-supers98247%_))
                          (if (list? _%direct-slots98248%_)
                              (let ((_%direct-slots98284%_
                                     _%direct-slots98248%_))
                                (if (list? _%properties98249%_)
                                    (let ((_%properties98294%_
                                           _%properties98249%_))
                                      (if ((lambda (_%$obj98303%_)
                                             (or (not _%$obj98303%_)
                                                 (symbol? _%$obj98303%_)))
                                           _%constructor98250%_)
                                          (let ((_%constructor98310%_
                                                 _%constructor98250%_))
                                            (__make-class-type
                                             _%id98254%_
                                             _%name98264%_
                                             _%direct-supers98274%_
                                             _%direct-slots98284%_
                                             _%properties98294%_
                                             _%constructor98310%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor98250%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties98249%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots98248%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers98247%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name98246%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id98245%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id98114%_
               _%name98115%_
               _%direct-supers98116%_
               _%direct-slots98117%_
               _%properties98118%_
               _%constructor98119%_)
        (let* ((_%id98122%_ _%id98114%_)
               (_%name98130%_ _%name98115%_)
               (_%direct-supers98138%_ _%direct-supers98116%_)
               (_%direct-slots98146%_ _%direct-slots98117%_)
               (_%properties98154%_ _%properties98118%_)
               (_%constructor98162%_ _%constructor98119%_))
          (let ((_%$e98174%_
                 (let ((__tmp100651
                        (lambda (_%$obj98171%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj98171%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp100651 _%direct-supers98138%_))))
            (if _%$e98174%_
                ((lambda (_%g9817698178%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g9817698178%_))
                 _%$e98174%_)
                (let ((_%$e98181%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final? _%direct-supers98138%_))))
                  (if _%$e98181%_
                      ((lambda (_%g9818398185%_)
                         (error '"Cannot extend final class" _%g9818398185%_))
                       _%$e98181%_)
                      '#!void))))
          (let ((_g100652_ (compute-precedence-list _%direct-supers98138%_)))
            (begin
              (let ((_g100653_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g100652_)
                           (##vector-length _g100652_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g100653_ 2)))
                    (error "Context expects 2 values" _g100653_)))
              (let ((_%precedence-list98188%_
                     (let () (declare (not safe)) (##vector-ref _g100652_ 0)))
                    (_%struct-super98189%_
                     (let () (declare (not safe)) (##vector-ref _g100652_ 1))))
                (let ((_g100654_
                       (compute-class-slots
                        _%precedence-list98188%_
                        _%direct-slots98146%_)))
                  (begin
                    (let ((_g100655_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g100654_)
                                 (##vector-length _g100654_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g100655_ 2)))
                          (error "Context expects 2 values" _g100655_)))
                    (let ((_%slot-vector98191%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g100654_ 0)))
                          (_%slot-table98192%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g100654_ 1))))
                      (let* ((_%properties98194%_
                              (cons (cons 'direct-slots: _%direct-slots98146%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers98138%_)
                                          _%properties98154%_)))
                             (_%constructor*98199%_
                              (let ((_%$e98196%_ _%constructor98162%_))
                                (if _%$e98196%_
                                    _%$e98196%_
                                    (find-super-constructor
                                     _%direct-supers98138%_))))
                             (_%precedence-list98242%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties98194%_))
                                      (memq object::t
                                            _%precedence-list98188%_))
                                  _%precedence-list98188%_
                                  (let _%loop98204%_ ((_%tail98206%_
                                                       _%precedence-list98188%_)
                                                      (_%head98207%_ '()))
                                    (let* ((_%tail9820898216%_ _%tail98206%_)
                                           (_%else9821098224%_
                                            (lambda ()
                                              (let ((__tmp100656
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp100656
                                                 _%head98207%_))))
                                           (_%K9821298230%_
                                            (lambda (_%rest98227%_ _%hd98228%_)
                                              (if (eq? _%hd98228%_ t::t)
                                                  (let ((__tmp100657
                                                         (cons object::t
                                                               _%tail98206%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp100657
                                                     _%head98207%_))
                                                  (_%loop98204%_
                                                   _%rest98227%_
                                                   (cons _%hd98228%_
                                                         _%head98207%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tail9820898216%_))
                                          (let ((_%hd9821398233%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail9820898216%_)))
                                                (_%tl9821498235%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail9820898216%_))))
                                            (let* ((_%hd98238%_
                                                    _%hd9821398233%_)
                                                   (_%rest98240%_
                                                    _%tl9821498235%_))
                                              (_%K9821298230%_
                                               _%rest98240%_
                                               _%hd98238%_)))
                                          (_%else9821098224%_)))))))
                        (make-class-type-descriptor
                         _%id98122%_
                         _%name98130%_
                         _%struct-super98189%_
                         _%precedence-list98242%_
                         _%slot-vector98191%_
                         _%properties98194%_
                         _%constructor*98199%_
                         _%slot-table98192%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass98100%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98100%_ 'class))
            (let ((_%klass98104%_ _%klass98100%_))
              (__class-precedence-list _%klass98104%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass98100%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass98088%_)
        (let ((_%klass98091%_ _%klass98088%_))
          (cons _%klass98091%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass98091%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers98085%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers98085%_))))
    (define make-class-predicate
      (lambda (_%klass98071%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98071%_ 'class))
            (let ((_%klass98075%_ _%klass98071%_))
              (__make-class-predicate _%klass98075%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass98071%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass98042%_)
        (let* ((_%klass98045%_ _%klass98042%_)
               (_%tid98054%_
                (let () (declare (not safe)) (##type-id _%klass98045%_))))
          (if (__class-type-final? _%klass98045%_)
              (lambda (_%g9805698058%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g9805698058%_
                   _%tid98054%_)))
              (if (__class-type-struct? _%klass98045%_)
                  (lambda (_%g9806198063%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%g9806198063%_ _%tid98054%_)))
                  (lambda (_%g9806698068%_)
                    (__class-instance? _%klass98045%_ _%g9806698068%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass98017%_ _%slot98018%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98017%_ 'class))
            (let ((_%klass98022%_ _%klass98017%_))
              (if (symbol? _%slot98018%_)
                  (let ((_%slot98032%_ _%slot98018%_))
                    (__make-class-slot-accessor _%klass98022%_ _%slot98032%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot98018%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass98017%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass97985%_ _%slot97986%_)
        (let* ((_%klass97989%_ _%klass97985%_)
               (_%slot97997%_ _%slot97986%_)
               (_%field98006%_
                (let ((__tmp100658
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass97989%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp100658 _%slot97997%_ '#f))))
          (if (not _%field98006%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass97989%_
                       'slot:
                       _%slot97997%_)
                '#!void)
              (if (__class-type-final? _%klass97989%_)
                  (make-final-slot-accessor
                   _%klass97989%_
                   _%slot97997%_
                   _%field98006%_)
                  (if (__class-type-struct? _%klass97989%_)
                      (make-struct-slot-accessor
                       _%klass97989%_
                       _%slot97997%_
                       _%field98006%_)
                      (if (let ((_%strukt98012%_
                                 (base-struct/1 _%klass97989%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt98012%_
                                    'class))
                                 (let ((__tmp100659
                                        (let ((__tmp100660
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt98012%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp100660))))
                                   (declare (not safe))
                                   (##fx< _%field98006%_ __tmp100659))))
                          (make-struct-subclass-slot-accessor
                           _%klass97989%_
                           _%slot97997%_
                           _%field98006%_)
                          (make-class-cached-slot-accessor
                           _%klass97989%_
                           _%slot97997%_
                           _%field98006%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass97960%_ _%slot97961%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97960%_ 'class))
            (let ((_%klass97965%_ _%klass97960%_))
              (if (symbol? _%slot97961%_)
                  (let ((_%slot97975%_ _%slot97961%_))
                    (__make-class-slot-mutator _%klass97965%_ _%slot97975%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot97961%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass97960%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass97928%_ _%slot97929%_)
        (let* ((_%klass97932%_ _%klass97928%_)
               (_%slot97940%_ _%slot97929%_)
               (_%field97949%_
                (let ((__tmp100661
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass97932%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp100661 _%slot97940%_ '#f))))
          (if (not _%field97949%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass97932%_
                       'slot:
                       _%slot97940%_)
                '#!void)
              (if (__class-type-final? _%klass97932%_)
                  (make-final-slot-mutator
                   _%klass97932%_
                   _%slot97940%_
                   _%field97949%_)
                  (if (__class-type-struct? _%klass97932%_)
                      (make-struct-slot-mutator
                       _%klass97932%_
                       _%slot97940%_
                       _%field97949%_)
                      (if (let ((_%strukt97955%_
                                 (base-struct/1 _%klass97932%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt97955%_
                                    'class))
                                 (let ((__tmp100662
                                        (let ((__tmp100663
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt97955%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp100663))))
                                   (declare (not safe))
                                   (##fx< _%field97949%_ __tmp100662))))
                          (make-struct-subclass-slot-mutator
                           _%klass97932%_
                           _%slot97940%_
                           _%field97949%_)
                          (make-class-cached-slot-mutator
                           _%klass97932%_
                           _%slot97940%_
                           _%field97949%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass97903%_ _%slot97904%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97903%_ 'class))
            (let ((_%klass97908%_ _%klass97903%_))
              (if (symbol? _%slot97904%_)
                  (let ((_%slot97918%_ _%slot97904%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass97908%_
                     _%slot97918%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot97904%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass97903%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass97871%_ _%slot97872%_)
        (let* ((_%klass97875%_ _%klass97871%_)
               (_%slot97883%_ _%slot97872%_)
               (_%field97892%_
                (let ((__tmp100664
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass97875%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp100664 _%slot97883%_ '#f))))
          (if (not _%field97892%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass97875%_
                       'slot:
                       _%slot97883%_)
                '#!void)
              (if (__class-type-final? _%klass97875%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass97875%_
                   _%slot97883%_
                   _%field97892%_)
                  (if (__class-type-struct? _%klass97875%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass97875%_
                       _%slot97883%_
                       _%field97892%_)
                      (if (let ((_%strukt97898%_
                                 (base-struct/1 _%klass97875%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt97898%_
                                    'class))
                                 (let ((__tmp100665
                                        (let ((__tmp100666
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt97898%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp100666))))
                                   (declare (not safe))
                                   (##fx< _%field97892%_ __tmp100665))))
                          (make-struct-slot-unchecked-accessor
                           _%klass97875%_
                           _%slot97883%_
                           _%field97892%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass97875%_
                           _%slot97883%_
                           _%field97892%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass97846%_ _%slot97847%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97846%_ 'class))
            (let ((_%klass97851%_ _%klass97846%_))
              (if (symbol? _%slot97847%_)
                  (let ((_%slot97861%_ _%slot97847%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass97851%_
                     _%slot97861%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot97847%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass97846%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass97814%_ _%slot97815%_)
        (let* ((_%klass97818%_ _%klass97814%_)
               (_%slot97826%_ _%slot97815%_)
               (_%field97835%_
                (let ((__tmp100667
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass97818%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp100667 _%slot97826%_ '#f))))
          (if (not _%field97835%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass97818%_
                       'slot:
                       _%slot97826%_)
                '#!void)
              (if (__class-type-final? _%klass97818%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass97818%_
                   _%slot97826%_
                   _%field97835%_)
                  (if (__class-type-struct? _%klass97818%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass97818%_
                       _%slot97826%_
                       _%field97835%_)
                      (if (let ((_%strukt97841%_
                                 (base-struct/1 _%klass97818%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt97841%_
                                    'class))
                                 (let ((__tmp100668
                                        (let ((__tmp100669
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt97841%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp100669))))
                                   (declare (not safe))
                                   (##fx< _%field97835%_ __tmp100668))))
                          (make-struct-slot-unchecked-mutator
                           _%klass97818%_
                           _%slot97826%_
                           _%field97835%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass97818%_
                           _%slot97826%_
                           _%field97835%_))))))))
    (define not-an-instance__%
      (lambda (_%object97798%_ _%class97799%_ _%slot97800%_)
        (apply error
               '"not an instance"
               'object:
               _%object97798%_
               'class:
               _%class97799%_
               (if _%slot97800%_ (cons 'slot: (cons _%slot97800%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object97805%_ _%class97806%_)
        (let ((_%slot97808%_ '#f))
          (not-an-instance__% _%object97805%_ _%class97806%_ _%slot97808%_))))
    (define not-an-instance
      (lambda _g100671_
        (let ((_g100670_ (let () (declare (not safe)) (##length _g100671_))))
          (cond ((let () (declare (not safe)) (##fx= _g100670_ 2))
                 (apply not-an-instance__0 _g100671_))
                ((let () (declare (not safe)) (##fx= _g100670_ 3))
                 (apply not-an-instance__% _g100671_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g100671_))))))
    (define make-final-slot-accessor
      (lambda (_%klass97791%_ _%slot97792%_ _%field97793%_)
        (lambda (_%obj97795%_)
          (##direct-structure-ref
           _%obj97795%_
           _%field97793%_
           _%klass97791%_
           _%slot97792%_))))
    (define make-final-slot-mutator
      (lambda (_%klass97784%_ _%slot97785%_ _%field97786%_)
        (lambda (_%obj97788%_ _%val97789%_)
          (##direct-structure-set!
           _%obj97788%_
           _%val97789%_
           _%field97786%_
           _%klass97784%_
           _%slot97785%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass97778%_ _%slot97779%_ _%field97780%_)
        (lambda (_%obj97782%_)
          (##structure-ref
           _%obj97782%_
           _%field97780%_
           _%klass97778%_
           _%slot97779%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass97771%_ _%slot97772%_ _%field97773%_)
        (lambda (_%obj97775%_ _%val97776%_)
          (##structure-set!
           _%obj97775%_
           _%val97776%_
           _%field97773%_
           _%klass97771%_
           _%slot97772%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass97765%_ _%slot97766%_ _%field97767%_)
        (lambda (_%obj97769%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj97769%_
             _%field97767%_
             _%klass97765%_
             _%slot97766%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass97758%_ _%slot97759%_ _%field97760%_)
        (lambda (_%obj97762%_ _%val97763%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj97762%_
             _%val97763%_
             _%field97760%_
             _%klass97758%_
             _%slot97759%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass97752%_ _%slot97753%_ _%field97754%_)
        (lambda (_%obj97756%_)
          (if (class-instance? _%klass97752%_ _%obj97756%_)
              (unchecked-slot-ref _%obj97756%_ _%field97754%_)
              (not-an-instance__%
               _%obj97756%_
               _%klass97752%_
               _%slot97753%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass97745%_ _%slot97746%_ _%field97747%_)
        (lambda (_%obj97749%_ _%val97750%_)
          (if (class-instance? _%klass97745%_ _%obj97749%_)
              (unchecked-field-set! _%obj97749%_ _%field97747%_ _%val97750%_)
              (not-an-instance__%
               _%obj97749%_
               _%klass97745%_
               _%slot97746%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass97736%_ _%slot97737%_ _%field97738%_)
        (lambda (_%obj97740%_)
          (if (let ((__tmp100672
                     (let () (declare (not safe)) (##type-id _%klass97736%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj97740%_ __tmp100672))
              (unchecked-field-ref _%obj97740%_ _%field97738%_)
              (if (class-instance? _%klass97736%_ _%obj97740%_)
                  (unchecked-slot-ref _%obj97740%_ _%slot97737%_)
                  (not-an-instance__%
                   _%obj97740%_
                   _%klass97736%_
                   _%slot97737%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass97726%_ _%slot97727%_ _%field97728%_)
        (lambda (_%obj97730%_ _%val97731%_)
          (if (let ((__tmp100673
                     (let () (declare (not safe)) (##type-id _%klass97726%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj97730%_ __tmp100673))
              (unchecked-field-set! _%obj97730%_ _%field97728%_ _%val97731%_)
              (if (class-instance? _%klass97726%_ _%obj97730%_)
                  (unchecked-slot-set! _%obj97730%_ _%slot97727%_ _%val97731%_)
                  (not-an-instance__%
                   _%obj97730%_
                   _%klass97726%_
                   _%slot97727%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass97720%_ _%slot97721%_ _%field97722%_)
        (lambda (_%obj97724%_)
          (if (let ((__tmp100674
                     (let () (declare (not safe)) (##type-id _%klass97720%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj97724%_ __tmp100674))
              (unchecked-field-ref _%obj97724%_ _%field97722%_)
              (unchecked-slot-ref _%obj97724%_ _%slot97721%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass97713%_ _%slot97714%_ _%field97715%_)
        (lambda (_%obj97717%_ _%val97718%_)
          (if (let ((__tmp100675
                     (let () (declare (not safe)) (##type-id _%klass97713%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj97717%_ __tmp100675))
              (unchecked-field-set! _%obj97717%_ _%field97715%_ _%val97718%_)
              (unchecked-slot-set! _%obj97717%_ _%slot97714%_ _%val97718%_)))))
    (define class-slot-offset
      (lambda (_%klass97688%_ _%slot97689%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97688%_ 'class))
            (let ((_%klass97693%_ _%klass97688%_))
              (if (let () (declare (not safe)) (symbolic? _%slot97689%_))
                  (let ((_%slot97703%_ _%slot97689%_))
                    (__class-slot-offset _%klass97693%_ _%slot97703%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot97689%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass97688%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass97667%_ _%slot97668%_)
        (let* ((_%klass97671%_ _%klass97667%_)
               (_%slot97679%_ _%slot97668%_)
               (__tmp100676
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass97671%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp100676 _%slot97679%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass97641%_ _%obj97642%_ _%slot97643%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97641%_ 'class))
            (let ((_%klass97647%_ _%klass97641%_))
              (if (let () (declare (not safe)) (symbolic? _%slot97643%_))
                  (let ((_%slot97657%_ _%slot97643%_))
                    (__class-slot-ref
                     _%klass97647%_
                     _%obj97642%_
                     _%slot97657%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot97643%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass97641%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass97617%_ _%obj97618%_ _%slot97619%_)
        (let* ((_%klass97622%_ _%klass97617%_) (_%slot97630%_ _%slot97619%_))
          (if (__class-instance? _%klass97622%_ _%obj97618%_)
              (let ((_%off97639%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj97618%_))
                      _%slot97630%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj97618%_
                 _%off97639%_
                 _%klass97622%_
                 _%slot97630%_))
              (not-an-instance__0 _%obj97618%_ _%klass97622%_)))))
    (define class-slot-set!
      (lambda (_%klass97590%_ _%obj97591%_ _%slot97592%_ _%val97593%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97590%_ 'class))
            (let ((_%klass97597%_ _%klass97590%_))
              (if (let () (declare (not safe)) (symbolic? _%slot97592%_))
                  (let ((_%slot97607%_ _%slot97592%_))
                    (__class-slot-set!
                     _%klass97597%_
                     _%obj97591%_
                     _%slot97607%_
                     _%val97593%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot97592%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass97590%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass97565%_ _%obj97566%_ _%slot97567%_ _%val97568%_)
        (let* ((_%klass97571%_ _%klass97565%_) (_%slot97579%_ _%slot97567%_))
          (if (__class-instance? _%klass97571%_ _%obj97566%_)
              (let ((_%off97588%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj97566%_))
                      _%slot97579%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj97566%_
                 _%val97568%_
                 _%off97588%_
                 _%klass97571%_
                 _%slot97579%_))
              (not-an-instance__0 _%obj97566%_ _%klass97571%_)))))
    (define unchecked-field-ref
      (lambda (_%obj97562%_ _%off97563%_)
        (let ((__tmp100677
               (let () (declare (not safe)) (##structure-type _%obj97562%_))))
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj97562%_
           _%off97563%_
           __tmp100677
           '#f))))
    (define unchecked-field-set!
      (lambda (_%obj97558%_ _%off97559%_ _%val97560%_)
        (let ((__tmp100678
               (let () (declare (not safe)) (##structure-type _%obj97558%_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj97558%_
           _%val97560%_
           _%off97559%_
           __tmp100678
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj97555%_ _%slot97556%_)
        (unchecked-field-ref
         _%obj97555%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj97555%_))
          _%slot97556%_))))
    (define unchecked-slot-set!
      (lambda (_%obj97551%_ _%slot97552%_ _%val97553%_)
        (unchecked-field-set!
         _%obj97551%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj97551%_))
          _%slot97552%_)
         _%val97553%_)))
    (define slot-ref__%
      (lambda (_%obj97513%_ _%slot97514%_ _%E97515%_)
        (if (symbol? _%slot97514%_)
            (let ((_%slot97519%_ _%slot97514%_))
              (if (procedure? _%E97515%_)
                  (let ((_%E97529%_ _%E97515%_))
                    (__slot-ref__% _%obj97513%_ _%slot97519%_ _%E97529%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E97515%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot97514%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj97542%_ _%slot97543%_)
        (let ((_%E97545%_ __slot-error))
          (slot-ref__% _%obj97542%_ _%slot97543%_ _%E97545%_))))
    (define slot-ref
      (lambda _g100680_
        (let ((_g100679_ (let () (declare (not safe)) (##length _g100680_))))
          (cond ((let () (declare (not safe)) (##fx= _g100679_ 2))
                 (apply slot-ref__0 _g100680_))
                ((let () (declare (not safe)) (##fx= _g100679_ 3))
                 (apply slot-ref__% _g100680_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g100680_))))))
    (define __slot-ref__%
      (lambda (_%obj97469%_ _%slot97470%_ _%E97471%_)
        (let* ((_%slot97474%_ _%slot97470%_)
               (_%E97482%_ _%E97471%_)
               (_%klass97491%_ (class-of _%obj97469%_))
               (_%$e97494%_
                (__class-slot-offset _%klass97491%_ _%slot97474%_)))
          (if _%$e97494%_
              ((lambda (_%off97497%_)
                 (unchecked-field-ref _%obj97469%_ _%off97497%_))
               _%$e97494%_)
              (let ()
                (declare (not safe))
                (_%E97482%_ _%obj97469%_ _%slot97474%_))))))
    (define __slot-ref__0
      (lambda (_%obj97503%_ _%slot97504%_)
        (let ((_%E97506%_ __slot-error))
          (__slot-ref__% _%obj97503%_ _%slot97504%_ _%E97506%_))))
    (define __slot-ref
      (lambda _g100682_
        (let ((_g100681_ (let () (declare (not safe)) (##length _g100682_))))
          (cond ((let () (declare (not safe)) (##fx= _g100681_ 2))
                 (apply __slot-ref__0 _g100682_))
                ((let () (declare (not safe)) (##fx= _g100681_ 3))
                 (apply __slot-ref__% _g100682_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g100682_))))))
    (define slot-set!__%
      (lambda (_%obj97427%_ _%slot97428%_ _%val97429%_ _%E97430%_)
        (if (symbol? _%slot97428%_)
            (let ((_%slot97434%_ _%slot97428%_))
              (if (procedure? _%E97430%_)
                  (let ((_%E97444%_ _%E97430%_))
                    (__slot-set!__%
                     _%obj97427%_
                     _%slot97434%_
                     _%val97429%_
                     _%E97444%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E97430%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot97428%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj97457%_ _%slot97458%_ _%val97459%_)
        (let ((_%E97461%_ __slot-error))
          (slot-set!__% _%obj97457%_ _%slot97458%_ _%val97459%_ _%E97461%_))))
    (define slot-set!
      (lambda _g100684_
        (let ((_g100683_ (let () (declare (not safe)) (##length _g100684_))))
          (cond ((let () (declare (not safe)) (##fx= _g100683_ 3))
                 (apply slot-set!__0 _g100684_))
                ((let () (declare (not safe)) (##fx= _g100683_ 4))
                 (apply slot-set!__% _g100684_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g100684_))))))
    (define __slot-set!__%
      (lambda (_%obj97380%_ _%slot97381%_ _%val97382%_ _%E97383%_)
        (let* ((_%slot97386%_ _%slot97381%_)
               (_%E97394%_ _%E97383%_)
               (_%klass97403%_ (class-of _%obj97380%_))
               (_%$e97406%_
                (__class-slot-offset _%klass97403%_ _%slot97386%_)))
          (if _%$e97406%_
              ((lambda (_%off97409%_)
                 (unchecked-field-set! _%obj97380%_ _%off97409%_ _%val97382%_))
               _%$e97406%_)
              (let ()
                (declare (not safe))
                (_%E97394%_ _%obj97380%_ _%slot97386%_))))))
    (define __slot-set!__0
      (lambda (_%obj97415%_ _%slot97416%_ _%val97417%_)
        (let ((_%E97419%_ __slot-error))
          (__slot-set!__%
           _%obj97415%_
           _%slot97416%_
           _%val97417%_
           _%E97419%_))))
    (define __slot-set!
      (lambda _g100686_
        (let ((_g100685_ (let () (declare (not safe)) (##length _g100686_))))
          (cond ((let () (declare (not safe)) (##fx= _g100685_ 3))
                 (apply __slot-set!__0 _g100686_))
                ((let () (declare (not safe)) (##fx= _g100685_ 4))
                 (apply __slot-set!__% _g100686_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g100686_))))))
    (define __slot-error
      (lambda (_%obj97376%_ _%slot97377%_)
        (error '"Cannot find slot"
               'object:
               _%obj97376%_
               'slot:
               _%slot97377%_)))
    (define subclass?
      (lambda (_%maybe-sub-class97351%_ _%maybe-super-class97352%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class97351%_ 'class))
            (let ((_%maybe-sub-class97356%_ _%maybe-sub-class97351%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class97352%_
                     'class))
                  (let ((_%maybe-super-class97366%_
                         _%maybe-super-class97352%_))
                    (__subclass?
                     _%maybe-sub-class97356%_
                     _%maybe-super-class97366%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class97352%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class97351%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class97323%_ _%maybe-super-class97324%_)
        (let* ((_%maybe-sub-class97327%_ _%maybe-sub-class97323%_)
               (_%maybe-super-class97335%_ _%maybe-super-class97324%_)
               (_%maybe-super-class-id97344%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class97335%_)))
               (_%$e97346%_
                (eq? _%maybe-super-class-id97344%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class97327%_)))))
          (if _%$e97346%_
              _%$e97346%_
              (let ((__tmp100688
                     (lambda (_%super-class97349%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class97349%_))
                            _%maybe-super-class-id97344%_)))
                    (__tmp100687
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class97327%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp100688 __tmp100687))))))
    (define object?
      (lambda (_%o97320%_)
        (if (let () (declare (not safe)) (##structure? _%o97320%_))
            (let ((__tmp100689
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o97320%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp100689 'class))
            '#f)))
    (define object-type
      (lambda (_%o97315%_)
        (if (let () (declare (not safe)) (##structure? _%o97315%_))
            (let ((_%klass97318%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o97315%_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass97318%_ 'class))
                  _%klass97318%_
                  (begin
                    (error '"not an object" _%o97315%_ _%klass97318%_)
                    '#!void)))
            (begin (error '"not an object" _%o97315%_) '#!void))))
    (define direct-instance?
      (lambda (_%klass97300%_ _%obj97301%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97300%_ 'class))
            (let ((_%klass97305%_ _%klass97300%_))
              (__direct-instance? _%klass97305%_ _%obj97301%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass97300%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass97287%_ _%obj97288%_)
        (let* ((_%klass97291%_ _%klass97287%_)
               (__tmp100690
                (let () (declare (not safe)) (##type-id _%klass97291%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj97288%_ __tmp100690))))
    (define immediate-instance-of?
      (lambda (_%klass97283%_ _%obj97284%_)
        (if (let () (declare (not safe)) (##structure? _%obj97284%_))
            (eq? _%klass97283%_
                 (let () (declare (not safe)) (##structure-type _%obj97284%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass97268%_ _%obj97269%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97268%_ 'class))
            (let ((_%klass97273%_ _%klass97268%_))
              (__struct-instance? _%klass97273%_ _%obj97269%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass97268%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass97255%_ _%obj97256%_)
        (let* ((_%klass97259%_ _%klass97255%_)
               (__tmp100691
                (let () (declare (not safe)) (##type-id _%klass97259%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj97256%_ __tmp100691))))
    (define class-instance?
      (lambda (_%klass97240%_ _%obj97241%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97240%_ 'class))
            (let ((_%klass97245%_ _%klass97240%_))
              (__class-instance? _%klass97245%_ _%obj97241%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass97240%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass97225%_ _%obj97226%_)
        (let* ((_%klass97229%_ _%klass97225%_)
               (_%type97238%_ (class-of _%obj97226%_)))
          (__subclass? _%type97238%_ _%klass97229%_))))
    (define make-object
      (lambda (_%klass97200%_ _%k97201%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97200%_ 'class))
            (let ((_%klass97205%_ _%klass97200%_))
              (if (fixnum? _%k97201%_)
                  (let ((_%k97215%_ _%k97201%_))
                    (__make-object _%klass97205%_ _%k97215%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k97201%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass97200%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass97177%_ _%k97178%_)
        (let* ((_%klass97181%_ _%klass97177%_) (_%k97189%_ _%k97178%_))
          (if (__class-type-system? _%klass97181%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass97181%_)
                '#!void)
              (let ((_%obj97198%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass97181%_ _%k97189%_))))
                (object-fill! _%obj97198%_ '#f))))))
    (define object-fill!
      (lambda (_%obj97162%_ _%fill97163%_)
        (if '#t
            (let ((_%obj97167%_ _%obj97162%_))
              (__object-fill! _%obj97167%_ _%fill97163%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj97162%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj97144%_ _%fill97145%_)
        (let ((_%obj97148%_ _%obj97144%_))
          (let _%loop97157%_ ((_%i97159%_
                               (let ((__tmp100692
                                      (let ()
                                        (declare (not safe))
                                        (##structure-length _%obj97148%_))))
                                 (declare (not safe))
                                 (##fx- __tmp100692 '1))))
            (if (let () (declare (not safe)) (##fx> _%i97159%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj97148%_
                     _%fill97145%_
                     _%i97159%_
                     '#f
                     '#f))
                  (_%loop97157%_
                   (let () (declare (not safe)) (##fx- _%i97159%_ '1))))
                _%obj97148%_)))))
    (define new-instance
      (lambda (_%klass97130%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97130%_ 'class))
            (let ((_%klass97134%_ _%klass97130%_))
              (__new-instance _%klass97134%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass97130%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass97118%_)
        (let* ((_%klass97121%_ _%klass97118%_)
               (__obj100607
                (let ((__tmp100693
                       (let ((__tmp100694
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass97121%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp100694))))
                  (declare (not safe))
                  (##make-structure _%klass97121%_ __tmp100693))))
          (object-fill! __obj100607 '#f)
          __obj100607)))
    (define make-instance
      (lambda (_%klass97103%_ . _%args97104%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97103%_ 'class))
            (let ((_%klass97108%_ _%klass97103%_))
              (declare (not safe))
              (##apply __make-instance _%klass97108%_ _%args97104%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass97103%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass97075%_ . _%args97076%_)
        (let* ((_%klass97079%_ _%klass97075%_)
               (_%$e97088%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass97079%_ '10 '#f '#f))))
          (if _%$e97088%_
              ((lambda (_%kons-id97091%_)
                 (let ((_%obj97093%_ (__new-instance _%klass97079%_)))
                   (___constructor-init!
                    _%klass97079%_
                    _%kons-id97091%_
                    _%obj97093%_
                    _%args97076%_)
                   _%obj97093%_))
               _%$e97088%_)
              (if (__class-type-metaclass? _%klass97079%_)
                  (let ((_%obj97096%_ (__new-instance _%klass97079%_)))
                    (__metaclass-instance-init!
                     _%klass97079%_
                     _%obj97096%_
                     _%args97076%_)
                    _%obj97096%_)
                  (if (__class-type-struct? _%klass97079%_)
                      (if (let ((__tmp100696
                                 (__class-type-field-count _%klass97079%_))
                                (__tmp100695
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args97076%_))))
                            (declare (not safe))
                            (##fx= __tmp100696 __tmp100695))
                          (apply ##structure _%klass97079%_ _%args97076%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass97079%_
                                   'slots:
                                   (__class-type-slot-list _%klass97079%_)
                                   'args:
                                   _%args97076%_)
                            '#!void))
                      (let ((_%obj97099%_ (__new-instance _%klass97079%_)))
                        (___class-instance-init!
                         _%klass97079%_
                         _%obj97099%_
                         _%args97076%_)
                        _%obj97099%_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj97060%_ . _%args97061%_)
        (if '#t
            (let ((_%obj97065%_ _%obj97060%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj97065%_ _%args97061%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj97060%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj97047%_ . _%args97048%_)
        (let ((_%obj97051%_ _%obj97047%_))
          (if (let ((__tmp100698
                     (let () (declare (not safe)) (##length _%args97048%_)))
                    (__tmp100697
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj97051%_))))
                (declare (not safe))
                (##fx< __tmp100698 __tmp100697))
              (___struct-instance-init! _%obj97051%_ _%args97048%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj97051%_
                     'args:
                     _%args97048%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj97006%_ _%args97007%_)
        (let _%lp97009%_ ((_%k97011%_ '1) (_%rest97012%_ _%args97007%_))
          (let* ((_%rest9701397021%_ _%rest97012%_)
                 (_%else9701597029%_ (lambda () _%obj97006%_))
                 (_%K9701797035%_
                  (lambda (_%rest97032%_ _%hd97033%_)
                    (unchecked-field-set! _%obj97006%_ _%k97011%_ _%hd97033%_)
                    (_%lp97009%_
                     (let () (declare (not safe)) (##fx+ _%k97011%_ '1))
                     _%rest97032%_))))
            (if (let () (declare (not safe)) (##pair? _%rest9701397021%_))
                (let ((_%hd9701897038%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9701397021%_)))
                      (_%tl9701997040%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9701397021%_))))
                  (let* ((_%hd97043%_ _%hd9701897038%_)
                         (_%rest97045%_ _%tl9701997040%_))
                    (_%K9701797035%_ _%rest97045%_ _%hd97043%_)))
                (_%else9701597029%_))))))
    (define class-instance-init!
      (lambda (_%obj96991%_ . _%args96992%_)
        (if '#t
            (let ((_%obj96996%_ _%obj96991%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj96996%_ _%args96992%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj96991%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj96978%_ . _%args96979%_)
        (let ((_%obj96982%_ _%obj96978%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj96982%_))
           _%obj96982%_
           _%args96979%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass96920%_ _%obj96921%_ _%args96922%_)
        (let _%lp96924%_ ((_%rest96926%_ _%args96922%_))
          (let* ((_%rest9692796937%_ _%rest96926%_)
                 (_%else9692996945%_
                  (lambda ()
                    (if (null? _%rest96926%_)
                        _%obj96921%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass96920%_
                               'rest:
                               _%rest96926%_))))
                 (_%K9693196959%_
                  (lambda (_%rest96948%_ _%val96949%_ _%key96950%_)
                    (if (keyword? _%key96950%_)
                        (let ((_%$e96953%_
                               (__class-slot-offset
                                _%klass96920%_
                                _%key96950%_)))
                          (if _%$e96953%_
                              ((lambda (_%off96956%_)
                                 (unchecked-field-set!
                                  _%obj96921%_
                                  _%off96956%_
                                  _%val96949%_)
                                 (_%lp96924%_ _%rest96948%_))
                               _%$e96953%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass96920%_
                                     'slot:
                                     _%key96950%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key96950%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest9692796937%_))
                (let ((_%hd9693296962%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9692796937%_)))
                      (_%tl9693396964%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9692796937%_))))
                  (let ((_%key96967%_ _%hd9693296962%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9693396964%_))
                        (let ((_%hd9693496969%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9693396964%_)))
                              (_%tl9693596971%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9693396964%_))))
                          (let* ((_%val96974%_ _%hd9693496969%_)
                                 (_%rest96976%_ _%tl9693596971%_))
                            (_%K9693196959%_
                             _%rest96976%_
                             _%val96974%_
                             _%key96967%_)))
                        (_%else9692996945%_))))
                (_%else9692996945%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass96916%_ _%obj96917%_ _%args96918%_)
        (apply call-method
               _%klass96916%_
               'instance-init!
               _%obj96917%_
               _%args96918%_)))
    (define constructor-init!
      (lambda (_%klass96879%_ _%kons-id96880%_ _%obj96881%_ . _%args96882%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96879%_ 'class))
            (let ((_%klass96886%_ _%klass96879%_))
              (if (symbol? _%kons-id96880%_)
                  (let ((_%kons-id96896%_ _%kons-id96880%_))
                    (if '#t
                        (let ((_%obj96906%_ _%obj96881%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass96886%_
                                   _%kons-id96896%_
                                   _%obj96906%_
                                   _%args96882%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                           'contract:
                           'true
                           'value:
                           _%obj96881%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id96880%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass96879%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass96848%_ _%kons-id96849%_ _%obj96850%_ . _%args96851%_)
        (let* ((_%klass96854%_ _%klass96848%_)
               (_%kons-id96862%_ _%kons-id96849%_)
               (_%obj96870%_ _%obj96850%_))
          (___constructor-init!
           _%klass96854%_
           _%kons-id96862%_
           _%obj96870%_
           _%args96851%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass96837%_ _%kons-id96838%_ _%obj96839%_ _%args96840%_)
        (let ((_%$e96842%_
               (__find-method _%klass96837%_ _%obj96839%_ _%kons-id96838%_)))
          (if _%$e96842%_
              ((lambda (_%kons96845%_)
                 (apply _%kons96845%_ _%obj96839%_ _%args96840%_)
                 _%obj96839%_)
               _%$e96842%_)
              (error '"missing constructor"
                     'class:
                     _%klass96837%_
                     'method:
                     _%kons-id96838%_)))))
    (define struct-copy
      (lambda (_%struct96823%_)
        (if '#t
            (let ((_%struct96827%_ _%struct96823%_))
              (__struct-copy _%struct96827%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct96823%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct96811%_)
        (let ((_%struct96814%_ _%struct96811%_))
          (declare (not safe))
          (##structure-copy _%struct96814%_))))
    (define struct->list
      (lambda (_%obj96797%_)
        (if '#t
            (let ((_%obj96801%_ _%obj96797%_)) (__struct->list _%obj96801%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj96797%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj96785%_)
        (let ((_%obj96788%_ _%obj96785%_))
          (declare (not safe))
          (##vector->list _%obj96788%_))))
    (define class->list
      (lambda (_%obj96771%_)
        (if '#t
            (let ((_%obj96775%_ _%obj96771%_)) (__class->list _%obj96775%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@837.20-837.23"
               'contract:
               'true
               'value:
               _%obj96771%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj96747%_)
        (let* ((_%obj96750%_ _%obj96747%_)
               (_%klass96759%_
                (let () (declare (not safe)) (##structure-type _%obj96750%_)))
               (_%slot-vector96761%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass96759%_ '7 '#f '#f))))
          (let _%loop96763%_ ((_%index96765%_
                               (let ((__tmp100699
                                      (let ()
                                        (declare (not safe))
                                        (##vector-length
                                         _%slot-vector96761%_))))
                                 (declare (not safe))
                                 (##fx- __tmp100699 '1)))
                              (_%plist96766%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index96765%_ '1))
                (cons _%klass96759%_ _%plist96766%_)
                (let ((_%slot96769%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%slot-vector96761%_ _%index96765%_))))
                  (_%loop96763%_
                   (let () (declare (not safe)) (##fx- _%index96765%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot96769%_))
                         (cons (unchecked-field-ref
                                _%obj96750%_
                                _%index96765%_)
                               _%plist96766%_)))))))))
    (define call-method
      (lambda (_%obj96731%_ _%id96732%_ . _%args96733%_)
        (if (symbol? _%id96732%_)
            (let ((_%id96737%_ _%id96732%_))
              (declare (not safe))
              (##apply __call-method _%obj96731%_ _%id96737%_ _%args96733%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.24-852.26"
               'contract:
               'symbol?
               'value:
               _%id96732%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj96700%_ _%id96701%_ . _%args96702%_)
        (let* ((_%id96705%_ _%id96701%_)
               (_%$e96714%_ (__method-ref _%obj96700%_ _%id96705%_)))
          (if _%$e96714%_
              ((lambda (_%method96717%_)
                 (let ((_%method96719%_ _%method96717%_))
                   (apply _%method96719%_ _%obj96700%_ _%args96702%_)))
               _%$e96714%_)
              (error '"cannot find method"
                     'object:
                     _%obj96700%_
                     'method:
                     _%id96705%_)))))
    (define method-ref
      (lambda (_%obj96685%_ _%id96686%_)
        (if (symbol? _%id96686%_)
            (let ((_%id96690%_ _%id96686%_))
              (__method-ref _%obj96685%_ _%id96690%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@879.23-879.25"
               'contract:
               'symbol?
               'value:
               _%id96686%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj96672%_ _%id96673%_)
        (let ((_%id96676%_ _%id96673%_))
          (__find-method (class-of _%obj96672%_) _%obj96672%_ _%id96676%_))))
    (define checked-method-ref
      (lambda (_%obj96665%_ _%id96666%_)
        (let ((_%$e96669%_ (method-ref _%obj96665%_ _%id96666%_)))
          (if _%$e96669%_
              _%$e96669%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj96665%_
                       'method:
                       _%id96666%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj96650%_ _%id96651%_)
        (if (symbol? _%id96651%_)
            (let ((_%id96655%_ _%id96651%_))
              (__bound-method-ref _%obj96650%_ _%id96655%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@887.29-887.31"
               'contract:
               'symbol?
               'value:
               _%id96651%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj96618%_ _%id96619%_)
        (let* ((_%id96622%_ _%id96619%_)
               (_%$e96631%_ (__method-ref _%obj96618%_ _%id96622%_)))
          (if _%$e96631%_
              ((lambda (_%method96634%_)
                 (let ((_%method96636%_ _%method96634%_))
                   (lambda _%args96647%_
                     (apply _%method96636%_ _%obj96618%_ _%args96647%_))))
               _%$e96631%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj96603%_ _%id96604%_)
        (if (symbol? _%id96604%_)
            (let ((_%id96608%_ _%id96604%_))
              (__checked-bound-method-ref _%obj96603%_ _%id96608%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@896.37-896.39"
               'contract:
               'symbol?
               'value:
               _%id96604%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj96586%_ _%id96587%_)
        (let* ((_%id96590%_ _%id96587%_)
               (_%method96599%_ (checked-method-ref _%obj96586%_ _%id96590%_)))
          (lambda _%args96601%_
            (apply _%method96599%_ _%obj96586%_ _%args96601%_)))))
    (define find-method
      (lambda (_%klass96560%_ _%obj96561%_ _%id96562%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96560%_ 'class))
            (let ((_%klass96566%_ _%klass96560%_))
              (if (symbol? _%id96562%_)
                  (let ((_%id96576%_ _%id96562%_))
                    (__find-method _%klass96566%_ _%obj96561%_ _%id96576%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@901.41-901.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id96562%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@901.20-901.25"
               'contract:
               'class-type?
               'value:
               _%klass96560%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass96533%_ _%obj96534%_ _%id96535%_)
        (let* ((_%klass96538%_ _%klass96533%_)
               (_%id96546%_ _%id96535%_)
               (_%$e96555%_
                (__direct-method-ref _%klass96538%_ _%obj96534%_ _%id96546%_)))
          (if _%$e96555%_
              _%$e96555%_
              (if (__class-type-sealed? _%klass96538%_)
                  '#f
                  (__mixin-method-ref
                   _%klass96538%_
                   _%obj96534%_
                   _%id96546%_))))))
    (define mixin-find-method
      (lambda (_%mixins96517%_ _%obj96518%_ _%id96519%_)
        (if (symbol? _%id96519%_)
            (let ((_%id96523%_ _%id96519%_))
              (__mixin-find-method _%mixins96517%_ _%obj96518%_ _%id96523%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@909.37-909.39"
               'contract:
               'symbol?
               'value:
               _%id96519%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins96499%_ _%obj96500%_ _%id96501%_)
        (let* ((_%id96504%_ _%id96501%_)
               (__tmp100700
                (lambda (_%g9651296514%_)
                  (direct-method-ref
                   _%g9651296514%_
                   _%obj96500%_
                   _%id96504%_))))
          (declare (not safe))
          (__ormap1 __tmp100700 _%mixins96499%_))))
    (define direct-method-ref
      (lambda (_%klass96473%_ _%obj96474%_ _%id96475%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96473%_ 'class))
            (let ((_%klass96479%_ _%klass96473%_))
              (if (symbol? _%id96475%_)
                  (let ((_%id96489%_ _%id96475%_))
                    (__direct-method-ref
                     _%klass96479%_
                     _%obj96474%_
                     _%id96489%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@912.47-912.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id96475%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@912.26-912.31"
               'contract:
               'class-type?
               'value:
               _%klass96473%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass96427%_ _%obj96428%_ _%id96429%_)
        (let* ((_%klass96432%_ _%klass96427%_) (_%id96440%_ _%id96429%_))
          (letrec ((_%metaclass-resolve-method96449%_
                    (lambda ()
                      (let ((__method100608
                             (__method-ref _%klass96432%_ 'direct-method-ref)))
                        (if __method100608
                            (let ()
                              (declare (not safe))
                              (__method100608
                               _%klass96432%_
                               _%obj96428%_
                               _%id96440%_))
                            (begin
                              (error '"Missing method"
                                     _%klass96432%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!96450%_
                    (lambda ()
                      (let ((_%method96470%_
                             (_%metaclass-resolve-method96449%_)))
                        (let ((__tmp100702
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass96432%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp100701
                               (if _%method96470%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp100702
                           _%id96440%_
                           __tmp100701))
                        _%method96470%_))))
            (let ((_%$e96452%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass96432%_ '11 '#f '#f))))
              (if _%$e96452%_
                  ((lambda (_%ht96455%_)
                     (let ((_%method96457%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht96455%_
                               _%id96440%_
                               '#f))))
                       (if (procedure? _%method96457%_)
                           _%method96457%_
                           (if (__class-type-metaclass? _%klass96432%_)
                               (let ((_%$e96461%_ _%method96457%_))
                                 (if (eq? 'resolved _%$e96461%_)
                                     (_%metaclass-resolve-method96449%_)
                                     (if (eq? 'unknown _%$e96461%_)
                                         '#f
                                         (_%metaclass-resolve-method!96450%_))))
                               '#f))))
                   _%$e96452%_)
                  (if (__class-type-metaclass? _%klass96432%_)
                      (let ((_%tab96466%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass96432%_
                           _%tab96466%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!96450%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass96401%_ _%obj96402%_ _%id96403%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96401%_ 'class))
            (let ((_%klass96407%_ _%klass96401%_))
              (if (symbol? _%id96403%_)
                  (let ((_%id96417%_ _%id96403%_))
                    (__mixin-method-ref
                     _%klass96407%_
                     _%obj96402%_
                     _%id96417%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@942.46-942.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id96403%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@942.25-942.30"
               'contract:
               'class-type?
               'value:
               _%klass96401%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass96379%_ _%obj96380%_ _%id96381%_)
        (let* ((_%klass96384%_ _%klass96379%_) (_%id96392%_ _%id96381%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass96384%_ '6 '#f '#f))
           _%obj96380%_
           _%id96392%_))))
    (define bind-method!__%
      (lambda (_%klass96338%_ _%id96339%_ _%proc96340%_ _%rebind?96341%_)
        (if (symbol? _%id96339%_)
            (let ((_%id96345%_ _%id96339%_))
              (if (procedure? _%proc96340%_)
                  (let ((_%proc96355%_ _%proc96340%_))
                    (__bind-method!__%
                     _%klass96338%_
                     _%id96345%_
                     _%proc96355%_
                     _%rebind?96341%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@945.42-945.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc96340%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@945.27-945.29"
               'contract:
               'symbol?
               'value:
               _%id96339%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass96368%_ _%id96369%_ _%proc96370%_)
        (let ((_%rebind?96372%_ '#f))
          (bind-method!__%
           _%klass96368%_
           _%id96369%_
           _%proc96370%_
           _%rebind?96372%_))))
    (define bind-method!
      (lambda _g100704_
        (let ((_g100703_ (let () (declare (not safe)) (##length _g100704_))))
          (cond ((let () (declare (not safe)) (##fx= _g100703_ 3))
                 (apply bind-method!__0 _g100704_))
                ((let () (declare (not safe)) (##fx= _g100703_ 4))
                 (apply bind-method!__% _g100704_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g100704_))))))
    (define __bind-method!__%
      (lambda (_%klass96289%_ _%id96290%_ _%proc96291%_ _%rebind?96292%_)
        (let* ((_%id96295%_ _%id96290%_) (_%proc96303%_ _%proc96291%_))
          (letrec ((_%bind!96312%_
                    (lambda (_%ht96321%_)
                      (if (and (not _%rebind?96292%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht96321%_
                                  _%id96295%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass96289%_
                                 'method:
                                 _%id96295%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht96321%_
                               _%id96295%_
                               _%proc96303%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass96289%_ 'class))
                (let ((_%ht96315%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass96289%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht96315%_
                      (_%bind!96312%_ _%ht96315%_)
                      (let ((_%ht96317%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass96289%_
                           _%ht96317%_
                           '11
                           '#f
                           '#f))
                        (_%bind!96312%_ _%ht96317%_))))
                (if (let () (declare (not safe)) (##type? _%klass96289%_))
                    (__bind-method!__%
                     (__shadow-class _%klass96289%_)
                     _%id96295%_
                     _%proc96303%_
                     _%rebind?96292%_)
                    (error '"bad class; expected class or builtin type"
                           _%klass96289%_)))))))
    (define __bind-method!__0
      (lambda (_%klass96326%_ _%id96327%_ _%proc96328%_)
        (let ((_%rebind?96330%_ '#f))
          (__bind-method!__%
           _%klass96326%_
           _%id96327%_
           _%proc96328%_
           _%rebind?96330%_))))
    (define __bind-method!
      (lambda _g100706_
        (let ((_g100705_ (let () (declare (not safe)) (##length _g100706_))))
          (cond ((let () (declare (not safe)) (##fx= _g100705_ 3))
                 (apply __bind-method!__0 _g100706_))
                ((let () (declare (not safe)) (##fx= _g100705_ 4))
                 (apply __bind-method!__% _g100706_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g100706_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint96269%_ _%seed96271%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint96269%_
           procedure-hash
           eq?
           _%seed96271%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint96277%_ '#f) (_%seed96279%_ '0))
          (make-method-specializer-table__%
           _%size-hint96277%_
           _%seed96279%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint96281%_)
        (let ((_%seed96283%_ '0))
          (make-method-specializer-table__%
           _%size-hint96281%_
           _%seed96283%_))))
    (define make-method-specializer-table
      (lambda _g100708_
        (let ((_g100707_ (let () (declare (not safe)) (##length _g100708_))))
          (cond ((let () (declare (not safe)) (##fx= _g100707_ 0))
                 (apply make-method-specializer-table__0 _g100708_))
                ((let () (declare (not safe)) (##fx= _g100707_ 1))
                 (apply make-method-specializer-table__1 _g100708_))
                ((let () (declare (not safe)) (##fx= _g100707_ 2))
                 (apply make-method-specializer-table__% _g100708_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g100708_))))))
    (define method-specializer-table-ref
      (lambda (_%tab96222%_ _%key96223%_ _%default96224%_)
        (let ((_%table96226%_
               (let () (declare (not safe)) (&raw-table-table _%tab96222%_)))
              (_%seed96227%_
               (let () (declare (not safe)) (&raw-table-seed _%tab96222%_))))
          (let* ((_%h96229%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key96223%_))
                         _%seed96227%_))
                 (_%size96232%_ (vector-length _%table96226%_))
                 (_%entries96235%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size96232%_ '2)))
                 (_%start96238%_
                  (let ((__tmp100709
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h96229%_ _%entries96235%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100709 '1))))
            (let _%loop96242%_ ((_%probe96245%_ _%start96238%_)
                                (_%i96247%_ '1)
                                (_%deleted96249%_ '#f))
              (let ((_%k96252%_ (vector-ref _%table96226%_ _%probe96245%_)))
                (if (eq? _%k96252%_ (macro-unused-obj))
                    _%default96224%_
                    (if (eq? _%k96252%_ (macro-deleted-obj))
                        (_%loop96242%_
                         (let ((_%next-probe96257%_
                                (fx+ _%start96238%_
                                     _%i96247%_
                                     (fx* _%i96247%_ _%i96247%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe96257%_ _%size96232%_))
                         (let () (declare (not safe)) (##fx+ _%i96247%_ '1))
                         (let ((_%$e96260%_ _%deleted96249%_))
                           (if _%$e96260%_ _%$e96260%_ _%probe96245%_)))
                        (if (eq? _%key96223%_ _%k96252%_)
                            (vector-ref
                             _%table96226%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe96245%_ '1)))
                            (_%loop96242%_
                             (let ((_%next-probe96265%_
                                    (fx+ _%start96238%_
                                         _%i96247%_
                                         (fx* _%i96247%_ _%i96247%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe96265%_ _%size96232%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i96247%_ '1))
                             _%deleted96249%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab96218%_ _%key96219%_ _%value96220%_)
        (if (let ((__tmp100712
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab96218%_)))
                  (__tmp100710
                   (let ((__tmp100711
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab96218%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp100711 '4))))
              (declare (not safe))
              (##fx< __tmp100712 __tmp100710))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab96218%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab96218%_
         _%key96219%_
         _%value96220%_)))
    (define __method-specializer-table-set!
      (lambda (_%tab96169%_ _%key96170%_ _%value96171%_)
        (let ((_%table96174%_
               (let () (declare (not safe)) (&raw-table-table _%tab96169%_)))
              (_%seed96175%_
               (let () (declare (not safe)) (&raw-table-seed _%tab96169%_))))
          (let* ((_%h96177%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key96170%_))
                         _%seed96175%_))
                 (_%size96180%_ (vector-length _%table96174%_))
                 (_%entries96183%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size96180%_ '2)))
                 (_%start96186%_
                  (let ((__tmp100713
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h96177%_ _%entries96183%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100713 '1))))
            (let _%loop96190%_ ((_%probe96193%_ _%start96186%_)
                                (_%i96195%_ '1)
                                (_%deleted96197%_ '#f))
              (let ((_%k96200%_ (vector-ref _%table96174%_ _%probe96193%_)))
                (if (eq? _%k96200%_ (macro-unused-obj))
                    (if _%deleted96197%_
                        (begin
                          (vector-set!
                           _%table96174%_
                           _%deleted96197%_
                           _%key96170%_)
                          (vector-set!
                           _%table96174%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted96197%_ '1))
                           _%value96171%_)
                          ((lambda ()
                             (let ((__tmp100714
                                    (let ((__tmp100715
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab96169%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100715 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab96169%_
                                __tmp100714)))))
                        (begin
                          (vector-set!
                           _%table96174%_
                           _%probe96193%_
                           _%key96170%_)
                          (vector-set!
                           _%table96174%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe96193%_ '1))
                           _%value96171%_)
                          ((lambda ()
                             (let ((__tmp100716
                                    (let ((__tmp100717
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab96169%_))))
                                      (declare (not safe))
                                      (##fx- __tmp100717 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab96169%_ __tmp100716))
                             (let ((__tmp100718
                                    (let ((__tmp100719
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab96169%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100719 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab96169%_
                                __tmp100718))))))
                    (if (eq? _%k96200%_ (macro-deleted-obj))
                        (_%loop96190%_
                         (let ((_%next-probe96207%_
                                (fx+ _%start96186%_
                                     _%i96195%_
                                     (fx* _%i96195%_ _%i96195%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe96207%_ _%size96180%_))
                         (let () (declare (not safe)) (##fx+ _%i96195%_ '1))
                         (let ((_%$e96210%_ _%deleted96197%_))
                           (if _%$e96210%_ _%$e96210%_ _%probe96193%_)))
                        (if (eq? _%key96170%_ _%k96200%_)
                            (let ()
                              (vector-set!
                               _%table96174%_
                               _%probe96193%_
                               _%key96170%_)
                              (vector-set!
                               _%table96174%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe96193%_ '1))
                               _%value96171%_))
                            (_%loop96190%_
                             (let ((_%next-probe96215%_
                                    (fx+ _%start96186%_
                                         _%i96195%_
                                         (fx* _%i96195%_ _%i96195%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe96215%_ _%size96180%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i96195%_ '1))
                             _%deleted96197%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab96164%_
               _%key96165%_
               _%method-specializer-table-update!96166%_
               _%default96167%_)
        (if (let ((__tmp100722
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab96164%_)))
                  (__tmp100720
                   (let ((__tmp100721
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab96164%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp100721 '4))))
              (declare (not safe))
              (##fx< __tmp100722 __tmp100720))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab96164%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab96164%_
         _%key96165%_
         _%method-specializer-table-update!96166%_
         _%default96167%_)))
    (define __method-specializer-table-update!
      (lambda (_%tab96114%_
               _%key96115%_
               _%method-specializer-table-update!96116%_
               _%default96117%_)
        (let ((_%table96120%_
               (let () (declare (not safe)) (&raw-table-table _%tab96114%_)))
              (_%seed96121%_
               (let () (declare (not safe)) (&raw-table-seed _%tab96114%_))))
          (let* ((_%h96123%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key96115%_))
                         _%seed96121%_))
                 (_%size96126%_ (vector-length _%table96120%_))
                 (_%entries96129%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size96126%_ '2)))
                 (_%start96132%_
                  (let ((__tmp100723
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h96123%_ _%entries96129%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100723 '1))))
            (let _%loop96136%_ ((_%probe96139%_ _%start96132%_)
                                (_%i96141%_ '1)
                                (_%deleted96143%_ '#f))
              (let ((_%k96146%_ (vector-ref _%table96120%_ _%probe96139%_)))
                (if (eq? _%k96146%_ (macro-unused-obj))
                    (if _%deleted96143%_
                        (begin
                          (vector-set!
                           _%table96120%_
                           _%deleted96143%_
                           _%key96115%_)
                          (vector-set!
                           _%table96120%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted96143%_ '1))
                           (_%method-specializer-table-update!96116%_
                            _%default96117%_))
                          ((lambda ()
                             (let ((__tmp100724
                                    (let ((__tmp100725
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab96114%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100725 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab96114%_
                                __tmp100724)))))
                        (begin
                          (vector-set!
                           _%table96120%_
                           _%probe96139%_
                           _%key96115%_)
                          (vector-set!
                           _%table96120%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe96139%_ '1))
                           (_%method-specializer-table-update!96116%_
                            _%default96117%_))
                          ((lambda ()
                             (let ((__tmp100726
                                    (let ((__tmp100727
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab96114%_))))
                                      (declare (not safe))
                                      (##fx- __tmp100727 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab96114%_ __tmp100726))
                             (let ((__tmp100728
                                    (let ((__tmp100729
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab96114%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100729 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab96114%_
                                __tmp100728))))))
                    (if (eq? _%k96146%_ (macro-deleted-obj))
                        (_%loop96136%_
                         (let ((_%next-probe96153%_
                                (fx+ _%start96132%_
                                     _%i96141%_
                                     (fx* _%i96141%_ _%i96141%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe96153%_ _%size96126%_))
                         (let () (declare (not safe)) (##fx+ _%i96141%_ '1))
                         (let ((_%$e96156%_ _%deleted96143%_))
                           (if _%$e96156%_ _%$e96156%_ _%probe96139%_)))
                        (if (eq? _%key96115%_ _%k96146%_)
                            (let ()
                              (vector-set!
                               _%table96120%_
                               _%probe96139%_
                               _%key96115%_)
                              (vector-set!
                               _%table96120%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe96139%_ '1))
                               (_%method-specializer-table-update!96116%_
                                (vector-ref
                                 _%table96120%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe96139%_ '1))))))
                            (_%loop96136%_
                             (let ((_%next-probe96161%_
                                    (fx+ _%start96132%_
                                         _%i96141%_
                                         (fx* _%i96141%_ _%i96141%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe96161%_ _%size96126%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i96141%_ '1))
                             _%deleted96143%_))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab96069%_ _%key96071%_)
        (let ((_%table96074%_
               (let () (declare (not safe)) (&raw-table-table _%tab96069%_)))
              (_%seed96076%_
               (let () (declare (not safe)) (&raw-table-seed _%tab96069%_))))
          (let* ((_%h96079%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key96071%_))
                         _%seed96076%_))
                 (_%size96082%_ (vector-length _%table96074%_))
                 (_%entries96085%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size96082%_ '2)))
                 (_%start96088%_
                  (let ((__tmp100730
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h96079%_ _%entries96085%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100730 '1))))
            (let _%loop96092%_ ((_%probe96095%_ _%start96088%_)
                                (_%i96097%_ '1))
              (let ((_%k96100%_ (vector-ref _%table96074%_ _%probe96095%_)))
                (if (eq? _%k96100%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k96100%_ (macro-deleted-obj))
                        (_%loop96092%_
                         (let ((_%next-probe96105%_
                                (fx+ _%start96088%_
                                     _%i96097%_
                                     (fx* _%i96097%_ _%i96097%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe96105%_ _%size96082%_))
                         (let () (declare (not safe)) (##fx+ _%i96097%_ '1)))
                        (if (eq? _%key96071%_ _%k96100%_)
                            (let ()
                              (vector-set!
                               _%table96074%_
                               _%probe96095%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table96074%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe96095%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp100731
                                        (let ((__tmp100732
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab96069%_))))
                                          (declare (not safe))
                                          (##fx- __tmp100732 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab96069%_
                                    __tmp100731)))))
                            (_%loop96092%_
                             (let ((_%next-probe96111%_
                                    (fx+ _%start96088%_
                                         _%i96097%_
                                         (fx* _%i96097%_ _%i96097%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe96111%_ _%size96082%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i96097%_ '1))))))))))))
    (define __method-specializers (make-method-specializer-table__% '#f '0))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc96060%_ _%specializer96061%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again96065%_ ()
            (if (let ((__tmp100733
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp100733 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again96065%_)))))
        (method-specializer-table-set!
         __method-specializers
         _%method-proc96060%_
         _%specializer96061%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc96050%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again96054%_ ()
            (if (let ((__tmp100734
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp100734 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again96054%_)))))
        (let ((_%specializer96058%_
               (method-specializer-table-ref
                __method-specializers
                _%proc96050%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer96058%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass96048%_)
        (let ((__tmp100735
               (let () (declare (not safe)) (##type-id _%klass96048%_))))
          (declare (not safe))
          (symbolic-hash __tmp100735))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint96029%_ _%seed96031%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint96029%_
           __class-specializer-hash-key
           eq?
           _%seed96031%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint96037%_ '#f) (_%seed96039%_ '0))
          (make-class-specializer-table__% _%size-hint96037%_ _%seed96039%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint96041%_)
        (let ((_%seed96043%_ '0))
          (make-class-specializer-table__% _%size-hint96041%_ _%seed96043%_))))
    (define make-class-specializer-table
      (lambda _g100737_
        (let ((_g100736_ (let () (declare (not safe)) (##length _g100737_))))
          (cond ((let () (declare (not safe)) (##fx= _g100736_ 0))
                 (apply make-class-specializer-table__0 _g100737_))
                ((let () (declare (not safe)) (##fx= _g100736_ 1))
                 (apply make-class-specializer-table__1 _g100737_))
                ((let () (declare (not safe)) (##fx= _g100736_ 2))
                 (apply make-class-specializer-table__% _g100737_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g100737_))))))
    (define class-specializer-table-ref
      (lambda (_%tab95982%_ _%key95983%_ _%default95984%_)
        (let ((_%table95986%_
               (let () (declare (not safe)) (&raw-table-table _%tab95982%_)))
              (_%seed95987%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95982%_))))
          (let* ((_%h95989%_
                  (fxxor (__class-specializer-hash-key _%key95983%_)
                         _%seed95987%_))
                 (_%size95992%_ (vector-length _%table95986%_))
                 (_%entries95995%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95992%_ '2)))
                 (_%start95998%_
                  (let ((__tmp100738
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95989%_ _%entries95995%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100738 '1))))
            (let _%loop96002%_ ((_%probe96005%_ _%start95998%_)
                                (_%i96007%_ '1)
                                (_%deleted96009%_ '#f))
              (let ((_%k96012%_ (vector-ref _%table95986%_ _%probe96005%_)))
                (if (eq? _%k96012%_ (macro-unused-obj))
                    _%default95984%_
                    (if (eq? _%k96012%_ (macro-deleted-obj))
                        (_%loop96002%_
                         (let ((_%next-probe96017%_
                                (fx+ _%start95998%_
                                     _%i96007%_
                                     (fx* _%i96007%_ _%i96007%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe96017%_ _%size95992%_))
                         (let () (declare (not safe)) (##fx+ _%i96007%_ '1))
                         (let ((_%$e96020%_ _%deleted96009%_))
                           (if _%$e96020%_ _%$e96020%_ _%probe96005%_)))
                        (if (eq? _%key95983%_ _%k96012%_)
                            (vector-ref
                             _%table95986%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe96005%_ '1)))
                            (_%loop96002%_
                             (let ((_%next-probe96025%_
                                    (fx+ _%start95998%_
                                         _%i96007%_
                                         (fx* _%i96007%_ _%i96007%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe96025%_ _%size95992%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i96007%_ '1))
                             _%deleted96009%_))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab95978%_ _%key95979%_ _%value95980%_)
        (if (let ((__tmp100741
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab95978%_)))
                  (__tmp100739
                   (let ((__tmp100740
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab95978%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp100740 '4))))
              (declare (not safe))
              (##fx< __tmp100741 __tmp100739))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab95978%_))
            '#!void)
        (__class-specializer-table-set!
         _%tab95978%_
         _%key95979%_
         _%value95980%_)))
    (define __class-specializer-table-set!
      (lambda (_%tab95929%_ _%key95930%_ _%value95931%_)
        (let ((_%table95934%_
               (let () (declare (not safe)) (&raw-table-table _%tab95929%_)))
              (_%seed95935%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95929%_))))
          (let* ((_%h95937%_
                  (fxxor (__class-specializer-hash-key _%key95930%_)
                         _%seed95935%_))
                 (_%size95940%_ (vector-length _%table95934%_))
                 (_%entries95943%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95940%_ '2)))
                 (_%start95946%_
                  (let ((__tmp100742
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95937%_ _%entries95943%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100742 '1))))
            (let _%loop95950%_ ((_%probe95953%_ _%start95946%_)
                                (_%i95955%_ '1)
                                (_%deleted95957%_ '#f))
              (let ((_%k95960%_ (vector-ref _%table95934%_ _%probe95953%_)))
                (if (eq? _%k95960%_ (macro-unused-obj))
                    (if _%deleted95957%_
                        (begin
                          (vector-set!
                           _%table95934%_
                           _%deleted95957%_
                           _%key95930%_)
                          (vector-set!
                           _%table95934%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted95957%_ '1))
                           _%value95931%_)
                          ((lambda ()
                             (let ((__tmp100743
                                    (let ((__tmp100744
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95929%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100744 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95929%_
                                __tmp100743)))))
                        (begin
                          (vector-set!
                           _%table95934%_
                           _%probe95953%_
                           _%key95930%_)
                          (vector-set!
                           _%table95934%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe95953%_ '1))
                           _%value95931%_)
                          ((lambda ()
                             (let ((__tmp100745
                                    (let ((__tmp100746
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab95929%_))))
                                      (declare (not safe))
                                      (##fx- __tmp100746 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab95929%_ __tmp100745))
                             (let ((__tmp100747
                                    (let ((__tmp100748
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95929%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100748 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95929%_
                                __tmp100747))))))
                    (if (eq? _%k95960%_ (macro-deleted-obj))
                        (_%loop95950%_
                         (let ((_%next-probe95967%_
                                (fx+ _%start95946%_
                                     _%i95955%_
                                     (fx* _%i95955%_ _%i95955%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95967%_ _%size95940%_))
                         (let () (declare (not safe)) (##fx+ _%i95955%_ '1))
                         (let ((_%$e95970%_ _%deleted95957%_))
                           (if _%$e95970%_ _%$e95970%_ _%probe95953%_)))
                        (if (eq? _%key95930%_ _%k95960%_)
                            (let ()
                              (vector-set!
                               _%table95934%_
                               _%probe95953%_
                               _%key95930%_)
                              (vector-set!
                               _%table95934%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95953%_ '1))
                               _%value95931%_))
                            (_%loop95950%_
                             (let ((_%next-probe95975%_
                                    (fx+ _%start95946%_
                                         _%i95955%_
                                         (fx* _%i95955%_ _%i95955%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95975%_ _%size95940%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95955%_ '1))
                             _%deleted95957%_))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab95924%_
               _%key95925%_
               _%class-specializer-table-update!95926%_
               _%default95927%_)
        (if (let ((__tmp100751
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab95924%_)))
                  (__tmp100749
                   (let ((__tmp100750
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab95924%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp100750 '4))))
              (declare (not safe))
              (##fx< __tmp100751 __tmp100749))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab95924%_))
            '#!void)
        (__class-specializer-table-update!
         _%tab95924%_
         _%key95925%_
         _%class-specializer-table-update!95926%_
         _%default95927%_)))
    (define __class-specializer-table-update!
      (lambda (_%tab95874%_
               _%key95875%_
               _%class-specializer-table-update!95876%_
               _%default95877%_)
        (let ((_%table95880%_
               (let () (declare (not safe)) (&raw-table-table _%tab95874%_)))
              (_%seed95881%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95874%_))))
          (let* ((_%h95883%_
                  (fxxor (__class-specializer-hash-key _%key95875%_)
                         _%seed95881%_))
                 (_%size95886%_ (vector-length _%table95880%_))
                 (_%entries95889%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95886%_ '2)))
                 (_%start95892%_
                  (let ((__tmp100752
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95883%_ _%entries95889%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100752 '1))))
            (let _%loop95896%_ ((_%probe95899%_ _%start95892%_)
                                (_%i95901%_ '1)
                                (_%deleted95903%_ '#f))
              (let ((_%k95906%_ (vector-ref _%table95880%_ _%probe95899%_)))
                (if (eq? _%k95906%_ (macro-unused-obj))
                    (if _%deleted95903%_
                        (begin
                          (vector-set!
                           _%table95880%_
                           _%deleted95903%_
                           _%key95875%_)
                          (vector-set!
                           _%table95880%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted95903%_ '1))
                           (_%class-specializer-table-update!95876%_
                            _%default95877%_))
                          ((lambda ()
                             (let ((__tmp100753
                                    (let ((__tmp100754
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95874%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100754 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95874%_
                                __tmp100753)))))
                        (begin
                          (vector-set!
                           _%table95880%_
                           _%probe95899%_
                           _%key95875%_)
                          (vector-set!
                           _%table95880%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe95899%_ '1))
                           (_%class-specializer-table-update!95876%_
                            _%default95877%_))
                          ((lambda ()
                             (let ((__tmp100755
                                    (let ((__tmp100756
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab95874%_))))
                                      (declare (not safe))
                                      (##fx- __tmp100756 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab95874%_ __tmp100755))
                             (let ((__tmp100757
                                    (let ((__tmp100758
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95874%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100758 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95874%_
                                __tmp100757))))))
                    (if (eq? _%k95906%_ (macro-deleted-obj))
                        (_%loop95896%_
                         (let ((_%next-probe95913%_
                                (fx+ _%start95892%_
                                     _%i95901%_
                                     (fx* _%i95901%_ _%i95901%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95913%_ _%size95886%_))
                         (let () (declare (not safe)) (##fx+ _%i95901%_ '1))
                         (let ((_%$e95916%_ _%deleted95903%_))
                           (if _%$e95916%_ _%$e95916%_ _%probe95899%_)))
                        (if (eq? _%key95875%_ _%k95906%_)
                            (let ()
                              (vector-set!
                               _%table95880%_
                               _%probe95899%_
                               _%key95875%_)
                              (vector-set!
                               _%table95880%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95899%_ '1))
                               (_%class-specializer-table-update!95876%_
                                (vector-ref
                                 _%table95880%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe95899%_ '1))))))
                            (_%loop95896%_
                             (let ((_%next-probe95921%_
                                    (fx+ _%start95892%_
                                         _%i95901%_
                                         (fx* _%i95901%_ _%i95901%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95921%_ _%size95886%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95901%_ '1))
                             _%deleted95903%_))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab95829%_ _%key95831%_)
        (let ((_%table95834%_
               (let () (declare (not safe)) (&raw-table-table _%tab95829%_)))
              (_%seed95836%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95829%_))))
          (let* ((_%h95839%_
                  (fxxor (__class-specializer-hash-key _%key95831%_)
                         _%seed95836%_))
                 (_%size95842%_ (vector-length _%table95834%_))
                 (_%entries95845%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95842%_ '2)))
                 (_%start95848%_
                  (let ((__tmp100759
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95839%_ _%entries95845%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100759 '1))))
            (let _%loop95852%_ ((_%probe95855%_ _%start95848%_)
                                (_%i95857%_ '1))
              (let ((_%k95860%_ (vector-ref _%table95834%_ _%probe95855%_)))
                (if (eq? _%k95860%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k95860%_ (macro-deleted-obj))
                        (_%loop95852%_
                         (let ((_%next-probe95865%_
                                (fx+ _%start95848%_
                                     _%i95857%_
                                     (fx* _%i95857%_ _%i95857%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95865%_ _%size95842%_))
                         (let () (declare (not safe)) (##fx+ _%i95857%_ '1)))
                        (if (eq? _%key95831%_ _%k95860%_)
                            (let ()
                              (vector-set!
                               _%table95834%_
                               _%probe95855%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table95834%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95855%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp100760
                                        (let ((__tmp100761
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab95829%_))))
                                          (declare (not safe))
                                          (##fx- __tmp100761 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab95829%_
                                    __tmp100760)))))
                            (_%loop95852%_
                             (let ((_%next-probe95871%_
                                    (fx+ _%start95848%_
                                         _%i95857%_
                                         (fx* _%i95857%_ _%i95857%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95871%_ _%size95842%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95857%_ '1))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers (make-class-specializer-table__% '#f '0))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass95815%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95815%_ 'class))
            (let ((_%klass95819%_ _%klass95815%_))
              (__specialize-class _%klass95819%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1020.25-1020.30"
               'contract:
               'class-type?
               'value:
               _%klass95815%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass95797%_)
        (let* ((_%klass95800%_ _%klass95797%_)
               (_%$e95809%_ (__lookup-class-specializer _%klass95800%_)))
          (if _%$e95809%_
              _%$e95809%_
              (let ((_%method-table95813%_
                     (___specialize-class _%klass95800%_)))
                (__bind-class-specializer!
                 _%klass95800%_
                 _%method-table95813%_)
                _%method-table95813%_)))))
    (define __lookup-class-specializer
      (lambda (_%klass95787%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again95791%_ ()
            (if (let ((__tmp100762
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp100762 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again95791%_)))))
        (let ((_%method-table95795%_
               (class-specializer-table-ref
                __class-specializers
                _%klass95787%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table95795%_)))
    (define __bind-class-specializer!
      (lambda (_%klass95778%_ _%method-table95779%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again95783%_ ()
            (if (let ((__tmp100763
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp100763 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again95783%_)))))
        (class-specializer-table-set!
         __class-specializers
         _%klass95778%_
         _%method-table95779%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass95762%_
               _%method-table95763%_
               _%method95764%_
               _%proc95765%_)
        (let ((_%$e95767%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table95763%_
                  _%method95764%_
                  '#f))))
          (if _%$e95767%_
              _%$e95767%_
              (let ((_%$e95770%_ (__lookup-method-specializer _%proc95765%_)))
                (if _%$e95770%_
                    ((lambda (_%specialize95773%_)
                       (let ((_%specialized-proc95775%_
                              (_%specialize95773%_
                               _%klass95762%_
                               _%method-table95763%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table95763%_
                          _%method95764%_
                          _%specialized-proc95775%_)))
                     _%$e95770%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table95763%_
                       _%method95764%_
                       _%proc95765%_))))))))
    (define ___specialize-class
      (lambda (_%klass95704%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95704%_ 'class))
            (if (__class-type-metaclass? _%klass95704%_)
                (let ((__method100609
                       (__method-ref _%klass95704%_ 'specialize-class)))
                  (if __method100609
                      (let ()
                        (declare (not safe))
                        (__method100609 _%klass95704%_))
                      (begin
                        (error '"Missing method"
                               _%klass95704%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp100764
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass95704%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp100764))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass95704%_)
                    (let ((_%method-table95710%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop95712%_ ((_%rest95714%_
                                           (__class-precedence-list
                                            _%klass95704%_)))
                        (let* ((_%rest9571595723%_ _%rest95714%_)
                               (_%else9571795731%_
                                (lambda () _%method-table95710%_))
                               (_%K9571995750%_
                                (lambda (_%rest95734%_ _%xklass95735%_)
                                  (let ((_%xmethod-table9573695738%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass95735%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table9573695738%_
                                        (let* ((_%xmethod-table95741%_
                                                _%xmethod-table9573695738%_)
                                               (__tmp100765
                                                (lambda (_%g9574295745%_
                                                         _%g9574395747%_)
                                                  (__specialize-method
                                                   _%klass95704%_
                                                   _%method-table95710%_
                                                   _%g9574295745%_
                                                   _%g9574395747%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table95741%_
                                           __tmp100765))
                                        '#f))
                                  (_%loop95712%_ _%rest95734%_))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9571595723%_))
                              (let ((_%hd9572095753%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9571595723%_)))
                                    (_%tl9572195755%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9571595723%_))))
                                (let* ((_%xklass95758%_ _%hd9572095753%_)
                                       (_%rest95760%_ _%tl9572195755%_))
                                  (_%K9571995750%_
                                   _%rest95760%_
                                   _%xklass95758%_)))
                              (_%else9571795731%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass95704%_))
                (__specialize-class (__shadow-class _%klass95704%_))
                (error '"bad class; cannot specialize" _%klass95704%_)))))
    (define seal-class!
      (lambda (_%klass95690%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95690%_ 'class))
            (let ((_%klass95694%_ _%klass95690%_))
              (__seal-class! _%klass95694%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1077.20-1077.25"
               'contract:
               'class-type?
               'value:
               _%klass95690%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass95673%_)
        (let ((_%klass95676%_ _%klass95673%_))
          (if (__class-type-sealed? _%klass95676%_)
              '#!void
              (begin
                (if (__class-type-final? _%klass95676%_)
                    '#!void
                    (error '"cannot seal non-final class" _%klass95676%_))
                (if (__class-type-metaclass? _%klass95676%_)
                    (let ((__method100610
                           (__method-ref _%klass95676%_ 'seal-class!)))
                      (if __method100610
                          (let ()
                            (declare (not safe))
                            (__method100610 _%klass95676%_))
                          (begin
                            (error '"Missing method"
                                   _%klass95676%_
                                   'seal-class!)
                            '#!void)))
                    (if (let ((__tmp100766
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass95676%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp100766))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass95676%_)
                        (let ((_%method-table95688%_
                               (__specialize-class _%klass95676%_)))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass95676%_
                           _%method-table95688%_
                           '11
                           '#f
                           '#f))))
                (__class-type-seal! _%klass95676%_))))))
    (define next-method
      (lambda (_%subklass95647%_ _%obj95648%_ _%id95649%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass95647%_ 'class))
            (let ((_%subklass95653%_ _%subklass95647%_))
              (if (symbol? _%id95649%_)
                  (let ((_%id95663%_ _%id95649%_))
                    (__next-method _%subklass95653%_ _%obj95648%_ _%id95663%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1101.44-1101.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id95649%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1101.20-1101.28"
               'contract:
               'class-type?
               'value:
               _%subklass95647%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass95584%_ _%obj95585%_ _%id95586%_)
        (let* ((_%subklass95589%_ _%subklass95584%_) (_%id95597%_ _%id95586%_))
          (letrec ((_%find-next-method95606%_
                    (lambda (_%klass95608%_)
                      (let _%lp95610%_ ((_%rest95612%_
                                         (class-precedence-list
                                          _%klass95608%_)))
                        (let* ((_%rest9561395621%_ _%rest95612%_)
                               (_%else9561595629%_ (lambda () '#f))
                               (_%K9561795635%_
                                (lambda (_%rest95632%_ _%klass95633%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass95589%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass95633%_)))
                                      (__mixin-find-method
                                       _%rest95632%_
                                       _%obj95585%_
                                       _%id95597%_)
                                      (_%lp95610%_ _%rest95632%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9561395621%_))
                              (let ((_%hd9561895638%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9561395621%_)))
                                    (_%tl9561995640%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9561395621%_))))
                                (let* ((_%klass95643%_ _%hd9561895638%_)
                                       (_%rest95645%_ _%tl9561995640%_))
                                  (_%K9561795635%_
                                   _%rest95645%_
                                   _%klass95643%_)))
                              (_%else9561595629%_)))))))
            (_%find-next-method95606%_ (class-of _%obj95585%_))))))
    (define call-next-method
      (lambda (_%subklass95557%_ _%obj95558%_ _%id95559%_ . _%args95560%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass95557%_ 'class))
            (let ((_%subklass95564%_ _%subklass95557%_))
              (if (symbol? _%id95559%_)
                  (let ((_%id95574%_ _%id95559%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass95564%_
                             _%obj95558%_
                             _%id95574%_
                             _%args95560%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1112.49-1112.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id95559%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1112.25-1112.33"
               'contract:
               'class-type?
               'value:
               _%subklass95557%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass95528%_ _%obj95529%_ _%id95530%_ . _%args95531%_)
        (let* ((_%subklass95534%_ _%subklass95528%_)
               (_%id95542%_ _%id95530%_)
               (_%$e95551%_
                (__next-method _%subklass95534%_ _%obj95529%_ _%id95542%_)))
          (if _%$e95551%_
              ((lambda (_%methodf95554%_)
                 (apply _%methodf95554%_ _%obj95529%_ _%args95531%_))
               _%$e95551%_)
              (error '"cannot find next method"
                     'object:
                     _%obj95529%_
                     'method:
                     _%id95542%_)))))
    (define write-style
      (lambda (_%we95526%_) (macro-writeenv-style _%we95526%_)))
    (define write-object
      (lambda (_%we95517%_ _%obj95518%_)
        (let ((_%$e95520%_ (__method-ref _%obj95518%_ ':wr)))
          (if _%$e95520%_
              ((lambda (_%method95523%_)
                 (_%method95523%_ _%obj95518%_ _%we95517%_))
               _%$e95520%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we95517%_ _%obj95518%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type95432%_)
        (letrec ((_%shadow-type-id95434%_
                  (lambda (_%type95515%_)
                    (let ((__tmp100767
                           (let ()
                             (declare (not safe))
                             (##type-name _%type95515%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp100767 '"::t"))))
                 (_%shadow-type-name95435%_
                  (lambda (_%type95513%_)
                    (let () (declare (not safe)) (##type-name _%type95513%_))))
                 (_%make-shadow-class95436%_
                  (lambda (_%type95505%_ _%precedence-list95506%_)
                    (let* ((_%super95508%_
                            (if (pair? _%precedence-list95506%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list95506%_))
                                      '())
                                '()))
                           (_%klass95510%_
                            (make-class-type
                             (_%shadow-type-id95434%_ _%type95505%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type95505%_))
                             _%super95508%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (if (__type-extensible? _%type95505%_)
                                             '()
                                             (cons (cons 'final: '#t) '()))))
                             '#f)))
                      (let ((__tmp100768
                             (let ()
                               (declare (not safe))
                               (##type-id _%type95505%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp100768
                         _%klass95510%_))
                      _%klass95510%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again95440%_ ()
              (if (let ((__tmp100769
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp100769 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (_%again95440%_)))))
          (let ((_%$e95444%_
                 (let ((__tmp100770
                        (let ()
                          (declare (not safe))
                          (##type-id _%type95432%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp100770 '#f))))
            (if _%$e95444%_
                ((lambda (_%klass95447%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass95447%_)
                 _%$e95444%_)
                (let _%loop95450%_ ((_%super95452%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-super _%type95432%_)))
                                    (_%hierarchy95453%_ '()))
                  (if (not _%super95452%_)
                      (let _%loop95456%_ ((_%rest95458%_ _%hierarchy95453%_)
                                          (_%precedence-list95459%_ '()))
                        (let* ((_%rest9546095468%_ _%rest95458%_)
                               (_%else9546295478%_
                                (lambda ()
                                  (let ((_%klass95476%_
                                         (_%make-shadow-class95436%_
                                          _%type95432%_
                                          _%precedence-list95459%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass95476%_)))
                               (_%K9546495492%_
                                (lambda (_%rest95481%_ _%type95482%_)
                                  (let ((_%$e95484%_
                                         (let ((__tmp100771
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type95482%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp100771
                                            '#f))))
                                    (if _%$e95484%_
                                        ((lambda (_%klass95487%_)
                                           (_%loop95456%_
                                            _%rest95481%_
                                            (cons _%klass95487%_
                                                  _%precedence-list95459%_)))
                                         _%$e95484%_)
                                        (let ((_%klass95490%_
                                               (_%make-shadow-class95436%_
                                                _%type95482%_
                                                _%precedence-list95459%_)))
                                          (_%loop95456%_
                                           _%rest95481%_
                                           (cons _%klass95490%_
                                                 _%precedence-list95459%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9546095468%_))
                              (let ((_%hd9546595495%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9546095468%_)))
                                    (_%tl9546695497%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9546095468%_))))
                                (let* ((_%type95500%_ _%hd9546595495%_)
                                       (_%rest95502%_ _%tl9546695497%_))
                                  (_%K9546495492%_
                                   _%rest95502%_
                                   _%type95500%_)))
                              (_%else9546295478%_))))
                      (_%loop95450%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super95452%_))
                       (cons _%super95452%_ _%hierarchy95453%_)))))))))
    (define class-of
      (lambda (_%obj95405%_)
        (let ()
          (declare (not interrupts-enabled))
          (let ((_%t95409%_
                 (let () (declare (not safe)) (##type _%obj95405%_))))
            (if (fx= _%t95409%_ (macro-type-subtyped))
                (let ((_%st95412%_
                       (let () (declare (not safe)) (##subtype _%obj95405%_))))
                  (if (fx= _%st95412%_ (macro-subtype-structure))
                      (let ((_%klass95415%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj95405%_))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of? _%klass95415%_ 'class))
                            _%klass95415%_
                            (__shadow-class _%klass95415%_)))
                      (if (fx= _%st95412%_ (macro-subtype-boxvalues))
                          (if (let ((__tmp100772
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _%obj95405%_))))
                                (declare (not safe))
                                (##fx= __tmp100772 '1))
                              (__system-class 'box)
                              (__system-class 'values))
                          (let ((_%$e95418%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref __subtype-id _%st95412%_))))
                            (if _%$e95418%_
                                (__system-class _%$e95418%_)
                                (error '"unknown class"
                                       'subtype:
                                       _%st95412%_
                                       'object:
                                       _%obj95405%_))))))
                (if (fx= _%t95409%_ (macro-type-mem2))
                    (__system-class 'pair)
                    (if (fx= _%t95409%_ (macro-type-fixnum))
                        (__system-class 'fixnum)
                        (if (char? _%obj95405%_)
                            (__system-class 'char)
                            (if (eq? _%obj95405%_ '())
                                (__system-class 'null)
                                (if (eq? _%obj95405%_ '#f)
                                    (__system-class 'boolean)
                                    (if (eq? _%obj95405%_ '#t)
                                        (__system-class 'boolean)
                                        (if (eq? _%obj95405%_ '#!void)
                                            (__system-class 'void)
                                            (if (eq? _%obj95405%_ '#!eof)
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
      (lambda (_%id95399%_)
        (let ((_%$e95401%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id95399%_ '#f))))
          (if _%$e95401%_
              _%$e95401%_
              (error '"unknown system class" _%id95399%_)))))
    (define __make-system-class
      (lambda (_%id95394%_ _%super95395%_)
        (let ((_%klass95397%_
               (make-class-type
                _%id95394%_
                _%id95394%_
                _%super95395%_
                '()
                '((system: . #t))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id95394%_ _%klass95397%_))
          _%klass95397%_)))))
