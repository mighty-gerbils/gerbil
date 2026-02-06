(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1770405370)
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
      (let ((_%flags132664%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties132665%_ '((direct-slots:) (system: . #t)))
            (_%slot-table132666%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags132664%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table132666%_
           _%properties132665%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots132621%_
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
             (_%slot-vector132623%_ (list->vector (cons '#f _%slots132621%_)))
             (_%slot-table132649%_
              (let ((_%slot-table132625%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp135691
                       (lambda (_%slot132627%_ _%field132628%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table132625%_
                            _%slot132627%_
                            _%field132628%_))
                         (let ((__tmp135692
                                (let ((_%sym132630%_ _%slot132627%_))
                                  (if (symbol? _%sym132630%_)
                                      (let ((_%sym132635%_ _%sym132630%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym132635%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym132630%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table132625%_
                            __tmp135692
                            _%field132628%_))))
                      (__tmp135689
                       (let ((__tmp135690
                              (let ()
                                (declare (not safe))
                                (##length _%slots132621%_))))
                         (declare (not safe))
                         (##iota __tmp135690 '1))))
                  (declare (not safe))
                  (##for-each __tmp135691 _%slots132621%_ __tmp135689))
                _%slot-table132625%_))
             (_%flags132651%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields132657%_
              (list->vector
               (let ((__tmp135693
                      (map (lambda (_%g132652132654%_)
                             (list _%g132652132654%_ '5 '#f))
                           (drop _%slots132621%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp135693))))
             (_%properties132659%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots132621%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t132661%_
              (let ((__tmp135694 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags132651%_
                 ##type-type
                 _%fields132657%_
                 __tmp135694
                 _%slot-vector132623%_
                 _%slot-table132649%_
                 _%properties132659%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t132661%_ _%t132661%_))
        _%t132661%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags132617%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties132618%_ '((direct-slots:) (system: . #t)))
            (_%slot-table132619%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp135695 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags132617%_
           '#f
           '#()
           __tmp135695
           '#(#f)
           _%slot-table132619%_
           _%properties132618%_
           '#f
           '#f
           '#f
           '#f))))
    (define __class-type
      (lambda (_%klass132605%_)
        (let ((_%klass132608%_ _%klass132605%_))
          (declare (not safe))
          (##structure-type _%klass132608%_))))
    (define class-type
      (lambda (_%klass118609%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass118609%_ 'class))
            (let ((_%klass118613%_ _%klass118609%_))
              (__class-type _%klass118613%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass118609%_)
              '#!void))))
    (define class-type?
      (lambda (_%obj132603%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj132603%_ 'class))))
    (define __class-type=?
      (lambda (_%x132582%_ _%y132583%_)
        (let* ((_%x132586%_ _%x132582%_) (_%y132594%_ _%y132583%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x132586%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y132594%_ '1 '#f '#f))))))
    (define class-type=?
      (lambda (_%x118743%_ _%y118744%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x118743%_ 'class))
            (let ((_%x118748%_ _%x118743%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y118744%_ 'class))
                  (let ((_%y118758%_ _%y118744%_))
                    (__class-type=? _%x118748%_ _%y118758%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y118744%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x118743%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type132570%_)
        (let* ((_%type132573%_ _%type132570%_)
               (__tmp135696
                (let ((__tmp135697
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type132573%_))))
                  (declare (not safe))
                  (##fxand __tmp135697 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp135696 type-flag-opaque))))
    (define type-opaque?
      (lambda (_%type119190%_)
        (if (let () (declare (not safe)) (##type? _%type119190%_))
            (let ((_%type119194%_ _%type119190%_))
              (__type-opaque? _%type119194%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type119190%_)
              '#!void))))
    (define __class-type-opaque?
      (lambda (_%klass132558%_)
        (let* ((_%klass132561%_ _%klass132558%_)
               (__tmp135698
                (let ((__tmp135699
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass132561%_))))
                  (declare (not safe))
                  (##fxand __tmp135699 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp135698 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass119324%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass119324%_ 'class))
            (let ((_%klass119328%_ _%klass119324%_))
              (__class-type-opaque? _%klass119328%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass119324%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type132546%_)
        (let* ((_%type132549%_ _%type132546%_)
               (__tmp135700
                (let ((__tmp135701
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type132549%_))))
                  (declare (not safe))
                  (##fxand __tmp135701 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp135700 type-flag-extensible))))
    (define type-extensible?
      (lambda (_%type119458%_)
        (if (let () (declare (not safe)) (##type? _%type119458%_))
            (let ((_%type119462%_ _%type119458%_))
              (__type-extensible? _%type119462%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type119458%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type132534%_)
        (let* ((_%type132537%_ _%type132534%_)
               (__tmp135702
                (let ((__tmp135703
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type132537%_))))
                  (declare (not safe))
                  (##fxand __tmp135703 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp135702 '0))))
    (define class-type-final?
      (lambda (_%type119592%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type119592%_ 'class))
            (let ((_%type119596%_ _%type119592%_))
              (__class-type-final? _%type119596%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type119592%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass132522%_)
        (let* ((_%klass132525%_ _%klass132522%_)
               (__tmp135704
                (let ((__tmp135705
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass132525%_))))
                  (declare (not safe))
                  (##fxand __tmp135705 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp135704 class-type-flag-struct))))
    (define class-type-struct?
      (lambda (_%klass119726%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass119726%_ 'class))
            (let ((_%klass119730%_ _%klass119726%_))
              (__class-type-struct? _%klass119730%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass119726%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass132510%_)
        (let* ((_%klass132513%_ _%klass132510%_)
               (__tmp135706
                (let ((__tmp135707
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass132513%_))))
                  (declare (not safe))
                  (##fxand __tmp135707 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp135706 class-type-flag-sealed))))
    (define class-type-sealed?
      (lambda (_%klass119860%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass119860%_ 'class))
            (let ((_%klass119864%_ _%klass119860%_))
              (__class-type-sealed? _%klass119864%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass119860%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass132498%_)
        (let* ((_%klass132501%_ _%klass132498%_)
               (__tmp135708
                (let ((__tmp135709
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass132501%_))))
                  (declare (not safe))
                  (##fxand __tmp135709 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp135708 class-type-flag-metaclass))))
    (define class-type-metaclass?
      (lambda (_%klass119994%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass119994%_ 'class))
            (let ((_%klass119998%_ _%klass119994%_))
              (__class-type-metaclass? _%klass119998%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass119994%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass132486%_)
        (let* ((_%klass132489%_ _%klass132486%_)
               (__tmp135710
                (let ((__tmp135711
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass132489%_))))
                  (declare (not safe))
                  (##fxand __tmp135711 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp135710 class-type-flag-system))))
    (define class-type-system?
      (lambda (_%klass120128%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass120128%_ 'class))
            (let ((_%klass120132%_ _%klass120128%_))
              (__class-type-system? _%klass120132%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass120128%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass132474%_)
        (let* ((_%klass132477%_ _%klass132474%_)
               (__tmp135712
                (let ((__tmp135713
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass132477%_))))
                  (declare (not safe))
                  (##fxand __tmp135713 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp135712 class-type-flag-acyclic))))
    (define class-type-acyclic?
      (lambda (_%klass120262%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass120262%_ 'class))
            (let ((_%klass120266%_ _%klass120262%_))
              (__class-type-acyclic? _%klass120266%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass120262%_)
              '#!void))))
    (define make-class-type-descriptor
      (lambda (_%type-id132281%_
               _%type-name132282%_
               _%type-super132283%_
               _%precedence-list132284%_
               _%slot-vector132285%_
               _%properties132286%_
               _%constructor132287%_
               _%slot-table132288%_
               _%methods132289%_)
        (letrec ((_%make-props!132292%_
                  (lambda (_%key132424%_)
                    (letrec* ((_%ht132426%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!132427%_
                               (lambda (_%ht132467%_ _%slots132468%_)
                                 (for-each
                                  (lambda (_%g132469132471%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht132467%_
                                       _%g132469132471%_
                                       '#t)))
                                  _%slots132468%_)))
                              (_%put-alist!132428%_
                               (lambda (_%ht132456%_
                                        _%key132457%_
                                        _%alist132458%_)
                                 (let ((_%$e132460%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key132457%_
                                           _%alist132458%_))))
                                   (if _%$e132460%_
                                       ((lambda (_%g132462132464%_)
                                          (_%put-slots!132427%_
                                           _%ht132456%_
                                           _%g132462132464%_))
                                        _%$e132460%_)
                                       '#!void)))))
                      (_%put-alist!132428%_
                       _%ht132426%_
                       _%key132424%_
                       _%properties132286%_)
                      (for-each
                       (lambda (_%mixin132430%_)
                         (let ((_%alist132432%_
                                (##structure-ref
                                 _%mixin132430%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist132432%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key132424%_
                                           _%alist132432%_))))
                               (_%put-slots!132427%_
                                _%ht132426%_
                                (let ((_%klass132437%_ _%mixin132430%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass132437%_
                                         'class))
                                      (let ((_%klass132442%_ _%klass132437%_))
                                        (__class-type-slot-list
                                         _%klass132442%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass132437%_)
                                        '#!void))))
                               (_%put-alist!132428%_
                                _%ht132426%_
                                _%key132424%_
                                _%alist132432%_))))
                       _%precedence-list132284%_)
                      _%ht132426%_))))
          (let* ((_%transparent?132294%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties132286%_)))
                 (_%all-slots-printable?132299%_
                  (let ((_%$e132296%_ _%transparent?132294%_))
                    (if _%$e132296%_
                        _%$e132296%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties132286%_))))))
                 (_%printable132301%_
                  (if (not _%all-slots-printable?132299%_)
                      (_%make-props!132292%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?132306%_
                  (let ((_%$e132303%_ _%transparent?132294%_))
                    (if _%$e132303%_
                        _%$e132303%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties132286%_))))))
                 (_%equalable132308%_
                  (if (not _%all-slots-equalable?132306%_)
                      (_%make-props!132292%_ 'equal:)
                      '#f))
                 (_%first-new-field132310%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super132283%_ 'class))
                      (let ((__tmp135714
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super132283%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp135714))
                      '1))
                 (_%field-info-length132312%_
                  (let ((__tmp135715
                         (let ((__tmp135716
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector132285%_))))
                           (declare (not safe))
                           (##fx- __tmp135716 _%first-new-field132310%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp135715)))
                 (_%field-info132314%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length132312%_ '#f)))
                 (_%struct?132316%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties132286%_)))
                 (_%final?132318%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties132286%_)))
                 (_%metaclass132325%_
                  (let ((_%metaclass132319132321%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties132286%_))))
                    (if _%metaclass132319132321%_
                        (let ((_%metaclass132323%_ _%metaclass132319132321%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass132323%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id132281%_
                                     'metaclass:
                                     _%metaclass132323%_))
                          _%metaclass132323%_)
                        '#f)))
                 (_%system?132327%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties132286%_)))
                 (_%opaque?132366%_
                  (if (or _%transparent?132294%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties132286%_)))
                      '#f
                      (let ((_%$e132332%_ (not _%type-super132283%_)))
                        (if _%$e132332%_
                            _%$e132332%_
                            (let ((_%type132335%_ _%type-super132283%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##type? _%type132335%_))
                                  (let ((_%type132340%_ _%type132335%_))
                                    (__type-opaque? _%type132340%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     '##type?
                                     'value:
                                     _%type132335%_)
                                    '#!void)))))))
                 (_%acyclic?132368%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties132286%_)))
                 (_%type-flags132370%_
                  (let ((__tmp135722
                         (if _%final?132318%_ '0 type-flag-extensible))
                        (__tmp135721
                         (if _%opaque?132366%_ type-flag-opaque '0))
                        (__tmp135720
                         (if _%struct?132316%_ class-type-flag-struct '0))
                        (__tmp135719
                         (if _%metaclass132325%_ class-type-flag-metaclass '0))
                        (__tmp135718
                         (if _%system?132327%_ class-type-flag-system '0))
                        (__tmp135717
                         (if _%acyclic?132368%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp135722
                             __tmp135721
                             __tmp135720
                             __tmp135719
                             __tmp135718
                             __tmp135717)))
                 (_%precedence-list132378%_
                  (let ((_%$e132372%_ (memq t::t _%precedence-list132284%_)))
                    (if _%$e132372%_
                        ((lambda (_%tail132375%_)
                           (if (null? (cdr _%tail132375%_))
                               _%precedence-list132284%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list132284%_)))
                         _%$e132372%_)
                        (let ((__tmp135723 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list132284%_ __tmp135723))))))
            (let _%loop132381%_ ((_%i132383%_ _%first-new-field132310%_)
                                 (_%j132384%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j132384%_ _%field-info-length132312%_))
                  (let* ((_%slot132386%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector132285%_ _%i132383%_)))
                         (_%flags132394%_
                          (if _%transparent?132294%_
                              '0
                              (let ((__tmp135725
                                     (if (or _%all-slots-printable?132299%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable132301%_
                                                _%slot132386%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp135724
                                     (if (or _%all-slots-equalable?132306%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable132308%_
                                                _%slot132386%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp135725 __tmp135724)))))
                    (vector-set!
                     _%field-info132314%_
                     _%j132384%_
                     _%slot132386%_)
                    (vector-set!
                     _%field-info132314%_
                     (let () (declare (not safe)) (##fx+ _%j132384%_ '1))
                     _%flags132394%_)
                    (_%loop132381%_
                     (let () (declare (not safe)) (##fx+ _%i132383%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j132384%_ '3))))
                  '#!void))
            (if _%metaclass132325%_
                (let ((_%val132421%_
                       (let* ((_%klass132397%_ _%metaclass132325%_)
                              (_%args132400%_
                               (list _%type-id132281%_
                                     _%type-name132282%_
                                     _%type-flags132370%_
                                     _%type-super132283%_
                                     _%field-info132314%_
                                     _%precedence-list132378%_
                                     _%slot-vector132285%_
                                     _%slot-table132288%_
                                     _%properties132286%_
                                     _%constructor132287%_
                                     _%methods132289%_)))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%klass132397%_
                                'class))
                             (let ((_%klass132405%_ _%klass132397%_))
                               (declare (not safe))
                               (##apply __make-instance
                                        _%klass132405%_
                                        _%args132400%_))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%klass132397%_)
                               '#!void)))))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val132421%_ 'class))
                      _%val132421%_
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         '"\"gerbil/runtime/mop.ss\"@283.10-287.95"
                         'contract:
                         '(class-type? val)
                         'value:
                         _%val132421%_)
                        '#!void)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id132281%_
                   _%type-name132282%_
                   _%type-flags132370%_
                   _%type-super132283%_
                   _%field-info132314%_
                   _%precedence-list132378%_
                   _%slot-vector132285%_
                   _%slot-table132288%_
                   _%properties132286%_
                   _%constructor132287%_
                   _%methods132289%_
                   '#f
                   '#f)))))))
    (define class-type-id
      (lambda (_%klass132279%_)
        (##structure-ref _%klass132279%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass132277%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass132277%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass132274%_ _%val132275%_)
        (##structure-set! _%klass132274%_ _%val132275%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass132269%_ _%val132271%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132269%_
           _%val132271%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass132267%_)
        (##structure-ref _%klass132267%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass132265%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass132265%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass132262%_ _%val132263%_)
        (##structure-set! _%klass132262%_ _%val132263%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass132257%_ _%val132259%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132257%_
           _%val132259%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass132255%_)
        (##structure-ref _%klass132255%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass132253%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass132253%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass132250%_ _%val132251%_)
        (##structure-set! _%klass132250%_ _%val132251%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass132245%_ _%val132247%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132245%_
           _%val132247%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass132243%_)
        (##structure-ref _%klass132243%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass132241%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass132241%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass132238%_ _%val132239%_)
        (##structure-set! _%klass132238%_ _%val132239%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass132233%_ _%val132235%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132233%_
           _%val132235%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass132231%_)
        (##structure-ref _%klass132231%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass132229%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass132229%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass132226%_ _%val132227%_)
        (##structure-set! _%klass132226%_ _%val132227%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass132221%_ _%val132223%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132221%_
           _%val132223%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass132219%_)
        (##structure-ref _%klass132219%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass132217%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass132217%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass132214%_ _%val132215%_)
        (##structure-set!
         _%klass132214%_
         _%val132215%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass132209%_ _%val132211%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132209%_
           _%val132211%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass132207%_)
        (##structure-ref _%klass132207%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass132205%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass132205%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass132202%_ _%val132203%_)
        (##structure-set!
         _%klass132202%_
         _%val132203%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass132197%_ _%val132199%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132197%_
           _%val132199%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass132195%_)
        (##structure-ref _%klass132195%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass132193%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass132193%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass132190%_ _%val132191%_)
        (##structure-set!
         _%klass132190%_
         _%val132191%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass132185%_ _%val132187%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132185%_
           _%val132187%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass132183%_)
        (##structure-ref _%klass132183%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass132181%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass132181%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass132178%_ _%val132179%_)
        (##structure-set!
         _%klass132178%_
         _%val132179%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass132173%_ _%val132175%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132173%_
           _%val132175%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass132171%_)
        (##structure-ref _%klass132171%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass132169%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass132169%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass132166%_ _%val132167%_)
        (##structure-set!
         _%klass132166%_
         _%val132167%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass132161%_ _%val132163%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132161%_
           _%val132163%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass132159%_)
        (##structure-ref _%klass132159%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass132157%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass132157%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass132154%_ _%val132155%_)
        (##structure-set!
         _%klass132154%_
         _%val132155%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass132149%_ _%val132151%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132149%_
           _%val132151%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass132147%_)
        (##structure-ref _%klass132147%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass132145%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass132145%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass132142%_ _%val132143%_)
        (##structure-set!
         _%klass132142%_
         _%val132143%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass132137%_ _%val132139%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132137%_
           _%val132139%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass132135%_)
        (##structure-ref _%klass132135%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass132133%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass132133%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass132130%_ _%val132131%_)
        (##structure-set!
         _%klass132130%_
         _%val132131%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass132125%_ _%val132127%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132125%_
           _%val132127%_
           '13
           class::t
           'interface))))
    (define __class-type-slot-list
      (lambda (_%klass132113%_)
        (let ((_%klass132116%_ _%klass132113%_))
          (vector->list
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass132116%_ '7 '#f '#f))
           '1))))
    (define class-type-slot-list
      (lambda (_%klass120786%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass120786%_ 'class))
            (let ((_%klass120790%_ _%klass120786%_))
              (__class-type-slot-list _%klass120790%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@345.29-345.34"
               'contract:
               'class-type?
               'value:
               _%klass120786%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass132101%_)
        (let* ((_%klass132104%_ _%klass132101%_)
               (__tmp135726
                (let ((__tmp135727
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass132104%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp135727))))
          (declare (not safe))
          (##fx- __tmp135726 '1))))
    (define class-type-field-count
      (lambda (_%klass120920%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass120920%_ 'class))
            (let ((_%klass120924%_ _%klass120920%_))
              (__class-type-field-count _%klass120924%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@347.31-347.36"
               'contract:
               'class-type?
               'value:
               _%klass120920%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass132089%_)
        (let ((_%klass132092%_ _%klass132089%_))
          (let ((__tmp135728
                 (let ((__tmp135729
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass132092%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp135729))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass132092%_
             __tmp135728
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define class-type-seal!
      (lambda (_%klass121054%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121054%_ 'class))
            (let ((_%klass121058%_ _%klass121054%_))
              (__class-type-seal! _%klass121058%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@350.25-350.30"
               'contract:
               'class-type?
               'value:
               _%klass121054%_)
              '#!void))))
    (define __class-type-printable-slots
      (lambda (_%klass132022%_)
        (let ((_%klass132025%_ _%klass132022%_))
          (letrec ((_%get-field-vector132034%_
                    (lambda (_%type132073%_)
                      (let _%loop132075%_ ((_%type132077%_ _%type132073%_))
                        (let* ((_%fields132079%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type132077%_)))
                               (_%$e132081%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type132077%_))))
                          (if _%$e132081%_
                              ((lambda (_%super132084%_)
                                 (let ((_%super-fields132086%_
                                        (_%loop132075%_ _%super132084%_)))
                                   (vector-append
                                    _%super-fields132086%_
                                    _%fields132079%_)))
                               _%$e132081%_)
                              _%fields132079%_)))))
                   (_%get-printable-slot-alist132035%_
                    (lambda (_%type132056%_)
                      (let* ((_%fields132058%_
                              (_%get-field-vector132034%_ _%type132056%_))
                             (_%count132060%_
                              (vector-length _%fields132058%_)))
                        (let _%loop132063%_ ((_%i132065%_ '3)
                                             (_%offset132066%_ '1)
                                             (_%r132067%_ '()))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i132065%_ _%count132060%_))
                              (let ((_%slot-name132069%_
                                     (vector-ref _%fields132058%_ _%i132065%_))
                                    (_%slot-flags132070%_
                                     (vector-ref
                                      _%fields132058%_
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%i132065%_ '1))))
                                    (_%next-i132071%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i132065%_ '2))))
                                (if (let ((__tmp135730
                                           (let ()
                                             (declare (not safe))
                                             (##fxand _%slot-flags132070%_
                                                      '1))))
                                      (declare (not safe))
                                      (##fx= __tmp135730 '0))
                                    (_%loop132063%_
                                     _%next-i132071%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset132066%_ '1))
                                     _%r132067%_)
                                    (_%loop132063%_
                                     _%next-i132071%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset132066%_ '1))
                                     (cons (cons _%slot-name132069%_
                                                 _%offset132066%_)
                                           _%r132067%_))))
                              (reverse! _%r132067%_))))))
                   (_%get-printable-slots!132036%_
                    (lambda (_%klass132051%_ _%type132052%_)
                      (let ((_%printable132054%_
                             (_%get-printable-slot-alist132035%_
                              _%type132052%_)))
                        (##structure-set!
                         _%klass132051%_
                         (cons (cons 'printable-slots: _%printable132054%_)
                               (##structure-ref
                                _%klass132051%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%printable132054%_))))
            (let* ((_%props132038%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass132025%_ '9 '#f '#f)))
                   (_%$e132040%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'printable-slots: _%props132038%_))))
              (if _%$e132040%_
                  _%$e132040%_
                  (let ((_%$e132043%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props132038%_))))
                    (if _%$e132043%_
                        ((lambda (_%g132045132047%_)
                           (_%get-printable-slots!132036%_
                            _%klass132025%_
                            _%g132045132047%_))
                         _%$e132043%_)
                        (_%get-printable-slots!132036%_
                         _%klass132025%_
                         _%klass132025%_)))))))))
    (define class-type-printable-slots
      (lambda (_%klass121188%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121188%_ 'class))
            (let ((_%klass121192%_ _%klass121188%_))
              (__class-type-printable-slots _%klass121192%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@357.35-357.40"
               'contract:
               'class-type?
               'value:
               _%klass121188%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct131991%_ _%maybe-super-struct131992%_)
        (let* ((_%maybe-sub-struct131995%_ _%maybe-sub-struct131991%_)
               (_%maybe-super-struct132003%_ _%maybe-super-struct131992%_)
               (_%maybe-super-struct-id132012%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct132003%_))))
          (let _%lp132014%_ ((_%super-struct132016%_
                              _%maybe-sub-struct131995%_))
            (if (not _%super-struct132016%_)
                '#f
                (if (eq? _%maybe-super-struct-id132012%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct132016%_)))
                    '#t
                    (_%lp132014%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct132016%_)))))))))
    (define substruct?
      (lambda (_%maybe-sub-struct121322%_ _%maybe-super-struct121323%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct121322%_ 'class))
            (let ((_%maybe-sub-struct121327%_ _%maybe-sub-struct121322%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct121323%_
                     'class))
                  (let ((_%maybe-super-struct121337%_
                         _%maybe-super-struct121323%_))
                    (__substruct?
                     _%maybe-sub-struct121327%_
                     _%maybe-super-struct121337%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@403.47-403.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct121323%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@403.19-403.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct121322%_)
              '#!void))))
    (define base-struct/1
      (lambda (_%klass131969%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass131969%_ 'class))
            (if (let* ((_%klass131972%_ _%klass131969%_)
                       (_%klass131977%_ _%klass131972%_))
                  (__class-type-struct? _%klass131977%_))
                _%klass131969%_
                (let () (declare (not safe)) (##type-super _%klass131969%_)))
            (if (not _%klass131969%_)
                '#f
                (error '"not a class or false" _%klass131969%_)))))
    (define base-struct/2
      (lambda (_%klass1131892%_ _%klass2131893%_)
        (let ((_%s1131895%_ (base-struct/1 _%klass1131892%_))
              (_%s2131896%_ (base-struct/1 _%klass2131893%_)))
          (if (or (not _%s1131895%_)
                  (and _%s2131896%_
                       (let* ((_%maybe-sub-struct131901%_ _%s1131895%_)
                              (_%maybe-super-struct131904%_ _%s2131896%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%maybe-sub-struct131901%_
                                'class))
                             (let ((_%maybe-sub-struct131909%_
                                    _%maybe-sub-struct131901%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%maybe-super-struct131904%_
                                      'class))
                                   (let ((_%maybe-super-struct131923%_
                                          _%maybe-super-struct131904%_))
                                     (__substruct?
                                      _%maybe-sub-struct131909%_
                                      _%maybe-super-struct131923%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%maybe-super-struct131904%_)
                                     '#!void)))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%maybe-sub-struct131901%_)
                               '#!void)))))
              _%s2131896%_
              (if (or (not _%s2131896%_)
                      (and _%s1131895%_
                           (let* ((_%maybe-sub-struct131937%_ _%s2131896%_)
                                  (_%maybe-super-struct131940%_ _%s1131895%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%maybe-sub-struct131937%_
                                    'class))
                                 (let ((_%maybe-sub-struct131945%_
                                        _%maybe-sub-struct131937%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%maybe-super-struct131940%_
                                          'class))
                                       (let ((_%maybe-super-struct131957%_
                                              _%maybe-super-struct131940%_))
                                         (__substruct?
                                          _%maybe-sub-struct131945%_
                                          _%maybe-super-struct131957%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          'class-type?
                                          'value:
                                          _%maybe-super-struct131940%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'class-type?
                                    'value:
                                    _%maybe-sub-struct131937%_)
                                   '#!void)))))
                  _%s1131895%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1131892%_
                         _%klass2131893%_
                         _%s1131895%_
                         _%s2131896%_))))))
    (define base-struct/list
      (lambda (_%all-supers131777%_)
        (let* ((_%all-supers131778131803%_ _%all-supers131777%_)
               (_%E131783131807%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers131778131803%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K131801131889%_ (lambda () '#f))
                (_%K131798131875%_
                 (lambda (_%x131873%_) (base-struct/1 _%x131873%_)))
                (_%K131793131852%_
                 (lambda (_%y131849%_ _%x131850%_)
                   (base-struct/2 _%x131850%_ _%y131849%_)))
                (_%K131784131814%_
                 (lambda (_%y131811%_ _%x131812%_)
                   (let ()
                     (declare (not safe))
                     (foldr__0 base-struct/2 _%x131812%_ _%y131811%_)))))
            (let* ((_%__match134503134504%_
                    (lambda (_%hd131785131817%_ _%tl131786131819%_)
                      (let ((_%x131822%_ _%hd131785131817%_))
                        (letrec ((_%splice-rest131788131824%_
                                  (lambda (_%rest131792131831%_ _%y131833%_)
                                    (if (null? _%rest131792131831%_)
                                        (_%K131784131814%_
                                         _%y131833%_
                                         _%x131822%_)
                                        (_%E131783131807%_))))
                                 (_%splice-try131790131826%_
                                  (lambda (_%hd131791131835%_
                                           _%rest131792131837%_
                                           _%y131787131838%_)
                                    (let ((_%y131840%_ _%hd131791131835%_))
                                      (_%splice-loop131789131828%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest131792131837%_))
                                       (cons _%y131840%_ _%y131787131838%_)))))
                                 (_%splice-loop131789131828%_
                                  (lambda (_%rest131792131842%_
                                           _%y131787131843%_)
                                    (if (pair? _%rest131792131842%_)
                                        (_%splice-try131790131826%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest131792131842%_))
                                         _%rest131792131842%_
                                         _%y131787131843%_)
                                        (_%splice-rest131788131824%_
                                         _%rest131792131842%_
                                         (reverse _%y131787131843%_))))))
                          (_%splice-loop131789131828%_
                           _%tl131786131819%_
                           '())))))
                   (_%try-match131780131885%_
                    (lambda ()
                      (if (pair? _%all-supers131778131803%_)
                          (let ((_%tl131800131880%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers131778131803%_)))
                                (_%hd131799131878%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers131778131803%_))))
                            (if (null? _%tl131800131880%_)
                                (let ((_%x131883%_ _%hd131799131878%_))
                                  (base-struct/1 _%x131883%_))
                                (if (pair? _%tl131800131880%_)
                                    (let ((_%tl131797131864%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl131800131880%_)))
                                          (_%hd131796131862%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl131800131880%_))))
                                      (if (null? _%tl131797131864%_)
                                          (let ((_%x131860%_
                                                 _%hd131799131878%_)
                                                (_%y131867%_
                                                 _%hd131796131862%_))
                                            (_%K131793131852%_
                                             _%y131867%_
                                             _%x131860%_))
                                          (_%__match134503134504%_
                                           _%hd131799131878%_
                                           _%tl131800131880%_)))
                                    (_%__match134503134504%_
                                     _%hd131799131878%_
                                     _%tl131800131880%_))))
                          (_%E131783131807%_)))))
              (if (null? _%all-supers131778131803%_)
                  (_%K131801131889%_)
                  (_%try-match131780131885%_)))))))
    (define base-struct
      (lambda _%all-supers131775%_ (base-struct/list _%all-supers131775%_)))
    (define find-super-constructor
      (lambda (_%super131726%_)
        (let _%lp131728%_ ((_%rest131730%_ _%super131726%_)
                           (_%constructor131731%_ '#f))
          (let* ((_%rest131732131740%_ _%rest131730%_)
                 (_%else131734131748%_ (lambda () _%constructor131731%_))
                 (_%K131736131763%_
                  (lambda (_%rest131751%_ _%hd131752%_)
                    (let ((_%$e131754%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd131752%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e131754%_
                          ((lambda (_%xconstructor131757%_)
                             (if (or (not _%constructor131731%_)
                                     (eq? _%constructor131731%_
                                          _%xconstructor131757%_))
                                 (_%lp131728%_
                                  _%rest131751%_
                                  _%xconstructor131757%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor131731%_
                                        _%xconstructor131757%_)))
                           _%$e131754%_)
                          (_%lp131728%_
                           _%rest131751%_
                           _%constructor131731%_))))))
            (if (pair? _%rest131732131740%_)
                (let ((_%hd131737131766%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest131732131740%_)))
                      (_%tl131738131768%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest131732131740%_))))
                  (let* ((_%hd131771%_ _%hd131737131766%_)
                         (_%rest131773%_ _%tl131738131768%_))
                    (_%K131736131763%_ _%rest131773%_ _%hd131771%_)))
                (_%else131734131748%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list131682%_ _%direct-slots131683%_)
        (let* ((_%next-slot131685%_ '1)
               (_%slot-table131687%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots131689%_ '(__class))
               (_%process-slot131713%_
                (lambda (_%slot131691%_)
                  (if (symbol? _%slot131691%_)
                      '#!void
                      (error '"invalid slot name" _%slot131691%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table131687%_
                              _%slot131691%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table131687%_
                           _%slot131691%_
                           _%next-slot131685%_))
                        (let ((__tmp135731
                               (let ((_%sym131693%_ _%slot131691%_))
                                 (if (symbol? _%sym131693%_)
                                     (let ((_%sym131698%_ _%sym131693%_))
                                       (declare (not safe))
                                       (__symbol->keyword _%sym131698%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/mop
                                        'contract:
                                        'symbol?
                                        'value:
                                        _%sym131693%_)
                                       '#!void)))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table131687%_
                           __tmp135731
                           _%next-slot131685%_))
                        (set! _%r-slots131689%_
                              (cons _%slot131691%_ _%r-slots131689%_))
                        (set! _%next-slot131685%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot131685%_ '1))))
                      '#!void)))
               (_%process-slots131719%_
                (lambda (_%g131714131716%_)
                  (for-each _%process-slot131713%_ _%g131714131716%_))))
          (let ((__tmp135733
                 (lambda (_%mixin131722%_)
                   (_%process-slots131719%_
                    (let ((__tmp135734
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin131722%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp135734 '())))))
                (__tmp135732 (reverse _%class-precedence-list131682%_)))
            (declare (not safe))
            (##for-each __tmp135733 __tmp135732))
          (_%process-slots131719%_ _%direct-slots131683%_)
          (let ((_%slot-vector131724%_
                 (list->vector
                  (let ()
                    (declare (not safe))
                    (##reverse _%r-slots131689%_)))))
            (values _%slot-vector131724%_ _%slot-table131687%_)))))
    (define __make-class-type
      (lambda (_%id131509%_
               _%name131510%_
               _%direct-supers131511%_
               _%direct-slots131512%_
               _%properties131513%_
               _%constructor131514%_)
        (let* ((_%id131517%_ _%id131509%_)
               (_%name131525%_ _%name131510%_)
               (_%direct-supers131533%_ _%direct-supers131511%_)
               (_%direct-slots131541%_ _%direct-slots131512%_)
               (_%properties131549%_ _%properties131513%_)
               (_%constructor131557%_ _%constructor131514%_))
          (let ((_%$e131591%_
                 (let* ((_%pred131569%_
                         (lambda (_%$obj131566%_)
                           (not (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%$obj131566%_
                                   'class)))))
                        (_%lst131572%_ _%direct-supers131533%_)
                        (_%pred131577%_ _%pred131569%_))
                   (declare (not safe))
                   (__find _%pred131577%_ _%lst131572%_))))
            (if _%$e131591%_
                ((lambda (_%g131593131595%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g131593131595%_))
                 _%$e131591%_)
                (let ((_%$e131618%_
                       (let* ((_%pred131598%_ __class-type-final?)
                              (_%lst131601%_ _%direct-supers131533%_)
                              (_%pred131606%_ _%pred131598%_))
                         (declare (not safe))
                         (__find _%pred131606%_ _%lst131601%_))))
                  (if _%$e131618%_
                      ((lambda (_%g131620131622%_)
                         (error '"Cannot extend final class"
                                _%g131620131622%_))
                       _%$e131618%_)
                      '#!void))))
          (let ((_g135735_ (compute-precedence-list _%direct-supers131533%_)))
            (begin
              (let ((_g135736_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g135735_)
                           (##values-length _g135735_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g135736_ 2)))
                    (error "Context expects 2 values" _g135736_)))
              (let ((_%precedence-list131625%_
                     (let () (declare (not safe)) (##values-ref _g135735_ 0)))
                    (_%struct-super131626%_
                     (let () (declare (not safe)) (##values-ref _g135735_ 1))))
                (let ((_g135737_
                       (compute-class-slots
                        _%precedence-list131625%_
                        _%direct-slots131541%_)))
                  (begin
                    (let ((_g135738_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g135737_)
                                 (##values-length _g135737_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g135738_ 2)))
                          (error "Context expects 2 values" _g135738_)))
                    (let ((_%slot-vector131628%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g135737_ 0)))
                          (_%slot-table131629%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g135737_ 1))))
                      (let* ((_%properties131631%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots131541%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers131533%_)
                                          _%properties131549%_)))
                             (_%constructor*131636%_
                              (let ((_%$e131633%_ _%constructor131557%_))
                                (if _%$e131633%_
                                    _%$e131633%_
                                    (find-super-constructor
                                     _%direct-supers131533%_))))
                             (_%precedence-list131679%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties131631%_))
                                      (memq object::t
                                            _%precedence-list131625%_))
                                  _%precedence-list131625%_
                                  (let _%loop131641%_ ((_%tail131643%_
                                                        _%precedence-list131625%_)
                                                       (_%head131644%_ '()))
                                    (let* ((_%tail131645131653%_
                                            _%tail131643%_)
                                           (_%else131647131661%_
                                            (lambda ()
                                              (let ((__tmp135739
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp135739
                                                 _%head131644%_))))
                                           (_%K131649131667%_
                                            (lambda (_%rest131664%_
                                                     _%hd131665%_)
                                              (if (eq? _%hd131665%_ t::t)
                                                  (let ((__tmp135740
                                                         (cons object::t
                                                               _%tail131643%_)))
                                                    (declare (not safe))
                                                    (foldl__0
                                                     cons
                                                     __tmp135740
                                                     _%head131644%_))
                                                  (_%loop131641%_
                                                   _%rest131664%_
                                                   (cons _%hd131665%_
                                                         _%head131644%_))))))
                                      (if (pair? _%tail131645131653%_)
                                          (let ((_%hd131650131670%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail131645131653%_)))
                                                (_%tl131651131672%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail131645131653%_))))
                                            (let* ((_%hd131675%_
                                                    _%hd131650131670%_)
                                                   (_%rest131677%_
                                                    _%tl131651131672%_))
                                              (_%K131649131667%_
                                               _%rest131677%_
                                               _%hd131675%_)))
                                          (_%else131647131661%_)))))))
                        (make-class-type-descriptor
                         _%id131517%_
                         _%name131525%_
                         _%struct-super131626%_
                         _%precedence-list131679%_
                         _%slot-vector131628%_
                         _%properties131631%_
                         _%constructor*131636%_
                         _%slot-table131629%_
                         '#f)))))))))))
    (define make-class-type
      (lambda (_%id121467%_
               _%name121468%_
               _%direct-supers121469%_
               _%direct-slots121470%_
               _%properties121471%_
               _%constructor121472%_)
        (if (symbol? _%id121467%_)
            (let ((_%id121476%_ _%id121467%_))
              (if (symbol? _%name121468%_)
                  (let ((_%name121486%_ _%name121468%_))
                    (if (list? _%direct-supers121469%_)
                        (let ((_%direct-supers121496%_
                               _%direct-supers121469%_))
                          (if (list? _%direct-slots121470%_)
                              (let ((_%direct-slots121506%_
                                     _%direct-slots121470%_))
                                (if (list? _%properties121471%_)
                                    (let ((_%properties121516%_
                                           _%properties121471%_))
                                      (if ((lambda (_%$obj121525%_)
                                             (or (not _%$obj121525%_)
                                                 (symbol? _%$obj121525%_)))
                                           _%constructor121472%_)
                                          (let ((_%constructor121532%_
                                                 _%constructor121472%_))
                                            (__make-class-type
                                             _%id121476%_
                                             _%name121486%_
                                             _%direct-supers121496%_
                                             _%direct-slots121506%_
                                             _%properties121516%_
                                             _%constructor121532%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@500.24-500.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor121472%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@499.24-499.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties121471%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@498.24-498.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots121470%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@497.24-497.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers121469%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@496.24-496.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name121468%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@495.24-495.26"
               'contract:
               'symbol?
               'value:
               _%id121467%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass131497%_)
        (let ((_%klass131500%_ _%klass131497%_))
          (cons _%klass131500%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass131500%_ '6 '#f '#f))))))
    (define class-precedence-list
      (lambda (_%klass121662%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121662%_ 'class))
            (let ((_%klass121666%_ _%klass121662%_))
              (__class-precedence-list _%klass121666%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@533.30-533.35"
               'contract:
               'class-type?
               'value:
               _%klass121662%_)
              '#!void))))
    (define compute-precedence-list
      (lambda (_%direct-supers131494%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers131494%_))))
    (define __make-class-predicate
      (lambda (_%klass131410%_)
        (let* ((_%klass131413%_ _%klass131410%_)
               (_%tid131422%_
                (let () (declare (not safe)) (##type-id _%klass131413%_))))
          (if (let* ((_%type131424%_ _%klass131413%_)
                     (_%type131429%_ _%type131424%_))
                (__class-type-final? _%type131429%_))
              (lambda (_%g131443131445%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g131443131445%_
                   _%tid131422%_)))
              (if (let* ((_%klass131448%_ _%klass131413%_)
                         (_%klass131453%_ _%klass131448%_))
                    (__class-type-struct? _%klass131453%_))
                  (lambda (_%g131463131465%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%g131463131465%_
                       _%tid131422%_)))
                  (lambda (_%g131468131470%_)
                    (let* ((_%klass131473%_ _%klass131413%_)
                           (_%obj131476%_ _%g131468131470%_)
                           (_%klass131481%_ _%klass131473%_))
                      (__class-instance? _%klass131481%_ _%obj131476%_))))))))
    (define make-class-predicate
      (lambda (_%klass121796%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121796%_ 'class))
            (let ((_%klass121800%_ _%klass121796%_))
              (__make-class-predicate _%klass121800%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@545.29-545.34"
               'contract:
               'class-type?
               'value:
               _%klass121796%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass131344%_ _%slot131345%_)
        (let* ((_%klass131348%_ _%klass131344%_)
               (_%slot131356%_ _%slot131345%_)
               (_%field131365%_
                (let ((__tmp135741
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass131348%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp135741 _%slot131356%_ '#f))))
          (if (not _%field131365%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass131348%_
                       'slot:
                       _%slot131356%_)
                '#!void)
              (if (let* ((_%type131369%_ _%klass131348%_)
                         (_%type131374%_ _%type131369%_))
                    (__class-type-final? _%type131374%_))
                  (make-final-slot-accessor
                   _%klass131348%_
                   _%slot131356%_
                   _%field131365%_)
                  (if (let* ((_%klass131389%_ _%klass131348%_)
                             (_%klass131394%_ _%klass131389%_))
                        (__class-type-struct? _%klass131394%_))
                      (make-struct-slot-accessor
                       _%klass131348%_
                       _%slot131356%_
                       _%field131365%_)
                      (if (let ((_%strukt131405%_
                                 (base-struct/1 _%klass131348%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt131405%_
                                    'class))
                                 (let ((__tmp135742
                                        (let ((__tmp135743
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt131405%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp135743))))
                                   (declare (not safe))
                                   (##fx< _%field131365%_ __tmp135742))))
                          (make-struct-subclass-slot-accessor
                           _%klass131348%_
                           _%slot131356%_
                           _%field131365%_)
                          (make-class-cached-slot-accessor
                           _%klass131348%_
                           _%slot131356%_
                           _%field131365%_))))))))
    (define make-class-slot-accessor
      (lambda (_%klass122083%_ _%slot122084%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122083%_ 'class))
            (let ((_%klass122088%_ _%klass122083%_))
              (if (symbol? _%slot122084%_)
                  (let ((_%slot122098%_ _%slot122084%_))
                    (__make-class-slot-accessor
                     _%klass122088%_
                     _%slot122098%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@576.50-576.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot122084%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@576.33-576.38"
               'contract:
               'class-type?
               'value:
               _%klass122083%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass131278%_ _%slot131279%_)
        (let* ((_%klass131282%_ _%klass131278%_)
               (_%slot131290%_ _%slot131279%_)
               (_%field131299%_
                (let ((__tmp135744
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass131282%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp135744 _%slot131290%_ '#f))))
          (if (not _%field131299%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass131282%_
                       'slot:
                       _%slot131290%_)
                '#!void)
              (if (let* ((_%type131303%_ _%klass131282%_)
                         (_%type131308%_ _%type131303%_))
                    (__class-type-final? _%type131308%_))
                  (make-final-slot-mutator
                   _%klass131282%_
                   _%slot131290%_
                   _%field131299%_)
                  (if (let* ((_%klass131323%_ _%klass131282%_)
                             (_%klass131328%_ _%klass131323%_))
                        (__class-type-struct? _%klass131328%_))
                      (make-struct-slot-mutator
                       _%klass131282%_
                       _%slot131290%_
                       _%field131299%_)
                      (if (let ((_%strukt131339%_
                                 (base-struct/1 _%klass131282%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt131339%_
                                    'class))
                                 (let ((__tmp135745
                                        (let ((__tmp135746
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt131339%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp135746))))
                                   (declare (not safe))
                                   (##fx< _%field131299%_ __tmp135745))))
                          (make-struct-subclass-slot-mutator
                           _%klass131282%_
                           _%slot131290%_
                           _%field131299%_)
                          (make-class-cached-slot-mutator
                           _%klass131282%_
                           _%slot131290%_
                           _%field131299%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass122228%_ _%slot122229%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122228%_ 'class))
            (let ((_%klass122233%_ _%klass122228%_))
              (if (symbol? _%slot122229%_)
                  (let ((_%slot122243%_ _%slot122229%_))
                    (__make-class-slot-mutator _%klass122233%_ _%slot122243%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@584.49-584.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot122229%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@584.32-584.37"
               'contract:
               'class-type?
               'value:
               _%klass122228%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass131212%_ _%slot131213%_)
        (let* ((_%klass131216%_ _%klass131212%_)
               (_%slot131224%_ _%slot131213%_)
               (_%field131233%_
                (let ((__tmp135747
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass131216%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp135747 _%slot131224%_ '#f))))
          (if (not _%field131233%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass131216%_
                       'slot:
                       _%slot131224%_)
                '#!void)
              (if (let* ((_%type131237%_ _%klass131216%_)
                         (_%type131242%_ _%type131237%_))
                    (__class-type-final? _%type131242%_))
                  (make-struct-slot-unchecked-accessor
                   _%klass131216%_
                   _%slot131224%_
                   _%field131233%_)
                  (if (let* ((_%klass131257%_ _%klass131216%_)
                             (_%klass131262%_ _%klass131257%_))
                        (__class-type-struct? _%klass131262%_))
                      (make-struct-slot-unchecked-accessor
                       _%klass131216%_
                       _%slot131224%_
                       _%field131233%_)
                      (if (let ((_%strukt131273%_
                                 (base-struct/1 _%klass131216%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt131273%_
                                    'class))
                                 (let ((__tmp135748
                                        (let ((__tmp135749
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt131273%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp135749))))
                                   (declare (not safe))
                                   (##fx< _%field131233%_ __tmp135748))))
                          (make-struct-slot-unchecked-accessor
                           _%klass131216%_
                           _%slot131224%_
                           _%field131233%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass131216%_
                           _%slot131224%_
                           _%field131233%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass122373%_ _%slot122374%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122373%_ 'class))
            (let ((_%klass122378%_ _%klass122373%_))
              (if (symbol? _%slot122374%_)
                  (let ((_%slot122388%_ _%slot122374%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass122378%_
                     _%slot122388%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.60-592.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot122374%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.43-592.48"
               'contract:
               'class-type?
               'value:
               _%klass122373%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass131146%_ _%slot131147%_)
        (let* ((_%klass131150%_ _%klass131146%_)
               (_%slot131158%_ _%slot131147%_)
               (_%field131167%_
                (let ((__tmp135750
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass131150%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp135750 _%slot131158%_ '#f))))
          (if (not _%field131167%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass131150%_
                       'slot:
                       _%slot131158%_)
                '#!void)
              (if (let* ((_%type131171%_ _%klass131150%_)
                         (_%type131176%_ _%type131171%_))
                    (__class-type-final? _%type131176%_))
                  (make-struct-slot-unchecked-mutator
                   _%klass131150%_
                   _%slot131158%_
                   _%field131167%_)
                  (if (let* ((_%klass131191%_ _%klass131150%_)
                             (_%klass131196%_ _%klass131191%_))
                        (__class-type-struct? _%klass131196%_))
                      (make-struct-slot-unchecked-mutator
                       _%klass131150%_
                       _%slot131158%_
                       _%field131167%_)
                      (if (let ((_%strukt131207%_
                                 (base-struct/1 _%klass131150%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt131207%_
                                    'class))
                                 (let ((__tmp135751
                                        (let ((__tmp135752
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt131207%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp135752))))
                                   (declare (not safe))
                                   (##fx< _%field131167%_ __tmp135751))))
                          (make-struct-slot-unchecked-mutator
                           _%klass131150%_
                           _%slot131158%_
                           _%field131167%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass131150%_
                           _%slot131158%_
                           _%field131167%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass122518%_ _%slot122519%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122518%_ 'class))
            (let ((_%klass122523%_ _%klass122518%_))
              (if (symbol? _%slot122519%_)
                  (let ((_%slot122533%_ _%slot122519%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass122523%_
                     _%slot122533%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@600.59-600.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot122519%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@600.42-600.47"
               'contract:
               'class-type?
               'value:
               _%klass122518%_)
              '#!void))))
    (define not-an-instance__%
      (lambda (_%object131130%_ _%class131131%_ _%slot131132%_)
        (apply error
               '"not an instance"
               'object:
               _%object131130%_
               'class:
               _%class131131%_
               (if _%slot131132%_
                   (cons 'slot: (cons _%slot131132%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object131137%_ _%class131138%_)
        (let ((_%slot131140%_ '#f))
          (not-an-instance__%
           _%object131137%_
           _%class131138%_
           _%slot131140%_))))
    (define not-an-instance
      (lambda _g135753_
        (let ((_g135754_ (let () (declare (not safe)) (##length _g135753_))))
          (cond ((let () (declare (not safe)) (##fx= _g135754_ 2))
                 (apply not-an-instance__0 _g135753_))
                ((let () (declare (not safe)) (##fx= _g135754_ 3))
                 (apply not-an-instance__% _g135753_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g135753_))))))
    (define make-final-slot-accessor
      (lambda (_%klass131123%_ _%slot131124%_ _%field131125%_)
        (lambda (_%obj131127%_)
          (##direct-structure-ref
           _%obj131127%_
           _%field131125%_
           _%klass131123%_
           _%slot131124%_))))
    (define make-final-slot-mutator
      (lambda (_%klass131116%_ _%slot131117%_ _%field131118%_)
        (lambda (_%obj131120%_ _%val131121%_)
          (##direct-structure-set!
           _%obj131120%_
           _%val131121%_
           _%field131118%_
           _%klass131116%_
           _%slot131117%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass131110%_ _%slot131111%_ _%field131112%_)
        (lambda (_%obj131114%_)
          (##structure-ref
           _%obj131114%_
           _%field131112%_
           _%klass131110%_
           _%slot131111%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass131103%_ _%slot131104%_ _%field131105%_)
        (lambda (_%obj131107%_ _%val131108%_)
          (##structure-set!
           _%obj131107%_
           _%val131108%_
           _%field131105%_
           _%klass131103%_
           _%slot131104%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass131097%_ _%slot131098%_ _%field131099%_)
        (lambda (_%obj131101%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj131101%_
             _%field131099%_
             _%klass131097%_
             _%slot131098%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass131090%_ _%slot131091%_ _%field131092%_)
        (lambda (_%obj131094%_ _%val131095%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj131094%_
             _%val131095%_
             _%field131092%_
             _%klass131090%_
             _%slot131091%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass131063%_ _%slot131064%_ _%field131065%_)
        (lambda (_%obj131067%_)
          (if (let* ((_%klass131069%_ _%klass131063%_)
                     (_%obj131072%_ _%obj131067%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass131069%_ 'class))
                    (let ((_%klass131077%_ _%klass131069%_))
                      (__class-instance? _%klass131077%_ _%obj131072%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass131069%_)
                      '#!void)))
              (unchecked-slot-ref _%obj131067%_ _%field131065%_)
              (not-an-instance__%
               _%obj131067%_
               _%klass131063%_
               _%slot131064%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass131035%_ _%slot131036%_ _%field131037%_)
        (lambda (_%obj131039%_ _%val131040%_)
          (if (let* ((_%klass131042%_ _%klass131035%_)
                     (_%obj131045%_ _%obj131039%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass131042%_ 'class))
                    (let ((_%klass131050%_ _%klass131042%_))
                      (__class-instance? _%klass131050%_ _%obj131045%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass131042%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj131039%_
               _%field131037%_
               _%val131040%_)
              (not-an-instance__%
               _%obj131039%_
               _%klass131035%_
               _%slot131036%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass130986%_ _%slot130987%_ _%field130988%_)
        (lambda (_%obj130990%_)
          (if (let* ((_%klass130992%_ _%klass130986%_)
                     (_%obj130995%_ _%obj130990%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass130992%_ 'class))
                    (let ((_%klass131000%_ _%klass130992%_))
                      (__direct-instance? _%klass131000%_ _%obj130995%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass130992%_)
                      '#!void)))
              (unchecked-field-ref _%obj130990%_ _%field130988%_)
              (if (let* ((_%klass131014%_ _%klass130986%_)
                         (_%obj131017%_ _%obj130990%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass131014%_ 'class))
                        (let ((_%klass131022%_ _%klass131014%_))
                          (__class-instance? _%klass131022%_ _%obj131017%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass131014%_)
                          '#!void)))
                  (unchecked-slot-ref _%obj130990%_ _%slot130987%_)
                  (not-an-instance__%
                   _%obj130990%_
                   _%klass130986%_
                   _%slot130987%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass130936%_ _%slot130937%_ _%field130938%_)
        (lambda (_%obj130940%_ _%val130941%_)
          (if (let* ((_%klass130943%_ _%klass130936%_)
                     (_%obj130946%_ _%obj130940%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass130943%_ 'class))
                    (let ((_%klass130951%_ _%klass130943%_))
                      (__direct-instance? _%klass130951%_ _%obj130946%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass130943%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj130940%_
               _%field130938%_
               _%val130941%_)
              (if (let* ((_%klass130965%_ _%klass130936%_)
                         (_%obj130968%_ _%obj130940%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass130965%_ 'class))
                        (let ((_%klass130973%_ _%klass130965%_))
                          (__class-instance? _%klass130973%_ _%obj130968%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass130965%_)
                          '#!void)))
                  (unchecked-slot-set!
                   _%obj130940%_
                   _%slot130937%_
                   _%val130941%_)
                  (not-an-instance__%
                   _%obj130940%_
                   _%klass130936%_
                   _%slot130937%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass130909%_ _%slot130910%_ _%field130911%_)
        (lambda (_%obj130913%_)
          (if (let* ((_%klass130915%_ _%klass130909%_)
                     (_%obj130918%_ _%obj130913%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass130915%_ 'class))
                    (let ((_%klass130923%_ _%klass130915%_))
                      (__direct-instance? _%klass130923%_ _%obj130918%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass130915%_)
                      '#!void)))
              (unchecked-field-ref _%obj130913%_ _%field130911%_)
              (unchecked-slot-ref _%obj130913%_ _%slot130910%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass130881%_ _%slot130882%_ _%field130883%_)
        (lambda (_%obj130885%_ _%val130886%_)
          (if (let* ((_%klass130888%_ _%klass130881%_)
                     (_%obj130891%_ _%obj130885%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass130888%_ 'class))
                    (let ((_%klass130896%_ _%klass130888%_))
                      (__direct-instance? _%klass130896%_ _%obj130891%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass130888%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj130885%_
               _%field130883%_
               _%val130886%_)
              (unchecked-slot-set!
               _%obj130885%_
               _%slot130882%_
               _%val130886%_)))))
    (define __class-slot-offset
      (lambda (_%klass130860%_ _%slot130861%_)
        (let* ((_%klass130864%_ _%klass130860%_)
               (_%slot130872%_ _%slot130861%_)
               (__tmp135755
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass130864%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp135755 _%slot130872%_ '#f))))
    (define class-slot-offset
      (lambda (_%klass122663%_ _%slot122664%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122663%_ 'class))
            (let ((_%klass122668%_ _%klass122663%_))
              (if (let () (declare (not safe)) (symbolic? _%slot122664%_))
                  (let ((_%slot122678%_ _%slot122664%_))
                    (__class-slot-offset _%klass122668%_ _%slot122678%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@662.43-662.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot122664%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@662.26-662.31"
               'contract:
               'class-type?
               'value:
               _%klass122663%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass130785%_ _%obj130786%_ _%slot130787%_)
        (let* ((_%klass130790%_ _%klass130785%_)
               (_%slot130798%_ _%slot130787%_))
          (if (let* ((_%klass130807%_ _%klass130790%_)
                     (_%obj130810%_ _%obj130786%_)
                     (_%klass130815%_ _%klass130807%_))
                (__class-instance? _%klass130815%_ _%obj130810%_))
              (let ((_%off130858%_
                     (let* ((_%klass130829%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj130786%_)))
                            (_%slot130832%_ _%slot130798%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass130829%_ 'class))
                           (let ((_%klass130837%_ _%klass130829%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot130832%_))
                                 (let ((_%slot130848%_ _%slot130832%_))
                                   (__class-slot-offset
                                    _%klass130837%_
                                    _%slot130848%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot130832%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass130829%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj130786%_
                 _%off130858%_
                 _%klass130790%_
                 _%slot130798%_))
              (not-an-instance__0 _%obj130786%_ _%klass130790%_)))))
    (define class-slot-ref
      (lambda (_%klass122808%_ _%obj122809%_ _%slot122810%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122808%_ 'class))
            (let ((_%klass122814%_ _%klass122808%_))
              (if (let () (declare (not safe)) (symbolic? _%slot122810%_))
                  (let ((_%slot122824%_ _%slot122810%_))
                    (__class-slot-ref
                     _%klass122814%_
                     _%obj122809%_
                     _%slot122824%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@665.44-665.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot122810%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@665.23-665.28"
               'contract:
               'class-type?
               'value:
               _%klass122808%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass130709%_ _%obj130710%_ _%slot130711%_ _%val130712%_)
        (let* ((_%klass130715%_ _%klass130709%_)
               (_%slot130723%_ _%slot130711%_))
          (if (let* ((_%klass130732%_ _%klass130715%_)
                     (_%obj130735%_ _%obj130710%_)
                     (_%klass130740%_ _%klass130732%_))
                (__class-instance? _%klass130740%_ _%obj130735%_))
              (let ((_%off130783%_
                     (let* ((_%klass130754%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj130710%_)))
                            (_%slot130757%_ _%slot130723%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass130754%_ 'class))
                           (let ((_%klass130762%_ _%klass130754%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot130757%_))
                                 (let ((_%slot130773%_ _%slot130757%_))
                                   (__class-slot-offset
                                    _%klass130762%_
                                    _%slot130773%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot130757%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass130754%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj130710%_
                 _%val130712%_
                 _%off130783%_
                 _%klass130715%_
                 _%slot130723%_))
              (not-an-instance__0 _%obj130710%_ _%klass130715%_)))))
    (define class-slot-set!
      (lambda (_%klass122954%_ _%obj122955%_ _%slot122956%_ _%val122957%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122954%_ 'class))
            (let ((_%klass122961%_ _%klass122954%_))
              (if (let () (declare (not safe)) (symbolic? _%slot122956%_))
                  (let ((_%slot122971%_ _%slot122956%_))
                    (__class-slot-set!
                     _%klass122961%_
                     _%obj122955%_
                     _%slot122971%_
                     _%val122957%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@671.45-671.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot122956%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@671.24-671.29"
               'contract:
               'class-type?
               'value:
               _%klass122954%_)
              '#!void))))
    (define unchecked-field-ref
      (lambda (_%obj130706%_ _%off130707%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj130706%_ _%off130707%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj130702%_ _%off130703%_ _%val130704%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj130702%_
           _%val130704%_
           _%off130703%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj130699%_ _%slot130700%_)
        (unchecked-field-ref
         _%obj130699%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj130699%_))
          _%slot130700%_))))
    (define unchecked-slot-set!
      (lambda (_%obj130695%_ _%slot130696%_ _%val130697%_)
        (unchecked-field-set!
         _%obj130695%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj130695%_))
          _%slot130696%_)
         _%val130697%_)))
    (define __slot-error
      (lambda (_%obj130692%_ _%slot130693%_)
        (error '"Cannot find slot"
               'object:
               _%obj130692%_
               'slot:
               _%slot130693%_)))
    (define __slot-ref__%
      (lambda (_%obj130616%_ _%slot130617%_ _%E130618%_)
        (let* ((_%slot130621%_ _%slot130617%_)
               (_%E130629%_ _%E130618%_)
               (_%klass130638%_ (class-of _%obj130616%_))
               (_%$e130674%_
                (let* ((_%klass130641%_ _%klass130638%_)
                       (_%slot130644%_ _%slot130621%_)
                       (_%klass130649%_ _%klass130641%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot130644%_))
                      (let ((_%slot130664%_ _%slot130644%_))
                        (__class-slot-offset _%klass130649%_ _%slot130664%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot130644%_)
                        '#!void)))))
          (if _%$e130674%_
              ((lambda (_%off130677%_)
                 (unchecked-field-ref _%obj130616%_ _%off130677%_))
               _%$e130674%_)
              (let ()
                (declare (not safe))
                (_%E130629%_ _%obj130616%_ _%slot130621%_))))))
    (define __slot-ref__0
      (lambda (_%obj130683%_ _%slot130684%_)
        (let ((_%E130686%_ __slot-error))
          (__slot-ref__% _%obj130683%_ _%slot130684%_ _%E130686%_))))
    (define __slot-ref
      (lambda _g135756_
        (let ((_g135757_ (let () (declare (not safe)) (##length _g135756_))))
          (cond ((let () (declare (not safe)) (##fx= _g135757_ 2))
                 (apply __slot-ref__0 _g135756_))
                ((let () (declare (not safe)) (##fx= _g135757_ 3))
                 (apply __slot-ref__% _g135756_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g135756_))))))
    (define slot-ref__%
      (lambda (_%obj123219%_ _%slot123220%_ _%E123221%_)
        (if (symbol? _%slot123220%_)
            (let ((_%slot123225%_ _%slot123220%_))
              (if (procedure? _%E123221%_)
                  (let ((_%E123235%_ _%E123221%_))
                    (__slot-ref__% _%obj123219%_ _%slot123225%_ _%E123235%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@697.38-697.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E123221%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@697.21-697.25"
               'contract:
               'symbol?
               'value:
               _%slot123220%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj123248%_ _%slot123249%_)
        (let ((_%E123251%_ __slot-error))
          (slot-ref__% _%obj123248%_ _%slot123249%_ _%E123251%_))))
    (define slot-ref
      (lambda _g135758_
        (let ((_g135759_ (let () (declare (not safe)) (##length _g135758_))))
          (cond ((let () (declare (not safe)) (##fx= _g135759_ 2))
                 (apply slot-ref__0 _g135758_))
                ((let () (declare (not safe)) (##fx= _g135759_ 3))
                 (apply slot-ref__% _g135758_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g135758_))))))
    (define __slot-set!__%
      (lambda (_%obj130536%_ _%slot130537%_ _%val130538%_ _%E130539%_)
        (let* ((_%slot130542%_ _%slot130537%_)
               (_%E130550%_ _%E130539%_)
               (_%klass130559%_ (class-of _%obj130536%_))
               (_%$e130595%_
                (let* ((_%klass130562%_ _%klass130559%_)
                       (_%slot130565%_ _%slot130542%_)
                       (_%klass130570%_ _%klass130562%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot130565%_))
                      (let ((_%slot130585%_ _%slot130565%_))
                        (__class-slot-offset _%klass130570%_ _%slot130585%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot130565%_)
                        '#!void)))))
          (if _%$e130595%_
              ((lambda (_%off130598%_)
                 (unchecked-field-set!
                  _%obj130536%_
                  _%off130598%_
                  _%val130538%_))
               _%$e130595%_)
              (let ()
                (declare (not safe))
                (_%E130550%_ _%obj130536%_ _%slot130542%_))))))
    (define __slot-set!__0
      (lambda (_%obj130604%_ _%slot130605%_ _%val130606%_)
        (let ((_%E130608%_ __slot-error))
          (__slot-set!__%
           _%obj130604%_
           _%slot130605%_
           _%val130606%_
           _%E130608%_))))
    (define __slot-set!
      (lambda _g135760_
        (let ((_g135761_ (let () (declare (not safe)) (##length _g135760_))))
          (cond ((let () (declare (not safe)) (##fx= _g135761_ 3))
                 (apply __slot-set!__0 _g135760_))
                ((let () (declare (not safe)) (##fx= _g135761_ 4))
                 (apply __slot-set!__% _g135760_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g135760_))))))
    (define slot-set!__%
      (lambda (_%obj123378%_ _%slot123379%_ _%val123380%_ _%E123381%_)
        (if (symbol? _%slot123379%_)
            (let ((_%slot123385%_ _%slot123379%_))
              (if (procedure? _%E123381%_)
                  (let ((_%E123395%_ _%E123381%_))
                    (__slot-set!__%
                     _%obj123378%_
                     _%slot123385%_
                     _%val123380%_
                     _%E123395%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@699.43-699.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E123381%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@699.22-699.26"
               'contract:
               'symbol?
               'value:
               _%slot123379%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj123408%_ _%slot123409%_ _%val123410%_)
        (let ((_%E123412%_ __slot-error))
          (slot-set!__%
           _%obj123408%_
           _%slot123409%_
           _%val123410%_
           _%E123412%_))))
    (define slot-set!
      (lambda _g135762_
        (let ((_g135763_ (let () (declare (not safe)) (##length _g135762_))))
          (cond ((let () (declare (not safe)) (##fx= _g135763_ 3))
                 (apply slot-set!__0 _g135762_))
                ((let () (declare (not safe)) (##fx= _g135763_ 4))
                 (apply slot-set!__% _g135762_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g135762_))))))
    (define __subclass?
      (lambda (_%maybe-sub-class130507%_ _%maybe-super-class130508%_)
        (let* ((_%maybe-sub-class130511%_ _%maybe-sub-class130507%_)
               (_%maybe-super-class130519%_ _%maybe-super-class130508%_)
               (_%maybe-super-class-id130528%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class130519%_)))
               (_%$e130530%_
                (eq? _%maybe-super-class-id130528%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class130511%_)))))
          (if _%$e130530%_
              _%$e130530%_
              (let ((__tmp135765
                     (lambda (_%super-class130533%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class130533%_))
                            _%maybe-super-class-id130528%_)))
                    (__tmp135764
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class130511%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (ormap__0 __tmp135765 __tmp135764))))))
    (define subclass?
      (lambda (_%maybe-sub-class123539%_ _%maybe-super-class123540%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class123539%_ 'class))
            (let ((_%maybe-sub-class123544%_ _%maybe-sub-class123539%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class123540%_
                     'class))
                  (let ((_%maybe-super-class123554%_
                         _%maybe-super-class123540%_))
                    (__subclass?
                     _%maybe-sub-class123544%_
                     _%maybe-super-class123554%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@705.45-705.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class123540%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@705.18-705.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class123539%_)
              '#!void))))
    (define object?
      (lambda (_%o130504%_)
        (if (let () (declare (not safe)) (##structure? _%o130504%_))
            (let ((__tmp135766
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o130504%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp135766 'class))
            '#f)))
    (define __direct-instance?
      (lambda (_%klass130491%_ _%obj130492%_)
        (let* ((_%klass130495%_ _%klass130491%_)
               (__tmp135767
                (let () (declare (not safe)) (##type-id _%klass130495%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj130492%_ __tmp135767))))
    (define direct-instance?
      (lambda (_%klass123684%_ _%obj123685%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123684%_ 'class))
            (let ((_%klass123689%_ _%klass123684%_))
              (__direct-instance? _%klass123689%_ _%obj123685%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@719.25-719.30"
               'contract:
               'class-type?
               'value:
               _%klass123684%_)
              '#!void))))
    (define immediate-instance-of?
      (lambda (_%klass130487%_ _%obj130488%_)
        (if (let () (declare (not safe)) (##structure? _%obj130488%_))
            (eq? _%klass130487%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj130488%_)))
            '#f)))
    (define __struct-instance?
      (lambda (_%klass130474%_ _%obj130475%_)
        (let* ((_%klass130478%_ _%klass130474%_)
               (__tmp135768
                (let () (declare (not safe)) (##type-id _%klass130478%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj130475%_ __tmp135768))))
    (define struct-instance?
      (lambda (_%klass123819%_ _%obj123820%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123819%_ 'class))
            (let ((_%klass123824%_ _%klass123819%_))
              (__struct-instance? _%klass123824%_ _%obj123820%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@748.25-748.30"
               'contract:
               'class-type?
               'value:
               _%klass123819%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass130426%_ _%obj130427%_)
        (let* ((_%klass130430%_ _%klass130426%_)
               (_%type130439%_ (class-of _%obj130427%_))
               (_%maybe-sub-class130441%_ _%type130439%_)
               (_%maybe-super-class130444%_ _%klass130430%_)
               (_%maybe-sub-class130449%_ _%maybe-sub-class130441%_)
               (_%maybe-super-class130464%_ _%maybe-super-class130444%_))
          (__subclass?
           _%maybe-sub-class130449%_
           _%maybe-super-class130464%_))))
    (define class-instance?
      (lambda (_%klass123954%_ _%obj123955%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123954%_ 'class))
            (let ((_%klass123959%_ _%klass123954%_))
              (__class-instance? _%klass123959%_ _%obj123955%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.24-753.29"
               'contract:
               'class-type?
               'value:
               _%klass123954%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass130385%_ _%k130386%_)
        (let* ((_%klass130389%_ _%klass130385%_) (_%k130397%_ _%k130386%_))
          (if (let* ((_%klass130406%_ _%klass130389%_)
                     (_%klass130411%_ _%klass130406%_))
                (__class-type-system? _%klass130411%_))
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass130389%_)
                '#!void)
              (let ((_%obj130424%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass130389%_ _%k130397%_))))
                (__object-fill! _%obj130424%_ '#f))))))
    (define make-object
      (lambda (_%klass124089%_ _%k124090%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124089%_ 'class))
            (let ((_%klass124094%_ _%klass124089%_))
              (if (fixnum? _%k124090%_)
                  (let ((_%k124104%_ _%k124090%_))
                    (__make-object _%klass124094%_ _%k124104%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@758.37-758.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k124090%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@758.20-758.25"
               'contract:
               'class-type?
               'value:
               _%klass124089%_)
              '#!void))))
    (define __object-class
      (lambda (_%obj130373%_)
        (let ((_%obj130376%_ _%obj130373%_))
          (declare (not safe))
          (##structure-type _%obj130376%_))))
    (define object-class
      (lambda (_%obj124234%_)
        (if (object? _%obj124234%_)
            (let ((_%obj124238%_ _%obj124234%_))
              (__object-class _%obj124238%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@778.21-778.24"
               'contract:
               'object?
               'value:
               _%obj124234%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj130355%_ _%fill130356%_)
        (let ((_%obj130359%_ _%obj130355%_))
          (let _%loop130368%_ ((_%i130370%_
                                (let ((__tmp135769
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj130359%_))))
                                  (declare (not safe))
                                  (##fx- __tmp135769 '1))))
            (if (let () (declare (not safe)) (##fx> _%i130370%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj130359%_
                     _%fill130356%_
                     _%i130370%_
                     '#f
                     '#f))
                  (_%loop130368%_
                   (let () (declare (not safe)) (##fx- _%i130370%_ '1))))
                _%obj130359%_)))))
    (define object-fill!
      (lambda (_%obj124368%_ _%fill124369%_)
        (if (object? _%obj124368%_)
            (let ((_%obj124373%_ _%obj124368%_))
              (__object-fill! _%obj124373%_ _%fill124369%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@783.21-783.24"
               'contract:
               'object?
               'value:
               _%obj124368%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass130311%_)
        (let* ((_%klass130314%_ _%klass130311%_)
               (_%klass130323%_ _%klass130314%_)
               (_%k130326%_
                (let ((__tmp135770
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass130314%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp135770)))
               (_%klass130331%_ _%klass130323%_)
               (_%k130345%_ _%k130326%_))
          (__make-object _%klass130331%_ _%k130345%_))))
    (define new-instance
      (lambda (_%klass124503%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124503%_ 'class))
            (let ((_%klass124507%_ _%klass124503%_))
              (__new-instance _%klass124507%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@794.21-794.26"
               'contract:
               'class-type?
               'value:
               _%klass124503%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass130170%_ . _%args130171%_)
        (let* ((_%klass130174%_ _%klass130170%_)
               (_%$e130183%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass130174%_ '10 '#f '#f))))
          (if _%$e130183%_
              ((lambda (_%kons-id130186%_)
                 (let ((_%obj130208%_
                        (let* ((_%klass130188%_ _%klass130174%_)
                               (_%klass130193%_ _%klass130188%_))
                          (__new-instance _%klass130193%_))))
                   (___constructor-init!
                    _%klass130174%_
                    _%kons-id130186%_
                    _%obj130208%_
                    _%args130171%_)
                   _%obj130208%_))
               _%$e130183%_)
              (if (let* ((_%klass130210%_ _%klass130174%_)
                         (_%klass130215%_ _%klass130210%_))
                    (__class-type-metaclass? _%klass130215%_))
                  (let ((_%obj130242%_
                         (let* ((_%klass130226%_ _%klass130174%_)
                                (_%klass130231%_ _%klass130226%_))
                           (__new-instance _%klass130231%_))))
                    (__metaclass-instance-init!
                     _%klass130174%_
                     _%obj130242%_
                     _%args130171%_)
                    _%obj130242%_)
                  (if (let* ((_%klass130244%_ _%klass130174%_)
                             (_%klass130249%_ _%klass130244%_))
                        (__class-type-struct? _%klass130249%_))
                      (if (let ((__tmp135772
                                 (let* ((_%klass130278%_ _%klass130174%_)
                                        (_%klass130283%_ _%klass130278%_))
                                   (__class-type-field-count _%klass130283%_)))
                                (__tmp135771
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args130171%_))))
                            (declare (not safe))
                            (##fx= __tmp135772 __tmp135771))
                          (apply ##structure _%klass130174%_ _%args130171%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass130174%_
                                   'slots:
                                   (let* ((_%klass130295%_ _%klass130174%_)
                                          (_%klass130300%_ _%klass130295%_))
                                     (__class-type-slot-list _%klass130300%_))
                                   'args:
                                   _%args130171%_)
                            '#!void))
                      (let ((_%obj130276%_
                             (let* ((_%klass130260%_ _%klass130174%_)
                                    (_%klass130265%_ _%klass130260%_))
                               (__new-instance _%klass130265%_))))
                        (___class-instance-init!
                         _%klass130174%_
                         _%obj130276%_
                         _%args130171%_)
                        _%obj130276%_)))))))
    (define make-instance
      (lambda (_%klass124637%_ . _%args124638%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124637%_ 'class))
            (let ((_%klass124642%_ _%klass124637%_))
              (declare (not safe))
              (##apply __make-instance _%klass124642%_ _%args124638%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@797.22-797.27"
               'contract:
               'class-type?
               'value:
               _%klass124637%_)
              '#!void))))
    (define make-class-instance make-instance)
    (define __struct-instance-init!
      (lambda (_%obj130157%_ . _%args130158%_)
        (let ((_%obj130161%_ _%obj130157%_))
          (if (let ((__tmp135774
                     (let () (declare (not safe)) (##length _%args130158%_)))
                    (__tmp135773
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj130161%_))))
                (declare (not safe))
                (##fx< __tmp135774 __tmp135773))
              (___struct-instance-init! _%obj130161%_ _%args130158%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj130161%_
                     'args:
                     _%args130158%_))
          '#!void)))
    (define struct-instance-init!
      (lambda (_%obj124772%_ . _%args124773%_)
        (if (object? _%obj124772%_)
            (let ((_%obj124777%_ _%obj124772%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj124777%_ _%args124773%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@822.30-822.33"
               'contract:
               'object?
               'value:
               _%obj124772%_)
              '#!void))))
    (define ___struct-instance-init!
      (lambda (_%obj130116%_ _%args130117%_)
        (let _%lp130119%_ ((_%k130121%_ '1) (_%rest130122%_ _%args130117%_))
          (let* ((_%rest130123130131%_ _%rest130122%_)
                 (_%else130125130139%_ (lambda () _%obj130116%_))
                 (_%K130127130145%_
                  (lambda (_%rest130142%_ _%hd130143%_)
                    (unchecked-field-set!
                     _%obj130116%_
                     _%k130121%_
                     _%hd130143%_)
                    (_%lp130119%_
                     (let () (declare (not safe)) (##fx+ _%k130121%_ '1))
                     _%rest130142%_))))
            (if (pair? _%rest130123130131%_)
                (let ((_%hd130128130148%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest130123130131%_)))
                      (_%tl130129130150%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest130123130131%_))))
                  (let* ((_%hd130153%_ _%hd130128130148%_)
                         (_%rest130155%_ _%tl130129130150%_))
                    (_%K130127130145%_ _%rest130155%_ _%hd130153%_)))
                (_%else130125130139%_))))))
    (define __class-instance-init!
      (lambda (_%obj130103%_ . _%args130104%_)
        (let ((_%obj130107%_ _%obj130103%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj130107%_))
           _%obj130107%_
           _%args130104%_)
          '#!void)))
    (define class-instance-init!
      (lambda (_%obj124907%_ . _%args124908%_)
        (if (object? _%obj124907%_)
            (let ((_%obj124912%_ _%obj124907%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj124912%_ _%args124908%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@862.29-862.32"
               'contract:
               'object?
               'value:
               _%obj124907%_)
              '#!void))))
    (define ___class-instance-init!
      (lambda (_%klass130045%_ _%obj130046%_ _%args130047%_)
        (let _%lp130049%_ ((_%rest130051%_ _%args130047%_))
          (let* ((_%rest130052130062%_ _%rest130051%_)
                 (_%else130054130070%_
                  (lambda ()
                    (if (null? _%rest130051%_)
                        _%obj130046%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass130045%_
                               'rest:
                               _%rest130051%_))))
                 (_%K130056130084%_
                  (lambda (_%rest130073%_ _%val130074%_ _%key130075%_)
                    (if (keyword? _%key130075%_)
                        (let ((_%$e130078%_
                               (__class-slot-offset
                                _%klass130045%_
                                _%key130075%_)))
                          (if _%$e130078%_
                              ((lambda (_%off130081%_)
                                 (unchecked-field-set!
                                  _%obj130046%_
                                  _%off130081%_
                                  _%val130074%_)
                                 (_%lp130049%_ _%rest130073%_))
                               _%$e130078%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass130045%_
                                     'slot:
                                     _%key130075%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key130075%_)))))
            (if (pair? _%rest130052130062%_)
                (let ((_%hd130057130087%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest130052130062%_)))
                      (_%tl130058130089%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest130052130062%_))))
                  (let ((_%key130092%_ _%hd130057130087%_))
                    (if (pair? _%tl130058130089%_)
                        (let ((_%hd130059130094%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl130058130089%_)))
                              (_%tl130060130096%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl130058130089%_))))
                          (let* ((_%val130099%_ _%hd130059130094%_)
                                 (_%rest130101%_ _%tl130060130096%_))
                            (_%K130056130084%_
                             _%rest130101%_
                             _%val130099%_
                             _%key130092%_)))
                        (_%else130054130070%_))))
                (_%else130054130070%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass130041%_ _%obj130042%_ _%args130043%_)
        (apply call-method
               _%klass130041%_
               'instance-init!
               _%obj130042%_
               _%args130043%_)))
    (define __constructor-init!
      (lambda (_%klass130010%_
               _%kons-id130011%_
               _%obj130012%_
               .
               _%args130013%_)
        (let* ((_%klass130016%_ _%klass130010%_)
               (_%kons-id130024%_ _%kons-id130011%_)
               (_%obj130032%_ _%obj130012%_))
          (___constructor-init!
           _%klass130016%_
           _%kons-id130024%_
           _%obj130032%_
           _%args130013%_)
          '#!void)))
    (define constructor-init!
      (lambda (_%klass125042%_
               _%kons-id125043%_
               _%obj125044%_
               .
               _%args125045%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125042%_ 'class))
            (let ((_%klass125049%_ _%klass125042%_))
              (if (symbol? _%kons-id125043%_)
                  (let ((_%kons-id125059%_ _%kons-id125043%_))
                    (if (object? _%obj125044%_)
                        (let ((_%obj125069%_ _%obj125044%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass125049%_
                                   _%kons-id125059%_
                                   _%obj125069%_
                                   _%args125045%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@886.63-886.66"
                           'contract:
                           'object?
                           'value:
                           _%obj125044%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@886.43-886.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id125043%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@886.26-886.31"
               'contract:
               'class-type?
               'value:
               _%klass125042%_)
              '#!void))))
    (define ___constructor-init!
      (lambda (_%klass129999%_ _%kons-id130000%_ _%obj130001%_ _%args130002%_)
        (let ((_%$e130004%_
               (__find-method
                _%klass129999%_
                _%obj130001%_
                _%kons-id130000%_)))
          (if _%$e130004%_
              ((lambda (_%kons130007%_)
                 (apply _%kons130007%_ _%obj130001%_ _%args130002%_)
                 _%obj130001%_)
               _%$e130004%_)
              (error '"missing constructor"
                     'class:
                     _%klass129999%_
                     'method:
                     _%kons-id130000%_)))))
    (define __struct-copy
      (lambda (_%struct129987%_)
        (let ((_%struct129990%_ _%struct129987%_))
          (declare (not safe))
          (##structure-copy _%struct129990%_))))
    (define struct-copy
      (lambda (_%struct125199%_)
        (if (object? _%struct125199%_)
            (let ((_%struct125203%_ _%struct125199%_))
              (__struct-copy _%struct125203%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@900.20-900.26"
               'contract:
               'object?
               'value:
               _%struct125199%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj129968%_)
        (let* ((_%obj129971%_ _%obj129968%_)
               (_%len129980%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj129971%_))))
          (let _%recur129982%_ ((_%i129984%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i129984%_ _%len129980%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj129971%_
                         _%i129984%_
                         '#f
                         '#f))
                      (_%recur129982%_
                       (let () (declare (not safe)) (##fx+ _%i129984%_ '1))))
                '())))))
    (define struct->list
      (lambda (_%obj125333%_)
        (if (object? _%obj125333%_)
            (let ((_%obj125337%_ _%obj125333%_))
              (__struct->list _%obj125337%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@903.21-903.24"
               'contract:
               'object?
               'value:
               _%obj125333%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj129920%_)
        (let* ((_%obj129923%_ _%obj129920%_)
               (_%klass129932%_
                (let () (declare (not safe)) (##structure-type _%obj129923%_)))
               (_%slot-vector129934%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass129932%_ '7 '#f '#f))))
          (let _%loop129936%_ ((_%index129938%_
                                (let ((__tmp135775
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector129934%_))))
                                  (declare (not safe))
                                  (##fx- __tmp135775 '1)))
                               (_%plist129939%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index129938%_ '1))
                (cons _%klass129932%_ _%plist129939%_)
                (let ((_%slot129942%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector129934%_
                          _%index129938%_))))
                  (_%loop129936%_
                   (let () (declare (not safe)) (##fx- _%index129938%_ '1))
                   (cons (let ((_%sym129944%_ _%slot129942%_))
                           (if (symbol? _%sym129944%_)
                               (let ((_%sym129949%_ _%sym129944%_))
                                 (declare (not safe))
                                 (__symbol->keyword _%sym129949%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  'symbol?
                                  'value:
                                  _%sym129944%_)
                                 '#!void)))
                         (cons (unchecked-field-ref
                                _%obj129923%_
                                _%index129938%_)
                               _%plist129939%_)))))))))
    (define class->list
      (lambda (_%obj125467%_)
        (if (object? _%obj125467%_)
            (let ((_%obj125471%_ _%obj125467%_)) (__class->list _%obj125471%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@911.20-911.23"
               'contract:
               'object?
               'value:
               _%obj125467%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj129870%_ _%id129871%_ . _%args129872%_)
        (let* ((_%id129875%_ _%id129871%_)
               (_%$e129906%_
                (let* ((_%obj129884%_ _%obj129870%_)
                       (_%id129887%_ _%id129875%_)
                       (_%id129892%_ _%id129887%_))
                  (__method-ref _%obj129884%_ _%id129892%_))))
          (if _%$e129906%_
              ((lambda (_%method129909%_)
                 (let ((_%method129911%_ _%method129909%_))
                   (apply _%method129911%_ _%obj129870%_ _%args129872%_)))
               _%$e129906%_)
              (error '"cannot find method"
                     'object:
                     _%obj129870%_
                     'method:
                     _%id129875%_)))))
    (define call-method
      (lambda (_%obj125601%_ _%id125602%_ . _%args125603%_)
        (if (symbol? _%id125602%_)
            (let ((_%id125607%_ _%id125602%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj125601%_
                       _%id125607%_
                       _%args125603%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@926.24-926.26"
               'contract:
               'symbol?
               'value:
               _%id125602%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj129821%_ _%id129822%_)
        (let* ((_%id129825%_ _%id129822%_)
               (_%klass129834%_ (class-of _%obj129821%_))
               (_%obj129837%_ _%obj129821%_)
               (_%id129840%_ _%id129825%_)
               (_%klass129845%_ _%klass129834%_)
               (_%id129860%_ _%id129840%_))
          (__find-method _%klass129845%_ _%obj129837%_ _%id129860%_))))
    (define method-ref
      (lambda (_%obj125737%_ _%id125738%_)
        (if (symbol? _%id125738%_)
            (let ((_%id125742%_ _%id125738%_))
              (__method-ref _%obj125737%_ _%id125742%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@953.23-953.25"
               'contract:
               'symbol?
               'value:
               _%id125738%_)
              '#!void))))
    (define checked-method-ref
      (lambda (_%obj129793%_ _%id129794%_)
        (let ((_%$e129818%_
               (let* ((_%obj129797%_ _%obj129793%_)
                      (_%id129800%_ _%id129794%_))
                 (if (symbol? _%id129800%_)
                     (let ((_%id129805%_ _%id129800%_))
                       (__method-ref _%obj129797%_ _%id129805%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id129800%_)
                       '#!void)))))
          (if _%$e129818%_
              _%$e129818%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj129793%_
                       'method:
                       _%id129794%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj129742%_ _%id129743%_)
        (let* ((_%id129746%_ _%id129743%_)
               (_%$e129777%_
                (let* ((_%obj129755%_ _%obj129742%_)
                       (_%id129758%_ _%id129746%_)
                       (_%id129763%_ _%id129758%_))
                  (__method-ref _%obj129755%_ _%id129763%_))))
          (if _%$e129777%_
              ((lambda (_%method129780%_)
                 (let ((_%method129782%_ _%method129780%_))
                   (lambda _%args129790%_
                     (apply _%method129782%_ _%obj129742%_ _%args129790%_))))
               _%$e129777%_)
              '#f))))
    (define bound-method-ref
      (lambda (_%obj125872%_ _%id125873%_)
        (if (symbol? _%id125873%_)
            (let ((_%id125877%_ _%id125873%_))
              (__bound-method-ref _%obj125872%_ _%id125877%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@961.29-961.31"
               'contract:
               'symbol?
               'value:
               _%id125873%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj129725%_ _%id129726%_)
        (let* ((_%id129729%_ _%id129726%_)
               (_%method129738%_
                (checked-method-ref _%obj129725%_ _%id129729%_)))
          (lambda _%args129740%_
            (apply _%method129738%_ _%obj129725%_ _%args129740%_)))))
    (define checked-bound-method-ref
      (lambda (_%obj126007%_ _%id126008%_)
        (if (symbol? _%id126008%_)
            (let ((_%id126012%_ _%id126008%_))
              (__checked-bound-method-ref _%obj126007%_ _%id126012%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@970.37-970.39"
               'contract:
               'symbol?
               'value:
               _%id126008%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass129594%_ _%obj129595%_ _%id129596%_)
        (let* ((_%klass129599%_ _%klass129594%_) (_%id129607%_ _%id129596%_))
          (if (let* ((_%klass129616%_ _%klass129599%_)
                     (_%klass129621%_ _%klass129616%_))
                (__class-type-sealed? _%klass129621%_))
              (let ((_%tab129651%_
                     (let* ((_%klass129635%_ _%klass129599%_)
                            (_%klass129640%_ _%klass129635%_))
                       (__specialize-class _%klass129640%_))))
                (declare (not safe))
                (symbolic-table-ref _%tab129651%_ _%id129607%_ '#f))
              (let ((_%$e129686%_
                     (let* ((_%klass129653%_ _%klass129599%_)
                            (_%obj129656%_ _%obj129595%_)
                            (_%id129659%_ _%id129607%_)
                            (_%klass129664%_ _%klass129653%_)
                            (_%id129676%_ _%id129659%_))
                       (__direct-method-ref
                        _%klass129664%_
                        _%obj129656%_
                        _%id129676%_))))
                (if _%$e129686%_
                    _%$e129686%_
                    (let* ((_%klass129690%_ _%klass129599%_)
                           (_%obj129693%_ _%obj129595%_)
                           (_%id129696%_ _%id129607%_)
                           (_%klass129701%_ _%klass129690%_)
                           (_%id129715%_ _%id129696%_))
                      (__mixin-method-ref
                       _%klass129701%_
                       _%obj129693%_
                       _%id129715%_))))))))
    (define find-method
      (lambda (_%klass126142%_ _%obj126143%_ _%id126144%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126142%_ 'class))
            (let ((_%klass126148%_ _%klass126142%_))
              (if (symbol? _%id126144%_)
                  (let ((_%id126158%_ _%id126144%_))
                    (__find-method _%klass126148%_ _%obj126143%_ _%id126158%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@975.41-975.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id126144%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@975.20-975.25"
               'contract:
               'class-type?
               'value:
               _%klass126142%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins129539%_ _%obj129540%_ _%id129541%_)
        (let* ((_%id129544%_ _%id129541%_)
               (__tmp135776
                (lambda (_%g129552129554%_)
                  (let* ((_%klass129557%_ _%g129552129554%_)
                         (_%obj129560%_ _%obj129540%_)
                         (_%id129563%_ _%id129544%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass129557%_ 'class))
                        (let* ((_%klass129568%_ _%klass129557%_)
                               (_%id129584%_ _%id129563%_))
                          (__direct-method-ref
                           _%klass129568%_
                           _%obj129560%_
                           _%id129584%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass129557%_)
                          '#!void))))))
          (declare (not safe))
          (ormap__0 __tmp135776 _%mixins129539%_))))
    (define mixin-find-method
      (lambda (_%mixins126288%_ _%obj126289%_ _%id126290%_)
        (if (symbol? _%id126290%_)
            (let ((_%id126294%_ _%id126290%_))
              (__mixin-find-method
               _%mixins126288%_
               _%obj126289%_
               _%id126294%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@984.37-984.39"
               'contract:
               'symbol?
               'value:
               _%id126290%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass129432%_ _%obj129433%_ _%id129434%_)
        (let* ((_%klass129437%_ _%klass129432%_) (_%id129445%_ _%id129434%_))
          (letrec ((_%metaclass-resolve-method129454%_
                    (lambda ()
                      (let* ((_%obj129515%_ _%klass129437%_)
                             (_%id129518%_ 'direct-method-ref)
                             (_%args129521%_ (list _%obj129433%_ _%id129445%_))
                             (_%id129526%_ _%id129518%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj129515%_
                                 _%id129526%_
                                 _%args129521%_))))
                   (_%metaclass-resolve-method!129455%_
                    (lambda ()
                      (let ((_%method129512%_
                             (_%metaclass-resolve-method129454%_)))
                        (let ((__tmp135778
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass129437%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp135777
                               (if _%method129512%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp135778
                           _%id129445%_
                           __tmp135777))
                        _%method129512%_))))
            (let ((_%$e129457%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass129437%_ '11 '#f '#f))))
              (if _%$e129457%_
                  ((lambda (_%ht129460%_)
                     (let ((_%method129462%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht129460%_
                               _%id129445%_
                               '#f))))
                       (if (procedure? _%method129462%_)
                           _%method129462%_
                           (if (let* ((_%klass129465%_ _%klass129437%_)
                                      (_%klass129470%_ _%klass129465%_))
                                 (__class-type-metaclass? _%klass129470%_))
                               (let ((_%$e129488%_ _%method129462%_))
                                 (if (eq? 'resolved _%$e129488%_)
                                     (_%metaclass-resolve-method129454%_)
                                     (if (eq? 'unknown _%$e129488%_)
                                         '#f
                                         (_%metaclass-resolve-method!129455%_))))
                               '#f))))
                   _%$e129457%_)
                  (if (let* ((_%klass129492%_ _%klass129437%_)
                             (_%klass129497%_ _%klass129492%_))
                        (__class-type-metaclass? _%klass129497%_))
                      (let ((_%tab129508%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass129437%_
                           _%tab129508%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!129455%_))
                      '#f)))))))
    (define direct-method-ref
      (lambda (_%klass126424%_ _%obj126425%_ _%id126426%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126424%_ 'class))
            (let ((_%klass126430%_ _%klass126424%_))
              (if (symbol? _%id126426%_)
                  (let ((_%id126440%_ _%id126426%_))
                    (__direct-method-ref
                     _%klass126430%_
                     _%obj126425%_
                     _%id126440%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@987.47-987.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id126426%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@987.26-987.31"
               'contract:
               'class-type?
               'value:
               _%klass126424%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass129384%_ _%obj129385%_ _%id129386%_)
        (let* ((_%klass129389%_ _%klass129384%_)
               (_%id129397%_ _%id129386%_)
               (_%mixins129406%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass129389%_ '6 '#f '#f)))
               (_%obj129409%_ _%obj129385%_)
               (_%id129412%_ _%id129397%_)
               (_%id129417%_ _%id129412%_))
          (__mixin-find-method _%mixins129406%_ _%obj129409%_ _%id129417%_))))
    (define mixin-method-ref
      (lambda (_%klass126570%_ _%obj126571%_ _%id126572%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126570%_ 'class))
            (let ((_%klass126576%_ _%klass126570%_))
              (if (symbol? _%id126572%_)
                  (let ((_%id126586%_ _%id126572%_))
                    (__mixin-method-ref
                     _%klass126576%_
                     _%obj126571%_
                     _%id126586%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1017.46-1017.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id126572%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1017.25-1017.30"
               'contract:
               'class-type?
               'value:
               _%klass126570%_)
              '#!void))))
    (define __bind-method!__%
      (lambda (_%klass129294%_ _%id129295%_ _%proc129296%_ _%rebind?129297%_)
        (let* ((_%id129300%_ _%id129295%_) (_%proc129308%_ _%proc129296%_))
          (letrec ((_%bind!129317%_
                    (lambda (_%ht129368%_)
                      (if (and (not _%rebind?129297%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht129368%_
                                  _%id129300%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass129294%_
                                 'method:
                                 _%id129300%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht129368%_
                               _%id129300%_
                               _%proc129308%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass129294%_ 'class))
                (let ((_%ht129320%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass129294%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht129320%_
                      (_%bind!129317%_ _%ht129320%_)
                      (let ((_%ht129322%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass129294%_
                           _%ht129322%_
                           '11
                           '#f
                           '#f))
                        (_%bind!129317%_ _%ht129322%_))))
                (if (let () (declare (not safe)) (##type? _%klass129294%_))
                    (let* ((_%klass129325%_
                            (__shadow-class__0 _%klass129294%_))
                           (_%id129328%_ _%id129300%_)
                           (_%proc129331%_ _%proc129308%_)
                           (_%rebind?129334%_ _%rebind?129297%_)
                           (_%id129339%_ _%id129328%_)
                           (_%proc129357%_ _%proc129331%_))
                      (__bind-method!__%
                       _%klass129325%_
                       _%id129339%_
                       _%proc129357%_
                       _%rebind?129334%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass129294%_)))))))
    (define __bind-method!__0
      (lambda (_%klass129373%_ _%id129374%_ _%proc129375%_)
        (let ((_%rebind?129377%_ '#f))
          (__bind-method!__%
           _%klass129373%_
           _%id129374%_
           _%proc129375%_
           _%rebind?129377%_))))
    (define __bind-method!
      (lambda _g135779_
        (let ((_g135780_ (let () (declare (not safe)) (##length _g135779_))))
          (cond ((let () (declare (not safe)) (##fx= _g135780_ 3))
                 (apply __bind-method!__0 _g135779_))
                ((let () (declare (not safe)) (##fx= _g135780_ 4))
                 (apply __bind-method!__% _g135779_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g135779_))))))
    (define bind-method!__%
      (lambda (_%klass126717%_ _%id126718%_ _%proc126719%_ _%rebind?126720%_)
        (if (symbol? _%id126718%_)
            (let ((_%id126724%_ _%id126718%_))
              (if (procedure? _%proc126719%_)
                  (let ((_%proc126734%_ _%proc126719%_))
                    (__bind-method!__%
                     _%klass126717%_
                     _%id126724%_
                     _%proc126734%_
                     _%rebind?126720%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1020.42-1020.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc126719%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1020.27-1020.29"
               'contract:
               'symbol?
               'value:
               _%id126718%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass126747%_ _%id126748%_ _%proc126749%_)
        (let ((_%rebind?126751%_ '#f))
          (bind-method!__%
           _%klass126747%_
           _%id126748%_
           _%proc126749%_
           _%rebind?126751%_))))
    (define bind-method!
      (lambda _g135781_
        (let ((_g135782_ (let () (declare (not safe)) (##length _g135781_))))
          (cond ((let () (declare (not safe)) (##fx= _g135782_ 3))
                 (apply bind-method!__0 _g135781_))
                ((let () (declare (not safe)) (##fx= _g135782_ 4))
                 (apply bind-method!__% _g135781_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g135781_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint129275%_ _%seed129276%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint129275%_
           procedure-hash
           eq?
           _%seed129276%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint129282%_ '#f) (_%seed129284%_ '0))
          (make-method-specializer-table__%
           _%size-hint129282%_
           _%seed129284%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint129286%_)
        (let ((_%seed129288%_ '0))
          (make-method-specializer-table__%
           _%size-hint129286%_
           _%seed129288%_))))
    (define make-method-specializer-table
      (lambda _g135783_
        (let ((_g135784_ (let () (declare (not safe)) (##length _g135783_))))
          (cond ((let () (declare (not safe)) (##fx= _g135784_ 0))
                 (apply make-method-specializer-table__0 _g135783_))
                ((let () (declare (not safe)) (##fx= _g135784_ 1))
                 (apply make-method-specializer-table__1 _g135783_))
                ((let () (declare (not safe)) (##fx= _g135784_ 2))
                 (apply make-method-specializer-table__% _g135783_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g135783_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint129255%_ _%seed129257%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint129255%_
           procedure-hash
           eq?
           _%seed129257%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint129263%_ '#f) (_%seed129265%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint129263%_
           _%seed129265%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint129267%_)
        (let ((_%seed129269%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint129267%_
           _%seed129269%_))))
    (define make-method-specializer-table/lock
      (lambda _g135785_
        (let ((_g135786_ (let () (declare (not safe)) (##length _g135785_))))
          (cond ((let () (declare (not safe)) (##fx= _g135786_ 0))
                 (apply make-method-specializer-table/lock__0 _g135785_))
                ((let () (declare (not safe)) (##fx= _g135786_ 1))
                 (apply make-method-specializer-table/lock__1 _g135785_))
                ((let () (declare (not safe)) (##fx= _g135786_ 2))
                 (apply make-method-specializer-table/lock__% _g135785_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g135785_))))))
    (define method-specializer-table-ref
      (lambda (_%tab129208%_ _%key129209%_ _%default129210%_)
        (let ((_%table129212%_
               (let () (declare (not safe)) (&raw-table-table _%tab129208%_)))
              (_%seed129213%_
               (let () (declare (not safe)) (&raw-table-seed _%tab129208%_))))
          (let* ((_%h129215%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key129209%_))
                         _%seed129213%_))
                 (_%size129218%_ (vector-length _%table129212%_))
                 (_%entries129221%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size129218%_ '2)))
                 (_%start129224%_
                  (let ((__tmp135787
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h129215%_ _%entries129221%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp135787 '1))))
            (let _%loop129228%_ ((_%probe129231%_ _%start129224%_)
                                 (_%i129233%_ '1)
                                 (_%deleted129235%_ '#f))
              (let ((_%k129238%_ (vector-ref _%table129212%_ _%probe129231%_)))
                (if (eq? _%k129238%_ (macro-unused-obj))
                    _%default129210%_
                    (if (eq? _%k129238%_ (macro-deleted-obj))
                        (_%loop129228%_
                         (let ((_%next-probe129243%_
                                (fx+ _%start129224%_
                                     _%i129233%_
                                     (fx* _%i129233%_ _%i129233%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe129243%_ _%size129218%_))
                         (let () (declare (not safe)) (##fx+ _%i129233%_ '1))
                         (let ((_%$e129246%_ _%deleted129235%_))
                           (if _%$e129246%_ _%$e129246%_ _%probe129231%_)))
                        (if (eq? _%key129209%_ _%k129238%_)
                            (vector-ref
                             _%table129212%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe129231%_ '1)))
                            (_%loop129228%_
                             (let ((_%next-probe129251%_
                                    (fx+ _%start129224%_
                                         _%i129233%_
                                         (fx* _%i129233%_ _%i129233%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe129251%_
                                _%size129218%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i129233%_ '1))
                             _%deleted129235%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab129181%_ _%key129182%_ _%default129183%_)
        (let ((_%lock129185%_
               (let () (declare (not safe)) (&raw-table-lock _%tab129181%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again129190%_ ((_%spin129193%_ '0))
              (if (let ((__tmp135788
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock129185%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp135788 '0))
                  (let ((__tmp135789 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock129185%_ '1 __tmp135789))
                  (if (let () (declare (not safe)) (##fx< _%spin129193%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again129190%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin129193%_ '1))))
                      (let ((_%owner129199%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock129185%_ '1))))
                        (if (eq? _%owner129199%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner129199%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again129190%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r129205%_
                 (method-specializer-table-ref
                  _%tab129181%_
                  _%key129182%_
                  _%default129183%_)))
            (let () (declare (not safe)) (##vector-set! _%lock129185%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock129185%_ '0 '0 '1))
            _%$r129205%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab129133%_ _%key129134%_ _%value129135%_)
        (let ((_%table129137%_
               (let () (declare (not safe)) (&raw-table-table _%tab129133%_)))
              (_%seed129138%_
               (let () (declare (not safe)) (&raw-table-seed _%tab129133%_))))
          (let* ((_%h129140%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key129134%_))
                         _%seed129138%_))
                 (_%size129143%_ (vector-length _%table129137%_))
                 (_%entries129146%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size129143%_ '2)))
                 (_%start129149%_
                  (let ((__tmp135790
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h129140%_ _%entries129146%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp135790 '1))))
            (let _%loop129153%_ ((_%probe129156%_ _%start129149%_)
                                 (_%i129158%_ '1)
                                 (_%deleted129160%_ '#f))
              (let ((_%k129163%_ (vector-ref _%table129137%_ _%probe129156%_)))
                (if (eq? _%k129163%_ (macro-unused-obj))
                    (if _%deleted129160%_
                        (begin
                          (vector-set!
                           _%table129137%_
                           _%deleted129160%_
                           _%key129134%_)
                          (vector-set!
                           _%table129137%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted129160%_ '1))
                           _%value129135%_)
                          ((lambda ()
                             (let ((__tmp135791
                                    (let ((__tmp135792
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab129133%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp135792 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab129133%_
                                __tmp135791)))))
                        (begin
                          (vector-set!
                           _%table129137%_
                           _%probe129156%_
                           _%key129134%_)
                          (vector-set!
                           _%table129137%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe129156%_ '1))
                           _%value129135%_)
                          ((lambda ()
                             (let ((__tmp135793
                                    (let ((__tmp135794
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab129133%_))))
                                      (declare (not safe))
                                      (##fx- __tmp135794 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab129133%_
                                __tmp135793))
                             (let ((__tmp135795
                                    (let ((__tmp135796
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab129133%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp135796 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab129133%_
                                __tmp135795))))))
                    (if (eq? _%k129163%_ (macro-deleted-obj))
                        (_%loop129153%_
                         (let ((_%next-probe129170%_
                                (fx+ _%start129149%_
                                     _%i129158%_
                                     (fx* _%i129158%_ _%i129158%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe129170%_ _%size129143%_))
                         (let () (declare (not safe)) (##fx+ _%i129158%_ '1))
                         (let ((_%$e129173%_ _%deleted129160%_))
                           (if _%$e129173%_ _%$e129173%_ _%probe129156%_)))
                        (if (eq? _%key129134%_ _%k129163%_)
                            (let ()
                              (vector-set!
                               _%table129137%_
                               _%probe129156%_
                               _%key129134%_)
                              (vector-set!
                               _%table129137%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe129156%_ '1))
                               _%value129135%_))
                            (_%loop129153%_
                             (let ((_%next-probe129178%_
                                    (fx+ _%start129149%_
                                         _%i129158%_
                                         (fx* _%i129158%_ _%i129158%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe129178%_
                                _%size129143%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i129158%_ '1))
                             _%deleted129160%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab129129%_ _%key129130%_ _%value129131%_)
        (if (let ((__tmp135799
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab129129%_)))
                  (__tmp135797
                   (let ((__tmp135798
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab129129%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp135798 '4))))
              (declare (not safe))
              (##fx< __tmp135799 __tmp135797))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab129129%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab129129%_
         _%key129130%_
         _%value129131%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab129101%_ _%key129102%_ _%value129103%_)
        (let ((_%lock129106%_
               (let () (declare (not safe)) (&raw-table-lock _%tab129101%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again129111%_ ((_%spin129114%_ '0))
              (if (let ((__tmp135800
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock129106%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp135800 '0))
                  (let ((__tmp135801 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock129106%_ '1 __tmp135801))
                  (if (let () (declare (not safe)) (##fx< _%spin129114%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again129111%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin129114%_ '1))))
                      (let ((_%owner129120%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock129106%_ '1))))
                        (if (eq? _%owner129120%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner129120%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again129111%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r129126%_
                 (method-specializer-table-set!
                  _%tab129101%_
                  _%key129102%_
                  _%value129103%_)))
            (let () (declare (not safe)) (##vector-set! _%lock129106%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock129106%_ '0 '0 '1))
            _%$r129126%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab129052%_
               _%key129053%_
               _%method-specializer-table-update!129054%_
               _%default129055%_)
        (let ((_%table129057%_
               (let () (declare (not safe)) (&raw-table-table _%tab129052%_)))
              (_%seed129058%_
               (let () (declare (not safe)) (&raw-table-seed _%tab129052%_))))
          (let* ((_%h129060%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key129053%_))
                         _%seed129058%_))
                 (_%size129063%_ (vector-length _%table129057%_))
                 (_%entries129066%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size129063%_ '2)))
                 (_%start129069%_
                  (let ((__tmp135802
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h129060%_ _%entries129066%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp135802 '1))))
            (let _%loop129073%_ ((_%probe129076%_ _%start129069%_)
                                 (_%i129078%_ '1)
                                 (_%deleted129080%_ '#f))
              (let ((_%k129083%_ (vector-ref _%table129057%_ _%probe129076%_)))
                (if (eq? _%k129083%_ (macro-unused-obj))
                    (if _%deleted129080%_
                        (begin
                          (vector-set!
                           _%table129057%_
                           _%deleted129080%_
                           _%key129053%_)
                          (vector-set!
                           _%table129057%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted129080%_ '1))
                           (_%method-specializer-table-update!129054%_
                            _%default129055%_))
                          ((lambda ()
                             (let ((__tmp135803
                                    (let ((__tmp135804
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab129052%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp135804 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab129052%_
                                __tmp135803)))))
                        (begin
                          (vector-set!
                           _%table129057%_
                           _%probe129076%_
                           _%key129053%_)
                          (vector-set!
                           _%table129057%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe129076%_ '1))
                           (_%method-specializer-table-update!129054%_
                            _%default129055%_))
                          ((lambda ()
                             (let ((__tmp135805
                                    (let ((__tmp135806
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab129052%_))))
                                      (declare (not safe))
                                      (##fx- __tmp135806 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab129052%_
                                __tmp135805))
                             (let ((__tmp135807
                                    (let ((__tmp135808
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab129052%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp135808 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab129052%_
                                __tmp135807))))))
                    (if (eq? _%k129083%_ (macro-deleted-obj))
                        (_%loop129073%_
                         (let ((_%next-probe129090%_
                                (fx+ _%start129069%_
                                     _%i129078%_
                                     (fx* _%i129078%_ _%i129078%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe129090%_ _%size129063%_))
                         (let () (declare (not safe)) (##fx+ _%i129078%_ '1))
                         (let ((_%$e129093%_ _%deleted129080%_))
                           (if _%$e129093%_ _%$e129093%_ _%probe129076%_)))
                        (if (eq? _%key129053%_ _%k129083%_)
                            (let ()
                              (vector-set!
                               _%table129057%_
                               _%probe129076%_
                               _%key129053%_)
                              (vector-set!
                               _%table129057%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe129076%_ '1))
                               (_%method-specializer-table-update!129054%_
                                (vector-ref
                                 _%table129057%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe129076%_ '1))))))
                            (_%loop129073%_
                             (let ((_%next-probe129098%_
                                    (fx+ _%start129069%_
                                         _%i129078%_
                                         (fx* _%i129078%_ _%i129078%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe129098%_
                                _%size129063%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i129078%_ '1))
                             _%deleted129080%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab129047%_
               _%key129048%_
               _%method-specializer-table-update!129049%_
               _%default129050%_)
        (if (let ((__tmp135811
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab129047%_)))
                  (__tmp135809
                   (let ((__tmp135810
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab129047%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp135810 '4))))
              (declare (not safe))
              (##fx< __tmp135811 __tmp135809))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab129047%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab129047%_
         _%key129048%_
         _%method-specializer-table-update!129049%_
         _%default129050%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab129018%_
               _%key129019%_
               _%method-specializer-table-update!129020%_
               _%default129021%_)
        (let ((_%lock129024%_
               (let () (declare (not safe)) (&raw-table-lock _%tab129018%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again129029%_ ((_%spin129032%_ '0))
              (if (let ((__tmp135812
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock129024%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp135812 '0))
                  (let ((__tmp135813 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock129024%_ '1 __tmp135813))
                  (if (let () (declare (not safe)) (##fx< _%spin129032%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again129029%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin129032%_ '1))))
                      (let ((_%owner129038%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock129024%_ '1))))
                        (if (eq? _%owner129038%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner129038%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again129029%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r129044%_
                 (_%method-specializer-table-update!129020%_
                  _%tab129018%_
                  _%key129019%_
                  _%method-specializer-table-update!129020%_
                  _%default129021%_)))
            (let () (declare (not safe)) (##vector-set! _%lock129024%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock129024%_ '0 '0 '1))
            _%$r129044%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab128975%_ _%key128976%_)
        (let ((_%table128978%_
               (let () (declare (not safe)) (&raw-table-table _%tab128975%_)))
              (_%seed128980%_
               (let () (declare (not safe)) (&raw-table-seed _%tab128975%_))))
          (let* ((_%h128983%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key128976%_))
                         _%seed128980%_))
                 (_%size128986%_ (vector-length _%table128978%_))
                 (_%entries128989%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size128986%_ '2)))
                 (_%start128992%_
                  (let ((__tmp135814
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h128983%_ _%entries128989%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp135814 '1))))
            (let _%loop128996%_ ((_%probe128999%_ _%start128992%_)
                                 (_%i129001%_ '1))
              (let ((_%k129004%_ (vector-ref _%table128978%_ _%probe128999%_)))
                (if (eq? _%k129004%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k129004%_ (macro-deleted-obj))
                        (_%loop128996%_
                         (let ((_%next-probe129009%_
                                (fx+ _%start128992%_
                                     _%i129001%_
                                     (fx* _%i129001%_ _%i129001%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe129009%_ _%size128986%_))
                         (let () (declare (not safe)) (##fx+ _%i129001%_ '1)))
                        (if (eq? _%key128976%_ _%k129004%_)
                            (let ()
                              (vector-set!
                               _%table128978%_
                               _%probe128999%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table128978%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe128999%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp135815
                                        (let ((__tmp135816
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab128975%_))))
                                          (declare (not safe))
                                          (##fx- __tmp135816 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab128975%_
                                    __tmp135815)))))
                            (_%loop128996%_
                             (let ((_%next-probe129015%_
                                    (fx+ _%start128992%_
                                         _%i129001%_
                                         (fx* _%i129001%_ _%i129001%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe129015%_
                                _%size128986%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i129001%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab128947%_ _%key128949%_)
        (let ((_%lock128952%_
               (let () (declare (not safe)) (&raw-table-lock _%tab128947%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again128957%_ ((_%spin128960%_ '0))
              (if (let ((__tmp135817
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock128952%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp135817 '0))
                  (let ((__tmp135818 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock128952%_ '1 __tmp135818))
                  (if (let () (declare (not safe)) (##fx< _%spin128960%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again128957%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin128960%_ '1))))
                      (let ((_%owner128966%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock128952%_ '1))))
                        (if (eq? _%owner128966%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner128966%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again128957%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r128972%_
                 (method-specializer-table-delete!
                  _%tab128947%_
                  _%key128949%_)))
            (let () (declare (not safe)) (##vector-set! _%lock128952%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock128952%_ '0 '0 '1))
            _%$r128972%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc128944%_ _%specializer128945%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc128944%_
         _%specializer128945%_)))
    (define __lookup-method-specializer
      (lambda (_%proc128942%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc128942%_
         '#f)))
    (define __specialize-class
      (lambda (_%klass128924%_)
        (let* ((_%klass128927%_ _%klass128924%_)
               (_%$e128936%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass128927%_ '12 '#f '#f))))
          (if _%$e128936%_
              _%$e128936%_
              (let ((_%method-table128940%_
                     (___specialize-class _%klass128927%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass128927%_
                   _%method-table128940%_
                   '12
                   '#f
                   '#f))
                _%method-table128940%_)))))
    (define specialize-class
      (lambda (_%klass126878%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126878%_ 'class))
            (let ((_%klass126882%_ _%klass126878%_))
              (__specialize-class _%klass126882%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1070.25-1070.30"
               'contract:
               'class-type?
               'value:
               _%klass126878%_)
              '#!void))))
    (define __specialize-method
      (lambda (_%klass128908%_
               _%method-table128909%_
               _%method128910%_
               _%proc128911%_)
        (let ((_%$e128913%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table128909%_
                  _%method128910%_
                  '#f))))
          (if _%$e128913%_
              _%$e128913%_
              (let ((_%$e128916%_
                     (__lookup-method-specializer _%proc128911%_)))
                (if _%$e128916%_
                    ((lambda (_%specialize128919%_)
                       (let ((_%specialized-proc128921%_
                              (_%specialize128919%_
                               _%klass128908%_
                               _%method-table128909%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table128909%_
                          _%method128910%_
                          _%specialized-proc128921%_)))
                     _%$e128916%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table128909%_
                       _%method128910%_
                       _%proc128911%_))))))))
    (define ___specialize-class
      (lambda (_%klass128775%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass128775%_ 'class))
            (if (let* ((_%klass128778%_ _%klass128775%_)
                       (_%klass128783%_ _%klass128778%_))
                  (__class-type-metaclass? _%klass128783%_))
                (let* ((_%obj128795%_ _%klass128775%_)
                       (_%id128798%_ 'specialize-class)
                       (_%args128801%_ '())
                       (_%id128806%_ _%id128798%_))
                  (declare (not safe))
                  (##apply __call-method
                           _%obj128795%_
                           _%id128806%_
                           _%args128801%_))
                (if (let* ((_%pred128819%_ class-type-metaclass?)
                           (_%lst128822%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass128775%_
                               '6
                               '#f
                               '#f)))
                           (_%pred128827%_ _%pred128819%_))
                      (declare (not safe))
                      (__find _%pred128827%_ _%lst128822%_))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass128775%_)
                    (let ((_%method-table128840%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop128842%_ ((_%rest128844%_
                                            (let* ((_%klass128891%_
                                                    _%klass128775%_)
                                                   (_%klass128896%_
                                                    _%klass128891%_))
                                              (__class-precedence-list
                                               _%klass128896%_))))
                        (let* ((_%rest128845128853%_ _%rest128844%_)
                               (_%else128847128861%_
                                (lambda () _%method-table128840%_))
                               (_%K128849128879%_
                                (lambda (_%rest128864%_ _%xklass128865%_)
                                  (let ((_%xmethod-table128866128868%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass128865%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table128866128868%_
                                        (let* ((_%xmethod-table128870%_
                                                _%xmethod-table128866128868%_)
                                               (__tmp135819
                                                (lambda (_%g128871128874%_
                                                         _%g128872128876%_)
                                                  (__specialize-method
                                                   _%klass128775%_
                                                   _%method-table128840%_
                                                   _%g128871128874%_
                                                   _%g128872128876%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table128870%_
                                           __tmp135819))
                                        '#f))
                                  (_%loop128842%_ _%rest128864%_))))
                          (if (pair? _%rest128845128853%_)
                              (let ((_%hd128850128882%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest128845128853%_)))
                                    (_%tl128851128884%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest128845128853%_))))
                                (let* ((_%xklass128887%_ _%hd128850128882%_)
                                       (_%rest128889%_ _%tl128851128884%_))
                                  (_%K128849128879%_
                                   _%rest128889%_
                                   _%xklass128887%_)))
                              (_%else128847128861%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass128775%_))
                (__specialize-class (__shadow-class__0 _%klass128775%_))
                (error '"bad class; cannot specialize" _%klass128775%_)))))
    (define __seal-class!
      (lambda (_%klass128638%_)
        (let ((_%klass128641%_ _%klass128638%_))
          (if (let* ((_%klass128650%_ _%klass128641%_)
                     (_%klass128655%_ _%klass128650%_))
                (__class-type-sealed? _%klass128655%_))
              '#!void
              (begin
                (if (let* ((_%klass128668%_ _%klass128641%_)
                           (_%klass128673%_ _%klass128668%_))
                      (__class-type-metaclass? _%klass128673%_))
                    (let ()
                      (let* ((_%obj128684%_ _%klass128641%_)
                             (_%id128687%_ 'seal-class!)
                             (_%args128690%_ '())
                             (_%id128695%_ _%id128687%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj128684%_
                                 _%id128695%_
                                 _%args128690%_))
                      (let* ((_%klass128708%_ _%klass128641%_)
                             (_%klass128713%_ _%klass128708%_))
                        (__specialize-class _%klass128713%_)))
                    (if (let* ((_%pred128723%_ class-type-metaclass?)
                               (_%lst128726%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass128641%_
                                   '6
                                   '#f
                                   '#f)))
                               (_%pred128731%_ _%pred128723%_))
                          (declare (not safe))
                          (__find _%pred128731%_ _%lst128726%_))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass128641%_)
                        (let* ((_%klass128744%_ _%klass128641%_)
                               (_%klass128749%_ _%klass128744%_))
                          (__specialize-class _%klass128749%_))))
                (let* ((_%klass128760%_ _%klass128641%_)
                       (_%klass128765%_ _%klass128760%_))
                  (__class-type-seal! _%klass128765%_)))))))
    (define seal-class!
      (lambda (_%klass127012%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127012%_ 'class))
            (let ((_%klass127016%_ _%klass127012%_))
              (__seal-class! _%klass127016%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1116.20-1116.25"
               'contract:
               'class-type?
               'value:
               _%klass127012%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass128526%_ _%obj128527%_ _%id128528%_)
        (let* ((_%subklass128531%_ _%subklass128526%_)
               (_%id128539%_ _%id128528%_))
          (letrec ((_%find-next-method128548%_
                    (lambda (_%klass128550%_)
                      (let _%lp128552%_ ((_%rest128554%_
                                          (let ((_%klass128623%_
                                                 _%klass128550%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%klass128623%_
                                                   'class))
                                                (let ((_%klass128628%_
                                                       _%klass128623%_))
                                                  (__class-precedence-list
                                                   _%klass128628%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/mop
                                                   'contract:
                                                   'class-type?
                                                   'value:
                                                   _%klass128623%_)
                                                  '#!void)))))
                        (let* ((_%rest128555128563%_ _%rest128554%_)
                               (_%else128557128571%_ (lambda () '#f))
                               (_%K128559128611%_
                                (lambda (_%rest128574%_ _%klass128575%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass128531%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass128575%_)))
                                      (let* ((_%mixins128577%_ _%rest128574%_)
                                             (_%obj128580%_ _%obj128527%_)
                                             (_%id128583%_ _%id128539%_)
                                             (_%id128588%_ _%id128583%_))
                                        (__mixin-find-method
                                         _%mixins128577%_
                                         _%obj128580%_
                                         _%id128588%_))
                                      (_%lp128552%_ _%rest128574%_)))))
                          (if (pair? _%rest128555128563%_)
                              (let ((_%hd128560128614%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest128555128563%_)))
                                    (_%tl128561128616%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest128555128563%_))))
                                (let* ((_%klass128619%_ _%hd128560128614%_)
                                       (_%rest128621%_ _%tl128561128616%_))
                                  (_%K128559128611%_
                                   _%rest128621%_
                                   _%klass128619%_)))
                              (_%else128557128571%_)))))))
            (_%find-next-method128548%_ (class-of _%obj128527%_))))))
    (define next-method
      (lambda (_%subklass127146%_ _%obj127147%_ _%id127148%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass127146%_ 'class))
            (let ((_%subklass127152%_ _%subklass127146%_))
              (if (symbol? _%id127148%_)
                  (let ((_%id127162%_ _%id127148%_))
                    (__next-method
                     _%subklass127152%_
                     _%obj127147%_
                     _%id127162%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1138.44-1138.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id127148%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1138.20-1138.28"
               'contract:
               'class-type?
               'value:
               _%subklass127146%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass128461%_ _%obj128462%_ _%id128463%_ . _%args128464%_)
        (let* ((_%subklass128467%_ _%subklass128461%_)
               (_%id128475%_ _%id128463%_)
               (_%$e128520%_
                (let* ((_%subklass128484%_ _%subklass128467%_)
                       (_%obj128487%_ _%obj128462%_)
                       (_%id128490%_ _%id128475%_)
                       (_%subklass128495%_ _%subklass128484%_)
                       (_%id128510%_ _%id128490%_))
                  (__next-method
                   _%subklass128495%_
                   _%obj128487%_
                   _%id128510%_))))
          (if _%$e128520%_
              ((lambda (_%methodf128523%_)
                 (apply _%methodf128523%_ _%obj128462%_ _%args128464%_))
               _%$e128520%_)
              (error '"cannot find next method"
                     'object:
                     _%obj128462%_
                     'method:
                     _%id128475%_)))))
    (define call-next-method
      (lambda (_%subklass127292%_ _%obj127293%_ _%id127294%_ . _%args127295%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass127292%_ 'class))
            (let ((_%subklass127299%_ _%subklass127292%_))
              (if (symbol? _%id127294%_)
                  (let ((_%id127309%_ _%id127294%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass127299%_
                             _%obj127293%_
                             _%id127309%_
                             _%args127295%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1149.49-1149.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id127294%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1149.25-1149.33"
               'contract:
               'class-type?
               'value:
               _%subklass127292%_)
              '#!void))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type128244%_ _%properties128245%_)
        (letrec ((_%shadow-type-id128247%_
                  (lambda (_%type128449%_)
                    (let ((__tmp135820
                           (let ()
                             (declare (not safe))
                             (##type-name _%type128449%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp135820 '"::t"))))
                 (_%shadow-type-name128248%_
                  (lambda (_%type128447%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type128447%_))))
                 (_%make-shadow-class128249%_
                  (lambda (_%type128329%_ _%precedence-list128330%_)
                    (let* ((_%super128332%_
                            (if (pair? _%precedence-list128330%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list128330%_))
                                      '())
                                '()))
                           (_%klass128444%_
                            (let* ((_%id128334%_
                                    (_%shadow-type-id128247%_ _%type128329%_))
                                   (_%name128337%_
                                    (let ()
                                      (declare (not safe))
                                      (##type-name _%type128329%_)))
                                   (_%direct-supers128340%_ _%super128332%_)
                                   (_%direct-slots128343%_ '())
                                   (_%properties128369%_
                                    (cons (cons 'struct: '#t)
                                          (cons (cons 'system: '#t)
                                                (cons (cons 'system-type:
                                                            _%type128329%_)
                                                      (let ((__tmp135821
                                                             (if (let ((_%type128346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%type128329%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##type? _%type128346%_))
                               (let ((_%type128351%_ _%type128346%_))
                                 (__type-extensible? _%type128351%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  '##type?
                                  'value:
                                  _%type128346%_)
                                 '#!void)))
                         '()
                         (cons (cons 'final: '#t) '()))))
                (declare (not safe))
                (foldr__0 cons _%properties128245%_ __tmp135821))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%constructor128372%_ '#f)
                                   (_%id128377%_ _%id128334%_))
                              (if (symbol? _%name128337%_)
                                  (let* ((_%name128388%_ _%name128337%_)
                                         (_%direct-supers128398%_
                                          _%direct-supers128340%_)
                                         (_%direct-slots128408%_
                                          _%direct-slots128343%_)
                                         (_%properties128418%_
                                          _%properties128369%_))
                                    (if ((lambda (_%$obj128427%_)
                                           (or (not _%$obj128427%_)
                                               (symbol? _%$obj128427%_)))
                                         _%constructor128372%_)
                                        (let ((_%constructor128434%_
                                               _%constructor128372%_))
                                          (__make-class-type
                                           _%id128377%_
                                           _%name128388%_
                                           _%direct-supers128398%_
                                           _%direct-slots128408%_
                                           _%properties128418%_
                                           _%constructor128434%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '(? (or not symbol?))
                                           'value:
                                           _%constructor128372%_)
                                          '#!void)))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     'symbol?
                                     'value:
                                     _%name128337%_)
                                    '#!void)))))
                      (let ((__tmp135822
                             (let ()
                               (declare (not safe))
                               (##type-id _%type128329%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp135822
                         _%klass128444%_))
                      _%klass128444%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again128253%_ ((_%spin128256%_ '0))
              (if (let ((__tmp135823
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp135823 '0))
                  (let ((__tmp135824 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp135824))
                  (if (let () (declare (not safe)) (##fx< _%spin128256%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again128253%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin128256%_ '1))))
                      (let ((_%owner128262%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner128262%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner128262%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again128253%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e128268%_
                 (let ((__tmp135825
                        (let ()
                          (declare (not safe))
                          (##type-id _%type128244%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp135825 '#f))))
            (if _%$e128268%_
                ((lambda (_%klass128271%_)
                   (let ()
                     (declare (not safe))
                     (##vector-set! __shadow-classes-lock '1 '#f))
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-lock '0 '0 '1))
                   _%klass128271%_)
                 _%$e128268%_)
                (let _%loop128274%_ ((_%super128276%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type128244%_)))
                                     (_%hierarchy128277%_ '()))
                  (if (not _%super128276%_)
                      (let _%loop128280%_ ((_%rest128282%_ _%hierarchy128277%_)
                                           (_%precedence-list128283%_ '()))
                        (let* ((_%rest128284128292%_ _%rest128282%_)
                               (_%else128286128302%_
                                (lambda ()
                                  (let ((_%klass128300%_
                                         (_%make-shadow-class128249%_
                                          _%type128244%_
                                          _%precedence-list128283%_)))
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
                                    _%klass128300%_)))
                               (_%K128288128316%_
                                (lambda (_%rest128305%_ _%type128306%_)
                                  (let ((_%$e128308%_
                                         (let ((__tmp135826
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type128306%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp135826
                                            '#f))))
                                    (if _%$e128308%_
                                        ((lambda (_%klass128311%_)
                                           (_%loop128280%_
                                            _%rest128305%_
                                            (cons _%klass128311%_
                                                  _%precedence-list128283%_)))
                                         _%$e128308%_)
                                        (let ((_%klass128314%_
                                               (_%make-shadow-class128249%_
                                                _%type128306%_
                                                _%precedence-list128283%_)))
                                          (_%loop128280%_
                                           _%rest128305%_
                                           (cons _%klass128314%_
                                                 _%precedence-list128283%_))))))))
                          (if (pair? _%rest128284128292%_)
                              (let ((_%hd128289128319%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest128284128292%_)))
                                    (_%tl128290128321%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest128284128292%_))))
                                (let* ((_%type128324%_ _%hd128289128319%_)
                                       (_%rest128326%_ _%tl128290128321%_))
                                  (_%K128288128316%_
                                   _%rest128326%_
                                   _%type128324%_)))
                              (_%else128286128302%_))))
                      (_%loop128274%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super128276%_))
                       (cons _%super128276%_ _%hierarchy128277%_)))))))))
    (define __shadow-class__0
      (lambda (_%type128454%_)
        (let ((_%properties128456%_ '()))
          (__shadow-class__% _%type128454%_ _%properties128456%_))))
    (define __shadow-class
      (lambda _g135827_
        (let ((_g135828_ (let () (declare (not safe)) (##length _g135827_))))
          (cond ((let () (declare (not safe)) (##fx= _g135828_ 1))
                 (apply __shadow-class__0 _g135827_))
                ((let () (declare (not safe)) (##fx= _g135828_ 2))
                 (apply __shadow-class__% _g135827_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g135827_))))))
    (define __type
      (let* ((_%tb128232%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e128234%_ _%tb128232%_))
        (if (eq? '2 _%$e128234%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e128234%_)
                (let ((_%flonum-self-tagging-tags128237%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits128238%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e128240%_ _%flonum-self-tagging-tags128237%_))
                    (if (eq? '0 _%$e128240%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits128238%_ '2))
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
                        (if (eq? '1 _%$e128240%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits128238%_ '2))
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
                            (if (eq? '2 _%$e128240%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e128240%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e128240%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags128237%_))))))))
                (error '"unexpected tag width" _%tb128232%_)))))
    (define __class
      (let* ((_%len128180%_
              (let () (declare (not safe)) (##vector-length __type)))
             (_%cv128182%_
              (let () (declare (not safe)) (##make-vector _%len128180%_ '#f))))
        (let _%loop128185%_ ((_%i128187%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i128187%_ _%len128180%_))
              (let* ((_%t128189%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i128187%_)))
                     (_%f128229%_
                      (if (eq? _%t128189%_ 'undefined)
                          (lambda (_%obj128192%_)
                            (error '"object type is undefined" _%obj128192%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t128189%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj128195%_)
                                (declare (not interrupts-enabled) (not safe))
                                (__system-class _%t128189%_))
                              (if (eq? _%t128189%_ 'subtyped)
                                  (lambda (_%obj128199%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st128202%_
                                           (##subtype _%obj128199%_)))
                                      (if (##fx= _%st128202%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass128205%_
                                                 (##structure-type
                                                  _%obj128199%_)))
                                            (if (##structure-instance-of?
                                                 _%klass128205%_
                                                 'class)
                                                _%klass128205%_
                                                (__shadow-class__0
                                                 _%klass128205%_)))
                                          (if (##fx= _%st128202%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj128199%_)
                                                         '1)
                                                  (__system-class 'box)
                                                  (__system-class 'values))
                                              (let ((_%$e128208%_
                                                     (##vector-ref
                                                      __subtype-id
                                                      _%st128202%_)))
                                                (if _%$e128208%_
                                                    (__system-class
                                                     _%$e128208%_)
                                                    (error '"unknown class"
                                                           'subtype:
                                                           _%st128202%_
                                                           'object:
                                                           _%obj128199%_)))))))
                                  (if (eq? _%t128189%_ 'special)
                                      (lambda (_%obj128213%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (if (char? _%obj128213%_)
                                            (__system-class 'char)
                                            (if (eq? _%obj128213%_ '())
                                                (__system-class 'null)
                                                (if (eq? _%obj128213%_ '#f)
                                                    (__system-class 'boolean)
                                                    (if (eq? _%obj128213%_ '#t)
                                                        (__system-class
                                                         'boolean)
                                                        (if (eq? _%obj128213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void)
                    (__system-class 'void)
                    (if (eq? _%obj128213%_ '#!eof)
                        (__system-class 'eof)
                        (if (eq? _%obj128213%_ '#!unbound)
                            (__system-class 'unbound)
                            (if (eq? _%obj128213%_ '#!unbound2)
                                (__system-class 'unbound2)
                                (if (eq? _%obj128213%_ '#!optional)
                                    (__system-class 'optional)
                                    (if (eq? _%obj128213%_ '#!rest)
                                        (__system-class 'rest)
                                        (if (eq? _%obj128213%_ '#!key)
                                            (__system-class 'key)
                                            (__system-class
                                             'special)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t128189%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv128182%_ _%i128187%_ _%f128229%_))
                (_%loop128185%_
                 (let () (declare (not safe)) (##fx+ _%i128187%_ '1))))
              _%cv128182%_))))
    (define type-of
      (lambda (_%obj128176%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj128176%_)))))
    (define class-of
      (lambda (_%obj128167%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t128171%_ (##type _%obj128167%_))
                 (_%f128173%_ (##vector-ref __class _%t128171%_)))
            (_%f128173%_ _%obj128167%_)))))
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
      (lambda (_%id128161%_)
        (let ((_%$e128163%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id128161%_ '#f))))
          (if _%$e128163%_
              _%$e128163%_
              (error '"unknown system class" _%id128161%_)))))
    (define __make-system-class
      (lambda (_%id128063%_ _%super128064%_ _%properties128065%_)
        (let ((_%klass128159%_
               (let* ((_%id128067%_ _%id128063%_)
                      (_%name128070%_ _%id128063%_)
                      (_%direct-supers128073%_ _%super128064%_)
                      (_%direct-slots128076%_ '())
                      (_%properties128079%_
                       (cons (cons 'system: '#t)
                             (let ()
                               (declare (not safe))
                               (foldr__0 cons '() _%properties128065%_))))
                      (_%constructor128082%_ '#f))
                 (if (symbol? _%id128067%_)
                     (let ((_%id128087%_ _%id128067%_))
                       (if (symbol? _%name128070%_)
                           (let ((_%name128103%_ _%name128070%_))
                             (if (list? _%direct-supers128073%_)
                                 (let* ((_%direct-supers128113%_
                                         _%direct-supers128073%_)
                                        (_%direct-slots128123%_
                                         _%direct-slots128076%_)
                                        (_%properties128133%_
                                         _%properties128079%_))
                                   (if ((lambda (_%$obj128142%_)
                                          (or (not _%$obj128142%_)
                                              (symbol? _%$obj128142%_)))
                                        _%constructor128082%_)
                                       (let ((_%constructor128149%_
                                              _%constructor128082%_))
                                         (__make-class-type
                                          _%id128087%_
                                          _%name128103%_
                                          _%direct-supers128113%_
                                          _%direct-slots128123%_
                                          _%properties128133%_
                                          _%constructor128149%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          '(? (or not symbol?))
                                          'value:
                                          _%constructor128082%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'list?
                                    'value:
                                    _%direct-supers128073%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'symbol?
                              'value:
                              _%name128070%_)
                             '#!void)))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id128067%_)
                       '#!void)))))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id128063%_
             _%klass128159%_))
          _%klass128159%_)))))
