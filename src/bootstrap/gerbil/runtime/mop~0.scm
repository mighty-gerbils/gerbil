(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1770505711)
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
      (let ((_%flags132672%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties132673%_ '((direct-slots:) (system: . #t)))
            (_%slot-table132674%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags132672%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table132674%_
           _%properties132673%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots132629%_
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
             (_%slot-vector132631%_ (list->vector (cons '#f _%slots132629%_)))
             (_%slot-table132657%_
              (let ((_%slot-table132633%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp135699
                       (lambda (_%slot132635%_ _%field132636%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table132633%_
                            _%slot132635%_
                            _%field132636%_))
                         (let ((__tmp135700
                                (let ((_%sym132638%_ _%slot132635%_))
                                  (if (symbol? _%sym132638%_)
                                      (let ((_%sym132643%_ _%sym132638%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym132643%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym132638%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table132633%_
                            __tmp135700
                            _%field132636%_))))
                      (__tmp135697
                       (let ((__tmp135698
                              (let ()
                                (declare (not safe))
                                (##length _%slots132629%_))))
                         (declare (not safe))
                         (##iota __tmp135698 '1))))
                  (declare (not safe))
                  (##for-each __tmp135699 _%slots132629%_ __tmp135697))
                _%slot-table132633%_))
             (_%flags132659%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields132665%_
              (list->vector
               (let ((__tmp135701
                      (map (lambda (_%g132660132662%_)
                             (list _%g132660132662%_ '5 '#f))
                           (drop _%slots132629%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp135701))))
             (_%properties132667%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots132629%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t132669%_
              (let ((__tmp135702 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags132659%_
                 ##type-type
                 _%fields132665%_
                 __tmp135702
                 _%slot-vector132631%_
                 _%slot-table132657%_
                 _%properties132667%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t132669%_ _%t132669%_))
        _%t132669%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags132625%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties132626%_ '((direct-slots:) (system: . #t)))
            (_%slot-table132627%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp135703 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags132625%_
           '#f
           '#()
           __tmp135703
           '#(#f)
           _%slot-table132627%_
           _%properties132626%_
           '#f
           '#f
           '#f
           '#f))))
    (define __class-type
      (lambda (_%klass132613%_)
        (let ((_%klass132616%_ _%klass132613%_))
          (declare (not safe))
          (##structure-type _%klass132616%_))))
    (define class-type
      (lambda (_%klass118617%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass118617%_ 'class))
            (let ((_%klass118621%_ _%klass118617%_))
              (__class-type _%klass118621%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass118617%_)
              '#!void))))
    (define class-type?
      (lambda (_%obj132611%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj132611%_ 'class))))
    (define __class-type=?
      (lambda (_%x132590%_ _%y132591%_)
        (let* ((_%x132594%_ _%x132590%_) (_%y132602%_ _%y132591%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x132594%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y132602%_ '1 '#f '#f))))))
    (define class-type=?
      (lambda (_%x118751%_ _%y118752%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x118751%_ 'class))
            (let ((_%x118756%_ _%x118751%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y118752%_ 'class))
                  (let ((_%y118766%_ _%y118752%_))
                    (__class-type=? _%x118756%_ _%y118766%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y118752%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x118751%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type132578%_)
        (let* ((_%type132581%_ _%type132578%_)
               (__tmp135704
                (let ((__tmp135705
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type132581%_))))
                  (declare (not safe))
                  (##fxand __tmp135705 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp135704 type-flag-opaque))))
    (define type-opaque?
      (lambda (_%type119198%_)
        (if (let () (declare (not safe)) (##type? _%type119198%_))
            (let ((_%type119202%_ _%type119198%_))
              (__type-opaque? _%type119202%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type119198%_)
              '#!void))))
    (define __class-type-opaque?
      (lambda (_%klass132566%_)
        (let* ((_%klass132569%_ _%klass132566%_)
               (__tmp135706
                (let ((__tmp135707
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass132569%_))))
                  (declare (not safe))
                  (##fxand __tmp135707 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp135706 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass119332%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass119332%_ 'class))
            (let ((_%klass119336%_ _%klass119332%_))
              (__class-type-opaque? _%klass119336%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass119332%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type132554%_)
        (let* ((_%type132557%_ _%type132554%_)
               (__tmp135708
                (let ((__tmp135709
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type132557%_))))
                  (declare (not safe))
                  (##fxand __tmp135709 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp135708 type-flag-extensible))))
    (define type-extensible?
      (lambda (_%type119466%_)
        (if (let () (declare (not safe)) (##type? _%type119466%_))
            (let ((_%type119470%_ _%type119466%_))
              (__type-extensible? _%type119470%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type119466%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type132542%_)
        (let* ((_%type132545%_ _%type132542%_)
               (__tmp135710
                (let ((__tmp135711
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type132545%_))))
                  (declare (not safe))
                  (##fxand __tmp135711 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp135710 '0))))
    (define class-type-final?
      (lambda (_%type119600%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type119600%_ 'class))
            (let ((_%type119604%_ _%type119600%_))
              (__class-type-final? _%type119604%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type119600%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass132530%_)
        (let* ((_%klass132533%_ _%klass132530%_)
               (__tmp135712
                (let ((__tmp135713
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass132533%_))))
                  (declare (not safe))
                  (##fxand __tmp135713 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp135712 class-type-flag-struct))))
    (define class-type-struct?
      (lambda (_%klass119734%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass119734%_ 'class))
            (let ((_%klass119738%_ _%klass119734%_))
              (__class-type-struct? _%klass119738%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass119734%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass132518%_)
        (let* ((_%klass132521%_ _%klass132518%_)
               (__tmp135714
                (let ((__tmp135715
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass132521%_))))
                  (declare (not safe))
                  (##fxand __tmp135715 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp135714 class-type-flag-sealed))))
    (define class-type-sealed?
      (lambda (_%klass119868%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass119868%_ 'class))
            (let ((_%klass119872%_ _%klass119868%_))
              (__class-type-sealed? _%klass119872%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass119868%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass132506%_)
        (let* ((_%klass132509%_ _%klass132506%_)
               (__tmp135716
                (let ((__tmp135717
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass132509%_))))
                  (declare (not safe))
                  (##fxand __tmp135717 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp135716 class-type-flag-metaclass))))
    (define class-type-metaclass?
      (lambda (_%klass120002%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass120002%_ 'class))
            (let ((_%klass120006%_ _%klass120002%_))
              (__class-type-metaclass? _%klass120006%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass120002%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass132494%_)
        (let* ((_%klass132497%_ _%klass132494%_)
               (__tmp135718
                (let ((__tmp135719
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass132497%_))))
                  (declare (not safe))
                  (##fxand __tmp135719 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp135718 class-type-flag-system))))
    (define class-type-system?
      (lambda (_%klass120136%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass120136%_ 'class))
            (let ((_%klass120140%_ _%klass120136%_))
              (__class-type-system? _%klass120140%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass120136%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass132482%_)
        (let* ((_%klass132485%_ _%klass132482%_)
               (__tmp135720
                (let ((__tmp135721
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass132485%_))))
                  (declare (not safe))
                  (##fxand __tmp135721 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp135720 class-type-flag-acyclic))))
    (define class-type-acyclic?
      (lambda (_%klass120270%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass120270%_ 'class))
            (let ((_%klass120274%_ _%klass120270%_))
              (__class-type-acyclic? _%klass120274%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass120270%_)
              '#!void))))
    (define make-class-type-descriptor
      (lambda (_%type-id132289%_
               _%type-name132290%_
               _%type-super132291%_
               _%precedence-list132292%_
               _%slot-vector132293%_
               _%properties132294%_
               _%constructor132295%_
               _%slot-table132296%_
               _%methods132297%_)
        (letrec ((_%make-props!132300%_
                  (lambda (_%key132432%_)
                    (letrec* ((_%ht132434%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!132435%_
                               (lambda (_%ht132475%_ _%slots132476%_)
                                 (for-each
                                  (lambda (_%g132477132479%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht132475%_
                                       _%g132477132479%_
                                       '#t)))
                                  _%slots132476%_)))
                              (_%put-alist!132436%_
                               (lambda (_%ht132464%_
                                        _%key132465%_
                                        _%alist132466%_)
                                 (let ((_%$e132468%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key132465%_
                                           _%alist132466%_))))
                                   (if _%$e132468%_
                                       ((lambda (_%g132470132472%_)
                                          (_%put-slots!132435%_
                                           _%ht132464%_
                                           _%g132470132472%_))
                                        _%$e132468%_)
                                       '#!void)))))
                      (_%put-alist!132436%_
                       _%ht132434%_
                       _%key132432%_
                       _%properties132294%_)
                      (for-each
                       (lambda (_%mixin132438%_)
                         (let ((_%alist132440%_
                                (##structure-ref
                                 _%mixin132438%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist132440%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key132432%_
                                           _%alist132440%_))))
                               (_%put-slots!132435%_
                                _%ht132434%_
                                (let ((_%klass132445%_ _%mixin132438%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass132445%_
                                         'class))
                                      (let ((_%klass132450%_ _%klass132445%_))
                                        (__class-type-slot-list
                                         _%klass132450%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass132445%_)
                                        '#!void))))
                               (_%put-alist!132436%_
                                _%ht132434%_
                                _%key132432%_
                                _%alist132440%_))))
                       _%precedence-list132292%_)
                      _%ht132434%_))))
          (let* ((_%transparent?132302%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties132294%_)))
                 (_%all-slots-printable?132307%_
                  (let ((_%$e132304%_ _%transparent?132302%_))
                    (if _%$e132304%_
                        _%$e132304%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties132294%_))))))
                 (_%printable132309%_
                  (if (not _%all-slots-printable?132307%_)
                      (_%make-props!132300%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?132314%_
                  (let ((_%$e132311%_ _%transparent?132302%_))
                    (if _%$e132311%_
                        _%$e132311%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties132294%_))))))
                 (_%equalable132316%_
                  (if (not _%all-slots-equalable?132314%_)
                      (_%make-props!132300%_ 'equal:)
                      '#f))
                 (_%first-new-field132318%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super132291%_ 'class))
                      (let ((__tmp135722
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super132291%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp135722))
                      '1))
                 (_%field-info-length132320%_
                  (let ((__tmp135723
                         (let ((__tmp135724
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector132293%_))))
                           (declare (not safe))
                           (##fx- __tmp135724 _%first-new-field132318%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp135723)))
                 (_%field-info132322%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length132320%_ '#f)))
                 (_%struct?132324%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties132294%_)))
                 (_%final?132326%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties132294%_)))
                 (_%metaclass132333%_
                  (let ((_%metaclass132327132329%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties132294%_))))
                    (if _%metaclass132327132329%_
                        (let ((_%metaclass132331%_ _%metaclass132327132329%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass132331%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id132289%_
                                     'metaclass:
                                     _%metaclass132331%_))
                          _%metaclass132331%_)
                        '#f)))
                 (_%system?132335%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties132294%_)))
                 (_%opaque?132374%_
                  (if (or _%transparent?132302%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties132294%_)))
                      '#f
                      (let ((_%$e132340%_ (not _%type-super132291%_)))
                        (if _%$e132340%_
                            _%$e132340%_
                            (let ((_%type132343%_ _%type-super132291%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##type? _%type132343%_))
                                  (let ((_%type132348%_ _%type132343%_))
                                    (__type-opaque? _%type132348%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     '##type?
                                     'value:
                                     _%type132343%_)
                                    '#!void)))))))
                 (_%acyclic?132376%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties132294%_)))
                 (_%type-flags132378%_
                  (let ((__tmp135730
                         (if _%final?132326%_ '0 type-flag-extensible))
                        (__tmp135729
                         (if _%opaque?132374%_ type-flag-opaque '0))
                        (__tmp135728
                         (if _%struct?132324%_ class-type-flag-struct '0))
                        (__tmp135727
                         (if _%metaclass132333%_ class-type-flag-metaclass '0))
                        (__tmp135726
                         (if _%system?132335%_ class-type-flag-system '0))
                        (__tmp135725
                         (if _%acyclic?132376%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp135730
                             __tmp135729
                             __tmp135728
                             __tmp135727
                             __tmp135726
                             __tmp135725)))
                 (_%precedence-list132386%_
                  (let ((_%$e132380%_ (memq t::t _%precedence-list132292%_)))
                    (if _%$e132380%_
                        ((lambda (_%tail132383%_)
                           (if (null? (cdr _%tail132383%_))
                               _%precedence-list132292%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list132292%_)))
                         _%$e132380%_)
                        (let ((__tmp135731 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list132292%_ __tmp135731))))))
            (let _%loop132389%_ ((_%i132391%_ _%first-new-field132318%_)
                                 (_%j132392%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j132392%_ _%field-info-length132320%_))
                  (let* ((_%slot132394%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector132293%_ _%i132391%_)))
                         (_%flags132402%_
                          (if _%transparent?132302%_
                              '0
                              (let ((__tmp135733
                                     (if (or _%all-slots-printable?132307%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable132309%_
                                                _%slot132394%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp135732
                                     (if (or _%all-slots-equalable?132314%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable132316%_
                                                _%slot132394%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp135733 __tmp135732)))))
                    (vector-set!
                     _%field-info132322%_
                     _%j132392%_
                     _%slot132394%_)
                    (vector-set!
                     _%field-info132322%_
                     (let () (declare (not safe)) (##fx+ _%j132392%_ '1))
                     _%flags132402%_)
                    (_%loop132389%_
                     (let () (declare (not safe)) (##fx+ _%i132391%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j132392%_ '3))))
                  '#!void))
            (if _%metaclass132333%_
                (let ((_%val132429%_
                       (let* ((_%klass132405%_ _%metaclass132333%_)
                              (_%args132408%_
                               (list _%type-id132289%_
                                     _%type-name132290%_
                                     _%type-flags132378%_
                                     _%type-super132291%_
                                     _%field-info132322%_
                                     _%precedence-list132386%_
                                     _%slot-vector132293%_
                                     _%slot-table132296%_
                                     _%properties132294%_
                                     _%constructor132295%_
                                     _%methods132297%_)))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%klass132405%_
                                'class))
                             (let ((_%klass132413%_ _%klass132405%_))
                               (declare (not safe))
                               (##apply __make-instance
                                        _%klass132413%_
                                        _%args132408%_))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%klass132405%_)
                               '#!void)))))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val132429%_ 'class))
                      _%val132429%_
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         '"\"gerbil/runtime/mop.ss\"@283.10-287.95"
                         'contract:
                         '(class-type? val)
                         'value:
                         _%val132429%_)
                        '#!void)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id132289%_
                   _%type-name132290%_
                   _%type-flags132378%_
                   _%type-super132291%_
                   _%field-info132322%_
                   _%precedence-list132386%_
                   _%slot-vector132293%_
                   _%slot-table132296%_
                   _%properties132294%_
                   _%constructor132295%_
                   _%methods132297%_
                   '#f
                   '#f)))))))
    (define class-type-id
      (lambda (_%klass132287%_)
        (##structure-ref _%klass132287%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass132285%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass132285%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass132282%_ _%val132283%_)
        (##structure-set! _%klass132282%_ _%val132283%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass132277%_ _%val132279%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132277%_
           _%val132279%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass132275%_)
        (##structure-ref _%klass132275%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass132273%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass132273%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass132270%_ _%val132271%_)
        (##structure-set! _%klass132270%_ _%val132271%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass132265%_ _%val132267%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132265%_
           _%val132267%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass132263%_)
        (##structure-ref _%klass132263%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass132261%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass132261%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass132258%_ _%val132259%_)
        (##structure-set! _%klass132258%_ _%val132259%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass132253%_ _%val132255%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132253%_
           _%val132255%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass132251%_)
        (##structure-ref _%klass132251%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass132249%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass132249%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass132246%_ _%val132247%_)
        (##structure-set! _%klass132246%_ _%val132247%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass132241%_ _%val132243%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132241%_
           _%val132243%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass132239%_)
        (##structure-ref _%klass132239%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass132237%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass132237%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass132234%_ _%val132235%_)
        (##structure-set! _%klass132234%_ _%val132235%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass132229%_ _%val132231%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132229%_
           _%val132231%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass132227%_)
        (##structure-ref _%klass132227%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass132225%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass132225%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass132222%_ _%val132223%_)
        (##structure-set!
         _%klass132222%_
         _%val132223%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass132217%_ _%val132219%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132217%_
           _%val132219%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass132215%_)
        (##structure-ref _%klass132215%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass132213%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass132213%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass132210%_ _%val132211%_)
        (##structure-set!
         _%klass132210%_
         _%val132211%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass132205%_ _%val132207%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132205%_
           _%val132207%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass132203%_)
        (##structure-ref _%klass132203%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass132201%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass132201%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass132198%_ _%val132199%_)
        (##structure-set!
         _%klass132198%_
         _%val132199%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass132193%_ _%val132195%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132193%_
           _%val132195%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass132191%_)
        (##structure-ref _%klass132191%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass132189%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass132189%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass132186%_ _%val132187%_)
        (##structure-set!
         _%klass132186%_
         _%val132187%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass132181%_ _%val132183%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132181%_
           _%val132183%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass132179%_)
        (##structure-ref _%klass132179%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass132177%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass132177%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass132174%_ _%val132175%_)
        (##structure-set!
         _%klass132174%_
         _%val132175%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass132169%_ _%val132171%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132169%_
           _%val132171%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass132167%_)
        (##structure-ref _%klass132167%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass132165%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass132165%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass132162%_ _%val132163%_)
        (##structure-set!
         _%klass132162%_
         _%val132163%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass132157%_ _%val132159%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132157%_
           _%val132159%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass132155%_)
        (##structure-ref _%klass132155%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass132153%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass132153%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass132150%_ _%val132151%_)
        (##structure-set!
         _%klass132150%_
         _%val132151%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass132145%_ _%val132147%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132145%_
           _%val132147%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass132143%_)
        (##structure-ref _%klass132143%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass132141%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass132141%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass132138%_ _%val132139%_)
        (##structure-set!
         _%klass132138%_
         _%val132139%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass132133%_ _%val132135%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132133%_
           _%val132135%_
           '13
           class::t
           'interface))))
    (define __class-type-slot-list
      (lambda (_%klass132121%_)
        (let ((_%klass132124%_ _%klass132121%_))
          (vector->list
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass132124%_ '7 '#f '#f))
           '1))))
    (define class-type-slot-list
      (lambda (_%klass120794%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass120794%_ 'class))
            (let ((_%klass120798%_ _%klass120794%_))
              (__class-type-slot-list _%klass120798%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@345.29-345.34"
               'contract:
               'class-type?
               'value:
               _%klass120794%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass132109%_)
        (let* ((_%klass132112%_ _%klass132109%_)
               (__tmp135734
                (let ((__tmp135735
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass132112%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp135735))))
          (declare (not safe))
          (##fx- __tmp135734 '1))))
    (define class-type-field-count
      (lambda (_%klass120928%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass120928%_ 'class))
            (let ((_%klass120932%_ _%klass120928%_))
              (__class-type-field-count _%klass120932%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@347.31-347.36"
               'contract:
               'class-type?
               'value:
               _%klass120928%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass132097%_)
        (let ((_%klass132100%_ _%klass132097%_))
          (let ((__tmp135736
                 (let ((__tmp135737
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass132100%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp135737))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass132100%_
             __tmp135736
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define class-type-seal!
      (lambda (_%klass121062%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121062%_ 'class))
            (let ((_%klass121066%_ _%klass121062%_))
              (__class-type-seal! _%klass121066%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@350.25-350.30"
               'contract:
               'class-type?
               'value:
               _%klass121062%_)
              '#!void))))
    (define __class-type-printable-slots
      (lambda (_%klass132030%_)
        (let ((_%klass132033%_ _%klass132030%_))
          (letrec ((_%get-field-vector132042%_
                    (lambda (_%type132081%_)
                      (let _%loop132083%_ ((_%type132085%_ _%type132081%_))
                        (let* ((_%fields132087%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type132085%_)))
                               (_%$e132089%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type132085%_))))
                          (if _%$e132089%_
                              ((lambda (_%super132092%_)
                                 (let ((_%super-fields132094%_
                                        (_%loop132083%_ _%super132092%_)))
                                   (vector-append
                                    _%super-fields132094%_
                                    _%fields132087%_)))
                               _%$e132089%_)
                              _%fields132087%_)))))
                   (_%get-printable-slot-alist132043%_
                    (lambda (_%type132064%_)
                      (let* ((_%fields132066%_
                              (_%get-field-vector132042%_ _%type132064%_))
                             (_%count132068%_
                              (vector-length _%fields132066%_)))
                        (let _%loop132071%_ ((_%i132073%_ '3)
                                             (_%offset132074%_ '1)
                                             (_%r132075%_ '()))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i132073%_ _%count132068%_))
                              (let ((_%slot-name132077%_
                                     (vector-ref _%fields132066%_ _%i132073%_))
                                    (_%slot-flags132078%_
                                     (vector-ref
                                      _%fields132066%_
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%i132073%_ '1))))
                                    (_%next-i132079%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i132073%_ '2))))
                                (if (let ((__tmp135738
                                           (let ()
                                             (declare (not safe))
                                             (##fxand _%slot-flags132078%_
                                                      '1))))
                                      (declare (not safe))
                                      (##fx= __tmp135738 '0))
                                    (_%loop132071%_
                                     _%next-i132079%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset132074%_ '1))
                                     _%r132075%_)
                                    (_%loop132071%_
                                     _%next-i132079%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset132074%_ '1))
                                     (cons (cons _%slot-name132077%_
                                                 _%offset132074%_)
                                           _%r132075%_))))
                              (reverse! _%r132075%_))))))
                   (_%get-printable-slots!132044%_
                    (lambda (_%klass132059%_ _%type132060%_)
                      (let ((_%printable132062%_
                             (_%get-printable-slot-alist132043%_
                              _%type132060%_)))
                        (##structure-set!
                         _%klass132059%_
                         (cons (cons 'printable-slots: _%printable132062%_)
                               (##structure-ref
                                _%klass132059%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%printable132062%_))))
            (let* ((_%props132046%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass132033%_ '9 '#f '#f)))
                   (_%$e132048%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'printable-slots: _%props132046%_))))
              (if _%$e132048%_
                  _%$e132048%_
                  (let ((_%$e132051%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props132046%_))))
                    (if _%$e132051%_
                        ((lambda (_%g132053132055%_)
                           (_%get-printable-slots!132044%_
                            _%klass132033%_
                            _%g132053132055%_))
                         _%$e132051%_)
                        (_%get-printable-slots!132044%_
                         _%klass132033%_
                         _%klass132033%_)))))))))
    (define class-type-printable-slots
      (lambda (_%klass121196%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121196%_ 'class))
            (let ((_%klass121200%_ _%klass121196%_))
              (__class-type-printable-slots _%klass121200%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@357.35-357.40"
               'contract:
               'class-type?
               'value:
               _%klass121196%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct131999%_ _%maybe-super-struct132000%_)
        (let* ((_%maybe-sub-struct132003%_ _%maybe-sub-struct131999%_)
               (_%maybe-super-struct132011%_ _%maybe-super-struct132000%_)
               (_%maybe-super-struct-id132020%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct132011%_))))
          (let _%lp132022%_ ((_%super-struct132024%_
                              _%maybe-sub-struct132003%_))
            (if (not _%super-struct132024%_)
                '#f
                (if (eq? _%maybe-super-struct-id132020%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct132024%_)))
                    '#t
                    (_%lp132022%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct132024%_)))))))))
    (define substruct?
      (lambda (_%maybe-sub-struct121330%_ _%maybe-super-struct121331%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct121330%_ 'class))
            (let ((_%maybe-sub-struct121335%_ _%maybe-sub-struct121330%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct121331%_
                     'class))
                  (let ((_%maybe-super-struct121345%_
                         _%maybe-super-struct121331%_))
                    (__substruct?
                     _%maybe-sub-struct121335%_
                     _%maybe-super-struct121345%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@403.47-403.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct121331%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@403.19-403.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct121330%_)
              '#!void))))
    (define base-struct/1
      (lambda (_%klass131977%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass131977%_ 'class))
            (if (let* ((_%klass131980%_ _%klass131977%_)
                       (_%klass131985%_ _%klass131980%_))
                  (__class-type-struct? _%klass131985%_))
                _%klass131977%_
                (let () (declare (not safe)) (##type-super _%klass131977%_)))
            (if (not _%klass131977%_)
                '#f
                (error '"not a class or false" _%klass131977%_)))))
    (define base-struct/2
      (lambda (_%klass1131900%_ _%klass2131901%_)
        (let ((_%s1131903%_ (base-struct/1 _%klass1131900%_))
              (_%s2131904%_ (base-struct/1 _%klass2131901%_)))
          (if (or (not _%s1131903%_)
                  (and _%s2131904%_
                       (let* ((_%maybe-sub-struct131909%_ _%s1131903%_)
                              (_%maybe-super-struct131912%_ _%s2131904%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%maybe-sub-struct131909%_
                                'class))
                             (let ((_%maybe-sub-struct131917%_
                                    _%maybe-sub-struct131909%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%maybe-super-struct131912%_
                                      'class))
                                   (let ((_%maybe-super-struct131931%_
                                          _%maybe-super-struct131912%_))
                                     (__substruct?
                                      _%maybe-sub-struct131917%_
                                      _%maybe-super-struct131931%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%maybe-super-struct131912%_)
                                     '#!void)))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%maybe-sub-struct131909%_)
                               '#!void)))))
              _%s2131904%_
              (if (or (not _%s2131904%_)
                      (and _%s1131903%_
                           (let* ((_%maybe-sub-struct131945%_ _%s2131904%_)
                                  (_%maybe-super-struct131948%_ _%s1131903%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%maybe-sub-struct131945%_
                                    'class))
                                 (let ((_%maybe-sub-struct131953%_
                                        _%maybe-sub-struct131945%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%maybe-super-struct131948%_
                                          'class))
                                       (let ((_%maybe-super-struct131965%_
                                              _%maybe-super-struct131948%_))
                                         (__substruct?
                                          _%maybe-sub-struct131953%_
                                          _%maybe-super-struct131965%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          'class-type?
                                          'value:
                                          _%maybe-super-struct131948%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'class-type?
                                    'value:
                                    _%maybe-sub-struct131945%_)
                                   '#!void)))))
                  _%s1131903%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1131900%_
                         _%klass2131901%_
                         _%s1131903%_
                         _%s2131904%_))))))
    (define base-struct/list
      (lambda (_%all-supers131785%_)
        (let* ((_%all-supers131786131811%_ _%all-supers131785%_)
               (_%E131791131815%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers131786131811%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K131809131897%_ (lambda () '#f))
                (_%K131806131883%_
                 (lambda (_%x131881%_) (base-struct/1 _%x131881%_)))
                (_%K131801131860%_
                 (lambda (_%y131857%_ _%x131858%_)
                   (base-struct/2 _%x131858%_ _%y131857%_)))
                (_%K131792131822%_
                 (lambda (_%y131819%_ _%x131820%_)
                   (let ()
                     (declare (not safe))
                     (foldr__0 base-struct/2 _%x131820%_ _%y131819%_)))))
            (let* ((_%__match134511134512%_
                    (lambda (_%hd131793131825%_ _%tl131794131827%_)
                      (let ((_%x131830%_ _%hd131793131825%_))
                        (letrec ((_%splice-rest131796131832%_
                                  (lambda (_%rest131800131839%_ _%y131841%_)
                                    (if (null? _%rest131800131839%_)
                                        (_%K131792131822%_
                                         _%y131841%_
                                         _%x131830%_)
                                        (_%E131791131815%_))))
                                 (_%splice-try131798131834%_
                                  (lambda (_%hd131799131843%_
                                           _%rest131800131845%_
                                           _%y131795131846%_)
                                    (let ((_%y131848%_ _%hd131799131843%_))
                                      (_%splice-loop131797131836%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest131800131845%_))
                                       (cons _%y131848%_ _%y131795131846%_)))))
                                 (_%splice-loop131797131836%_
                                  (lambda (_%rest131800131850%_
                                           _%y131795131851%_)
                                    (if (pair? _%rest131800131850%_)
                                        (_%splice-try131798131834%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest131800131850%_))
                                         _%rest131800131850%_
                                         _%y131795131851%_)
                                        (_%splice-rest131796131832%_
                                         _%rest131800131850%_
                                         (reverse _%y131795131851%_))))))
                          (_%splice-loop131797131836%_
                           _%tl131794131827%_
                           '())))))
                   (_%try-match131788131893%_
                    (lambda ()
                      (if (pair? _%all-supers131786131811%_)
                          (let ((_%tl131808131888%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers131786131811%_)))
                                (_%hd131807131886%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers131786131811%_))))
                            (if (null? _%tl131808131888%_)
                                (let ((_%x131891%_ _%hd131807131886%_))
                                  (base-struct/1 _%x131891%_))
                                (if (pair? _%tl131808131888%_)
                                    (let ((_%tl131805131872%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl131808131888%_)))
                                          (_%hd131804131870%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl131808131888%_))))
                                      (if (null? _%tl131805131872%_)
                                          (let ((_%x131868%_
                                                 _%hd131807131886%_)
                                                (_%y131875%_
                                                 _%hd131804131870%_))
                                            (_%K131801131860%_
                                             _%y131875%_
                                             _%x131868%_))
                                          (_%__match134511134512%_
                                           _%hd131807131886%_
                                           _%tl131808131888%_)))
                                    (_%__match134511134512%_
                                     _%hd131807131886%_
                                     _%tl131808131888%_))))
                          (_%E131791131815%_)))))
              (if (null? _%all-supers131786131811%_)
                  (_%K131809131897%_)
                  (_%try-match131788131893%_)))))))
    (define base-struct
      (lambda _%all-supers131783%_ (base-struct/list _%all-supers131783%_)))
    (define find-super-constructor
      (lambda (_%super131734%_)
        (let _%lp131736%_ ((_%rest131738%_ _%super131734%_)
                           (_%constructor131739%_ '#f))
          (let* ((_%rest131740131748%_ _%rest131738%_)
                 (_%else131742131756%_ (lambda () _%constructor131739%_))
                 (_%K131744131771%_
                  (lambda (_%rest131759%_ _%hd131760%_)
                    (let ((_%$e131762%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd131760%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e131762%_
                          ((lambda (_%xconstructor131765%_)
                             (if (or (not _%constructor131739%_)
                                     (eq? _%constructor131739%_
                                          _%xconstructor131765%_))
                                 (_%lp131736%_
                                  _%rest131759%_
                                  _%xconstructor131765%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor131739%_
                                        _%xconstructor131765%_)))
                           _%$e131762%_)
                          (_%lp131736%_
                           _%rest131759%_
                           _%constructor131739%_))))))
            (if (pair? _%rest131740131748%_)
                (let ((_%hd131745131774%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest131740131748%_)))
                      (_%tl131746131776%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest131740131748%_))))
                  (let* ((_%hd131779%_ _%hd131745131774%_)
                         (_%rest131781%_ _%tl131746131776%_))
                    (_%K131744131771%_ _%rest131781%_ _%hd131779%_)))
                (_%else131742131756%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list131690%_ _%direct-slots131691%_)
        (let* ((_%next-slot131693%_ '1)
               (_%slot-table131695%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots131697%_ '(__class))
               (_%process-slot131721%_
                (lambda (_%slot131699%_)
                  (if (symbol? _%slot131699%_)
                      '#!void
                      (error '"invalid slot name" _%slot131699%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table131695%_
                              _%slot131699%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table131695%_
                           _%slot131699%_
                           _%next-slot131693%_))
                        (let ((__tmp135739
                               (let ((_%sym131701%_ _%slot131699%_))
                                 (if (symbol? _%sym131701%_)
                                     (let ((_%sym131706%_ _%sym131701%_))
                                       (declare (not safe))
                                       (__symbol->keyword _%sym131706%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/mop
                                        'contract:
                                        'symbol?
                                        'value:
                                        _%sym131701%_)
                                       '#!void)))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table131695%_
                           __tmp135739
                           _%next-slot131693%_))
                        (set! _%r-slots131697%_
                              (cons _%slot131699%_ _%r-slots131697%_))
                        (set! _%next-slot131693%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot131693%_ '1))))
                      '#!void)))
               (_%process-slots131727%_
                (lambda (_%g131722131724%_)
                  (for-each _%process-slot131721%_ _%g131722131724%_))))
          (let ((__tmp135741
                 (lambda (_%mixin131730%_)
                   (_%process-slots131727%_
                    (let ((__tmp135742
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin131730%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp135742 '())))))
                (__tmp135740 (reverse _%class-precedence-list131690%_)))
            (declare (not safe))
            (##for-each __tmp135741 __tmp135740))
          (_%process-slots131727%_ _%direct-slots131691%_)
          (let ((_%slot-vector131732%_
                 (list->vector
                  (let ()
                    (declare (not safe))
                    (##reverse _%r-slots131697%_)))))
            (values _%slot-vector131732%_ _%slot-table131695%_)))))
    (define __make-class-type
      (lambda (_%id131517%_
               _%name131518%_
               _%direct-supers131519%_
               _%direct-slots131520%_
               _%properties131521%_
               _%constructor131522%_)
        (let* ((_%id131525%_ _%id131517%_)
               (_%name131533%_ _%name131518%_)
               (_%direct-supers131541%_ _%direct-supers131519%_)
               (_%direct-slots131549%_ _%direct-slots131520%_)
               (_%properties131557%_ _%properties131521%_)
               (_%constructor131565%_ _%constructor131522%_))
          (let ((_%$e131599%_
                 (let* ((_%pred131577%_
                         (lambda (_%$obj131574%_)
                           (not (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%$obj131574%_
                                   'class)))))
                        (_%lst131580%_ _%direct-supers131541%_)
                        (_%pred131585%_ _%pred131577%_))
                   (declare (not safe))
                   (__find _%pred131585%_ _%lst131580%_))))
            (if _%$e131599%_
                ((lambda (_%g131601131603%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g131601131603%_))
                 _%$e131599%_)
                (let ((_%$e131626%_
                       (let* ((_%pred131606%_ __class-type-final?)
                              (_%lst131609%_ _%direct-supers131541%_)
                              (_%pred131614%_ _%pred131606%_))
                         (declare (not safe))
                         (__find _%pred131614%_ _%lst131609%_))))
                  (if _%$e131626%_
                      ((lambda (_%g131628131630%_)
                         (error '"Cannot extend final class"
                                _%g131628131630%_))
                       _%$e131626%_)
                      '#!void))))
          (let ((_g135743_ (compute-precedence-list _%direct-supers131541%_)))
            (begin
              (let ((_g135744_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g135743_)
                           (##values-length _g135743_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g135744_ 2)))
                    (error "Context expects 2 values" _g135744_)))
              (let ((_%precedence-list131633%_
                     (let () (declare (not safe)) (##values-ref _g135743_ 0)))
                    (_%struct-super131634%_
                     (let () (declare (not safe)) (##values-ref _g135743_ 1))))
                (let ((_g135745_
                       (compute-class-slots
                        _%precedence-list131633%_
                        _%direct-slots131549%_)))
                  (begin
                    (let ((_g135746_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g135745_)
                                 (##values-length _g135745_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g135746_ 2)))
                          (error "Context expects 2 values" _g135746_)))
                    (let ((_%slot-vector131636%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g135745_ 0)))
                          (_%slot-table131637%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g135745_ 1))))
                      (let* ((_%properties131639%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots131549%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers131541%_)
                                          _%properties131557%_)))
                             (_%constructor*131644%_
                              (let ((_%$e131641%_ _%constructor131565%_))
                                (if _%$e131641%_
                                    _%$e131641%_
                                    (find-super-constructor
                                     _%direct-supers131541%_))))
                             (_%precedence-list131687%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties131639%_))
                                      (memq object::t
                                            _%precedence-list131633%_))
                                  _%precedence-list131633%_
                                  (let _%loop131649%_ ((_%tail131651%_
                                                        _%precedence-list131633%_)
                                                       (_%head131652%_ '()))
                                    (let* ((_%tail131653131661%_
                                            _%tail131651%_)
                                           (_%else131655131669%_
                                            (lambda ()
                                              (let ((__tmp135747
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp135747
                                                 _%head131652%_))))
                                           (_%K131657131675%_
                                            (lambda (_%rest131672%_
                                                     _%hd131673%_)
                                              (if (eq? _%hd131673%_ t::t)
                                                  (let ((__tmp135748
                                                         (cons object::t
                                                               _%tail131651%_)))
                                                    (declare (not safe))
                                                    (foldl__0
                                                     cons
                                                     __tmp135748
                                                     _%head131652%_))
                                                  (_%loop131649%_
                                                   _%rest131672%_
                                                   (cons _%hd131673%_
                                                         _%head131652%_))))))
                                      (if (pair? _%tail131653131661%_)
                                          (let ((_%hd131658131678%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail131653131661%_)))
                                                (_%tl131659131680%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail131653131661%_))))
                                            (let* ((_%hd131683%_
                                                    _%hd131658131678%_)
                                                   (_%rest131685%_
                                                    _%tl131659131680%_))
                                              (_%K131657131675%_
                                               _%rest131685%_
                                               _%hd131683%_)))
                                          (_%else131655131669%_)))))))
                        (make-class-type-descriptor
                         _%id131525%_
                         _%name131533%_
                         _%struct-super131634%_
                         _%precedence-list131687%_
                         _%slot-vector131636%_
                         _%properties131639%_
                         _%constructor*131644%_
                         _%slot-table131637%_
                         '#f)))))))))))
    (define make-class-type
      (lambda (_%id121475%_
               _%name121476%_
               _%direct-supers121477%_
               _%direct-slots121478%_
               _%properties121479%_
               _%constructor121480%_)
        (if (symbol? _%id121475%_)
            (let ((_%id121484%_ _%id121475%_))
              (if (symbol? _%name121476%_)
                  (let ((_%name121494%_ _%name121476%_))
                    (if (list? _%direct-supers121477%_)
                        (let ((_%direct-supers121504%_
                               _%direct-supers121477%_))
                          (if (list? _%direct-slots121478%_)
                              (let ((_%direct-slots121514%_
                                     _%direct-slots121478%_))
                                (if (list? _%properties121479%_)
                                    (let ((_%properties121524%_
                                           _%properties121479%_))
                                      (if ((lambda (_%$obj121533%_)
                                             (or (not _%$obj121533%_)
                                                 (symbol? _%$obj121533%_)))
                                           _%constructor121480%_)
                                          (let ((_%constructor121540%_
                                                 _%constructor121480%_))
                                            (__make-class-type
                                             _%id121484%_
                                             _%name121494%_
                                             _%direct-supers121504%_
                                             _%direct-slots121514%_
                                             _%properties121524%_
                                             _%constructor121540%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@500.24-500.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor121480%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@499.24-499.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties121479%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@498.24-498.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots121478%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@497.24-497.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers121477%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@496.24-496.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name121476%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@495.24-495.26"
               'contract:
               'symbol?
               'value:
               _%id121475%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass131505%_)
        (let ((_%klass131508%_ _%klass131505%_))
          (cons _%klass131508%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass131508%_ '6 '#f '#f))))))
    (define class-precedence-list
      (lambda (_%klass121670%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121670%_ 'class))
            (let ((_%klass121674%_ _%klass121670%_))
              (__class-precedence-list _%klass121674%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@533.30-533.35"
               'contract:
               'class-type?
               'value:
               _%klass121670%_)
              '#!void))))
    (define compute-precedence-list
      (lambda (_%direct-supers131502%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers131502%_))))
    (define __make-class-predicate
      (lambda (_%klass131418%_)
        (let* ((_%klass131421%_ _%klass131418%_)
               (_%tid131430%_
                (let () (declare (not safe)) (##type-id _%klass131421%_))))
          (if (let* ((_%type131432%_ _%klass131421%_)
                     (_%type131437%_ _%type131432%_))
                (__class-type-final? _%type131437%_))
              (lambda (_%g131451131453%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g131451131453%_
                   _%tid131430%_)))
              (if (let* ((_%klass131456%_ _%klass131421%_)
                         (_%klass131461%_ _%klass131456%_))
                    (__class-type-struct? _%klass131461%_))
                  (lambda (_%g131471131473%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%g131471131473%_
                       _%tid131430%_)))
                  (lambda (_%g131476131478%_)
                    (let* ((_%klass131481%_ _%klass131421%_)
                           (_%obj131484%_ _%g131476131478%_)
                           (_%klass131489%_ _%klass131481%_))
                      (__class-instance? _%klass131489%_ _%obj131484%_))))))))
    (define make-class-predicate
      (lambda (_%klass121804%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121804%_ 'class))
            (let ((_%klass121808%_ _%klass121804%_))
              (__make-class-predicate _%klass121808%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@545.29-545.34"
               'contract:
               'class-type?
               'value:
               _%klass121804%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass131352%_ _%slot131353%_)
        (let* ((_%klass131356%_ _%klass131352%_)
               (_%slot131364%_ _%slot131353%_)
               (_%field131373%_
                (let ((__tmp135749
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass131356%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp135749 _%slot131364%_ '#f))))
          (if (not _%field131373%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass131356%_
                       'slot:
                       _%slot131364%_)
                '#!void)
              (if (let* ((_%type131377%_ _%klass131356%_)
                         (_%type131382%_ _%type131377%_))
                    (__class-type-final? _%type131382%_))
                  (make-final-slot-accessor
                   _%klass131356%_
                   _%slot131364%_
                   _%field131373%_)
                  (if (let* ((_%klass131397%_ _%klass131356%_)
                             (_%klass131402%_ _%klass131397%_))
                        (__class-type-struct? _%klass131402%_))
                      (make-struct-slot-accessor
                       _%klass131356%_
                       _%slot131364%_
                       _%field131373%_)
                      (if (let ((_%strukt131413%_
                                 (base-struct/1 _%klass131356%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt131413%_
                                    'class))
                                 (let ((__tmp135750
                                        (let ((__tmp135751
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt131413%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp135751))))
                                   (declare (not safe))
                                   (##fx< _%field131373%_ __tmp135750))))
                          (make-struct-subclass-slot-accessor
                           _%klass131356%_
                           _%slot131364%_
                           _%field131373%_)
                          (make-class-cached-slot-accessor
                           _%klass131356%_
                           _%slot131364%_
                           _%field131373%_))))))))
    (define make-class-slot-accessor
      (lambda (_%klass122091%_ _%slot122092%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122091%_ 'class))
            (let ((_%klass122096%_ _%klass122091%_))
              (if (symbol? _%slot122092%_)
                  (let ((_%slot122106%_ _%slot122092%_))
                    (__make-class-slot-accessor
                     _%klass122096%_
                     _%slot122106%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@576.50-576.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot122092%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@576.33-576.38"
               'contract:
               'class-type?
               'value:
               _%klass122091%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass131286%_ _%slot131287%_)
        (let* ((_%klass131290%_ _%klass131286%_)
               (_%slot131298%_ _%slot131287%_)
               (_%field131307%_
                (let ((__tmp135752
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass131290%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp135752 _%slot131298%_ '#f))))
          (if (not _%field131307%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass131290%_
                       'slot:
                       _%slot131298%_)
                '#!void)
              (if (let* ((_%type131311%_ _%klass131290%_)
                         (_%type131316%_ _%type131311%_))
                    (__class-type-final? _%type131316%_))
                  (make-final-slot-mutator
                   _%klass131290%_
                   _%slot131298%_
                   _%field131307%_)
                  (if (let* ((_%klass131331%_ _%klass131290%_)
                             (_%klass131336%_ _%klass131331%_))
                        (__class-type-struct? _%klass131336%_))
                      (make-struct-slot-mutator
                       _%klass131290%_
                       _%slot131298%_
                       _%field131307%_)
                      (if (let ((_%strukt131347%_
                                 (base-struct/1 _%klass131290%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt131347%_
                                    'class))
                                 (let ((__tmp135753
                                        (let ((__tmp135754
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt131347%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp135754))))
                                   (declare (not safe))
                                   (##fx< _%field131307%_ __tmp135753))))
                          (make-struct-subclass-slot-mutator
                           _%klass131290%_
                           _%slot131298%_
                           _%field131307%_)
                          (make-class-cached-slot-mutator
                           _%klass131290%_
                           _%slot131298%_
                           _%field131307%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass122236%_ _%slot122237%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122236%_ 'class))
            (let ((_%klass122241%_ _%klass122236%_))
              (if (symbol? _%slot122237%_)
                  (let ((_%slot122251%_ _%slot122237%_))
                    (__make-class-slot-mutator _%klass122241%_ _%slot122251%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@584.49-584.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot122237%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@584.32-584.37"
               'contract:
               'class-type?
               'value:
               _%klass122236%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass131220%_ _%slot131221%_)
        (let* ((_%klass131224%_ _%klass131220%_)
               (_%slot131232%_ _%slot131221%_)
               (_%field131241%_
                (let ((__tmp135755
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass131224%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp135755 _%slot131232%_ '#f))))
          (if (not _%field131241%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass131224%_
                       'slot:
                       _%slot131232%_)
                '#!void)
              (if (let* ((_%type131245%_ _%klass131224%_)
                         (_%type131250%_ _%type131245%_))
                    (__class-type-final? _%type131250%_))
                  (make-struct-slot-unchecked-accessor
                   _%klass131224%_
                   _%slot131232%_
                   _%field131241%_)
                  (if (let* ((_%klass131265%_ _%klass131224%_)
                             (_%klass131270%_ _%klass131265%_))
                        (__class-type-struct? _%klass131270%_))
                      (make-struct-slot-unchecked-accessor
                       _%klass131224%_
                       _%slot131232%_
                       _%field131241%_)
                      (if (let ((_%strukt131281%_
                                 (base-struct/1 _%klass131224%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt131281%_
                                    'class))
                                 (let ((__tmp135756
                                        (let ((__tmp135757
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt131281%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp135757))))
                                   (declare (not safe))
                                   (##fx< _%field131241%_ __tmp135756))))
                          (make-struct-slot-unchecked-accessor
                           _%klass131224%_
                           _%slot131232%_
                           _%field131241%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass131224%_
                           _%slot131232%_
                           _%field131241%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass122381%_ _%slot122382%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122381%_ 'class))
            (let ((_%klass122386%_ _%klass122381%_))
              (if (symbol? _%slot122382%_)
                  (let ((_%slot122396%_ _%slot122382%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass122386%_
                     _%slot122396%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.60-592.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot122382%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.43-592.48"
               'contract:
               'class-type?
               'value:
               _%klass122381%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass131154%_ _%slot131155%_)
        (let* ((_%klass131158%_ _%klass131154%_)
               (_%slot131166%_ _%slot131155%_)
               (_%field131175%_
                (let ((__tmp135758
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass131158%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp135758 _%slot131166%_ '#f))))
          (if (not _%field131175%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass131158%_
                       'slot:
                       _%slot131166%_)
                '#!void)
              (if (let* ((_%type131179%_ _%klass131158%_)
                         (_%type131184%_ _%type131179%_))
                    (__class-type-final? _%type131184%_))
                  (make-struct-slot-unchecked-mutator
                   _%klass131158%_
                   _%slot131166%_
                   _%field131175%_)
                  (if (let* ((_%klass131199%_ _%klass131158%_)
                             (_%klass131204%_ _%klass131199%_))
                        (__class-type-struct? _%klass131204%_))
                      (make-struct-slot-unchecked-mutator
                       _%klass131158%_
                       _%slot131166%_
                       _%field131175%_)
                      (if (let ((_%strukt131215%_
                                 (base-struct/1 _%klass131158%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt131215%_
                                    'class))
                                 (let ((__tmp135759
                                        (let ((__tmp135760
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt131215%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp135760))))
                                   (declare (not safe))
                                   (##fx< _%field131175%_ __tmp135759))))
                          (make-struct-slot-unchecked-mutator
                           _%klass131158%_
                           _%slot131166%_
                           _%field131175%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass131158%_
                           _%slot131166%_
                           _%field131175%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass122526%_ _%slot122527%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122526%_ 'class))
            (let ((_%klass122531%_ _%klass122526%_))
              (if (symbol? _%slot122527%_)
                  (let ((_%slot122541%_ _%slot122527%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass122531%_
                     _%slot122541%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@600.59-600.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot122527%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@600.42-600.47"
               'contract:
               'class-type?
               'value:
               _%klass122526%_)
              '#!void))))
    (define not-an-instance__%
      (lambda (_%object131138%_ _%class131139%_ _%slot131140%_)
        (apply error
               '"not an instance"
               'object:
               _%object131138%_
               'class:
               _%class131139%_
               (if _%slot131140%_
                   (cons 'slot: (cons _%slot131140%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object131145%_ _%class131146%_)
        (let ((_%slot131148%_ '#f))
          (not-an-instance__%
           _%object131145%_
           _%class131146%_
           _%slot131148%_))))
    (define not-an-instance
      (lambda _g135761_
        (let ((_g135762_ (let () (declare (not safe)) (##length _g135761_))))
          (cond ((let () (declare (not safe)) (##fx= _g135762_ 2))
                 (apply not-an-instance__0 _g135761_))
                ((let () (declare (not safe)) (##fx= _g135762_ 3))
                 (apply not-an-instance__% _g135761_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g135761_))))))
    (define make-final-slot-accessor
      (lambda (_%klass131131%_ _%slot131132%_ _%field131133%_)
        (lambda (_%obj131135%_)
          (##direct-structure-ref
           _%obj131135%_
           _%field131133%_
           _%klass131131%_
           _%slot131132%_))))
    (define make-final-slot-mutator
      (lambda (_%klass131124%_ _%slot131125%_ _%field131126%_)
        (lambda (_%obj131128%_ _%val131129%_)
          (##direct-structure-set!
           _%obj131128%_
           _%val131129%_
           _%field131126%_
           _%klass131124%_
           _%slot131125%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass131118%_ _%slot131119%_ _%field131120%_)
        (lambda (_%obj131122%_)
          (##structure-ref
           _%obj131122%_
           _%field131120%_
           _%klass131118%_
           _%slot131119%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass131111%_ _%slot131112%_ _%field131113%_)
        (lambda (_%obj131115%_ _%val131116%_)
          (##structure-set!
           _%obj131115%_
           _%val131116%_
           _%field131113%_
           _%klass131111%_
           _%slot131112%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass131105%_ _%slot131106%_ _%field131107%_)
        (lambda (_%obj131109%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj131109%_
             _%field131107%_
             _%klass131105%_
             _%slot131106%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass131098%_ _%slot131099%_ _%field131100%_)
        (lambda (_%obj131102%_ _%val131103%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj131102%_
             _%val131103%_
             _%field131100%_
             _%klass131098%_
             _%slot131099%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass131071%_ _%slot131072%_ _%field131073%_)
        (lambda (_%obj131075%_)
          (if (let* ((_%klass131077%_ _%klass131071%_)
                     (_%obj131080%_ _%obj131075%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass131077%_ 'class))
                    (let ((_%klass131085%_ _%klass131077%_))
                      (__class-instance? _%klass131085%_ _%obj131080%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass131077%_)
                      '#!void)))
              (unchecked-slot-ref _%obj131075%_ _%field131073%_)
              (not-an-instance__%
               _%obj131075%_
               _%klass131071%_
               _%slot131072%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass131043%_ _%slot131044%_ _%field131045%_)
        (lambda (_%obj131047%_ _%val131048%_)
          (if (let* ((_%klass131050%_ _%klass131043%_)
                     (_%obj131053%_ _%obj131047%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass131050%_ 'class))
                    (let ((_%klass131058%_ _%klass131050%_))
                      (__class-instance? _%klass131058%_ _%obj131053%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass131050%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj131047%_
               _%field131045%_
               _%val131048%_)
              (not-an-instance__%
               _%obj131047%_
               _%klass131043%_
               _%slot131044%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass130994%_ _%slot130995%_ _%field130996%_)
        (lambda (_%obj130998%_)
          (if (let* ((_%klass131000%_ _%klass130994%_)
                     (_%obj131003%_ _%obj130998%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass131000%_ 'class))
                    (let ((_%klass131008%_ _%klass131000%_))
                      (__direct-instance? _%klass131008%_ _%obj131003%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass131000%_)
                      '#!void)))
              (unchecked-field-ref _%obj130998%_ _%field130996%_)
              (if (let* ((_%klass131022%_ _%klass130994%_)
                         (_%obj131025%_ _%obj130998%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass131022%_ 'class))
                        (let ((_%klass131030%_ _%klass131022%_))
                          (__class-instance? _%klass131030%_ _%obj131025%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass131022%_)
                          '#!void)))
                  (unchecked-slot-ref _%obj130998%_ _%slot130995%_)
                  (not-an-instance__%
                   _%obj130998%_
                   _%klass130994%_
                   _%slot130995%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass130944%_ _%slot130945%_ _%field130946%_)
        (lambda (_%obj130948%_ _%val130949%_)
          (if (let* ((_%klass130951%_ _%klass130944%_)
                     (_%obj130954%_ _%obj130948%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass130951%_ 'class))
                    (let ((_%klass130959%_ _%klass130951%_))
                      (__direct-instance? _%klass130959%_ _%obj130954%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass130951%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj130948%_
               _%field130946%_
               _%val130949%_)
              (if (let* ((_%klass130973%_ _%klass130944%_)
                         (_%obj130976%_ _%obj130948%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass130973%_ 'class))
                        (let ((_%klass130981%_ _%klass130973%_))
                          (__class-instance? _%klass130981%_ _%obj130976%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass130973%_)
                          '#!void)))
                  (unchecked-slot-set!
                   _%obj130948%_
                   _%slot130945%_
                   _%val130949%_)
                  (not-an-instance__%
                   _%obj130948%_
                   _%klass130944%_
                   _%slot130945%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass130917%_ _%slot130918%_ _%field130919%_)
        (lambda (_%obj130921%_)
          (if (let* ((_%klass130923%_ _%klass130917%_)
                     (_%obj130926%_ _%obj130921%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass130923%_ 'class))
                    (let ((_%klass130931%_ _%klass130923%_))
                      (__direct-instance? _%klass130931%_ _%obj130926%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass130923%_)
                      '#!void)))
              (unchecked-field-ref _%obj130921%_ _%field130919%_)
              (unchecked-slot-ref _%obj130921%_ _%slot130918%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass130889%_ _%slot130890%_ _%field130891%_)
        (lambda (_%obj130893%_ _%val130894%_)
          (if (let* ((_%klass130896%_ _%klass130889%_)
                     (_%obj130899%_ _%obj130893%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass130896%_ 'class))
                    (let ((_%klass130904%_ _%klass130896%_))
                      (__direct-instance? _%klass130904%_ _%obj130899%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass130896%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj130893%_
               _%field130891%_
               _%val130894%_)
              (unchecked-slot-set!
               _%obj130893%_
               _%slot130890%_
               _%val130894%_)))))
    (define __class-slot-offset
      (lambda (_%klass130868%_ _%slot130869%_)
        (let* ((_%klass130872%_ _%klass130868%_)
               (_%slot130880%_ _%slot130869%_)
               (__tmp135763
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass130872%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp135763 _%slot130880%_ '#f))))
    (define class-slot-offset
      (lambda (_%klass122671%_ _%slot122672%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122671%_ 'class))
            (let ((_%klass122676%_ _%klass122671%_))
              (if (let () (declare (not safe)) (symbolic? _%slot122672%_))
                  (let ((_%slot122686%_ _%slot122672%_))
                    (__class-slot-offset _%klass122676%_ _%slot122686%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@662.43-662.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot122672%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@662.26-662.31"
               'contract:
               'class-type?
               'value:
               _%klass122671%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass130793%_ _%obj130794%_ _%slot130795%_)
        (let* ((_%klass130798%_ _%klass130793%_)
               (_%slot130806%_ _%slot130795%_))
          (if (let* ((_%klass130815%_ _%klass130798%_)
                     (_%obj130818%_ _%obj130794%_)
                     (_%klass130823%_ _%klass130815%_))
                (__class-instance? _%klass130823%_ _%obj130818%_))
              (let ((_%off130866%_
                     (let* ((_%klass130837%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj130794%_)))
                            (_%slot130840%_ _%slot130806%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass130837%_ 'class))
                           (let ((_%klass130845%_ _%klass130837%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot130840%_))
                                 (let ((_%slot130856%_ _%slot130840%_))
                                   (__class-slot-offset
                                    _%klass130845%_
                                    _%slot130856%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot130840%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass130837%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj130794%_
                 _%off130866%_
                 _%klass130798%_
                 _%slot130806%_))
              (not-an-instance__0 _%obj130794%_ _%klass130798%_)))))
    (define class-slot-ref
      (lambda (_%klass122816%_ _%obj122817%_ _%slot122818%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122816%_ 'class))
            (let ((_%klass122822%_ _%klass122816%_))
              (if (let () (declare (not safe)) (symbolic? _%slot122818%_))
                  (let ((_%slot122832%_ _%slot122818%_))
                    (__class-slot-ref
                     _%klass122822%_
                     _%obj122817%_
                     _%slot122832%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@665.44-665.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot122818%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@665.23-665.28"
               'contract:
               'class-type?
               'value:
               _%klass122816%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass130717%_ _%obj130718%_ _%slot130719%_ _%val130720%_)
        (let* ((_%klass130723%_ _%klass130717%_)
               (_%slot130731%_ _%slot130719%_))
          (if (let* ((_%klass130740%_ _%klass130723%_)
                     (_%obj130743%_ _%obj130718%_)
                     (_%klass130748%_ _%klass130740%_))
                (__class-instance? _%klass130748%_ _%obj130743%_))
              (let ((_%off130791%_
                     (let* ((_%klass130762%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj130718%_)))
                            (_%slot130765%_ _%slot130731%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass130762%_ 'class))
                           (let ((_%klass130770%_ _%klass130762%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot130765%_))
                                 (let ((_%slot130781%_ _%slot130765%_))
                                   (__class-slot-offset
                                    _%klass130770%_
                                    _%slot130781%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot130765%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass130762%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj130718%_
                 _%val130720%_
                 _%off130791%_
                 _%klass130723%_
                 _%slot130731%_))
              (not-an-instance__0 _%obj130718%_ _%klass130723%_)))))
    (define class-slot-set!
      (lambda (_%klass122962%_ _%obj122963%_ _%slot122964%_ _%val122965%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122962%_ 'class))
            (let ((_%klass122969%_ _%klass122962%_))
              (if (let () (declare (not safe)) (symbolic? _%slot122964%_))
                  (let ((_%slot122979%_ _%slot122964%_))
                    (__class-slot-set!
                     _%klass122969%_
                     _%obj122963%_
                     _%slot122979%_
                     _%val122965%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@671.45-671.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot122964%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@671.24-671.29"
               'contract:
               'class-type?
               'value:
               _%klass122962%_)
              '#!void))))
    (define unchecked-field-ref
      (lambda (_%obj130714%_ _%off130715%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj130714%_ _%off130715%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj130710%_ _%off130711%_ _%val130712%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj130710%_
           _%val130712%_
           _%off130711%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj130707%_ _%slot130708%_)
        (unchecked-field-ref
         _%obj130707%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj130707%_))
          _%slot130708%_))))
    (define unchecked-slot-set!
      (lambda (_%obj130703%_ _%slot130704%_ _%val130705%_)
        (unchecked-field-set!
         _%obj130703%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj130703%_))
          _%slot130704%_)
         _%val130705%_)))
    (define __slot-error
      (lambda (_%obj130700%_ _%slot130701%_)
        (error '"Cannot find slot"
               'object:
               _%obj130700%_
               'slot:
               _%slot130701%_)))
    (define __slot-ref__%
      (lambda (_%obj130624%_ _%slot130625%_ _%E130626%_)
        (let* ((_%slot130629%_ _%slot130625%_)
               (_%E130637%_ _%E130626%_)
               (_%klass130646%_ (class-of _%obj130624%_))
               (_%$e130682%_
                (let* ((_%klass130649%_ _%klass130646%_)
                       (_%slot130652%_ _%slot130629%_)
                       (_%klass130657%_ _%klass130649%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot130652%_))
                      (let ((_%slot130672%_ _%slot130652%_))
                        (__class-slot-offset _%klass130657%_ _%slot130672%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot130652%_)
                        '#!void)))))
          (if _%$e130682%_
              ((lambda (_%off130685%_)
                 (unchecked-field-ref _%obj130624%_ _%off130685%_))
               _%$e130682%_)
              (let ()
                (declare (not safe))
                (_%E130637%_ _%obj130624%_ _%slot130629%_))))))
    (define __slot-ref__0
      (lambda (_%obj130691%_ _%slot130692%_)
        (let ((_%E130694%_ __slot-error))
          (__slot-ref__% _%obj130691%_ _%slot130692%_ _%E130694%_))))
    (define __slot-ref
      (lambda _g135764_
        (let ((_g135765_ (let () (declare (not safe)) (##length _g135764_))))
          (cond ((let () (declare (not safe)) (##fx= _g135765_ 2))
                 (apply __slot-ref__0 _g135764_))
                ((let () (declare (not safe)) (##fx= _g135765_ 3))
                 (apply __slot-ref__% _g135764_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g135764_))))))
    (define slot-ref__%
      (lambda (_%obj123227%_ _%slot123228%_ _%E123229%_)
        (if (symbol? _%slot123228%_)
            (let ((_%slot123233%_ _%slot123228%_))
              (if (procedure? _%E123229%_)
                  (let ((_%E123243%_ _%E123229%_))
                    (__slot-ref__% _%obj123227%_ _%slot123233%_ _%E123243%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@697.38-697.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E123229%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@697.21-697.25"
               'contract:
               'symbol?
               'value:
               _%slot123228%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj123256%_ _%slot123257%_)
        (let ((_%E123259%_ __slot-error))
          (slot-ref__% _%obj123256%_ _%slot123257%_ _%E123259%_))))
    (define slot-ref
      (lambda _g135766_
        (let ((_g135767_ (let () (declare (not safe)) (##length _g135766_))))
          (cond ((let () (declare (not safe)) (##fx= _g135767_ 2))
                 (apply slot-ref__0 _g135766_))
                ((let () (declare (not safe)) (##fx= _g135767_ 3))
                 (apply slot-ref__% _g135766_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g135766_))))))
    (define __slot-set!__%
      (lambda (_%obj130544%_ _%slot130545%_ _%val130546%_ _%E130547%_)
        (let* ((_%slot130550%_ _%slot130545%_)
               (_%E130558%_ _%E130547%_)
               (_%klass130567%_ (class-of _%obj130544%_))
               (_%$e130603%_
                (let* ((_%klass130570%_ _%klass130567%_)
                       (_%slot130573%_ _%slot130550%_)
                       (_%klass130578%_ _%klass130570%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot130573%_))
                      (let ((_%slot130593%_ _%slot130573%_))
                        (__class-slot-offset _%klass130578%_ _%slot130593%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot130573%_)
                        '#!void)))))
          (if _%$e130603%_
              ((lambda (_%off130606%_)
                 (unchecked-field-set!
                  _%obj130544%_
                  _%off130606%_
                  _%val130546%_))
               _%$e130603%_)
              (let ()
                (declare (not safe))
                (_%E130558%_ _%obj130544%_ _%slot130550%_))))))
    (define __slot-set!__0
      (lambda (_%obj130612%_ _%slot130613%_ _%val130614%_)
        (let ((_%E130616%_ __slot-error))
          (__slot-set!__%
           _%obj130612%_
           _%slot130613%_
           _%val130614%_
           _%E130616%_))))
    (define __slot-set!
      (lambda _g135768_
        (let ((_g135769_ (let () (declare (not safe)) (##length _g135768_))))
          (cond ((let () (declare (not safe)) (##fx= _g135769_ 3))
                 (apply __slot-set!__0 _g135768_))
                ((let () (declare (not safe)) (##fx= _g135769_ 4))
                 (apply __slot-set!__% _g135768_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g135768_))))))
    (define slot-set!__%
      (lambda (_%obj123386%_ _%slot123387%_ _%val123388%_ _%E123389%_)
        (if (symbol? _%slot123387%_)
            (let ((_%slot123393%_ _%slot123387%_))
              (if (procedure? _%E123389%_)
                  (let ((_%E123403%_ _%E123389%_))
                    (__slot-set!__%
                     _%obj123386%_
                     _%slot123393%_
                     _%val123388%_
                     _%E123403%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@699.43-699.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E123389%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@699.22-699.26"
               'contract:
               'symbol?
               'value:
               _%slot123387%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj123416%_ _%slot123417%_ _%val123418%_)
        (let ((_%E123420%_ __slot-error))
          (slot-set!__%
           _%obj123416%_
           _%slot123417%_
           _%val123418%_
           _%E123420%_))))
    (define slot-set!
      (lambda _g135770_
        (let ((_g135771_ (let () (declare (not safe)) (##length _g135770_))))
          (cond ((let () (declare (not safe)) (##fx= _g135771_ 3))
                 (apply slot-set!__0 _g135770_))
                ((let () (declare (not safe)) (##fx= _g135771_ 4))
                 (apply slot-set!__% _g135770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g135770_))))))
    (define __subclass?
      (lambda (_%maybe-sub-class130515%_ _%maybe-super-class130516%_)
        (let* ((_%maybe-sub-class130519%_ _%maybe-sub-class130515%_)
               (_%maybe-super-class130527%_ _%maybe-super-class130516%_)
               (_%maybe-super-class-id130536%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class130527%_)))
               (_%$e130538%_
                (eq? _%maybe-super-class-id130536%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class130519%_)))))
          (if _%$e130538%_
              _%$e130538%_
              (let ((__tmp135773
                     (lambda (_%super-class130541%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class130541%_))
                            _%maybe-super-class-id130536%_)))
                    (__tmp135772
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class130519%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (ormap__0 __tmp135773 __tmp135772))))))
    (define subclass?
      (lambda (_%maybe-sub-class123547%_ _%maybe-super-class123548%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class123547%_ 'class))
            (let ((_%maybe-sub-class123552%_ _%maybe-sub-class123547%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class123548%_
                     'class))
                  (let ((_%maybe-super-class123562%_
                         _%maybe-super-class123548%_))
                    (__subclass?
                     _%maybe-sub-class123552%_
                     _%maybe-super-class123562%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@705.45-705.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class123548%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@705.18-705.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class123547%_)
              '#!void))))
    (define object?
      (lambda (_%o130512%_)
        (if (let () (declare (not safe)) (##structure? _%o130512%_))
            (let ((__tmp135774
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o130512%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp135774 'class))
            '#f)))
    (define __direct-instance?
      (lambda (_%klass130499%_ _%obj130500%_)
        (let* ((_%klass130503%_ _%klass130499%_)
               (__tmp135775
                (let () (declare (not safe)) (##type-id _%klass130503%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj130500%_ __tmp135775))))
    (define direct-instance?
      (lambda (_%klass123692%_ _%obj123693%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123692%_ 'class))
            (let ((_%klass123697%_ _%klass123692%_))
              (__direct-instance? _%klass123697%_ _%obj123693%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@719.25-719.30"
               'contract:
               'class-type?
               'value:
               _%klass123692%_)
              '#!void))))
    (define immediate-instance-of?
      (lambda (_%klass130495%_ _%obj130496%_)
        (if (let () (declare (not safe)) (##structure? _%obj130496%_))
            (eq? _%klass130495%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj130496%_)))
            '#f)))
    (define __struct-instance?
      (lambda (_%klass130482%_ _%obj130483%_)
        (let* ((_%klass130486%_ _%klass130482%_)
               (__tmp135776
                (let () (declare (not safe)) (##type-id _%klass130486%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj130483%_ __tmp135776))))
    (define struct-instance?
      (lambda (_%klass123827%_ _%obj123828%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123827%_ 'class))
            (let ((_%klass123832%_ _%klass123827%_))
              (__struct-instance? _%klass123832%_ _%obj123828%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@748.25-748.30"
               'contract:
               'class-type?
               'value:
               _%klass123827%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass130434%_ _%obj130435%_)
        (let* ((_%klass130438%_ _%klass130434%_)
               (_%type130447%_ (class-of _%obj130435%_))
               (_%maybe-sub-class130449%_ _%type130447%_)
               (_%maybe-super-class130452%_ _%klass130438%_)
               (_%maybe-sub-class130457%_ _%maybe-sub-class130449%_)
               (_%maybe-super-class130472%_ _%maybe-super-class130452%_))
          (__subclass?
           _%maybe-sub-class130457%_
           _%maybe-super-class130472%_))))
    (define class-instance?
      (lambda (_%klass123962%_ _%obj123963%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123962%_ 'class))
            (let ((_%klass123967%_ _%klass123962%_))
              (__class-instance? _%klass123967%_ _%obj123963%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.24-753.29"
               'contract:
               'class-type?
               'value:
               _%klass123962%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass130393%_ _%k130394%_)
        (let* ((_%klass130397%_ _%klass130393%_) (_%k130405%_ _%k130394%_))
          (if (let* ((_%klass130414%_ _%klass130397%_)
                     (_%klass130419%_ _%klass130414%_))
                (__class-type-system? _%klass130419%_))
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass130397%_)
                '#!void)
              (let ((_%obj130432%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass130397%_ _%k130405%_))))
                (__object-fill! _%obj130432%_ '#f))))))
    (define make-object
      (lambda (_%klass124097%_ _%k124098%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124097%_ 'class))
            (let ((_%klass124102%_ _%klass124097%_))
              (if (fixnum? _%k124098%_)
                  (let ((_%k124112%_ _%k124098%_))
                    (__make-object _%klass124102%_ _%k124112%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@758.37-758.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k124098%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@758.20-758.25"
               'contract:
               'class-type?
               'value:
               _%klass124097%_)
              '#!void))))
    (define __object-class
      (lambda (_%obj130381%_)
        (let ((_%obj130384%_ _%obj130381%_))
          (declare (not safe))
          (##structure-type _%obj130384%_))))
    (define object-class
      (lambda (_%obj124242%_)
        (if (object? _%obj124242%_)
            (let ((_%obj124246%_ _%obj124242%_))
              (__object-class _%obj124246%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@778.21-778.24"
               'contract:
               'object?
               'value:
               _%obj124242%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj130363%_ _%fill130364%_)
        (let ((_%obj130367%_ _%obj130363%_))
          (let _%loop130376%_ ((_%i130378%_
                                (let ((__tmp135777
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj130367%_))))
                                  (declare (not safe))
                                  (##fx- __tmp135777 '1))))
            (if (let () (declare (not safe)) (##fx> _%i130378%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj130367%_
                     _%fill130364%_
                     _%i130378%_
                     '#f
                     '#f))
                  (_%loop130376%_
                   (let () (declare (not safe)) (##fx- _%i130378%_ '1))))
                _%obj130367%_)))))
    (define object-fill!
      (lambda (_%obj124376%_ _%fill124377%_)
        (if (object? _%obj124376%_)
            (let ((_%obj124381%_ _%obj124376%_))
              (__object-fill! _%obj124381%_ _%fill124377%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@783.21-783.24"
               'contract:
               'object?
               'value:
               _%obj124376%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass130319%_)
        (let* ((_%klass130322%_ _%klass130319%_)
               (_%klass130331%_ _%klass130322%_)
               (_%k130334%_
                (let ((__tmp135778
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass130322%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp135778)))
               (_%klass130339%_ _%klass130331%_)
               (_%k130353%_ _%k130334%_))
          (__make-object _%klass130339%_ _%k130353%_))))
    (define new-instance
      (lambda (_%klass124511%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124511%_ 'class))
            (let ((_%klass124515%_ _%klass124511%_))
              (__new-instance _%klass124515%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@794.21-794.26"
               'contract:
               'class-type?
               'value:
               _%klass124511%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass130178%_ . _%args130179%_)
        (let* ((_%klass130182%_ _%klass130178%_)
               (_%$e130191%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass130182%_ '10 '#f '#f))))
          (if _%$e130191%_
              ((lambda (_%kons-id130194%_)
                 (let ((_%obj130216%_
                        (let* ((_%klass130196%_ _%klass130182%_)
                               (_%klass130201%_ _%klass130196%_))
                          (__new-instance _%klass130201%_))))
                   (___constructor-init!
                    _%klass130182%_
                    _%kons-id130194%_
                    _%obj130216%_
                    _%args130179%_)
                   _%obj130216%_))
               _%$e130191%_)
              (if (let* ((_%klass130218%_ _%klass130182%_)
                         (_%klass130223%_ _%klass130218%_))
                    (__class-type-metaclass? _%klass130223%_))
                  (let ((_%obj130250%_
                         (let* ((_%klass130234%_ _%klass130182%_)
                                (_%klass130239%_ _%klass130234%_))
                           (__new-instance _%klass130239%_))))
                    (__metaclass-instance-init!
                     _%klass130182%_
                     _%obj130250%_
                     _%args130179%_)
                    _%obj130250%_)
                  (if (let* ((_%klass130252%_ _%klass130182%_)
                             (_%klass130257%_ _%klass130252%_))
                        (__class-type-struct? _%klass130257%_))
                      (if (let ((__tmp135780
                                 (let* ((_%klass130286%_ _%klass130182%_)
                                        (_%klass130291%_ _%klass130286%_))
                                   (__class-type-field-count _%klass130291%_)))
                                (__tmp135779
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args130179%_))))
                            (declare (not safe))
                            (##fx= __tmp135780 __tmp135779))
                          (apply ##structure _%klass130182%_ _%args130179%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass130182%_
                                   'slots:
                                   (let* ((_%klass130303%_ _%klass130182%_)
                                          (_%klass130308%_ _%klass130303%_))
                                     (__class-type-slot-list _%klass130308%_))
                                   'args:
                                   _%args130179%_)
                            '#!void))
                      (let ((_%obj130284%_
                             (let* ((_%klass130268%_ _%klass130182%_)
                                    (_%klass130273%_ _%klass130268%_))
                               (__new-instance _%klass130273%_))))
                        (___class-instance-init!
                         _%klass130182%_
                         _%obj130284%_
                         _%args130179%_)
                        _%obj130284%_)))))))
    (define make-instance
      (lambda (_%klass124645%_ . _%args124646%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124645%_ 'class))
            (let ((_%klass124650%_ _%klass124645%_))
              (declare (not safe))
              (##apply __make-instance _%klass124650%_ _%args124646%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@797.22-797.27"
               'contract:
               'class-type?
               'value:
               _%klass124645%_)
              '#!void))))
    (define make-class-instance make-instance)
    (define __struct-instance-init!
      (lambda (_%obj130165%_ . _%args130166%_)
        (let ((_%obj130169%_ _%obj130165%_))
          (if (let ((__tmp135782
                     (let () (declare (not safe)) (##length _%args130166%_)))
                    (__tmp135781
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj130169%_))))
                (declare (not safe))
                (##fx< __tmp135782 __tmp135781))
              (___struct-instance-init! _%obj130169%_ _%args130166%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj130169%_
                     'args:
                     _%args130166%_))
          '#!void)))
    (define struct-instance-init!
      (lambda (_%obj124780%_ . _%args124781%_)
        (if (object? _%obj124780%_)
            (let ((_%obj124785%_ _%obj124780%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj124785%_ _%args124781%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@822.30-822.33"
               'contract:
               'object?
               'value:
               _%obj124780%_)
              '#!void))))
    (define ___struct-instance-init!
      (lambda (_%obj130124%_ _%args130125%_)
        (let _%lp130127%_ ((_%k130129%_ '1) (_%rest130130%_ _%args130125%_))
          (let* ((_%rest130131130139%_ _%rest130130%_)
                 (_%else130133130147%_ (lambda () _%obj130124%_))
                 (_%K130135130153%_
                  (lambda (_%rest130150%_ _%hd130151%_)
                    (unchecked-field-set!
                     _%obj130124%_
                     _%k130129%_
                     _%hd130151%_)
                    (_%lp130127%_
                     (let () (declare (not safe)) (##fx+ _%k130129%_ '1))
                     _%rest130150%_))))
            (if (pair? _%rest130131130139%_)
                (let ((_%hd130136130156%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest130131130139%_)))
                      (_%tl130137130158%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest130131130139%_))))
                  (let* ((_%hd130161%_ _%hd130136130156%_)
                         (_%rest130163%_ _%tl130137130158%_))
                    (_%K130135130153%_ _%rest130163%_ _%hd130161%_)))
                (_%else130133130147%_))))))
    (define __class-instance-init!
      (lambda (_%obj130111%_ . _%args130112%_)
        (let ((_%obj130115%_ _%obj130111%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj130115%_))
           _%obj130115%_
           _%args130112%_)
          '#!void)))
    (define class-instance-init!
      (lambda (_%obj124915%_ . _%args124916%_)
        (if (object? _%obj124915%_)
            (let ((_%obj124920%_ _%obj124915%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj124920%_ _%args124916%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@862.29-862.32"
               'contract:
               'object?
               'value:
               _%obj124915%_)
              '#!void))))
    (define ___class-instance-init!
      (lambda (_%klass130053%_ _%obj130054%_ _%args130055%_)
        (let _%lp130057%_ ((_%rest130059%_ _%args130055%_))
          (let* ((_%rest130060130070%_ _%rest130059%_)
                 (_%else130062130078%_
                  (lambda ()
                    (if (null? _%rest130059%_)
                        _%obj130054%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass130053%_
                               'rest:
                               _%rest130059%_))))
                 (_%K130064130092%_
                  (lambda (_%rest130081%_ _%val130082%_ _%key130083%_)
                    (if (keyword? _%key130083%_)
                        (let ((_%$e130086%_
                               (__class-slot-offset
                                _%klass130053%_
                                _%key130083%_)))
                          (if _%$e130086%_
                              ((lambda (_%off130089%_)
                                 (unchecked-field-set!
                                  _%obj130054%_
                                  _%off130089%_
                                  _%val130082%_)
                                 (_%lp130057%_ _%rest130081%_))
                               _%$e130086%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass130053%_
                                     'slot:
                                     _%key130083%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key130083%_)))))
            (if (pair? _%rest130060130070%_)
                (let ((_%hd130065130095%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest130060130070%_)))
                      (_%tl130066130097%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest130060130070%_))))
                  (let ((_%key130100%_ _%hd130065130095%_))
                    (if (pair? _%tl130066130097%_)
                        (let ((_%hd130067130102%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl130066130097%_)))
                              (_%tl130068130104%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl130066130097%_))))
                          (let* ((_%val130107%_ _%hd130067130102%_)
                                 (_%rest130109%_ _%tl130068130104%_))
                            (_%K130064130092%_
                             _%rest130109%_
                             _%val130107%_
                             _%key130100%_)))
                        (_%else130062130078%_))))
                (_%else130062130078%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass130049%_ _%obj130050%_ _%args130051%_)
        (apply call-method
               _%klass130049%_
               'instance-init!
               _%obj130050%_
               _%args130051%_)))
    (define __constructor-init!
      (lambda (_%klass130018%_
               _%kons-id130019%_
               _%obj130020%_
               .
               _%args130021%_)
        (let* ((_%klass130024%_ _%klass130018%_)
               (_%kons-id130032%_ _%kons-id130019%_)
               (_%obj130040%_ _%obj130020%_))
          (___constructor-init!
           _%klass130024%_
           _%kons-id130032%_
           _%obj130040%_
           _%args130021%_)
          '#!void)))
    (define constructor-init!
      (lambda (_%klass125050%_
               _%kons-id125051%_
               _%obj125052%_
               .
               _%args125053%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125050%_ 'class))
            (let ((_%klass125057%_ _%klass125050%_))
              (if (symbol? _%kons-id125051%_)
                  (let ((_%kons-id125067%_ _%kons-id125051%_))
                    (if (object? _%obj125052%_)
                        (let ((_%obj125077%_ _%obj125052%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass125057%_
                                   _%kons-id125067%_
                                   _%obj125077%_
                                   _%args125053%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@886.63-886.66"
                           'contract:
                           'object?
                           'value:
                           _%obj125052%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@886.43-886.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id125051%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@886.26-886.31"
               'contract:
               'class-type?
               'value:
               _%klass125050%_)
              '#!void))))
    (define ___constructor-init!
      (lambda (_%klass130007%_ _%kons-id130008%_ _%obj130009%_ _%args130010%_)
        (let ((_%$e130012%_
               (__find-method
                _%klass130007%_
                _%obj130009%_
                _%kons-id130008%_)))
          (if _%$e130012%_
              ((lambda (_%kons130015%_)
                 (apply _%kons130015%_ _%obj130009%_ _%args130010%_)
                 _%obj130009%_)
               _%$e130012%_)
              (error '"missing constructor"
                     'class:
                     _%klass130007%_
                     'method:
                     _%kons-id130008%_)))))
    (define __struct-copy
      (lambda (_%struct129995%_)
        (let ((_%struct129998%_ _%struct129995%_))
          (declare (not safe))
          (##structure-copy _%struct129998%_))))
    (define struct-copy
      (lambda (_%struct125207%_)
        (if (object? _%struct125207%_)
            (let ((_%struct125211%_ _%struct125207%_))
              (__struct-copy _%struct125211%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@900.20-900.26"
               'contract:
               'object?
               'value:
               _%struct125207%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj129976%_)
        (let* ((_%obj129979%_ _%obj129976%_)
               (_%len129988%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj129979%_))))
          (let _%recur129990%_ ((_%i129992%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i129992%_ _%len129988%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj129979%_
                         _%i129992%_
                         '#f
                         '#f))
                      (_%recur129990%_
                       (let () (declare (not safe)) (##fx+ _%i129992%_ '1))))
                '())))))
    (define struct->list
      (lambda (_%obj125341%_)
        (if (object? _%obj125341%_)
            (let ((_%obj125345%_ _%obj125341%_))
              (__struct->list _%obj125345%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@903.21-903.24"
               'contract:
               'object?
               'value:
               _%obj125341%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj129928%_)
        (let* ((_%obj129931%_ _%obj129928%_)
               (_%klass129940%_
                (let () (declare (not safe)) (##structure-type _%obj129931%_)))
               (_%slot-vector129942%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass129940%_ '7 '#f '#f))))
          (let _%loop129944%_ ((_%index129946%_
                                (let ((__tmp135783
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector129942%_))))
                                  (declare (not safe))
                                  (##fx- __tmp135783 '1)))
                               (_%plist129947%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index129946%_ '1))
                (cons _%klass129940%_ _%plist129947%_)
                (let ((_%slot129950%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector129942%_
                          _%index129946%_))))
                  (_%loop129944%_
                   (let () (declare (not safe)) (##fx- _%index129946%_ '1))
                   (cons (let ((_%sym129952%_ _%slot129950%_))
                           (if (symbol? _%sym129952%_)
                               (let ((_%sym129957%_ _%sym129952%_))
                                 (declare (not safe))
                                 (__symbol->keyword _%sym129957%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  'symbol?
                                  'value:
                                  _%sym129952%_)
                                 '#!void)))
                         (cons (unchecked-field-ref
                                _%obj129931%_
                                _%index129946%_)
                               _%plist129947%_)))))))))
    (define class->list
      (lambda (_%obj125475%_)
        (if (object? _%obj125475%_)
            (let ((_%obj125479%_ _%obj125475%_)) (__class->list _%obj125479%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@911.20-911.23"
               'contract:
               'object?
               'value:
               _%obj125475%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj129878%_ _%id129879%_ . _%args129880%_)
        (let* ((_%id129883%_ _%id129879%_)
               (_%$e129914%_
                (let* ((_%obj129892%_ _%obj129878%_)
                       (_%id129895%_ _%id129883%_)
                       (_%id129900%_ _%id129895%_))
                  (__method-ref _%obj129892%_ _%id129900%_))))
          (if _%$e129914%_
              ((lambda (_%method129917%_)
                 (let ((_%method129919%_ _%method129917%_))
                   (apply _%method129919%_ _%obj129878%_ _%args129880%_)))
               _%$e129914%_)
              (error '"cannot find method"
                     'object:
                     _%obj129878%_
                     'method:
                     _%id129883%_)))))
    (define call-method
      (lambda (_%obj125609%_ _%id125610%_ . _%args125611%_)
        (if (symbol? _%id125610%_)
            (let ((_%id125615%_ _%id125610%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj125609%_
                       _%id125615%_
                       _%args125611%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@926.24-926.26"
               'contract:
               'symbol?
               'value:
               _%id125610%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj129829%_ _%id129830%_)
        (let* ((_%id129833%_ _%id129830%_)
               (_%klass129842%_ (class-of _%obj129829%_))
               (_%obj129845%_ _%obj129829%_)
               (_%id129848%_ _%id129833%_)
               (_%klass129853%_ _%klass129842%_)
               (_%id129868%_ _%id129848%_))
          (__find-method _%klass129853%_ _%obj129845%_ _%id129868%_))))
    (define method-ref
      (lambda (_%obj125745%_ _%id125746%_)
        (if (symbol? _%id125746%_)
            (let ((_%id125750%_ _%id125746%_))
              (__method-ref _%obj125745%_ _%id125750%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@953.23-953.25"
               'contract:
               'symbol?
               'value:
               _%id125746%_)
              '#!void))))
    (define checked-method-ref
      (lambda (_%obj129801%_ _%id129802%_)
        (let ((_%$e129826%_
               (let* ((_%obj129805%_ _%obj129801%_)
                      (_%id129808%_ _%id129802%_))
                 (if (symbol? _%id129808%_)
                     (let ((_%id129813%_ _%id129808%_))
                       (__method-ref _%obj129805%_ _%id129813%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id129808%_)
                       '#!void)))))
          (if _%$e129826%_
              _%$e129826%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj129801%_
                       'method:
                       _%id129802%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj129750%_ _%id129751%_)
        (let* ((_%id129754%_ _%id129751%_)
               (_%$e129785%_
                (let* ((_%obj129763%_ _%obj129750%_)
                       (_%id129766%_ _%id129754%_)
                       (_%id129771%_ _%id129766%_))
                  (__method-ref _%obj129763%_ _%id129771%_))))
          (if _%$e129785%_
              ((lambda (_%method129788%_)
                 (let ((_%method129790%_ _%method129788%_))
                   (lambda _%args129798%_
                     (apply _%method129790%_ _%obj129750%_ _%args129798%_))))
               _%$e129785%_)
              '#f))))
    (define bound-method-ref
      (lambda (_%obj125880%_ _%id125881%_)
        (if (symbol? _%id125881%_)
            (let ((_%id125885%_ _%id125881%_))
              (__bound-method-ref _%obj125880%_ _%id125885%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@961.29-961.31"
               'contract:
               'symbol?
               'value:
               _%id125881%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj129733%_ _%id129734%_)
        (let* ((_%id129737%_ _%id129734%_)
               (_%method129746%_
                (checked-method-ref _%obj129733%_ _%id129737%_)))
          (lambda _%args129748%_
            (apply _%method129746%_ _%obj129733%_ _%args129748%_)))))
    (define checked-bound-method-ref
      (lambda (_%obj126015%_ _%id126016%_)
        (if (symbol? _%id126016%_)
            (let ((_%id126020%_ _%id126016%_))
              (__checked-bound-method-ref _%obj126015%_ _%id126020%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@970.37-970.39"
               'contract:
               'symbol?
               'value:
               _%id126016%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass129602%_ _%obj129603%_ _%id129604%_)
        (let* ((_%klass129607%_ _%klass129602%_) (_%id129615%_ _%id129604%_))
          (if (let* ((_%klass129624%_ _%klass129607%_)
                     (_%klass129629%_ _%klass129624%_))
                (__class-type-sealed? _%klass129629%_))
              (let ((_%tab129659%_
                     (let* ((_%klass129643%_ _%klass129607%_)
                            (_%klass129648%_ _%klass129643%_))
                       (__specialize-class _%klass129648%_))))
                (declare (not safe))
                (symbolic-table-ref _%tab129659%_ _%id129615%_ '#f))
              (let ((_%$e129694%_
                     (let* ((_%klass129661%_ _%klass129607%_)
                            (_%obj129664%_ _%obj129603%_)
                            (_%id129667%_ _%id129615%_)
                            (_%klass129672%_ _%klass129661%_)
                            (_%id129684%_ _%id129667%_))
                       (__direct-method-ref
                        _%klass129672%_
                        _%obj129664%_
                        _%id129684%_))))
                (if _%$e129694%_
                    _%$e129694%_
                    (let* ((_%klass129698%_ _%klass129607%_)
                           (_%obj129701%_ _%obj129603%_)
                           (_%id129704%_ _%id129615%_)
                           (_%klass129709%_ _%klass129698%_)
                           (_%id129723%_ _%id129704%_))
                      (__mixin-method-ref
                       _%klass129709%_
                       _%obj129701%_
                       _%id129723%_))))))))
    (define find-method
      (lambda (_%klass126150%_ _%obj126151%_ _%id126152%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126150%_ 'class))
            (let ((_%klass126156%_ _%klass126150%_))
              (if (symbol? _%id126152%_)
                  (let ((_%id126166%_ _%id126152%_))
                    (__find-method _%klass126156%_ _%obj126151%_ _%id126166%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@975.41-975.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id126152%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@975.20-975.25"
               'contract:
               'class-type?
               'value:
               _%klass126150%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins129547%_ _%obj129548%_ _%id129549%_)
        (let* ((_%id129552%_ _%id129549%_)
               (__tmp135784
                (lambda (_%g129560129562%_)
                  (let* ((_%klass129565%_ _%g129560129562%_)
                         (_%obj129568%_ _%obj129548%_)
                         (_%id129571%_ _%id129552%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass129565%_ 'class))
                        (let* ((_%klass129576%_ _%klass129565%_)
                               (_%id129592%_ _%id129571%_))
                          (__direct-method-ref
                           _%klass129576%_
                           _%obj129568%_
                           _%id129592%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass129565%_)
                          '#!void))))))
          (declare (not safe))
          (ormap__0 __tmp135784 _%mixins129547%_))))
    (define mixin-find-method
      (lambda (_%mixins126296%_ _%obj126297%_ _%id126298%_)
        (if (symbol? _%id126298%_)
            (let ((_%id126302%_ _%id126298%_))
              (__mixin-find-method
               _%mixins126296%_
               _%obj126297%_
               _%id126302%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@984.37-984.39"
               'contract:
               'symbol?
               'value:
               _%id126298%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass129440%_ _%obj129441%_ _%id129442%_)
        (let* ((_%klass129445%_ _%klass129440%_) (_%id129453%_ _%id129442%_))
          (letrec ((_%metaclass-resolve-method129462%_
                    (lambda ()
                      (let* ((_%obj129523%_ _%klass129445%_)
                             (_%id129526%_ 'direct-method-ref)
                             (_%args129529%_ (list _%obj129441%_ _%id129453%_))
                             (_%id129534%_ _%id129526%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj129523%_
                                 _%id129534%_
                                 _%args129529%_))))
                   (_%metaclass-resolve-method!129463%_
                    (lambda ()
                      (let ((_%method129520%_
                             (_%metaclass-resolve-method129462%_)))
                        (let ((__tmp135786
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass129445%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp135785
                               (if _%method129520%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp135786
                           _%id129453%_
                           __tmp135785))
                        _%method129520%_))))
            (let ((_%$e129465%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass129445%_ '11 '#f '#f))))
              (if _%$e129465%_
                  ((lambda (_%ht129468%_)
                     (let ((_%method129470%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht129468%_
                               _%id129453%_
                               '#f))))
                       (if (procedure? _%method129470%_)
                           _%method129470%_
                           (if (let* ((_%klass129473%_ _%klass129445%_)
                                      (_%klass129478%_ _%klass129473%_))
                                 (__class-type-metaclass? _%klass129478%_))
                               (let ((_%$e129496%_ _%method129470%_))
                                 (if (eq? 'resolved _%$e129496%_)
                                     (_%metaclass-resolve-method129462%_)
                                     (if (eq? 'unknown _%$e129496%_)
                                         '#f
                                         (_%metaclass-resolve-method!129463%_))))
                               '#f))))
                   _%$e129465%_)
                  (if (let* ((_%klass129500%_ _%klass129445%_)
                             (_%klass129505%_ _%klass129500%_))
                        (__class-type-metaclass? _%klass129505%_))
                      (let ((_%tab129516%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass129445%_
                           _%tab129516%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!129463%_))
                      '#f)))))))
    (define direct-method-ref
      (lambda (_%klass126432%_ _%obj126433%_ _%id126434%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126432%_ 'class))
            (let ((_%klass126438%_ _%klass126432%_))
              (if (symbol? _%id126434%_)
                  (let ((_%id126448%_ _%id126434%_))
                    (__direct-method-ref
                     _%klass126438%_
                     _%obj126433%_
                     _%id126448%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@987.47-987.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id126434%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@987.26-987.31"
               'contract:
               'class-type?
               'value:
               _%klass126432%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass129392%_ _%obj129393%_ _%id129394%_)
        (let* ((_%klass129397%_ _%klass129392%_)
               (_%id129405%_ _%id129394%_)
               (_%mixins129414%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass129397%_ '6 '#f '#f)))
               (_%obj129417%_ _%obj129393%_)
               (_%id129420%_ _%id129405%_)
               (_%id129425%_ _%id129420%_))
          (__mixin-find-method _%mixins129414%_ _%obj129417%_ _%id129425%_))))
    (define mixin-method-ref
      (lambda (_%klass126578%_ _%obj126579%_ _%id126580%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126578%_ 'class))
            (let ((_%klass126584%_ _%klass126578%_))
              (if (symbol? _%id126580%_)
                  (let ((_%id126594%_ _%id126580%_))
                    (__mixin-method-ref
                     _%klass126584%_
                     _%obj126579%_
                     _%id126594%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1017.46-1017.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id126580%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1017.25-1017.30"
               'contract:
               'class-type?
               'value:
               _%klass126578%_)
              '#!void))))
    (define __bind-method!__%
      (lambda (_%klass129302%_ _%id129303%_ _%proc129304%_ _%rebind?129305%_)
        (let* ((_%id129308%_ _%id129303%_) (_%proc129316%_ _%proc129304%_))
          (letrec ((_%bind!129325%_
                    (lambda (_%ht129376%_)
                      (if (and (not _%rebind?129305%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht129376%_
                                  _%id129308%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass129302%_
                                 'method:
                                 _%id129308%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht129376%_
                               _%id129308%_
                               _%proc129316%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass129302%_ 'class))
                (let ((_%ht129328%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass129302%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht129328%_
                      (_%bind!129325%_ _%ht129328%_)
                      (let ((_%ht129330%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass129302%_
                           _%ht129330%_
                           '11
                           '#f
                           '#f))
                        (_%bind!129325%_ _%ht129330%_))))
                (if (let () (declare (not safe)) (##type? _%klass129302%_))
                    (let* ((_%klass129333%_
                            (__shadow-class__0 _%klass129302%_))
                           (_%id129336%_ _%id129308%_)
                           (_%proc129339%_ _%proc129316%_)
                           (_%rebind?129342%_ _%rebind?129305%_)
                           (_%id129347%_ _%id129336%_)
                           (_%proc129365%_ _%proc129339%_))
                      (__bind-method!__%
                       _%klass129333%_
                       _%id129347%_
                       _%proc129365%_
                       _%rebind?129342%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass129302%_)))))))
    (define __bind-method!__0
      (lambda (_%klass129381%_ _%id129382%_ _%proc129383%_)
        (let ((_%rebind?129385%_ '#f))
          (__bind-method!__%
           _%klass129381%_
           _%id129382%_
           _%proc129383%_
           _%rebind?129385%_))))
    (define __bind-method!
      (lambda _g135787_
        (let ((_g135788_ (let () (declare (not safe)) (##length _g135787_))))
          (cond ((let () (declare (not safe)) (##fx= _g135788_ 3))
                 (apply __bind-method!__0 _g135787_))
                ((let () (declare (not safe)) (##fx= _g135788_ 4))
                 (apply __bind-method!__% _g135787_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g135787_))))))
    (define bind-method!__%
      (lambda (_%klass126725%_ _%id126726%_ _%proc126727%_ _%rebind?126728%_)
        (if (symbol? _%id126726%_)
            (let ((_%id126732%_ _%id126726%_))
              (if (procedure? _%proc126727%_)
                  (let ((_%proc126742%_ _%proc126727%_))
                    (__bind-method!__%
                     _%klass126725%_
                     _%id126732%_
                     _%proc126742%_
                     _%rebind?126728%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1020.42-1020.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc126727%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1020.27-1020.29"
               'contract:
               'symbol?
               'value:
               _%id126726%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass126755%_ _%id126756%_ _%proc126757%_)
        (let ((_%rebind?126759%_ '#f))
          (bind-method!__%
           _%klass126755%_
           _%id126756%_
           _%proc126757%_
           _%rebind?126759%_))))
    (define bind-method!
      (lambda _g135789_
        (let ((_g135790_ (let () (declare (not safe)) (##length _g135789_))))
          (cond ((let () (declare (not safe)) (##fx= _g135790_ 3))
                 (apply bind-method!__0 _g135789_))
                ((let () (declare (not safe)) (##fx= _g135790_ 4))
                 (apply bind-method!__% _g135789_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g135789_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint129283%_ _%seed129284%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint129283%_
           procedure-hash
           eq?
           _%seed129284%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint129290%_ '#f) (_%seed129292%_ '0))
          (make-method-specializer-table__%
           _%size-hint129290%_
           _%seed129292%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint129294%_)
        (let ((_%seed129296%_ '0))
          (make-method-specializer-table__%
           _%size-hint129294%_
           _%seed129296%_))))
    (define make-method-specializer-table
      (lambda _g135791_
        (let ((_g135792_ (let () (declare (not safe)) (##length _g135791_))))
          (cond ((let () (declare (not safe)) (##fx= _g135792_ 0))
                 (apply make-method-specializer-table__0 _g135791_))
                ((let () (declare (not safe)) (##fx= _g135792_ 1))
                 (apply make-method-specializer-table__1 _g135791_))
                ((let () (declare (not safe)) (##fx= _g135792_ 2))
                 (apply make-method-specializer-table__% _g135791_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g135791_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint129263%_ _%seed129265%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint129263%_
           procedure-hash
           eq?
           _%seed129265%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint129271%_ '#f) (_%seed129273%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint129271%_
           _%seed129273%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint129275%_)
        (let ((_%seed129277%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint129275%_
           _%seed129277%_))))
    (define make-method-specializer-table/lock
      (lambda _g135793_
        (let ((_g135794_ (let () (declare (not safe)) (##length _g135793_))))
          (cond ((let () (declare (not safe)) (##fx= _g135794_ 0))
                 (apply make-method-specializer-table/lock__0 _g135793_))
                ((let () (declare (not safe)) (##fx= _g135794_ 1))
                 (apply make-method-specializer-table/lock__1 _g135793_))
                ((let () (declare (not safe)) (##fx= _g135794_ 2))
                 (apply make-method-specializer-table/lock__% _g135793_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g135793_))))))
    (define method-specializer-table-ref
      (lambda (_%tab129216%_ _%key129217%_ _%default129218%_)
        (let ((_%table129220%_
               (let () (declare (not safe)) (&raw-table-table _%tab129216%_)))
              (_%seed129221%_
               (let () (declare (not safe)) (&raw-table-seed _%tab129216%_))))
          (let* ((_%h129223%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key129217%_))
                         _%seed129221%_))
                 (_%size129226%_ (vector-length _%table129220%_))
                 (_%entries129229%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size129226%_ '2)))
                 (_%start129232%_
                  (let ((__tmp135795
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h129223%_ _%entries129229%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp135795 '1))))
            (let _%loop129236%_ ((_%probe129239%_ _%start129232%_)
                                 (_%i129241%_ '1)
                                 (_%deleted129243%_ '#f))
              (let ((_%k129246%_ (vector-ref _%table129220%_ _%probe129239%_)))
                (if (eq? _%k129246%_ (macro-unused-obj))
                    _%default129218%_
                    (if (eq? _%k129246%_ (macro-deleted-obj))
                        (_%loop129236%_
                         (let ((_%next-probe129251%_
                                (fx+ _%start129232%_
                                     _%i129241%_
                                     (fx* _%i129241%_ _%i129241%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe129251%_ _%size129226%_))
                         (let () (declare (not safe)) (##fx+ _%i129241%_ '1))
                         (let ((_%$e129254%_ _%deleted129243%_))
                           (if _%$e129254%_ _%$e129254%_ _%probe129239%_)))
                        (if (eq? _%key129217%_ _%k129246%_)
                            (vector-ref
                             _%table129220%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe129239%_ '1)))
                            (_%loop129236%_
                             (let ((_%next-probe129259%_
                                    (fx+ _%start129232%_
                                         _%i129241%_
                                         (fx* _%i129241%_ _%i129241%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe129259%_
                                _%size129226%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i129241%_ '1))
                             _%deleted129243%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab129189%_ _%key129190%_ _%default129191%_)
        (let ((_%lock129193%_
               (let () (declare (not safe)) (&raw-table-lock _%tab129189%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again129198%_ ((_%spin129201%_ '0))
              (if (let ((__tmp135796
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock129193%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp135796 '0))
                  (let ((__tmp135797 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock129193%_ '1 __tmp135797))
                  (if (let () (declare (not safe)) (##fx< _%spin129201%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again129198%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin129201%_ '1))))
                      (let ((_%owner129207%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock129193%_ '1))))
                        (if (eq? _%owner129207%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner129207%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again129198%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r129213%_
                 (method-specializer-table-ref
                  _%tab129189%_
                  _%key129190%_
                  _%default129191%_)))
            (let () (declare (not safe)) (##vector-set! _%lock129193%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock129193%_ '0 '0 '1))
            _%$r129213%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab129141%_ _%key129142%_ _%value129143%_)
        (let ((_%table129145%_
               (let () (declare (not safe)) (&raw-table-table _%tab129141%_)))
              (_%seed129146%_
               (let () (declare (not safe)) (&raw-table-seed _%tab129141%_))))
          (let* ((_%h129148%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key129142%_))
                         _%seed129146%_))
                 (_%size129151%_ (vector-length _%table129145%_))
                 (_%entries129154%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size129151%_ '2)))
                 (_%start129157%_
                  (let ((__tmp135798
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h129148%_ _%entries129154%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp135798 '1))))
            (let _%loop129161%_ ((_%probe129164%_ _%start129157%_)
                                 (_%i129166%_ '1)
                                 (_%deleted129168%_ '#f))
              (let ((_%k129171%_ (vector-ref _%table129145%_ _%probe129164%_)))
                (if (eq? _%k129171%_ (macro-unused-obj))
                    (if _%deleted129168%_
                        (begin
                          (vector-set!
                           _%table129145%_
                           _%deleted129168%_
                           _%key129142%_)
                          (vector-set!
                           _%table129145%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted129168%_ '1))
                           _%value129143%_)
                          ((lambda ()
                             (let ((__tmp135799
                                    (let ((__tmp135800
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab129141%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp135800 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab129141%_
                                __tmp135799)))))
                        (begin
                          (vector-set!
                           _%table129145%_
                           _%probe129164%_
                           _%key129142%_)
                          (vector-set!
                           _%table129145%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe129164%_ '1))
                           _%value129143%_)
                          ((lambda ()
                             (let ((__tmp135801
                                    (let ((__tmp135802
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab129141%_))))
                                      (declare (not safe))
                                      (##fx- __tmp135802 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab129141%_
                                __tmp135801))
                             (let ((__tmp135803
                                    (let ((__tmp135804
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab129141%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp135804 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab129141%_
                                __tmp135803))))))
                    (if (eq? _%k129171%_ (macro-deleted-obj))
                        (_%loop129161%_
                         (let ((_%next-probe129178%_
                                (fx+ _%start129157%_
                                     _%i129166%_
                                     (fx* _%i129166%_ _%i129166%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe129178%_ _%size129151%_))
                         (let () (declare (not safe)) (##fx+ _%i129166%_ '1))
                         (let ((_%$e129181%_ _%deleted129168%_))
                           (if _%$e129181%_ _%$e129181%_ _%probe129164%_)))
                        (if (eq? _%key129142%_ _%k129171%_)
                            (let ()
                              (vector-set!
                               _%table129145%_
                               _%probe129164%_
                               _%key129142%_)
                              (vector-set!
                               _%table129145%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe129164%_ '1))
                               _%value129143%_))
                            (_%loop129161%_
                             (let ((_%next-probe129186%_
                                    (fx+ _%start129157%_
                                         _%i129166%_
                                         (fx* _%i129166%_ _%i129166%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe129186%_
                                _%size129151%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i129166%_ '1))
                             _%deleted129168%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab129137%_ _%key129138%_ _%value129139%_)
        (if (let ((__tmp135807
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab129137%_)))
                  (__tmp135805
                   (let ((__tmp135806
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab129137%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp135806 '4))))
              (declare (not safe))
              (##fx< __tmp135807 __tmp135805))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab129137%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab129137%_
         _%key129138%_
         _%value129139%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab129109%_ _%key129110%_ _%value129111%_)
        (let ((_%lock129114%_
               (let () (declare (not safe)) (&raw-table-lock _%tab129109%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again129119%_ ((_%spin129122%_ '0))
              (if (let ((__tmp135808
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock129114%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp135808 '0))
                  (let ((__tmp135809 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock129114%_ '1 __tmp135809))
                  (if (let () (declare (not safe)) (##fx< _%spin129122%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again129119%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin129122%_ '1))))
                      (let ((_%owner129128%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock129114%_ '1))))
                        (if (eq? _%owner129128%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner129128%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again129119%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r129134%_
                 (method-specializer-table-set!
                  _%tab129109%_
                  _%key129110%_
                  _%value129111%_)))
            (let () (declare (not safe)) (##vector-set! _%lock129114%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock129114%_ '0 '0 '1))
            _%$r129134%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab129060%_
               _%key129061%_
               _%method-specializer-table-update!129062%_
               _%default129063%_)
        (let ((_%table129065%_
               (let () (declare (not safe)) (&raw-table-table _%tab129060%_)))
              (_%seed129066%_
               (let () (declare (not safe)) (&raw-table-seed _%tab129060%_))))
          (let* ((_%h129068%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key129061%_))
                         _%seed129066%_))
                 (_%size129071%_ (vector-length _%table129065%_))
                 (_%entries129074%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size129071%_ '2)))
                 (_%start129077%_
                  (let ((__tmp135810
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h129068%_ _%entries129074%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp135810 '1))))
            (let _%loop129081%_ ((_%probe129084%_ _%start129077%_)
                                 (_%i129086%_ '1)
                                 (_%deleted129088%_ '#f))
              (let ((_%k129091%_ (vector-ref _%table129065%_ _%probe129084%_)))
                (if (eq? _%k129091%_ (macro-unused-obj))
                    (if _%deleted129088%_
                        (begin
                          (vector-set!
                           _%table129065%_
                           _%deleted129088%_
                           _%key129061%_)
                          (vector-set!
                           _%table129065%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted129088%_ '1))
                           (_%method-specializer-table-update!129062%_
                            _%default129063%_))
                          ((lambda ()
                             (let ((__tmp135811
                                    (let ((__tmp135812
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab129060%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp135812 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab129060%_
                                __tmp135811)))))
                        (begin
                          (vector-set!
                           _%table129065%_
                           _%probe129084%_
                           _%key129061%_)
                          (vector-set!
                           _%table129065%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe129084%_ '1))
                           (_%method-specializer-table-update!129062%_
                            _%default129063%_))
                          ((lambda ()
                             (let ((__tmp135813
                                    (let ((__tmp135814
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab129060%_))))
                                      (declare (not safe))
                                      (##fx- __tmp135814 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab129060%_
                                __tmp135813))
                             (let ((__tmp135815
                                    (let ((__tmp135816
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab129060%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp135816 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab129060%_
                                __tmp135815))))))
                    (if (eq? _%k129091%_ (macro-deleted-obj))
                        (_%loop129081%_
                         (let ((_%next-probe129098%_
                                (fx+ _%start129077%_
                                     _%i129086%_
                                     (fx* _%i129086%_ _%i129086%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe129098%_ _%size129071%_))
                         (let () (declare (not safe)) (##fx+ _%i129086%_ '1))
                         (let ((_%$e129101%_ _%deleted129088%_))
                           (if _%$e129101%_ _%$e129101%_ _%probe129084%_)))
                        (if (eq? _%key129061%_ _%k129091%_)
                            (let ()
                              (vector-set!
                               _%table129065%_
                               _%probe129084%_
                               _%key129061%_)
                              (vector-set!
                               _%table129065%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe129084%_ '1))
                               (_%method-specializer-table-update!129062%_
                                (vector-ref
                                 _%table129065%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe129084%_ '1))))))
                            (_%loop129081%_
                             (let ((_%next-probe129106%_
                                    (fx+ _%start129077%_
                                         _%i129086%_
                                         (fx* _%i129086%_ _%i129086%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe129106%_
                                _%size129071%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i129086%_ '1))
                             _%deleted129088%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab129055%_
               _%key129056%_
               _%method-specializer-table-update!129057%_
               _%default129058%_)
        (if (let ((__tmp135819
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab129055%_)))
                  (__tmp135817
                   (let ((__tmp135818
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab129055%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp135818 '4))))
              (declare (not safe))
              (##fx< __tmp135819 __tmp135817))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab129055%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab129055%_
         _%key129056%_
         _%method-specializer-table-update!129057%_
         _%default129058%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab129026%_
               _%key129027%_
               _%method-specializer-table-update!129028%_
               _%default129029%_)
        (let ((_%lock129032%_
               (let () (declare (not safe)) (&raw-table-lock _%tab129026%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again129037%_ ((_%spin129040%_ '0))
              (if (let ((__tmp135820
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock129032%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp135820 '0))
                  (let ((__tmp135821 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock129032%_ '1 __tmp135821))
                  (if (let () (declare (not safe)) (##fx< _%spin129040%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again129037%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin129040%_ '1))))
                      (let ((_%owner129046%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock129032%_ '1))))
                        (if (eq? _%owner129046%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner129046%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again129037%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r129052%_
                 (_%method-specializer-table-update!129028%_
                  _%tab129026%_
                  _%key129027%_
                  _%method-specializer-table-update!129028%_
                  _%default129029%_)))
            (let () (declare (not safe)) (##vector-set! _%lock129032%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock129032%_ '0 '0 '1))
            _%$r129052%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab128983%_ _%key128984%_)
        (let ((_%table128986%_
               (let () (declare (not safe)) (&raw-table-table _%tab128983%_)))
              (_%seed128988%_
               (let () (declare (not safe)) (&raw-table-seed _%tab128983%_))))
          (let* ((_%h128991%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key128984%_))
                         _%seed128988%_))
                 (_%size128994%_ (vector-length _%table128986%_))
                 (_%entries128997%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size128994%_ '2)))
                 (_%start129000%_
                  (let ((__tmp135822
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h128991%_ _%entries128997%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp135822 '1))))
            (let _%loop129004%_ ((_%probe129007%_ _%start129000%_)
                                 (_%i129009%_ '1))
              (let ((_%k129012%_ (vector-ref _%table128986%_ _%probe129007%_)))
                (if (eq? _%k129012%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k129012%_ (macro-deleted-obj))
                        (_%loop129004%_
                         (let ((_%next-probe129017%_
                                (fx+ _%start129000%_
                                     _%i129009%_
                                     (fx* _%i129009%_ _%i129009%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe129017%_ _%size128994%_))
                         (let () (declare (not safe)) (##fx+ _%i129009%_ '1)))
                        (if (eq? _%key128984%_ _%k129012%_)
                            (let ()
                              (vector-set!
                               _%table128986%_
                               _%probe129007%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table128986%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe129007%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp135823
                                        (let ((__tmp135824
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab128983%_))))
                                          (declare (not safe))
                                          (##fx- __tmp135824 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab128983%_
                                    __tmp135823)))))
                            (_%loop129004%_
                             (let ((_%next-probe129023%_
                                    (fx+ _%start129000%_
                                         _%i129009%_
                                         (fx* _%i129009%_ _%i129009%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe129023%_
                                _%size128994%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i129009%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab128955%_ _%key128957%_)
        (let ((_%lock128960%_
               (let () (declare (not safe)) (&raw-table-lock _%tab128955%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again128965%_ ((_%spin128968%_ '0))
              (if (let ((__tmp135825
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock128960%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp135825 '0))
                  (let ((__tmp135826 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock128960%_ '1 __tmp135826))
                  (if (let () (declare (not safe)) (##fx< _%spin128968%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again128965%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin128968%_ '1))))
                      (let ((_%owner128974%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock128960%_ '1))))
                        (if (eq? _%owner128974%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner128974%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again128965%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r128980%_
                 (method-specializer-table-delete!
                  _%tab128955%_
                  _%key128957%_)))
            (let () (declare (not safe)) (##vector-set! _%lock128960%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock128960%_ '0 '0 '1))
            _%$r128980%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc128952%_ _%specializer128953%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc128952%_
         _%specializer128953%_)))
    (define __lookup-method-specializer
      (lambda (_%proc128950%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc128950%_
         '#f)))
    (define __specialize-class
      (lambda (_%klass128932%_)
        (let* ((_%klass128935%_ _%klass128932%_)
               (_%$e128944%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass128935%_ '12 '#f '#f))))
          (if _%$e128944%_
              _%$e128944%_
              (let ((_%method-table128948%_
                     (___specialize-class _%klass128935%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass128935%_
                   _%method-table128948%_
                   '12
                   '#f
                   '#f))
                _%method-table128948%_)))))
    (define specialize-class
      (lambda (_%klass126886%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126886%_ 'class))
            (let ((_%klass126890%_ _%klass126886%_))
              (__specialize-class _%klass126890%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1070.25-1070.30"
               'contract:
               'class-type?
               'value:
               _%klass126886%_)
              '#!void))))
    (define __specialize-method
      (lambda (_%klass128916%_
               _%method-table128917%_
               _%method128918%_
               _%proc128919%_)
        (let ((_%$e128921%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table128917%_
                  _%method128918%_
                  '#f))))
          (if _%$e128921%_
              _%$e128921%_
              (let ((_%$e128924%_
                     (__lookup-method-specializer _%proc128919%_)))
                (if _%$e128924%_
                    ((lambda (_%specialize128927%_)
                       (let ((_%specialized-proc128929%_
                              (_%specialize128927%_
                               _%klass128916%_
                               _%method-table128917%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table128917%_
                          _%method128918%_
                          _%specialized-proc128929%_)))
                     _%$e128924%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table128917%_
                       _%method128918%_
                       _%proc128919%_))))))))
    (define ___specialize-class
      (lambda (_%klass128783%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass128783%_ 'class))
            (if (let* ((_%klass128786%_ _%klass128783%_)
                       (_%klass128791%_ _%klass128786%_))
                  (__class-type-metaclass? _%klass128791%_))
                (let* ((_%obj128803%_ _%klass128783%_)
                       (_%id128806%_ 'specialize-class)
                       (_%args128809%_ '())
                       (_%id128814%_ _%id128806%_))
                  (declare (not safe))
                  (##apply __call-method
                           _%obj128803%_
                           _%id128814%_
                           _%args128809%_))
                (if (let* ((_%pred128827%_ class-type-metaclass?)
                           (_%lst128830%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass128783%_
                               '6
                               '#f
                               '#f)))
                           (_%pred128835%_ _%pred128827%_))
                      (declare (not safe))
                      (__find _%pred128835%_ _%lst128830%_))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass128783%_)
                    (let ((_%method-table128848%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop128850%_ ((_%rest128852%_
                                            (let* ((_%klass128899%_
                                                    _%klass128783%_)
                                                   (_%klass128904%_
                                                    _%klass128899%_))
                                              (__class-precedence-list
                                               _%klass128904%_))))
                        (let* ((_%rest128853128861%_ _%rest128852%_)
                               (_%else128855128869%_
                                (lambda () _%method-table128848%_))
                               (_%K128857128887%_
                                (lambda (_%rest128872%_ _%xklass128873%_)
                                  (let ((_%xmethod-table128874128876%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass128873%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table128874128876%_
                                        (let* ((_%xmethod-table128878%_
                                                _%xmethod-table128874128876%_)
                                               (__tmp135827
                                                (lambda (_%g128879128882%_
                                                         _%g128880128884%_)
                                                  (__specialize-method
                                                   _%klass128783%_
                                                   _%method-table128848%_
                                                   _%g128879128882%_
                                                   _%g128880128884%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table128878%_
                                           __tmp135827))
                                        '#f))
                                  (_%loop128850%_ _%rest128872%_))))
                          (if (pair? _%rest128853128861%_)
                              (let ((_%hd128858128890%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest128853128861%_)))
                                    (_%tl128859128892%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest128853128861%_))))
                                (let* ((_%xklass128895%_ _%hd128858128890%_)
                                       (_%rest128897%_ _%tl128859128892%_))
                                  (_%K128857128887%_
                                   _%rest128897%_
                                   _%xklass128895%_)))
                              (_%else128855128869%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass128783%_))
                (__specialize-class (__shadow-class__0 _%klass128783%_))
                (error '"bad class; cannot specialize" _%klass128783%_)))))
    (define __seal-class!
      (lambda (_%klass128646%_)
        (let ((_%klass128649%_ _%klass128646%_))
          (if (let* ((_%klass128658%_ _%klass128649%_)
                     (_%klass128663%_ _%klass128658%_))
                (__class-type-sealed? _%klass128663%_))
              '#!void
              (begin
                (if (let* ((_%klass128676%_ _%klass128649%_)
                           (_%klass128681%_ _%klass128676%_))
                      (__class-type-metaclass? _%klass128681%_))
                    (let ()
                      (let* ((_%obj128692%_ _%klass128649%_)
                             (_%id128695%_ 'seal-class!)
                             (_%args128698%_ '())
                             (_%id128703%_ _%id128695%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj128692%_
                                 _%id128703%_
                                 _%args128698%_))
                      (let* ((_%klass128716%_ _%klass128649%_)
                             (_%klass128721%_ _%klass128716%_))
                        (__specialize-class _%klass128721%_)))
                    (if (let* ((_%pred128731%_ class-type-metaclass?)
                               (_%lst128734%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass128649%_
                                   '6
                                   '#f
                                   '#f)))
                               (_%pred128739%_ _%pred128731%_))
                          (declare (not safe))
                          (__find _%pred128739%_ _%lst128734%_))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass128649%_)
                        (let* ((_%klass128752%_ _%klass128649%_)
                               (_%klass128757%_ _%klass128752%_))
                          (__specialize-class _%klass128757%_))))
                (let* ((_%klass128768%_ _%klass128649%_)
                       (_%klass128773%_ _%klass128768%_))
                  (__class-type-seal! _%klass128773%_)))))))
    (define seal-class!
      (lambda (_%klass127020%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127020%_ 'class))
            (let ((_%klass127024%_ _%klass127020%_))
              (__seal-class! _%klass127024%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1116.20-1116.25"
               'contract:
               'class-type?
               'value:
               _%klass127020%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass128534%_ _%obj128535%_ _%id128536%_)
        (let* ((_%subklass128539%_ _%subklass128534%_)
               (_%id128547%_ _%id128536%_))
          (letrec ((_%find-next-method128556%_
                    (lambda (_%klass128558%_)
                      (let _%lp128560%_ ((_%rest128562%_
                                          (let ((_%klass128631%_
                                                 _%klass128558%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%klass128631%_
                                                   'class))
                                                (let ((_%klass128636%_
                                                       _%klass128631%_))
                                                  (__class-precedence-list
                                                   _%klass128636%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/mop
                                                   'contract:
                                                   'class-type?
                                                   'value:
                                                   _%klass128631%_)
                                                  '#!void)))))
                        (let* ((_%rest128563128571%_ _%rest128562%_)
                               (_%else128565128579%_ (lambda () '#f))
                               (_%K128567128619%_
                                (lambda (_%rest128582%_ _%klass128583%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass128539%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass128583%_)))
                                      (let* ((_%mixins128585%_ _%rest128582%_)
                                             (_%obj128588%_ _%obj128535%_)
                                             (_%id128591%_ _%id128547%_)
                                             (_%id128596%_ _%id128591%_))
                                        (__mixin-find-method
                                         _%mixins128585%_
                                         _%obj128588%_
                                         _%id128596%_))
                                      (_%lp128560%_ _%rest128582%_)))))
                          (if (pair? _%rest128563128571%_)
                              (let ((_%hd128568128622%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest128563128571%_)))
                                    (_%tl128569128624%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest128563128571%_))))
                                (let* ((_%klass128627%_ _%hd128568128622%_)
                                       (_%rest128629%_ _%tl128569128624%_))
                                  (_%K128567128619%_
                                   _%rest128629%_
                                   _%klass128627%_)))
                              (_%else128565128579%_)))))))
            (_%find-next-method128556%_ (class-of _%obj128535%_))))))
    (define next-method
      (lambda (_%subklass127154%_ _%obj127155%_ _%id127156%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass127154%_ 'class))
            (let ((_%subklass127160%_ _%subklass127154%_))
              (if (symbol? _%id127156%_)
                  (let ((_%id127170%_ _%id127156%_))
                    (__next-method
                     _%subklass127160%_
                     _%obj127155%_
                     _%id127170%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1138.44-1138.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id127156%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1138.20-1138.28"
               'contract:
               'class-type?
               'value:
               _%subklass127154%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass128469%_ _%obj128470%_ _%id128471%_ . _%args128472%_)
        (let* ((_%subklass128475%_ _%subklass128469%_)
               (_%id128483%_ _%id128471%_)
               (_%$e128528%_
                (let* ((_%subklass128492%_ _%subklass128475%_)
                       (_%obj128495%_ _%obj128470%_)
                       (_%id128498%_ _%id128483%_)
                       (_%subklass128503%_ _%subklass128492%_)
                       (_%id128518%_ _%id128498%_))
                  (__next-method
                   _%subklass128503%_
                   _%obj128495%_
                   _%id128518%_))))
          (if _%$e128528%_
              ((lambda (_%methodf128531%_)
                 (apply _%methodf128531%_ _%obj128470%_ _%args128472%_))
               _%$e128528%_)
              (error '"cannot find next method"
                     'object:
                     _%obj128470%_
                     'method:
                     _%id128483%_)))))
    (define call-next-method
      (lambda (_%subklass127300%_ _%obj127301%_ _%id127302%_ . _%args127303%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass127300%_ 'class))
            (let ((_%subklass127307%_ _%subklass127300%_))
              (if (symbol? _%id127302%_)
                  (let ((_%id127317%_ _%id127302%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass127307%_
                             _%obj127301%_
                             _%id127317%_
                             _%args127303%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1149.49-1149.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id127302%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1149.25-1149.33"
               'contract:
               'class-type?
               'value:
               _%subklass127300%_)
              '#!void))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type128252%_ _%properties128253%_)
        (letrec ((_%shadow-type-id128255%_
                  (lambda (_%type128457%_)
                    (let ((__tmp135828
                           (let ()
                             (declare (not safe))
                             (##type-name _%type128457%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp135828 '"::t"))))
                 (_%shadow-type-name128256%_
                  (lambda (_%type128455%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type128455%_))))
                 (_%make-shadow-class128257%_
                  (lambda (_%type128337%_ _%precedence-list128338%_)
                    (let* ((_%super128340%_
                            (if (pair? _%precedence-list128338%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list128338%_))
                                      '())
                                '()))
                           (_%klass128452%_
                            (let* ((_%id128342%_
                                    (_%shadow-type-id128255%_ _%type128337%_))
                                   (_%name128345%_
                                    (let ()
                                      (declare (not safe))
                                      (##type-name _%type128337%_)))
                                   (_%direct-supers128348%_ _%super128340%_)
                                   (_%direct-slots128351%_ '())
                                   (_%properties128377%_
                                    (cons (cons 'struct: '#t)
                                          (cons (cons 'system: '#t)
                                                (cons (cons 'system-type:
                                                            _%type128337%_)
                                                      (let ((__tmp135829
                                                             (if (let ((_%type128354%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%type128337%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##type? _%type128354%_))
                               (let ((_%type128359%_ _%type128354%_))
                                 (__type-extensible? _%type128359%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  '##type?
                                  'value:
                                  _%type128354%_)
                                 '#!void)))
                         '()
                         (cons (cons 'final: '#t) '()))))
                (declare (not safe))
                (foldr__0 cons _%properties128253%_ __tmp135829))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%constructor128380%_ '#f)
                                   (_%id128385%_ _%id128342%_))
                              (if (symbol? _%name128345%_)
                                  (let* ((_%name128396%_ _%name128345%_)
                                         (_%direct-supers128406%_
                                          _%direct-supers128348%_)
                                         (_%direct-slots128416%_
                                          _%direct-slots128351%_)
                                         (_%properties128426%_
                                          _%properties128377%_))
                                    (if ((lambda (_%$obj128435%_)
                                           (or (not _%$obj128435%_)
                                               (symbol? _%$obj128435%_)))
                                         _%constructor128380%_)
                                        (let ((_%constructor128442%_
                                               _%constructor128380%_))
                                          (__make-class-type
                                           _%id128385%_
                                           _%name128396%_
                                           _%direct-supers128406%_
                                           _%direct-slots128416%_
                                           _%properties128426%_
                                           _%constructor128442%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '(? (or not symbol?))
                                           'value:
                                           _%constructor128380%_)
                                          '#!void)))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     'symbol?
                                     'value:
                                     _%name128345%_)
                                    '#!void)))))
                      (let ((__tmp135830
                             (let ()
                               (declare (not safe))
                               (##type-id _%type128337%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp135830
                         _%klass128452%_))
                      _%klass128452%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again128261%_ ((_%spin128264%_ '0))
              (if (let ((__tmp135831
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp135831 '0))
                  (let ((__tmp135832 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp135832))
                  (if (let () (declare (not safe)) (##fx< _%spin128264%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again128261%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin128264%_ '1))))
                      (let ((_%owner128270%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner128270%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner128270%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again128261%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e128276%_
                 (let ((__tmp135833
                        (let ()
                          (declare (not safe))
                          (##type-id _%type128252%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp135833 '#f))))
            (if _%$e128276%_
                ((lambda (_%klass128279%_)
                   (let ()
                     (declare (not safe))
                     (##vector-set! __shadow-classes-lock '1 '#f))
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-lock '0 '0 '1))
                   _%klass128279%_)
                 _%$e128276%_)
                (let _%loop128282%_ ((_%super128284%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type128252%_)))
                                     (_%hierarchy128285%_ '()))
                  (if (not _%super128284%_)
                      (let _%loop128288%_ ((_%rest128290%_ _%hierarchy128285%_)
                                           (_%precedence-list128291%_ '()))
                        (let* ((_%rest128292128300%_ _%rest128290%_)
                               (_%else128294128310%_
                                (lambda ()
                                  (let ((_%klass128308%_
                                         (_%make-shadow-class128257%_
                                          _%type128252%_
                                          _%precedence-list128291%_)))
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
                                    _%klass128308%_)))
                               (_%K128296128324%_
                                (lambda (_%rest128313%_ _%type128314%_)
                                  (let ((_%$e128316%_
                                         (let ((__tmp135834
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type128314%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp135834
                                            '#f))))
                                    (if _%$e128316%_
                                        ((lambda (_%klass128319%_)
                                           (_%loop128288%_
                                            _%rest128313%_
                                            (cons _%klass128319%_
                                                  _%precedence-list128291%_)))
                                         _%$e128316%_)
                                        (let ((_%klass128322%_
                                               (_%make-shadow-class128257%_
                                                _%type128314%_
                                                _%precedence-list128291%_)))
                                          (_%loop128288%_
                                           _%rest128313%_
                                           (cons _%klass128322%_
                                                 _%precedence-list128291%_))))))))
                          (if (pair? _%rest128292128300%_)
                              (let ((_%hd128297128327%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest128292128300%_)))
                                    (_%tl128298128329%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest128292128300%_))))
                                (let* ((_%type128332%_ _%hd128297128327%_)
                                       (_%rest128334%_ _%tl128298128329%_))
                                  (_%K128296128324%_
                                   _%rest128334%_
                                   _%type128332%_)))
                              (_%else128294128310%_))))
                      (_%loop128282%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super128284%_))
                       (cons _%super128284%_ _%hierarchy128285%_)))))))))
    (define __shadow-class__0
      (lambda (_%type128462%_)
        (let ((_%properties128464%_ '()))
          (__shadow-class__% _%type128462%_ _%properties128464%_))))
    (define __shadow-class
      (lambda _g135835_
        (let ((_g135836_ (let () (declare (not safe)) (##length _g135835_))))
          (cond ((let () (declare (not safe)) (##fx= _g135836_ 1))
                 (apply __shadow-class__0 _g135835_))
                ((let () (declare (not safe)) (##fx= _g135836_ 2))
                 (apply __shadow-class__% _g135835_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g135835_))))))
    (define __type
      (let* ((_%tb128240%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e128242%_ _%tb128240%_))
        (if (eq? '2 _%$e128242%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e128242%_)
                (let ((_%flonum-self-tagging-tags128245%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits128246%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e128248%_ _%flonum-self-tagging-tags128245%_))
                    (if (eq? '0 _%$e128248%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits128246%_ '2))
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
                        (if (eq? '1 _%$e128248%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits128246%_ '2))
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
                            (if (eq? '2 _%$e128248%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e128248%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e128248%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags128245%_))))))))
                (error '"unexpected tag width" _%tb128240%_)))))
    (define __class
      (let* ((_%len128188%_
              (let () (declare (not safe)) (##vector-length __type)))
             (_%cv128190%_
              (let () (declare (not safe)) (##make-vector _%len128188%_ '#f))))
        (let _%loop128193%_ ((_%i128195%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i128195%_ _%len128188%_))
              (let* ((_%t128197%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i128195%_)))
                     (_%f128237%_
                      (if (eq? _%t128197%_ 'undefined)
                          (lambda (_%obj128200%_)
                            (error '"object type is undefined" _%obj128200%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t128197%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj128203%_)
                                (declare (not interrupts-enabled) (not safe))
                                (__system-class _%t128197%_))
                              (if (eq? _%t128197%_ 'subtyped)
                                  (lambda (_%obj128207%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st128210%_
                                           (##subtype _%obj128207%_)))
                                      (if (##fx= _%st128210%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass128213%_
                                                 (##structure-type
                                                  _%obj128207%_)))
                                            (if (##structure-instance-of?
                                                 _%klass128213%_
                                                 'class)
                                                _%klass128213%_
                                                (__shadow-class__0
                                                 _%klass128213%_)))
                                          (if (##fx= _%st128210%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj128207%_)
                                                         '1)
                                                  (__system-class 'box)
                                                  (__system-class 'values))
                                              (let ((_%$e128216%_
                                                     (##vector-ref
                                                      __subtype-id
                                                      _%st128210%_)))
                                                (if _%$e128216%_
                                                    (__system-class
                                                     _%$e128216%_)
                                                    (error '"unknown class"
                                                           'subtype:
                                                           _%st128210%_
                                                           'object:
                                                           _%obj128207%_)))))))
                                  (if (eq? _%t128197%_ 'special)
                                      (lambda (_%obj128221%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (if (char? _%obj128221%_)
                                            (__system-class 'char)
                                            (if (eq? _%obj128221%_ '())
                                                (__system-class 'null)
                                                (if (eq? _%obj128221%_ '#f)
                                                    (__system-class 'boolean)
                                                    (if (eq? _%obj128221%_ '#t)
                                                        (__system-class
                                                         'boolean)
                                                        (if (eq? _%obj128221%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void)
                    (__system-class 'void)
                    (if (eq? _%obj128221%_ '#!eof)
                        (__system-class 'eof)
                        (if (eq? _%obj128221%_ '#!unbound)
                            (__system-class 'unbound)
                            (if (eq? _%obj128221%_ '#!unbound2)
                                (__system-class 'unbound2)
                                (if (eq? _%obj128221%_ '#!optional)
                                    (__system-class 'optional)
                                    (if (eq? _%obj128221%_ '#!rest)
                                        (__system-class 'rest)
                                        (if (eq? _%obj128221%_ '#!key)
                                            (__system-class 'key)
                                            (__system-class
                                             'special)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t128197%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv128190%_ _%i128195%_ _%f128237%_))
                (_%loop128193%_
                 (let () (declare (not safe)) (##fx+ _%i128195%_ '1))))
              _%cv128190%_))))
    (define type-of
      (lambda (_%obj128184%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj128184%_)))))
    (define class-of
      (lambda (_%obj128175%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t128179%_ (##type _%obj128175%_))
                 (_%f128181%_ (##vector-ref __class _%t128179%_)))
            (_%f128181%_ _%obj128175%_)))))
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
      (lambda (_%id128169%_)
        (let ((_%$e128171%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id128169%_ '#f))))
          (if _%$e128171%_
              _%$e128171%_
              (error '"unknown system class" _%id128169%_)))))
    (define __make-system-class
      (lambda (_%id128071%_ _%super128072%_ _%properties128073%_)
        (let ((_%klass128167%_
               (let* ((_%id128075%_ _%id128071%_)
                      (_%name128078%_ _%id128071%_)
                      (_%direct-supers128081%_ _%super128072%_)
                      (_%direct-slots128084%_ '())
                      (_%properties128087%_
                       (cons (cons 'system: '#t)
                             (let ()
                               (declare (not safe))
                               (foldr__0 cons '() _%properties128073%_))))
                      (_%constructor128090%_ '#f))
                 (if (symbol? _%id128075%_)
                     (let ((_%id128095%_ _%id128075%_))
                       (if (symbol? _%name128078%_)
                           (let ((_%name128111%_ _%name128078%_))
                             (if (list? _%direct-supers128081%_)
                                 (let* ((_%direct-supers128121%_
                                         _%direct-supers128081%_)
                                        (_%direct-slots128131%_
                                         _%direct-slots128084%_)
                                        (_%properties128141%_
                                         _%properties128087%_))
                                   (if ((lambda (_%$obj128150%_)
                                          (or (not _%$obj128150%_)
                                              (symbol? _%$obj128150%_)))
                                        _%constructor128090%_)
                                       (let ((_%constructor128157%_
                                              _%constructor128090%_))
                                         (__make-class-type
                                          _%id128095%_
                                          _%name128111%_
                                          _%direct-supers128121%_
                                          _%direct-slots128131%_
                                          _%properties128141%_
                                          _%constructor128157%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          '(? (or not symbol?))
                                          'value:
                                          _%constructor128090%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'list?
                                    'value:
                                    _%direct-supers128081%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'symbol?
                              'value:
                              _%name128078%_)
                             '#!void)))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id128075%_)
                       '#!void)))))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id128071%_
             _%klass128167%_))
          _%klass128167%_)))))
