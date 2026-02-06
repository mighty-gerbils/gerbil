(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1770342546)
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
      (let ((_%flags129558%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties129559%_ '((direct-slots:) (system: . #t)))
            (_%slot-table129560%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags129558%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table129560%_
           _%properties129559%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots129534%_
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
             (_%slot-vector129536%_ (list->vector (cons '#f _%slots129534%_)))
             (_%slot-table129543%_
              (let ((_%slot-table129538%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp132589
                       (lambda (_%slot129540%_ _%field129541%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table129538%_
                            _%slot129540%_
                            _%field129541%_))
                         (let ((__tmp132590
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot129540%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table129538%_
                            __tmp132590
                            _%field129541%_))))
                      (__tmp132587
                       (let ((__tmp132588
                              (let ()
                                (declare (not safe))
                                (##length _%slots129534%_))))
                         (declare (not safe))
                         (##iota __tmp132588 '1))))
                  (declare (not safe))
                  (##for-each __tmp132589 _%slots129534%_ __tmp132587))
                _%slot-table129538%_))
             (_%flags129545%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields129551%_
              (list->vector
               (let ((__tmp132591
                      (map (lambda (_%g129546129548%_)
                             (list _%g129546129548%_ '5 '#f))
                           (drop _%slots129534%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp132591))))
             (_%properties129553%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots129534%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t129555%_
              (let ((__tmp132592 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags129545%_
                 ##type-type
                 _%fields129551%_
                 __tmp132592
                 _%slot-vector129536%_
                 _%slot-table129543%_
                 _%properties129553%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t129555%_ _%t129555%_))
        _%t129555%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags129530%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties129531%_ '((direct-slots:) (system: . #t)))
            (_%slot-table129532%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp132593 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags129530%_
           '#f
           '#()
           __tmp132593
           '#(#f)
           _%slot-table129532%_
           _%properties129531%_
           '#f
           '#f
           '#f
           '#f))))
    (define __class-type
      (lambda (_%klass129518%_)
        (let ((_%klass129521%_ _%klass129518%_))
          (declare (not safe))
          (##structure-type _%klass129521%_))))
    (define class-type
      (lambda (_%klass117328%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass117328%_ 'class))
            (let ((_%klass117332%_ _%klass117328%_))
              (__class-type _%klass117332%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass117328%_)
              '#!void))))
    (define class-type?
      (lambda (_%obj129516%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj129516%_ 'class))))
    (define __class-type=?
      (lambda (_%x129495%_ _%y129496%_)
        (let* ((_%x129499%_ _%x129495%_) (_%y129507%_ _%y129496%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x129499%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y129507%_ '1 '#f '#f))))))
    (define class-type=?
      (lambda (_%x117462%_ _%y117463%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x117462%_ 'class))
            (let ((_%x117467%_ _%x117462%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y117463%_ 'class))
                  (let ((_%y117477%_ _%y117463%_))
                    (__class-type=? _%x117467%_ _%y117477%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y117463%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x117462%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type129483%_)
        (let* ((_%type129486%_ _%type129483%_)
               (__tmp132594
                (let ((__tmp132595
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type129486%_))))
                  (declare (not safe))
                  (##fxand __tmp132595 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp132594 type-flag-opaque))))
    (define type-opaque?
      (lambda (_%type117909%_)
        (if (let () (declare (not safe)) (##type? _%type117909%_))
            (let ((_%type117913%_ _%type117909%_))
              (__type-opaque? _%type117913%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type117909%_)
              '#!void))))
    (define __class-type-opaque?
      (lambda (_%klass129471%_)
        (let* ((_%klass129474%_ _%klass129471%_)
               (__tmp132596
                (let ((__tmp132597
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass129474%_))))
                  (declare (not safe))
                  (##fxand __tmp132597 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp132596 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass118043%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass118043%_ 'class))
            (let ((_%klass118047%_ _%klass118043%_))
              (__class-type-opaque? _%klass118047%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass118043%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type129459%_)
        (let* ((_%type129462%_ _%type129459%_)
               (__tmp132598
                (let ((__tmp132599
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type129462%_))))
                  (declare (not safe))
                  (##fxand __tmp132599 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp132598 type-flag-extensible))))
    (define type-extensible?
      (lambda (_%type118177%_)
        (if (let () (declare (not safe)) (##type? _%type118177%_))
            (let ((_%type118181%_ _%type118177%_))
              (__type-extensible? _%type118181%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type118177%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type129447%_)
        (let* ((_%type129450%_ _%type129447%_)
               (__tmp132600
                (let ((__tmp132601
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type129450%_))))
                  (declare (not safe))
                  (##fxand __tmp132601 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp132600 '0))))
    (define class-type-final?
      (lambda (_%type118311%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type118311%_ 'class))
            (let ((_%type118315%_ _%type118311%_))
              (__class-type-final? _%type118315%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type118311%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass129435%_)
        (let* ((_%klass129438%_ _%klass129435%_)
               (__tmp132602
                (let ((__tmp132603
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass129438%_))))
                  (declare (not safe))
                  (##fxand __tmp132603 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp132602 class-type-flag-struct))))
    (define class-type-struct?
      (lambda (_%klass118445%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass118445%_ 'class))
            (let ((_%klass118449%_ _%klass118445%_))
              (__class-type-struct? _%klass118449%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass118445%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass129423%_)
        (let* ((_%klass129426%_ _%klass129423%_)
               (__tmp132604
                (let ((__tmp132605
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass129426%_))))
                  (declare (not safe))
                  (##fxand __tmp132605 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp132604 class-type-flag-sealed))))
    (define class-type-sealed?
      (lambda (_%klass118579%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass118579%_ 'class))
            (let ((_%klass118583%_ _%klass118579%_))
              (__class-type-sealed? _%klass118583%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass118579%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass129411%_)
        (let* ((_%klass129414%_ _%klass129411%_)
               (__tmp132606
                (let ((__tmp132607
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass129414%_))))
                  (declare (not safe))
                  (##fxand __tmp132607 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp132606 class-type-flag-metaclass))))
    (define class-type-metaclass?
      (lambda (_%klass118713%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass118713%_ 'class))
            (let ((_%klass118717%_ _%klass118713%_))
              (__class-type-metaclass? _%klass118717%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass118713%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass129399%_)
        (let* ((_%klass129402%_ _%klass129399%_)
               (__tmp132608
                (let ((__tmp132609
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass129402%_))))
                  (declare (not safe))
                  (##fxand __tmp132609 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp132608 class-type-flag-system))))
    (define class-type-system?
      (lambda (_%klass118847%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass118847%_ 'class))
            (let ((_%klass118851%_ _%klass118847%_))
              (__class-type-system? _%klass118851%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass118847%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass129387%_)
        (let* ((_%klass129390%_ _%klass129387%_)
               (__tmp132610
                (let ((__tmp132611
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass129390%_))))
                  (declare (not safe))
                  (##fxand __tmp132611 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp132610 class-type-flag-acyclic))))
    (define class-type-acyclic?
      (lambda (_%klass118981%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass118981%_ 'class))
            (let ((_%klass118985%_ _%klass118981%_))
              (__class-type-acyclic? _%klass118985%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass118981%_)
              '#!void))))
    (define make-class-type-descriptor
      (lambda (_%type-id129268%_
               _%type-name129269%_
               _%type-super129270%_
               _%precedence-list129271%_
               _%slot-vector129272%_
               _%properties129273%_
               _%constructor129274%_
               _%slot-table129275%_
               _%methods129276%_)
        (letrec ((_%make-props!129279%_
                  (lambda (_%key129356%_)
                    (letrec* ((_%ht129358%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!129359%_
                               (lambda (_%ht129380%_ _%slots129381%_)
                                 (for-each
                                  (lambda (_%g129382129384%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht129380%_
                                       _%g129382129384%_
                                       '#t)))
                                  _%slots129381%_)))
                              (_%put-alist!129360%_
                               (lambda (_%ht129369%_
                                        _%key129370%_
                                        _%alist129371%_)
                                 (let ((_%$e129373%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key129370%_
                                           _%alist129371%_))))
                                   (if _%$e129373%_
                                       ((lambda (_%g129375129377%_)
                                          (_%put-slots!129359%_
                                           _%ht129369%_
                                           _%g129375129377%_))
                                        _%$e129373%_)
                                       '#!void)))))
                      (_%put-alist!129360%_
                       _%ht129358%_
                       _%key129356%_
                       _%properties129273%_)
                      (for-each
                       (lambda (_%mixin129362%_)
                         (let ((_%alist129364%_
                                (##structure-ref
                                 _%mixin129362%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist129364%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key129356%_
                                           _%alist129364%_))))
                               (_%put-slots!129359%_
                                _%ht129358%_
                                (class-type-slot-list _%mixin129362%_))
                               (_%put-alist!129360%_
                                _%ht129358%_
                                _%key129356%_
                                _%alist129364%_))))
                       _%precedence-list129271%_)
                      _%ht129358%_))))
          (let* ((_%transparent?129281%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties129273%_)))
                 (_%all-slots-printable?129286%_
                  (let ((_%$e129283%_ _%transparent?129281%_))
                    (if _%$e129283%_
                        _%$e129283%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties129273%_))))))
                 (_%printable129288%_
                  (if (not _%all-slots-printable?129286%_)
                      (_%make-props!129279%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?129293%_
                  (let ((_%$e129290%_ _%transparent?129281%_))
                    (if _%$e129290%_
                        _%$e129290%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties129273%_))))))
                 (_%equalable129295%_
                  (if (not _%all-slots-equalable?129293%_)
                      (_%make-props!129279%_ 'equal:)
                      '#f))
                 (_%first-new-field129297%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super129270%_ 'class))
                      (let ((__tmp132612
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super129270%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp132612))
                      '1))
                 (_%field-info-length129299%_
                  (let ((__tmp132613
                         (let ((__tmp132614
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector129272%_))))
                           (declare (not safe))
                           (##fx- __tmp132614 _%first-new-field129297%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp132613)))
                 (_%field-info129301%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length129299%_ '#f)))
                 (_%struct?129303%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties129273%_)))
                 (_%final?129305%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties129273%_)))
                 (_%metaclass129312%_
                  (let ((_%metaclass129306129308%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties129273%_))))
                    (if _%metaclass129306129308%_
                        (let ((_%metaclass129310%_ _%metaclass129306129308%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass129310%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id129268%_
                                     'metaclass:
                                     _%metaclass129310%_))
                          _%metaclass129310%_)
                        '#f)))
                 (_%system?129314%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties129273%_)))
                 (_%opaque?129322%_
                  (if (or _%transparent?129281%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties129273%_)))
                      '#f
                      (let ((_%$e129319%_ (not _%type-super129270%_)))
                        (if _%$e129319%_
                            _%$e129319%_
                            (__type-opaque? _%type-super129270%_)))))
                 (_%acyclic?129324%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties129273%_)))
                 (_%type-flags129326%_
                  (let ((__tmp132620
                         (if _%final?129305%_ '0 type-flag-extensible))
                        (__tmp132619
                         (if _%opaque?129322%_ type-flag-opaque '0))
                        (__tmp132618
                         (if _%struct?129303%_ class-type-flag-struct '0))
                        (__tmp132617
                         (if _%metaclass129312%_ class-type-flag-metaclass '0))
                        (__tmp132616
                         (if _%system?129314%_ class-type-flag-system '0))
                        (__tmp132615
                         (if _%acyclic?129324%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp132620
                             __tmp132619
                             __tmp132618
                             __tmp132617
                             __tmp132616
                             __tmp132615)))
                 (_%precedence-list129334%_
                  (let ((_%$e129328%_ (memq t::t _%precedence-list129271%_)))
                    (if _%$e129328%_
                        ((lambda (_%tail129331%_)
                           (if (null? (cdr _%tail129331%_))
                               _%precedence-list129271%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list129271%_)))
                         _%$e129328%_)
                        (let ((__tmp132621 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list129271%_ __tmp132621))))))
            (let _%loop129337%_ ((_%i129339%_ _%first-new-field129297%_)
                                 (_%j129340%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j129340%_ _%field-info-length129299%_))
                  (let* ((_%slot129342%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector129272%_ _%i129339%_)))
                         (_%flags129350%_
                          (if _%transparent?129281%_
                              '0
                              (let ((__tmp132623
                                     (if (or _%all-slots-printable?129286%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable129288%_
                                                _%slot129342%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp132622
                                     (if (or _%all-slots-equalable?129293%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable129295%_
                                                _%slot129342%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp132623 __tmp132622)))))
                    (vector-set!
                     _%field-info129301%_
                     _%j129340%_
                     _%slot129342%_)
                    (vector-set!
                     _%field-info129301%_
                     (let () (declare (not safe)) (##fx+ _%j129340%_ '1))
                     _%flags129350%_)
                    (_%loop129337%_
                     (let () (declare (not safe)) (##fx+ _%i129339%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j129340%_ '3))))
                  '#!void))
            (if _%metaclass129312%_
                (let ((_%val129353%_
                       (make-instance
                        _%metaclass129312%_
                        _%type-id129268%_
                        _%type-name129269%_
                        _%type-flags129326%_
                        _%type-super129270%_
                        _%field-info129301%_
                        _%precedence-list129334%_
                        _%slot-vector129272%_
                        _%slot-table129275%_
                        _%properties129273%_
                        _%constructor129274%_
                        _%methods129276%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val129353%_ 'class))
                      _%val129353%_
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         '"\"gerbil/runtime/mop.ss\"@283.10-287.95"
                         'contract:
                         '(class-type? val)
                         'value:
                         _%val129353%_)
                        '#!void)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id129268%_
                   _%type-name129269%_
                   _%type-flags129326%_
                   _%type-super129270%_
                   _%field-info129301%_
                   _%precedence-list129334%_
                   _%slot-vector129272%_
                   _%slot-table129275%_
                   _%properties129273%_
                   _%constructor129274%_
                   _%methods129276%_
                   '#f
                   '#f)))))))
    (define class-type-id
      (lambda (_%klass129266%_)
        (##structure-ref _%klass129266%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass129264%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass129264%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass129261%_ _%val129262%_)
        (##structure-set! _%klass129261%_ _%val129262%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass129256%_ _%val129258%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass129256%_
           _%val129258%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass129254%_)
        (##structure-ref _%klass129254%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass129252%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass129252%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass129249%_ _%val129250%_)
        (##structure-set! _%klass129249%_ _%val129250%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass129244%_ _%val129246%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass129244%_
           _%val129246%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass129242%_)
        (##structure-ref _%klass129242%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass129240%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass129240%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass129237%_ _%val129238%_)
        (##structure-set! _%klass129237%_ _%val129238%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass129232%_ _%val129234%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass129232%_
           _%val129234%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass129230%_)
        (##structure-ref _%klass129230%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass129228%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass129228%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass129225%_ _%val129226%_)
        (##structure-set! _%klass129225%_ _%val129226%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass129220%_ _%val129222%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass129220%_
           _%val129222%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass129218%_)
        (##structure-ref _%klass129218%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass129216%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass129216%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass129213%_ _%val129214%_)
        (##structure-set! _%klass129213%_ _%val129214%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass129208%_ _%val129210%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass129208%_
           _%val129210%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass129206%_)
        (##structure-ref _%klass129206%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass129204%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass129204%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass129201%_ _%val129202%_)
        (##structure-set!
         _%klass129201%_
         _%val129202%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass129196%_ _%val129198%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass129196%_
           _%val129198%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass129194%_)
        (##structure-ref _%klass129194%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass129192%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass129192%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass129189%_ _%val129190%_)
        (##structure-set!
         _%klass129189%_
         _%val129190%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass129184%_ _%val129186%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass129184%_
           _%val129186%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass129182%_)
        (##structure-ref _%klass129182%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass129180%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass129180%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass129177%_ _%val129178%_)
        (##structure-set!
         _%klass129177%_
         _%val129178%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass129172%_ _%val129174%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass129172%_
           _%val129174%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass129170%_)
        (##structure-ref _%klass129170%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass129168%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass129168%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass129165%_ _%val129166%_)
        (##structure-set!
         _%klass129165%_
         _%val129166%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass129160%_ _%val129162%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass129160%_
           _%val129162%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass129158%_)
        (##structure-ref _%klass129158%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass129156%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass129156%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass129153%_ _%val129154%_)
        (##structure-set!
         _%klass129153%_
         _%val129154%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass129148%_ _%val129150%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass129148%_
           _%val129150%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass129146%_)
        (##structure-ref _%klass129146%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass129144%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass129144%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass129141%_ _%val129142%_)
        (##structure-set!
         _%klass129141%_
         _%val129142%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass129136%_ _%val129138%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass129136%_
           _%val129138%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass129134%_)
        (##structure-ref _%klass129134%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass129132%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass129132%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass129129%_ _%val129130%_)
        (##structure-set!
         _%klass129129%_
         _%val129130%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass129124%_ _%val129126%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass129124%_
           _%val129126%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass129122%_)
        (##structure-ref _%klass129122%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass129120%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass129120%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass129117%_ _%val129118%_)
        (##structure-set!
         _%klass129117%_
         _%val129118%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass129112%_ _%val129114%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass129112%_
           _%val129114%_
           '13
           class::t
           'interface))))
    (define __class-type-slot-list
      (lambda (_%klass129100%_)
        (let ((_%klass129103%_ _%klass129100%_))
          (vector->list
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass129103%_ '7 '#f '#f))
           '1))))
    (define class-type-slot-list
      (lambda (_%klass119505%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass119505%_ 'class))
            (let ((_%klass119509%_ _%klass119505%_))
              (__class-type-slot-list _%klass119509%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@345.29-345.34"
               'contract:
               'class-type?
               'value:
               _%klass119505%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass129088%_)
        (let* ((_%klass129091%_ _%klass129088%_)
               (__tmp132624
                (let ((__tmp132625
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass129091%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp132625))))
          (declare (not safe))
          (##fx- __tmp132624 '1))))
    (define class-type-field-count
      (lambda (_%klass119639%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass119639%_ 'class))
            (let ((_%klass119643%_ _%klass119639%_))
              (__class-type-field-count _%klass119643%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@347.31-347.36"
               'contract:
               'class-type?
               'value:
               _%klass119639%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass129076%_)
        (let ((_%klass129079%_ _%klass129076%_))
          (let ((__tmp132626
                 (let ((__tmp132627
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass129079%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp132627))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass129079%_
             __tmp132626
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define class-type-seal!
      (lambda (_%klass119773%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass119773%_ 'class))
            (let ((_%klass119777%_ _%klass119773%_))
              (__class-type-seal! _%klass119777%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@350.25-350.30"
               'contract:
               'class-type?
               'value:
               _%klass119773%_)
              '#!void))))
    (define __class-type-printable-slots
      (lambda (_%klass129009%_)
        (let ((_%klass129012%_ _%klass129009%_))
          (letrec ((_%get-field-vector129021%_
                    (lambda (_%type129060%_)
                      (let _%loop129062%_ ((_%type129064%_ _%type129060%_))
                        (let* ((_%fields129066%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type129064%_)))
                               (_%$e129068%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type129064%_))))
                          (if _%$e129068%_
                              ((lambda (_%super129071%_)
                                 (let ((_%super-fields129073%_
                                        (_%loop129062%_ _%super129071%_)))
                                   (vector-append
                                    _%super-fields129073%_
                                    _%fields129066%_)))
                               _%$e129068%_)
                              _%fields129066%_)))))
                   (_%get-printable-slot-alist129022%_
                    (lambda (_%type129043%_)
                      (let* ((_%fields129045%_
                              (_%get-field-vector129021%_ _%type129043%_))
                             (_%count129047%_
                              (vector-length _%fields129045%_)))
                        (let _%loop129050%_ ((_%i129052%_ '3)
                                             (_%offset129053%_ '1)
                                             (_%r129054%_ '()))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i129052%_ _%count129047%_))
                              (let ((_%slot-name129056%_
                                     (vector-ref _%fields129045%_ _%i129052%_))
                                    (_%slot-flags129057%_
                                     (vector-ref
                                      _%fields129045%_
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%i129052%_ '1))))
                                    (_%next-i129058%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i129052%_ '2))))
                                (if (let ((__tmp132628
                                           (let ()
                                             (declare (not safe))
                                             (##fxand _%slot-flags129057%_
                                                      '1))))
                                      (declare (not safe))
                                      (##fx= __tmp132628 '0))
                                    (_%loop129050%_
                                     _%next-i129058%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset129053%_ '1))
                                     _%r129054%_)
                                    (_%loop129050%_
                                     _%next-i129058%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset129053%_ '1))
                                     (cons (cons _%slot-name129056%_
                                                 _%offset129053%_)
                                           _%r129054%_))))
                              (reverse! _%r129054%_))))))
                   (_%get-printable-slots!129023%_
                    (lambda (_%klass129038%_ _%type129039%_)
                      (let ((_%printable129041%_
                             (_%get-printable-slot-alist129022%_
                              _%type129039%_)))
                        (##structure-set!
                         _%klass129038%_
                         (cons (cons 'printable-slots: _%printable129041%_)
                               (##structure-ref
                                _%klass129038%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%printable129041%_))))
            (let* ((_%props129025%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass129012%_ '9 '#f '#f)))
                   (_%$e129027%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'printable-slots: _%props129025%_))))
              (if _%$e129027%_
                  _%$e129027%_
                  (let ((_%$e129030%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props129025%_))))
                    (if _%$e129030%_
                        ((lambda (_%g129032129034%_)
                           (_%get-printable-slots!129023%_
                            _%klass129012%_
                            _%g129032129034%_))
                         _%$e129030%_)
                        (_%get-printable-slots!129023%_
                         _%klass129012%_
                         _%klass129012%_)))))))))
    (define class-type-printable-slots
      (lambda (_%klass119907%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass119907%_ 'class))
            (let ((_%klass119911%_ _%klass119907%_))
              (__class-type-printable-slots _%klass119911%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@357.35-357.40"
               'contract:
               'class-type?
               'value:
               _%klass119907%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct128978%_ _%maybe-super-struct128979%_)
        (let* ((_%maybe-sub-struct128982%_ _%maybe-sub-struct128978%_)
               (_%maybe-super-struct128990%_ _%maybe-super-struct128979%_)
               (_%maybe-super-struct-id128999%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct128990%_))))
          (let _%lp129001%_ ((_%super-struct129003%_
                              _%maybe-sub-struct128982%_))
            (if (not _%super-struct129003%_)
                '#f
                (if (eq? _%maybe-super-struct-id128999%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct129003%_)))
                    '#t
                    (_%lp129001%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct129003%_)))))))))
    (define substruct?
      (lambda (_%maybe-sub-struct120041%_ _%maybe-super-struct120042%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct120041%_ 'class))
            (let ((_%maybe-sub-struct120046%_ _%maybe-sub-struct120041%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct120042%_
                     'class))
                  (let ((_%maybe-super-struct120056%_
                         _%maybe-super-struct120042%_))
                    (__substruct?
                     _%maybe-sub-struct120046%_
                     _%maybe-super-struct120056%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@403.47-403.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct120042%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@403.19-403.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct120041%_)
              '#!void))))
    (define base-struct/1
      (lambda (_%klass128973%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass128973%_ 'class))
            (if (__class-type-struct? _%klass128973%_)
                _%klass128973%_
                (let () (declare (not safe)) (##type-super _%klass128973%_)))
            (if (not _%klass128973%_)
                '#f
                (error '"not a class or false" _%klass128973%_)))))
    (define base-struct/2
      (lambda (_%klass1128958%_ _%klass2128959%_)
        (let ((_%s1128961%_ (base-struct/1 _%klass1128958%_))
              (_%s2128962%_ (base-struct/1 _%klass2128959%_)))
          (if (or (not _%s1128961%_)
                  (and _%s2128962%_ (substruct? _%s1128961%_ _%s2128962%_)))
              _%s2128962%_
              (if (or (not _%s2128962%_)
                      (and _%s1128961%_
                           (substruct? _%s2128962%_ _%s1128961%_)))
                  _%s1128961%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1128958%_
                         _%klass2128959%_
                         _%s1128961%_
                         _%s2128962%_))))))
    (define base-struct/list
      (lambda (_%all-supers128843%_)
        (let* ((_%all-supers128844128869%_ _%all-supers128843%_)
               (_%E128849128873%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers128844128869%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K128867128955%_ (lambda () '#f))
                (_%K128864128941%_
                 (lambda (_%x128939%_) (base-struct/1 _%x128939%_)))
                (_%K128859128918%_
                 (lambda (_%y128915%_ _%x128916%_)
                   (base-struct/2 _%x128916%_ _%y128915%_)))
                (_%K128850128880%_
                 (lambda (_%y128877%_ _%x128878%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x128878%_ _%y128877%_)))))
            (let* ((_%__match131397131398%_
                    (lambda (_%hd128851128883%_ _%tl128852128885%_)
                      (let ((_%x128888%_ _%hd128851128883%_))
                        (letrec ((_%splice-rest128854128890%_
                                  (lambda (_%rest128858128897%_ _%y128899%_)
                                    (if (null? _%rest128858128897%_)
                                        (_%K128850128880%_
                                         _%y128899%_
                                         _%x128888%_)
                                        (_%E128849128873%_))))
                                 (_%splice-try128856128892%_
                                  (lambda (_%hd128857128901%_
                                           _%rest128858128903%_
                                           _%y128853128904%_)
                                    (let ((_%y128906%_ _%hd128857128901%_))
                                      (_%splice-loop128855128894%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest128858128903%_))
                                       (cons _%y128906%_ _%y128853128904%_)))))
                                 (_%splice-loop128855128894%_
                                  (lambda (_%rest128858128908%_
                                           _%y128853128909%_)
                                    (if (pair? _%rest128858128908%_)
                                        (_%splice-try128856128892%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest128858128908%_))
                                         _%rest128858128908%_
                                         _%y128853128909%_)
                                        (_%splice-rest128854128890%_
                                         _%rest128858128908%_
                                         (reverse _%y128853128909%_))))))
                          (_%splice-loop128855128894%_
                           _%tl128852128885%_
                           '())))))
                   (_%try-match128846128951%_
                    (lambda ()
                      (if (pair? _%all-supers128844128869%_)
                          (let ((_%tl128866128946%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers128844128869%_)))
                                (_%hd128865128944%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers128844128869%_))))
                            (if (null? _%tl128866128946%_)
                                (let ((_%x128949%_ _%hd128865128944%_))
                                  (base-struct/1 _%x128949%_))
                                (if (pair? _%tl128866128946%_)
                                    (let ((_%tl128863128930%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl128866128946%_)))
                                          (_%hd128862128928%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl128866128946%_))))
                                      (if (null? _%tl128863128930%_)
                                          (let ((_%x128926%_
                                                 _%hd128865128944%_)
                                                (_%y128933%_
                                                 _%hd128862128928%_))
                                            (_%K128859128918%_
                                             _%y128933%_
                                             _%x128926%_))
                                          (_%__match131397131398%_
                                           _%hd128865128944%_
                                           _%tl128866128946%_)))
                                    (_%__match131397131398%_
                                     _%hd128865128944%_
                                     _%tl128866128946%_))))
                          (_%E128849128873%_)))))
              (if (null? _%all-supers128844128869%_)
                  (_%K128867128955%_)
                  (_%try-match128846128951%_)))))))
    (define base-struct
      (lambda _%all-supers128841%_ (base-struct/list _%all-supers128841%_)))
    (define find-super-constructor
      (lambda (_%super128792%_)
        (let _%lp128794%_ ((_%rest128796%_ _%super128792%_)
                           (_%constructor128797%_ '#f))
          (let* ((_%rest128798128806%_ _%rest128796%_)
                 (_%else128800128814%_ (lambda () _%constructor128797%_))
                 (_%K128802128829%_
                  (lambda (_%rest128817%_ _%hd128818%_)
                    (let ((_%$e128820%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd128818%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e128820%_
                          ((lambda (_%xconstructor128823%_)
                             (if (or (not _%constructor128797%_)
                                     (eq? _%constructor128797%_
                                          _%xconstructor128823%_))
                                 (_%lp128794%_
                                  _%rest128817%_
                                  _%xconstructor128823%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor128797%_
                                        _%xconstructor128823%_)))
                           _%$e128820%_)
                          (_%lp128794%_
                           _%rest128817%_
                           _%constructor128797%_))))))
            (if (pair? _%rest128798128806%_)
                (let ((_%hd128803128832%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest128798128806%_)))
                      (_%tl128804128834%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest128798128806%_))))
                  (let* ((_%hd128837%_ _%hd128803128832%_)
                         (_%rest128839%_ _%tl128804128834%_))
                    (_%K128802128829%_ _%rest128839%_ _%hd128837%_)))
                (_%else128800128814%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list128768%_ _%direct-slots128769%_)
        (let* ((_%next-slot128771%_ '1)
               (_%slot-table128773%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots128775%_ '(__class))
               (_%process-slot128779%_
                (lambda (_%slot128777%_)
                  (if (symbol? _%slot128777%_)
                      '#!void
                      (error '"invalid slot name" _%slot128777%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table128773%_
                              _%slot128777%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table128773%_
                           _%slot128777%_
                           _%next-slot128771%_))
                        (let ((__tmp132629
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot128777%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table128773%_
                           __tmp132629
                           _%next-slot128771%_))
                        (set! _%r-slots128775%_
                              (cons _%slot128777%_ _%r-slots128775%_))
                        (set! _%next-slot128771%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot128771%_ '1))))
                      '#!void)))
               (_%process-slots128785%_
                (lambda (_%g128780128782%_)
                  (for-each _%process-slot128779%_ _%g128780128782%_))))
          (let ((__tmp132631
                 (lambda (_%mixin128788%_)
                   (_%process-slots128785%_
                    (let ((__tmp132632
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin128788%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp132632 '())))))
                (__tmp132630 (reverse _%class-precedence-list128768%_)))
            (declare (not safe))
            (##for-each __tmp132631 __tmp132630))
          (_%process-slots128785%_ _%direct-slots128769%_)
          (let ((_%slot-vector128790%_
                 (list->vector
                  (let ()
                    (declare (not safe))
                    (##reverse _%r-slots128775%_)))))
            (values _%slot-vector128790%_ _%slot-table128773%_)))))
    (define __make-class-type
      (lambda (_%id128637%_
               _%name128638%_
               _%direct-supers128639%_
               _%direct-slots128640%_
               _%properties128641%_
               _%constructor128642%_)
        (let* ((_%id128645%_ _%id128637%_)
               (_%name128653%_ _%name128638%_)
               (_%direct-supers128661%_ _%direct-supers128639%_)
               (_%direct-slots128669%_ _%direct-slots128640%_)
               (_%properties128677%_ _%properties128641%_)
               (_%constructor128685%_ _%constructor128642%_))
          (let ((_%$e128697%_
                 (let ((__tmp132633
                        (lambda (_%$obj128694%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj128694%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp132633 _%direct-supers128661%_))))
            (if _%$e128697%_
                ((lambda (_%g128699128701%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g128699128701%_))
                 _%$e128697%_)
                (let ((_%$e128704%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final?
                                 _%direct-supers128661%_))))
                  (if _%$e128704%_
                      ((lambda (_%g128706128708%_)
                         (error '"Cannot extend final class"
                                _%g128706128708%_))
                       _%$e128704%_)
                      '#!void))))
          (let ((_g132634_ (compute-precedence-list _%direct-supers128661%_)))
            (begin
              (let ((_g132635_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g132634_)
                           (##values-length _g132634_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g132635_ 2)))
                    (error "Context expects 2 values" _g132635_)))
              (let ((_%precedence-list128711%_
                     (let () (declare (not safe)) (##values-ref _g132634_ 0)))
                    (_%struct-super128712%_
                     (let () (declare (not safe)) (##values-ref _g132634_ 1))))
                (let ((_g132636_
                       (compute-class-slots
                        _%precedence-list128711%_
                        _%direct-slots128669%_)))
                  (begin
                    (let ((_g132637_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g132636_)
                                 (##values-length _g132636_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g132637_ 2)))
                          (error "Context expects 2 values" _g132637_)))
                    (let ((_%slot-vector128714%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g132636_ 0)))
                          (_%slot-table128715%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g132636_ 1))))
                      (let* ((_%properties128717%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots128669%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers128661%_)
                                          _%properties128677%_)))
                             (_%constructor*128722%_
                              (let ((_%$e128719%_ _%constructor128685%_))
                                (if _%$e128719%_
                                    _%$e128719%_
                                    (find-super-constructor
                                     _%direct-supers128661%_))))
                             (_%precedence-list128765%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties128717%_))
                                      (memq object::t
                                            _%precedence-list128711%_))
                                  _%precedence-list128711%_
                                  (let _%loop128727%_ ((_%tail128729%_
                                                        _%precedence-list128711%_)
                                                       (_%head128730%_ '()))
                                    (let* ((_%tail128731128739%_
                                            _%tail128729%_)
                                           (_%else128733128747%_
                                            (lambda ()
                                              (let ((__tmp132638
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp132638
                                                 _%head128730%_))))
                                           (_%K128735128753%_
                                            (lambda (_%rest128750%_
                                                     _%hd128751%_)
                                              (if (eq? _%hd128751%_ t::t)
                                                  (let ((__tmp132639
                                                         (cons object::t
                                                               _%tail128729%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp132639
                                                     _%head128730%_))
                                                  (_%loop128727%_
                                                   _%rest128750%_
                                                   (cons _%hd128751%_
                                                         _%head128730%_))))))
                                      (if (pair? _%tail128731128739%_)
                                          (let ((_%hd128736128756%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail128731128739%_)))
                                                (_%tl128737128758%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail128731128739%_))))
                                            (let* ((_%hd128761%_
                                                    _%hd128736128756%_)
                                                   (_%rest128763%_
                                                    _%tl128737128758%_))
                                              (_%K128735128753%_
                                               _%rest128763%_
                                               _%hd128761%_)))
                                          (_%else128733128747%_)))))))
                        (make-class-type-descriptor
                         _%id128645%_
                         _%name128653%_
                         _%struct-super128712%_
                         _%precedence-list128765%_
                         _%slot-vector128714%_
                         _%properties128717%_
                         _%constructor*128722%_
                         _%slot-table128715%_
                         '#f)))))))))))
    (define make-class-type
      (lambda (_%id120186%_
               _%name120187%_
               _%direct-supers120188%_
               _%direct-slots120189%_
               _%properties120190%_
               _%constructor120191%_)
        (if (symbol? _%id120186%_)
            (let ((_%id120195%_ _%id120186%_))
              (if (symbol? _%name120187%_)
                  (let ((_%name120205%_ _%name120187%_))
                    (if (list? _%direct-supers120188%_)
                        (let ((_%direct-supers120215%_
                               _%direct-supers120188%_))
                          (if (list? _%direct-slots120189%_)
                              (let ((_%direct-slots120225%_
                                     _%direct-slots120189%_))
                                (if (list? _%properties120190%_)
                                    (let ((_%properties120235%_
                                           _%properties120190%_))
                                      (if ((lambda (_%$obj120244%_)
                                             (or (not _%$obj120244%_)
                                                 (symbol? _%$obj120244%_)))
                                           _%constructor120191%_)
                                          (let ((_%constructor120251%_
                                                 _%constructor120191%_))
                                            (__make-class-type
                                             _%id120195%_
                                             _%name120205%_
                                             _%direct-supers120215%_
                                             _%direct-slots120225%_
                                             _%properties120235%_
                                             _%constructor120251%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@500.24-500.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor120191%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@499.24-499.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties120190%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@498.24-498.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots120189%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@497.24-497.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers120188%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@496.24-496.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name120187%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@495.24-495.26"
               'contract:
               'symbol?
               'value:
               _%id120186%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass128625%_)
        (let ((_%klass128628%_ _%klass128625%_))
          (cons _%klass128628%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass128628%_ '6 '#f '#f))))))
    (define class-precedence-list
      (lambda (_%klass120381%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass120381%_ 'class))
            (let ((_%klass120385%_ _%klass120381%_))
              (__class-precedence-list _%klass120385%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@533.30-533.35"
               'contract:
               'class-type?
               'value:
               _%klass120381%_)
              '#!void))))
    (define compute-precedence-list
      (lambda (_%direct-supers128622%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers128622%_))))
    (define __make-class-predicate
      (lambda (_%klass128593%_)
        (let* ((_%klass128596%_ _%klass128593%_)
               (_%tid128605%_
                (let () (declare (not safe)) (##type-id _%klass128596%_))))
          (if (__class-type-final? _%klass128596%_)
              (lambda (_%g128607128609%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g128607128609%_
                   _%tid128605%_)))
              (if (__class-type-struct? _%klass128596%_)
                  (lambda (_%g128612128614%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%g128612128614%_
                       _%tid128605%_)))
                  (lambda (_%g128617128619%_)
                    (__class-instance? _%klass128596%_ _%g128617128619%_)))))))
    (define make-class-predicate
      (lambda (_%klass120515%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass120515%_ 'class))
            (let ((_%klass120519%_ _%klass120515%_))
              (__make-class-predicate _%klass120519%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@545.29-545.34"
               'contract:
               'class-type?
               'value:
               _%klass120515%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass128561%_ _%slot128562%_)
        (let* ((_%klass128565%_ _%klass128561%_)
               (_%slot128573%_ _%slot128562%_)
               (_%field128582%_
                (let ((__tmp132640
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass128565%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp132640 _%slot128573%_ '#f))))
          (if (not _%field128582%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass128565%_
                       'slot:
                       _%slot128573%_)
                '#!void)
              (if (__class-type-final? _%klass128565%_)
                  (make-final-slot-accessor
                   _%klass128565%_
                   _%slot128573%_
                   _%field128582%_)
                  (if (__class-type-struct? _%klass128565%_)
                      (make-struct-slot-accessor
                       _%klass128565%_
                       _%slot128573%_
                       _%field128582%_)
                      (if (let ((_%strukt128588%_
                                 (base-struct/1 _%klass128565%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt128588%_
                                    'class))
                                 (let ((__tmp132641
                                        (let ((__tmp132642
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt128588%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp132642))))
                                   (declare (not safe))
                                   (##fx< _%field128582%_ __tmp132641))))
                          (make-struct-subclass-slot-accessor
                           _%klass128565%_
                           _%slot128573%_
                           _%field128582%_)
                          (make-class-cached-slot-accessor
                           _%klass128565%_
                           _%slot128573%_
                           _%field128582%_))))))))
    (define make-class-slot-accessor
      (lambda (_%klass120802%_ _%slot120803%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass120802%_ 'class))
            (let ((_%klass120807%_ _%klass120802%_))
              (if (symbol? _%slot120803%_)
                  (let ((_%slot120817%_ _%slot120803%_))
                    (__make-class-slot-accessor
                     _%klass120807%_
                     _%slot120817%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@576.50-576.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot120803%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@576.33-576.38"
               'contract:
               'class-type?
               'value:
               _%klass120802%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass128529%_ _%slot128530%_)
        (let* ((_%klass128533%_ _%klass128529%_)
               (_%slot128541%_ _%slot128530%_)
               (_%field128550%_
                (let ((__tmp132643
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass128533%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp132643 _%slot128541%_ '#f))))
          (if (not _%field128550%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass128533%_
                       'slot:
                       _%slot128541%_)
                '#!void)
              (if (__class-type-final? _%klass128533%_)
                  (make-final-slot-mutator
                   _%klass128533%_
                   _%slot128541%_
                   _%field128550%_)
                  (if (__class-type-struct? _%klass128533%_)
                      (make-struct-slot-mutator
                       _%klass128533%_
                       _%slot128541%_
                       _%field128550%_)
                      (if (let ((_%strukt128556%_
                                 (base-struct/1 _%klass128533%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt128556%_
                                    'class))
                                 (let ((__tmp132644
                                        (let ((__tmp132645
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt128556%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp132645))))
                                   (declare (not safe))
                                   (##fx< _%field128550%_ __tmp132644))))
                          (make-struct-subclass-slot-mutator
                           _%klass128533%_
                           _%slot128541%_
                           _%field128550%_)
                          (make-class-cached-slot-mutator
                           _%klass128533%_
                           _%slot128541%_
                           _%field128550%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass120947%_ _%slot120948%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass120947%_ 'class))
            (let ((_%klass120952%_ _%klass120947%_))
              (if (symbol? _%slot120948%_)
                  (let ((_%slot120962%_ _%slot120948%_))
                    (__make-class-slot-mutator _%klass120952%_ _%slot120962%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@584.49-584.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot120948%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@584.32-584.37"
               'contract:
               'class-type?
               'value:
               _%klass120947%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass128497%_ _%slot128498%_)
        (let* ((_%klass128501%_ _%klass128497%_)
               (_%slot128509%_ _%slot128498%_)
               (_%field128518%_
                (let ((__tmp132646
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass128501%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp132646 _%slot128509%_ '#f))))
          (if (not _%field128518%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass128501%_
                       'slot:
                       _%slot128509%_)
                '#!void)
              (if (__class-type-final? _%klass128501%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass128501%_
                   _%slot128509%_
                   _%field128518%_)
                  (if (__class-type-struct? _%klass128501%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass128501%_
                       _%slot128509%_
                       _%field128518%_)
                      (if (let ((_%strukt128524%_
                                 (base-struct/1 _%klass128501%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt128524%_
                                    'class))
                                 (let ((__tmp132647
                                        (let ((__tmp132648
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt128524%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp132648))))
                                   (declare (not safe))
                                   (##fx< _%field128518%_ __tmp132647))))
                          (make-struct-slot-unchecked-accessor
                           _%klass128501%_
                           _%slot128509%_
                           _%field128518%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass128501%_
                           _%slot128509%_
                           _%field128518%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass121092%_ _%slot121093%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121092%_ 'class))
            (let ((_%klass121097%_ _%klass121092%_))
              (if (symbol? _%slot121093%_)
                  (let ((_%slot121107%_ _%slot121093%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass121097%_
                     _%slot121107%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.60-592.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot121093%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.43-592.48"
               'contract:
               'class-type?
               'value:
               _%klass121092%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass128465%_ _%slot128466%_)
        (let* ((_%klass128469%_ _%klass128465%_)
               (_%slot128477%_ _%slot128466%_)
               (_%field128486%_
                (let ((__tmp132649
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass128469%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp132649 _%slot128477%_ '#f))))
          (if (not _%field128486%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass128469%_
                       'slot:
                       _%slot128477%_)
                '#!void)
              (if (__class-type-final? _%klass128469%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass128469%_
                   _%slot128477%_
                   _%field128486%_)
                  (if (__class-type-struct? _%klass128469%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass128469%_
                       _%slot128477%_
                       _%field128486%_)
                      (if (let ((_%strukt128492%_
                                 (base-struct/1 _%klass128469%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt128492%_
                                    'class))
                                 (let ((__tmp132650
                                        (let ((__tmp132651
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt128492%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp132651))))
                                   (declare (not safe))
                                   (##fx< _%field128486%_ __tmp132650))))
                          (make-struct-slot-unchecked-mutator
                           _%klass128469%_
                           _%slot128477%_
                           _%field128486%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass128469%_
                           _%slot128477%_
                           _%field128486%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass121237%_ _%slot121238%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121237%_ 'class))
            (let ((_%klass121242%_ _%klass121237%_))
              (if (symbol? _%slot121238%_)
                  (let ((_%slot121252%_ _%slot121238%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass121242%_
                     _%slot121252%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@600.59-600.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot121238%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@600.42-600.47"
               'contract:
               'class-type?
               'value:
               _%klass121237%_)
              '#!void))))
    (define not-an-instance__%
      (lambda (_%object128449%_ _%class128450%_ _%slot128451%_)
        (apply error
               '"not an instance"
               'object:
               _%object128449%_
               'class:
               _%class128450%_
               (if _%slot128451%_
                   (cons 'slot: (cons _%slot128451%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object128456%_ _%class128457%_)
        (let ((_%slot128459%_ '#f))
          (not-an-instance__%
           _%object128456%_
           _%class128457%_
           _%slot128459%_))))
    (define not-an-instance
      (lambda _g132652_
        (let ((_g132653_ (let () (declare (not safe)) (##length _g132652_))))
          (cond ((let () (declare (not safe)) (##fx= _g132653_ 2))
                 (apply not-an-instance__0 _g132652_))
                ((let () (declare (not safe)) (##fx= _g132653_ 3))
                 (apply not-an-instance__% _g132652_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g132652_))))))
    (define make-final-slot-accessor
      (lambda (_%klass128442%_ _%slot128443%_ _%field128444%_)
        (lambda (_%obj128446%_)
          (##direct-structure-ref
           _%obj128446%_
           _%field128444%_
           _%klass128442%_
           _%slot128443%_))))
    (define make-final-slot-mutator
      (lambda (_%klass128435%_ _%slot128436%_ _%field128437%_)
        (lambda (_%obj128439%_ _%val128440%_)
          (##direct-structure-set!
           _%obj128439%_
           _%val128440%_
           _%field128437%_
           _%klass128435%_
           _%slot128436%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass128429%_ _%slot128430%_ _%field128431%_)
        (lambda (_%obj128433%_)
          (##structure-ref
           _%obj128433%_
           _%field128431%_
           _%klass128429%_
           _%slot128430%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass128422%_ _%slot128423%_ _%field128424%_)
        (lambda (_%obj128426%_ _%val128427%_)
          (##structure-set!
           _%obj128426%_
           _%val128427%_
           _%field128424%_
           _%klass128422%_
           _%slot128423%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass128416%_ _%slot128417%_ _%field128418%_)
        (lambda (_%obj128420%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj128420%_
             _%field128418%_
             _%klass128416%_
             _%slot128417%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass128409%_ _%slot128410%_ _%field128411%_)
        (lambda (_%obj128413%_ _%val128414%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj128413%_
             _%val128414%_
             _%field128411%_
             _%klass128409%_
             _%slot128410%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass128403%_ _%slot128404%_ _%field128405%_)
        (lambda (_%obj128407%_)
          (if (class-instance? _%klass128403%_ _%obj128407%_)
              (unchecked-slot-ref _%obj128407%_ _%field128405%_)
              (not-an-instance__%
               _%obj128407%_
               _%klass128403%_
               _%slot128404%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass128396%_ _%slot128397%_ _%field128398%_)
        (lambda (_%obj128400%_ _%val128401%_)
          (if (class-instance? _%klass128396%_ _%obj128400%_)
              (unchecked-field-set!
               _%obj128400%_
               _%field128398%_
               _%val128401%_)
              (not-an-instance__%
               _%obj128400%_
               _%klass128396%_
               _%slot128397%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass128387%_ _%slot128388%_ _%field128389%_)
        (lambda (_%obj128391%_)
          (if (let ((__tmp132654
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass128387%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj128391%_ __tmp132654))
              (unchecked-field-ref _%obj128391%_ _%field128389%_)
              (if (class-instance? _%klass128387%_ _%obj128391%_)
                  (unchecked-slot-ref _%obj128391%_ _%slot128388%_)
                  (not-an-instance__%
                   _%obj128391%_
                   _%klass128387%_
                   _%slot128388%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass128377%_ _%slot128378%_ _%field128379%_)
        (lambda (_%obj128381%_ _%val128382%_)
          (if (let ((__tmp132655
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass128377%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj128381%_ __tmp132655))
              (unchecked-field-set!
               _%obj128381%_
               _%field128379%_
               _%val128382%_)
              (if (class-instance? _%klass128377%_ _%obj128381%_)
                  (unchecked-slot-set!
                   _%obj128381%_
                   _%slot128378%_
                   _%val128382%_)
                  (not-an-instance__%
                   _%obj128381%_
                   _%klass128377%_
                   _%slot128378%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass128371%_ _%slot128372%_ _%field128373%_)
        (lambda (_%obj128375%_)
          (if (let ((__tmp132656
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass128371%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj128375%_ __tmp132656))
              (unchecked-field-ref _%obj128375%_ _%field128373%_)
              (unchecked-slot-ref _%obj128375%_ _%slot128372%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass128364%_ _%slot128365%_ _%field128366%_)
        (lambda (_%obj128368%_ _%val128369%_)
          (if (let ((__tmp132657
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass128364%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj128368%_ __tmp132657))
              (unchecked-field-set!
               _%obj128368%_
               _%field128366%_
               _%val128369%_)
              (unchecked-slot-set!
               _%obj128368%_
               _%slot128365%_
               _%val128369%_)))))
    (define __class-slot-offset
      (lambda (_%klass128343%_ _%slot128344%_)
        (let* ((_%klass128347%_ _%klass128343%_)
               (_%slot128355%_ _%slot128344%_)
               (__tmp132658
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass128347%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp132658 _%slot128355%_ '#f))))
    (define class-slot-offset
      (lambda (_%klass121382%_ _%slot121383%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121382%_ 'class))
            (let ((_%klass121387%_ _%klass121382%_))
              (if (let () (declare (not safe)) (symbolic? _%slot121383%_))
                  (let ((_%slot121397%_ _%slot121383%_))
                    (__class-slot-offset _%klass121387%_ _%slot121397%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@662.43-662.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot121383%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@662.26-662.31"
               'contract:
               'class-type?
               'value:
               _%klass121382%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass128319%_ _%obj128320%_ _%slot128321%_)
        (let* ((_%klass128324%_ _%klass128319%_)
               (_%slot128332%_ _%slot128321%_))
          (if (__class-instance? _%klass128324%_ _%obj128320%_)
              (let ((_%off128341%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj128320%_))
                      _%slot128332%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj128320%_
                 _%off128341%_
                 _%klass128324%_
                 _%slot128332%_))
              (not-an-instance__0 _%obj128320%_ _%klass128324%_)))))
    (define class-slot-ref
      (lambda (_%klass121527%_ _%obj121528%_ _%slot121529%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121527%_ 'class))
            (let ((_%klass121533%_ _%klass121527%_))
              (if (let () (declare (not safe)) (symbolic? _%slot121529%_))
                  (let ((_%slot121543%_ _%slot121529%_))
                    (__class-slot-ref
                     _%klass121533%_
                     _%obj121528%_
                     _%slot121543%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@665.44-665.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot121529%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@665.23-665.28"
               'contract:
               'class-type?
               'value:
               _%klass121527%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass128294%_ _%obj128295%_ _%slot128296%_ _%val128297%_)
        (let* ((_%klass128300%_ _%klass128294%_)
               (_%slot128308%_ _%slot128296%_))
          (if (__class-instance? _%klass128300%_ _%obj128295%_)
              (let ((_%off128317%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj128295%_))
                      _%slot128308%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj128295%_
                 _%val128297%_
                 _%off128317%_
                 _%klass128300%_
                 _%slot128308%_))
              (not-an-instance__0 _%obj128295%_ _%klass128300%_)))))
    (define class-slot-set!
      (lambda (_%klass121673%_ _%obj121674%_ _%slot121675%_ _%val121676%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121673%_ 'class))
            (let ((_%klass121680%_ _%klass121673%_))
              (if (let () (declare (not safe)) (symbolic? _%slot121675%_))
                  (let ((_%slot121690%_ _%slot121675%_))
                    (__class-slot-set!
                     _%klass121680%_
                     _%obj121674%_
                     _%slot121690%_
                     _%val121676%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@671.45-671.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot121675%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@671.24-671.29"
               'contract:
               'class-type?
               'value:
               _%klass121673%_)
              '#!void))))
    (define unchecked-field-ref
      (lambda (_%obj128291%_ _%off128292%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj128291%_ _%off128292%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj128287%_ _%off128288%_ _%val128289%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj128287%_
           _%val128289%_
           _%off128288%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj128284%_ _%slot128285%_)
        (unchecked-field-ref
         _%obj128284%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj128284%_))
          _%slot128285%_))))
    (define unchecked-slot-set!
      (lambda (_%obj128280%_ _%slot128281%_ _%val128282%_)
        (unchecked-field-set!
         _%obj128280%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj128280%_))
          _%slot128281%_)
         _%val128282%_)))
    (define __slot-error
      (lambda (_%obj128277%_ _%slot128278%_)
        (error '"Cannot find slot"
               'object:
               _%obj128277%_
               'slot:
               _%slot128278%_)))
    (define __slot-ref__%
      (lambda (_%obj128234%_ _%slot128235%_ _%E128236%_)
        (let* ((_%slot128239%_ _%slot128235%_)
               (_%E128247%_ _%E128236%_)
               (_%klass128256%_ (class-of _%obj128234%_))
               (_%$e128259%_
                (__class-slot-offset _%klass128256%_ _%slot128239%_)))
          (if _%$e128259%_
              ((lambda (_%off128262%_)
                 (unchecked-field-ref _%obj128234%_ _%off128262%_))
               _%$e128259%_)
              (let ()
                (declare (not safe))
                (_%E128247%_ _%obj128234%_ _%slot128239%_))))))
    (define __slot-ref__0
      (lambda (_%obj128268%_ _%slot128269%_)
        (let ((_%E128271%_ __slot-error))
          (__slot-ref__% _%obj128268%_ _%slot128269%_ _%E128271%_))))
    (define __slot-ref
      (lambda _g132659_
        (let ((_g132660_ (let () (declare (not safe)) (##length _g132659_))))
          (cond ((let () (declare (not safe)) (##fx= _g132660_ 2))
                 (apply __slot-ref__0 _g132659_))
                ((let () (declare (not safe)) (##fx= _g132660_ 3))
                 (apply __slot-ref__% _g132659_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g132659_))))))
    (define slot-ref__%
      (lambda (_%obj121938%_ _%slot121939%_ _%E121940%_)
        (if (symbol? _%slot121939%_)
            (let ((_%slot121944%_ _%slot121939%_))
              (if (procedure? _%E121940%_)
                  (let ((_%E121954%_ _%E121940%_))
                    (__slot-ref__% _%obj121938%_ _%slot121944%_ _%E121954%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@697.38-697.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E121940%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@697.21-697.25"
               'contract:
               'symbol?
               'value:
               _%slot121939%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj121967%_ _%slot121968%_)
        (let ((_%E121970%_ __slot-error))
          (slot-ref__% _%obj121967%_ _%slot121968%_ _%E121970%_))))
    (define slot-ref
      (lambda _g132661_
        (let ((_g132662_ (let () (declare (not safe)) (##length _g132661_))))
          (cond ((let () (declare (not safe)) (##fx= _g132662_ 2))
                 (apply slot-ref__0 _g132661_))
                ((let () (declare (not safe)) (##fx= _g132662_ 3))
                 (apply slot-ref__% _g132661_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g132661_))))))
    (define __slot-set!__%
      (lambda (_%obj128187%_ _%slot128188%_ _%val128189%_ _%E128190%_)
        (let* ((_%slot128193%_ _%slot128188%_)
               (_%E128201%_ _%E128190%_)
               (_%klass128210%_ (class-of _%obj128187%_))
               (_%$e128213%_
                (__class-slot-offset _%klass128210%_ _%slot128193%_)))
          (if _%$e128213%_
              ((lambda (_%off128216%_)
                 (unchecked-field-set!
                  _%obj128187%_
                  _%off128216%_
                  _%val128189%_))
               _%$e128213%_)
              (let ()
                (declare (not safe))
                (_%E128201%_ _%obj128187%_ _%slot128193%_))))))
    (define __slot-set!__0
      (lambda (_%obj128222%_ _%slot128223%_ _%val128224%_)
        (let ((_%E128226%_ __slot-error))
          (__slot-set!__%
           _%obj128222%_
           _%slot128223%_
           _%val128224%_
           _%E128226%_))))
    (define __slot-set!
      (lambda _g132663_
        (let ((_g132664_ (let () (declare (not safe)) (##length _g132663_))))
          (cond ((let () (declare (not safe)) (##fx= _g132664_ 3))
                 (apply __slot-set!__0 _g132663_))
                ((let () (declare (not safe)) (##fx= _g132664_ 4))
                 (apply __slot-set!__% _g132663_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g132663_))))))
    (define slot-set!__%
      (lambda (_%obj122097%_ _%slot122098%_ _%val122099%_ _%E122100%_)
        (if (symbol? _%slot122098%_)
            (let ((_%slot122104%_ _%slot122098%_))
              (if (procedure? _%E122100%_)
                  (let ((_%E122114%_ _%E122100%_))
                    (__slot-set!__%
                     _%obj122097%_
                     _%slot122104%_
                     _%val122099%_
                     _%E122114%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@699.43-699.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E122100%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@699.22-699.26"
               'contract:
               'symbol?
               'value:
               _%slot122098%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj122127%_ _%slot122128%_ _%val122129%_)
        (let ((_%E122131%_ __slot-error))
          (slot-set!__%
           _%obj122127%_
           _%slot122128%_
           _%val122129%_
           _%E122131%_))))
    (define slot-set!
      (lambda _g132665_
        (let ((_g132666_ (let () (declare (not safe)) (##length _g132665_))))
          (cond ((let () (declare (not safe)) (##fx= _g132666_ 3))
                 (apply slot-set!__0 _g132665_))
                ((let () (declare (not safe)) (##fx= _g132666_ 4))
                 (apply slot-set!__% _g132665_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g132665_))))))
    (define __subclass?
      (lambda (_%maybe-sub-class128158%_ _%maybe-super-class128159%_)
        (let* ((_%maybe-sub-class128162%_ _%maybe-sub-class128158%_)
               (_%maybe-super-class128170%_ _%maybe-super-class128159%_)
               (_%maybe-super-class-id128179%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class128170%_)))
               (_%$e128181%_
                (eq? _%maybe-super-class-id128179%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class128162%_)))))
          (if _%$e128181%_
              _%$e128181%_
              (let ((__tmp132668
                     (lambda (_%super-class128184%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class128184%_))
                            _%maybe-super-class-id128179%_)))
                    (__tmp132667
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class128162%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp132668 __tmp132667))))))
    (define subclass?
      (lambda (_%maybe-sub-class122258%_ _%maybe-super-class122259%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class122258%_ 'class))
            (let ((_%maybe-sub-class122263%_ _%maybe-sub-class122258%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class122259%_
                     'class))
                  (let ((_%maybe-super-class122273%_
                         _%maybe-super-class122259%_))
                    (__subclass?
                     _%maybe-sub-class122263%_
                     _%maybe-super-class122273%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@705.45-705.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class122259%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@705.18-705.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class122258%_)
              '#!void))))
    (define object?
      (lambda (_%o128155%_)
        (if (let () (declare (not safe)) (##structure? _%o128155%_))
            (let ((__tmp132669
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o128155%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp132669 'class))
            '#f)))
    (define __direct-instance?
      (lambda (_%klass128142%_ _%obj128143%_)
        (let* ((_%klass128146%_ _%klass128142%_)
               (__tmp132670
                (let () (declare (not safe)) (##type-id _%klass128146%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj128143%_ __tmp132670))))
    (define direct-instance?
      (lambda (_%klass122403%_ _%obj122404%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122403%_ 'class))
            (let ((_%klass122408%_ _%klass122403%_))
              (__direct-instance? _%klass122408%_ _%obj122404%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@719.25-719.30"
               'contract:
               'class-type?
               'value:
               _%klass122403%_)
              '#!void))))
    (define immediate-instance-of?
      (lambda (_%klass128138%_ _%obj128139%_)
        (if (let () (declare (not safe)) (##structure? _%obj128139%_))
            (eq? _%klass128138%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj128139%_)))
            '#f)))
    (define __struct-instance?
      (lambda (_%klass128125%_ _%obj128126%_)
        (let* ((_%klass128129%_ _%klass128125%_)
               (__tmp132671
                (let () (declare (not safe)) (##type-id _%klass128129%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj128126%_ __tmp132671))))
    (define struct-instance?
      (lambda (_%klass122538%_ _%obj122539%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122538%_ 'class))
            (let ((_%klass122543%_ _%klass122538%_))
              (__struct-instance? _%klass122543%_ _%obj122539%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@748.25-748.30"
               'contract:
               'class-type?
               'value:
               _%klass122538%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass128110%_ _%obj128111%_)
        (let* ((_%klass128114%_ _%klass128110%_)
               (_%type128123%_ (class-of _%obj128111%_)))
          (__subclass? _%type128123%_ _%klass128114%_))))
    (define class-instance?
      (lambda (_%klass122673%_ _%obj122674%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122673%_ 'class))
            (let ((_%klass122678%_ _%klass122673%_))
              (__class-instance? _%klass122678%_ _%obj122674%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.24-753.29"
               'contract:
               'class-type?
               'value:
               _%klass122673%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass128087%_ _%k128088%_)
        (let* ((_%klass128091%_ _%klass128087%_) (_%k128099%_ _%k128088%_))
          (if (__class-type-system? _%klass128091%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass128091%_)
                '#!void)
              (let ((_%obj128108%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass128091%_ _%k128099%_))))
                (__object-fill! _%obj128108%_ '#f))))))
    (define make-object
      (lambda (_%klass122808%_ _%k122809%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122808%_ 'class))
            (let ((_%klass122813%_ _%klass122808%_))
              (if (fixnum? _%k122809%_)
                  (let ((_%k122823%_ _%k122809%_))
                    (__make-object _%klass122813%_ _%k122823%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@758.37-758.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k122809%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@758.20-758.25"
               'contract:
               'class-type?
               'value:
               _%klass122808%_)
              '#!void))))
    (define __object-class
      (lambda (_%obj128075%_)
        (let ((_%obj128078%_ _%obj128075%_))
          (declare (not safe))
          (##structure-type _%obj128078%_))))
    (define object-class
      (lambda (_%obj122953%_)
        (if (object? _%obj122953%_)
            (let ((_%obj122957%_ _%obj122953%_))
              (__object-class _%obj122957%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@778.21-778.24"
               'contract:
               'object?
               'value:
               _%obj122953%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj128057%_ _%fill128058%_)
        (let ((_%obj128061%_ _%obj128057%_))
          (let _%loop128070%_ ((_%i128072%_
                                (let ((__tmp132672
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj128061%_))))
                                  (declare (not safe))
                                  (##fx- __tmp132672 '1))))
            (if (let () (declare (not safe)) (##fx> _%i128072%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj128061%_
                     _%fill128058%_
                     _%i128072%_
                     '#f
                     '#f))
                  (_%loop128070%_
                   (let () (declare (not safe)) (##fx- _%i128072%_ '1))))
                _%obj128061%_)))))
    (define object-fill!
      (lambda (_%obj123087%_ _%fill123088%_)
        (if (object? _%obj123087%_)
            (let ((_%obj123092%_ _%obj123087%_))
              (__object-fill! _%obj123092%_ _%fill123088%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@783.21-783.24"
               'contract:
               'object?
               'value:
               _%obj123087%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass128045%_)
        (let* ((_%klass128048%_ _%klass128045%_)
               (__obj132583
                (let ((__tmp132673
                       (let ((__tmp132674
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass128048%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp132674))))
                  (declare (not safe))
                  (##make-structure _%klass128048%_ __tmp132673))))
          (object-fill! __obj132583 '#f)
          __obj132583)))
    (define new-instance
      (lambda (_%klass123222%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123222%_ 'class))
            (let ((_%klass123226%_ _%klass123222%_))
              (__new-instance _%klass123226%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@794.21-794.26"
               'contract:
               'class-type?
               'value:
               _%klass123222%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass128017%_ . _%args128018%_)
        (let* ((_%klass128021%_ _%klass128017%_)
               (_%$e128030%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass128021%_ '10 '#f '#f))))
          (if _%$e128030%_
              ((lambda (_%kons-id128033%_)
                 (let ((_%obj128035%_ (__new-instance _%klass128021%_)))
                   (___constructor-init!
                    _%klass128021%_
                    _%kons-id128033%_
                    _%obj128035%_
                    _%args128018%_)
                   _%obj128035%_))
               _%$e128030%_)
              (if (__class-type-metaclass? _%klass128021%_)
                  (let ((_%obj128038%_ (__new-instance _%klass128021%_)))
                    (__metaclass-instance-init!
                     _%klass128021%_
                     _%obj128038%_
                     _%args128018%_)
                    _%obj128038%_)
                  (if (__class-type-struct? _%klass128021%_)
                      (if (let ((__tmp132676
                                 (__class-type-field-count _%klass128021%_))
                                (__tmp132675
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args128018%_))))
                            (declare (not safe))
                            (##fx= __tmp132676 __tmp132675))
                          (apply ##structure _%klass128021%_ _%args128018%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass128021%_
                                   'slots:
                                   (__class-type-slot-list _%klass128021%_)
                                   'args:
                                   _%args128018%_)
                            '#!void))
                      (let ((_%obj128041%_ (__new-instance _%klass128021%_)))
                        (___class-instance-init!
                         _%klass128021%_
                         _%obj128041%_
                         _%args128018%_)
                        _%obj128041%_)))))))
    (define make-instance
      (lambda (_%klass123356%_ . _%args123357%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123356%_ 'class))
            (let ((_%klass123361%_ _%klass123356%_))
              (declare (not safe))
              (##apply __make-instance _%klass123361%_ _%args123357%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@797.22-797.27"
               'contract:
               'class-type?
               'value:
               _%klass123356%_)
              '#!void))))
    (define make-class-instance make-instance)
    (define __struct-instance-init!
      (lambda (_%obj128004%_ . _%args128005%_)
        (let ((_%obj128008%_ _%obj128004%_))
          (if (let ((__tmp132678
                     (let () (declare (not safe)) (##length _%args128005%_)))
                    (__tmp132677
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj128008%_))))
                (declare (not safe))
                (##fx< __tmp132678 __tmp132677))
              (___struct-instance-init! _%obj128008%_ _%args128005%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj128008%_
                     'args:
                     _%args128005%_))
          '#!void)))
    (define struct-instance-init!
      (lambda (_%obj123491%_ . _%args123492%_)
        (if (object? _%obj123491%_)
            (let ((_%obj123496%_ _%obj123491%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj123496%_ _%args123492%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@822.30-822.33"
               'contract:
               'object?
               'value:
               _%obj123491%_)
              '#!void))))
    (define ___struct-instance-init!
      (lambda (_%obj127963%_ _%args127964%_)
        (let _%lp127966%_ ((_%k127968%_ '1) (_%rest127969%_ _%args127964%_))
          (let* ((_%rest127970127978%_ _%rest127969%_)
                 (_%else127972127986%_ (lambda () _%obj127963%_))
                 (_%K127974127992%_
                  (lambda (_%rest127989%_ _%hd127990%_)
                    (unchecked-field-set!
                     _%obj127963%_
                     _%k127968%_
                     _%hd127990%_)
                    (_%lp127966%_
                     (let () (declare (not safe)) (##fx+ _%k127968%_ '1))
                     _%rest127989%_))))
            (if (pair? _%rest127970127978%_)
                (let ((_%hd127975127995%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest127970127978%_)))
                      (_%tl127976127997%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest127970127978%_))))
                  (let* ((_%hd128000%_ _%hd127975127995%_)
                         (_%rest128002%_ _%tl127976127997%_))
                    (_%K127974127992%_ _%rest128002%_ _%hd128000%_)))
                (_%else127972127986%_))))))
    (define __class-instance-init!
      (lambda (_%obj127950%_ . _%args127951%_)
        (let ((_%obj127954%_ _%obj127950%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj127954%_))
           _%obj127954%_
           _%args127951%_)
          '#!void)))
    (define class-instance-init!
      (lambda (_%obj123626%_ . _%args123627%_)
        (if (object? _%obj123626%_)
            (let ((_%obj123631%_ _%obj123626%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj123631%_ _%args123627%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@862.29-862.32"
               'contract:
               'object?
               'value:
               _%obj123626%_)
              '#!void))))
    (define ___class-instance-init!
      (lambda (_%klass127892%_ _%obj127893%_ _%args127894%_)
        (let _%lp127896%_ ((_%rest127898%_ _%args127894%_))
          (let* ((_%rest127899127909%_ _%rest127898%_)
                 (_%else127901127917%_
                  (lambda ()
                    (if (null? _%rest127898%_)
                        _%obj127893%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass127892%_
                               'rest:
                               _%rest127898%_))))
                 (_%K127903127931%_
                  (lambda (_%rest127920%_ _%val127921%_ _%key127922%_)
                    (if (keyword? _%key127922%_)
                        (let ((_%$e127925%_
                               (__class-slot-offset
                                _%klass127892%_
                                _%key127922%_)))
                          (if _%$e127925%_
                              ((lambda (_%off127928%_)
                                 (unchecked-field-set!
                                  _%obj127893%_
                                  _%off127928%_
                                  _%val127921%_)
                                 (_%lp127896%_ _%rest127920%_))
                               _%$e127925%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass127892%_
                                     'slot:
                                     _%key127922%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key127922%_)))))
            (if (pair? _%rest127899127909%_)
                (let ((_%hd127904127934%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest127899127909%_)))
                      (_%tl127905127936%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest127899127909%_))))
                  (let ((_%key127939%_ _%hd127904127934%_))
                    (if (pair? _%tl127905127936%_)
                        (let ((_%hd127906127941%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl127905127936%_)))
                              (_%tl127907127943%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl127905127936%_))))
                          (let* ((_%val127946%_ _%hd127906127941%_)
                                 (_%rest127948%_ _%tl127907127943%_))
                            (_%K127903127931%_
                             _%rest127948%_
                             _%val127946%_
                             _%key127939%_)))
                        (_%else127901127917%_))))
                (_%else127901127917%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass127888%_ _%obj127889%_ _%args127890%_)
        (apply call-method
               _%klass127888%_
               'instance-init!
               _%obj127889%_
               _%args127890%_)))
    (define __constructor-init!
      (lambda (_%klass127857%_
               _%kons-id127858%_
               _%obj127859%_
               .
               _%args127860%_)
        (let* ((_%klass127863%_ _%klass127857%_)
               (_%kons-id127871%_ _%kons-id127858%_)
               (_%obj127879%_ _%obj127859%_))
          (___constructor-init!
           _%klass127863%_
           _%kons-id127871%_
           _%obj127879%_
           _%args127860%_)
          '#!void)))
    (define constructor-init!
      (lambda (_%klass123761%_
               _%kons-id123762%_
               _%obj123763%_
               .
               _%args123764%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123761%_ 'class))
            (let ((_%klass123768%_ _%klass123761%_))
              (if (symbol? _%kons-id123762%_)
                  (let ((_%kons-id123778%_ _%kons-id123762%_))
                    (if (object? _%obj123763%_)
                        (let ((_%obj123788%_ _%obj123763%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass123768%_
                                   _%kons-id123778%_
                                   _%obj123788%_
                                   _%args123764%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@886.63-886.66"
                           'contract:
                           'object?
                           'value:
                           _%obj123763%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@886.43-886.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id123762%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@886.26-886.31"
               'contract:
               'class-type?
               'value:
               _%klass123761%_)
              '#!void))))
    (define ___constructor-init!
      (lambda (_%klass127846%_ _%kons-id127847%_ _%obj127848%_ _%args127849%_)
        (let ((_%$e127851%_
               (__find-method
                _%klass127846%_
                _%obj127848%_
                _%kons-id127847%_)))
          (if _%$e127851%_
              ((lambda (_%kons127854%_)
                 (apply _%kons127854%_ _%obj127848%_ _%args127849%_)
                 _%obj127848%_)
               _%$e127851%_)
              (error '"missing constructor"
                     'class:
                     _%klass127846%_
                     'method:
                     _%kons-id127847%_)))))
    (define __struct-copy
      (lambda (_%struct127834%_)
        (let ((_%struct127837%_ _%struct127834%_))
          (declare (not safe))
          (##structure-copy _%struct127837%_))))
    (define struct-copy
      (lambda (_%struct123918%_)
        (if (object? _%struct123918%_)
            (let ((_%struct123922%_ _%struct123918%_))
              (__struct-copy _%struct123922%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@900.20-900.26"
               'contract:
               'object?
               'value:
               _%struct123918%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj127815%_)
        (let* ((_%obj127818%_ _%obj127815%_)
               (_%len127827%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj127818%_))))
          (let _%recur127829%_ ((_%i127831%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i127831%_ _%len127827%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj127818%_
                         _%i127831%_
                         '#f
                         '#f))
                      (_%recur127829%_
                       (let () (declare (not safe)) (##fx+ _%i127831%_ '1))))
                '())))))
    (define struct->list
      (lambda (_%obj124052%_)
        (if (object? _%obj124052%_)
            (let ((_%obj124056%_ _%obj124052%_))
              (__struct->list _%obj124056%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@903.21-903.24"
               'contract:
               'object?
               'value:
               _%obj124052%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj127791%_)
        (let* ((_%obj127794%_ _%obj127791%_)
               (_%klass127803%_
                (let () (declare (not safe)) (##structure-type _%obj127794%_)))
               (_%slot-vector127805%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass127803%_ '7 '#f '#f))))
          (let _%loop127807%_ ((_%index127809%_
                                (let ((__tmp132679
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector127805%_))))
                                  (declare (not safe))
                                  (##fx- __tmp132679 '1)))
                               (_%plist127810%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index127809%_ '1))
                (cons _%klass127803%_ _%plist127810%_)
                (let ((_%slot127813%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector127805%_
                          _%index127809%_))))
                  (_%loop127807%_
                   (let () (declare (not safe)) (##fx- _%index127809%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot127813%_))
                         (cons (unchecked-field-ref
                                _%obj127794%_
                                _%index127809%_)
                               _%plist127810%_)))))))))
    (define class->list
      (lambda (_%obj124186%_)
        (if (object? _%obj124186%_)
            (let ((_%obj124190%_ _%obj124186%_)) (__class->list _%obj124190%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@911.20-911.23"
               'contract:
               'object?
               'value:
               _%obj124186%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj127760%_ _%id127761%_ . _%args127762%_)
        (let* ((_%id127765%_ _%id127761%_)
               (_%$e127774%_ (__method-ref _%obj127760%_ _%id127765%_)))
          (if _%$e127774%_
              ((lambda (_%method127777%_)
                 (let ((_%method127779%_ _%method127777%_))
                   (apply _%method127779%_ _%obj127760%_ _%args127762%_)))
               _%$e127774%_)
              (error '"cannot find method"
                     'object:
                     _%obj127760%_
                     'method:
                     _%id127765%_)))))
    (define call-method
      (lambda (_%obj124320%_ _%id124321%_ . _%args124322%_)
        (if (symbol? _%id124321%_)
            (let ((_%id124326%_ _%id124321%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj124320%_
                       _%id124326%_
                       _%args124322%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@926.24-926.26"
               'contract:
               'symbol?
               'value:
               _%id124321%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj127747%_ _%id127748%_)
        (let ((_%id127751%_ _%id127748%_))
          (__find-method
           (class-of _%obj127747%_)
           _%obj127747%_
           _%id127751%_))))
    (define method-ref
      (lambda (_%obj124456%_ _%id124457%_)
        (if (symbol? _%id124457%_)
            (let ((_%id124461%_ _%id124457%_))
              (__method-ref _%obj124456%_ _%id124461%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@953.23-953.25"
               'contract:
               'symbol?
               'value:
               _%id124457%_)
              '#!void))))
    (define checked-method-ref
      (lambda (_%obj127740%_ _%id127741%_)
        (let ((_%$e127744%_ (method-ref _%obj127740%_ _%id127741%_)))
          (if _%$e127744%_
              _%$e127744%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj127740%_
                       'method:
                       _%id127741%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj127708%_ _%id127709%_)
        (let* ((_%id127712%_ _%id127709%_)
               (_%$e127721%_ (__method-ref _%obj127708%_ _%id127712%_)))
          (if _%$e127721%_
              ((lambda (_%method127724%_)
                 (let ((_%method127726%_ _%method127724%_))
                   (lambda _%args127737%_
                     (apply _%method127726%_ _%obj127708%_ _%args127737%_))))
               _%$e127721%_)
              '#f))))
    (define bound-method-ref
      (lambda (_%obj124591%_ _%id124592%_)
        (if (symbol? _%id124592%_)
            (let ((_%id124596%_ _%id124592%_))
              (__bound-method-ref _%obj124591%_ _%id124596%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@961.29-961.31"
               'contract:
               'symbol?
               'value:
               _%id124592%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj127691%_ _%id127692%_)
        (let* ((_%id127695%_ _%id127692%_)
               (_%method127704%_
                (checked-method-ref _%obj127691%_ _%id127695%_)))
          (lambda _%args127706%_
            (apply _%method127704%_ _%obj127691%_ _%args127706%_)))))
    (define checked-bound-method-ref
      (lambda (_%obj124726%_ _%id124727%_)
        (if (symbol? _%id124727%_)
            (let ((_%id124731%_ _%id124727%_))
              (__checked-bound-method-ref _%obj124726%_ _%id124731%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@970.37-970.39"
               'contract:
               'symbol?
               'value:
               _%id124727%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass127662%_ _%obj127663%_ _%id127664%_)
        (let* ((_%klass127667%_ _%klass127662%_) (_%id127675%_ _%id127664%_))
          (if (__class-type-sealed? _%klass127667%_)
              (let ((_%tab127685%_ (__specialize-class _%klass127667%_)))
                (declare (not safe))
                (symbolic-table-ref _%tab127685%_ _%id127675%_ '#f))
              (let ((_%$e127687%_
                     (__direct-method-ref
                      _%klass127667%_
                      _%obj127663%_
                      _%id127675%_)))
                (if _%$e127687%_
                    _%$e127687%_
                    (__mixin-method-ref
                     _%klass127667%_
                     _%obj127663%_
                     _%id127675%_)))))))
    (define find-method
      (lambda (_%klass124861%_ _%obj124862%_ _%id124863%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124861%_ 'class))
            (let ((_%klass124867%_ _%klass124861%_))
              (if (symbol? _%id124863%_)
                  (let ((_%id124877%_ _%id124863%_))
                    (__find-method _%klass124867%_ _%obj124862%_ _%id124877%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@975.41-975.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id124863%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@975.20-975.25"
               'contract:
               'class-type?
               'value:
               _%klass124861%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins127644%_ _%obj127645%_ _%id127646%_)
        (let* ((_%id127649%_ _%id127646%_)
               (__tmp132680
                (lambda (_%g127657127659%_)
                  (direct-method-ref
                   _%g127657127659%_
                   _%obj127645%_
                   _%id127649%_))))
          (declare (not safe))
          (__ormap1 __tmp132680 _%mixins127644%_))))
    (define mixin-find-method
      (lambda (_%mixins125007%_ _%obj125008%_ _%id125009%_)
        (if (symbol? _%id125009%_)
            (let ((_%id125013%_ _%id125009%_))
              (__mixin-find-method
               _%mixins125007%_
               _%obj125008%_
               _%id125013%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@984.37-984.39"
               'contract:
               'symbol?
               'value:
               _%id125009%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass127598%_ _%obj127599%_ _%id127600%_)
        (let* ((_%klass127603%_ _%klass127598%_) (_%id127611%_ _%id127600%_))
          (letrec ((_%metaclass-resolve-method127620%_
                    (lambda ()
                      (let ((__method132584
                             (__method-ref
                              _%klass127603%_
                              'direct-method-ref)))
                        (if __method132584
                            (let ()
                              (declare (not safe))
                              (__method132584
                               _%klass127603%_
                               _%obj127599%_
                               _%id127611%_))
                            (begin
                              (error '"Missing method"
                                     _%klass127603%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!127621%_
                    (lambda ()
                      (let ((_%method127641%_
                             (_%metaclass-resolve-method127620%_)))
                        (let ((__tmp132682
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass127603%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp132681
                               (if _%method127641%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp132682
                           _%id127611%_
                           __tmp132681))
                        _%method127641%_))))
            (let ((_%$e127623%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass127603%_ '11 '#f '#f))))
              (if _%$e127623%_
                  ((lambda (_%ht127626%_)
                     (let ((_%method127628%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht127626%_
                               _%id127611%_
                               '#f))))
                       (if (procedure? _%method127628%_)
                           _%method127628%_
                           (if (__class-type-metaclass? _%klass127603%_)
                               (let ((_%$e127632%_ _%method127628%_))
                                 (if (eq? 'resolved _%$e127632%_)
                                     (_%metaclass-resolve-method127620%_)
                                     (if (eq? 'unknown _%$e127632%_)
                                         '#f
                                         (_%metaclass-resolve-method!127621%_))))
                               '#f))))
                   _%$e127623%_)
                  (if (__class-type-metaclass? _%klass127603%_)
                      (let ((_%tab127637%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass127603%_
                           _%tab127637%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!127621%_))
                      '#f)))))))
    (define direct-method-ref
      (lambda (_%klass125143%_ _%obj125144%_ _%id125145%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125143%_ 'class))
            (let ((_%klass125149%_ _%klass125143%_))
              (if (symbol? _%id125145%_)
                  (let ((_%id125159%_ _%id125145%_))
                    (__direct-method-ref
                     _%klass125149%_
                     _%obj125144%_
                     _%id125159%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@987.47-987.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id125145%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@987.26-987.31"
               'contract:
               'class-type?
               'value:
               _%klass125143%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass127576%_ _%obj127577%_ _%id127578%_)
        (let* ((_%klass127581%_ _%klass127576%_) (_%id127589%_ _%id127578%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass127581%_ '6 '#f '#f))
           _%obj127577%_
           _%id127589%_))))
    (define mixin-method-ref
      (lambda (_%klass125289%_ _%obj125290%_ _%id125291%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125289%_ 'class))
            (let ((_%klass125295%_ _%klass125289%_))
              (if (symbol? _%id125291%_)
                  (let ((_%id125305%_ _%id125291%_))
                    (__mixin-method-ref
                     _%klass125295%_
                     _%obj125290%_
                     _%id125305%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1017.46-1017.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id125291%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1017.25-1017.30"
               'contract:
               'class-type?
               'value:
               _%klass125289%_)
              '#!void))))
    (define __bind-method!__%
      (lambda (_%klass127528%_ _%id127529%_ _%proc127530%_ _%rebind?127531%_)
        (let* ((_%id127534%_ _%id127529%_) (_%proc127542%_ _%proc127530%_))
          (letrec ((_%bind!127551%_
                    (lambda (_%ht127560%_)
                      (if (and (not _%rebind?127531%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht127560%_
                                  _%id127534%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass127528%_
                                 'method:
                                 _%id127534%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht127560%_
                               _%id127534%_
                               _%proc127542%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass127528%_ 'class))
                (let ((_%ht127554%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass127528%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht127554%_
                      (_%bind!127551%_ _%ht127554%_)
                      (let ((_%ht127556%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass127528%_
                           _%ht127556%_
                           '11
                           '#f
                           '#f))
                        (_%bind!127551%_ _%ht127556%_))))
                (if (let () (declare (not safe)) (##type? _%klass127528%_))
                    (__bind-method!__%
                     (__shadow-class__0 _%klass127528%_)
                     _%id127534%_
                     _%proc127542%_
                     _%rebind?127531%_)
                    (error '"bad class; expected class or builtin type"
                           _%klass127528%_)))))))
    (define __bind-method!__0
      (lambda (_%klass127565%_ _%id127566%_ _%proc127567%_)
        (let ((_%rebind?127569%_ '#f))
          (__bind-method!__%
           _%klass127565%_
           _%id127566%_
           _%proc127567%_
           _%rebind?127569%_))))
    (define __bind-method!
      (lambda _g132683_
        (let ((_g132684_ (let () (declare (not safe)) (##length _g132683_))))
          (cond ((let () (declare (not safe)) (##fx= _g132684_ 3))
                 (apply __bind-method!__0 _g132683_))
                ((let () (declare (not safe)) (##fx= _g132684_ 4))
                 (apply __bind-method!__% _g132683_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g132683_))))))
    (define bind-method!__%
      (lambda (_%klass125436%_ _%id125437%_ _%proc125438%_ _%rebind?125439%_)
        (if (symbol? _%id125437%_)
            (let ((_%id125443%_ _%id125437%_))
              (if (procedure? _%proc125438%_)
                  (let ((_%proc125453%_ _%proc125438%_))
                    (__bind-method!__%
                     _%klass125436%_
                     _%id125443%_
                     _%proc125453%_
                     _%rebind?125439%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1020.42-1020.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc125438%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1020.27-1020.29"
               'contract:
               'symbol?
               'value:
               _%id125437%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass125466%_ _%id125467%_ _%proc125468%_)
        (let ((_%rebind?125470%_ '#f))
          (bind-method!__%
           _%klass125466%_
           _%id125467%_
           _%proc125468%_
           _%rebind?125470%_))))
    (define bind-method!
      (lambda _g132685_
        (let ((_g132686_ (let () (declare (not safe)) (##length _g132685_))))
          (cond ((let () (declare (not safe)) (##fx= _g132686_ 3))
                 (apply bind-method!__0 _g132685_))
                ((let () (declare (not safe)) (##fx= _g132686_ 4))
                 (apply bind-method!__% _g132685_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g132685_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint127509%_ _%seed127510%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint127509%_
           procedure-hash
           eq?
           _%seed127510%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint127516%_ '#f) (_%seed127518%_ '0))
          (make-method-specializer-table__%
           _%size-hint127516%_
           _%seed127518%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint127520%_)
        (let ((_%seed127522%_ '0))
          (make-method-specializer-table__%
           _%size-hint127520%_
           _%seed127522%_))))
    (define make-method-specializer-table
      (lambda _g132687_
        (let ((_g132688_ (let () (declare (not safe)) (##length _g132687_))))
          (cond ((let () (declare (not safe)) (##fx= _g132688_ 0))
                 (apply make-method-specializer-table__0 _g132687_))
                ((let () (declare (not safe)) (##fx= _g132688_ 1))
                 (apply make-method-specializer-table__1 _g132687_))
                ((let () (declare (not safe)) (##fx= _g132688_ 2))
                 (apply make-method-specializer-table__% _g132687_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g132687_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint127489%_ _%seed127491%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint127489%_
           procedure-hash
           eq?
           _%seed127491%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint127497%_ '#f) (_%seed127499%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint127497%_
           _%seed127499%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint127501%_)
        (let ((_%seed127503%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint127501%_
           _%seed127503%_))))
    (define make-method-specializer-table/lock
      (lambda _g132689_
        (let ((_g132690_ (let () (declare (not safe)) (##length _g132689_))))
          (cond ((let () (declare (not safe)) (##fx= _g132690_ 0))
                 (apply make-method-specializer-table/lock__0 _g132689_))
                ((let () (declare (not safe)) (##fx= _g132690_ 1))
                 (apply make-method-specializer-table/lock__1 _g132689_))
                ((let () (declare (not safe)) (##fx= _g132690_ 2))
                 (apply make-method-specializer-table/lock__% _g132689_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g132689_))))))
    (define method-specializer-table-ref
      (lambda (_%tab127442%_ _%key127443%_ _%default127444%_)
        (let ((_%table127446%_
               (let () (declare (not safe)) (&raw-table-table _%tab127442%_)))
              (_%seed127447%_
               (let () (declare (not safe)) (&raw-table-seed _%tab127442%_))))
          (let* ((_%h127449%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key127443%_))
                         _%seed127447%_))
                 (_%size127452%_ (vector-length _%table127446%_))
                 (_%entries127455%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size127452%_ '2)))
                 (_%start127458%_
                  (let ((__tmp132691
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h127449%_ _%entries127455%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp132691 '1))))
            (let _%loop127462%_ ((_%probe127465%_ _%start127458%_)
                                 (_%i127467%_ '1)
                                 (_%deleted127469%_ '#f))
              (let ((_%k127472%_ (vector-ref _%table127446%_ _%probe127465%_)))
                (if (eq? _%k127472%_ (macro-unused-obj))
                    _%default127444%_
                    (if (eq? _%k127472%_ (macro-deleted-obj))
                        (_%loop127462%_
                         (let ((_%next-probe127477%_
                                (fx+ _%start127458%_
                                     _%i127467%_
                                     (fx* _%i127467%_ _%i127467%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe127477%_ _%size127452%_))
                         (let () (declare (not safe)) (##fx+ _%i127467%_ '1))
                         (let ((_%$e127480%_ _%deleted127469%_))
                           (if _%$e127480%_ _%$e127480%_ _%probe127465%_)))
                        (if (eq? _%key127443%_ _%k127472%_)
                            (vector-ref
                             _%table127446%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe127465%_ '1)))
                            (_%loop127462%_
                             (let ((_%next-probe127485%_
                                    (fx+ _%start127458%_
                                         _%i127467%_
                                         (fx* _%i127467%_ _%i127467%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe127485%_
                                _%size127452%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i127467%_ '1))
                             _%deleted127469%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab127415%_ _%key127416%_ _%default127417%_)
        (let ((_%lock127419%_
               (let () (declare (not safe)) (&raw-table-lock _%tab127415%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again127424%_ ((_%spin127427%_ '0))
              (if (let ((__tmp132692
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock127419%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp132692 '0))
                  (let ((__tmp132693 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock127419%_ '1 __tmp132693))
                  (if (let () (declare (not safe)) (##fx< _%spin127427%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again127424%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin127427%_ '1))))
                      (let ((_%owner127433%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock127419%_ '1))))
                        (if (eq? _%owner127433%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner127433%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again127424%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r127439%_
                 (method-specializer-table-ref
                  _%tab127415%_
                  _%key127416%_
                  _%default127417%_)))
            (let () (declare (not safe)) (##vector-set! _%lock127419%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock127419%_ '0 '0 '1))
            _%$r127439%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab127367%_ _%key127368%_ _%value127369%_)
        (let ((_%table127371%_
               (let () (declare (not safe)) (&raw-table-table _%tab127367%_)))
              (_%seed127372%_
               (let () (declare (not safe)) (&raw-table-seed _%tab127367%_))))
          (let* ((_%h127374%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key127368%_))
                         _%seed127372%_))
                 (_%size127377%_ (vector-length _%table127371%_))
                 (_%entries127380%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size127377%_ '2)))
                 (_%start127383%_
                  (let ((__tmp132694
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h127374%_ _%entries127380%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp132694 '1))))
            (let _%loop127387%_ ((_%probe127390%_ _%start127383%_)
                                 (_%i127392%_ '1)
                                 (_%deleted127394%_ '#f))
              (let ((_%k127397%_ (vector-ref _%table127371%_ _%probe127390%_)))
                (if (eq? _%k127397%_ (macro-unused-obj))
                    (if _%deleted127394%_
                        (begin
                          (vector-set!
                           _%table127371%_
                           _%deleted127394%_
                           _%key127368%_)
                          (vector-set!
                           _%table127371%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted127394%_ '1))
                           _%value127369%_)
                          ((lambda ()
                             (let ((__tmp132695
                                    (let ((__tmp132696
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab127367%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp132696 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab127367%_
                                __tmp132695)))))
                        (begin
                          (vector-set!
                           _%table127371%_
                           _%probe127390%_
                           _%key127368%_)
                          (vector-set!
                           _%table127371%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe127390%_ '1))
                           _%value127369%_)
                          ((lambda ()
                             (let ((__tmp132697
                                    (let ((__tmp132698
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab127367%_))))
                                      (declare (not safe))
                                      (##fx- __tmp132698 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab127367%_
                                __tmp132697))
                             (let ((__tmp132699
                                    (let ((__tmp132700
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab127367%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp132700 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab127367%_
                                __tmp132699))))))
                    (if (eq? _%k127397%_ (macro-deleted-obj))
                        (_%loop127387%_
                         (let ((_%next-probe127404%_
                                (fx+ _%start127383%_
                                     _%i127392%_
                                     (fx* _%i127392%_ _%i127392%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe127404%_ _%size127377%_))
                         (let () (declare (not safe)) (##fx+ _%i127392%_ '1))
                         (let ((_%$e127407%_ _%deleted127394%_))
                           (if _%$e127407%_ _%$e127407%_ _%probe127390%_)))
                        (if (eq? _%key127368%_ _%k127397%_)
                            (let ()
                              (vector-set!
                               _%table127371%_
                               _%probe127390%_
                               _%key127368%_)
                              (vector-set!
                               _%table127371%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe127390%_ '1))
                               _%value127369%_))
                            (_%loop127387%_
                             (let ((_%next-probe127412%_
                                    (fx+ _%start127383%_
                                         _%i127392%_
                                         (fx* _%i127392%_ _%i127392%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe127412%_
                                _%size127377%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i127392%_ '1))
                             _%deleted127394%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab127363%_ _%key127364%_ _%value127365%_)
        (if (let ((__tmp132703
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab127363%_)))
                  (__tmp132701
                   (let ((__tmp132702
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab127363%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp132702 '4))))
              (declare (not safe))
              (##fx< __tmp132703 __tmp132701))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab127363%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab127363%_
         _%key127364%_
         _%value127365%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab127335%_ _%key127336%_ _%value127337%_)
        (let ((_%lock127340%_
               (let () (declare (not safe)) (&raw-table-lock _%tab127335%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again127345%_ ((_%spin127348%_ '0))
              (if (let ((__tmp132704
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock127340%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp132704 '0))
                  (let ((__tmp132705 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock127340%_ '1 __tmp132705))
                  (if (let () (declare (not safe)) (##fx< _%spin127348%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again127345%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin127348%_ '1))))
                      (let ((_%owner127354%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock127340%_ '1))))
                        (if (eq? _%owner127354%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner127354%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again127345%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r127360%_
                 (method-specializer-table-set!
                  _%tab127335%_
                  _%key127336%_
                  _%value127337%_)))
            (let () (declare (not safe)) (##vector-set! _%lock127340%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock127340%_ '0 '0 '1))
            _%$r127360%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab127286%_
               _%key127287%_
               _%method-specializer-table-update!127288%_
               _%default127289%_)
        (let ((_%table127291%_
               (let () (declare (not safe)) (&raw-table-table _%tab127286%_)))
              (_%seed127292%_
               (let () (declare (not safe)) (&raw-table-seed _%tab127286%_))))
          (let* ((_%h127294%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key127287%_))
                         _%seed127292%_))
                 (_%size127297%_ (vector-length _%table127291%_))
                 (_%entries127300%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size127297%_ '2)))
                 (_%start127303%_
                  (let ((__tmp132706
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h127294%_ _%entries127300%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp132706 '1))))
            (let _%loop127307%_ ((_%probe127310%_ _%start127303%_)
                                 (_%i127312%_ '1)
                                 (_%deleted127314%_ '#f))
              (let ((_%k127317%_ (vector-ref _%table127291%_ _%probe127310%_)))
                (if (eq? _%k127317%_ (macro-unused-obj))
                    (if _%deleted127314%_
                        (begin
                          (vector-set!
                           _%table127291%_
                           _%deleted127314%_
                           _%key127287%_)
                          (vector-set!
                           _%table127291%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted127314%_ '1))
                           (_%method-specializer-table-update!127288%_
                            _%default127289%_))
                          ((lambda ()
                             (let ((__tmp132707
                                    (let ((__tmp132708
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab127286%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp132708 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab127286%_
                                __tmp132707)))))
                        (begin
                          (vector-set!
                           _%table127291%_
                           _%probe127310%_
                           _%key127287%_)
                          (vector-set!
                           _%table127291%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe127310%_ '1))
                           (_%method-specializer-table-update!127288%_
                            _%default127289%_))
                          ((lambda ()
                             (let ((__tmp132709
                                    (let ((__tmp132710
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab127286%_))))
                                      (declare (not safe))
                                      (##fx- __tmp132710 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab127286%_
                                __tmp132709))
                             (let ((__tmp132711
                                    (let ((__tmp132712
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab127286%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp132712 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab127286%_
                                __tmp132711))))))
                    (if (eq? _%k127317%_ (macro-deleted-obj))
                        (_%loop127307%_
                         (let ((_%next-probe127324%_
                                (fx+ _%start127303%_
                                     _%i127312%_
                                     (fx* _%i127312%_ _%i127312%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe127324%_ _%size127297%_))
                         (let () (declare (not safe)) (##fx+ _%i127312%_ '1))
                         (let ((_%$e127327%_ _%deleted127314%_))
                           (if _%$e127327%_ _%$e127327%_ _%probe127310%_)))
                        (if (eq? _%key127287%_ _%k127317%_)
                            (let ()
                              (vector-set!
                               _%table127291%_
                               _%probe127310%_
                               _%key127287%_)
                              (vector-set!
                               _%table127291%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe127310%_ '1))
                               (_%method-specializer-table-update!127288%_
                                (vector-ref
                                 _%table127291%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe127310%_ '1))))))
                            (_%loop127307%_
                             (let ((_%next-probe127332%_
                                    (fx+ _%start127303%_
                                         _%i127312%_
                                         (fx* _%i127312%_ _%i127312%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe127332%_
                                _%size127297%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i127312%_ '1))
                             _%deleted127314%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab127281%_
               _%key127282%_
               _%method-specializer-table-update!127283%_
               _%default127284%_)
        (if (let ((__tmp132715
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab127281%_)))
                  (__tmp132713
                   (let ((__tmp132714
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab127281%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp132714 '4))))
              (declare (not safe))
              (##fx< __tmp132715 __tmp132713))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab127281%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab127281%_
         _%key127282%_
         _%method-specializer-table-update!127283%_
         _%default127284%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab127252%_
               _%key127253%_
               _%method-specializer-table-update!127254%_
               _%default127255%_)
        (let ((_%lock127258%_
               (let () (declare (not safe)) (&raw-table-lock _%tab127252%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again127263%_ ((_%spin127266%_ '0))
              (if (let ((__tmp132716
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock127258%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp132716 '0))
                  (let ((__tmp132717 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock127258%_ '1 __tmp132717))
                  (if (let () (declare (not safe)) (##fx< _%spin127266%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again127263%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin127266%_ '1))))
                      (let ((_%owner127272%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock127258%_ '1))))
                        (if (eq? _%owner127272%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner127272%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again127263%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r127278%_
                 (_%method-specializer-table-update!127254%_
                  _%tab127252%_
                  _%key127253%_
                  _%method-specializer-table-update!127254%_
                  _%default127255%_)))
            (let () (declare (not safe)) (##vector-set! _%lock127258%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock127258%_ '0 '0 '1))
            _%$r127278%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab127209%_ _%key127210%_)
        (let ((_%table127212%_
               (let () (declare (not safe)) (&raw-table-table _%tab127209%_)))
              (_%seed127214%_
               (let () (declare (not safe)) (&raw-table-seed _%tab127209%_))))
          (let* ((_%h127217%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key127210%_))
                         _%seed127214%_))
                 (_%size127220%_ (vector-length _%table127212%_))
                 (_%entries127223%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size127220%_ '2)))
                 (_%start127226%_
                  (let ((__tmp132718
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h127217%_ _%entries127223%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp132718 '1))))
            (let _%loop127230%_ ((_%probe127233%_ _%start127226%_)
                                 (_%i127235%_ '1))
              (let ((_%k127238%_ (vector-ref _%table127212%_ _%probe127233%_)))
                (if (eq? _%k127238%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k127238%_ (macro-deleted-obj))
                        (_%loop127230%_
                         (let ((_%next-probe127243%_
                                (fx+ _%start127226%_
                                     _%i127235%_
                                     (fx* _%i127235%_ _%i127235%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe127243%_ _%size127220%_))
                         (let () (declare (not safe)) (##fx+ _%i127235%_ '1)))
                        (if (eq? _%key127210%_ _%k127238%_)
                            (let ()
                              (vector-set!
                               _%table127212%_
                               _%probe127233%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table127212%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe127233%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp132719
                                        (let ((__tmp132720
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab127209%_))))
                                          (declare (not safe))
                                          (##fx- __tmp132720 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab127209%_
                                    __tmp132719)))))
                            (_%loop127230%_
                             (let ((_%next-probe127249%_
                                    (fx+ _%start127226%_
                                         _%i127235%_
                                         (fx* _%i127235%_ _%i127235%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe127249%_
                                _%size127220%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i127235%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab127181%_ _%key127183%_)
        (let ((_%lock127186%_
               (let () (declare (not safe)) (&raw-table-lock _%tab127181%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again127191%_ ((_%spin127194%_ '0))
              (if (let ((__tmp132721
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock127186%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp132721 '0))
                  (let ((__tmp132722 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock127186%_ '1 __tmp132722))
                  (if (let () (declare (not safe)) (##fx< _%spin127194%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again127191%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin127194%_ '1))))
                      (let ((_%owner127200%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock127186%_ '1))))
                        (if (eq? _%owner127200%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner127200%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again127191%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r127206%_
                 (method-specializer-table-delete!
                  _%tab127181%_
                  _%key127183%_)))
            (let () (declare (not safe)) (##vector-set! _%lock127186%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock127186%_ '0 '0 '1))
            _%$r127206%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc127178%_ _%specializer127179%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc127178%_
         _%specializer127179%_)))
    (define __lookup-method-specializer
      (lambda (_%proc127176%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc127176%_
         '#f)))
    (define __specialize-class
      (lambda (_%klass127158%_)
        (let* ((_%klass127161%_ _%klass127158%_)
               (_%$e127170%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass127161%_ '12 '#f '#f))))
          (if _%$e127170%_
              _%$e127170%_
              (let ((_%method-table127174%_
                     (___specialize-class _%klass127161%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass127161%_
                   _%method-table127174%_
                   '12
                   '#f
                   '#f))
                _%method-table127174%_)))))
    (define specialize-class
      (lambda (_%klass125597%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125597%_ 'class))
            (let ((_%klass125601%_ _%klass125597%_))
              (__specialize-class _%klass125601%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1070.25-1070.30"
               'contract:
               'class-type?
               'value:
               _%klass125597%_)
              '#!void))))
    (define __specialize-method
      (lambda (_%klass127142%_
               _%method-table127143%_
               _%method127144%_
               _%proc127145%_)
        (let ((_%$e127147%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table127143%_
                  _%method127144%_
                  '#f))))
          (if _%$e127147%_
              _%$e127147%_
              (let ((_%$e127150%_
                     (__lookup-method-specializer _%proc127145%_)))
                (if _%$e127150%_
                    ((lambda (_%specialize127153%_)
                       (let ((_%specialized-proc127155%_
                              (_%specialize127153%_
                               _%klass127142%_
                               _%method-table127143%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table127143%_
                          _%method127144%_
                          _%specialized-proc127155%_)))
                     _%$e127150%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table127143%_
                       _%method127144%_
                       _%proc127145%_))))))))
    (define ___specialize-class
      (lambda (_%klass127085%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127085%_ 'class))
            (if (__class-type-metaclass? _%klass127085%_)
                (let ((__method132585
                       (__method-ref _%klass127085%_ 'specialize-class)))
                  (if __method132585
                      (let ()
                        (declare (not safe))
                        (__method132585 _%klass127085%_))
                      (begin
                        (error '"Missing method"
                               _%klass127085%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp132723
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass127085%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp132723))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass127085%_)
                    (let ((_%method-table127091%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop127093%_ ((_%rest127095%_
                                            (__class-precedence-list
                                             _%klass127085%_)))
                        (let* ((_%rest127096127104%_ _%rest127095%_)
                               (_%else127098127112%_
                                (lambda () _%method-table127091%_))
                               (_%K127100127130%_
                                (lambda (_%rest127115%_ _%xklass127116%_)
                                  (let ((_%xmethod-table127117127119%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass127116%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table127117127119%_
                                        (let* ((_%xmethod-table127121%_
                                                _%xmethod-table127117127119%_)
                                               (__tmp132724
                                                (lambda (_%g127122127125%_
                                                         _%g127123127127%_)
                                                  (__specialize-method
                                                   _%klass127085%_
                                                   _%method-table127091%_
                                                   _%g127122127125%_
                                                   _%g127123127127%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table127121%_
                                           __tmp132724))
                                        '#f))
                                  (_%loop127093%_ _%rest127115%_))))
                          (if (pair? _%rest127096127104%_)
                              (let ((_%hd127101127133%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest127096127104%_)))
                                    (_%tl127102127135%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest127096127104%_))))
                                (let* ((_%xklass127138%_ _%hd127101127133%_)
                                       (_%rest127140%_ _%tl127102127135%_))
                                  (_%K127100127130%_
                                   _%rest127140%_
                                   _%xklass127138%_)))
                              (_%else127098127112%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass127085%_))
                (__specialize-class (__shadow-class__0 _%klass127085%_))
                (error '"bad class; cannot specialize" _%klass127085%_)))))
    (define __seal-class!
      (lambda (_%klass127070%_)
        (let ((_%klass127073%_ _%klass127070%_))
          (if (__class-type-sealed? _%klass127073%_)
              '#!void
              (begin
                (if (__class-type-metaclass? _%klass127073%_)
                    (let ()
                      (let ((__method132586
                             (__method-ref _%klass127073%_ 'seal-class!)))
                        (if __method132586
                            (let ()
                              (declare (not safe))
                              (__method132586 _%klass127073%_))
                            (begin
                              (error '"Missing method"
                                     _%klass127073%_
                                     'seal-class!)
                              '#!void)))
                      (__specialize-class _%klass127073%_))
                    (if (let ((__tmp132725
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass127073%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp132725))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass127073%_)
                        (__specialize-class _%klass127073%_)))
                (__class-type-seal! _%klass127073%_))))))
    (define seal-class!
      (lambda (_%klass125731%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125731%_ 'class))
            (let ((_%klass125735%_ _%klass125731%_))
              (__seal-class! _%klass125735%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1116.20-1116.25"
               'contract:
               'class-type?
               'value:
               _%klass125731%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass127007%_ _%obj127008%_ _%id127009%_)
        (let* ((_%subklass127012%_ _%subklass127007%_)
               (_%id127020%_ _%id127009%_))
          (letrec ((_%find-next-method127029%_
                    (lambda (_%klass127031%_)
                      (let _%lp127033%_ ((_%rest127035%_
                                          (class-precedence-list
                                           _%klass127031%_)))
                        (let* ((_%rest127036127044%_ _%rest127035%_)
                               (_%else127038127052%_ (lambda () '#f))
                               (_%K127040127058%_
                                (lambda (_%rest127055%_ _%klass127056%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass127012%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass127056%_)))
                                      (__mixin-find-method
                                       _%rest127055%_
                                       _%obj127008%_
                                       _%id127020%_)
                                      (_%lp127033%_ _%rest127055%_)))))
                          (if (pair? _%rest127036127044%_)
                              (let ((_%hd127041127061%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest127036127044%_)))
                                    (_%tl127042127063%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest127036127044%_))))
                                (let* ((_%klass127066%_ _%hd127041127061%_)
                                       (_%rest127068%_ _%tl127042127063%_))
                                  (_%K127040127058%_
                                   _%rest127068%_
                                   _%klass127066%_)))
                              (_%else127038127052%_)))))))
            (_%find-next-method127029%_ (class-of _%obj127008%_))))))
    (define next-method
      (lambda (_%subklass125865%_ _%obj125866%_ _%id125867%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass125865%_ 'class))
            (let ((_%subklass125871%_ _%subklass125865%_))
              (if (symbol? _%id125867%_)
                  (let ((_%id125881%_ _%id125867%_))
                    (__next-method
                     _%subklass125871%_
                     _%obj125866%_
                     _%id125881%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1138.44-1138.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id125867%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1138.20-1138.28"
               'contract:
               'class-type?
               'value:
               _%subklass125865%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass126978%_ _%obj126979%_ _%id126980%_ . _%args126981%_)
        (let* ((_%subklass126984%_ _%subklass126978%_)
               (_%id126992%_ _%id126980%_)
               (_%$e127001%_
                (__next-method _%subklass126984%_ _%obj126979%_ _%id126992%_)))
          (if _%$e127001%_
              ((lambda (_%methodf127004%_)
                 (apply _%methodf127004%_ _%obj126979%_ _%args126981%_))
               _%$e127001%_)
              (error '"cannot find next method"
                     'object:
                     _%obj126979%_
                     'method:
                     _%id126992%_)))))
    (define call-next-method
      (lambda (_%subklass126011%_ _%obj126012%_ _%id126013%_ . _%args126014%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass126011%_ 'class))
            (let ((_%subklass126018%_ _%subklass126011%_))
              (if (symbol? _%id126013%_)
                  (let ((_%id126028%_ _%id126013%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass126018%_
                             _%obj126012%_
                             _%id126028%_
                             _%args126014%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1149.49-1149.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id126013%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1149.25-1149.33"
               'contract:
               'class-type?
               'value:
               _%subklass126011%_)
              '#!void))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type126871%_ _%properties126872%_)
        (letrec ((_%shadow-type-id126874%_
                  (lambda (_%type126966%_)
                    (let ((__tmp132726
                           (let ()
                             (declare (not safe))
                             (##type-name _%type126966%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp132726 '"::t"))))
                 (_%shadow-type-name126875%_
                  (lambda (_%type126964%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type126964%_))))
                 (_%make-shadow-class126876%_
                  (lambda (_%type126956%_ _%precedence-list126957%_)
                    (let* ((_%super126959%_
                            (if (pair? _%precedence-list126957%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list126957%_))
                                      '())
                                '()))
                           (_%klass126961%_
                            (make-class-type
                             (_%shadow-type-id126874%_ _%type126956%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type126956%_))
                             _%super126959%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (cons (cons 'system-type:
                                                     _%type126956%_)
                                               (let ((__tmp132727
                                                      (if (__type-extensible?
                                                           _%type126956%_)
                                                          '()
                                                          (cons (cons 'final:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '#t)
                        '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (__foldr1
                                                  cons
                                                  _%properties126872%_
                                                  __tmp132727)))))
                             '#f)))
                      (let ((__tmp132728
                             (let ()
                               (declare (not safe))
                               (##type-id _%type126956%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp132728
                         _%klass126961%_))
                      _%klass126961%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again126880%_ ((_%spin126883%_ '0))
              (if (let ((__tmp132729
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp132729 '0))
                  (let ((__tmp132730 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp132730))
                  (if (let () (declare (not safe)) (##fx< _%spin126883%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again126880%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin126883%_ '1))))
                      (let ((_%owner126889%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner126889%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner126889%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again126880%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e126895%_
                 (let ((__tmp132731
                        (let ()
                          (declare (not safe))
                          (##type-id _%type126871%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp132731 '#f))))
            (if _%$e126895%_
                ((lambda (_%klass126898%_)
                   (let ()
                     (declare (not safe))
                     (##vector-set! __shadow-classes-lock '1 '#f))
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-lock '0 '0 '1))
                   _%klass126898%_)
                 _%$e126895%_)
                (let _%loop126901%_ ((_%super126903%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type126871%_)))
                                     (_%hierarchy126904%_ '()))
                  (if (not _%super126903%_)
                      (let _%loop126907%_ ((_%rest126909%_ _%hierarchy126904%_)
                                           (_%precedence-list126910%_ '()))
                        (let* ((_%rest126911126919%_ _%rest126909%_)
                               (_%else126913126929%_
                                (lambda ()
                                  (let ((_%klass126927%_
                                         (_%make-shadow-class126876%_
                                          _%type126871%_
                                          _%precedence-list126910%_)))
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
                                    _%klass126927%_)))
                               (_%K126915126943%_
                                (lambda (_%rest126932%_ _%type126933%_)
                                  (let ((_%$e126935%_
                                         (let ((__tmp132732
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type126933%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp132732
                                            '#f))))
                                    (if _%$e126935%_
                                        ((lambda (_%klass126938%_)
                                           (_%loop126907%_
                                            _%rest126932%_
                                            (cons _%klass126938%_
                                                  _%precedence-list126910%_)))
                                         _%$e126935%_)
                                        (let ((_%klass126941%_
                                               (_%make-shadow-class126876%_
                                                _%type126933%_
                                                _%precedence-list126910%_)))
                                          (_%loop126907%_
                                           _%rest126932%_
                                           (cons _%klass126941%_
                                                 _%precedence-list126910%_))))))))
                          (if (pair? _%rest126911126919%_)
                              (let ((_%hd126916126946%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest126911126919%_)))
                                    (_%tl126917126948%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest126911126919%_))))
                                (let* ((_%type126951%_ _%hd126916126946%_)
                                       (_%rest126953%_ _%tl126917126948%_))
                                  (_%K126915126943%_
                                   _%rest126953%_
                                   _%type126951%_)))
                              (_%else126913126929%_))))
                      (_%loop126901%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super126903%_))
                       (cons _%super126903%_ _%hierarchy126904%_)))))))))
    (define __shadow-class__0
      (lambda (_%type126971%_)
        (let ((_%properties126973%_ '()))
          (__shadow-class__% _%type126971%_ _%properties126973%_))))
    (define __shadow-class
      (lambda _g132733_
        (let ((_g132734_ (let () (declare (not safe)) (##length _g132733_))))
          (cond ((let () (declare (not safe)) (##fx= _g132734_ 1))
                 (apply __shadow-class__0 _g132733_))
                ((let () (declare (not safe)) (##fx= _g132734_ 2))
                 (apply __shadow-class__% _g132733_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g132733_))))))
    (define __type
      (let* ((_%tb126859%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e126861%_ _%tb126859%_))
        (if (eq? '2 _%$e126861%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e126861%_)
                (let ((_%flonum-self-tagging-tags126864%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits126865%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e126867%_ _%flonum-self-tagging-tags126864%_))
                    (if (eq? '0 _%$e126867%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits126865%_ '2))
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
                        (if (eq? '1 _%$e126867%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits126865%_ '2))
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
                            (if (eq? '2 _%$e126867%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e126867%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e126867%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags126864%_))))))))
                (error '"unexpected tag width" _%tb126859%_)))))
    (define __class
      (let* ((_%len126807%_
              (let () (declare (not safe)) (##vector-length __type)))
             (_%cv126809%_
              (let () (declare (not safe)) (##make-vector _%len126807%_ '#f))))
        (let _%loop126812%_ ((_%i126814%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i126814%_ _%len126807%_))
              (let* ((_%t126816%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i126814%_)))
                     (_%f126856%_
                      (if (eq? _%t126816%_ 'undefined)
                          (lambda (_%obj126819%_)
                            (error '"object type is undefined" _%obj126819%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t126816%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj126822%_)
                                (declare (not interrupts-enabled) (not safe))
                                (__system-class _%t126816%_))
                              (if (eq? _%t126816%_ 'subtyped)
                                  (lambda (_%obj126826%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st126829%_
                                           (##subtype _%obj126826%_)))
                                      (if (##fx= _%st126829%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass126832%_
                                                 (##structure-type
                                                  _%obj126826%_)))
                                            (if (##structure-instance-of?
                                                 _%klass126832%_
                                                 'class)
                                                _%klass126832%_
                                                (__shadow-class__0
                                                 _%klass126832%_)))
                                          (if (##fx= _%st126829%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj126826%_)
                                                         '1)
                                                  (__system-class 'box)
                                                  (__system-class 'values))
                                              (let ((_%$e126835%_
                                                     (##vector-ref
                                                      __subtype-id
                                                      _%st126829%_)))
                                                (if _%$e126835%_
                                                    (__system-class
                                                     _%$e126835%_)
                                                    (error '"unknown class"
                                                           'subtype:
                                                           _%st126829%_
                                                           'object:
                                                           _%obj126826%_)))))))
                                  (if (eq? _%t126816%_ 'special)
                                      (lambda (_%obj126840%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (if (char? _%obj126840%_)
                                            (__system-class 'char)
                                            (if (eq? _%obj126840%_ '())
                                                (__system-class 'null)
                                                (if (eq? _%obj126840%_ '#f)
                                                    (__system-class 'boolean)
                                                    (if (eq? _%obj126840%_ '#t)
                                                        (__system-class
                                                         'boolean)
                                                        (if (eq? _%obj126840%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void)
                    (__system-class 'void)
                    (if (eq? _%obj126840%_ '#!eof)
                        (__system-class 'eof)
                        (if (eq? _%obj126840%_ '#!unbound)
                            (__system-class 'unbound)
                            (if (eq? _%obj126840%_ '#!unbound2)
                                (__system-class 'unbound2)
                                (if (eq? _%obj126840%_ '#!optional)
                                    (__system-class 'optional)
                                    (if (eq? _%obj126840%_ '#!rest)
                                        (__system-class 'rest)
                                        (if (eq? _%obj126840%_ '#!key)
                                            (__system-class 'key)
                                            (__system-class
                                             'special)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t126816%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv126809%_ _%i126814%_ _%f126856%_))
                (_%loop126812%_
                 (let () (declare (not safe)) (##fx+ _%i126814%_ '1))))
              _%cv126809%_))))
    (define type-of
      (lambda (_%obj126803%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj126803%_)))))
    (define class-of
      (lambda (_%obj126794%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t126798%_ (##type _%obj126794%_))
                 (_%f126800%_ (##vector-ref __class _%t126798%_)))
            (_%f126800%_ _%obj126794%_)))))
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
      (lambda (_%id126788%_)
        (let ((_%$e126790%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id126788%_ '#f))))
          (if _%$e126790%_
              _%$e126790%_
              (error '"unknown system class" _%id126788%_)))))
    (define __make-system-class
      (lambda (_%id126782%_ _%super126783%_ _%properties126784%_)
        (let ((_%klass126786%_
               (make-class-type
                _%id126782%_
                _%id126782%_
                _%super126783%_
                '()
                (cons (cons 'system: '#t)
                      (let ()
                        (declare (not safe))
                        (__foldr1 cons '() _%properties126784%_)))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id126782%_
             _%klass126786%_))
          _%klass126786%_)))))
