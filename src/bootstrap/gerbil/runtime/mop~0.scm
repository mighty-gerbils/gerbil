(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1773012982)
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
      (let ((_%flags136546%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties136547%_ '((direct-slots:) (system: . #t)))
            (_%slot-table136548%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags136546%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table136548%_
           _%properties136547%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots136503%_
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
             (_%slot-vector136505%_ (list->vector (cons '#f _%slots136503%_)))
             (_%slot-table136531%_
              (let ((_%slot-table136507%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp139573
                       (lambda (_%slot136509%_ _%field136510%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table136507%_
                            _%slot136509%_
                            _%field136510%_))
                         (let ((__tmp139574
                                (let ((_%sym136512%_ _%slot136509%_))
                                  (if (symbol? _%sym136512%_)
                                      (let ((_%sym136517%_ _%sym136512%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym136517%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym136512%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table136507%_
                            __tmp139574
                            _%field136510%_))))
                      (__tmp139571
                       (let ((__tmp139572
                              (let ()
                                (declare (not safe))
                                (##length _%slots136503%_))))
                         (declare (not safe))
                         (##iota __tmp139572 '1))))
                  (declare (not safe))
                  (##for-each __tmp139573 _%slots136503%_ __tmp139571))
                _%slot-table136507%_))
             (_%flags136533%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields136539%_
              (list->vector
               (let ((__tmp139575
                      (map (lambda (_%g136534136536%_)
                             (list _%g136534136536%_ '5 '#f))
                           (drop _%slots136503%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp139575))))
             (_%properties136541%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots136503%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t136543%_
              (let ((__tmp139576 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags136533%_
                 ##type-type
                 _%fields136539%_
                 __tmp139576
                 _%slot-vector136505%_
                 _%slot-table136531%_
                 _%properties136541%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t136543%_ _%t136543%_))
        _%t136543%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags136499%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties136500%_ '((direct-slots:) (system: . #t)))
            (_%slot-table136501%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp139577 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags136499%_
           '#f
           '#()
           __tmp139577
           '#(#f)
           _%slot-table136501%_
           _%properties136500%_
           '#f
           '#f
           '#f
           '#f))))
    (define __class-type
      (lambda (_%klass136487%_)
        (let ((_%klass136490%_ _%klass136487%_))
          (declare (not safe))
          (##structure-type _%klass136490%_))))
    (define class-type
      (lambda (_%klass121861%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121861%_ 'class))
            (let ((_%klass121865%_ _%klass121861%_))
              (__class-type _%klass121865%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass121861%_)
              '#!void))))
    (define class-type?
      (lambda (_%obj136485%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj136485%_ 'class))))
    (define __class-type=?
      (lambda (_%x136464%_ _%y136465%_)
        (let* ((_%x136468%_ _%x136464%_) (_%y136476%_ _%y136465%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x136468%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y136476%_ '1 '#f '#f))))))
    (define class-type=?
      (lambda (_%x121995%_ _%y121996%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x121995%_ 'class))
            (let ((_%x122000%_ _%x121995%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y121996%_ 'class))
                  (let ((_%y122010%_ _%y121996%_))
                    (__class-type=? _%x122000%_ _%y122010%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y121996%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x121995%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type136452%_)
        (let* ((_%type136455%_ _%type136452%_)
               (__tmp139578
                (let ((__tmp139579
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type136455%_))))
                  (declare (not safe))
                  (##fxand __tmp139579 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp139578 type-flag-opaque))))
    (define type-opaque?
      (lambda (_%type122442%_)
        (if (let () (declare (not safe)) (##type? _%type122442%_))
            (let ((_%type122446%_ _%type122442%_))
              (__type-opaque? _%type122446%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type122442%_)
              '#!void))))
    (define __class-type-opaque?
      (lambda (_%klass136440%_)
        (let* ((_%klass136443%_ _%klass136440%_)
               (__tmp139580
                (let ((__tmp139581
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass136443%_))))
                  (declare (not safe))
                  (##fxand __tmp139581 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp139580 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass122576%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122576%_ 'class))
            (let ((_%klass122580%_ _%klass122576%_))
              (__class-type-opaque? _%klass122580%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass122576%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type136428%_)
        (let* ((_%type136431%_ _%type136428%_)
               (__tmp139582
                (let ((__tmp139583
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type136431%_))))
                  (declare (not safe))
                  (##fxand __tmp139583 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp139582 type-flag-extensible))))
    (define type-extensible?
      (lambda (_%type122710%_)
        (if (let () (declare (not safe)) (##type? _%type122710%_))
            (let ((_%type122714%_ _%type122710%_))
              (__type-extensible? _%type122714%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type122710%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type136416%_)
        (let* ((_%type136419%_ _%type136416%_)
               (__tmp139584
                (let ((__tmp139585
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type136419%_))))
                  (declare (not safe))
                  (##fxand __tmp139585 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp139584 '0))))
    (define class-type-final?
      (lambda (_%type122844%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type122844%_ 'class))
            (let ((_%type122848%_ _%type122844%_))
              (__class-type-final? _%type122848%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type122844%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass136404%_)
        (let* ((_%klass136407%_ _%klass136404%_)
               (__tmp139586
                (let ((__tmp139587
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass136407%_))))
                  (declare (not safe))
                  (##fxand __tmp139587 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp139586 class-type-flag-struct))))
    (define class-type-struct?
      (lambda (_%klass122978%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122978%_ 'class))
            (let ((_%klass122982%_ _%klass122978%_))
              (__class-type-struct? _%klass122982%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass122978%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass136392%_)
        (let* ((_%klass136395%_ _%klass136392%_)
               (__tmp139588
                (let ((__tmp139589
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass136395%_))))
                  (declare (not safe))
                  (##fxand __tmp139589 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp139588 class-type-flag-sealed))))
    (define class-type-sealed?
      (lambda (_%klass123112%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123112%_ 'class))
            (let ((_%klass123116%_ _%klass123112%_))
              (__class-type-sealed? _%klass123116%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass123112%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass136380%_)
        (let* ((_%klass136383%_ _%klass136380%_)
               (__tmp139590
                (let ((__tmp139591
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass136383%_))))
                  (declare (not safe))
                  (##fxand __tmp139591 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp139590 class-type-flag-metaclass))))
    (define class-type-metaclass?
      (lambda (_%klass123246%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123246%_ 'class))
            (let ((_%klass123250%_ _%klass123246%_))
              (__class-type-metaclass? _%klass123250%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass123246%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass136368%_)
        (let* ((_%klass136371%_ _%klass136368%_)
               (__tmp139592
                (let ((__tmp139593
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass136371%_))))
                  (declare (not safe))
                  (##fxand __tmp139593 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp139592 class-type-flag-system))))
    (define class-type-system?
      (lambda (_%klass123380%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123380%_ 'class))
            (let ((_%klass123384%_ _%klass123380%_))
              (__class-type-system? _%klass123384%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass123380%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass136356%_)
        (let* ((_%klass136359%_ _%klass136356%_)
               (__tmp139594
                (let ((__tmp139595
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass136359%_))))
                  (declare (not safe))
                  (##fxand __tmp139595 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp139594 class-type-flag-acyclic))))
    (define class-type-acyclic?
      (lambda (_%klass123514%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123514%_ 'class))
            (let ((_%klass123518%_ _%klass123514%_))
              (__class-type-acyclic? _%klass123518%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass123514%_)
              '#!void))))
    (define make-class-type-descriptor
      (lambda (_%type-id136163%_
               _%type-name136164%_
               _%type-super136165%_
               _%precedence-list136166%_
               _%slot-vector136167%_
               _%properties136168%_
               _%constructor136169%_
               _%slot-table136170%_
               _%methods136171%_)
        (letrec ((_%make-props!136174%_
                  (lambda (_%key136306%_)
                    (letrec* ((_%ht136308%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!136309%_
                               (lambda (_%ht136349%_ _%slots136350%_)
                                 (for-each
                                  (lambda (_%g136351136353%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht136349%_
                                       _%g136351136353%_
                                       '#t)))
                                  _%slots136350%_)))
                              (_%put-alist!136310%_
                               (lambda (_%ht136338%_
                                        _%key136339%_
                                        _%alist136340%_)
                                 (let ((_%$e136342%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key136339%_
                                           _%alist136340%_))))
                                   (if _%$e136342%_
                                       ((lambda (_%g136344136346%_)
                                          (_%put-slots!136309%_
                                           _%ht136338%_
                                           _%g136344136346%_))
                                        _%$e136342%_)
                                       '#!void)))))
                      (_%put-alist!136310%_
                       _%ht136308%_
                       _%key136306%_
                       _%properties136168%_)
                      (for-each
                       (lambda (_%mixin136312%_)
                         (let ((_%alist136314%_
                                (##structure-ref
                                 _%mixin136312%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist136314%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key136306%_
                                           _%alist136314%_))))
                               (_%put-slots!136309%_
                                _%ht136308%_
                                (let ((_%klass136319%_ _%mixin136312%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass136319%_
                                         'class))
                                      (let ((_%klass136324%_ _%klass136319%_))
                                        (__class-type-slot-list
                                         _%klass136324%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass136319%_)
                                        '#!void))))
                               (_%put-alist!136310%_
                                _%ht136308%_
                                _%key136306%_
                                _%alist136314%_))))
                       _%precedence-list136166%_)
                      _%ht136308%_))))
          (let* ((_%transparent?136176%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties136168%_)))
                 (_%all-slots-printable?136181%_
                  (let ((_%$e136178%_ _%transparent?136176%_))
                    (if _%$e136178%_
                        _%$e136178%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties136168%_))))))
                 (_%printable136183%_
                  (if (not _%all-slots-printable?136181%_)
                      (_%make-props!136174%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?136188%_
                  (let ((_%$e136185%_ _%transparent?136176%_))
                    (if _%$e136185%_
                        _%$e136185%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties136168%_))))))
                 (_%equalable136190%_
                  (if (not _%all-slots-equalable?136188%_)
                      (_%make-props!136174%_ 'equal:)
                      '#f))
                 (_%first-new-field136192%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super136165%_ 'class))
                      (let ((__tmp139596
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super136165%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp139596))
                      '1))
                 (_%field-info-length136194%_
                  (let ((__tmp139597
                         (let ((__tmp139598
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector136167%_))))
                           (declare (not safe))
                           (##fx- __tmp139598 _%first-new-field136192%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp139597)))
                 (_%field-info136196%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length136194%_ '#f)))
                 (_%struct?136198%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties136168%_)))
                 (_%final?136200%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties136168%_)))
                 (_%metaclass136207%_
                  (let ((_%metaclass136201136203%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties136168%_))))
                    (if _%metaclass136201136203%_
                        (let ((_%metaclass136205%_ _%metaclass136201136203%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass136205%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id136163%_
                                     'metaclass:
                                     _%metaclass136205%_))
                          _%metaclass136205%_)
                        '#f)))
                 (_%system?136209%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties136168%_)))
                 (_%opaque?136248%_
                  (if (or _%transparent?136176%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties136168%_)))
                      '#f
                      (let ((_%$e136214%_ (not _%type-super136165%_)))
                        (if _%$e136214%_
                            _%$e136214%_
                            (let ((_%type136217%_ _%type-super136165%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##type? _%type136217%_))
                                  (let ((_%type136222%_ _%type136217%_))
                                    (__type-opaque? _%type136222%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     '##type?
                                     'value:
                                     _%type136217%_)
                                    '#!void)))))))
                 (_%acyclic?136250%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties136168%_)))
                 (_%type-flags136252%_
                  (let ((__tmp139604
                         (if _%final?136200%_ '0 type-flag-extensible))
                        (__tmp139603
                         (if _%opaque?136248%_ type-flag-opaque '0))
                        (__tmp139602
                         (if _%struct?136198%_ class-type-flag-struct '0))
                        (__tmp139601
                         (if _%metaclass136207%_ class-type-flag-metaclass '0))
                        (__tmp139600
                         (if _%system?136209%_ class-type-flag-system '0))
                        (__tmp139599
                         (if _%acyclic?136250%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp139604
                             __tmp139603
                             __tmp139602
                             __tmp139601
                             __tmp139600
                             __tmp139599)))
                 (_%precedence-list136260%_
                  (let ((_%$e136254%_ (memq t::t _%precedence-list136166%_)))
                    (if _%$e136254%_
                        ((lambda (_%tail136257%_)
                           (if (null? (cdr _%tail136257%_))
                               _%precedence-list136166%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list136166%_)))
                         _%$e136254%_)
                        (let ((__tmp139605 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list136166%_ __tmp139605))))))
            (let _%loop136263%_ ((_%i136265%_ _%first-new-field136192%_)
                                 (_%j136266%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j136266%_ _%field-info-length136194%_))
                  (let* ((_%slot136268%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector136167%_ _%i136265%_)))
                         (_%flags136276%_
                          (if _%transparent?136176%_
                              '0
                              (let ((__tmp139607
                                     (if (or _%all-slots-printable?136181%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable136183%_
                                                _%slot136268%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp139606
                                     (if (or _%all-slots-equalable?136188%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable136190%_
                                                _%slot136268%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp139607 __tmp139606)))))
                    (vector-set!
                     _%field-info136196%_
                     _%j136266%_
                     _%slot136268%_)
                    (vector-set!
                     _%field-info136196%_
                     (let () (declare (not safe)) (##fx+ _%j136266%_ '1))
                     _%flags136276%_)
                    (_%loop136263%_
                     (let () (declare (not safe)) (##fx+ _%i136265%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j136266%_ '3))))
                  '#!void))
            (if _%metaclass136207%_
                (let ((_%val136303%_
                       (let* ((_%klass136279%_ _%metaclass136207%_)
                              (_%args136282%_
                               (list _%type-id136163%_
                                     _%type-name136164%_
                                     _%type-flags136252%_
                                     _%type-super136165%_
                                     _%field-info136196%_
                                     _%precedence-list136260%_
                                     _%slot-vector136167%_
                                     _%slot-table136170%_
                                     _%properties136168%_
                                     _%constructor136169%_
                                     _%methods136171%_)))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%klass136279%_
                                'class))
                             (let ((_%klass136287%_ _%klass136279%_))
                               (declare (not safe))
                               (##apply __make-instance
                                        _%klass136287%_
                                        _%args136282%_))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%klass136279%_)
                               '#!void)))))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val136303%_ 'class))
                      _%val136303%_
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         '"\"gerbil/runtime/mop.ss\"@283.10-287.95"
                         'contract:
                         '(class-type? val)
                         'value:
                         _%val136303%_)
                        '#!void)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id136163%_
                   _%type-name136164%_
                   _%type-flags136252%_
                   _%type-super136165%_
                   _%field-info136196%_
                   _%precedence-list136260%_
                   _%slot-vector136167%_
                   _%slot-table136170%_
                   _%properties136168%_
                   _%constructor136169%_
                   _%methods136171%_
                   '#f
                   '#f)))))))
    (define class-type-id
      (lambda (_%klass136161%_)
        (##structure-ref _%klass136161%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass136159%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136159%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass136156%_ _%val136157%_)
        (##structure-set! _%klass136156%_ _%val136157%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass136151%_ _%val136153%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136151%_
           _%val136153%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass136149%_)
        (##structure-ref _%klass136149%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass136147%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136147%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass136144%_ _%val136145%_)
        (##structure-set! _%klass136144%_ _%val136145%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass136139%_ _%val136141%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136139%_
           _%val136141%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass136137%_)
        (##structure-ref _%klass136137%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass136135%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136135%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass136132%_ _%val136133%_)
        (##structure-set! _%klass136132%_ _%val136133%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass136127%_ _%val136129%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136127%_
           _%val136129%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass136125%_)
        (##structure-ref _%klass136125%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass136123%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136123%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass136120%_ _%val136121%_)
        (##structure-set! _%klass136120%_ _%val136121%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass136115%_ _%val136117%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136115%_
           _%val136117%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass136113%_)
        (##structure-ref _%klass136113%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass136111%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136111%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass136108%_ _%val136109%_)
        (##structure-set! _%klass136108%_ _%val136109%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass136103%_ _%val136105%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136103%_
           _%val136105%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass136101%_)
        (##structure-ref _%klass136101%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass136099%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136099%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass136096%_ _%val136097%_)
        (##structure-set!
         _%klass136096%_
         _%val136097%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass136091%_ _%val136093%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136091%_
           _%val136093%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass136089%_)
        (##structure-ref _%klass136089%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass136087%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136087%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass136084%_ _%val136085%_)
        (##structure-set!
         _%klass136084%_
         _%val136085%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass136079%_ _%val136081%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136079%_
           _%val136081%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass136077%_)
        (##structure-ref _%klass136077%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass136075%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136075%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass136072%_ _%val136073%_)
        (##structure-set!
         _%klass136072%_
         _%val136073%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass136067%_ _%val136069%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136067%_
           _%val136069%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass136065%_)
        (##structure-ref _%klass136065%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass136063%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136063%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass136060%_ _%val136061%_)
        (##structure-set!
         _%klass136060%_
         _%val136061%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass136055%_ _%val136057%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136055%_
           _%val136057%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass136053%_)
        (##structure-ref _%klass136053%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass136051%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136051%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass136048%_ _%val136049%_)
        (##structure-set!
         _%klass136048%_
         _%val136049%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass136043%_ _%val136045%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136043%_
           _%val136045%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass136041%_)
        (##structure-ref _%klass136041%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass136039%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136039%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass136036%_ _%val136037%_)
        (##structure-set!
         _%klass136036%_
         _%val136037%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass136031%_ _%val136033%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136031%_
           _%val136033%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass136029%_)
        (##structure-ref _%klass136029%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass136027%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136027%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass136024%_ _%val136025%_)
        (##structure-set!
         _%klass136024%_
         _%val136025%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass136019%_ _%val136021%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136019%_
           _%val136021%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass136017%_)
        (##structure-ref _%klass136017%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass136015%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136015%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass136012%_ _%val136013%_)
        (##structure-set!
         _%klass136012%_
         _%val136013%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass136007%_ _%val136009%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136007%_
           _%val136009%_
           '13
           class::t
           'interface))))
    (define type-field-list
      (lambda (_%type135771%_)
        (letrec ((_%__fields->list135901%_
                  (lambda (_%fields135965%_)
                    (let* ((_%fields135968%_ _%fields135965%_)
                           (_%fields-len135977%_
                            (let ()
                              (declare (not safe))
                              (##vector-length _%fields135968%_))))
                      (let _%loop135979%_ ((_%i135981%_ '0) (_%r135982%_ '()))
                        (let* ((_%i135985%_ _%i135981%_)
                               (_%r135998%_ _%r135982%_))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i135985%_ _%fields-len135977%_))
                              (_%loop135979%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i135985%_ '3))
                               (cons (vector-ref _%fields135968%_ _%i135985%_)
                                     _%r135998%_))
                              (reverse! _%r135998%_)))))))
                 (_%fields->list135902%_
                  (lambda (_%fields135953%_)
                    (let ((_%fields135956%_ _%fields135953%_))
                      (_%__fields->list135901%_ _%fields135956%_)))))
          (let _%loop135904%_ ((_%type135906%_ _%type135771%_))
            (if (let () (declare (not safe)) (##type? _%type135906%_))
                (if (eq? _%type135906%_ ##type-type)
                    '()
                    (let ((_%$e135911%_
                           (let ()
                             (declare (not safe))
                             (##type-super _%type135906%_))))
                      (if _%$e135911%_
                          ((lambda (_%super135914%_)
                             (let ((__tmp139609
                                    (_%loop135904%_ _%super135914%_))
                                   (__tmp139608
                                    (let* ((_%fields135917%_
                                            (let ()
                                              (declare (not safe))
                                              (##type-fields _%type135906%_)))
                                           (_%fields135921%_ _%fields135917%_))
                                      (_%__fields->list135901%_
                                       _%fields135921%_))))
                               (declare (not safe))
                               (##append __tmp139609 __tmp139608)))
                           _%$e135911%_)
                          (let* ((_%fields135938%_
                                  (let ()
                                    (declare (not safe))
                                    (##type-fields _%type135906%_)))
                                 (_%fields135942%_ _%fields135938%_))
                            (_%__fields->list135901%_ _%fields135942%_)))))
                '())))))
    (define __class-type-slot-list
      (lambda (_%klass135759%_)
        (let ((_%klass135762%_ _%klass135759%_))
          (vector->list
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass135762%_ '7 '#f '#f))
           '1))))
    (define class-type-slot-list
      (lambda (_%klass124038%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124038%_ 'class))
            (let ((_%klass124042%_ _%klass124038%_))
              (__class-type-slot-list _%klass124042%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@369.29-369.34"
               'contract:
               'class-type?
               'value:
               _%klass124038%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass135747%_)
        (let* ((_%klass135750%_ _%klass135747%_)
               (__tmp139610
                (let ((__tmp139611
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass135750%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp139611))))
          (declare (not safe))
          (##fx- __tmp139610 '1))))
    (define class-type-field-count
      (lambda (_%klass124172%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124172%_ 'class))
            (let ((_%klass124176%_ _%klass124172%_))
              (__class-type-field-count _%klass124176%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@371.31-371.36"
               'contract:
               'class-type?
               'value:
               _%klass124172%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass135735%_)
        (let ((_%klass135738%_ _%klass135735%_))
          (let ((__tmp139612
                 (let ((__tmp139613
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass135738%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp139613))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass135738%_
             __tmp139612
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define class-type-seal!
      (lambda (_%klass124306%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124306%_ 'class))
            (let ((_%klass124310%_ _%klass124306%_))
              (__class-type-seal! _%klass124310%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@374.25-374.30"
               'contract:
               'class-type?
               'value:
               _%klass124306%_)
              '#!void))))
    (define __class-type-printable-slots
      (lambda (_%klass135668%_)
        (let ((_%klass135671%_ _%klass135668%_))
          (letrec ((_%get-field-vector135680%_
                    (lambda (_%type135719%_)
                      (let _%loop135721%_ ((_%type135723%_ _%type135719%_))
                        (let* ((_%fields135725%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type135723%_)))
                               (_%$e135727%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type135723%_))))
                          (if _%$e135727%_
                              ((lambda (_%super135730%_)
                                 (let ((_%super-fields135732%_
                                        (_%loop135721%_ _%super135730%_)))
                                   (vector-append
                                    _%super-fields135732%_
                                    _%fields135725%_)))
                               _%$e135727%_)
                              _%fields135725%_)))))
                   (_%get-printable-slot-alist135681%_
                    (lambda (_%type135702%_)
                      (let* ((_%fields135704%_
                              (_%get-field-vector135680%_ _%type135702%_))
                             (_%count135706%_
                              (vector-length _%fields135704%_)))
                        (let _%loop135709%_ ((_%i135711%_ '3)
                                             (_%offset135712%_ '1)
                                             (_%r135713%_ '()))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i135711%_ _%count135706%_))
                              (let ((_%slot-name135715%_
                                     (vector-ref _%fields135704%_ _%i135711%_))
                                    (_%slot-flags135716%_
                                     (vector-ref
                                      _%fields135704%_
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%i135711%_ '1))))
                                    (_%next-i135717%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i135711%_ '2))))
                                (if (let ((__tmp139614
                                           (let ()
                                             (declare (not safe))
                                             (##fxand _%slot-flags135716%_
                                                      '1))))
                                      (declare (not safe))
                                      (##fx= __tmp139614 '0))
                                    (_%loop135709%_
                                     _%next-i135717%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset135712%_ '1))
                                     _%r135713%_)
                                    (_%loop135709%_
                                     _%next-i135717%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset135712%_ '1))
                                     (cons (cons _%slot-name135715%_
                                                 _%offset135712%_)
                                           _%r135713%_))))
                              (reverse! _%r135713%_))))))
                   (_%get-printable-slots!135682%_
                    (lambda (_%klass135697%_ _%type135698%_)
                      (let ((_%printable135700%_
                             (_%get-printable-slot-alist135681%_
                              _%type135698%_)))
                        (##structure-set!
                         _%klass135697%_
                         (cons (cons 'printable-slots: _%printable135700%_)
                               (##structure-ref
                                _%klass135697%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%printable135700%_))))
            (let* ((_%props135684%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass135671%_ '9 '#f '#f)))
                   (_%$e135686%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'printable-slots: _%props135684%_))))
              (if _%$e135686%_
                  _%$e135686%_
                  (let ((_%$e135689%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props135684%_))))
                    (if _%$e135689%_
                        ((lambda (_%g135691135693%_)
                           (_%get-printable-slots!135682%_
                            _%klass135671%_
                            _%g135691135693%_))
                         _%$e135689%_)
                        (_%get-printable-slots!135682%_
                         _%klass135671%_
                         _%klass135671%_)))))))))
    (define class-type-printable-slots
      (lambda (_%klass124440%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124440%_ 'class))
            (let ((_%klass124444%_ _%klass124440%_))
              (__class-type-printable-slots _%klass124444%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@381.35-381.40"
               'contract:
               'class-type?
               'value:
               _%klass124440%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct135637%_ _%maybe-super-struct135638%_)
        (let* ((_%maybe-sub-struct135641%_ _%maybe-sub-struct135637%_)
               (_%maybe-super-struct135649%_ _%maybe-super-struct135638%_)
               (_%maybe-super-struct-id135658%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct135649%_))))
          (let _%lp135660%_ ((_%super-struct135662%_
                              _%maybe-sub-struct135641%_))
            (if (not _%super-struct135662%_)
                '#f
                (if (eq? _%maybe-super-struct-id135658%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct135662%_)))
                    '#t
                    (_%lp135660%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct135662%_)))))))))
    (define substruct?
      (lambda (_%maybe-sub-struct124574%_ _%maybe-super-struct124575%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct124574%_ 'class))
            (let ((_%maybe-sub-struct124579%_ _%maybe-sub-struct124574%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct124575%_
                     'class))
                  (let ((_%maybe-super-struct124589%_
                         _%maybe-super-struct124575%_))
                    (__substruct?
                     _%maybe-sub-struct124579%_
                     _%maybe-super-struct124589%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@427.47-427.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct124575%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@427.19-427.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct124574%_)
              '#!void))))
    (define base-struct/1
      (lambda (_%klass135615%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135615%_ 'class))
            (if (let* ((_%klass135618%_ _%klass135615%_)
                       (_%klass135623%_ _%klass135618%_))
                  (__class-type-struct? _%klass135623%_))
                _%klass135615%_
                (let () (declare (not safe)) (##type-super _%klass135615%_)))
            (if (not _%klass135615%_)
                '#f
                (error '"not a class or false" _%klass135615%_)))))
    (define base-struct/2
      (lambda (_%klass1135538%_ _%klass2135539%_)
        (let ((_%s1135541%_ (base-struct/1 _%klass1135538%_))
              (_%s2135542%_ (base-struct/1 _%klass2135539%_)))
          (if (or (not _%s1135541%_)
                  (and _%s2135542%_
                       (let* ((_%maybe-sub-struct135547%_ _%s1135541%_)
                              (_%maybe-super-struct135550%_ _%s2135542%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%maybe-sub-struct135547%_
                                'class))
                             (let ((_%maybe-sub-struct135555%_
                                    _%maybe-sub-struct135547%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%maybe-super-struct135550%_
                                      'class))
                                   (let ((_%maybe-super-struct135569%_
                                          _%maybe-super-struct135550%_))
                                     (__substruct?
                                      _%maybe-sub-struct135555%_
                                      _%maybe-super-struct135569%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%maybe-super-struct135550%_)
                                     '#!void)))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%maybe-sub-struct135547%_)
                               '#!void)))))
              _%s2135542%_
              (if (or (not _%s2135542%_)
                      (and _%s1135541%_
                           (let* ((_%maybe-sub-struct135583%_ _%s2135542%_)
                                  (_%maybe-super-struct135586%_ _%s1135541%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%maybe-sub-struct135583%_
                                    'class))
                                 (let ((_%maybe-sub-struct135591%_
                                        _%maybe-sub-struct135583%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%maybe-super-struct135586%_
                                          'class))
                                       (let ((_%maybe-super-struct135603%_
                                              _%maybe-super-struct135586%_))
                                         (__substruct?
                                          _%maybe-sub-struct135591%_
                                          _%maybe-super-struct135603%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          'class-type?
                                          'value:
                                          _%maybe-super-struct135586%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'class-type?
                                    'value:
                                    _%maybe-sub-struct135583%_)
                                   '#!void)))))
                  _%s1135541%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1135538%_
                         _%klass2135539%_
                         _%s1135541%_
                         _%s2135542%_))))))
    (define base-struct/list
      (lambda (_%all-supers135423%_)
        (let* ((_%all-supers135424135449%_ _%all-supers135423%_)
               (_%E135429135453%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers135424135449%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K135447135535%_ (lambda () '#f))
                (_%K135444135521%_
                 (lambda (_%x135519%_) (base-struct/1 _%x135519%_)))
                (_%K135439135498%_
                 (lambda (_%y135495%_ _%x135496%_)
                   (base-struct/2 _%x135496%_ _%y135495%_)))
                (_%K135430135460%_
                 (lambda (_%y135457%_ _%x135458%_)
                   (let ()
                     (declare (not safe))
                     (foldr__0 base-struct/2 _%x135458%_ _%y135457%_)))))
            (let* ((_%__match138385138386%_
                    (lambda (_%hd135431135463%_ _%tl135432135465%_)
                      (let ((_%x135468%_ _%hd135431135463%_))
                        (letrec ((_%splice-rest135434135470%_
                                  (lambda (_%rest135438135477%_ _%y135479%_)
                                    (if (null? _%rest135438135477%_)
                                        (_%K135430135460%_
                                         _%y135479%_
                                         _%x135468%_)
                                        (_%E135429135453%_))))
                                 (_%splice-try135436135472%_
                                  (lambda (_%hd135437135481%_
                                           _%rest135438135483%_
                                           _%y135433135484%_)
                                    (let ((_%y135486%_ _%hd135437135481%_))
                                      (_%splice-loop135435135474%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest135438135483%_))
                                       (cons _%y135486%_ _%y135433135484%_)))))
                                 (_%splice-loop135435135474%_
                                  (lambda (_%rest135438135488%_
                                           _%y135433135489%_)
                                    (if (pair? _%rest135438135488%_)
                                        (_%splice-try135436135472%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest135438135488%_))
                                         _%rest135438135488%_
                                         _%y135433135489%_)
                                        (_%splice-rest135434135470%_
                                         _%rest135438135488%_
                                         (reverse _%y135433135489%_))))))
                          (_%splice-loop135435135474%_
                           _%tl135432135465%_
                           '())))))
                   (_%try-match135426135531%_
                    (lambda ()
                      (if (pair? _%all-supers135424135449%_)
                          (let ((_%tl135446135526%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers135424135449%_)))
                                (_%hd135445135524%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers135424135449%_))))
                            (if (null? _%tl135446135526%_)
                                (let ((_%x135529%_ _%hd135445135524%_))
                                  (base-struct/1 _%x135529%_))
                                (if (pair? _%tl135446135526%_)
                                    (let ((_%tl135443135510%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl135446135526%_)))
                                          (_%hd135442135508%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl135446135526%_))))
                                      (if (null? _%tl135443135510%_)
                                          (let ((_%x135506%_
                                                 _%hd135445135524%_)
                                                (_%y135513%_
                                                 _%hd135442135508%_))
                                            (_%K135439135498%_
                                             _%y135513%_
                                             _%x135506%_))
                                          (_%__match138385138386%_
                                           _%hd135445135524%_
                                           _%tl135446135526%_)))
                                    (_%__match138385138386%_
                                     _%hd135445135524%_
                                     _%tl135446135526%_))))
                          (_%E135429135453%_)))))
              (if (null? _%all-supers135424135449%_)
                  (_%K135447135535%_)
                  (_%try-match135426135531%_)))))))
    (define base-struct
      (lambda _%all-supers135421%_ (base-struct/list _%all-supers135421%_)))
    (define find-super-constructor
      (lambda (_%super135372%_)
        (let _%lp135374%_ ((_%rest135376%_ _%super135372%_)
                           (_%constructor135377%_ '#f))
          (let* ((_%rest135378135386%_ _%rest135376%_)
                 (_%else135380135394%_ (lambda () _%constructor135377%_))
                 (_%K135382135409%_
                  (lambda (_%rest135397%_ _%hd135398%_)
                    (let ((_%$e135400%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd135398%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e135400%_
                          ((lambda (_%xconstructor135403%_)
                             (if (or (not _%constructor135377%_)
                                     (eq? _%constructor135377%_
                                          _%xconstructor135403%_))
                                 (_%lp135374%_
                                  _%rest135397%_
                                  _%xconstructor135403%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor135377%_
                                        _%xconstructor135403%_)))
                           _%$e135400%_)
                          (_%lp135374%_
                           _%rest135397%_
                           _%constructor135377%_))))))
            (if (pair? _%rest135378135386%_)
                (let ((_%hd135383135412%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest135378135386%_)))
                      (_%tl135384135414%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest135378135386%_))))
                  (let* ((_%hd135417%_ _%hd135383135412%_)
                         (_%rest135419%_ _%tl135384135414%_))
                    (_%K135382135409%_ _%rest135419%_ _%hd135417%_)))
                (_%else135380135394%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list135364%_ _%direct-slots135365%_)
        (let ((__tmp139616
               (lambda (_%mixin135367%_)
                 (let ((__tmp139617
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%mixin135367%_
                           '9
                           '#f
                           '#f))))
                   (declare (not safe))
                   (agetq__% 'direct-slots: __tmp139617 '()))))
              (__tmp139615
               (lambda (_%slot-list135369%_ _%slot-table135370%_)
                 (values (list->vector _%slot-list135369%_)
                         _%slot-table135370%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%class-precedence-list135364%_
           _%direct-slots135365%_
           __tmp139616
           __tmp139615))))
    (define __make-class-type
      (lambda (_%id135191%_
               _%name135192%_
               _%direct-supers135193%_
               _%direct-slots135194%_
               _%properties135195%_
               _%constructor135196%_)
        (let* ((_%id135199%_ _%id135191%_)
               (_%name135207%_ _%name135192%_)
               (_%direct-supers135215%_ _%direct-supers135193%_)
               (_%direct-slots135223%_ _%direct-slots135194%_)
               (_%properties135231%_ _%properties135195%_)
               (_%constructor135239%_ _%constructor135196%_))
          (let ((_%$e135273%_
                 (let* ((_%pred135251%_
                         (lambda (_%$obj135248%_)
                           (not (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%$obj135248%_
                                   'class)))))
                        (_%lst135254%_ _%direct-supers135215%_)
                        (_%pred135259%_ _%pred135251%_))
                   (declare (not safe))
                   (__find _%pred135259%_ _%lst135254%_))))
            (if _%$e135273%_
                ((lambda (_%g135275135277%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g135275135277%_))
                 _%$e135273%_)
                (let ((_%$e135300%_
                       (let* ((_%pred135280%_ __class-type-final?)
                              (_%lst135283%_ _%direct-supers135215%_)
                              (_%pred135288%_ _%pred135280%_))
                         (declare (not safe))
                         (__find _%pred135288%_ _%lst135283%_))))
                  (if _%$e135300%_
                      ((lambda (_%g135302135304%_)
                         (error '"Cannot extend final class"
                                _%g135302135304%_))
                       _%$e135300%_)
                      '#!void))))
          (let ((_g139618_ (compute-precedence-list _%direct-supers135215%_)))
            (begin
              (let ((_g139619_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g139618_)
                           (##values-length _g139618_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g139619_ 2)))
                    (error "Context expects 2 values" _g139619_)))
              (let ((_%precedence-list135307%_
                     (let () (declare (not safe)) (##values-ref _g139618_ 0)))
                    (_%struct-super135308%_
                     (let () (declare (not safe)) (##values-ref _g139618_ 1))))
                (let ((_g139620_
                       (compute-class-slots
                        _%precedence-list135307%_
                        _%direct-slots135223%_)))
                  (begin
                    (let ((_g139621_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g139620_)
                                 (##values-length _g139620_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g139621_ 2)))
                          (error "Context expects 2 values" _g139621_)))
                    (let ((_%slot-vector135310%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g139620_ 0)))
                          (_%slot-table135311%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g139620_ 1))))
                      (let* ((_%properties135313%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots135223%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers135215%_)
                                          _%properties135231%_)))
                             (_%constructor*135318%_
                              (let ((_%$e135315%_ _%constructor135239%_))
                                (if _%$e135315%_
                                    _%$e135315%_
                                    (find-super-constructor
                                     _%direct-supers135215%_))))
                             (_%precedence-list135361%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties135313%_))
                                      (memq object::t
                                            _%precedence-list135307%_))
                                  _%precedence-list135307%_
                                  (let _%loop135323%_ ((_%tail135325%_
                                                        _%precedence-list135307%_)
                                                       (_%head135326%_ '()))
                                    (let* ((_%tail135327135335%_
                                            _%tail135325%_)
                                           (_%else135329135343%_
                                            (lambda ()
                                              (let ((__tmp139622
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp139622
                                                 _%head135326%_))))
                                           (_%K135331135349%_
                                            (lambda (_%rest135346%_
                                                     _%hd135347%_)
                                              (if (eq? _%hd135347%_ t::t)
                                                  (let ((__tmp139623
                                                         (cons object::t
                                                               _%tail135325%_)))
                                                    (declare (not safe))
                                                    (foldl__0
                                                     cons
                                                     __tmp139623
                                                     _%head135326%_))
                                                  (_%loop135323%_
                                                   _%rest135346%_
                                                   (cons _%hd135347%_
                                                         _%head135326%_))))))
                                      (if (pair? _%tail135327135335%_)
                                          (let ((_%hd135332135352%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail135327135335%_)))
                                                (_%tl135333135354%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail135327135335%_))))
                                            (let* ((_%hd135357%_
                                                    _%hd135332135352%_)
                                                   (_%rest135359%_
                                                    _%tl135333135354%_))
                                              (_%K135331135349%_
                                               _%rest135359%_
                                               _%hd135357%_)))
                                          (_%else135329135343%_)))))))
                        (make-class-type-descriptor
                         _%id135199%_
                         _%name135207%_
                         _%struct-super135308%_
                         _%precedence-list135361%_
                         _%slot-vector135310%_
                         _%properties135313%_
                         _%constructor*135318%_
                         _%slot-table135311%_
                         '#f)))))))))))
    (define make-class-type
      (lambda (_%id124719%_
               _%name124720%_
               _%direct-supers124721%_
               _%direct-slots124722%_
               _%properties124723%_
               _%constructor124724%_)
        (if (symbol? _%id124719%_)
            (let ((_%id124728%_ _%id124719%_))
              (if (symbol? _%name124720%_)
                  (let ((_%name124738%_ _%name124720%_))
                    (if (list? _%direct-supers124721%_)
                        (let ((_%direct-supers124748%_
                               _%direct-supers124721%_))
                          (if (list? _%direct-slots124722%_)
                              (let ((_%direct-slots124758%_
                                     _%direct-slots124722%_))
                                (if (list? _%properties124723%_)
                                    (let ((_%properties124768%_
                                           _%properties124723%_))
                                      (if ((lambda (_%$obj124777%_)
                                             (or (not _%$obj124777%_)
                                                 (symbol? _%$obj124777%_)))
                                           _%constructor124724%_)
                                          (let ((_%constructor124784%_
                                                 _%constructor124724%_))
                                            (__make-class-type
                                             _%id124728%_
                                             _%name124738%_
                                             _%direct-supers124748%_
                                             _%direct-slots124758%_
                                             _%properties124768%_
                                             _%constructor124784%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@508.24-508.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor124724%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@507.24-507.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties124723%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@506.24-506.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots124722%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@505.24-505.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers124721%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@504.24-504.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name124720%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.24-503.26"
               'contract:
               'symbol?
               'value:
               _%id124719%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass135179%_)
        (let ((_%klass135182%_ _%klass135179%_))
          (cons _%klass135182%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass135182%_ '6 '#f '#f))))))
    (define class-precedence-list
      (lambda (_%klass124914%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124914%_ 'class))
            (let ((_%klass124918%_ _%klass124914%_))
              (__class-precedence-list _%klass124918%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@541.30-541.35"
               'contract:
               'class-type?
               'value:
               _%klass124914%_)
              '#!void))))
    (define compute-precedence-list
      (lambda (_%direct-supers135176%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers135176%_))))
    (define __make-class-predicate
      (lambda (_%klass135092%_)
        (let* ((_%klass135095%_ _%klass135092%_)
               (_%tid135104%_
                (let () (declare (not safe)) (##type-id _%klass135095%_))))
          (if (let* ((_%type135106%_ _%klass135095%_)
                     (_%type135111%_ _%type135106%_))
                (__class-type-final? _%type135111%_))
              (lambda (_%g135125135127%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g135125135127%_
                   _%tid135104%_)))
              (if (let* ((_%klass135130%_ _%klass135095%_)
                         (_%klass135135%_ _%klass135130%_))
                    (__class-type-struct? _%klass135135%_))
                  (lambda (_%g135145135147%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%g135145135147%_
                       _%tid135104%_)))
                  (lambda (_%g135150135152%_)
                    (let* ((_%klass135155%_ _%klass135095%_)
                           (_%obj135158%_ _%g135150135152%_)
                           (_%klass135163%_ _%klass135155%_))
                      (__class-instance? _%klass135163%_ _%obj135158%_))))))))
    (define make-class-predicate
      (lambda (_%klass125048%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125048%_ 'class))
            (let ((_%klass125052%_ _%klass125048%_))
              (__make-class-predicate _%klass125052%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@553.29-553.34"
               'contract:
               'class-type?
               'value:
               _%klass125048%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass135026%_ _%slot135027%_)
        (let* ((_%klass135030%_ _%klass135026%_)
               (_%slot135038%_ _%slot135027%_)
               (_%field135047%_
                (let ((__tmp139624
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass135030%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp139624 _%slot135038%_ '#f))))
          (if (not _%field135047%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass135030%_
                       'slot:
                       _%slot135038%_)
                '#!void)
              (if (let* ((_%type135051%_ _%klass135030%_)
                         (_%type135056%_ _%type135051%_))
                    (__class-type-final? _%type135056%_))
                  (make-final-slot-accessor
                   _%klass135030%_
                   _%slot135038%_
                   _%field135047%_)
                  (if (let* ((_%klass135071%_ _%klass135030%_)
                             (_%klass135076%_ _%klass135071%_))
                        (__class-type-struct? _%klass135076%_))
                      (make-struct-slot-accessor
                       _%klass135030%_
                       _%slot135038%_
                       _%field135047%_)
                      (if (let ((_%strukt135087%_
                                 (base-struct/1 _%klass135030%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt135087%_
                                    'class))
                                 (let ((__tmp139625
                                        (let ((__tmp139626
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt135087%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp139626))))
                                   (declare (not safe))
                                   (##fx< _%field135047%_ __tmp139625))))
                          (make-struct-subclass-slot-accessor
                           _%klass135030%_
                           _%slot135038%_
                           _%field135047%_)
                          (make-class-cached-slot-accessor
                           _%klass135030%_
                           _%slot135038%_
                           _%field135047%_))))))))
    (define make-class-slot-accessor
      (lambda (_%klass125335%_ _%slot125336%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125335%_ 'class))
            (let ((_%klass125340%_ _%klass125335%_))
              (if (symbol? _%slot125336%_)
                  (let ((_%slot125350%_ _%slot125336%_))
                    (__make-class-slot-accessor
                     _%klass125340%_
                     _%slot125350%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@584.50-584.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot125336%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@584.33-584.38"
               'contract:
               'class-type?
               'value:
               _%klass125335%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass134960%_ _%slot134961%_)
        (let* ((_%klass134964%_ _%klass134960%_)
               (_%slot134972%_ _%slot134961%_)
               (_%field134981%_
                (let ((__tmp139627
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass134964%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp139627 _%slot134972%_ '#f))))
          (if (not _%field134981%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass134964%_
                       'slot:
                       _%slot134972%_)
                '#!void)
              (if (let* ((_%type134985%_ _%klass134964%_)
                         (_%type134990%_ _%type134985%_))
                    (__class-type-final? _%type134990%_))
                  (make-final-slot-mutator
                   _%klass134964%_
                   _%slot134972%_
                   _%field134981%_)
                  (if (let* ((_%klass135005%_ _%klass134964%_)
                             (_%klass135010%_ _%klass135005%_))
                        (__class-type-struct? _%klass135010%_))
                      (make-struct-slot-mutator
                       _%klass134964%_
                       _%slot134972%_
                       _%field134981%_)
                      (if (let ((_%strukt135021%_
                                 (base-struct/1 _%klass134964%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt135021%_
                                    'class))
                                 (let ((__tmp139628
                                        (let ((__tmp139629
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt135021%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp139629))))
                                   (declare (not safe))
                                   (##fx< _%field134981%_ __tmp139628))))
                          (make-struct-subclass-slot-mutator
                           _%klass134964%_
                           _%slot134972%_
                           _%field134981%_)
                          (make-class-cached-slot-mutator
                           _%klass134964%_
                           _%slot134972%_
                           _%field134981%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass125480%_ _%slot125481%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125480%_ 'class))
            (let ((_%klass125485%_ _%klass125480%_))
              (if (symbol? _%slot125481%_)
                  (let ((_%slot125495%_ _%slot125481%_))
                    (__make-class-slot-mutator _%klass125485%_ _%slot125495%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.49-592.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot125481%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.32-592.37"
               'contract:
               'class-type?
               'value:
               _%klass125480%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass134894%_ _%slot134895%_)
        (let* ((_%klass134898%_ _%klass134894%_)
               (_%slot134906%_ _%slot134895%_)
               (_%field134915%_
                (let ((__tmp139630
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass134898%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp139630 _%slot134906%_ '#f))))
          (if (not _%field134915%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass134898%_
                       'slot:
                       _%slot134906%_)
                '#!void)
              (if (let* ((_%type134919%_ _%klass134898%_)
                         (_%type134924%_ _%type134919%_))
                    (__class-type-final? _%type134924%_))
                  (make-struct-slot-unchecked-accessor
                   _%klass134898%_
                   _%slot134906%_
                   _%field134915%_)
                  (if (let* ((_%klass134939%_ _%klass134898%_)
                             (_%klass134944%_ _%klass134939%_))
                        (__class-type-struct? _%klass134944%_))
                      (make-struct-slot-unchecked-accessor
                       _%klass134898%_
                       _%slot134906%_
                       _%field134915%_)
                      (if (let ((_%strukt134955%_
                                 (base-struct/1 _%klass134898%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt134955%_
                                    'class))
                                 (let ((__tmp139631
                                        (let ((__tmp139632
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt134955%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp139632))))
                                   (declare (not safe))
                                   (##fx< _%field134915%_ __tmp139631))))
                          (make-struct-slot-unchecked-accessor
                           _%klass134898%_
                           _%slot134906%_
                           _%field134915%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass134898%_
                           _%slot134906%_
                           _%field134915%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass125625%_ _%slot125626%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125625%_ 'class))
            (let ((_%klass125630%_ _%klass125625%_))
              (if (symbol? _%slot125626%_)
                  (let ((_%slot125640%_ _%slot125626%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass125630%_
                     _%slot125640%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@600.60-600.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot125626%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@600.43-600.48"
               'contract:
               'class-type?
               'value:
               _%klass125625%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass134828%_ _%slot134829%_)
        (let* ((_%klass134832%_ _%klass134828%_)
               (_%slot134840%_ _%slot134829%_)
               (_%field134849%_
                (let ((__tmp139633
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass134832%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp139633 _%slot134840%_ '#f))))
          (if (not _%field134849%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass134832%_
                       'slot:
                       _%slot134840%_)
                '#!void)
              (if (let* ((_%type134853%_ _%klass134832%_)
                         (_%type134858%_ _%type134853%_))
                    (__class-type-final? _%type134858%_))
                  (make-struct-slot-unchecked-mutator
                   _%klass134832%_
                   _%slot134840%_
                   _%field134849%_)
                  (if (let* ((_%klass134873%_ _%klass134832%_)
                             (_%klass134878%_ _%klass134873%_))
                        (__class-type-struct? _%klass134878%_))
                      (make-struct-slot-unchecked-mutator
                       _%klass134832%_
                       _%slot134840%_
                       _%field134849%_)
                      (if (let ((_%strukt134889%_
                                 (base-struct/1 _%klass134832%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt134889%_
                                    'class))
                                 (let ((__tmp139634
                                        (let ((__tmp139635
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt134889%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp139635))))
                                   (declare (not safe))
                                   (##fx< _%field134849%_ __tmp139634))))
                          (make-struct-slot-unchecked-mutator
                           _%klass134832%_
                           _%slot134840%_
                           _%field134849%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass134832%_
                           _%slot134840%_
                           _%field134849%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass125770%_ _%slot125771%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125770%_ 'class))
            (let ((_%klass125775%_ _%klass125770%_))
              (if (symbol? _%slot125771%_)
                  (let ((_%slot125785%_ _%slot125771%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass125775%_
                     _%slot125785%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@608.59-608.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot125771%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@608.42-608.47"
               'contract:
               'class-type?
               'value:
               _%klass125770%_)
              '#!void))))
    (define not-an-instance__%
      (lambda (_%object134812%_ _%class134813%_ _%slot134814%_)
        (apply error
               '"not an instance"
               'object:
               _%object134812%_
               'class:
               _%class134813%_
               (if _%slot134814%_
                   (cons 'slot: (cons _%slot134814%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object134819%_ _%class134820%_)
        (let ((_%slot134822%_ '#f))
          (not-an-instance__%
           _%object134819%_
           _%class134820%_
           _%slot134822%_))))
    (define not-an-instance
      (lambda _g139636_
        (let ((_g139637_ (let () (declare (not safe)) (##length _g139636_))))
          (cond ((let () (declare (not safe)) (##fx= _g139637_ 2))
                 (apply not-an-instance__0 _g139636_))
                ((let () (declare (not safe)) (##fx= _g139637_ 3))
                 (apply not-an-instance__% _g139636_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g139636_))))))
    (define make-final-slot-accessor
      (lambda (_%klass134805%_ _%slot134806%_ _%field134807%_)
        (lambda (_%obj134809%_)
          (##direct-structure-ref
           _%obj134809%_
           _%field134807%_
           _%klass134805%_
           _%slot134806%_))))
    (define make-final-slot-mutator
      (lambda (_%klass134798%_ _%slot134799%_ _%field134800%_)
        (lambda (_%obj134802%_ _%val134803%_)
          (##direct-structure-set!
           _%obj134802%_
           _%val134803%_
           _%field134800%_
           _%klass134798%_
           _%slot134799%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass134792%_ _%slot134793%_ _%field134794%_)
        (lambda (_%obj134796%_)
          (##structure-ref
           _%obj134796%_
           _%field134794%_
           _%klass134792%_
           _%slot134793%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass134785%_ _%slot134786%_ _%field134787%_)
        (lambda (_%obj134789%_ _%val134790%_)
          (##structure-set!
           _%obj134789%_
           _%val134790%_
           _%field134787%_
           _%klass134785%_
           _%slot134786%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass134779%_ _%slot134780%_ _%field134781%_)
        (lambda (_%obj134783%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj134783%_
             _%field134781%_
             _%klass134779%_
             _%slot134780%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass134772%_ _%slot134773%_ _%field134774%_)
        (lambda (_%obj134776%_ _%val134777%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj134776%_
             _%val134777%_
             _%field134774%_
             _%klass134772%_
             _%slot134773%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass134745%_ _%slot134746%_ _%field134747%_)
        (lambda (_%obj134749%_)
          (if (let* ((_%klass134751%_ _%klass134745%_)
                     (_%obj134754%_ _%obj134749%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134751%_ 'class))
                    (let ((_%klass134759%_ _%klass134751%_))
                      (__class-instance? _%klass134759%_ _%obj134754%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134751%_)
                      '#!void)))
              (unchecked-slot-ref _%obj134749%_ _%field134747%_)
              (not-an-instance__%
               _%obj134749%_
               _%klass134745%_
               _%slot134746%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass134717%_ _%slot134718%_ _%field134719%_)
        (lambda (_%obj134721%_ _%val134722%_)
          (if (let* ((_%klass134724%_ _%klass134717%_)
                     (_%obj134727%_ _%obj134721%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134724%_ 'class))
                    (let ((_%klass134732%_ _%klass134724%_))
                      (__class-instance? _%klass134732%_ _%obj134727%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134724%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj134721%_
               _%field134719%_
               _%val134722%_)
              (not-an-instance__%
               _%obj134721%_
               _%klass134717%_
               _%slot134718%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass134668%_ _%slot134669%_ _%field134670%_)
        (lambda (_%obj134672%_)
          (if (let* ((_%klass134674%_ _%klass134668%_)
                     (_%obj134677%_ _%obj134672%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134674%_ 'class))
                    (let ((_%klass134682%_ _%klass134674%_))
                      (__direct-instance? _%klass134682%_ _%obj134677%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134674%_)
                      '#!void)))
              (unchecked-field-ref _%obj134672%_ _%field134670%_)
              (if (let* ((_%klass134696%_ _%klass134668%_)
                         (_%obj134699%_ _%obj134672%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass134696%_ 'class))
                        (let ((_%klass134704%_ _%klass134696%_))
                          (__class-instance? _%klass134704%_ _%obj134699%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass134696%_)
                          '#!void)))
                  (unchecked-slot-ref _%obj134672%_ _%slot134669%_)
                  (not-an-instance__%
                   _%obj134672%_
                   _%klass134668%_
                   _%slot134669%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass134618%_ _%slot134619%_ _%field134620%_)
        (lambda (_%obj134622%_ _%val134623%_)
          (if (let* ((_%klass134625%_ _%klass134618%_)
                     (_%obj134628%_ _%obj134622%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134625%_ 'class))
                    (let ((_%klass134633%_ _%klass134625%_))
                      (__direct-instance? _%klass134633%_ _%obj134628%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134625%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj134622%_
               _%field134620%_
               _%val134623%_)
              (if (let* ((_%klass134647%_ _%klass134618%_)
                         (_%obj134650%_ _%obj134622%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass134647%_ 'class))
                        (let ((_%klass134655%_ _%klass134647%_))
                          (__class-instance? _%klass134655%_ _%obj134650%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass134647%_)
                          '#!void)))
                  (unchecked-slot-set!
                   _%obj134622%_
                   _%slot134619%_
                   _%val134623%_)
                  (not-an-instance__%
                   _%obj134622%_
                   _%klass134618%_
                   _%slot134619%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass134591%_ _%slot134592%_ _%field134593%_)
        (lambda (_%obj134595%_)
          (if (let* ((_%klass134597%_ _%klass134591%_)
                     (_%obj134600%_ _%obj134595%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134597%_ 'class))
                    (let ((_%klass134605%_ _%klass134597%_))
                      (__direct-instance? _%klass134605%_ _%obj134600%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134597%_)
                      '#!void)))
              (unchecked-field-ref _%obj134595%_ _%field134593%_)
              (unchecked-slot-ref _%obj134595%_ _%slot134592%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass134563%_ _%slot134564%_ _%field134565%_)
        (lambda (_%obj134567%_ _%val134568%_)
          (if (let* ((_%klass134570%_ _%klass134563%_)
                     (_%obj134573%_ _%obj134567%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134570%_ 'class))
                    (let ((_%klass134578%_ _%klass134570%_))
                      (__direct-instance? _%klass134578%_ _%obj134573%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134570%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj134567%_
               _%field134565%_
               _%val134568%_)
              (unchecked-slot-set!
               _%obj134567%_
               _%slot134564%_
               _%val134568%_)))))
    (define __class-slot-offset
      (lambda (_%klass134542%_ _%slot134543%_)
        (let* ((_%klass134546%_ _%klass134542%_)
               (_%slot134554%_ _%slot134543%_)
               (__tmp139638
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass134546%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp139638 _%slot134554%_ '#f))))
    (define class-slot-offset
      (lambda (_%klass125915%_ _%slot125916%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125915%_ 'class))
            (let ((_%klass125920%_ _%klass125915%_))
              (if (let () (declare (not safe)) (symbolic? _%slot125916%_))
                  (let ((_%slot125930%_ _%slot125916%_))
                    (__class-slot-offset _%klass125920%_ _%slot125930%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@670.43-670.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot125916%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@670.26-670.31"
               'contract:
               'class-type?
               'value:
               _%klass125915%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass134467%_ _%obj134468%_ _%slot134469%_)
        (let* ((_%klass134472%_ _%klass134467%_)
               (_%slot134480%_ _%slot134469%_))
          (if (let* ((_%klass134489%_ _%klass134472%_)
                     (_%obj134492%_ _%obj134468%_)
                     (_%klass134497%_ _%klass134489%_))
                (__class-instance? _%klass134497%_ _%obj134492%_))
              (let ((_%off134540%_
                     (let* ((_%klass134511%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj134468%_)))
                            (_%slot134514%_ _%slot134480%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass134511%_ 'class))
                           (let ((_%klass134519%_ _%klass134511%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot134514%_))
                                 (let ((_%slot134530%_ _%slot134514%_))
                                   (__class-slot-offset
                                    _%klass134519%_
                                    _%slot134530%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot134514%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass134511%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj134468%_
                 _%off134540%_
                 _%klass134472%_
                 _%slot134480%_))
              (not-an-instance__0 _%obj134468%_ _%klass134472%_)))))
    (define class-slot-ref
      (lambda (_%klass126060%_ _%obj126061%_ _%slot126062%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126060%_ 'class))
            (let ((_%klass126066%_ _%klass126060%_))
              (if (let () (declare (not safe)) (symbolic? _%slot126062%_))
                  (let ((_%slot126076%_ _%slot126062%_))
                    (__class-slot-ref
                     _%klass126066%_
                     _%obj126061%_
                     _%slot126076%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@673.44-673.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot126062%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@673.23-673.28"
               'contract:
               'class-type?
               'value:
               _%klass126060%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass134391%_ _%obj134392%_ _%slot134393%_ _%val134394%_)
        (let* ((_%klass134397%_ _%klass134391%_)
               (_%slot134405%_ _%slot134393%_))
          (if (let* ((_%klass134414%_ _%klass134397%_)
                     (_%obj134417%_ _%obj134392%_)
                     (_%klass134422%_ _%klass134414%_))
                (__class-instance? _%klass134422%_ _%obj134417%_))
              (let ((_%off134465%_
                     (let* ((_%klass134436%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj134392%_)))
                            (_%slot134439%_ _%slot134405%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass134436%_ 'class))
                           (let ((_%klass134444%_ _%klass134436%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot134439%_))
                                 (let ((_%slot134455%_ _%slot134439%_))
                                   (__class-slot-offset
                                    _%klass134444%_
                                    _%slot134455%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot134439%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass134436%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj134392%_
                 _%val134394%_
                 _%off134465%_
                 _%klass134397%_
                 _%slot134405%_))
              (not-an-instance__0 _%obj134392%_ _%klass134397%_)))))
    (define class-slot-set!
      (lambda (_%klass126206%_ _%obj126207%_ _%slot126208%_ _%val126209%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126206%_ 'class))
            (let ((_%klass126213%_ _%klass126206%_))
              (if (let () (declare (not safe)) (symbolic? _%slot126208%_))
                  (let ((_%slot126223%_ _%slot126208%_))
                    (__class-slot-set!
                     _%klass126213%_
                     _%obj126207%_
                     _%slot126223%_
                     _%val126209%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@679.45-679.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot126208%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@679.24-679.29"
               'contract:
               'class-type?
               'value:
               _%klass126206%_)
              '#!void))))
    (define unchecked-field-ref
      (lambda (_%obj134388%_ _%off134389%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj134388%_ _%off134389%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj134384%_ _%off134385%_ _%val134386%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj134384%_
           _%val134386%_
           _%off134385%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj134381%_ _%slot134382%_)
        (unchecked-field-ref
         _%obj134381%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj134381%_))
          _%slot134382%_))))
    (define unchecked-slot-set!
      (lambda (_%obj134377%_ _%slot134378%_ _%val134379%_)
        (unchecked-field-set!
         _%obj134377%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj134377%_))
          _%slot134378%_)
         _%val134379%_)))
    (define __slot-error
      (lambda (_%obj134374%_ _%slot134375%_)
        (error '"Cannot find slot"
               'object:
               _%obj134374%_
               'slot:
               _%slot134375%_)))
    (define __slot-ref__%
      (lambda (_%obj134298%_ _%slot134299%_ _%E134300%_)
        (let* ((_%slot134303%_ _%slot134299%_)
               (_%E134311%_ _%E134300%_)
               (_%klass134320%_ (class-of _%obj134298%_))
               (_%$e134356%_
                (let* ((_%klass134323%_ _%klass134320%_)
                       (_%slot134326%_ _%slot134303%_)
                       (_%klass134331%_ _%klass134323%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot134326%_))
                      (let ((_%slot134346%_ _%slot134326%_))
                        (__class-slot-offset _%klass134331%_ _%slot134346%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot134326%_)
                        '#!void)))))
          (if _%$e134356%_
              ((lambda (_%off134359%_)
                 (unchecked-field-ref _%obj134298%_ _%off134359%_))
               _%$e134356%_)
              (let ()
                (declare (not safe))
                (_%E134311%_ _%obj134298%_ _%slot134303%_))))))
    (define __slot-ref__0
      (lambda (_%obj134365%_ _%slot134366%_)
        (let ((_%E134368%_ __slot-error))
          (__slot-ref__% _%obj134365%_ _%slot134366%_ _%E134368%_))))
    (define __slot-ref
      (lambda _g139639_
        (let ((_g139640_ (let () (declare (not safe)) (##length _g139639_))))
          (cond ((let () (declare (not safe)) (##fx= _g139640_ 2))
                 (apply __slot-ref__0 _g139639_))
                ((let () (declare (not safe)) (##fx= _g139640_ 3))
                 (apply __slot-ref__% _g139639_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g139639_))))))
    (define slot-ref__%
      (lambda (_%obj126471%_ _%slot126472%_ _%E126473%_)
        (if (symbol? _%slot126472%_)
            (let ((_%slot126477%_ _%slot126472%_))
              (if (procedure? _%E126473%_)
                  (let ((_%E126487%_ _%E126473%_))
                    (__slot-ref__% _%obj126471%_ _%slot126477%_ _%E126487%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@705.38-705.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E126473%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@705.21-705.25"
               'contract:
               'symbol?
               'value:
               _%slot126472%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj126500%_ _%slot126501%_)
        (let ((_%E126503%_ __slot-error))
          (slot-ref__% _%obj126500%_ _%slot126501%_ _%E126503%_))))
    (define slot-ref
      (lambda _g139641_
        (let ((_g139642_ (let () (declare (not safe)) (##length _g139641_))))
          (cond ((let () (declare (not safe)) (##fx= _g139642_ 2))
                 (apply slot-ref__0 _g139641_))
                ((let () (declare (not safe)) (##fx= _g139642_ 3))
                 (apply slot-ref__% _g139641_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g139641_))))))
    (define __slot-set!__%
      (lambda (_%obj134218%_ _%slot134219%_ _%val134220%_ _%E134221%_)
        (let* ((_%slot134224%_ _%slot134219%_)
               (_%E134232%_ _%E134221%_)
               (_%klass134241%_ (class-of _%obj134218%_))
               (_%$e134277%_
                (let* ((_%klass134244%_ _%klass134241%_)
                       (_%slot134247%_ _%slot134224%_)
                       (_%klass134252%_ _%klass134244%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot134247%_))
                      (let ((_%slot134267%_ _%slot134247%_))
                        (__class-slot-offset _%klass134252%_ _%slot134267%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot134247%_)
                        '#!void)))))
          (if _%$e134277%_
              ((lambda (_%off134280%_)
                 (unchecked-field-set!
                  _%obj134218%_
                  _%off134280%_
                  _%val134220%_))
               _%$e134277%_)
              (let ()
                (declare (not safe))
                (_%E134232%_ _%obj134218%_ _%slot134224%_))))))
    (define __slot-set!__0
      (lambda (_%obj134286%_ _%slot134287%_ _%val134288%_)
        (let ((_%E134290%_ __slot-error))
          (__slot-set!__%
           _%obj134286%_
           _%slot134287%_
           _%val134288%_
           _%E134290%_))))
    (define __slot-set!
      (lambda _g139643_
        (let ((_g139644_ (let () (declare (not safe)) (##length _g139643_))))
          (cond ((let () (declare (not safe)) (##fx= _g139644_ 3))
                 (apply __slot-set!__0 _g139643_))
                ((let () (declare (not safe)) (##fx= _g139644_ 4))
                 (apply __slot-set!__% _g139643_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g139643_))))))
    (define slot-set!__%
      (lambda (_%obj126630%_ _%slot126631%_ _%val126632%_ _%E126633%_)
        (if (symbol? _%slot126631%_)
            (let ((_%slot126637%_ _%slot126631%_))
              (if (procedure? _%E126633%_)
                  (let ((_%E126647%_ _%E126633%_))
                    (__slot-set!__%
                     _%obj126630%_
                     _%slot126637%_
                     _%val126632%_
                     _%E126647%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@707.43-707.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E126633%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@707.22-707.26"
               'contract:
               'symbol?
               'value:
               _%slot126631%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj126660%_ _%slot126661%_ _%val126662%_)
        (let ((_%E126664%_ __slot-error))
          (slot-set!__%
           _%obj126660%_
           _%slot126661%_
           _%val126662%_
           _%E126664%_))))
    (define slot-set!
      (lambda _g139645_
        (let ((_g139646_ (let () (declare (not safe)) (##length _g139645_))))
          (cond ((let () (declare (not safe)) (##fx= _g139646_ 3))
                 (apply slot-set!__0 _g139645_))
                ((let () (declare (not safe)) (##fx= _g139646_ 4))
                 (apply slot-set!__% _g139645_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g139645_))))))
    (define __subclass?
      (lambda (_%maybe-sub-class134189%_ _%maybe-super-class134190%_)
        (let* ((_%maybe-sub-class134193%_ _%maybe-sub-class134189%_)
               (_%maybe-super-class134201%_ _%maybe-super-class134190%_)
               (_%maybe-super-class-id134210%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class134201%_)))
               (_%$e134212%_
                (eq? _%maybe-super-class-id134210%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class134193%_)))))
          (if _%$e134212%_
              _%$e134212%_
              (let ((__tmp139648
                     (lambda (_%super-class134215%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class134215%_))
                            _%maybe-super-class-id134210%_)))
                    (__tmp139647
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class134193%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (ormap__0 __tmp139648 __tmp139647))))))
    (define subclass?
      (lambda (_%maybe-sub-class126791%_ _%maybe-super-class126792%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class126791%_ 'class))
            (let ((_%maybe-sub-class126796%_ _%maybe-sub-class126791%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class126792%_
                     'class))
                  (let ((_%maybe-super-class126806%_
                         _%maybe-super-class126792%_))
                    (__subclass?
                     _%maybe-sub-class126796%_
                     _%maybe-super-class126806%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@713.45-713.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class126792%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@713.18-713.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class126791%_)
              '#!void))))
    (define object?
      (lambda (_%o134186%_)
        (if (let () (declare (not safe)) (##structure? _%o134186%_))
            (let ((__tmp139649
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o134186%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp139649 'class))
            '#f)))
    (define __direct-instance?
      (lambda (_%klass134173%_ _%obj134174%_)
        (let* ((_%klass134177%_ _%klass134173%_)
               (__tmp139650
                (let () (declare (not safe)) (##type-id _%klass134177%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj134174%_ __tmp139650))))
    (define direct-instance?
      (lambda (_%klass126936%_ _%obj126937%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126936%_ 'class))
            (let ((_%klass126941%_ _%klass126936%_))
              (__direct-instance? _%klass126941%_ _%obj126937%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@727.25-727.30"
               'contract:
               'class-type?
               'value:
               _%klass126936%_)
              '#!void))))
    (define immediate-instance-of?
      (lambda (_%klass134169%_ _%obj134170%_)
        (if (let () (declare (not safe)) (##structure? _%obj134170%_))
            (eq? _%klass134169%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj134170%_)))
            '#f)))
    (define __struct-instance?
      (lambda (_%klass134156%_ _%obj134157%_)
        (let* ((_%klass134160%_ _%klass134156%_)
               (__tmp139651
                (let () (declare (not safe)) (##type-id _%klass134160%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj134157%_ __tmp139651))))
    (define struct-instance?
      (lambda (_%klass127071%_ _%obj127072%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127071%_ 'class))
            (let ((_%klass127076%_ _%klass127071%_))
              (__struct-instance? _%klass127076%_ _%obj127072%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@756.25-756.30"
               'contract:
               'class-type?
               'value:
               _%klass127071%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass134108%_ _%obj134109%_)
        (let* ((_%klass134112%_ _%klass134108%_)
               (_%type134121%_ (class-of _%obj134109%_))
               (_%maybe-sub-class134123%_ _%type134121%_)
               (_%maybe-super-class134126%_ _%klass134112%_)
               (_%maybe-sub-class134131%_ _%maybe-sub-class134123%_)
               (_%maybe-super-class134146%_ _%maybe-super-class134126%_))
          (__subclass?
           _%maybe-sub-class134131%_
           _%maybe-super-class134146%_))))
    (define class-instance?
      (lambda (_%klass127206%_ _%obj127207%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127206%_ 'class))
            (let ((_%klass127211%_ _%klass127206%_))
              (__class-instance? _%klass127211%_ _%obj127207%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@761.24-761.29"
               'contract:
               'class-type?
               'value:
               _%klass127206%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass134067%_ _%k134068%_)
        (let* ((_%klass134071%_ _%klass134067%_) (_%k134079%_ _%k134068%_))
          (if (let* ((_%klass134088%_ _%klass134071%_)
                     (_%klass134093%_ _%klass134088%_))
                (__class-type-system? _%klass134093%_))
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass134071%_)
                '#!void)
              (let ((_%obj134106%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass134071%_ _%k134079%_))))
                (__object-fill! _%obj134106%_ '#f))))))
    (define make-object
      (lambda (_%klass127341%_ _%k127342%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127341%_ 'class))
            (let ((_%klass127346%_ _%klass127341%_))
              (if (fixnum? _%k127342%_)
                  (let ((_%k127356%_ _%k127342%_))
                    (__make-object _%klass127346%_ _%k127356%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@766.37-766.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k127342%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@766.20-766.25"
               'contract:
               'class-type?
               'value:
               _%klass127341%_)
              '#!void))))
    (define __object-class
      (lambda (_%obj134055%_)
        (let ((_%obj134058%_ _%obj134055%_))
          (declare (not safe))
          (##structure-type _%obj134058%_))))
    (define object-class
      (lambda (_%obj127486%_)
        (if (object? _%obj127486%_)
            (let ((_%obj127490%_ _%obj127486%_))
              (__object-class _%obj127490%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@786.21-786.24"
               'contract:
               'object?
               'value:
               _%obj127486%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj134037%_ _%fill134038%_)
        (let ((_%obj134041%_ _%obj134037%_))
          (let _%loop134050%_ ((_%i134052%_
                                (let ((__tmp139652
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj134041%_))))
                                  (declare (not safe))
                                  (##fx- __tmp139652 '1))))
            (if (let () (declare (not safe)) (##fx> _%i134052%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj134041%_
                     _%fill134038%_
                     _%i134052%_
                     '#f
                     '#f))
                  (_%loop134050%_
                   (let () (declare (not safe)) (##fx- _%i134052%_ '1))))
                _%obj134041%_)))))
    (define object-fill!
      (lambda (_%obj127620%_ _%fill127621%_)
        (if (object? _%obj127620%_)
            (let ((_%obj127625%_ _%obj127620%_))
              (__object-fill! _%obj127625%_ _%fill127621%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@791.21-791.24"
               'contract:
               'object?
               'value:
               _%obj127620%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass133993%_)
        (let* ((_%klass133996%_ _%klass133993%_)
               (_%klass134005%_ _%klass133996%_)
               (_%k134008%_
                (let ((__tmp139653
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass133996%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp139653)))
               (_%klass134013%_ _%klass134005%_)
               (_%k134027%_ _%k134008%_))
          (__make-object _%klass134013%_ _%k134027%_))))
    (define new-instance
      (lambda (_%klass127755%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127755%_ 'class))
            (let ((_%klass127759%_ _%klass127755%_))
              (__new-instance _%klass127759%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@802.21-802.26"
               'contract:
               'class-type?
               'value:
               _%klass127755%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass133852%_ . _%args133853%_)
        (let* ((_%klass133856%_ _%klass133852%_)
               (_%$e133865%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass133856%_ '10 '#f '#f))))
          (if _%$e133865%_
              ((lambda (_%kons-id133868%_)
                 (let ((_%obj133890%_
                        (let* ((_%klass133870%_ _%klass133856%_)
                               (_%klass133875%_ _%klass133870%_))
                          (__new-instance _%klass133875%_))))
                   (___constructor-init!
                    _%klass133856%_
                    _%kons-id133868%_
                    _%obj133890%_
                    _%args133853%_)
                   _%obj133890%_))
               _%$e133865%_)
              (if (let* ((_%klass133892%_ _%klass133856%_)
                         (_%klass133897%_ _%klass133892%_))
                    (__class-type-metaclass? _%klass133897%_))
                  (let ((_%obj133924%_
                         (let* ((_%klass133908%_ _%klass133856%_)
                                (_%klass133913%_ _%klass133908%_))
                           (__new-instance _%klass133913%_))))
                    (__metaclass-instance-init!
                     _%klass133856%_
                     _%obj133924%_
                     _%args133853%_)
                    _%obj133924%_)
                  (if (let* ((_%klass133926%_ _%klass133856%_)
                             (_%klass133931%_ _%klass133926%_))
                        (__class-type-struct? _%klass133931%_))
                      (if (let ((__tmp139655
                                 (let* ((_%klass133960%_ _%klass133856%_)
                                        (_%klass133965%_ _%klass133960%_))
                                   (__class-type-field-count _%klass133965%_)))
                                (__tmp139654
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args133853%_))))
                            (declare (not safe))
                            (##fx= __tmp139655 __tmp139654))
                          (apply ##structure _%klass133856%_ _%args133853%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass133856%_
                                   'slots:
                                   (let* ((_%klass133977%_ _%klass133856%_)
                                          (_%klass133982%_ _%klass133977%_))
                                     (__class-type-slot-list _%klass133982%_))
                                   'args:
                                   _%args133853%_)
                            '#!void))
                      (let ((_%obj133958%_
                             (let* ((_%klass133942%_ _%klass133856%_)
                                    (_%klass133947%_ _%klass133942%_))
                               (__new-instance _%klass133947%_))))
                        (___class-instance-init!
                         _%klass133856%_
                         _%obj133958%_
                         _%args133853%_)
                        _%obj133958%_)))))))
    (define make-instance
      (lambda (_%klass127889%_ . _%args127890%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127889%_ 'class))
            (let ((_%klass127894%_ _%klass127889%_))
              (declare (not safe))
              (##apply __make-instance _%klass127894%_ _%args127890%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@805.22-805.27"
               'contract:
               'class-type?
               'value:
               _%klass127889%_)
              '#!void))))
    (define make-class-instance make-instance)
    (define __struct-instance-init!
      (lambda (_%obj133839%_ . _%args133840%_)
        (let ((_%obj133843%_ _%obj133839%_))
          (if (let ((__tmp139657
                     (let () (declare (not safe)) (##length _%args133840%_)))
                    (__tmp139656
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj133843%_))))
                (declare (not safe))
                (##fx< __tmp139657 __tmp139656))
              (___struct-instance-init! _%obj133843%_ _%args133840%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj133843%_
                     'args:
                     _%args133840%_))
          '#!void)))
    (define struct-instance-init!
      (lambda (_%obj128024%_ . _%args128025%_)
        (if (object? _%obj128024%_)
            (let ((_%obj128029%_ _%obj128024%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj128029%_ _%args128025%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@830.30-830.33"
               'contract:
               'object?
               'value:
               _%obj128024%_)
              '#!void))))
    (define ___struct-instance-init!
      (lambda (_%obj133798%_ _%args133799%_)
        (let _%lp133801%_ ((_%k133803%_ '1) (_%rest133804%_ _%args133799%_))
          (let* ((_%rest133805133813%_ _%rest133804%_)
                 (_%else133807133821%_ (lambda () _%obj133798%_))
                 (_%K133809133827%_
                  (lambda (_%rest133824%_ _%hd133825%_)
                    (unchecked-field-set!
                     _%obj133798%_
                     _%k133803%_
                     _%hd133825%_)
                    (_%lp133801%_
                     (let () (declare (not safe)) (##fx+ _%k133803%_ '1))
                     _%rest133824%_))))
            (if (pair? _%rest133805133813%_)
                (let ((_%hd133810133830%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest133805133813%_)))
                      (_%tl133811133832%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest133805133813%_))))
                  (let* ((_%hd133835%_ _%hd133810133830%_)
                         (_%rest133837%_ _%tl133811133832%_))
                    (_%K133809133827%_ _%rest133837%_ _%hd133835%_)))
                (_%else133807133821%_))))))
    (define __class-instance-init!
      (lambda (_%obj133785%_ . _%args133786%_)
        (let ((_%obj133789%_ _%obj133785%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj133789%_))
           _%obj133789%_
           _%args133786%_)
          '#!void)))
    (define class-instance-init!
      (lambda (_%obj128159%_ . _%args128160%_)
        (if (object? _%obj128159%_)
            (let ((_%obj128164%_ _%obj128159%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj128164%_ _%args128160%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@870.29-870.32"
               'contract:
               'object?
               'value:
               _%obj128159%_)
              '#!void))))
    (define ___class-instance-init!
      (lambda (_%klass133727%_ _%obj133728%_ _%args133729%_)
        (let _%lp133731%_ ((_%rest133733%_ _%args133729%_))
          (let* ((_%rest133734133744%_ _%rest133733%_)
                 (_%else133736133752%_
                  (lambda ()
                    (if (null? _%rest133733%_)
                        _%obj133728%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass133727%_
                               'rest:
                               _%rest133733%_))))
                 (_%K133738133766%_
                  (lambda (_%rest133755%_ _%val133756%_ _%key133757%_)
                    (if (keyword? _%key133757%_)
                        (let ((_%$e133760%_
                               (__class-slot-offset
                                _%klass133727%_
                                _%key133757%_)))
                          (if _%$e133760%_
                              ((lambda (_%off133763%_)
                                 (unchecked-field-set!
                                  _%obj133728%_
                                  _%off133763%_
                                  _%val133756%_)
                                 (_%lp133731%_ _%rest133755%_))
                               _%$e133760%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass133727%_
                                     'slot:
                                     _%key133757%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key133757%_)))))
            (if (pair? _%rest133734133744%_)
                (let ((_%hd133739133769%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest133734133744%_)))
                      (_%tl133740133771%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest133734133744%_))))
                  (let ((_%key133774%_ _%hd133739133769%_))
                    (if (pair? _%tl133740133771%_)
                        (let ((_%hd133741133776%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl133740133771%_)))
                              (_%tl133742133778%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl133740133771%_))))
                          (let* ((_%val133781%_ _%hd133741133776%_)
                                 (_%rest133783%_ _%tl133742133778%_))
                            (_%K133738133766%_
                             _%rest133783%_
                             _%val133781%_
                             _%key133774%_)))
                        (_%else133736133752%_))))
                (_%else133736133752%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass133723%_ _%obj133724%_ _%args133725%_)
        (apply call-method
               _%klass133723%_
               'instance-init!
               _%obj133724%_
               _%args133725%_)))
    (define __constructor-init!
      (lambda (_%klass133692%_
               _%kons-id133693%_
               _%obj133694%_
               .
               _%args133695%_)
        (let* ((_%klass133698%_ _%klass133692%_)
               (_%kons-id133706%_ _%kons-id133693%_)
               (_%obj133714%_ _%obj133694%_))
          (___constructor-init!
           _%klass133698%_
           _%kons-id133706%_
           _%obj133714%_
           _%args133695%_)
          '#!void)))
    (define constructor-init!
      (lambda (_%klass128294%_
               _%kons-id128295%_
               _%obj128296%_
               .
               _%args128297%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass128294%_ 'class))
            (let ((_%klass128301%_ _%klass128294%_))
              (if (symbol? _%kons-id128295%_)
                  (let ((_%kons-id128311%_ _%kons-id128295%_))
                    (if (object? _%obj128296%_)
                        (let ((_%obj128321%_ _%obj128296%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass128301%_
                                   _%kons-id128311%_
                                   _%obj128321%_
                                   _%args128297%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@894.63-894.66"
                           'contract:
                           'object?
                           'value:
                           _%obj128296%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@894.43-894.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id128295%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@894.26-894.31"
               'contract:
               'class-type?
               'value:
               _%klass128294%_)
              '#!void))))
    (define ___constructor-init!
      (lambda (_%klass133681%_ _%kons-id133682%_ _%obj133683%_ _%args133684%_)
        (let ((_%$e133686%_
               (__find-method
                _%klass133681%_
                _%obj133683%_
                _%kons-id133682%_)))
          (if _%$e133686%_
              ((lambda (_%kons133689%_)
                 (apply _%kons133689%_ _%obj133683%_ _%args133684%_)
                 _%obj133683%_)
               _%$e133686%_)
              (error '"missing constructor"
                     'class:
                     _%klass133681%_
                     'method:
                     _%kons-id133682%_)))))
    (define __struct-copy
      (lambda (_%struct133669%_)
        (let ((_%struct133672%_ _%struct133669%_))
          (declare (not safe))
          (##structure-copy _%struct133672%_))))
    (define struct-copy
      (lambda (_%struct128451%_)
        (if (object? _%struct128451%_)
            (let ((_%struct128455%_ _%struct128451%_))
              (__struct-copy _%struct128455%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@908.20-908.26"
               'contract:
               'object?
               'value:
               _%struct128451%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj133650%_)
        (let* ((_%obj133653%_ _%obj133650%_)
               (_%len133662%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj133653%_))))
          (let _%recur133664%_ ((_%i133666%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i133666%_ _%len133662%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj133653%_
                         _%i133666%_
                         '#f
                         '#f))
                      (_%recur133664%_
                       (let () (declare (not safe)) (##fx+ _%i133666%_ '1))))
                '())))))
    (define struct->list
      (lambda (_%obj128585%_)
        (if (object? _%obj128585%_)
            (let ((_%obj128589%_ _%obj128585%_))
              (__struct->list _%obj128589%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@911.21-911.24"
               'contract:
               'object?
               'value:
               _%obj128585%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj133602%_)
        (let* ((_%obj133605%_ _%obj133602%_)
               (_%klass133614%_
                (let () (declare (not safe)) (##structure-type _%obj133605%_)))
               (_%slot-vector133616%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass133614%_ '7 '#f '#f))))
          (let _%loop133618%_ ((_%index133620%_
                                (let ((__tmp139658
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector133616%_))))
                                  (declare (not safe))
                                  (##fx- __tmp139658 '1)))
                               (_%plist133621%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index133620%_ '1))
                (cons _%klass133614%_ _%plist133621%_)
                (let ((_%slot133624%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector133616%_
                          _%index133620%_))))
                  (_%loop133618%_
                   (let () (declare (not safe)) (##fx- _%index133620%_ '1))
                   (cons (let ((_%sym133626%_ _%slot133624%_))
                           (if (symbol? _%sym133626%_)
                               (let ((_%sym133631%_ _%sym133626%_))
                                 (declare (not safe))
                                 (__symbol->keyword _%sym133631%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  'symbol?
                                  'value:
                                  _%sym133626%_)
                                 '#!void)))
                         (cons (unchecked-field-ref
                                _%obj133605%_
                                _%index133620%_)
                               _%plist133621%_)))))))))
    (define class->list
      (lambda (_%obj128719%_)
        (if (object? _%obj128719%_)
            (let ((_%obj128723%_ _%obj128719%_)) (__class->list _%obj128723%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@919.20-919.23"
               'contract:
               'object?
               'value:
               _%obj128719%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj133552%_ _%id133553%_ . _%args133554%_)
        (let* ((_%id133557%_ _%id133553%_)
               (_%$e133588%_
                (let* ((_%obj133566%_ _%obj133552%_)
                       (_%id133569%_ _%id133557%_)
                       (_%id133574%_ _%id133569%_))
                  (__method-ref _%obj133566%_ _%id133574%_))))
          (if _%$e133588%_
              ((lambda (_%method133591%_)
                 (let ((_%method133593%_ _%method133591%_))
                   (apply _%method133593%_ _%obj133552%_ _%args133554%_)))
               _%$e133588%_)
              (error '"cannot find method"
                     'object:
                     _%obj133552%_
                     'method:
                     _%id133557%_)))))
    (define call-method
      (lambda (_%obj128853%_ _%id128854%_ . _%args128855%_)
        (if (symbol? _%id128854%_)
            (let ((_%id128859%_ _%id128854%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj128853%_
                       _%id128859%_
                       _%args128855%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@934.24-934.26"
               'contract:
               'symbol?
               'value:
               _%id128854%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj133503%_ _%id133504%_)
        (let* ((_%id133507%_ _%id133504%_)
               (_%klass133516%_ (class-of _%obj133503%_))
               (_%obj133519%_ _%obj133503%_)
               (_%id133522%_ _%id133507%_)
               (_%klass133527%_ _%klass133516%_)
               (_%id133542%_ _%id133522%_))
          (__find-method _%klass133527%_ _%obj133519%_ _%id133542%_))))
    (define method-ref
      (lambda (_%obj128989%_ _%id128990%_)
        (if (symbol? _%id128990%_)
            (let ((_%id128994%_ _%id128990%_))
              (__method-ref _%obj128989%_ _%id128994%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@961.23-961.25"
               'contract:
               'symbol?
               'value:
               _%id128990%_)
              '#!void))))
    (define checked-method-ref
      (lambda (_%obj133475%_ _%id133476%_)
        (let ((_%$e133500%_
               (let* ((_%obj133479%_ _%obj133475%_)
                      (_%id133482%_ _%id133476%_))
                 (if (symbol? _%id133482%_)
                     (let ((_%id133487%_ _%id133482%_))
                       (__method-ref _%obj133479%_ _%id133487%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id133482%_)
                       '#!void)))))
          (if _%$e133500%_
              _%$e133500%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj133475%_
                       'method:
                       _%id133476%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj133424%_ _%id133425%_)
        (let* ((_%id133428%_ _%id133425%_)
               (_%$e133459%_
                (let* ((_%obj133437%_ _%obj133424%_)
                       (_%id133440%_ _%id133428%_)
                       (_%id133445%_ _%id133440%_))
                  (__method-ref _%obj133437%_ _%id133445%_))))
          (if _%$e133459%_
              ((lambda (_%method133462%_)
                 (let ((_%method133464%_ _%method133462%_))
                   (lambda _%args133472%_
                     (apply _%method133464%_ _%obj133424%_ _%args133472%_))))
               _%$e133459%_)
              '#f))))
    (define bound-method-ref
      (lambda (_%obj129124%_ _%id129125%_)
        (if (symbol? _%id129125%_)
            (let ((_%id129129%_ _%id129125%_))
              (__bound-method-ref _%obj129124%_ _%id129129%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@969.29-969.31"
               'contract:
               'symbol?
               'value:
               _%id129125%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj133407%_ _%id133408%_)
        (let* ((_%id133411%_ _%id133408%_)
               (_%method133420%_
                (checked-method-ref _%obj133407%_ _%id133411%_)))
          (lambda _%args133422%_
            (apply _%method133420%_ _%obj133407%_ _%args133422%_)))))
    (define checked-bound-method-ref
      (lambda (_%obj129259%_ _%id129260%_)
        (if (symbol? _%id129260%_)
            (let ((_%id129264%_ _%id129260%_))
              (__checked-bound-method-ref _%obj129259%_ _%id129264%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@978.37-978.39"
               'contract:
               'symbol?
               'value:
               _%id129260%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass133276%_ _%obj133277%_ _%id133278%_)
        (let* ((_%klass133281%_ _%klass133276%_) (_%id133289%_ _%id133278%_))
          (if (let* ((_%klass133298%_ _%klass133281%_)
                     (_%klass133303%_ _%klass133298%_))
                (__class-type-sealed? _%klass133303%_))
              (let ((_%tab133333%_
                     (let* ((_%klass133317%_ _%klass133281%_)
                            (_%klass133322%_ _%klass133317%_))
                       (__specialize-class _%klass133322%_))))
                (declare (not safe))
                (symbolic-table-ref _%tab133333%_ _%id133289%_ '#f))
              (let ((_%$e133368%_
                     (let* ((_%klass133335%_ _%klass133281%_)
                            (_%obj133338%_ _%obj133277%_)
                            (_%id133341%_ _%id133289%_)
                            (_%klass133346%_ _%klass133335%_)
                            (_%id133358%_ _%id133341%_))
                       (__direct-method-ref
                        _%klass133346%_
                        _%obj133338%_
                        _%id133358%_))))
                (if _%$e133368%_
                    _%$e133368%_
                    (let* ((_%klass133372%_ _%klass133281%_)
                           (_%obj133375%_ _%obj133277%_)
                           (_%id133378%_ _%id133289%_)
                           (_%klass133383%_ _%klass133372%_)
                           (_%id133397%_ _%id133378%_))
                      (__mixin-method-ref
                       _%klass133383%_
                       _%obj133375%_
                       _%id133397%_))))))))
    (define find-method
      (lambda (_%klass129394%_ _%obj129395%_ _%id129396%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass129394%_ 'class))
            (let ((_%klass129400%_ _%klass129394%_))
              (if (symbol? _%id129396%_)
                  (let ((_%id129410%_ _%id129396%_))
                    (__find-method _%klass129400%_ _%obj129395%_ _%id129410%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@983.41-983.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id129396%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@983.20-983.25"
               'contract:
               'class-type?
               'value:
               _%klass129394%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins133221%_ _%obj133222%_ _%id133223%_)
        (let* ((_%id133226%_ _%id133223%_)
               (__tmp139659
                (lambda (_%g133234133236%_)
                  (let* ((_%klass133239%_ _%g133234133236%_)
                         (_%obj133242%_ _%obj133222%_)
                         (_%id133245%_ _%id133226%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass133239%_ 'class))
                        (let* ((_%klass133250%_ _%klass133239%_)
                               (_%id133266%_ _%id133245%_))
                          (__direct-method-ref
                           _%klass133250%_
                           _%obj133242%_
                           _%id133266%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass133239%_)
                          '#!void))))))
          (declare (not safe))
          (ormap__0 __tmp139659 _%mixins133221%_))))
    (define mixin-find-method
      (lambda (_%mixins129540%_ _%obj129541%_ _%id129542%_)
        (if (symbol? _%id129542%_)
            (let ((_%id129546%_ _%id129542%_))
              (__mixin-find-method
               _%mixins129540%_
               _%obj129541%_
               _%id129546%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@992.37-992.39"
               'contract:
               'symbol?
               'value:
               _%id129542%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass133114%_ _%obj133115%_ _%id133116%_)
        (let* ((_%klass133119%_ _%klass133114%_) (_%id133127%_ _%id133116%_))
          (letrec ((_%metaclass-resolve-method133136%_
                    (lambda ()
                      (let* ((_%obj133197%_ _%klass133119%_)
                             (_%id133200%_ 'direct-method-ref)
                             (_%args133203%_ (list _%obj133115%_ _%id133127%_))
                             (_%id133208%_ _%id133200%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj133197%_
                                 _%id133208%_
                                 _%args133203%_))))
                   (_%metaclass-resolve-method!133137%_
                    (lambda ()
                      (let ((_%method133194%_
                             (_%metaclass-resolve-method133136%_)))
                        (let ((__tmp139661
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass133119%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp139660
                               (if _%method133194%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp139661
                           _%id133127%_
                           __tmp139660))
                        _%method133194%_))))
            (let ((_%$e133139%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass133119%_ '11 '#f '#f))))
              (if _%$e133139%_
                  ((lambda (_%ht133142%_)
                     (let ((_%method133144%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht133142%_
                               _%id133127%_
                               '#f))))
                       (if (procedure? _%method133144%_)
                           _%method133144%_
                           (if (let* ((_%klass133147%_ _%klass133119%_)
                                      (_%klass133152%_ _%klass133147%_))
                                 (__class-type-metaclass? _%klass133152%_))
                               (let ((_%$e133170%_ _%method133144%_))
                                 (if (eq? 'resolved _%$e133170%_)
                                     (_%metaclass-resolve-method133136%_)
                                     (if (eq? 'unknown _%$e133170%_)
                                         '#f
                                         (_%metaclass-resolve-method!133137%_))))
                               '#f))))
                   _%$e133139%_)
                  (if (let* ((_%klass133174%_ _%klass133119%_)
                             (_%klass133179%_ _%klass133174%_))
                        (__class-type-metaclass? _%klass133179%_))
                      (let ((_%tab133190%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass133119%_
                           _%tab133190%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!133137%_))
                      '#f)))))))
    (define direct-method-ref
      (lambda (_%klass129676%_ _%obj129677%_ _%id129678%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass129676%_ 'class))
            (let ((_%klass129682%_ _%klass129676%_))
              (if (symbol? _%id129678%_)
                  (let ((_%id129692%_ _%id129678%_))
                    (__direct-method-ref
                     _%klass129682%_
                     _%obj129677%_
                     _%id129692%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@995.47-995.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id129678%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@995.26-995.31"
               'contract:
               'class-type?
               'value:
               _%klass129676%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass133066%_ _%obj133067%_ _%id133068%_)
        (let* ((_%klass133071%_ _%klass133066%_)
               (_%id133079%_ _%id133068%_)
               (_%mixins133088%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass133071%_ '6 '#f '#f)))
               (_%obj133091%_ _%obj133067%_)
               (_%id133094%_ _%id133079%_)
               (_%id133099%_ _%id133094%_))
          (__mixin-find-method _%mixins133088%_ _%obj133091%_ _%id133099%_))))
    (define mixin-method-ref
      (lambda (_%klass129822%_ _%obj129823%_ _%id129824%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass129822%_ 'class))
            (let ((_%klass129828%_ _%klass129822%_))
              (if (symbol? _%id129824%_)
                  (let ((_%id129838%_ _%id129824%_))
                    (__mixin-method-ref
                     _%klass129828%_
                     _%obj129823%_
                     _%id129838%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1025.46-1025.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id129824%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1025.25-1025.30"
               'contract:
               'class-type?
               'value:
               _%klass129822%_)
              '#!void))))
    (define __bind-method!__%
      (lambda (_%klass132976%_ _%id132977%_ _%proc132978%_ _%rebind?132979%_)
        (let* ((_%id132982%_ _%id132977%_) (_%proc132990%_ _%proc132978%_))
          (letrec ((_%bind!132999%_
                    (lambda (_%ht133050%_)
                      (if (and (not _%rebind?132979%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht133050%_
                                  _%id132982%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass132976%_
                                 'method:
                                 _%id132982%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht133050%_
                               _%id132982%_
                               _%proc132990%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass132976%_ 'class))
                (let ((_%ht133002%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass132976%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht133002%_
                      (_%bind!132999%_ _%ht133002%_)
                      (let ((_%ht133004%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass132976%_
                           _%ht133004%_
                           '11
                           '#f
                           '#f))
                        (_%bind!132999%_ _%ht133004%_))))
                (if (let () (declare (not safe)) (##type? _%klass132976%_))
                    (let* ((_%klass133007%_
                            (__shadow-class__0 _%klass132976%_))
                           (_%id133010%_ _%id132982%_)
                           (_%proc133013%_ _%proc132990%_)
                           (_%rebind?133016%_ _%rebind?132979%_)
                           (_%id133021%_ _%id133010%_)
                           (_%proc133039%_ _%proc133013%_))
                      (__bind-method!__%
                       _%klass133007%_
                       _%id133021%_
                       _%proc133039%_
                       _%rebind?133016%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass132976%_)))))))
    (define __bind-method!__0
      (lambda (_%klass133055%_ _%id133056%_ _%proc133057%_)
        (let ((_%rebind?133059%_ '#f))
          (__bind-method!__%
           _%klass133055%_
           _%id133056%_
           _%proc133057%_
           _%rebind?133059%_))))
    (define __bind-method!
      (lambda _g139662_
        (let ((_g139663_ (let () (declare (not safe)) (##length _g139662_))))
          (cond ((let () (declare (not safe)) (##fx= _g139663_ 3))
                 (apply __bind-method!__0 _g139662_))
                ((let () (declare (not safe)) (##fx= _g139663_ 4))
                 (apply __bind-method!__% _g139662_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g139662_))))))
    (define bind-method!__%
      (lambda (_%klass129969%_ _%id129970%_ _%proc129971%_ _%rebind?129972%_)
        (if (symbol? _%id129970%_)
            (let ((_%id129976%_ _%id129970%_))
              (if (procedure? _%proc129971%_)
                  (let ((_%proc129986%_ _%proc129971%_))
                    (__bind-method!__%
                     _%klass129969%_
                     _%id129976%_
                     _%proc129986%_
                     _%rebind?129972%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1028.42-1028.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc129971%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1028.27-1028.29"
               'contract:
               'symbol?
               'value:
               _%id129970%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass129999%_ _%id130000%_ _%proc130001%_)
        (let ((_%rebind?130003%_ '#f))
          (bind-method!__%
           _%klass129999%_
           _%id130000%_
           _%proc130001%_
           _%rebind?130003%_))))
    (define bind-method!
      (lambda _g139664_
        (let ((_g139665_ (let () (declare (not safe)) (##length _g139664_))))
          (cond ((let () (declare (not safe)) (##fx= _g139665_ 3))
                 (apply bind-method!__0 _g139664_))
                ((let () (declare (not safe)) (##fx= _g139665_ 4))
                 (apply bind-method!__% _g139664_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g139664_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint132957%_ _%seed132958%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint132957%_
           procedure-hash
           eq?
           _%seed132958%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint132964%_ '#f) (_%seed132966%_ '0))
          (make-method-specializer-table__%
           _%size-hint132964%_
           _%seed132966%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint132968%_)
        (let ((_%seed132970%_ '0))
          (make-method-specializer-table__%
           _%size-hint132968%_
           _%seed132970%_))))
    (define make-method-specializer-table
      (lambda _g139666_
        (let ((_g139667_ (let () (declare (not safe)) (##length _g139666_))))
          (cond ((let () (declare (not safe)) (##fx= _g139667_ 0))
                 (apply make-method-specializer-table__0 _g139666_))
                ((let () (declare (not safe)) (##fx= _g139667_ 1))
                 (apply make-method-specializer-table__1 _g139666_))
                ((let () (declare (not safe)) (##fx= _g139667_ 2))
                 (apply make-method-specializer-table__% _g139666_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g139666_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint132937%_ _%seed132939%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint132937%_
           procedure-hash
           eq?
           _%seed132939%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint132945%_ '#f) (_%seed132947%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint132945%_
           _%seed132947%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint132949%_)
        (let ((_%seed132951%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint132949%_
           _%seed132951%_))))
    (define make-method-specializer-table/lock
      (lambda _g139668_
        (let ((_g139669_ (let () (declare (not safe)) (##length _g139668_))))
          (cond ((let () (declare (not safe)) (##fx= _g139669_ 0))
                 (apply make-method-specializer-table/lock__0 _g139668_))
                ((let () (declare (not safe)) (##fx= _g139669_ 1))
                 (apply make-method-specializer-table/lock__1 _g139668_))
                ((let () (declare (not safe)) (##fx= _g139669_ 2))
                 (apply make-method-specializer-table/lock__% _g139668_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g139668_))))))
    (define method-specializer-table-ref
      (lambda (_%tab132890%_ _%key132891%_ _%default132892%_)
        (let ((_%table132894%_
               (let () (declare (not safe)) (&raw-table-table _%tab132890%_)))
              (_%seed132895%_
               (let () (declare (not safe)) (&raw-table-seed _%tab132890%_))))
          (let* ((_%h132897%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key132891%_))
                         _%seed132895%_))
                 (_%size132900%_ (vector-length _%table132894%_))
                 (_%entries132903%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size132900%_ '2)))
                 (_%start132906%_
                  (let ((__tmp139670
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h132897%_ _%entries132903%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp139670 '1))))
            (let _%loop132910%_ ((_%probe132913%_ _%start132906%_)
                                 (_%i132915%_ '1)
                                 (_%deleted132917%_ '#f))
              (let ((_%k132920%_ (vector-ref _%table132894%_ _%probe132913%_)))
                (if (eq? _%k132920%_ (macro-unused-obj))
                    _%default132892%_
                    (if (eq? _%k132920%_ (macro-deleted-obj))
                        (_%loop132910%_
                         (let ((_%next-probe132925%_
                                (fx+ _%start132906%_
                                     _%i132915%_
                                     (fx* _%i132915%_ _%i132915%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe132925%_ _%size132900%_))
                         (let () (declare (not safe)) (##fx+ _%i132915%_ '1))
                         (let ((_%$e132928%_ _%deleted132917%_))
                           (if _%$e132928%_ _%$e132928%_ _%probe132913%_)))
                        (if (eq? _%key132891%_ _%k132920%_)
                            (vector-ref
                             _%table132894%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe132913%_ '1)))
                            (_%loop132910%_
                             (let ((_%next-probe132933%_
                                    (fx+ _%start132906%_
                                         _%i132915%_
                                         (fx* _%i132915%_ _%i132915%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe132933%_
                                _%size132900%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i132915%_ '1))
                             _%deleted132917%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab132861%_ _%key132862%_ _%default132863%_)
        (let ((_%lock132865%_
               (let () (declare (not safe)) (&raw-table-lock _%tab132861%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again132870%_ ((_%spin132873%_ '0))
              (if (let ((__tmp139671
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock132865%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp139671 '0))
                  (let ((__tmp139672 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock132865%_ '1 __tmp139672))
                  (if (let () (declare (not safe)) (##fx< _%spin132873%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again132870%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin132873%_ '1))))
                      (let ((_%owner132879%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock132865%_ '1))))
                        (if (eq? _%owner132879%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner132879%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again132870%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r132885%_
                 (method-specializer-table-ref
                  _%tab132861%_
                  _%key132862%_
                  _%default132863%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock132865%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock132865%_ '0 '0 '1))))
            _%$r132885%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab132813%_ _%key132814%_ _%value132815%_)
        (let ((_%table132817%_
               (let () (declare (not safe)) (&raw-table-table _%tab132813%_)))
              (_%seed132818%_
               (let () (declare (not safe)) (&raw-table-seed _%tab132813%_))))
          (let* ((_%h132820%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key132814%_))
                         _%seed132818%_))
                 (_%size132823%_ (vector-length _%table132817%_))
                 (_%entries132826%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size132823%_ '2)))
                 (_%start132829%_
                  (let ((__tmp139673
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h132820%_ _%entries132826%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp139673 '1))))
            (let _%loop132833%_ ((_%probe132836%_ _%start132829%_)
                                 (_%i132838%_ '1)
                                 (_%deleted132840%_ '#f))
              (let ((_%k132843%_ (vector-ref _%table132817%_ _%probe132836%_)))
                (if (eq? _%k132843%_ (macro-unused-obj))
                    (if _%deleted132840%_
                        (begin
                          (vector-set!
                           _%table132817%_
                           _%deleted132840%_
                           _%key132814%_)
                          (vector-set!
                           _%table132817%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted132840%_ '1))
                           _%value132815%_)
                          ((lambda ()
                             (let ((__tmp139674
                                    (let ((__tmp139675
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab132813%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp139675 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab132813%_
                                __tmp139674)))))
                        (begin
                          (vector-set!
                           _%table132817%_
                           _%probe132836%_
                           _%key132814%_)
                          (vector-set!
                           _%table132817%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe132836%_ '1))
                           _%value132815%_)
                          ((lambda ()
                             (let ((__tmp139676
                                    (let ((__tmp139677
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab132813%_))))
                                      (declare (not safe))
                                      (##fx- __tmp139677 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab132813%_
                                __tmp139676))
                             (let ((__tmp139678
                                    (let ((__tmp139679
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab132813%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp139679 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab132813%_
                                __tmp139678))))))
                    (if (eq? _%k132843%_ (macro-deleted-obj))
                        (_%loop132833%_
                         (let ((_%next-probe132850%_
                                (fx+ _%start132829%_
                                     _%i132838%_
                                     (fx* _%i132838%_ _%i132838%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe132850%_ _%size132823%_))
                         (let () (declare (not safe)) (##fx+ _%i132838%_ '1))
                         (let ((_%$e132853%_ _%deleted132840%_))
                           (if _%$e132853%_ _%$e132853%_ _%probe132836%_)))
                        (if (eq? _%key132814%_ _%k132843%_)
                            (let ()
                              (vector-set!
                               _%table132817%_
                               _%probe132836%_
                               _%key132814%_)
                              (vector-set!
                               _%table132817%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe132836%_ '1))
                               _%value132815%_))
                            (_%loop132833%_
                             (let ((_%next-probe132858%_
                                    (fx+ _%start132829%_
                                         _%i132838%_
                                         (fx* _%i132838%_ _%i132838%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe132858%_
                                _%size132823%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i132838%_ '1))
                             _%deleted132840%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab132809%_ _%key132810%_ _%value132811%_)
        (if (let ((__tmp139682
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab132809%_)))
                  (__tmp139680
                   (let ((__tmp139681
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab132809%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp139681 '4))))
              (declare (not safe))
              (##fx< __tmp139682 __tmp139680))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab132809%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab132809%_
         _%key132810%_
         _%value132811%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab132779%_ _%key132780%_ _%value132781%_)
        (let ((_%lock132784%_
               (let () (declare (not safe)) (&raw-table-lock _%tab132779%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again132789%_ ((_%spin132792%_ '0))
              (if (let ((__tmp139683
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock132784%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp139683 '0))
                  (let ((__tmp139684 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock132784%_ '1 __tmp139684))
                  (if (let () (declare (not safe)) (##fx< _%spin132792%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again132789%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin132792%_ '1))))
                      (let ((_%owner132798%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock132784%_ '1))))
                        (if (eq? _%owner132798%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner132798%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again132789%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r132804%_
                 (method-specializer-table-set!
                  _%tab132779%_
                  _%key132780%_
                  _%value132781%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock132784%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock132784%_ '0 '0 '1))))
            _%$r132804%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab132730%_
               _%key132731%_
               _%method-specializer-table-update!132732%_
               _%default132733%_)
        (let ((_%table132735%_
               (let () (declare (not safe)) (&raw-table-table _%tab132730%_)))
              (_%seed132736%_
               (let () (declare (not safe)) (&raw-table-seed _%tab132730%_))))
          (let* ((_%h132738%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key132731%_))
                         _%seed132736%_))
                 (_%size132741%_ (vector-length _%table132735%_))
                 (_%entries132744%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size132741%_ '2)))
                 (_%start132747%_
                  (let ((__tmp139685
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h132738%_ _%entries132744%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp139685 '1))))
            (let _%loop132751%_ ((_%probe132754%_ _%start132747%_)
                                 (_%i132756%_ '1)
                                 (_%deleted132758%_ '#f))
              (let ((_%k132761%_ (vector-ref _%table132735%_ _%probe132754%_)))
                (if (eq? _%k132761%_ (macro-unused-obj))
                    (if _%deleted132758%_
                        (begin
                          (vector-set!
                           _%table132735%_
                           _%deleted132758%_
                           _%key132731%_)
                          (vector-set!
                           _%table132735%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted132758%_ '1))
                           (_%method-specializer-table-update!132732%_
                            _%default132733%_))
                          ((lambda ()
                             (let ((__tmp139686
                                    (let ((__tmp139687
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab132730%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp139687 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab132730%_
                                __tmp139686)))))
                        (begin
                          (vector-set!
                           _%table132735%_
                           _%probe132754%_
                           _%key132731%_)
                          (vector-set!
                           _%table132735%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe132754%_ '1))
                           (_%method-specializer-table-update!132732%_
                            _%default132733%_))
                          ((lambda ()
                             (let ((__tmp139688
                                    (let ((__tmp139689
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab132730%_))))
                                      (declare (not safe))
                                      (##fx- __tmp139689 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab132730%_
                                __tmp139688))
                             (let ((__tmp139690
                                    (let ((__tmp139691
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab132730%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp139691 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab132730%_
                                __tmp139690))))))
                    (if (eq? _%k132761%_ (macro-deleted-obj))
                        (_%loop132751%_
                         (let ((_%next-probe132768%_
                                (fx+ _%start132747%_
                                     _%i132756%_
                                     (fx* _%i132756%_ _%i132756%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe132768%_ _%size132741%_))
                         (let () (declare (not safe)) (##fx+ _%i132756%_ '1))
                         (let ((_%$e132771%_ _%deleted132758%_))
                           (if _%$e132771%_ _%$e132771%_ _%probe132754%_)))
                        (if (eq? _%key132731%_ _%k132761%_)
                            (let ()
                              (vector-set!
                               _%table132735%_
                               _%probe132754%_
                               _%key132731%_)
                              (vector-set!
                               _%table132735%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe132754%_ '1))
                               (_%method-specializer-table-update!132732%_
                                (vector-ref
                                 _%table132735%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe132754%_ '1))))))
                            (_%loop132751%_
                             (let ((_%next-probe132776%_
                                    (fx+ _%start132747%_
                                         _%i132756%_
                                         (fx* _%i132756%_ _%i132756%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe132776%_
                                _%size132741%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i132756%_ '1))
                             _%deleted132758%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab132725%_
               _%key132726%_
               _%method-specializer-table-update!132727%_
               _%default132728%_)
        (if (let ((__tmp139694
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab132725%_)))
                  (__tmp139692
                   (let ((__tmp139693
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab132725%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp139693 '4))))
              (declare (not safe))
              (##fx< __tmp139694 __tmp139692))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab132725%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab132725%_
         _%key132726%_
         _%method-specializer-table-update!132727%_
         _%default132728%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab132694%_
               _%key132695%_
               _%method-specializer-table-update!132696%_
               _%default132697%_)
        (let ((_%lock132700%_
               (let () (declare (not safe)) (&raw-table-lock _%tab132694%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again132705%_ ((_%spin132708%_ '0))
              (if (let ((__tmp139695
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock132700%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp139695 '0))
                  (let ((__tmp139696 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock132700%_ '1 __tmp139696))
                  (if (let () (declare (not safe)) (##fx< _%spin132708%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again132705%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin132708%_ '1))))
                      (let ((_%owner132714%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock132700%_ '1))))
                        (if (eq? _%owner132714%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner132714%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again132705%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r132720%_
                 (_%method-specializer-table-update!132696%_
                  _%tab132694%_
                  _%key132695%_
                  _%method-specializer-table-update!132696%_
                  _%default132697%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock132700%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock132700%_ '0 '0 '1))))
            _%$r132720%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab132651%_ _%key132652%_)
        (let ((_%table132654%_
               (let () (declare (not safe)) (&raw-table-table _%tab132651%_)))
              (_%seed132656%_
               (let () (declare (not safe)) (&raw-table-seed _%tab132651%_))))
          (let* ((_%h132659%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key132652%_))
                         _%seed132656%_))
                 (_%size132662%_ (vector-length _%table132654%_))
                 (_%entries132665%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size132662%_ '2)))
                 (_%start132668%_
                  (let ((__tmp139697
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h132659%_ _%entries132665%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp139697 '1))))
            (let _%loop132672%_ ((_%probe132675%_ _%start132668%_)
                                 (_%i132677%_ '1))
              (let ((_%k132680%_ (vector-ref _%table132654%_ _%probe132675%_)))
                (if (eq? _%k132680%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k132680%_ (macro-deleted-obj))
                        (_%loop132672%_
                         (let ((_%next-probe132685%_
                                (fx+ _%start132668%_
                                     _%i132677%_
                                     (fx* _%i132677%_ _%i132677%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe132685%_ _%size132662%_))
                         (let () (declare (not safe)) (##fx+ _%i132677%_ '1)))
                        (if (eq? _%key132652%_ _%k132680%_)
                            (let ()
                              (vector-set!
                               _%table132654%_
                               _%probe132675%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table132654%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe132675%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp139698
                                        (let ((__tmp139699
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab132651%_))))
                                          (declare (not safe))
                                          (##fx- __tmp139699 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab132651%_
                                    __tmp139698)))))
                            (_%loop132672%_
                             (let ((_%next-probe132691%_
                                    (fx+ _%start132668%_
                                         _%i132677%_
                                         (fx* _%i132677%_ _%i132677%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe132691%_
                                _%size132662%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i132677%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab132621%_ _%key132623%_)
        (let ((_%lock132626%_
               (let () (declare (not safe)) (&raw-table-lock _%tab132621%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again132631%_ ((_%spin132634%_ '0))
              (if (let ((__tmp139700
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock132626%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp139700 '0))
                  (let ((__tmp139701 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock132626%_ '1 __tmp139701))
                  (if (let () (declare (not safe)) (##fx< _%spin132634%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again132631%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin132634%_ '1))))
                      (let ((_%owner132640%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock132626%_ '1))))
                        (if (eq? _%owner132640%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner132640%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again132631%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r132646%_
                 (method-specializer-table-delete!
                  _%tab132621%_
                  _%key132623%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock132626%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock132626%_ '0 '0 '1))))
            _%$r132646%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc132618%_ _%specializer132619%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc132618%_
         _%specializer132619%_)))
    (define __lookup-method-specializer
      (lambda (_%proc132616%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc132616%_
         '#f)))
    (define __specialize-class
      (lambda (_%klass132598%_)
        (let* ((_%klass132601%_ _%klass132598%_)
               (_%$e132610%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass132601%_ '12 '#f '#f))))
          (if _%$e132610%_
              _%$e132610%_
              (let ((_%method-table132614%_
                     (___specialize-class _%klass132601%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass132601%_
                   _%method-table132614%_
                   '12
                   '#f
                   '#f))
                _%method-table132614%_)))))
    (define specialize-class
      (lambda (_%klass130130%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass130130%_ 'class))
            (let ((_%klass130134%_ _%klass130130%_))
              (__specialize-class _%klass130134%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1078.25-1078.30"
               'contract:
               'class-type?
               'value:
               _%klass130130%_)
              '#!void))))
    (define __specialize-method
      (lambda (_%klass132582%_
               _%method-table132583%_
               _%method132584%_
               _%proc132585%_)
        (let ((_%$e132587%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table132583%_
                  _%method132584%_
                  '#f))))
          (if _%$e132587%_
              _%$e132587%_
              (let ((_%$e132590%_
                     (__lookup-method-specializer _%proc132585%_)))
                (if _%$e132590%_
                    ((lambda (_%specialize132593%_)
                       (let ((_%specialized-proc132595%_
                              (_%specialize132593%_
                               _%klass132582%_
                               _%method-table132583%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table132583%_
                          _%method132584%_
                          _%specialized-proc132595%_)))
                     _%$e132590%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table132583%_
                       _%method132584%_
                       _%proc132585%_))))))))
    (define ___specialize-class
      (lambda (_%klass132449%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass132449%_ 'class))
            (if (let* ((_%klass132452%_ _%klass132449%_)
                       (_%klass132457%_ _%klass132452%_))
                  (__class-type-metaclass? _%klass132457%_))
                (let* ((_%obj132469%_ _%klass132449%_)
                       (_%id132472%_ 'specialize-class)
                       (_%args132475%_ '())
                       (_%id132480%_ _%id132472%_))
                  (declare (not safe))
                  (##apply __call-method
                           _%obj132469%_
                           _%id132480%_
                           _%args132475%_))
                (if (let* ((_%pred132493%_ class-type-metaclass?)
                           (_%lst132496%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass132449%_
                               '6
                               '#f
                               '#f)))
                           (_%pred132501%_ _%pred132493%_))
                      (declare (not safe))
                      (__find _%pred132501%_ _%lst132496%_))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass132449%_)
                    (let ((_%method-table132514%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop132516%_ ((_%rest132518%_
                                            (let* ((_%klass132565%_
                                                    _%klass132449%_)
                                                   (_%klass132570%_
                                                    _%klass132565%_))
                                              (__class-precedence-list
                                               _%klass132570%_))))
                        (let* ((_%rest132519132527%_ _%rest132518%_)
                               (_%else132521132535%_
                                (lambda () _%method-table132514%_))
                               (_%K132523132553%_
                                (lambda (_%rest132538%_ _%xklass132539%_)
                                  (let ((_%xmethod-table132540132542%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass132539%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table132540132542%_
                                        (let* ((_%xmethod-table132544%_
                                                _%xmethod-table132540132542%_)
                                               (__tmp139702
                                                (lambda (_%g132545132548%_
                                                         _%g132546132550%_)
                                                  (__specialize-method
                                                   _%klass132449%_
                                                   _%method-table132514%_
                                                   _%g132545132548%_
                                                   _%g132546132550%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table132544%_
                                           __tmp139702))
                                        '#f))
                                  (_%loop132516%_ _%rest132538%_))))
                          (if (pair? _%rest132519132527%_)
                              (let ((_%hd132524132556%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest132519132527%_)))
                                    (_%tl132525132558%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest132519132527%_))))
                                (let* ((_%xklass132561%_ _%hd132524132556%_)
                                       (_%rest132563%_ _%tl132525132558%_))
                                  (_%K132523132553%_
                                   _%rest132563%_
                                   _%xklass132561%_)))
                              (_%else132521132535%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass132449%_))
                (__specialize-class (__shadow-class__0 _%klass132449%_))
                (error '"bad class; cannot specialize" _%klass132449%_)))))
    (define __seal-class!
      (lambda (_%klass132312%_)
        (let ((_%klass132315%_ _%klass132312%_))
          (if (let* ((_%klass132324%_ _%klass132315%_)
                     (_%klass132329%_ _%klass132324%_))
                (__class-type-sealed? _%klass132329%_))
              '#!void
              (begin
                (if (let* ((_%klass132342%_ _%klass132315%_)
                           (_%klass132347%_ _%klass132342%_))
                      (__class-type-metaclass? _%klass132347%_))
                    (let ()
                      (let* ((_%obj132358%_ _%klass132315%_)
                             (_%id132361%_ 'seal-class!)
                             (_%args132364%_ '())
                             (_%id132369%_ _%id132361%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj132358%_
                                 _%id132369%_
                                 _%args132364%_))
                      (let* ((_%klass132382%_ _%klass132315%_)
                             (_%klass132387%_ _%klass132382%_))
                        (__specialize-class _%klass132387%_)))
                    (if (let* ((_%pred132397%_ class-type-metaclass?)
                               (_%lst132400%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass132315%_
                                   '6
                                   '#f
                                   '#f)))
                               (_%pred132405%_ _%pred132397%_))
                          (declare (not safe))
                          (__find _%pred132405%_ _%lst132400%_))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass132315%_)
                        (let* ((_%klass132418%_ _%klass132315%_)
                               (_%klass132423%_ _%klass132418%_))
                          (__specialize-class _%klass132423%_))))
                (let* ((_%klass132434%_ _%klass132315%_)
                       (_%klass132439%_ _%klass132434%_))
                  (__class-type-seal! _%klass132439%_)))))))
    (define seal-class!
      (lambda (_%klass130264%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass130264%_ 'class))
            (let ((_%klass130268%_ _%klass130264%_))
              (__seal-class! _%klass130268%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1124.20-1124.25"
               'contract:
               'class-type?
               'value:
               _%klass130264%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass132200%_ _%obj132201%_ _%id132202%_)
        (let* ((_%subklass132205%_ _%subklass132200%_)
               (_%id132213%_ _%id132202%_))
          (letrec ((_%find-next-method132222%_
                    (lambda (_%klass132224%_)
                      (let _%lp132226%_ ((_%rest132228%_
                                          (let ((_%klass132297%_
                                                 _%klass132224%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%klass132297%_
                                                   'class))
                                                (let ((_%klass132302%_
                                                       _%klass132297%_))
                                                  (__class-precedence-list
                                                   _%klass132302%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/mop
                                                   'contract:
                                                   'class-type?
                                                   'value:
                                                   _%klass132297%_)
                                                  '#!void)))))
                        (let* ((_%rest132229132237%_ _%rest132228%_)
                               (_%else132231132245%_ (lambda () '#f))
                               (_%K132233132285%_
                                (lambda (_%rest132248%_ _%klass132249%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass132205%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass132249%_)))
                                      (let* ((_%mixins132251%_ _%rest132248%_)
                                             (_%obj132254%_ _%obj132201%_)
                                             (_%id132257%_ _%id132213%_)
                                             (_%id132262%_ _%id132257%_))
                                        (__mixin-find-method
                                         _%mixins132251%_
                                         _%obj132254%_
                                         _%id132262%_))
                                      (_%lp132226%_ _%rest132248%_)))))
                          (if (pair? _%rest132229132237%_)
                              (let ((_%hd132234132288%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest132229132237%_)))
                                    (_%tl132235132290%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest132229132237%_))))
                                (let* ((_%klass132293%_ _%hd132234132288%_)
                                       (_%rest132295%_ _%tl132235132290%_))
                                  (_%K132233132285%_
                                   _%rest132295%_
                                   _%klass132293%_)))
                              (_%else132231132245%_)))))))
            (_%find-next-method132222%_ (class-of _%obj132201%_))))))
    (define next-method
      (lambda (_%subklass130398%_ _%obj130399%_ _%id130400%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass130398%_ 'class))
            (let ((_%subklass130404%_ _%subklass130398%_))
              (if (symbol? _%id130400%_)
                  (let ((_%id130414%_ _%id130400%_))
                    (__next-method
                     _%subklass130404%_
                     _%obj130399%_
                     _%id130414%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1146.44-1146.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id130400%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1146.20-1146.28"
               'contract:
               'class-type?
               'value:
               _%subklass130398%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass132135%_ _%obj132136%_ _%id132137%_ . _%args132138%_)
        (let* ((_%subklass132141%_ _%subklass132135%_)
               (_%id132149%_ _%id132137%_)
               (_%$e132194%_
                (let* ((_%subklass132158%_ _%subklass132141%_)
                       (_%obj132161%_ _%obj132136%_)
                       (_%id132164%_ _%id132149%_)
                       (_%subklass132169%_ _%subklass132158%_)
                       (_%id132184%_ _%id132164%_))
                  (__next-method
                   _%subklass132169%_
                   _%obj132161%_
                   _%id132184%_))))
          (if _%$e132194%_
              ((lambda (_%methodf132197%_)
                 (apply _%methodf132197%_ _%obj132136%_ _%args132138%_))
               _%$e132194%_)
              (error '"cannot find next method"
                     'object:
                     _%obj132136%_
                     'method:
                     _%id132149%_)))))
    (define call-next-method
      (lambda (_%subklass130544%_ _%obj130545%_ _%id130546%_ . _%args130547%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass130544%_ 'class))
            (let ((_%subklass130551%_ _%subklass130544%_))
              (if (symbol? _%id130546%_)
                  (let ((_%id130561%_ _%id130546%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass130551%_
                             _%obj130545%_
                             _%id130561%_
                             _%args130547%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1157.49-1157.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id130546%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1157.25-1157.33"
               'contract:
               'class-type?
               'value:
               _%subklass130544%_)
              '#!void))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type131914%_ _%properties131915%_)
        (letrec ((_%shadow-type-id131917%_
                  (lambda (_%type132123%_)
                    (let ((__tmp139703
                           (let ()
                             (declare (not safe))
                             (##type-name _%type132123%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp139703 '"::t"))))
                 (_%shadow-type-name131918%_
                  (lambda (_%type132121%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type132121%_))))
                 (_%make-shadow-class131919%_
                  (lambda (_%type132003%_ _%precedence-list132004%_)
                    (let* ((_%super132006%_
                            (if (pair? _%precedence-list132004%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list132004%_))
                                      '())
                                '()))
                           (_%klass132118%_
                            (let* ((_%id132008%_
                                    (_%shadow-type-id131917%_ _%type132003%_))
                                   (_%name132011%_
                                    (let ()
                                      (declare (not safe))
                                      (##type-name _%type132003%_)))
                                   (_%direct-supers132014%_ _%super132006%_)
                                   (_%direct-slots132017%_ '())
                                   (_%properties132043%_
                                    (cons (cons 'struct: '#t)
                                          (cons (cons 'system: '#t)
                                                (cons (cons 'system-type:
                                                            _%type132003%_)
                                                      (let ((__tmp139704
                                                             (if (let ((_%type132020%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%type132003%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##type? _%type132020%_))
                               (let ((_%type132025%_ _%type132020%_))
                                 (__type-extensible? _%type132025%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  '##type?
                                  'value:
                                  _%type132020%_)
                                 '#!void)))
                         '()
                         (cons (cons 'final: '#t) '()))))
                (declare (not safe))
                (foldr__0 cons _%properties131915%_ __tmp139704))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%constructor132046%_ '#f)
                                   (_%id132051%_ _%id132008%_))
                              (if (symbol? _%name132011%_)
                                  (let* ((_%name132062%_ _%name132011%_)
                                         (_%direct-supers132072%_
                                          _%direct-supers132014%_)
                                         (_%direct-slots132082%_
                                          _%direct-slots132017%_)
                                         (_%properties132092%_
                                          _%properties132043%_))
                                    (if ((lambda (_%$obj132101%_)
                                           (or (not _%$obj132101%_)
                                               (symbol? _%$obj132101%_)))
                                         _%constructor132046%_)
                                        (let ((_%constructor132108%_
                                               _%constructor132046%_))
                                          (__make-class-type
                                           _%id132051%_
                                           _%name132062%_
                                           _%direct-supers132072%_
                                           _%direct-slots132082%_
                                           _%properties132092%_
                                           _%constructor132108%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '(? (or not symbol?))
                                           'value:
                                           _%constructor132046%_)
                                          '#!void)))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     'symbol?
                                     'value:
                                     _%name132011%_)
                                    '#!void)))))
                      (let ((__tmp139705
                             (let ()
                               (declare (not safe))
                               (##type-id _%type132003%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp139705
                         _%klass132118%_))
                      _%klass132118%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again131923%_ ((_%spin131926%_ '0))
              (if (let ((__tmp139706
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp139706 '0))
                  (let ((__tmp139707 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp139707))
                  (if (let () (declare (not safe)) (##fx< _%spin131926%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again131923%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin131926%_ '1))))
                      (let ((_%owner131932%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner131932%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner131932%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again131923%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e131938%_
                 (let ((__tmp139708
                        (let ()
                          (declare (not safe))
                          (##type-id _%type131914%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp139708 '#f))))
            (if _%$e131938%_
                ((lambda (_%klass131941%_)
                   (let ()
                     (declare (not interrupts-enabled))
                     (begin
                       (let ()
                         (declare (not safe))
                         (##vector-set! __shadow-classes-lock '1 '#f))
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __shadow-classes-lock '0 '0 '1))))
                   _%klass131941%_)
                 _%$e131938%_)
                (let _%loop131946%_ ((_%super131948%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type131914%_)))
                                     (_%hierarchy131949%_ '()))
                  (if (not _%super131948%_)
                      (let _%loop131952%_ ((_%rest131954%_ _%hierarchy131949%_)
                                           (_%precedence-list131955%_ '()))
                        (let* ((_%rest131956131964%_ _%rest131954%_)
                               (_%else131958131976%_
                                (lambda ()
                                  (let ((_%klass131972%_
                                         (_%make-shadow-class131919%_
                                          _%type131914%_
                                          _%precedence-list131955%_)))
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
                                    _%klass131972%_)))
                               (_%K131960131990%_
                                (lambda (_%rest131979%_ _%type131980%_)
                                  (let ((_%$e131982%_
                                         (let ((__tmp139709
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type131980%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp139709
                                            '#f))))
                                    (if _%$e131982%_
                                        ((lambda (_%klass131985%_)
                                           (_%loop131952%_
                                            _%rest131979%_
                                            (cons _%klass131985%_
                                                  _%precedence-list131955%_)))
                                         _%$e131982%_)
                                        (let ((_%klass131988%_
                                               (_%make-shadow-class131919%_
                                                _%type131980%_
                                                _%precedence-list131955%_)))
                                          (_%loop131952%_
                                           _%rest131979%_
                                           (cons _%klass131988%_
                                                 _%precedence-list131955%_))))))))
                          (if (pair? _%rest131956131964%_)
                              (let ((_%hd131961131993%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest131956131964%_)))
                                    (_%tl131962131995%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest131956131964%_))))
                                (let* ((_%type131998%_ _%hd131961131993%_)
                                       (_%rest132000%_ _%tl131962131995%_))
                                  (_%K131960131990%_
                                   _%rest132000%_
                                   _%type131998%_)))
                              (_%else131958131976%_))))
                      (_%loop131946%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super131948%_))
                       (cons _%super131948%_ _%hierarchy131949%_)))))))))
    (define __shadow-class__0
      (lambda (_%type132128%_)
        (let ((_%properties132130%_ '()))
          (__shadow-class__% _%type132128%_ _%properties132130%_))))
    (define __shadow-class
      (lambda _g139710_
        (let ((_g139711_ (let () (declare (not safe)) (##length _g139710_))))
          (cond ((let () (declare (not safe)) (##fx= _g139711_ 1))
                 (apply __shadow-class__0 _g139710_))
                ((let () (declare (not safe)) (##fx= _g139711_ 2))
                 (apply __shadow-class__% _g139710_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g139710_))))))
    (define __type
      (let* ((_%tb131902%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e131904%_ _%tb131902%_))
        (if (eq? '2 _%$e131904%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e131904%_)
                (let ((_%flonum-self-tagging-tags131907%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits131908%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e131910%_ _%flonum-self-tagging-tags131907%_))
                    (if (eq? '0 _%$e131910%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits131908%_ '2))
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
                        (if (eq? '1 _%$e131910%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits131908%_ '2))
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
                            (if (eq? '2 _%$e131910%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e131910%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e131910%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags131907%_))))))))
                (error '"unexpected tag width" _%tb131902%_)))))
    (define __primitive-class
      (let ((__tmp139712 (vector-length __type)))
        (declare (not safe))
        (##make-vector __tmp139712 '#f)))
    (define __boxvalues-class
      (let () (declare (not safe)) (##make-vector '2 '#f)))
    (define __subtype-class
      (let () (declare (not safe)) (##make-vector '32 '#f)))
    (define __char-class '#f)
    (define __special-class
      (let () (declare (not safe)) (##make-vector '16 '#f)))
    (define __class-of
      (let* ((_%len131792%_ (vector-length __type))
             (_%cv131794%_
              (let () (declare (not safe)) (##make-vector _%len131792%_ '#f))))
        (let _%loop131797%_ ((_%i131799%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i131799%_ _%len131792%_))
              (let* ((_%t131801%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i131799%_)))
                     (_%f131899%_
                      (if (eq? _%t131801%_ 'undefined)
                          (lambda (_%obj131804%_)
                            (error '"object type is undefined" _%obj131804%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t131801%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj131807%_)
                                (declare (not interrupts-enabled) (not safe))
                                (let ((_%$e131810%_
                                       (##vector-ref
                                        __primitive-class
                                        _%i131799%_)))
                                  (if _%$e131810%_
                                      _%$e131810%_
                                      (let ((_%klass131814%_
                                             (__system-class _%t131801%_)))
                                        (##vector-set!
                                         __primitive-class
                                         _%i131799%_
                                         _%klass131814%_)
                                        _%klass131814%_))))
                              (if (eq? _%t131801%_ 'subtyped)
                                  (lambda (_%obj131818%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st131821%_
                                           (##subtype _%obj131818%_)))
                                      (if (##fx= _%st131821%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass131824%_
                                                 (##structure-type
                                                  _%obj131818%_)))
                                            (if (##structure-instance-of?
                                                 _%klass131824%_
                                                 'class)
                                                _%klass131824%_
                                                (__shadow-class__0
                                                 _%klass131824%_)))
                                          (if (##fx= _%st131821%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj131818%_)
                                                         '1)
                                                  (let ((_%$e131827%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '0)))
                                                    (if _%$e131827%_
                                                        _%$e131827%_
                                                        (let ((_%klass131831%_
                                                               (__system-class
                                                                'box)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '0
                                                           _%klass131831%_)
                                                          _%klass131831%_)))
                                                  (let ((_%$e131834%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '1)))
                                                    (if _%$e131834%_
                                                        _%$e131834%_
                                                        (let ((_%klass131838%_
                                                               (__system-class
                                                                'values)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '1
                                                           _%klass131838%_)
                                                          _%klass131838%_))))
                                              (let ((_%$e131841%_
                                                     (##vector-ref
                                                      __subtype-class
                                                      _%st131821%_)))
                                                (if _%$e131841%_
                                                    _%$e131841%_
                                                    (let ((_%klass131858%_
                                                           (let ((_%$e131845%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##vector-ref __subtype-id _%st131821%_)))
                     (if _%$e131845%_
                         ((lambda (_%subtype-t131848%_)
                            (let ((_%$e131850%_
                                   (##vector-ref
                                    __subtype-class
                                    _%st131821%_)))
                              (if _%$e131850%_
                                  _%$e131850%_
                                  (let ((_%klass131854%_
                                         (__system-class _%subtype-t131848%_)))
                                    (##vector-set!
                                     __subtype-class
                                     _%st131821%_
                                     _%klass131854%_)
                                    _%klass131854%_))))
                          _%$e131845%_)
                         (error '"unknown class"
                                'object:
                                _%obj131818%_
                                'subtype:
                                _%st131821%_)))))
              (##vector-set! __subtype-class _%st131821%_ _%klass131858%_)
              _%klass131858%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (eq? _%t131801%_ 'special)
                                      (lambda (_%obj131862%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (let ((_%x131865%_
                                               (##type-cast _%obj131862%_ '0)))
                                          (if (##fx> _%x131865%_ '0)
                                              (let ((_%$e131868%_
                                                     __char-class))
                                                (if _%$e131868%_
                                                    _%$e131868%_
                                                    (let ((_%klass131872%_
                                                           (__system-class
                                                            'char)))
                                                      (set! __char-class
                                                            _%klass131872%_)
                                                      _%klass131872%_)))
                                              (let* ((_%t131875%_
                                                      (##fx- _%x131865%_))
                                                     (_%$e131878%_
                                                      (##vector-ref
                                                       __special-class
                                                       _%t131875%_)))
                                                (if _%$e131878%_
                                                    _%$e131878%_
                                                    (let ((_%klass131896%_
                                                           (if (eq? _%obj131862%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                       (__system-class 'null)
                       (if (eq? _%obj131862%_ '#f)
                           (__system-class 'false)
                           (if (eq? _%obj131862%_ '#t)
                               (__system-class 'true)
                               (if (eq? _%obj131862%_ '#!void)
                                   (__system-class 'void)
                                   (if (eq? _%obj131862%_ '#!eof)
                                       (__system-class 'eof)
                                       (if (eq? _%obj131862%_ '#!unbound)
                                           (__system-class 'unbound)
                                           (if (eq? _%obj131862%_ '#!unbound2)
                                               (__system-class 'unbound2)
                                               (if (eq? _%obj131862%_
                                                        '#!optional)
                                                   (__system-class 'optional)
                                                   (if (eq? _%obj131862%_
                                                            '#!rest)
                                                       (__system-class 'rest)
                                                       (if (eq? _%obj131862%_
                                                                '#!key)
                                                           (__system-class
                                                            'key)
                                                           (if (eq? _%obj131862%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (macro-unused-obj))
                       (__system-class 'unused)
                       (if (eq? _%obj131862%_ (macro-deleted-obj))
                           (__system-class 'deleted)
                           (if (eq? _%obj131862%_ (macro-absent-obj))
                               (__system-class 'absent)
                               (__system-class 'unknown))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (##vector-set! __special-class _%t131875%_ _%klass131896%_)
              _%klass131896%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t131801%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv131794%_ _%i131799%_ _%f131899%_))
                (_%loop131797%_
                 (let () (declare (not safe)) (##fx+ _%i131799%_ '1))))
              _%cv131794%_))))
    (define type-of
      (lambda (_%obj131788%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj131788%_)))))
    (define class-of
      (lambda (_%obj131779%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t131783%_ (##type _%obj131779%_))
                 (_%f131785%_ (##vector-ref __class-of _%t131783%_)))
            (_%f131785%_ _%obj131779%_)))))
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
      (lambda (_%id131773%_)
        (let ((_%$e131775%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id131773%_ '#f))))
          (if _%$e131775%_
              _%$e131775%_
              (error '"unknown system class" _%id131773%_)))))
    (define __make-system-class
      (lambda (_%id131675%_ _%super131676%_ _%properties131677%_)
        (let ((_%klass131771%_
               (let* ((_%id131679%_ _%id131675%_)
                      (_%name131682%_ _%id131675%_)
                      (_%direct-supers131685%_ _%super131676%_)
                      (_%direct-slots131688%_ '())
                      (_%properties131691%_
                       (cons (cons 'system: '#t)
                             (let ()
                               (declare (not safe))
                               (foldr__0 cons '() _%properties131677%_))))
                      (_%constructor131694%_ '#f))
                 (if (symbol? _%id131679%_)
                     (let ((_%id131699%_ _%id131679%_))
                       (if (symbol? _%name131682%_)
                           (let ((_%name131715%_ _%name131682%_))
                             (if (list? _%direct-supers131685%_)
                                 (let* ((_%direct-supers131725%_
                                         _%direct-supers131685%_)
                                        (_%direct-slots131735%_
                                         _%direct-slots131688%_)
                                        (_%properties131745%_
                                         _%properties131691%_))
                                   (if ((lambda (_%$obj131754%_)
                                          (or (not _%$obj131754%_)
                                              (symbol? _%$obj131754%_)))
                                        _%constructor131694%_)
                                       (let ((_%constructor131761%_
                                              _%constructor131694%_))
                                         (__make-class-type
                                          _%id131699%_
                                          _%name131715%_
                                          _%direct-supers131725%_
                                          _%direct-slots131735%_
                                          _%properties131745%_
                                          _%constructor131761%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          '(? (or not symbol?))
                                          'value:
                                          _%constructor131694%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'list?
                                    'value:
                                    _%direct-supers131685%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'symbol?
                              'value:
                              _%name131682%_)
                             '#!void)))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id131679%_)
                       '#!void)))))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id131675%_
             _%klass131771%_))
          _%klass131771%_)))))
