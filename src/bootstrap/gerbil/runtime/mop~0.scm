(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1773009261)
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
      (let ((_%flags136536%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties136537%_ '((direct-slots:) (system: . #t)))
            (_%slot-table136538%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags136536%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table136538%_
           _%properties136537%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots136493%_
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
             (_%slot-vector136495%_ (list->vector (cons '#f _%slots136493%_)))
             (_%slot-table136521%_
              (let ((_%slot-table136497%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp139563
                       (lambda (_%slot136499%_ _%field136500%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table136497%_
                            _%slot136499%_
                            _%field136500%_))
                         (let ((__tmp139564
                                (let ((_%sym136502%_ _%slot136499%_))
                                  (if (symbol? _%sym136502%_)
                                      (let ((_%sym136507%_ _%sym136502%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym136507%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym136502%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table136497%_
                            __tmp139564
                            _%field136500%_))))
                      (__tmp139561
                       (let ((__tmp139562
                              (let ()
                                (declare (not safe))
                                (##length _%slots136493%_))))
                         (declare (not safe))
                         (##iota __tmp139562 '1))))
                  (declare (not safe))
                  (##for-each __tmp139563 _%slots136493%_ __tmp139561))
                _%slot-table136497%_))
             (_%flags136523%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields136529%_
              (list->vector
               (let ((__tmp139565
                      (map (lambda (_%g136524136526%_)
                             (list _%g136524136526%_ '5 '#f))
                           (drop _%slots136493%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp139565))))
             (_%properties136531%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots136493%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t136533%_
              (let ((__tmp139566 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags136523%_
                 ##type-type
                 _%fields136529%_
                 __tmp139566
                 _%slot-vector136495%_
                 _%slot-table136521%_
                 _%properties136531%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t136533%_ _%t136533%_))
        _%t136533%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags136489%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties136490%_ '((direct-slots:) (system: . #t)))
            (_%slot-table136491%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp139567 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags136489%_
           '#f
           '#()
           __tmp139567
           '#(#f)
           _%slot-table136491%_
           _%properties136490%_
           '#f
           '#f
           '#f
           '#f))))
    (define __class-type
      (lambda (_%klass136477%_)
        (let ((_%klass136480%_ _%klass136477%_))
          (declare (not safe))
          (##structure-type _%klass136480%_))))
    (define class-type
      (lambda (_%klass121851%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121851%_ 'class))
            (let ((_%klass121855%_ _%klass121851%_))
              (__class-type _%klass121855%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass121851%_)
              '#!void))))
    (define class-type?
      (lambda (_%obj136475%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj136475%_ 'class))))
    (define __class-type=?
      (lambda (_%x136454%_ _%y136455%_)
        (let* ((_%x136458%_ _%x136454%_) (_%y136466%_ _%y136455%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x136458%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y136466%_ '1 '#f '#f))))))
    (define class-type=?
      (lambda (_%x121985%_ _%y121986%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x121985%_ 'class))
            (let ((_%x121990%_ _%x121985%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y121986%_ 'class))
                  (let ((_%y122000%_ _%y121986%_))
                    (__class-type=? _%x121990%_ _%y122000%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y121986%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x121985%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type136442%_)
        (let* ((_%type136445%_ _%type136442%_)
               (__tmp139568
                (let ((__tmp139569
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type136445%_))))
                  (declare (not safe))
                  (##fxand __tmp139569 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp139568 type-flag-opaque))))
    (define type-opaque?
      (lambda (_%type122432%_)
        (if (let () (declare (not safe)) (##type? _%type122432%_))
            (let ((_%type122436%_ _%type122432%_))
              (__type-opaque? _%type122436%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type122432%_)
              '#!void))))
    (define __class-type-opaque?
      (lambda (_%klass136430%_)
        (let* ((_%klass136433%_ _%klass136430%_)
               (__tmp139570
                (let ((__tmp139571
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass136433%_))))
                  (declare (not safe))
                  (##fxand __tmp139571 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp139570 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass122566%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122566%_ 'class))
            (let ((_%klass122570%_ _%klass122566%_))
              (__class-type-opaque? _%klass122570%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass122566%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type136418%_)
        (let* ((_%type136421%_ _%type136418%_)
               (__tmp139572
                (let ((__tmp139573
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type136421%_))))
                  (declare (not safe))
                  (##fxand __tmp139573 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp139572 type-flag-extensible))))
    (define type-extensible?
      (lambda (_%type122700%_)
        (if (let () (declare (not safe)) (##type? _%type122700%_))
            (let ((_%type122704%_ _%type122700%_))
              (__type-extensible? _%type122704%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type122700%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type136406%_)
        (let* ((_%type136409%_ _%type136406%_)
               (__tmp139574
                (let ((__tmp139575
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type136409%_))))
                  (declare (not safe))
                  (##fxand __tmp139575 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp139574 '0))))
    (define class-type-final?
      (lambda (_%type122834%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type122834%_ 'class))
            (let ((_%type122838%_ _%type122834%_))
              (__class-type-final? _%type122838%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type122834%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass136394%_)
        (let* ((_%klass136397%_ _%klass136394%_)
               (__tmp139576
                (let ((__tmp139577
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass136397%_))))
                  (declare (not safe))
                  (##fxand __tmp139577 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp139576 class-type-flag-struct))))
    (define class-type-struct?
      (lambda (_%klass122968%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122968%_ 'class))
            (let ((_%klass122972%_ _%klass122968%_))
              (__class-type-struct? _%klass122972%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass122968%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass136382%_)
        (let* ((_%klass136385%_ _%klass136382%_)
               (__tmp139578
                (let ((__tmp139579
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass136385%_))))
                  (declare (not safe))
                  (##fxand __tmp139579 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp139578 class-type-flag-sealed))))
    (define class-type-sealed?
      (lambda (_%klass123102%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123102%_ 'class))
            (let ((_%klass123106%_ _%klass123102%_))
              (__class-type-sealed? _%klass123106%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass123102%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass136370%_)
        (let* ((_%klass136373%_ _%klass136370%_)
               (__tmp139580
                (let ((__tmp139581
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass136373%_))))
                  (declare (not safe))
                  (##fxand __tmp139581 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp139580 class-type-flag-metaclass))))
    (define class-type-metaclass?
      (lambda (_%klass123236%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123236%_ 'class))
            (let ((_%klass123240%_ _%klass123236%_))
              (__class-type-metaclass? _%klass123240%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass123236%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass136358%_)
        (let* ((_%klass136361%_ _%klass136358%_)
               (__tmp139582
                (let ((__tmp139583
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass136361%_))))
                  (declare (not safe))
                  (##fxand __tmp139583 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp139582 class-type-flag-system))))
    (define class-type-system?
      (lambda (_%klass123370%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123370%_ 'class))
            (let ((_%klass123374%_ _%klass123370%_))
              (__class-type-system? _%klass123374%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass123370%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass136346%_)
        (let* ((_%klass136349%_ _%klass136346%_)
               (__tmp139584
                (let ((__tmp139585
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass136349%_))))
                  (declare (not safe))
                  (##fxand __tmp139585 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp139584 class-type-flag-acyclic))))
    (define class-type-acyclic?
      (lambda (_%klass123504%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123504%_ 'class))
            (let ((_%klass123508%_ _%klass123504%_))
              (__class-type-acyclic? _%klass123508%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass123504%_)
              '#!void))))
    (define make-class-type-descriptor
      (lambda (_%type-id136153%_
               _%type-name136154%_
               _%type-super136155%_
               _%precedence-list136156%_
               _%slot-vector136157%_
               _%properties136158%_
               _%constructor136159%_
               _%slot-table136160%_
               _%methods136161%_)
        (letrec ((_%make-props!136164%_
                  (lambda (_%key136296%_)
                    (letrec* ((_%ht136298%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!136299%_
                               (lambda (_%ht136339%_ _%slots136340%_)
                                 (for-each
                                  (lambda (_%g136341136343%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht136339%_
                                       _%g136341136343%_
                                       '#t)))
                                  _%slots136340%_)))
                              (_%put-alist!136300%_
                               (lambda (_%ht136328%_
                                        _%key136329%_
                                        _%alist136330%_)
                                 (let ((_%$e136332%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key136329%_
                                           _%alist136330%_))))
                                   (if _%$e136332%_
                                       ((lambda (_%g136334136336%_)
                                          (_%put-slots!136299%_
                                           _%ht136328%_
                                           _%g136334136336%_))
                                        _%$e136332%_)
                                       '#!void)))))
                      (_%put-alist!136300%_
                       _%ht136298%_
                       _%key136296%_
                       _%properties136158%_)
                      (for-each
                       (lambda (_%mixin136302%_)
                         (let ((_%alist136304%_
                                (##structure-ref
                                 _%mixin136302%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist136304%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key136296%_
                                           _%alist136304%_))))
                               (_%put-slots!136299%_
                                _%ht136298%_
                                (let ((_%klass136309%_ _%mixin136302%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass136309%_
                                         'class))
                                      (let ((_%klass136314%_ _%klass136309%_))
                                        (__class-type-slot-list
                                         _%klass136314%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass136309%_)
                                        '#!void))))
                               (_%put-alist!136300%_
                                _%ht136298%_
                                _%key136296%_
                                _%alist136304%_))))
                       _%precedence-list136156%_)
                      _%ht136298%_))))
          (let* ((_%transparent?136166%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties136158%_)))
                 (_%all-slots-printable?136171%_
                  (let ((_%$e136168%_ _%transparent?136166%_))
                    (if _%$e136168%_
                        _%$e136168%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties136158%_))))))
                 (_%printable136173%_
                  (if (not _%all-slots-printable?136171%_)
                      (_%make-props!136164%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?136178%_
                  (let ((_%$e136175%_ _%transparent?136166%_))
                    (if _%$e136175%_
                        _%$e136175%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties136158%_))))))
                 (_%equalable136180%_
                  (if (not _%all-slots-equalable?136178%_)
                      (_%make-props!136164%_ 'equal:)
                      '#f))
                 (_%first-new-field136182%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super136155%_ 'class))
                      (let ((__tmp139586
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super136155%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp139586))
                      '1))
                 (_%field-info-length136184%_
                  (let ((__tmp139587
                         (let ((__tmp139588
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector136157%_))))
                           (declare (not safe))
                           (##fx- __tmp139588 _%first-new-field136182%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp139587)))
                 (_%field-info136186%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length136184%_ '#f)))
                 (_%struct?136188%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties136158%_)))
                 (_%final?136190%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties136158%_)))
                 (_%metaclass136197%_
                  (let ((_%metaclass136191136193%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties136158%_))))
                    (if _%metaclass136191136193%_
                        (let ((_%metaclass136195%_ _%metaclass136191136193%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass136195%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id136153%_
                                     'metaclass:
                                     _%metaclass136195%_))
                          _%metaclass136195%_)
                        '#f)))
                 (_%system?136199%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties136158%_)))
                 (_%opaque?136238%_
                  (if (or _%transparent?136166%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties136158%_)))
                      '#f
                      (let ((_%$e136204%_ (not _%type-super136155%_)))
                        (if _%$e136204%_
                            _%$e136204%_
                            (let ((_%type136207%_ _%type-super136155%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##type? _%type136207%_))
                                  (let ((_%type136212%_ _%type136207%_))
                                    (__type-opaque? _%type136212%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     '##type?
                                     'value:
                                     _%type136207%_)
                                    '#!void)))))))
                 (_%acyclic?136240%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties136158%_)))
                 (_%type-flags136242%_
                  (let ((__tmp139594
                         (if _%final?136190%_ '0 type-flag-extensible))
                        (__tmp139593
                         (if _%opaque?136238%_ type-flag-opaque '0))
                        (__tmp139592
                         (if _%struct?136188%_ class-type-flag-struct '0))
                        (__tmp139591
                         (if _%metaclass136197%_ class-type-flag-metaclass '0))
                        (__tmp139590
                         (if _%system?136199%_ class-type-flag-system '0))
                        (__tmp139589
                         (if _%acyclic?136240%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp139594
                             __tmp139593
                             __tmp139592
                             __tmp139591
                             __tmp139590
                             __tmp139589)))
                 (_%precedence-list136250%_
                  (let ((_%$e136244%_ (memq t::t _%precedence-list136156%_)))
                    (if _%$e136244%_
                        ((lambda (_%tail136247%_)
                           (if (null? (cdr _%tail136247%_))
                               _%precedence-list136156%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list136156%_)))
                         _%$e136244%_)
                        (let ((__tmp139595 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list136156%_ __tmp139595))))))
            (let _%loop136253%_ ((_%i136255%_ _%first-new-field136182%_)
                                 (_%j136256%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j136256%_ _%field-info-length136184%_))
                  (let* ((_%slot136258%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector136157%_ _%i136255%_)))
                         (_%flags136266%_
                          (if _%transparent?136166%_
                              '0
                              (let ((__tmp139597
                                     (if (or _%all-slots-printable?136171%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable136173%_
                                                _%slot136258%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp139596
                                     (if (or _%all-slots-equalable?136178%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable136180%_
                                                _%slot136258%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp139597 __tmp139596)))))
                    (vector-set!
                     _%field-info136186%_
                     _%j136256%_
                     _%slot136258%_)
                    (vector-set!
                     _%field-info136186%_
                     (let () (declare (not safe)) (##fx+ _%j136256%_ '1))
                     _%flags136266%_)
                    (_%loop136253%_
                     (let () (declare (not safe)) (##fx+ _%i136255%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j136256%_ '3))))
                  '#!void))
            (if _%metaclass136197%_
                (let ((_%val136293%_
                       (let* ((_%klass136269%_ _%metaclass136197%_)
                              (_%args136272%_
                               (list _%type-id136153%_
                                     _%type-name136154%_
                                     _%type-flags136242%_
                                     _%type-super136155%_
                                     _%field-info136186%_
                                     _%precedence-list136250%_
                                     _%slot-vector136157%_
                                     _%slot-table136160%_
                                     _%properties136158%_
                                     _%constructor136159%_
                                     _%methods136161%_)))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%klass136269%_
                                'class))
                             (let ((_%klass136277%_ _%klass136269%_))
                               (declare (not safe))
                               (##apply __make-instance
                                        _%klass136277%_
                                        _%args136272%_))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%klass136269%_)
                               '#!void)))))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val136293%_ 'class))
                      _%val136293%_
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         '"\"gerbil/runtime/mop.ss\"@283.10-287.95"
                         'contract:
                         '(class-type? val)
                         'value:
                         _%val136293%_)
                        '#!void)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id136153%_
                   _%type-name136154%_
                   _%type-flags136242%_
                   _%type-super136155%_
                   _%field-info136186%_
                   _%precedence-list136250%_
                   _%slot-vector136157%_
                   _%slot-table136160%_
                   _%properties136158%_
                   _%constructor136159%_
                   _%methods136161%_
                   '#f
                   '#f)))))))
    (define class-type-id
      (lambda (_%klass136151%_)
        (##structure-ref _%klass136151%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass136149%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136149%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass136146%_ _%val136147%_)
        (##structure-set! _%klass136146%_ _%val136147%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass136141%_ _%val136143%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136141%_
           _%val136143%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass136139%_)
        (##structure-ref _%klass136139%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass136137%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136137%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass136134%_ _%val136135%_)
        (##structure-set! _%klass136134%_ _%val136135%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass136129%_ _%val136131%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136129%_
           _%val136131%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass136127%_)
        (##structure-ref _%klass136127%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass136125%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136125%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass136122%_ _%val136123%_)
        (##structure-set! _%klass136122%_ _%val136123%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass136117%_ _%val136119%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136117%_
           _%val136119%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass136115%_)
        (##structure-ref _%klass136115%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass136113%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136113%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass136110%_ _%val136111%_)
        (##structure-set! _%klass136110%_ _%val136111%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass136105%_ _%val136107%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136105%_
           _%val136107%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass136103%_)
        (##structure-ref _%klass136103%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass136101%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136101%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass136098%_ _%val136099%_)
        (##structure-set! _%klass136098%_ _%val136099%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass136093%_ _%val136095%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136093%_
           _%val136095%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass136091%_)
        (##structure-ref _%klass136091%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass136089%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136089%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass136086%_ _%val136087%_)
        (##structure-set!
         _%klass136086%_
         _%val136087%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass136081%_ _%val136083%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136081%_
           _%val136083%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass136079%_)
        (##structure-ref _%klass136079%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass136077%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136077%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass136074%_ _%val136075%_)
        (##structure-set!
         _%klass136074%_
         _%val136075%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass136069%_ _%val136071%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136069%_
           _%val136071%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass136067%_)
        (##structure-ref _%klass136067%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass136065%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136065%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass136062%_ _%val136063%_)
        (##structure-set!
         _%klass136062%_
         _%val136063%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass136057%_ _%val136059%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136057%_
           _%val136059%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass136055%_)
        (##structure-ref _%klass136055%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass136053%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136053%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass136050%_ _%val136051%_)
        (##structure-set!
         _%klass136050%_
         _%val136051%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass136045%_ _%val136047%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136045%_
           _%val136047%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass136043%_)
        (##structure-ref _%klass136043%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass136041%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136041%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass136038%_ _%val136039%_)
        (##structure-set!
         _%klass136038%_
         _%val136039%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass136033%_ _%val136035%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136033%_
           _%val136035%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass136031%_)
        (##structure-ref _%klass136031%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass136029%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136029%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass136026%_ _%val136027%_)
        (##structure-set!
         _%klass136026%_
         _%val136027%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass136021%_ _%val136023%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136021%_
           _%val136023%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass136019%_)
        (##structure-ref _%klass136019%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass136017%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136017%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass136014%_ _%val136015%_)
        (##structure-set!
         _%klass136014%_
         _%val136015%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass136009%_ _%val136011%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136009%_
           _%val136011%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass136007%_)
        (##structure-ref _%klass136007%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass136005%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136005%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass136002%_ _%val136003%_)
        (##structure-set!
         _%klass136002%_
         _%val136003%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass135997%_ _%val135999%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135997%_
           _%val135999%_
           '13
           class::t
           'interface))))
    (define type-field-list
      (lambda (_%type135761%_)
        (letrec ((_%__fields->list135891%_
                  (lambda (_%fields135955%_)
                    (let* ((_%fields135958%_ _%fields135955%_)
                           (_%fields-len135967%_
                            (let ()
                              (declare (not safe))
                              (##vector-length _%fields135958%_))))
                      (let _%loop135969%_ ((_%i135971%_ '0) (_%r135972%_ '()))
                        (let* ((_%i135975%_ _%i135971%_)
                               (_%r135988%_ _%r135972%_))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i135975%_ _%fields-len135967%_))
                              (_%loop135969%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i135975%_ '3))
                               (cons (vector-ref _%fields135958%_ _%i135975%_)
                                     _%r135988%_))
                              (reverse! _%r135988%_)))))))
                 (_%fields->list135892%_
                  (lambda (_%fields135943%_)
                    (let ((_%fields135946%_ _%fields135943%_))
                      (_%__fields->list135891%_ _%fields135946%_)))))
          (let _%loop135894%_ ((_%type135896%_ _%type135761%_))
            (if (let () (declare (not safe)) (##type? _%type135896%_))
                (if (eq? _%type135896%_ ##type-type)
                    '()
                    (let ((_%$e135901%_
                           (let ()
                             (declare (not safe))
                             (##type-super _%type135896%_))))
                      (if _%$e135901%_
                          ((lambda (_%super135904%_)
                             (let ((__tmp139599
                                    (_%loop135894%_ _%super135904%_))
                                   (__tmp139598
                                    (let* ((_%fields135907%_
                                            (let ()
                                              (declare (not safe))
                                              (##type-fields _%type135896%_)))
                                           (_%fields135911%_ _%fields135907%_))
                                      (_%__fields->list135891%_
                                       _%fields135911%_))))
                               (declare (not safe))
                               (##append __tmp139599 __tmp139598)))
                           _%$e135901%_)
                          (let* ((_%fields135928%_
                                  (let ()
                                    (declare (not safe))
                                    (##type-fields _%type135896%_)))
                                 (_%fields135932%_ _%fields135928%_))
                            (_%__fields->list135891%_ _%fields135932%_)))))
                '())))))
    (define __class-type-slot-list
      (lambda (_%klass135749%_)
        (let ((_%klass135752%_ _%klass135749%_))
          (vector->list
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass135752%_ '7 '#f '#f))
           '1))))
    (define class-type-slot-list
      (lambda (_%klass124028%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124028%_ 'class))
            (let ((_%klass124032%_ _%klass124028%_))
              (__class-type-slot-list _%klass124032%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@369.29-369.34"
               'contract:
               'class-type?
               'value:
               _%klass124028%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass135737%_)
        (let* ((_%klass135740%_ _%klass135737%_)
               (__tmp139600
                (let ((__tmp139601
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass135740%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp139601))))
          (declare (not safe))
          (##fx- __tmp139600 '1))))
    (define class-type-field-count
      (lambda (_%klass124162%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124162%_ 'class))
            (let ((_%klass124166%_ _%klass124162%_))
              (__class-type-field-count _%klass124166%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@371.31-371.36"
               'contract:
               'class-type?
               'value:
               _%klass124162%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass135725%_)
        (let ((_%klass135728%_ _%klass135725%_))
          (let ((__tmp139602
                 (let ((__tmp139603
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass135728%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp139603))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass135728%_
             __tmp139602
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define class-type-seal!
      (lambda (_%klass124296%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124296%_ 'class))
            (let ((_%klass124300%_ _%klass124296%_))
              (__class-type-seal! _%klass124300%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@374.25-374.30"
               'contract:
               'class-type?
               'value:
               _%klass124296%_)
              '#!void))))
    (define __class-type-printable-slots
      (lambda (_%klass135658%_)
        (let ((_%klass135661%_ _%klass135658%_))
          (letrec ((_%get-field-vector135670%_
                    (lambda (_%type135709%_)
                      (let _%loop135711%_ ((_%type135713%_ _%type135709%_))
                        (let* ((_%fields135715%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type135713%_)))
                               (_%$e135717%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type135713%_))))
                          (if _%$e135717%_
                              ((lambda (_%super135720%_)
                                 (let ((_%super-fields135722%_
                                        (_%loop135711%_ _%super135720%_)))
                                   (vector-append
                                    _%super-fields135722%_
                                    _%fields135715%_)))
                               _%$e135717%_)
                              _%fields135715%_)))))
                   (_%get-printable-slot-alist135671%_
                    (lambda (_%type135692%_)
                      (let* ((_%fields135694%_
                              (_%get-field-vector135670%_ _%type135692%_))
                             (_%count135696%_
                              (vector-length _%fields135694%_)))
                        (let _%loop135699%_ ((_%i135701%_ '3)
                                             (_%offset135702%_ '1)
                                             (_%r135703%_ '()))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i135701%_ _%count135696%_))
                              (let ((_%slot-name135705%_
                                     (vector-ref _%fields135694%_ _%i135701%_))
                                    (_%slot-flags135706%_
                                     (vector-ref
                                      _%fields135694%_
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%i135701%_ '1))))
                                    (_%next-i135707%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i135701%_ '2))))
                                (if (let ((__tmp139604
                                           (let ()
                                             (declare (not safe))
                                             (##fxand _%slot-flags135706%_
                                                      '1))))
                                      (declare (not safe))
                                      (##fx= __tmp139604 '0))
                                    (_%loop135699%_
                                     _%next-i135707%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset135702%_ '1))
                                     _%r135703%_)
                                    (_%loop135699%_
                                     _%next-i135707%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset135702%_ '1))
                                     (cons (cons _%slot-name135705%_
                                                 _%offset135702%_)
                                           _%r135703%_))))
                              (reverse! _%r135703%_))))))
                   (_%get-printable-slots!135672%_
                    (lambda (_%klass135687%_ _%type135688%_)
                      (let ((_%printable135690%_
                             (_%get-printable-slot-alist135671%_
                              _%type135688%_)))
                        (##structure-set!
                         _%klass135687%_
                         (cons (cons 'printable-slots: _%printable135690%_)
                               (##structure-ref
                                _%klass135687%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%printable135690%_))))
            (let* ((_%props135674%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass135661%_ '9 '#f '#f)))
                   (_%$e135676%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'printable-slots: _%props135674%_))))
              (if _%$e135676%_
                  _%$e135676%_
                  (let ((_%$e135679%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props135674%_))))
                    (if _%$e135679%_
                        ((lambda (_%g135681135683%_)
                           (_%get-printable-slots!135672%_
                            _%klass135661%_
                            _%g135681135683%_))
                         _%$e135679%_)
                        (_%get-printable-slots!135672%_
                         _%klass135661%_
                         _%klass135661%_)))))))))
    (define class-type-printable-slots
      (lambda (_%klass124430%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124430%_ 'class))
            (let ((_%klass124434%_ _%klass124430%_))
              (__class-type-printable-slots _%klass124434%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@381.35-381.40"
               'contract:
               'class-type?
               'value:
               _%klass124430%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct135627%_ _%maybe-super-struct135628%_)
        (let* ((_%maybe-sub-struct135631%_ _%maybe-sub-struct135627%_)
               (_%maybe-super-struct135639%_ _%maybe-super-struct135628%_)
               (_%maybe-super-struct-id135648%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct135639%_))))
          (let _%lp135650%_ ((_%super-struct135652%_
                              _%maybe-sub-struct135631%_))
            (if (not _%super-struct135652%_)
                '#f
                (if (eq? _%maybe-super-struct-id135648%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct135652%_)))
                    '#t
                    (_%lp135650%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct135652%_)))))))))
    (define substruct?
      (lambda (_%maybe-sub-struct124564%_ _%maybe-super-struct124565%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct124564%_ 'class))
            (let ((_%maybe-sub-struct124569%_ _%maybe-sub-struct124564%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct124565%_
                     'class))
                  (let ((_%maybe-super-struct124579%_
                         _%maybe-super-struct124565%_))
                    (__substruct?
                     _%maybe-sub-struct124569%_
                     _%maybe-super-struct124579%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@427.47-427.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct124565%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@427.19-427.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct124564%_)
              '#!void))))
    (define base-struct/1
      (lambda (_%klass135605%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135605%_ 'class))
            (if (let* ((_%klass135608%_ _%klass135605%_)
                       (_%klass135613%_ _%klass135608%_))
                  (__class-type-struct? _%klass135613%_))
                _%klass135605%_
                (let () (declare (not safe)) (##type-super _%klass135605%_)))
            (if (not _%klass135605%_)
                '#f
                (error '"not a class or false" _%klass135605%_)))))
    (define base-struct/2
      (lambda (_%klass1135528%_ _%klass2135529%_)
        (let ((_%s1135531%_ (base-struct/1 _%klass1135528%_))
              (_%s2135532%_ (base-struct/1 _%klass2135529%_)))
          (if (or (not _%s1135531%_)
                  (and _%s2135532%_
                       (let* ((_%maybe-sub-struct135537%_ _%s1135531%_)
                              (_%maybe-super-struct135540%_ _%s2135532%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%maybe-sub-struct135537%_
                                'class))
                             (let ((_%maybe-sub-struct135545%_
                                    _%maybe-sub-struct135537%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%maybe-super-struct135540%_
                                      'class))
                                   (let ((_%maybe-super-struct135559%_
                                          _%maybe-super-struct135540%_))
                                     (__substruct?
                                      _%maybe-sub-struct135545%_
                                      _%maybe-super-struct135559%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%maybe-super-struct135540%_)
                                     '#!void)))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%maybe-sub-struct135537%_)
                               '#!void)))))
              _%s2135532%_
              (if (or (not _%s2135532%_)
                      (and _%s1135531%_
                           (let* ((_%maybe-sub-struct135573%_ _%s2135532%_)
                                  (_%maybe-super-struct135576%_ _%s1135531%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%maybe-sub-struct135573%_
                                    'class))
                                 (let ((_%maybe-sub-struct135581%_
                                        _%maybe-sub-struct135573%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%maybe-super-struct135576%_
                                          'class))
                                       (let ((_%maybe-super-struct135593%_
                                              _%maybe-super-struct135576%_))
                                         (__substruct?
                                          _%maybe-sub-struct135581%_
                                          _%maybe-super-struct135593%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          'class-type?
                                          'value:
                                          _%maybe-super-struct135576%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'class-type?
                                    'value:
                                    _%maybe-sub-struct135573%_)
                                   '#!void)))))
                  _%s1135531%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1135528%_
                         _%klass2135529%_
                         _%s1135531%_
                         _%s2135532%_))))))
    (define base-struct/list
      (lambda (_%all-supers135413%_)
        (let* ((_%all-supers135414135439%_ _%all-supers135413%_)
               (_%E135419135443%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers135414135439%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K135437135525%_ (lambda () '#f))
                (_%K135434135511%_
                 (lambda (_%x135509%_) (base-struct/1 _%x135509%_)))
                (_%K135429135488%_
                 (lambda (_%y135485%_ _%x135486%_)
                   (base-struct/2 _%x135486%_ _%y135485%_)))
                (_%K135420135450%_
                 (lambda (_%y135447%_ _%x135448%_)
                   (let ()
                     (declare (not safe))
                     (foldr__0 base-struct/2 _%x135448%_ _%y135447%_)))))
            (let* ((_%__match138375138376%_
                    (lambda (_%hd135421135453%_ _%tl135422135455%_)
                      (let ((_%x135458%_ _%hd135421135453%_))
                        (letrec ((_%splice-rest135424135460%_
                                  (lambda (_%rest135428135467%_ _%y135469%_)
                                    (if (null? _%rest135428135467%_)
                                        (_%K135420135450%_
                                         _%y135469%_
                                         _%x135458%_)
                                        (_%E135419135443%_))))
                                 (_%splice-try135426135462%_
                                  (lambda (_%hd135427135471%_
                                           _%rest135428135473%_
                                           _%y135423135474%_)
                                    (let ((_%y135476%_ _%hd135427135471%_))
                                      (_%splice-loop135425135464%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest135428135473%_))
                                       (cons _%y135476%_ _%y135423135474%_)))))
                                 (_%splice-loop135425135464%_
                                  (lambda (_%rest135428135478%_
                                           _%y135423135479%_)
                                    (if (pair? _%rest135428135478%_)
                                        (_%splice-try135426135462%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest135428135478%_))
                                         _%rest135428135478%_
                                         _%y135423135479%_)
                                        (_%splice-rest135424135460%_
                                         _%rest135428135478%_
                                         (reverse _%y135423135479%_))))))
                          (_%splice-loop135425135464%_
                           _%tl135422135455%_
                           '())))))
                   (_%try-match135416135521%_
                    (lambda ()
                      (if (pair? _%all-supers135414135439%_)
                          (let ((_%tl135436135516%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers135414135439%_)))
                                (_%hd135435135514%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers135414135439%_))))
                            (if (null? _%tl135436135516%_)
                                (let ((_%x135519%_ _%hd135435135514%_))
                                  (base-struct/1 _%x135519%_))
                                (if (pair? _%tl135436135516%_)
                                    (let ((_%tl135433135500%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl135436135516%_)))
                                          (_%hd135432135498%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl135436135516%_))))
                                      (if (null? _%tl135433135500%_)
                                          (let ((_%x135496%_
                                                 _%hd135435135514%_)
                                                (_%y135503%_
                                                 _%hd135432135498%_))
                                            (_%K135429135488%_
                                             _%y135503%_
                                             _%x135496%_))
                                          (_%__match138375138376%_
                                           _%hd135435135514%_
                                           _%tl135436135516%_)))
                                    (_%__match138375138376%_
                                     _%hd135435135514%_
                                     _%tl135436135516%_))))
                          (_%E135419135443%_)))))
              (if (null? _%all-supers135414135439%_)
                  (_%K135437135525%_)
                  (_%try-match135416135521%_)))))))
    (define base-struct
      (lambda _%all-supers135411%_ (base-struct/list _%all-supers135411%_)))
    (define find-super-constructor
      (lambda (_%super135362%_)
        (let _%lp135364%_ ((_%rest135366%_ _%super135362%_)
                           (_%constructor135367%_ '#f))
          (let* ((_%rest135368135376%_ _%rest135366%_)
                 (_%else135370135384%_ (lambda () _%constructor135367%_))
                 (_%K135372135399%_
                  (lambda (_%rest135387%_ _%hd135388%_)
                    (let ((_%$e135390%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd135388%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e135390%_
                          ((lambda (_%xconstructor135393%_)
                             (if (or (not _%constructor135367%_)
                                     (eq? _%constructor135367%_
                                          _%xconstructor135393%_))
                                 (_%lp135364%_
                                  _%rest135387%_
                                  _%xconstructor135393%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor135367%_
                                        _%xconstructor135393%_)))
                           _%$e135390%_)
                          (_%lp135364%_
                           _%rest135387%_
                           _%constructor135367%_))))))
            (if (pair? _%rest135368135376%_)
                (let ((_%hd135373135402%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest135368135376%_)))
                      (_%tl135374135404%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest135368135376%_))))
                  (let* ((_%hd135407%_ _%hd135373135402%_)
                         (_%rest135409%_ _%tl135374135404%_))
                    (_%K135372135399%_ _%rest135409%_ _%hd135407%_)))
                (_%else135370135384%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list135354%_ _%direct-slots135355%_)
        (let ((__tmp139606
               (lambda (_%mixin135357%_)
                 (let ((__tmp139607
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%mixin135357%_
                           '9
                           '#f
                           '#f))))
                   (declare (not safe))
                   (agetq__% 'direct-slots: __tmp139607 '()))))
              (__tmp139605
               (lambda (_%slot-list135359%_ _%slot-table135360%_)
                 (values (list->vector _%slot-list135359%_)
                         _%slot-table135360%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%class-precedence-list135354%_
           _%direct-slots135355%_
           __tmp139606
           __tmp139605))))
    (define __make-class-type
      (lambda (_%id135181%_
               _%name135182%_
               _%direct-supers135183%_
               _%direct-slots135184%_
               _%properties135185%_
               _%constructor135186%_)
        (let* ((_%id135189%_ _%id135181%_)
               (_%name135197%_ _%name135182%_)
               (_%direct-supers135205%_ _%direct-supers135183%_)
               (_%direct-slots135213%_ _%direct-slots135184%_)
               (_%properties135221%_ _%properties135185%_)
               (_%constructor135229%_ _%constructor135186%_))
          (let ((_%$e135263%_
                 (let* ((_%pred135241%_
                         (lambda (_%$obj135238%_)
                           (not (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%$obj135238%_
                                   'class)))))
                        (_%lst135244%_ _%direct-supers135205%_)
                        (_%pred135249%_ _%pred135241%_))
                   (declare (not safe))
                   (__find _%pred135249%_ _%lst135244%_))))
            (if _%$e135263%_
                ((lambda (_%g135265135267%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g135265135267%_))
                 _%$e135263%_)
                (let ((_%$e135290%_
                       (let* ((_%pred135270%_ __class-type-final?)
                              (_%lst135273%_ _%direct-supers135205%_)
                              (_%pred135278%_ _%pred135270%_))
                         (declare (not safe))
                         (__find _%pred135278%_ _%lst135273%_))))
                  (if _%$e135290%_
                      ((lambda (_%g135292135294%_)
                         (error '"Cannot extend final class"
                                _%g135292135294%_))
                       _%$e135290%_)
                      '#!void))))
          (let ((_g139608_ (compute-precedence-list _%direct-supers135205%_)))
            (begin
              (let ((_g139609_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g139608_)
                           (##values-length _g139608_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g139609_ 2)))
                    (error "Context expects 2 values" _g139609_)))
              (let ((_%precedence-list135297%_
                     (let () (declare (not safe)) (##values-ref _g139608_ 0)))
                    (_%struct-super135298%_
                     (let () (declare (not safe)) (##values-ref _g139608_ 1))))
                (let ((_g139610_
                       (compute-class-slots
                        _%precedence-list135297%_
                        _%direct-slots135213%_)))
                  (begin
                    (let ((_g139611_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g139610_)
                                 (##values-length _g139610_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g139611_ 2)))
                          (error "Context expects 2 values" _g139611_)))
                    (let ((_%slot-vector135300%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g139610_ 0)))
                          (_%slot-table135301%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g139610_ 1))))
                      (let* ((_%properties135303%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots135213%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers135205%_)
                                          _%properties135221%_)))
                             (_%constructor*135308%_
                              (let ((_%$e135305%_ _%constructor135229%_))
                                (if _%$e135305%_
                                    _%$e135305%_
                                    (find-super-constructor
                                     _%direct-supers135205%_))))
                             (_%precedence-list135351%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties135303%_))
                                      (memq object::t
                                            _%precedence-list135297%_))
                                  _%precedence-list135297%_
                                  (let _%loop135313%_ ((_%tail135315%_
                                                        _%precedence-list135297%_)
                                                       (_%head135316%_ '()))
                                    (let* ((_%tail135317135325%_
                                            _%tail135315%_)
                                           (_%else135319135333%_
                                            (lambda ()
                                              (let ((__tmp139612
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp139612
                                                 _%head135316%_))))
                                           (_%K135321135339%_
                                            (lambda (_%rest135336%_
                                                     _%hd135337%_)
                                              (if (eq? _%hd135337%_ t::t)
                                                  (let ((__tmp139613
                                                         (cons object::t
                                                               _%tail135315%_)))
                                                    (declare (not safe))
                                                    (foldl__0
                                                     cons
                                                     __tmp139613
                                                     _%head135316%_))
                                                  (_%loop135313%_
                                                   _%rest135336%_
                                                   (cons _%hd135337%_
                                                         _%head135316%_))))))
                                      (if (pair? _%tail135317135325%_)
                                          (let ((_%hd135322135342%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail135317135325%_)))
                                                (_%tl135323135344%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail135317135325%_))))
                                            (let* ((_%hd135347%_
                                                    _%hd135322135342%_)
                                                   (_%rest135349%_
                                                    _%tl135323135344%_))
                                              (_%K135321135339%_
                                               _%rest135349%_
                                               _%hd135347%_)))
                                          (_%else135319135333%_)))))))
                        (make-class-type-descriptor
                         _%id135189%_
                         _%name135197%_
                         _%struct-super135298%_
                         _%precedence-list135351%_
                         _%slot-vector135300%_
                         _%properties135303%_
                         _%constructor*135308%_
                         _%slot-table135301%_
                         '#f)))))))))))
    (define make-class-type
      (lambda (_%id124709%_
               _%name124710%_
               _%direct-supers124711%_
               _%direct-slots124712%_
               _%properties124713%_
               _%constructor124714%_)
        (if (symbol? _%id124709%_)
            (let ((_%id124718%_ _%id124709%_))
              (if (symbol? _%name124710%_)
                  (let ((_%name124728%_ _%name124710%_))
                    (if (list? _%direct-supers124711%_)
                        (let ((_%direct-supers124738%_
                               _%direct-supers124711%_))
                          (if (list? _%direct-slots124712%_)
                              (let ((_%direct-slots124748%_
                                     _%direct-slots124712%_))
                                (if (list? _%properties124713%_)
                                    (let ((_%properties124758%_
                                           _%properties124713%_))
                                      (if ((lambda (_%$obj124767%_)
                                             (or (not _%$obj124767%_)
                                                 (symbol? _%$obj124767%_)))
                                           _%constructor124714%_)
                                          (let ((_%constructor124774%_
                                                 _%constructor124714%_))
                                            (__make-class-type
                                             _%id124718%_
                                             _%name124728%_
                                             _%direct-supers124738%_
                                             _%direct-slots124748%_
                                             _%properties124758%_
                                             _%constructor124774%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@508.24-508.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor124714%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@507.24-507.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties124713%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@506.24-506.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots124712%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@505.24-505.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers124711%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@504.24-504.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name124710%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.24-503.26"
               'contract:
               'symbol?
               'value:
               _%id124709%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass135169%_)
        (let ((_%klass135172%_ _%klass135169%_))
          (cons _%klass135172%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass135172%_ '6 '#f '#f))))))
    (define class-precedence-list
      (lambda (_%klass124904%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124904%_ 'class))
            (let ((_%klass124908%_ _%klass124904%_))
              (__class-precedence-list _%klass124908%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@541.30-541.35"
               'contract:
               'class-type?
               'value:
               _%klass124904%_)
              '#!void))))
    (define compute-precedence-list
      (lambda (_%direct-supers135166%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers135166%_))))
    (define __make-class-predicate
      (lambda (_%klass135082%_)
        (let* ((_%klass135085%_ _%klass135082%_)
               (_%tid135094%_
                (let () (declare (not safe)) (##type-id _%klass135085%_))))
          (if (let* ((_%type135096%_ _%klass135085%_)
                     (_%type135101%_ _%type135096%_))
                (__class-type-final? _%type135101%_))
              (lambda (_%g135115135117%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g135115135117%_
                   _%tid135094%_)))
              (if (let* ((_%klass135120%_ _%klass135085%_)
                         (_%klass135125%_ _%klass135120%_))
                    (__class-type-struct? _%klass135125%_))
                  (lambda (_%g135135135137%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%g135135135137%_
                       _%tid135094%_)))
                  (lambda (_%g135140135142%_)
                    (let* ((_%klass135145%_ _%klass135085%_)
                           (_%obj135148%_ _%g135140135142%_)
                           (_%klass135153%_ _%klass135145%_))
                      (__class-instance? _%klass135153%_ _%obj135148%_))))))))
    (define make-class-predicate
      (lambda (_%klass125038%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125038%_ 'class))
            (let ((_%klass125042%_ _%klass125038%_))
              (__make-class-predicate _%klass125042%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@553.29-553.34"
               'contract:
               'class-type?
               'value:
               _%klass125038%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass135016%_ _%slot135017%_)
        (let* ((_%klass135020%_ _%klass135016%_)
               (_%slot135028%_ _%slot135017%_)
               (_%field135037%_
                (let ((__tmp139614
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass135020%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp139614 _%slot135028%_ '#f))))
          (if (not _%field135037%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass135020%_
                       'slot:
                       _%slot135028%_)
                '#!void)
              (if (let* ((_%type135041%_ _%klass135020%_)
                         (_%type135046%_ _%type135041%_))
                    (__class-type-final? _%type135046%_))
                  (make-final-slot-accessor
                   _%klass135020%_
                   _%slot135028%_
                   _%field135037%_)
                  (if (let* ((_%klass135061%_ _%klass135020%_)
                             (_%klass135066%_ _%klass135061%_))
                        (__class-type-struct? _%klass135066%_))
                      (make-struct-slot-accessor
                       _%klass135020%_
                       _%slot135028%_
                       _%field135037%_)
                      (if (let ((_%strukt135077%_
                                 (base-struct/1 _%klass135020%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt135077%_
                                    'class))
                                 (let ((__tmp139615
                                        (let ((__tmp139616
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt135077%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp139616))))
                                   (declare (not safe))
                                   (##fx< _%field135037%_ __tmp139615))))
                          (make-struct-subclass-slot-accessor
                           _%klass135020%_
                           _%slot135028%_
                           _%field135037%_)
                          (make-class-cached-slot-accessor
                           _%klass135020%_
                           _%slot135028%_
                           _%field135037%_))))))))
    (define make-class-slot-accessor
      (lambda (_%klass125325%_ _%slot125326%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125325%_ 'class))
            (let ((_%klass125330%_ _%klass125325%_))
              (if (symbol? _%slot125326%_)
                  (let ((_%slot125340%_ _%slot125326%_))
                    (__make-class-slot-accessor
                     _%klass125330%_
                     _%slot125340%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@584.50-584.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot125326%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@584.33-584.38"
               'contract:
               'class-type?
               'value:
               _%klass125325%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass134950%_ _%slot134951%_)
        (let* ((_%klass134954%_ _%klass134950%_)
               (_%slot134962%_ _%slot134951%_)
               (_%field134971%_
                (let ((__tmp139617
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass134954%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp139617 _%slot134962%_ '#f))))
          (if (not _%field134971%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass134954%_
                       'slot:
                       _%slot134962%_)
                '#!void)
              (if (let* ((_%type134975%_ _%klass134954%_)
                         (_%type134980%_ _%type134975%_))
                    (__class-type-final? _%type134980%_))
                  (make-final-slot-mutator
                   _%klass134954%_
                   _%slot134962%_
                   _%field134971%_)
                  (if (let* ((_%klass134995%_ _%klass134954%_)
                             (_%klass135000%_ _%klass134995%_))
                        (__class-type-struct? _%klass135000%_))
                      (make-struct-slot-mutator
                       _%klass134954%_
                       _%slot134962%_
                       _%field134971%_)
                      (if (let ((_%strukt135011%_
                                 (base-struct/1 _%klass134954%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt135011%_
                                    'class))
                                 (let ((__tmp139618
                                        (let ((__tmp139619
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt135011%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp139619))))
                                   (declare (not safe))
                                   (##fx< _%field134971%_ __tmp139618))))
                          (make-struct-subclass-slot-mutator
                           _%klass134954%_
                           _%slot134962%_
                           _%field134971%_)
                          (make-class-cached-slot-mutator
                           _%klass134954%_
                           _%slot134962%_
                           _%field134971%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass125470%_ _%slot125471%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125470%_ 'class))
            (let ((_%klass125475%_ _%klass125470%_))
              (if (symbol? _%slot125471%_)
                  (let ((_%slot125485%_ _%slot125471%_))
                    (__make-class-slot-mutator _%klass125475%_ _%slot125485%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.49-592.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot125471%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.32-592.37"
               'contract:
               'class-type?
               'value:
               _%klass125470%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass134884%_ _%slot134885%_)
        (let* ((_%klass134888%_ _%klass134884%_)
               (_%slot134896%_ _%slot134885%_)
               (_%field134905%_
                (let ((__tmp139620
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass134888%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp139620 _%slot134896%_ '#f))))
          (if (not _%field134905%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass134888%_
                       'slot:
                       _%slot134896%_)
                '#!void)
              (if (let* ((_%type134909%_ _%klass134888%_)
                         (_%type134914%_ _%type134909%_))
                    (__class-type-final? _%type134914%_))
                  (make-struct-slot-unchecked-accessor
                   _%klass134888%_
                   _%slot134896%_
                   _%field134905%_)
                  (if (let* ((_%klass134929%_ _%klass134888%_)
                             (_%klass134934%_ _%klass134929%_))
                        (__class-type-struct? _%klass134934%_))
                      (make-struct-slot-unchecked-accessor
                       _%klass134888%_
                       _%slot134896%_
                       _%field134905%_)
                      (if (let ((_%strukt134945%_
                                 (base-struct/1 _%klass134888%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt134945%_
                                    'class))
                                 (let ((__tmp139621
                                        (let ((__tmp139622
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt134945%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp139622))))
                                   (declare (not safe))
                                   (##fx< _%field134905%_ __tmp139621))))
                          (make-struct-slot-unchecked-accessor
                           _%klass134888%_
                           _%slot134896%_
                           _%field134905%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass134888%_
                           _%slot134896%_
                           _%field134905%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass125615%_ _%slot125616%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125615%_ 'class))
            (let ((_%klass125620%_ _%klass125615%_))
              (if (symbol? _%slot125616%_)
                  (let ((_%slot125630%_ _%slot125616%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass125620%_
                     _%slot125630%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@600.60-600.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot125616%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@600.43-600.48"
               'contract:
               'class-type?
               'value:
               _%klass125615%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass134818%_ _%slot134819%_)
        (let* ((_%klass134822%_ _%klass134818%_)
               (_%slot134830%_ _%slot134819%_)
               (_%field134839%_
                (let ((__tmp139623
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass134822%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp139623 _%slot134830%_ '#f))))
          (if (not _%field134839%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass134822%_
                       'slot:
                       _%slot134830%_)
                '#!void)
              (if (let* ((_%type134843%_ _%klass134822%_)
                         (_%type134848%_ _%type134843%_))
                    (__class-type-final? _%type134848%_))
                  (make-struct-slot-unchecked-mutator
                   _%klass134822%_
                   _%slot134830%_
                   _%field134839%_)
                  (if (let* ((_%klass134863%_ _%klass134822%_)
                             (_%klass134868%_ _%klass134863%_))
                        (__class-type-struct? _%klass134868%_))
                      (make-struct-slot-unchecked-mutator
                       _%klass134822%_
                       _%slot134830%_
                       _%field134839%_)
                      (if (let ((_%strukt134879%_
                                 (base-struct/1 _%klass134822%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt134879%_
                                    'class))
                                 (let ((__tmp139624
                                        (let ((__tmp139625
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt134879%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp139625))))
                                   (declare (not safe))
                                   (##fx< _%field134839%_ __tmp139624))))
                          (make-struct-slot-unchecked-mutator
                           _%klass134822%_
                           _%slot134830%_
                           _%field134839%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass134822%_
                           _%slot134830%_
                           _%field134839%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass125760%_ _%slot125761%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125760%_ 'class))
            (let ((_%klass125765%_ _%klass125760%_))
              (if (symbol? _%slot125761%_)
                  (let ((_%slot125775%_ _%slot125761%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass125765%_
                     _%slot125775%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@608.59-608.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot125761%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@608.42-608.47"
               'contract:
               'class-type?
               'value:
               _%klass125760%_)
              '#!void))))
    (define not-an-instance__%
      (lambda (_%object134802%_ _%class134803%_ _%slot134804%_)
        (apply error
               '"not an instance"
               'object:
               _%object134802%_
               'class:
               _%class134803%_
               (if _%slot134804%_
                   (cons 'slot: (cons _%slot134804%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object134809%_ _%class134810%_)
        (let ((_%slot134812%_ '#f))
          (not-an-instance__%
           _%object134809%_
           _%class134810%_
           _%slot134812%_))))
    (define not-an-instance
      (lambda _g139626_
        (let ((_g139627_ (let () (declare (not safe)) (##length _g139626_))))
          (cond ((let () (declare (not safe)) (##fx= _g139627_ 2))
                 (apply not-an-instance__0 _g139626_))
                ((let () (declare (not safe)) (##fx= _g139627_ 3))
                 (apply not-an-instance__% _g139626_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g139626_))))))
    (define make-final-slot-accessor
      (lambda (_%klass134795%_ _%slot134796%_ _%field134797%_)
        (lambda (_%obj134799%_)
          (##direct-structure-ref
           _%obj134799%_
           _%field134797%_
           _%klass134795%_
           _%slot134796%_))))
    (define make-final-slot-mutator
      (lambda (_%klass134788%_ _%slot134789%_ _%field134790%_)
        (lambda (_%obj134792%_ _%val134793%_)
          (##direct-structure-set!
           _%obj134792%_
           _%val134793%_
           _%field134790%_
           _%klass134788%_
           _%slot134789%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass134782%_ _%slot134783%_ _%field134784%_)
        (lambda (_%obj134786%_)
          (##structure-ref
           _%obj134786%_
           _%field134784%_
           _%klass134782%_
           _%slot134783%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass134775%_ _%slot134776%_ _%field134777%_)
        (lambda (_%obj134779%_ _%val134780%_)
          (##structure-set!
           _%obj134779%_
           _%val134780%_
           _%field134777%_
           _%klass134775%_
           _%slot134776%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass134769%_ _%slot134770%_ _%field134771%_)
        (lambda (_%obj134773%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj134773%_
             _%field134771%_
             _%klass134769%_
             _%slot134770%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass134762%_ _%slot134763%_ _%field134764%_)
        (lambda (_%obj134766%_ _%val134767%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj134766%_
             _%val134767%_
             _%field134764%_
             _%klass134762%_
             _%slot134763%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass134735%_ _%slot134736%_ _%field134737%_)
        (lambda (_%obj134739%_)
          (if (let* ((_%klass134741%_ _%klass134735%_)
                     (_%obj134744%_ _%obj134739%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134741%_ 'class))
                    (let ((_%klass134749%_ _%klass134741%_))
                      (__class-instance? _%klass134749%_ _%obj134744%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134741%_)
                      '#!void)))
              (unchecked-slot-ref _%obj134739%_ _%field134737%_)
              (not-an-instance__%
               _%obj134739%_
               _%klass134735%_
               _%slot134736%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass134707%_ _%slot134708%_ _%field134709%_)
        (lambda (_%obj134711%_ _%val134712%_)
          (if (let* ((_%klass134714%_ _%klass134707%_)
                     (_%obj134717%_ _%obj134711%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134714%_ 'class))
                    (let ((_%klass134722%_ _%klass134714%_))
                      (__class-instance? _%klass134722%_ _%obj134717%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134714%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj134711%_
               _%field134709%_
               _%val134712%_)
              (not-an-instance__%
               _%obj134711%_
               _%klass134707%_
               _%slot134708%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass134658%_ _%slot134659%_ _%field134660%_)
        (lambda (_%obj134662%_)
          (if (let* ((_%klass134664%_ _%klass134658%_)
                     (_%obj134667%_ _%obj134662%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134664%_ 'class))
                    (let ((_%klass134672%_ _%klass134664%_))
                      (__direct-instance? _%klass134672%_ _%obj134667%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134664%_)
                      '#!void)))
              (unchecked-field-ref _%obj134662%_ _%field134660%_)
              (if (let* ((_%klass134686%_ _%klass134658%_)
                         (_%obj134689%_ _%obj134662%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass134686%_ 'class))
                        (let ((_%klass134694%_ _%klass134686%_))
                          (__class-instance? _%klass134694%_ _%obj134689%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass134686%_)
                          '#!void)))
                  (unchecked-slot-ref _%obj134662%_ _%slot134659%_)
                  (not-an-instance__%
                   _%obj134662%_
                   _%klass134658%_
                   _%slot134659%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass134608%_ _%slot134609%_ _%field134610%_)
        (lambda (_%obj134612%_ _%val134613%_)
          (if (let* ((_%klass134615%_ _%klass134608%_)
                     (_%obj134618%_ _%obj134612%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134615%_ 'class))
                    (let ((_%klass134623%_ _%klass134615%_))
                      (__direct-instance? _%klass134623%_ _%obj134618%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134615%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj134612%_
               _%field134610%_
               _%val134613%_)
              (if (let* ((_%klass134637%_ _%klass134608%_)
                         (_%obj134640%_ _%obj134612%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass134637%_ 'class))
                        (let ((_%klass134645%_ _%klass134637%_))
                          (__class-instance? _%klass134645%_ _%obj134640%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass134637%_)
                          '#!void)))
                  (unchecked-slot-set!
                   _%obj134612%_
                   _%slot134609%_
                   _%val134613%_)
                  (not-an-instance__%
                   _%obj134612%_
                   _%klass134608%_
                   _%slot134609%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass134581%_ _%slot134582%_ _%field134583%_)
        (lambda (_%obj134585%_)
          (if (let* ((_%klass134587%_ _%klass134581%_)
                     (_%obj134590%_ _%obj134585%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134587%_ 'class))
                    (let ((_%klass134595%_ _%klass134587%_))
                      (__direct-instance? _%klass134595%_ _%obj134590%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134587%_)
                      '#!void)))
              (unchecked-field-ref _%obj134585%_ _%field134583%_)
              (unchecked-slot-ref _%obj134585%_ _%slot134582%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass134553%_ _%slot134554%_ _%field134555%_)
        (lambda (_%obj134557%_ _%val134558%_)
          (if (let* ((_%klass134560%_ _%klass134553%_)
                     (_%obj134563%_ _%obj134557%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134560%_ 'class))
                    (let ((_%klass134568%_ _%klass134560%_))
                      (__direct-instance? _%klass134568%_ _%obj134563%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134560%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj134557%_
               _%field134555%_
               _%val134558%_)
              (unchecked-slot-set!
               _%obj134557%_
               _%slot134554%_
               _%val134558%_)))))
    (define __class-slot-offset
      (lambda (_%klass134532%_ _%slot134533%_)
        (let* ((_%klass134536%_ _%klass134532%_)
               (_%slot134544%_ _%slot134533%_)
               (__tmp139628
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass134536%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp139628 _%slot134544%_ '#f))))
    (define class-slot-offset
      (lambda (_%klass125905%_ _%slot125906%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125905%_ 'class))
            (let ((_%klass125910%_ _%klass125905%_))
              (if (let () (declare (not safe)) (symbolic? _%slot125906%_))
                  (let ((_%slot125920%_ _%slot125906%_))
                    (__class-slot-offset _%klass125910%_ _%slot125920%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@670.43-670.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot125906%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@670.26-670.31"
               'contract:
               'class-type?
               'value:
               _%klass125905%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass134457%_ _%obj134458%_ _%slot134459%_)
        (let* ((_%klass134462%_ _%klass134457%_)
               (_%slot134470%_ _%slot134459%_))
          (if (let* ((_%klass134479%_ _%klass134462%_)
                     (_%obj134482%_ _%obj134458%_)
                     (_%klass134487%_ _%klass134479%_))
                (__class-instance? _%klass134487%_ _%obj134482%_))
              (let ((_%off134530%_
                     (let* ((_%klass134501%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj134458%_)))
                            (_%slot134504%_ _%slot134470%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass134501%_ 'class))
                           (let ((_%klass134509%_ _%klass134501%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot134504%_))
                                 (let ((_%slot134520%_ _%slot134504%_))
                                   (__class-slot-offset
                                    _%klass134509%_
                                    _%slot134520%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot134504%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass134501%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj134458%_
                 _%off134530%_
                 _%klass134462%_
                 _%slot134470%_))
              (not-an-instance__0 _%obj134458%_ _%klass134462%_)))))
    (define class-slot-ref
      (lambda (_%klass126050%_ _%obj126051%_ _%slot126052%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126050%_ 'class))
            (let ((_%klass126056%_ _%klass126050%_))
              (if (let () (declare (not safe)) (symbolic? _%slot126052%_))
                  (let ((_%slot126066%_ _%slot126052%_))
                    (__class-slot-ref
                     _%klass126056%_
                     _%obj126051%_
                     _%slot126066%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@673.44-673.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot126052%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@673.23-673.28"
               'contract:
               'class-type?
               'value:
               _%klass126050%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass134381%_ _%obj134382%_ _%slot134383%_ _%val134384%_)
        (let* ((_%klass134387%_ _%klass134381%_)
               (_%slot134395%_ _%slot134383%_))
          (if (let* ((_%klass134404%_ _%klass134387%_)
                     (_%obj134407%_ _%obj134382%_)
                     (_%klass134412%_ _%klass134404%_))
                (__class-instance? _%klass134412%_ _%obj134407%_))
              (let ((_%off134455%_
                     (let* ((_%klass134426%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj134382%_)))
                            (_%slot134429%_ _%slot134395%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass134426%_ 'class))
                           (let ((_%klass134434%_ _%klass134426%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot134429%_))
                                 (let ((_%slot134445%_ _%slot134429%_))
                                   (__class-slot-offset
                                    _%klass134434%_
                                    _%slot134445%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot134429%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass134426%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj134382%_
                 _%val134384%_
                 _%off134455%_
                 _%klass134387%_
                 _%slot134395%_))
              (not-an-instance__0 _%obj134382%_ _%klass134387%_)))))
    (define class-slot-set!
      (lambda (_%klass126196%_ _%obj126197%_ _%slot126198%_ _%val126199%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126196%_ 'class))
            (let ((_%klass126203%_ _%klass126196%_))
              (if (let () (declare (not safe)) (symbolic? _%slot126198%_))
                  (let ((_%slot126213%_ _%slot126198%_))
                    (__class-slot-set!
                     _%klass126203%_
                     _%obj126197%_
                     _%slot126213%_
                     _%val126199%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@679.45-679.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot126198%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@679.24-679.29"
               'contract:
               'class-type?
               'value:
               _%klass126196%_)
              '#!void))))
    (define unchecked-field-ref
      (lambda (_%obj134378%_ _%off134379%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj134378%_ _%off134379%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj134374%_ _%off134375%_ _%val134376%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj134374%_
           _%val134376%_
           _%off134375%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj134371%_ _%slot134372%_)
        (unchecked-field-ref
         _%obj134371%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj134371%_))
          _%slot134372%_))))
    (define unchecked-slot-set!
      (lambda (_%obj134367%_ _%slot134368%_ _%val134369%_)
        (unchecked-field-set!
         _%obj134367%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj134367%_))
          _%slot134368%_)
         _%val134369%_)))
    (define __slot-error
      (lambda (_%obj134364%_ _%slot134365%_)
        (error '"Cannot find slot"
               'object:
               _%obj134364%_
               'slot:
               _%slot134365%_)))
    (define __slot-ref__%
      (lambda (_%obj134288%_ _%slot134289%_ _%E134290%_)
        (let* ((_%slot134293%_ _%slot134289%_)
               (_%E134301%_ _%E134290%_)
               (_%klass134310%_ (class-of _%obj134288%_))
               (_%$e134346%_
                (let* ((_%klass134313%_ _%klass134310%_)
                       (_%slot134316%_ _%slot134293%_)
                       (_%klass134321%_ _%klass134313%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot134316%_))
                      (let ((_%slot134336%_ _%slot134316%_))
                        (__class-slot-offset _%klass134321%_ _%slot134336%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot134316%_)
                        '#!void)))))
          (if _%$e134346%_
              ((lambda (_%off134349%_)
                 (unchecked-field-ref _%obj134288%_ _%off134349%_))
               _%$e134346%_)
              (let ()
                (declare (not safe))
                (_%E134301%_ _%obj134288%_ _%slot134293%_))))))
    (define __slot-ref__0
      (lambda (_%obj134355%_ _%slot134356%_)
        (let ((_%E134358%_ __slot-error))
          (__slot-ref__% _%obj134355%_ _%slot134356%_ _%E134358%_))))
    (define __slot-ref
      (lambda _g139629_
        (let ((_g139630_ (let () (declare (not safe)) (##length _g139629_))))
          (cond ((let () (declare (not safe)) (##fx= _g139630_ 2))
                 (apply __slot-ref__0 _g139629_))
                ((let () (declare (not safe)) (##fx= _g139630_ 3))
                 (apply __slot-ref__% _g139629_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g139629_))))))
    (define slot-ref__%
      (lambda (_%obj126461%_ _%slot126462%_ _%E126463%_)
        (if (symbol? _%slot126462%_)
            (let ((_%slot126467%_ _%slot126462%_))
              (if (procedure? _%E126463%_)
                  (let ((_%E126477%_ _%E126463%_))
                    (__slot-ref__% _%obj126461%_ _%slot126467%_ _%E126477%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@705.38-705.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E126463%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@705.21-705.25"
               'contract:
               'symbol?
               'value:
               _%slot126462%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj126490%_ _%slot126491%_)
        (let ((_%E126493%_ __slot-error))
          (slot-ref__% _%obj126490%_ _%slot126491%_ _%E126493%_))))
    (define slot-ref
      (lambda _g139631_
        (let ((_g139632_ (let () (declare (not safe)) (##length _g139631_))))
          (cond ((let () (declare (not safe)) (##fx= _g139632_ 2))
                 (apply slot-ref__0 _g139631_))
                ((let () (declare (not safe)) (##fx= _g139632_ 3))
                 (apply slot-ref__% _g139631_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g139631_))))))
    (define __slot-set!__%
      (lambda (_%obj134208%_ _%slot134209%_ _%val134210%_ _%E134211%_)
        (let* ((_%slot134214%_ _%slot134209%_)
               (_%E134222%_ _%E134211%_)
               (_%klass134231%_ (class-of _%obj134208%_))
               (_%$e134267%_
                (let* ((_%klass134234%_ _%klass134231%_)
                       (_%slot134237%_ _%slot134214%_)
                       (_%klass134242%_ _%klass134234%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot134237%_))
                      (let ((_%slot134257%_ _%slot134237%_))
                        (__class-slot-offset _%klass134242%_ _%slot134257%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot134237%_)
                        '#!void)))))
          (if _%$e134267%_
              ((lambda (_%off134270%_)
                 (unchecked-field-set!
                  _%obj134208%_
                  _%off134270%_
                  _%val134210%_))
               _%$e134267%_)
              (let ()
                (declare (not safe))
                (_%E134222%_ _%obj134208%_ _%slot134214%_))))))
    (define __slot-set!__0
      (lambda (_%obj134276%_ _%slot134277%_ _%val134278%_)
        (let ((_%E134280%_ __slot-error))
          (__slot-set!__%
           _%obj134276%_
           _%slot134277%_
           _%val134278%_
           _%E134280%_))))
    (define __slot-set!
      (lambda _g139633_
        (let ((_g139634_ (let () (declare (not safe)) (##length _g139633_))))
          (cond ((let () (declare (not safe)) (##fx= _g139634_ 3))
                 (apply __slot-set!__0 _g139633_))
                ((let () (declare (not safe)) (##fx= _g139634_ 4))
                 (apply __slot-set!__% _g139633_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g139633_))))))
    (define slot-set!__%
      (lambda (_%obj126620%_ _%slot126621%_ _%val126622%_ _%E126623%_)
        (if (symbol? _%slot126621%_)
            (let ((_%slot126627%_ _%slot126621%_))
              (if (procedure? _%E126623%_)
                  (let ((_%E126637%_ _%E126623%_))
                    (__slot-set!__%
                     _%obj126620%_
                     _%slot126627%_
                     _%val126622%_
                     _%E126637%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@707.43-707.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E126623%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@707.22-707.26"
               'contract:
               'symbol?
               'value:
               _%slot126621%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj126650%_ _%slot126651%_ _%val126652%_)
        (let ((_%E126654%_ __slot-error))
          (slot-set!__%
           _%obj126650%_
           _%slot126651%_
           _%val126652%_
           _%E126654%_))))
    (define slot-set!
      (lambda _g139635_
        (let ((_g139636_ (let () (declare (not safe)) (##length _g139635_))))
          (cond ((let () (declare (not safe)) (##fx= _g139636_ 3))
                 (apply slot-set!__0 _g139635_))
                ((let () (declare (not safe)) (##fx= _g139636_ 4))
                 (apply slot-set!__% _g139635_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g139635_))))))
    (define __subclass?
      (lambda (_%maybe-sub-class134179%_ _%maybe-super-class134180%_)
        (let* ((_%maybe-sub-class134183%_ _%maybe-sub-class134179%_)
               (_%maybe-super-class134191%_ _%maybe-super-class134180%_)
               (_%maybe-super-class-id134200%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class134191%_)))
               (_%$e134202%_
                (eq? _%maybe-super-class-id134200%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class134183%_)))))
          (if _%$e134202%_
              _%$e134202%_
              (let ((__tmp139638
                     (lambda (_%super-class134205%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class134205%_))
                            _%maybe-super-class-id134200%_)))
                    (__tmp139637
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class134183%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (ormap__0 __tmp139638 __tmp139637))))))
    (define subclass?
      (lambda (_%maybe-sub-class126781%_ _%maybe-super-class126782%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class126781%_ 'class))
            (let ((_%maybe-sub-class126786%_ _%maybe-sub-class126781%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class126782%_
                     'class))
                  (let ((_%maybe-super-class126796%_
                         _%maybe-super-class126782%_))
                    (__subclass?
                     _%maybe-sub-class126786%_
                     _%maybe-super-class126796%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@713.45-713.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class126782%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@713.18-713.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class126781%_)
              '#!void))))
    (define object?
      (lambda (_%o134176%_)
        (if (let () (declare (not safe)) (##structure? _%o134176%_))
            (let ((__tmp139639
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o134176%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp139639 'class))
            '#f)))
    (define __direct-instance?
      (lambda (_%klass134163%_ _%obj134164%_)
        (let* ((_%klass134167%_ _%klass134163%_)
               (__tmp139640
                (let () (declare (not safe)) (##type-id _%klass134167%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj134164%_ __tmp139640))))
    (define direct-instance?
      (lambda (_%klass126926%_ _%obj126927%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126926%_ 'class))
            (let ((_%klass126931%_ _%klass126926%_))
              (__direct-instance? _%klass126931%_ _%obj126927%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@727.25-727.30"
               'contract:
               'class-type?
               'value:
               _%klass126926%_)
              '#!void))))
    (define immediate-instance-of?
      (lambda (_%klass134159%_ _%obj134160%_)
        (if (let () (declare (not safe)) (##structure? _%obj134160%_))
            (eq? _%klass134159%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj134160%_)))
            '#f)))
    (define __struct-instance?
      (lambda (_%klass134146%_ _%obj134147%_)
        (let* ((_%klass134150%_ _%klass134146%_)
               (__tmp139641
                (let () (declare (not safe)) (##type-id _%klass134150%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj134147%_ __tmp139641))))
    (define struct-instance?
      (lambda (_%klass127061%_ _%obj127062%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127061%_ 'class))
            (let ((_%klass127066%_ _%klass127061%_))
              (__struct-instance? _%klass127066%_ _%obj127062%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@756.25-756.30"
               'contract:
               'class-type?
               'value:
               _%klass127061%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass134098%_ _%obj134099%_)
        (let* ((_%klass134102%_ _%klass134098%_)
               (_%type134111%_ (class-of _%obj134099%_))
               (_%maybe-sub-class134113%_ _%type134111%_)
               (_%maybe-super-class134116%_ _%klass134102%_)
               (_%maybe-sub-class134121%_ _%maybe-sub-class134113%_)
               (_%maybe-super-class134136%_ _%maybe-super-class134116%_))
          (__subclass?
           _%maybe-sub-class134121%_
           _%maybe-super-class134136%_))))
    (define class-instance?
      (lambda (_%klass127196%_ _%obj127197%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127196%_ 'class))
            (let ((_%klass127201%_ _%klass127196%_))
              (__class-instance? _%klass127201%_ _%obj127197%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@761.24-761.29"
               'contract:
               'class-type?
               'value:
               _%klass127196%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass134057%_ _%k134058%_)
        (let* ((_%klass134061%_ _%klass134057%_) (_%k134069%_ _%k134058%_))
          (if (let* ((_%klass134078%_ _%klass134061%_)
                     (_%klass134083%_ _%klass134078%_))
                (__class-type-system? _%klass134083%_))
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass134061%_)
                '#!void)
              (let ((_%obj134096%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass134061%_ _%k134069%_))))
                (__object-fill! _%obj134096%_ '#f))))))
    (define make-object
      (lambda (_%klass127331%_ _%k127332%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127331%_ 'class))
            (let ((_%klass127336%_ _%klass127331%_))
              (if (fixnum? _%k127332%_)
                  (let ((_%k127346%_ _%k127332%_))
                    (__make-object _%klass127336%_ _%k127346%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@766.37-766.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k127332%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@766.20-766.25"
               'contract:
               'class-type?
               'value:
               _%klass127331%_)
              '#!void))))
    (define __object-class
      (lambda (_%obj134045%_)
        (let ((_%obj134048%_ _%obj134045%_))
          (declare (not safe))
          (##structure-type _%obj134048%_))))
    (define object-class
      (lambda (_%obj127476%_)
        (if (object? _%obj127476%_)
            (let ((_%obj127480%_ _%obj127476%_))
              (__object-class _%obj127480%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@786.21-786.24"
               'contract:
               'object?
               'value:
               _%obj127476%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj134027%_ _%fill134028%_)
        (let ((_%obj134031%_ _%obj134027%_))
          (let _%loop134040%_ ((_%i134042%_
                                (let ((__tmp139642
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj134031%_))))
                                  (declare (not safe))
                                  (##fx- __tmp139642 '1))))
            (if (let () (declare (not safe)) (##fx> _%i134042%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj134031%_
                     _%fill134028%_
                     _%i134042%_
                     '#f
                     '#f))
                  (_%loop134040%_
                   (let () (declare (not safe)) (##fx- _%i134042%_ '1))))
                _%obj134031%_)))))
    (define object-fill!
      (lambda (_%obj127610%_ _%fill127611%_)
        (if (object? _%obj127610%_)
            (let ((_%obj127615%_ _%obj127610%_))
              (__object-fill! _%obj127615%_ _%fill127611%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@791.21-791.24"
               'contract:
               'object?
               'value:
               _%obj127610%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass133983%_)
        (let* ((_%klass133986%_ _%klass133983%_)
               (_%klass133995%_ _%klass133986%_)
               (_%k133998%_
                (let ((__tmp139643
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass133986%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp139643)))
               (_%klass134003%_ _%klass133995%_)
               (_%k134017%_ _%k133998%_))
          (__make-object _%klass134003%_ _%k134017%_))))
    (define new-instance
      (lambda (_%klass127745%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127745%_ 'class))
            (let ((_%klass127749%_ _%klass127745%_))
              (__new-instance _%klass127749%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@802.21-802.26"
               'contract:
               'class-type?
               'value:
               _%klass127745%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass133842%_ . _%args133843%_)
        (let* ((_%klass133846%_ _%klass133842%_)
               (_%$e133855%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass133846%_ '10 '#f '#f))))
          (if _%$e133855%_
              ((lambda (_%kons-id133858%_)
                 (let ((_%obj133880%_
                        (let* ((_%klass133860%_ _%klass133846%_)
                               (_%klass133865%_ _%klass133860%_))
                          (__new-instance _%klass133865%_))))
                   (___constructor-init!
                    _%klass133846%_
                    _%kons-id133858%_
                    _%obj133880%_
                    _%args133843%_)
                   _%obj133880%_))
               _%$e133855%_)
              (if (let* ((_%klass133882%_ _%klass133846%_)
                         (_%klass133887%_ _%klass133882%_))
                    (__class-type-metaclass? _%klass133887%_))
                  (let ((_%obj133914%_
                         (let* ((_%klass133898%_ _%klass133846%_)
                                (_%klass133903%_ _%klass133898%_))
                           (__new-instance _%klass133903%_))))
                    (__metaclass-instance-init!
                     _%klass133846%_
                     _%obj133914%_
                     _%args133843%_)
                    _%obj133914%_)
                  (if (let* ((_%klass133916%_ _%klass133846%_)
                             (_%klass133921%_ _%klass133916%_))
                        (__class-type-struct? _%klass133921%_))
                      (if (let ((__tmp139645
                                 (let* ((_%klass133950%_ _%klass133846%_)
                                        (_%klass133955%_ _%klass133950%_))
                                   (__class-type-field-count _%klass133955%_)))
                                (__tmp139644
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args133843%_))))
                            (declare (not safe))
                            (##fx= __tmp139645 __tmp139644))
                          (apply ##structure _%klass133846%_ _%args133843%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass133846%_
                                   'slots:
                                   (let* ((_%klass133967%_ _%klass133846%_)
                                          (_%klass133972%_ _%klass133967%_))
                                     (__class-type-slot-list _%klass133972%_))
                                   'args:
                                   _%args133843%_)
                            '#!void))
                      (let ((_%obj133948%_
                             (let* ((_%klass133932%_ _%klass133846%_)
                                    (_%klass133937%_ _%klass133932%_))
                               (__new-instance _%klass133937%_))))
                        (___class-instance-init!
                         _%klass133846%_
                         _%obj133948%_
                         _%args133843%_)
                        _%obj133948%_)))))))
    (define make-instance
      (lambda (_%klass127879%_ . _%args127880%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127879%_ 'class))
            (let ((_%klass127884%_ _%klass127879%_))
              (declare (not safe))
              (##apply __make-instance _%klass127884%_ _%args127880%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@805.22-805.27"
               'contract:
               'class-type?
               'value:
               _%klass127879%_)
              '#!void))))
    (define make-class-instance make-instance)
    (define __struct-instance-init!
      (lambda (_%obj133829%_ . _%args133830%_)
        (let ((_%obj133833%_ _%obj133829%_))
          (if (let ((__tmp139647
                     (let () (declare (not safe)) (##length _%args133830%_)))
                    (__tmp139646
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj133833%_))))
                (declare (not safe))
                (##fx< __tmp139647 __tmp139646))
              (___struct-instance-init! _%obj133833%_ _%args133830%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj133833%_
                     'args:
                     _%args133830%_))
          '#!void)))
    (define struct-instance-init!
      (lambda (_%obj128014%_ . _%args128015%_)
        (if (object? _%obj128014%_)
            (let ((_%obj128019%_ _%obj128014%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj128019%_ _%args128015%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@830.30-830.33"
               'contract:
               'object?
               'value:
               _%obj128014%_)
              '#!void))))
    (define ___struct-instance-init!
      (lambda (_%obj133788%_ _%args133789%_)
        (let _%lp133791%_ ((_%k133793%_ '1) (_%rest133794%_ _%args133789%_))
          (let* ((_%rest133795133803%_ _%rest133794%_)
                 (_%else133797133811%_ (lambda () _%obj133788%_))
                 (_%K133799133817%_
                  (lambda (_%rest133814%_ _%hd133815%_)
                    (unchecked-field-set!
                     _%obj133788%_
                     _%k133793%_
                     _%hd133815%_)
                    (_%lp133791%_
                     (let () (declare (not safe)) (##fx+ _%k133793%_ '1))
                     _%rest133814%_))))
            (if (pair? _%rest133795133803%_)
                (let ((_%hd133800133820%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest133795133803%_)))
                      (_%tl133801133822%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest133795133803%_))))
                  (let* ((_%hd133825%_ _%hd133800133820%_)
                         (_%rest133827%_ _%tl133801133822%_))
                    (_%K133799133817%_ _%rest133827%_ _%hd133825%_)))
                (_%else133797133811%_))))))
    (define __class-instance-init!
      (lambda (_%obj133775%_ . _%args133776%_)
        (let ((_%obj133779%_ _%obj133775%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj133779%_))
           _%obj133779%_
           _%args133776%_)
          '#!void)))
    (define class-instance-init!
      (lambda (_%obj128149%_ . _%args128150%_)
        (if (object? _%obj128149%_)
            (let ((_%obj128154%_ _%obj128149%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj128154%_ _%args128150%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@870.29-870.32"
               'contract:
               'object?
               'value:
               _%obj128149%_)
              '#!void))))
    (define ___class-instance-init!
      (lambda (_%klass133717%_ _%obj133718%_ _%args133719%_)
        (let _%lp133721%_ ((_%rest133723%_ _%args133719%_))
          (let* ((_%rest133724133734%_ _%rest133723%_)
                 (_%else133726133742%_
                  (lambda ()
                    (if (null? _%rest133723%_)
                        _%obj133718%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass133717%_
                               'rest:
                               _%rest133723%_))))
                 (_%K133728133756%_
                  (lambda (_%rest133745%_ _%val133746%_ _%key133747%_)
                    (if (keyword? _%key133747%_)
                        (let ((_%$e133750%_
                               (__class-slot-offset
                                _%klass133717%_
                                _%key133747%_)))
                          (if _%$e133750%_
                              ((lambda (_%off133753%_)
                                 (unchecked-field-set!
                                  _%obj133718%_
                                  _%off133753%_
                                  _%val133746%_)
                                 (_%lp133721%_ _%rest133745%_))
                               _%$e133750%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass133717%_
                                     'slot:
                                     _%key133747%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key133747%_)))))
            (if (pair? _%rest133724133734%_)
                (let ((_%hd133729133759%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest133724133734%_)))
                      (_%tl133730133761%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest133724133734%_))))
                  (let ((_%key133764%_ _%hd133729133759%_))
                    (if (pair? _%tl133730133761%_)
                        (let ((_%hd133731133766%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl133730133761%_)))
                              (_%tl133732133768%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl133730133761%_))))
                          (let* ((_%val133771%_ _%hd133731133766%_)
                                 (_%rest133773%_ _%tl133732133768%_))
                            (_%K133728133756%_
                             _%rest133773%_
                             _%val133771%_
                             _%key133764%_)))
                        (_%else133726133742%_))))
                (_%else133726133742%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass133713%_ _%obj133714%_ _%args133715%_)
        (apply call-method
               _%klass133713%_
               'instance-init!
               _%obj133714%_
               _%args133715%_)))
    (define __constructor-init!
      (lambda (_%klass133682%_
               _%kons-id133683%_
               _%obj133684%_
               .
               _%args133685%_)
        (let* ((_%klass133688%_ _%klass133682%_)
               (_%kons-id133696%_ _%kons-id133683%_)
               (_%obj133704%_ _%obj133684%_))
          (___constructor-init!
           _%klass133688%_
           _%kons-id133696%_
           _%obj133704%_
           _%args133685%_)
          '#!void)))
    (define constructor-init!
      (lambda (_%klass128284%_
               _%kons-id128285%_
               _%obj128286%_
               .
               _%args128287%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass128284%_ 'class))
            (let ((_%klass128291%_ _%klass128284%_))
              (if (symbol? _%kons-id128285%_)
                  (let ((_%kons-id128301%_ _%kons-id128285%_))
                    (if (object? _%obj128286%_)
                        (let ((_%obj128311%_ _%obj128286%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass128291%_
                                   _%kons-id128301%_
                                   _%obj128311%_
                                   _%args128287%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@894.63-894.66"
                           'contract:
                           'object?
                           'value:
                           _%obj128286%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@894.43-894.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id128285%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@894.26-894.31"
               'contract:
               'class-type?
               'value:
               _%klass128284%_)
              '#!void))))
    (define ___constructor-init!
      (lambda (_%klass133671%_ _%kons-id133672%_ _%obj133673%_ _%args133674%_)
        (let ((_%$e133676%_
               (__find-method
                _%klass133671%_
                _%obj133673%_
                _%kons-id133672%_)))
          (if _%$e133676%_
              ((lambda (_%kons133679%_)
                 (apply _%kons133679%_ _%obj133673%_ _%args133674%_)
                 _%obj133673%_)
               _%$e133676%_)
              (error '"missing constructor"
                     'class:
                     _%klass133671%_
                     'method:
                     _%kons-id133672%_)))))
    (define __struct-copy
      (lambda (_%struct133659%_)
        (let ((_%struct133662%_ _%struct133659%_))
          (declare (not safe))
          (##structure-copy _%struct133662%_))))
    (define struct-copy
      (lambda (_%struct128441%_)
        (if (object? _%struct128441%_)
            (let ((_%struct128445%_ _%struct128441%_))
              (__struct-copy _%struct128445%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@908.20-908.26"
               'contract:
               'object?
               'value:
               _%struct128441%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj133640%_)
        (let* ((_%obj133643%_ _%obj133640%_)
               (_%len133652%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj133643%_))))
          (let _%recur133654%_ ((_%i133656%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i133656%_ _%len133652%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj133643%_
                         _%i133656%_
                         '#f
                         '#f))
                      (_%recur133654%_
                       (let () (declare (not safe)) (##fx+ _%i133656%_ '1))))
                '())))))
    (define struct->list
      (lambda (_%obj128575%_)
        (if (object? _%obj128575%_)
            (let ((_%obj128579%_ _%obj128575%_))
              (__struct->list _%obj128579%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@911.21-911.24"
               'contract:
               'object?
               'value:
               _%obj128575%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj133592%_)
        (let* ((_%obj133595%_ _%obj133592%_)
               (_%klass133604%_
                (let () (declare (not safe)) (##structure-type _%obj133595%_)))
               (_%slot-vector133606%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass133604%_ '7 '#f '#f))))
          (let _%loop133608%_ ((_%index133610%_
                                (let ((__tmp139648
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector133606%_))))
                                  (declare (not safe))
                                  (##fx- __tmp139648 '1)))
                               (_%plist133611%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index133610%_ '1))
                (cons _%klass133604%_ _%plist133611%_)
                (let ((_%slot133614%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector133606%_
                          _%index133610%_))))
                  (_%loop133608%_
                   (let () (declare (not safe)) (##fx- _%index133610%_ '1))
                   (cons (let ((_%sym133616%_ _%slot133614%_))
                           (if (symbol? _%sym133616%_)
                               (let ((_%sym133621%_ _%sym133616%_))
                                 (declare (not safe))
                                 (__symbol->keyword _%sym133621%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  'symbol?
                                  'value:
                                  _%sym133616%_)
                                 '#!void)))
                         (cons (unchecked-field-ref
                                _%obj133595%_
                                _%index133610%_)
                               _%plist133611%_)))))))))
    (define class->list
      (lambda (_%obj128709%_)
        (if (object? _%obj128709%_)
            (let ((_%obj128713%_ _%obj128709%_)) (__class->list _%obj128713%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@919.20-919.23"
               'contract:
               'object?
               'value:
               _%obj128709%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj133542%_ _%id133543%_ . _%args133544%_)
        (let* ((_%id133547%_ _%id133543%_)
               (_%$e133578%_
                (let* ((_%obj133556%_ _%obj133542%_)
                       (_%id133559%_ _%id133547%_)
                       (_%id133564%_ _%id133559%_))
                  (__method-ref _%obj133556%_ _%id133564%_))))
          (if _%$e133578%_
              ((lambda (_%method133581%_)
                 (let ((_%method133583%_ _%method133581%_))
                   (apply _%method133583%_ _%obj133542%_ _%args133544%_)))
               _%$e133578%_)
              (error '"cannot find method"
                     'object:
                     _%obj133542%_
                     'method:
                     _%id133547%_)))))
    (define call-method
      (lambda (_%obj128843%_ _%id128844%_ . _%args128845%_)
        (if (symbol? _%id128844%_)
            (let ((_%id128849%_ _%id128844%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj128843%_
                       _%id128849%_
                       _%args128845%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@934.24-934.26"
               'contract:
               'symbol?
               'value:
               _%id128844%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj133493%_ _%id133494%_)
        (let* ((_%id133497%_ _%id133494%_)
               (_%klass133506%_ (class-of _%obj133493%_))
               (_%obj133509%_ _%obj133493%_)
               (_%id133512%_ _%id133497%_)
               (_%klass133517%_ _%klass133506%_)
               (_%id133532%_ _%id133512%_))
          (__find-method _%klass133517%_ _%obj133509%_ _%id133532%_))))
    (define method-ref
      (lambda (_%obj128979%_ _%id128980%_)
        (if (symbol? _%id128980%_)
            (let ((_%id128984%_ _%id128980%_))
              (__method-ref _%obj128979%_ _%id128984%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@961.23-961.25"
               'contract:
               'symbol?
               'value:
               _%id128980%_)
              '#!void))))
    (define checked-method-ref
      (lambda (_%obj133465%_ _%id133466%_)
        (let ((_%$e133490%_
               (let* ((_%obj133469%_ _%obj133465%_)
                      (_%id133472%_ _%id133466%_))
                 (if (symbol? _%id133472%_)
                     (let ((_%id133477%_ _%id133472%_))
                       (__method-ref _%obj133469%_ _%id133477%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id133472%_)
                       '#!void)))))
          (if _%$e133490%_
              _%$e133490%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj133465%_
                       'method:
                       _%id133466%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj133414%_ _%id133415%_)
        (let* ((_%id133418%_ _%id133415%_)
               (_%$e133449%_
                (let* ((_%obj133427%_ _%obj133414%_)
                       (_%id133430%_ _%id133418%_)
                       (_%id133435%_ _%id133430%_))
                  (__method-ref _%obj133427%_ _%id133435%_))))
          (if _%$e133449%_
              ((lambda (_%method133452%_)
                 (let ((_%method133454%_ _%method133452%_))
                   (lambda _%args133462%_
                     (apply _%method133454%_ _%obj133414%_ _%args133462%_))))
               _%$e133449%_)
              '#f))))
    (define bound-method-ref
      (lambda (_%obj129114%_ _%id129115%_)
        (if (symbol? _%id129115%_)
            (let ((_%id129119%_ _%id129115%_))
              (__bound-method-ref _%obj129114%_ _%id129119%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@969.29-969.31"
               'contract:
               'symbol?
               'value:
               _%id129115%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj133397%_ _%id133398%_)
        (let* ((_%id133401%_ _%id133398%_)
               (_%method133410%_
                (checked-method-ref _%obj133397%_ _%id133401%_)))
          (lambda _%args133412%_
            (apply _%method133410%_ _%obj133397%_ _%args133412%_)))))
    (define checked-bound-method-ref
      (lambda (_%obj129249%_ _%id129250%_)
        (if (symbol? _%id129250%_)
            (let ((_%id129254%_ _%id129250%_))
              (__checked-bound-method-ref _%obj129249%_ _%id129254%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@978.37-978.39"
               'contract:
               'symbol?
               'value:
               _%id129250%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass133266%_ _%obj133267%_ _%id133268%_)
        (let* ((_%klass133271%_ _%klass133266%_) (_%id133279%_ _%id133268%_))
          (if (let* ((_%klass133288%_ _%klass133271%_)
                     (_%klass133293%_ _%klass133288%_))
                (__class-type-sealed? _%klass133293%_))
              (let ((_%tab133323%_
                     (let* ((_%klass133307%_ _%klass133271%_)
                            (_%klass133312%_ _%klass133307%_))
                       (__specialize-class _%klass133312%_))))
                (declare (not safe))
                (symbolic-table-ref _%tab133323%_ _%id133279%_ '#f))
              (let ((_%$e133358%_
                     (let* ((_%klass133325%_ _%klass133271%_)
                            (_%obj133328%_ _%obj133267%_)
                            (_%id133331%_ _%id133279%_)
                            (_%klass133336%_ _%klass133325%_)
                            (_%id133348%_ _%id133331%_))
                       (__direct-method-ref
                        _%klass133336%_
                        _%obj133328%_
                        _%id133348%_))))
                (if _%$e133358%_
                    _%$e133358%_
                    (let* ((_%klass133362%_ _%klass133271%_)
                           (_%obj133365%_ _%obj133267%_)
                           (_%id133368%_ _%id133279%_)
                           (_%klass133373%_ _%klass133362%_)
                           (_%id133387%_ _%id133368%_))
                      (__mixin-method-ref
                       _%klass133373%_
                       _%obj133365%_
                       _%id133387%_))))))))
    (define find-method
      (lambda (_%klass129384%_ _%obj129385%_ _%id129386%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass129384%_ 'class))
            (let ((_%klass129390%_ _%klass129384%_))
              (if (symbol? _%id129386%_)
                  (let ((_%id129400%_ _%id129386%_))
                    (__find-method _%klass129390%_ _%obj129385%_ _%id129400%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@983.41-983.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id129386%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@983.20-983.25"
               'contract:
               'class-type?
               'value:
               _%klass129384%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins133211%_ _%obj133212%_ _%id133213%_)
        (let* ((_%id133216%_ _%id133213%_)
               (__tmp139649
                (lambda (_%g133224133226%_)
                  (let* ((_%klass133229%_ _%g133224133226%_)
                         (_%obj133232%_ _%obj133212%_)
                         (_%id133235%_ _%id133216%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass133229%_ 'class))
                        (let* ((_%klass133240%_ _%klass133229%_)
                               (_%id133256%_ _%id133235%_))
                          (__direct-method-ref
                           _%klass133240%_
                           _%obj133232%_
                           _%id133256%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass133229%_)
                          '#!void))))))
          (declare (not safe))
          (ormap__0 __tmp139649 _%mixins133211%_))))
    (define mixin-find-method
      (lambda (_%mixins129530%_ _%obj129531%_ _%id129532%_)
        (if (symbol? _%id129532%_)
            (let ((_%id129536%_ _%id129532%_))
              (__mixin-find-method
               _%mixins129530%_
               _%obj129531%_
               _%id129536%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@992.37-992.39"
               'contract:
               'symbol?
               'value:
               _%id129532%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass133104%_ _%obj133105%_ _%id133106%_)
        (let* ((_%klass133109%_ _%klass133104%_) (_%id133117%_ _%id133106%_))
          (letrec ((_%metaclass-resolve-method133126%_
                    (lambda ()
                      (let* ((_%obj133187%_ _%klass133109%_)
                             (_%id133190%_ 'direct-method-ref)
                             (_%args133193%_ (list _%obj133105%_ _%id133117%_))
                             (_%id133198%_ _%id133190%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj133187%_
                                 _%id133198%_
                                 _%args133193%_))))
                   (_%metaclass-resolve-method!133127%_
                    (lambda ()
                      (let ((_%method133184%_
                             (_%metaclass-resolve-method133126%_)))
                        (let ((__tmp139651
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass133109%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp139650
                               (if _%method133184%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp139651
                           _%id133117%_
                           __tmp139650))
                        _%method133184%_))))
            (let ((_%$e133129%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass133109%_ '11 '#f '#f))))
              (if _%$e133129%_
                  ((lambda (_%ht133132%_)
                     (let ((_%method133134%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht133132%_
                               _%id133117%_
                               '#f))))
                       (if (procedure? _%method133134%_)
                           _%method133134%_
                           (if (let* ((_%klass133137%_ _%klass133109%_)
                                      (_%klass133142%_ _%klass133137%_))
                                 (__class-type-metaclass? _%klass133142%_))
                               (let ((_%$e133160%_ _%method133134%_))
                                 (if (eq? 'resolved _%$e133160%_)
                                     (_%metaclass-resolve-method133126%_)
                                     (if (eq? 'unknown _%$e133160%_)
                                         '#f
                                         (_%metaclass-resolve-method!133127%_))))
                               '#f))))
                   _%$e133129%_)
                  (if (let* ((_%klass133164%_ _%klass133109%_)
                             (_%klass133169%_ _%klass133164%_))
                        (__class-type-metaclass? _%klass133169%_))
                      (let ((_%tab133180%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass133109%_
                           _%tab133180%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!133127%_))
                      '#f)))))))
    (define direct-method-ref
      (lambda (_%klass129666%_ _%obj129667%_ _%id129668%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass129666%_ 'class))
            (let ((_%klass129672%_ _%klass129666%_))
              (if (symbol? _%id129668%_)
                  (let ((_%id129682%_ _%id129668%_))
                    (__direct-method-ref
                     _%klass129672%_
                     _%obj129667%_
                     _%id129682%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@995.47-995.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id129668%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@995.26-995.31"
               'contract:
               'class-type?
               'value:
               _%klass129666%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass133056%_ _%obj133057%_ _%id133058%_)
        (let* ((_%klass133061%_ _%klass133056%_)
               (_%id133069%_ _%id133058%_)
               (_%mixins133078%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass133061%_ '6 '#f '#f)))
               (_%obj133081%_ _%obj133057%_)
               (_%id133084%_ _%id133069%_)
               (_%id133089%_ _%id133084%_))
          (__mixin-find-method _%mixins133078%_ _%obj133081%_ _%id133089%_))))
    (define mixin-method-ref
      (lambda (_%klass129812%_ _%obj129813%_ _%id129814%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass129812%_ 'class))
            (let ((_%klass129818%_ _%klass129812%_))
              (if (symbol? _%id129814%_)
                  (let ((_%id129828%_ _%id129814%_))
                    (__mixin-method-ref
                     _%klass129818%_
                     _%obj129813%_
                     _%id129828%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1025.46-1025.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id129814%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1025.25-1025.30"
               'contract:
               'class-type?
               'value:
               _%klass129812%_)
              '#!void))))
    (define __bind-method!__%
      (lambda (_%klass132966%_ _%id132967%_ _%proc132968%_ _%rebind?132969%_)
        (let* ((_%id132972%_ _%id132967%_) (_%proc132980%_ _%proc132968%_))
          (letrec ((_%bind!132989%_
                    (lambda (_%ht133040%_)
                      (if (and (not _%rebind?132969%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht133040%_
                                  _%id132972%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass132966%_
                                 'method:
                                 _%id132972%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht133040%_
                               _%id132972%_
                               _%proc132980%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass132966%_ 'class))
                (let ((_%ht132992%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass132966%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht132992%_
                      (_%bind!132989%_ _%ht132992%_)
                      (let ((_%ht132994%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass132966%_
                           _%ht132994%_
                           '11
                           '#f
                           '#f))
                        (_%bind!132989%_ _%ht132994%_))))
                (if (let () (declare (not safe)) (##type? _%klass132966%_))
                    (let* ((_%klass132997%_
                            (__shadow-class__0 _%klass132966%_))
                           (_%id133000%_ _%id132972%_)
                           (_%proc133003%_ _%proc132980%_)
                           (_%rebind?133006%_ _%rebind?132969%_)
                           (_%id133011%_ _%id133000%_)
                           (_%proc133029%_ _%proc133003%_))
                      (__bind-method!__%
                       _%klass132997%_
                       _%id133011%_
                       _%proc133029%_
                       _%rebind?133006%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass132966%_)))))))
    (define __bind-method!__0
      (lambda (_%klass133045%_ _%id133046%_ _%proc133047%_)
        (let ((_%rebind?133049%_ '#f))
          (__bind-method!__%
           _%klass133045%_
           _%id133046%_
           _%proc133047%_
           _%rebind?133049%_))))
    (define __bind-method!
      (lambda _g139652_
        (let ((_g139653_ (let () (declare (not safe)) (##length _g139652_))))
          (cond ((let () (declare (not safe)) (##fx= _g139653_ 3))
                 (apply __bind-method!__0 _g139652_))
                ((let () (declare (not safe)) (##fx= _g139653_ 4))
                 (apply __bind-method!__% _g139652_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g139652_))))))
    (define bind-method!__%
      (lambda (_%klass129959%_ _%id129960%_ _%proc129961%_ _%rebind?129962%_)
        (if (symbol? _%id129960%_)
            (let ((_%id129966%_ _%id129960%_))
              (if (procedure? _%proc129961%_)
                  (let ((_%proc129976%_ _%proc129961%_))
                    (__bind-method!__%
                     _%klass129959%_
                     _%id129966%_
                     _%proc129976%_
                     _%rebind?129962%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1028.42-1028.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc129961%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1028.27-1028.29"
               'contract:
               'symbol?
               'value:
               _%id129960%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass129989%_ _%id129990%_ _%proc129991%_)
        (let ((_%rebind?129993%_ '#f))
          (bind-method!__%
           _%klass129989%_
           _%id129990%_
           _%proc129991%_
           _%rebind?129993%_))))
    (define bind-method!
      (lambda _g139654_
        (let ((_g139655_ (let () (declare (not safe)) (##length _g139654_))))
          (cond ((let () (declare (not safe)) (##fx= _g139655_ 3))
                 (apply bind-method!__0 _g139654_))
                ((let () (declare (not safe)) (##fx= _g139655_ 4))
                 (apply bind-method!__% _g139654_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g139654_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint132947%_ _%seed132948%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint132947%_
           procedure-hash
           eq?
           _%seed132948%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint132954%_ '#f) (_%seed132956%_ '0))
          (make-method-specializer-table__%
           _%size-hint132954%_
           _%seed132956%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint132958%_)
        (let ((_%seed132960%_ '0))
          (make-method-specializer-table__%
           _%size-hint132958%_
           _%seed132960%_))))
    (define make-method-specializer-table
      (lambda _g139656_
        (let ((_g139657_ (let () (declare (not safe)) (##length _g139656_))))
          (cond ((let () (declare (not safe)) (##fx= _g139657_ 0))
                 (apply make-method-specializer-table__0 _g139656_))
                ((let () (declare (not safe)) (##fx= _g139657_ 1))
                 (apply make-method-specializer-table__1 _g139656_))
                ((let () (declare (not safe)) (##fx= _g139657_ 2))
                 (apply make-method-specializer-table__% _g139656_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g139656_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint132927%_ _%seed132929%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint132927%_
           procedure-hash
           eq?
           _%seed132929%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint132935%_ '#f) (_%seed132937%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint132935%_
           _%seed132937%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint132939%_)
        (let ((_%seed132941%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint132939%_
           _%seed132941%_))))
    (define make-method-specializer-table/lock
      (lambda _g139658_
        (let ((_g139659_ (let () (declare (not safe)) (##length _g139658_))))
          (cond ((let () (declare (not safe)) (##fx= _g139659_ 0))
                 (apply make-method-specializer-table/lock__0 _g139658_))
                ((let () (declare (not safe)) (##fx= _g139659_ 1))
                 (apply make-method-specializer-table/lock__1 _g139658_))
                ((let () (declare (not safe)) (##fx= _g139659_ 2))
                 (apply make-method-specializer-table/lock__% _g139658_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g139658_))))))
    (define method-specializer-table-ref
      (lambda (_%tab132880%_ _%key132881%_ _%default132882%_)
        (let ((_%table132884%_
               (let () (declare (not safe)) (&raw-table-table _%tab132880%_)))
              (_%seed132885%_
               (let () (declare (not safe)) (&raw-table-seed _%tab132880%_))))
          (let* ((_%h132887%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key132881%_))
                         _%seed132885%_))
                 (_%size132890%_ (vector-length _%table132884%_))
                 (_%entries132893%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size132890%_ '2)))
                 (_%start132896%_
                  (let ((__tmp139660
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h132887%_ _%entries132893%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp139660 '1))))
            (let _%loop132900%_ ((_%probe132903%_ _%start132896%_)
                                 (_%i132905%_ '1)
                                 (_%deleted132907%_ '#f))
              (let ((_%k132910%_ (vector-ref _%table132884%_ _%probe132903%_)))
                (if (eq? _%k132910%_ (macro-unused-obj))
                    _%default132882%_
                    (if (eq? _%k132910%_ (macro-deleted-obj))
                        (_%loop132900%_
                         (let ((_%next-probe132915%_
                                (fx+ _%start132896%_
                                     _%i132905%_
                                     (fx* _%i132905%_ _%i132905%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe132915%_ _%size132890%_))
                         (let () (declare (not safe)) (##fx+ _%i132905%_ '1))
                         (let ((_%$e132918%_ _%deleted132907%_))
                           (if _%$e132918%_ _%$e132918%_ _%probe132903%_)))
                        (if (eq? _%key132881%_ _%k132910%_)
                            (vector-ref
                             _%table132884%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe132903%_ '1)))
                            (_%loop132900%_
                             (let ((_%next-probe132923%_
                                    (fx+ _%start132896%_
                                         _%i132905%_
                                         (fx* _%i132905%_ _%i132905%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe132923%_
                                _%size132890%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i132905%_ '1))
                             _%deleted132907%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab132851%_ _%key132852%_ _%default132853%_)
        (let ((_%lock132855%_
               (let () (declare (not safe)) (&raw-table-lock _%tab132851%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again132860%_ ((_%spin132863%_ '0))
              (if (let ((__tmp139661
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock132855%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp139661 '0))
                  (let ((__tmp139662 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock132855%_ '1 __tmp139662))
                  (if (let () (declare (not safe)) (##fx< _%spin132863%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again132860%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin132863%_ '1))))
                      (let ((_%owner132869%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock132855%_ '1))))
                        (if (eq? _%owner132869%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner132869%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again132860%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r132875%_
                 (method-specializer-table-ref
                  _%tab132851%_
                  _%key132852%_
                  _%default132853%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock132855%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock132855%_ '0 '0 '1))))
            _%$r132875%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab132803%_ _%key132804%_ _%value132805%_)
        (let ((_%table132807%_
               (let () (declare (not safe)) (&raw-table-table _%tab132803%_)))
              (_%seed132808%_
               (let () (declare (not safe)) (&raw-table-seed _%tab132803%_))))
          (let* ((_%h132810%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key132804%_))
                         _%seed132808%_))
                 (_%size132813%_ (vector-length _%table132807%_))
                 (_%entries132816%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size132813%_ '2)))
                 (_%start132819%_
                  (let ((__tmp139663
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h132810%_ _%entries132816%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp139663 '1))))
            (let _%loop132823%_ ((_%probe132826%_ _%start132819%_)
                                 (_%i132828%_ '1)
                                 (_%deleted132830%_ '#f))
              (let ((_%k132833%_ (vector-ref _%table132807%_ _%probe132826%_)))
                (if (eq? _%k132833%_ (macro-unused-obj))
                    (if _%deleted132830%_
                        (begin
                          (vector-set!
                           _%table132807%_
                           _%deleted132830%_
                           _%key132804%_)
                          (vector-set!
                           _%table132807%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted132830%_ '1))
                           _%value132805%_)
                          ((lambda ()
                             (let ((__tmp139664
                                    (let ((__tmp139665
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab132803%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp139665 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab132803%_
                                __tmp139664)))))
                        (begin
                          (vector-set!
                           _%table132807%_
                           _%probe132826%_
                           _%key132804%_)
                          (vector-set!
                           _%table132807%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe132826%_ '1))
                           _%value132805%_)
                          ((lambda ()
                             (let ((__tmp139666
                                    (let ((__tmp139667
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab132803%_))))
                                      (declare (not safe))
                                      (##fx- __tmp139667 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab132803%_
                                __tmp139666))
                             (let ((__tmp139668
                                    (let ((__tmp139669
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab132803%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp139669 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab132803%_
                                __tmp139668))))))
                    (if (eq? _%k132833%_ (macro-deleted-obj))
                        (_%loop132823%_
                         (let ((_%next-probe132840%_
                                (fx+ _%start132819%_
                                     _%i132828%_
                                     (fx* _%i132828%_ _%i132828%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe132840%_ _%size132813%_))
                         (let () (declare (not safe)) (##fx+ _%i132828%_ '1))
                         (let ((_%$e132843%_ _%deleted132830%_))
                           (if _%$e132843%_ _%$e132843%_ _%probe132826%_)))
                        (if (eq? _%key132804%_ _%k132833%_)
                            (let ()
                              (vector-set!
                               _%table132807%_
                               _%probe132826%_
                               _%key132804%_)
                              (vector-set!
                               _%table132807%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe132826%_ '1))
                               _%value132805%_))
                            (_%loop132823%_
                             (let ((_%next-probe132848%_
                                    (fx+ _%start132819%_
                                         _%i132828%_
                                         (fx* _%i132828%_ _%i132828%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe132848%_
                                _%size132813%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i132828%_ '1))
                             _%deleted132830%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab132799%_ _%key132800%_ _%value132801%_)
        (if (let ((__tmp139672
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab132799%_)))
                  (__tmp139670
                   (let ((__tmp139671
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab132799%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp139671 '4))))
              (declare (not safe))
              (##fx< __tmp139672 __tmp139670))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab132799%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab132799%_
         _%key132800%_
         _%value132801%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab132769%_ _%key132770%_ _%value132771%_)
        (let ((_%lock132774%_
               (let () (declare (not safe)) (&raw-table-lock _%tab132769%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again132779%_ ((_%spin132782%_ '0))
              (if (let ((__tmp139673
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock132774%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp139673 '0))
                  (let ((__tmp139674 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock132774%_ '1 __tmp139674))
                  (if (let () (declare (not safe)) (##fx< _%spin132782%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again132779%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin132782%_ '1))))
                      (let ((_%owner132788%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock132774%_ '1))))
                        (if (eq? _%owner132788%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner132788%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again132779%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r132794%_
                 (method-specializer-table-set!
                  _%tab132769%_
                  _%key132770%_
                  _%value132771%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock132774%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock132774%_ '0 '0 '1))))
            _%$r132794%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab132720%_
               _%key132721%_
               _%method-specializer-table-update!132722%_
               _%default132723%_)
        (let ((_%table132725%_
               (let () (declare (not safe)) (&raw-table-table _%tab132720%_)))
              (_%seed132726%_
               (let () (declare (not safe)) (&raw-table-seed _%tab132720%_))))
          (let* ((_%h132728%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key132721%_))
                         _%seed132726%_))
                 (_%size132731%_ (vector-length _%table132725%_))
                 (_%entries132734%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size132731%_ '2)))
                 (_%start132737%_
                  (let ((__tmp139675
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h132728%_ _%entries132734%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp139675 '1))))
            (let _%loop132741%_ ((_%probe132744%_ _%start132737%_)
                                 (_%i132746%_ '1)
                                 (_%deleted132748%_ '#f))
              (let ((_%k132751%_ (vector-ref _%table132725%_ _%probe132744%_)))
                (if (eq? _%k132751%_ (macro-unused-obj))
                    (if _%deleted132748%_
                        (begin
                          (vector-set!
                           _%table132725%_
                           _%deleted132748%_
                           _%key132721%_)
                          (vector-set!
                           _%table132725%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted132748%_ '1))
                           (_%method-specializer-table-update!132722%_
                            _%default132723%_))
                          ((lambda ()
                             (let ((__tmp139676
                                    (let ((__tmp139677
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab132720%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp139677 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab132720%_
                                __tmp139676)))))
                        (begin
                          (vector-set!
                           _%table132725%_
                           _%probe132744%_
                           _%key132721%_)
                          (vector-set!
                           _%table132725%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe132744%_ '1))
                           (_%method-specializer-table-update!132722%_
                            _%default132723%_))
                          ((lambda ()
                             (let ((__tmp139678
                                    (let ((__tmp139679
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab132720%_))))
                                      (declare (not safe))
                                      (##fx- __tmp139679 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab132720%_
                                __tmp139678))
                             (let ((__tmp139680
                                    (let ((__tmp139681
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab132720%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp139681 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab132720%_
                                __tmp139680))))))
                    (if (eq? _%k132751%_ (macro-deleted-obj))
                        (_%loop132741%_
                         (let ((_%next-probe132758%_
                                (fx+ _%start132737%_
                                     _%i132746%_
                                     (fx* _%i132746%_ _%i132746%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe132758%_ _%size132731%_))
                         (let () (declare (not safe)) (##fx+ _%i132746%_ '1))
                         (let ((_%$e132761%_ _%deleted132748%_))
                           (if _%$e132761%_ _%$e132761%_ _%probe132744%_)))
                        (if (eq? _%key132721%_ _%k132751%_)
                            (let ()
                              (vector-set!
                               _%table132725%_
                               _%probe132744%_
                               _%key132721%_)
                              (vector-set!
                               _%table132725%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe132744%_ '1))
                               (_%method-specializer-table-update!132722%_
                                (vector-ref
                                 _%table132725%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe132744%_ '1))))))
                            (_%loop132741%_
                             (let ((_%next-probe132766%_
                                    (fx+ _%start132737%_
                                         _%i132746%_
                                         (fx* _%i132746%_ _%i132746%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe132766%_
                                _%size132731%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i132746%_ '1))
                             _%deleted132748%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab132715%_
               _%key132716%_
               _%method-specializer-table-update!132717%_
               _%default132718%_)
        (if (let ((__tmp139684
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab132715%_)))
                  (__tmp139682
                   (let ((__tmp139683
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab132715%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp139683 '4))))
              (declare (not safe))
              (##fx< __tmp139684 __tmp139682))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab132715%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab132715%_
         _%key132716%_
         _%method-specializer-table-update!132717%_
         _%default132718%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab132684%_
               _%key132685%_
               _%method-specializer-table-update!132686%_
               _%default132687%_)
        (let ((_%lock132690%_
               (let () (declare (not safe)) (&raw-table-lock _%tab132684%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again132695%_ ((_%spin132698%_ '0))
              (if (let ((__tmp139685
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock132690%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp139685 '0))
                  (let ((__tmp139686 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock132690%_ '1 __tmp139686))
                  (if (let () (declare (not safe)) (##fx< _%spin132698%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again132695%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin132698%_ '1))))
                      (let ((_%owner132704%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock132690%_ '1))))
                        (if (eq? _%owner132704%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner132704%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again132695%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r132710%_
                 (_%method-specializer-table-update!132686%_
                  _%tab132684%_
                  _%key132685%_
                  _%method-specializer-table-update!132686%_
                  _%default132687%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock132690%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock132690%_ '0 '0 '1))))
            _%$r132710%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab132641%_ _%key132642%_)
        (let ((_%table132644%_
               (let () (declare (not safe)) (&raw-table-table _%tab132641%_)))
              (_%seed132646%_
               (let () (declare (not safe)) (&raw-table-seed _%tab132641%_))))
          (let* ((_%h132649%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key132642%_))
                         _%seed132646%_))
                 (_%size132652%_ (vector-length _%table132644%_))
                 (_%entries132655%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size132652%_ '2)))
                 (_%start132658%_
                  (let ((__tmp139687
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h132649%_ _%entries132655%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp139687 '1))))
            (let _%loop132662%_ ((_%probe132665%_ _%start132658%_)
                                 (_%i132667%_ '1))
              (let ((_%k132670%_ (vector-ref _%table132644%_ _%probe132665%_)))
                (if (eq? _%k132670%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k132670%_ (macro-deleted-obj))
                        (_%loop132662%_
                         (let ((_%next-probe132675%_
                                (fx+ _%start132658%_
                                     _%i132667%_
                                     (fx* _%i132667%_ _%i132667%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe132675%_ _%size132652%_))
                         (let () (declare (not safe)) (##fx+ _%i132667%_ '1)))
                        (if (eq? _%key132642%_ _%k132670%_)
                            (let ()
                              (vector-set!
                               _%table132644%_
                               _%probe132665%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table132644%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe132665%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp139688
                                        (let ((__tmp139689
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab132641%_))))
                                          (declare (not safe))
                                          (##fx- __tmp139689 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab132641%_
                                    __tmp139688)))))
                            (_%loop132662%_
                             (let ((_%next-probe132681%_
                                    (fx+ _%start132658%_
                                         _%i132667%_
                                         (fx* _%i132667%_ _%i132667%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe132681%_
                                _%size132652%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i132667%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab132611%_ _%key132613%_)
        (let ((_%lock132616%_
               (let () (declare (not safe)) (&raw-table-lock _%tab132611%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again132621%_ ((_%spin132624%_ '0))
              (if (let ((__tmp139690
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock132616%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp139690 '0))
                  (let ((__tmp139691 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock132616%_ '1 __tmp139691))
                  (if (let () (declare (not safe)) (##fx< _%spin132624%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again132621%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin132624%_ '1))))
                      (let ((_%owner132630%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock132616%_ '1))))
                        (if (eq? _%owner132630%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner132630%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again132621%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r132636%_
                 (method-specializer-table-delete!
                  _%tab132611%_
                  _%key132613%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock132616%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock132616%_ '0 '0 '1))))
            _%$r132636%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc132608%_ _%specializer132609%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc132608%_
         _%specializer132609%_)))
    (define __lookup-method-specializer
      (lambda (_%proc132606%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc132606%_
         '#f)))
    (define __specialize-class
      (lambda (_%klass132588%_)
        (let* ((_%klass132591%_ _%klass132588%_)
               (_%$e132600%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass132591%_ '12 '#f '#f))))
          (if _%$e132600%_
              _%$e132600%_
              (let ((_%method-table132604%_
                     (___specialize-class _%klass132591%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass132591%_
                   _%method-table132604%_
                   '12
                   '#f
                   '#f))
                _%method-table132604%_)))))
    (define specialize-class
      (lambda (_%klass130120%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass130120%_ 'class))
            (let ((_%klass130124%_ _%klass130120%_))
              (__specialize-class _%klass130124%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1078.25-1078.30"
               'contract:
               'class-type?
               'value:
               _%klass130120%_)
              '#!void))))
    (define __specialize-method
      (lambda (_%klass132572%_
               _%method-table132573%_
               _%method132574%_
               _%proc132575%_)
        (let ((_%$e132577%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table132573%_
                  _%method132574%_
                  '#f))))
          (if _%$e132577%_
              _%$e132577%_
              (let ((_%$e132580%_
                     (__lookup-method-specializer _%proc132575%_)))
                (if _%$e132580%_
                    ((lambda (_%specialize132583%_)
                       (let ((_%specialized-proc132585%_
                              (_%specialize132583%_
                               _%klass132572%_
                               _%method-table132573%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table132573%_
                          _%method132574%_
                          _%specialized-proc132585%_)))
                     _%$e132580%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table132573%_
                       _%method132574%_
                       _%proc132575%_))))))))
    (define ___specialize-class
      (lambda (_%klass132439%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass132439%_ 'class))
            (if (let* ((_%klass132442%_ _%klass132439%_)
                       (_%klass132447%_ _%klass132442%_))
                  (__class-type-metaclass? _%klass132447%_))
                (let* ((_%obj132459%_ _%klass132439%_)
                       (_%id132462%_ 'specialize-class)
                       (_%args132465%_ '())
                       (_%id132470%_ _%id132462%_))
                  (declare (not safe))
                  (##apply __call-method
                           _%obj132459%_
                           _%id132470%_
                           _%args132465%_))
                (if (let* ((_%pred132483%_ class-type-metaclass?)
                           (_%lst132486%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass132439%_
                               '6
                               '#f
                               '#f)))
                           (_%pred132491%_ _%pred132483%_))
                      (declare (not safe))
                      (__find _%pred132491%_ _%lst132486%_))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass132439%_)
                    (let ((_%method-table132504%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop132506%_ ((_%rest132508%_
                                            (let* ((_%klass132555%_
                                                    _%klass132439%_)
                                                   (_%klass132560%_
                                                    _%klass132555%_))
                                              (__class-precedence-list
                                               _%klass132560%_))))
                        (let* ((_%rest132509132517%_ _%rest132508%_)
                               (_%else132511132525%_
                                (lambda () _%method-table132504%_))
                               (_%K132513132543%_
                                (lambda (_%rest132528%_ _%xklass132529%_)
                                  (let ((_%xmethod-table132530132532%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass132529%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table132530132532%_
                                        (let* ((_%xmethod-table132534%_
                                                _%xmethod-table132530132532%_)
                                               (__tmp139692
                                                (lambda (_%g132535132538%_
                                                         _%g132536132540%_)
                                                  (__specialize-method
                                                   _%klass132439%_
                                                   _%method-table132504%_
                                                   _%g132535132538%_
                                                   _%g132536132540%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table132534%_
                                           __tmp139692))
                                        '#f))
                                  (_%loop132506%_ _%rest132528%_))))
                          (if (pair? _%rest132509132517%_)
                              (let ((_%hd132514132546%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest132509132517%_)))
                                    (_%tl132515132548%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest132509132517%_))))
                                (let* ((_%xklass132551%_ _%hd132514132546%_)
                                       (_%rest132553%_ _%tl132515132548%_))
                                  (_%K132513132543%_
                                   _%rest132553%_
                                   _%xklass132551%_)))
                              (_%else132511132525%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass132439%_))
                (__specialize-class (__shadow-class__0 _%klass132439%_))
                (error '"bad class; cannot specialize" _%klass132439%_)))))
    (define __seal-class!
      (lambda (_%klass132302%_)
        (let ((_%klass132305%_ _%klass132302%_))
          (if (let* ((_%klass132314%_ _%klass132305%_)
                     (_%klass132319%_ _%klass132314%_))
                (__class-type-sealed? _%klass132319%_))
              '#!void
              (begin
                (if (let* ((_%klass132332%_ _%klass132305%_)
                           (_%klass132337%_ _%klass132332%_))
                      (__class-type-metaclass? _%klass132337%_))
                    (let ()
                      (let* ((_%obj132348%_ _%klass132305%_)
                             (_%id132351%_ 'seal-class!)
                             (_%args132354%_ '())
                             (_%id132359%_ _%id132351%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj132348%_
                                 _%id132359%_
                                 _%args132354%_))
                      (let* ((_%klass132372%_ _%klass132305%_)
                             (_%klass132377%_ _%klass132372%_))
                        (__specialize-class _%klass132377%_)))
                    (if (let* ((_%pred132387%_ class-type-metaclass?)
                               (_%lst132390%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass132305%_
                                   '6
                                   '#f
                                   '#f)))
                               (_%pred132395%_ _%pred132387%_))
                          (declare (not safe))
                          (__find _%pred132395%_ _%lst132390%_))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass132305%_)
                        (let* ((_%klass132408%_ _%klass132305%_)
                               (_%klass132413%_ _%klass132408%_))
                          (__specialize-class _%klass132413%_))))
                (let* ((_%klass132424%_ _%klass132305%_)
                       (_%klass132429%_ _%klass132424%_))
                  (__class-type-seal! _%klass132429%_)))))))
    (define seal-class!
      (lambda (_%klass130254%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass130254%_ 'class))
            (let ((_%klass130258%_ _%klass130254%_))
              (__seal-class! _%klass130258%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1124.20-1124.25"
               'contract:
               'class-type?
               'value:
               _%klass130254%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass132190%_ _%obj132191%_ _%id132192%_)
        (let* ((_%subklass132195%_ _%subklass132190%_)
               (_%id132203%_ _%id132192%_))
          (letrec ((_%find-next-method132212%_
                    (lambda (_%klass132214%_)
                      (let _%lp132216%_ ((_%rest132218%_
                                          (let ((_%klass132287%_
                                                 _%klass132214%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%klass132287%_
                                                   'class))
                                                (let ((_%klass132292%_
                                                       _%klass132287%_))
                                                  (__class-precedence-list
                                                   _%klass132292%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/mop
                                                   'contract:
                                                   'class-type?
                                                   'value:
                                                   _%klass132287%_)
                                                  '#!void)))))
                        (let* ((_%rest132219132227%_ _%rest132218%_)
                               (_%else132221132235%_ (lambda () '#f))
                               (_%K132223132275%_
                                (lambda (_%rest132238%_ _%klass132239%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass132195%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass132239%_)))
                                      (let* ((_%mixins132241%_ _%rest132238%_)
                                             (_%obj132244%_ _%obj132191%_)
                                             (_%id132247%_ _%id132203%_)
                                             (_%id132252%_ _%id132247%_))
                                        (__mixin-find-method
                                         _%mixins132241%_
                                         _%obj132244%_
                                         _%id132252%_))
                                      (_%lp132216%_ _%rest132238%_)))))
                          (if (pair? _%rest132219132227%_)
                              (let ((_%hd132224132278%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest132219132227%_)))
                                    (_%tl132225132280%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest132219132227%_))))
                                (let* ((_%klass132283%_ _%hd132224132278%_)
                                       (_%rest132285%_ _%tl132225132280%_))
                                  (_%K132223132275%_
                                   _%rest132285%_
                                   _%klass132283%_)))
                              (_%else132221132235%_)))))))
            (_%find-next-method132212%_ (class-of _%obj132191%_))))))
    (define next-method
      (lambda (_%subklass130388%_ _%obj130389%_ _%id130390%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass130388%_ 'class))
            (let ((_%subklass130394%_ _%subklass130388%_))
              (if (symbol? _%id130390%_)
                  (let ((_%id130404%_ _%id130390%_))
                    (__next-method
                     _%subklass130394%_
                     _%obj130389%_
                     _%id130404%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1146.44-1146.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id130390%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1146.20-1146.28"
               'contract:
               'class-type?
               'value:
               _%subklass130388%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass132125%_ _%obj132126%_ _%id132127%_ . _%args132128%_)
        (let* ((_%subklass132131%_ _%subklass132125%_)
               (_%id132139%_ _%id132127%_)
               (_%$e132184%_
                (let* ((_%subklass132148%_ _%subklass132131%_)
                       (_%obj132151%_ _%obj132126%_)
                       (_%id132154%_ _%id132139%_)
                       (_%subklass132159%_ _%subklass132148%_)
                       (_%id132174%_ _%id132154%_))
                  (__next-method
                   _%subklass132159%_
                   _%obj132151%_
                   _%id132174%_))))
          (if _%$e132184%_
              ((lambda (_%methodf132187%_)
                 (apply _%methodf132187%_ _%obj132126%_ _%args132128%_))
               _%$e132184%_)
              (error '"cannot find next method"
                     'object:
                     _%obj132126%_
                     'method:
                     _%id132139%_)))))
    (define call-next-method
      (lambda (_%subklass130534%_ _%obj130535%_ _%id130536%_ . _%args130537%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass130534%_ 'class))
            (let ((_%subklass130541%_ _%subklass130534%_))
              (if (symbol? _%id130536%_)
                  (let ((_%id130551%_ _%id130536%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass130541%_
                             _%obj130535%_
                             _%id130551%_
                             _%args130537%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1157.49-1157.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id130536%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1157.25-1157.33"
               'contract:
               'class-type?
               'value:
               _%subklass130534%_)
              '#!void))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type131904%_ _%properties131905%_)
        (letrec ((_%shadow-type-id131907%_
                  (lambda (_%type132113%_)
                    (let ((__tmp139693
                           (let ()
                             (declare (not safe))
                             (##type-name _%type132113%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp139693 '"::t"))))
                 (_%shadow-type-name131908%_
                  (lambda (_%type132111%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type132111%_))))
                 (_%make-shadow-class131909%_
                  (lambda (_%type131993%_ _%precedence-list131994%_)
                    (let* ((_%super131996%_
                            (if (pair? _%precedence-list131994%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list131994%_))
                                      '())
                                '()))
                           (_%klass132108%_
                            (let* ((_%id131998%_
                                    (_%shadow-type-id131907%_ _%type131993%_))
                                   (_%name132001%_
                                    (let ()
                                      (declare (not safe))
                                      (##type-name _%type131993%_)))
                                   (_%direct-supers132004%_ _%super131996%_)
                                   (_%direct-slots132007%_ '())
                                   (_%properties132033%_
                                    (cons (cons 'struct: '#t)
                                          (cons (cons 'system: '#t)
                                                (cons (cons 'system-type:
                                                            _%type131993%_)
                                                      (let ((__tmp139694
                                                             (if (let ((_%type132010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%type131993%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##type? _%type132010%_))
                               (let ((_%type132015%_ _%type132010%_))
                                 (__type-extensible? _%type132015%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  '##type?
                                  'value:
                                  _%type132010%_)
                                 '#!void)))
                         '()
                         (cons (cons 'final: '#t) '()))))
                (declare (not safe))
                (foldr__0 cons _%properties131905%_ __tmp139694))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%constructor132036%_ '#f)
                                   (_%id132041%_ _%id131998%_))
                              (if (symbol? _%name132001%_)
                                  (let* ((_%name132052%_ _%name132001%_)
                                         (_%direct-supers132062%_
                                          _%direct-supers132004%_)
                                         (_%direct-slots132072%_
                                          _%direct-slots132007%_)
                                         (_%properties132082%_
                                          _%properties132033%_))
                                    (if ((lambda (_%$obj132091%_)
                                           (or (not _%$obj132091%_)
                                               (symbol? _%$obj132091%_)))
                                         _%constructor132036%_)
                                        (let ((_%constructor132098%_
                                               _%constructor132036%_))
                                          (__make-class-type
                                           _%id132041%_
                                           _%name132052%_
                                           _%direct-supers132062%_
                                           _%direct-slots132072%_
                                           _%properties132082%_
                                           _%constructor132098%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '(? (or not symbol?))
                                           'value:
                                           _%constructor132036%_)
                                          '#!void)))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     'symbol?
                                     'value:
                                     _%name132001%_)
                                    '#!void)))))
                      (let ((__tmp139695
                             (let ()
                               (declare (not safe))
                               (##type-id _%type131993%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp139695
                         _%klass132108%_))
                      _%klass132108%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again131913%_ ((_%spin131916%_ '0))
              (if (let ((__tmp139696
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp139696 '0))
                  (let ((__tmp139697 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp139697))
                  (if (let () (declare (not safe)) (##fx< _%spin131916%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again131913%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin131916%_ '1))))
                      (let ((_%owner131922%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner131922%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner131922%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again131913%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e131928%_
                 (let ((__tmp139698
                        (let ()
                          (declare (not safe))
                          (##type-id _%type131904%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp139698 '#f))))
            (if _%$e131928%_
                ((lambda (_%klass131931%_)
                   (let ()
                     (declare (not interrupts-enabled))
                     (begin
                       (let ()
                         (declare (not safe))
                         (##vector-set! __shadow-classes-lock '1 '#f))
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __shadow-classes-lock '0 '0 '1))))
                   _%klass131931%_)
                 _%$e131928%_)
                (let _%loop131936%_ ((_%super131938%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type131904%_)))
                                     (_%hierarchy131939%_ '()))
                  (if (not _%super131938%_)
                      (let _%loop131942%_ ((_%rest131944%_ _%hierarchy131939%_)
                                           (_%precedence-list131945%_ '()))
                        (let* ((_%rest131946131954%_ _%rest131944%_)
                               (_%else131948131966%_
                                (lambda ()
                                  (let ((_%klass131962%_
                                         (_%make-shadow-class131909%_
                                          _%type131904%_
                                          _%precedence-list131945%_)))
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
                                    _%klass131962%_)))
                               (_%K131950131980%_
                                (lambda (_%rest131969%_ _%type131970%_)
                                  (let ((_%$e131972%_
                                         (let ((__tmp139699
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type131970%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp139699
                                            '#f))))
                                    (if _%$e131972%_
                                        ((lambda (_%klass131975%_)
                                           (_%loop131942%_
                                            _%rest131969%_
                                            (cons _%klass131975%_
                                                  _%precedence-list131945%_)))
                                         _%$e131972%_)
                                        (let ((_%klass131978%_
                                               (_%make-shadow-class131909%_
                                                _%type131970%_
                                                _%precedence-list131945%_)))
                                          (_%loop131942%_
                                           _%rest131969%_
                                           (cons _%klass131978%_
                                                 _%precedence-list131945%_))))))))
                          (if (pair? _%rest131946131954%_)
                              (let ((_%hd131951131983%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest131946131954%_)))
                                    (_%tl131952131985%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest131946131954%_))))
                                (let* ((_%type131988%_ _%hd131951131983%_)
                                       (_%rest131990%_ _%tl131952131985%_))
                                  (_%K131950131980%_
                                   _%rest131990%_
                                   _%type131988%_)))
                              (_%else131948131966%_))))
                      (_%loop131936%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super131938%_))
                       (cons _%super131938%_ _%hierarchy131939%_)))))))))
    (define __shadow-class__0
      (lambda (_%type132118%_)
        (let ((_%properties132120%_ '()))
          (__shadow-class__% _%type132118%_ _%properties132120%_))))
    (define __shadow-class
      (lambda _g139700_
        (let ((_g139701_ (let () (declare (not safe)) (##length _g139700_))))
          (cond ((let () (declare (not safe)) (##fx= _g139701_ 1))
                 (apply __shadow-class__0 _g139700_))
                ((let () (declare (not safe)) (##fx= _g139701_ 2))
                 (apply __shadow-class__% _g139700_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g139700_))))))
    (define __type
      (let* ((_%tb131892%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e131894%_ _%tb131892%_))
        (if (eq? '2 _%$e131894%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e131894%_)
                (let ((_%flonum-self-tagging-tags131897%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits131898%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e131900%_ _%flonum-self-tagging-tags131897%_))
                    (if (eq? '0 _%$e131900%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits131898%_ '2))
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
                        (if (eq? '1 _%$e131900%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits131898%_ '2))
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
                            (if (eq? '2 _%$e131900%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e131900%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e131900%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags131897%_))))))))
                (error '"unexpected tag width" _%tb131892%_)))))
    (define __primitive-class
      (let ((__tmp139702 (vector-length __type)))
        (declare (not safe))
        (##make-vector __tmp139702 '#f)))
    (define __boxvalues-class
      (let () (declare (not safe)) (##make-vector '2 '#f)))
    (define __subtype-class
      (let () (declare (not safe)) (##make-vector '32 '#f)))
    (define __char-class '#f)
    (define __special-class
      (let () (declare (not safe)) (##make-vector '16 '#f)))
    (define __class-of
      (let* ((_%len131782%_ (vector-length __type))
             (_%cv131784%_
              (let () (declare (not safe)) (##make-vector _%len131782%_ '#f))))
        (let _%loop131787%_ ((_%i131789%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i131789%_ _%len131782%_))
              (let* ((_%t131791%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i131789%_)))
                     (_%f131889%_
                      (if (eq? _%t131791%_ 'undefined)
                          (lambda (_%obj131794%_)
                            (error '"object type is undefined" _%obj131794%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t131791%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj131797%_)
                                (declare (not interrupts-enabled) (not safe))
                                (let ((_%$e131800%_
                                       (##vector-ref
                                        __primitive-class
                                        _%i131789%_)))
                                  (if _%$e131800%_
                                      _%$e131800%_
                                      (let ((_%klass131804%_
                                             (__system-class _%t131791%_)))
                                        (##vector-set!
                                         __primitive-class
                                         _%i131789%_
                                         _%klass131804%_)
                                        _%klass131804%_))))
                              (if (eq? _%t131791%_ 'subtyped)
                                  (lambda (_%obj131808%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st131811%_
                                           (##subtype _%obj131808%_)))
                                      (if (##fx= _%st131811%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass131814%_
                                                 (##structure-type
                                                  _%obj131808%_)))
                                            (if (##structure-instance-of?
                                                 _%klass131814%_
                                                 'class)
                                                _%klass131814%_
                                                (__shadow-class__0
                                                 _%klass131814%_)))
                                          (if (##fx= _%st131811%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj131808%_)
                                                         '1)
                                                  (let ((_%$e131817%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '0)))
                                                    (if _%$e131817%_
                                                        _%$e131817%_
                                                        (let ((_%klass131821%_
                                                               (__system-class
                                                                'box)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '0
                                                           _%klass131821%_)
                                                          _%klass131821%_)))
                                                  (let ((_%$e131824%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '1)))
                                                    (if _%$e131824%_
                                                        _%$e131824%_
                                                        (let ((_%klass131828%_
                                                               (__system-class
                                                                'values)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '1
                                                           _%klass131828%_)
                                                          _%klass131828%_))))
                                              (let ((_%$e131831%_
                                                     (##vector-ref
                                                      __subtype-class
                                                      _%st131811%_)))
                                                (if _%$e131831%_
                                                    _%$e131831%_
                                                    (let ((_%klass131848%_
                                                           (let ((_%$e131835%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##vector-ref __subtype-id _%st131811%_)))
                     (if _%$e131835%_
                         ((lambda (_%subtype-t131838%_)
                            (let ((_%$e131840%_
                                   (##vector-ref
                                    __subtype-class
                                    _%st131811%_)))
                              (if _%$e131840%_
                                  _%$e131840%_
                                  (let ((_%klass131844%_
                                         (__system-class _%subtype-t131838%_)))
                                    (##vector-set!
                                     __subtype-class
                                     _%st131811%_
                                     _%klass131844%_)
                                    _%klass131844%_))))
                          _%$e131835%_)
                         (error '"unknown class"
                                'object:
                                _%obj131808%_
                                'subtype:
                                _%st131811%_)))))
              (##vector-set! __subtype-class _%st131811%_ _%klass131848%_)
              _%klass131848%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (eq? _%t131791%_ 'special)
                                      (lambda (_%obj131852%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (let ((_%x131855%_
                                               (##type-cast _%obj131852%_ '0)))
                                          (if (##fx> _%x131855%_ '0)
                                              (let ((_%$e131858%_
                                                     __char-class))
                                                (if _%$e131858%_
                                                    _%$e131858%_
                                                    (let ((_%klass131862%_
                                                           (__system-class
                                                            'char)))
                                                      (set! __char-class
                                                            _%klass131862%_)
                                                      _%klass131862%_)))
                                              (let* ((_%t131865%_
                                                      (##fx- _%x131855%_))
                                                     (_%$e131868%_
                                                      (##vector-ref
                                                       __special-class
                                                       _%t131865%_)))
                                                (if _%$e131868%_
                                                    _%$e131868%_
                                                    (let ((_%klass131886%_
                                                           (if (eq? _%obj131852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                       (__system-class 'null)
                       (if (eq? _%obj131852%_ '#f)
                           (__system-class 'false)
                           (if (eq? _%obj131852%_ '#t)
                               (__system-class 'true)
                               (if (eq? _%obj131852%_ '#!void)
                                   (__system-class 'void)
                                   (if (eq? _%obj131852%_ '#!eof)
                                       (__system-class 'eof)
                                       (if (eq? _%obj131852%_ '#!unbound)
                                           (__system-class 'unbound)
                                           (if (eq? _%obj131852%_ '#!unbound2)
                                               (__system-class 'unbound2)
                                               (if (eq? _%obj131852%_
                                                        '#!optional)
                                                   (__system-class 'optional)
                                                   (if (eq? _%obj131852%_
                                                            '#!rest)
                                                       (__system-class 'rest)
                                                       (if (eq? _%obj131852%_
                                                                '#!key)
                                                           (__system-class
                                                            'key)
                                                           (if (eq? _%obj131852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (macro-unused-obj))
                       (__system-class 'unused)
                       (if (eq? _%obj131852%_ (macro-deleted-obj))
                           (__system-class 'deleted)
                           (if (eq? _%obj131852%_ (macro-absent-obj))
                               (__system-class 'absent)
                               (__system-class 'unknown))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (##vector-set! __special-class _%t131865%_ _%klass131886%_)
              _%klass131886%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t131791%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv131784%_ _%i131789%_ _%f131889%_))
                (_%loop131787%_
                 (let () (declare (not safe)) (##fx+ _%i131789%_ '1))))
              _%cv131784%_))))
    (define type-of
      (lambda (_%obj131778%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj131778%_)))))
    (define class-of
      (lambda (_%obj131769%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t131773%_ (##type _%obj131769%_))
                 (_%f131775%_ (##vector-ref __class-of _%t131773%_)))
            (_%f131775%_ _%obj131769%_)))))
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
      (lambda (_%id131763%_)
        (let ((_%$e131765%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id131763%_ '#f))))
          (if _%$e131765%_
              _%$e131765%_
              (error '"unknown system class" _%id131763%_)))))
    (define __make-system-class
      (lambda (_%id131665%_ _%super131666%_ _%properties131667%_)
        (let ((_%klass131761%_
               (let* ((_%id131669%_ _%id131665%_)
                      (_%name131672%_ _%id131665%_)
                      (_%direct-supers131675%_ _%super131666%_)
                      (_%direct-slots131678%_ '())
                      (_%properties131681%_
                       (cons (cons 'system: '#t)
                             (let ()
                               (declare (not safe))
                               (foldr__0 cons '() _%properties131667%_))))
                      (_%constructor131684%_ '#f))
                 (if (symbol? _%id131669%_)
                     (let ((_%id131689%_ _%id131669%_))
                       (if (symbol? _%name131672%_)
                           (let ((_%name131705%_ _%name131672%_))
                             (if (list? _%direct-supers131675%_)
                                 (let* ((_%direct-supers131715%_
                                         _%direct-supers131675%_)
                                        (_%direct-slots131725%_
                                         _%direct-slots131678%_)
                                        (_%properties131735%_
                                         _%properties131681%_))
                                   (if ((lambda (_%$obj131744%_)
                                          (or (not _%$obj131744%_)
                                              (symbol? _%$obj131744%_)))
                                        _%constructor131684%_)
                                       (let ((_%constructor131751%_
                                              _%constructor131684%_))
                                         (__make-class-type
                                          _%id131689%_
                                          _%name131705%_
                                          _%direct-supers131715%_
                                          _%direct-slots131725%_
                                          _%properties131735%_
                                          _%constructor131751%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          '(? (or not symbol?))
                                          'value:
                                          _%constructor131684%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'list?
                                    'value:
                                    _%direct-supers131675%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'symbol?
                              'value:
                              _%name131672%_)
                             '#!void)))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id131669%_)
                       '#!void)))))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id131665%_
             _%klass131761%_))
          _%klass131761%_)))))
