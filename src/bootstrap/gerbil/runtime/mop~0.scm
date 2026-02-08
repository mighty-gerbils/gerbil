(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1770513293)
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
      (let ((_%flags132756%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties132757%_ '((direct-slots:) (system: . #t)))
            (_%slot-table132758%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags132756%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table132758%_
           _%properties132757%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots132713%_
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
             (_%slot-vector132715%_ (list->vector (cons '#f _%slots132713%_)))
             (_%slot-table132741%_
              (let ((_%slot-table132717%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp135783
                       (lambda (_%slot132719%_ _%field132720%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table132717%_
                            _%slot132719%_
                            _%field132720%_))
                         (let ((__tmp135784
                                (let ((_%sym132722%_ _%slot132719%_))
                                  (if (symbol? _%sym132722%_)
                                      (let ((_%sym132727%_ _%sym132722%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym132727%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym132722%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table132717%_
                            __tmp135784
                            _%field132720%_))))
                      (__tmp135781
                       (let ((__tmp135782
                              (let ()
                                (declare (not safe))
                                (##length _%slots132713%_))))
                         (declare (not safe))
                         (##iota __tmp135782 '1))))
                  (declare (not safe))
                  (##for-each __tmp135783 _%slots132713%_ __tmp135781))
                _%slot-table132717%_))
             (_%flags132743%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields132749%_
              (list->vector
               (let ((__tmp135785
                      (map (lambda (_%g132744132746%_)
                             (list _%g132744132746%_ '5 '#f))
                           (drop _%slots132713%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp135785))))
             (_%properties132751%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots132713%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t132753%_
              (let ((__tmp135786 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags132743%_
                 ##type-type
                 _%fields132749%_
                 __tmp135786
                 _%slot-vector132715%_
                 _%slot-table132741%_
                 _%properties132751%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t132753%_ _%t132753%_))
        _%t132753%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags132709%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties132710%_ '((direct-slots:) (system: . #t)))
            (_%slot-table132711%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp135787 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags132709%_
           '#f
           '#()
           __tmp135787
           '#(#f)
           _%slot-table132711%_
           _%properties132710%_
           '#f
           '#f
           '#f
           '#f))))
    (define __class-type
      (lambda (_%klass132697%_)
        (let ((_%klass132700%_ _%klass132697%_))
          (declare (not safe))
          (##structure-type _%klass132700%_))))
    (define class-type
      (lambda (_%klass118701%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass118701%_ 'class))
            (let ((_%klass118705%_ _%klass118701%_))
              (__class-type _%klass118705%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass118701%_)
              '#!void))))
    (define class-type?
      (lambda (_%obj132695%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj132695%_ 'class))))
    (define __class-type=?
      (lambda (_%x132674%_ _%y132675%_)
        (let* ((_%x132678%_ _%x132674%_) (_%y132686%_ _%y132675%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x132678%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y132686%_ '1 '#f '#f))))))
    (define class-type=?
      (lambda (_%x118835%_ _%y118836%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x118835%_ 'class))
            (let ((_%x118840%_ _%x118835%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y118836%_ 'class))
                  (let ((_%y118850%_ _%y118836%_))
                    (__class-type=? _%x118840%_ _%y118850%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y118836%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x118835%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type132662%_)
        (let* ((_%type132665%_ _%type132662%_)
               (__tmp135788
                (let ((__tmp135789
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type132665%_))))
                  (declare (not safe))
                  (##fxand __tmp135789 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp135788 type-flag-opaque))))
    (define type-opaque?
      (lambda (_%type119282%_)
        (if (let () (declare (not safe)) (##type? _%type119282%_))
            (let ((_%type119286%_ _%type119282%_))
              (__type-opaque? _%type119286%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type119282%_)
              '#!void))))
    (define __class-type-opaque?
      (lambda (_%klass132650%_)
        (let* ((_%klass132653%_ _%klass132650%_)
               (__tmp135790
                (let ((__tmp135791
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass132653%_))))
                  (declare (not safe))
                  (##fxand __tmp135791 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp135790 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass119416%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass119416%_ 'class))
            (let ((_%klass119420%_ _%klass119416%_))
              (__class-type-opaque? _%klass119420%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass119416%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type132638%_)
        (let* ((_%type132641%_ _%type132638%_)
               (__tmp135792
                (let ((__tmp135793
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type132641%_))))
                  (declare (not safe))
                  (##fxand __tmp135793 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp135792 type-flag-extensible))))
    (define type-extensible?
      (lambda (_%type119550%_)
        (if (let () (declare (not safe)) (##type? _%type119550%_))
            (let ((_%type119554%_ _%type119550%_))
              (__type-extensible? _%type119554%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type119550%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type132626%_)
        (let* ((_%type132629%_ _%type132626%_)
               (__tmp135794
                (let ((__tmp135795
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type132629%_))))
                  (declare (not safe))
                  (##fxand __tmp135795 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp135794 '0))))
    (define class-type-final?
      (lambda (_%type119684%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type119684%_ 'class))
            (let ((_%type119688%_ _%type119684%_))
              (__class-type-final? _%type119688%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type119684%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass132614%_)
        (let* ((_%klass132617%_ _%klass132614%_)
               (__tmp135796
                (let ((__tmp135797
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass132617%_))))
                  (declare (not safe))
                  (##fxand __tmp135797 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp135796 class-type-flag-struct))))
    (define class-type-struct?
      (lambda (_%klass119818%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass119818%_ 'class))
            (let ((_%klass119822%_ _%klass119818%_))
              (__class-type-struct? _%klass119822%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass119818%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass132602%_)
        (let* ((_%klass132605%_ _%klass132602%_)
               (__tmp135798
                (let ((__tmp135799
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass132605%_))))
                  (declare (not safe))
                  (##fxand __tmp135799 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp135798 class-type-flag-sealed))))
    (define class-type-sealed?
      (lambda (_%klass119952%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass119952%_ 'class))
            (let ((_%klass119956%_ _%klass119952%_))
              (__class-type-sealed? _%klass119956%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass119952%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass132590%_)
        (let* ((_%klass132593%_ _%klass132590%_)
               (__tmp135800
                (let ((__tmp135801
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass132593%_))))
                  (declare (not safe))
                  (##fxand __tmp135801 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp135800 class-type-flag-metaclass))))
    (define class-type-metaclass?
      (lambda (_%klass120086%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass120086%_ 'class))
            (let ((_%klass120090%_ _%klass120086%_))
              (__class-type-metaclass? _%klass120090%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass120086%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass132578%_)
        (let* ((_%klass132581%_ _%klass132578%_)
               (__tmp135802
                (let ((__tmp135803
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass132581%_))))
                  (declare (not safe))
                  (##fxand __tmp135803 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp135802 class-type-flag-system))))
    (define class-type-system?
      (lambda (_%klass120220%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass120220%_ 'class))
            (let ((_%klass120224%_ _%klass120220%_))
              (__class-type-system? _%klass120224%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass120220%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass132566%_)
        (let* ((_%klass132569%_ _%klass132566%_)
               (__tmp135804
                (let ((__tmp135805
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass132569%_))))
                  (declare (not safe))
                  (##fxand __tmp135805 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp135804 class-type-flag-acyclic))))
    (define class-type-acyclic?
      (lambda (_%klass120354%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass120354%_ 'class))
            (let ((_%klass120358%_ _%klass120354%_))
              (__class-type-acyclic? _%klass120358%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass120354%_)
              '#!void))))
    (define make-class-type-descriptor
      (lambda (_%type-id132373%_
               _%type-name132374%_
               _%type-super132375%_
               _%precedence-list132376%_
               _%slot-vector132377%_
               _%properties132378%_
               _%constructor132379%_
               _%slot-table132380%_
               _%methods132381%_)
        (letrec ((_%make-props!132384%_
                  (lambda (_%key132516%_)
                    (letrec* ((_%ht132518%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!132519%_
                               (lambda (_%ht132559%_ _%slots132560%_)
                                 (for-each
                                  (lambda (_%g132561132563%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht132559%_
                                       _%g132561132563%_
                                       '#t)))
                                  _%slots132560%_)))
                              (_%put-alist!132520%_
                               (lambda (_%ht132548%_
                                        _%key132549%_
                                        _%alist132550%_)
                                 (let ((_%$e132552%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key132549%_
                                           _%alist132550%_))))
                                   (if _%$e132552%_
                                       ((lambda (_%g132554132556%_)
                                          (_%put-slots!132519%_
                                           _%ht132548%_
                                           _%g132554132556%_))
                                        _%$e132552%_)
                                       '#!void)))))
                      (_%put-alist!132520%_
                       _%ht132518%_
                       _%key132516%_
                       _%properties132378%_)
                      (for-each
                       (lambda (_%mixin132522%_)
                         (let ((_%alist132524%_
                                (##structure-ref
                                 _%mixin132522%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist132524%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key132516%_
                                           _%alist132524%_))))
                               (_%put-slots!132519%_
                                _%ht132518%_
                                (let ((_%klass132529%_ _%mixin132522%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass132529%_
                                         'class))
                                      (let ((_%klass132534%_ _%klass132529%_))
                                        (__class-type-slot-list
                                         _%klass132534%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass132529%_)
                                        '#!void))))
                               (_%put-alist!132520%_
                                _%ht132518%_
                                _%key132516%_
                                _%alist132524%_))))
                       _%precedence-list132376%_)
                      _%ht132518%_))))
          (let* ((_%transparent?132386%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties132378%_)))
                 (_%all-slots-printable?132391%_
                  (let ((_%$e132388%_ _%transparent?132386%_))
                    (if _%$e132388%_
                        _%$e132388%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties132378%_))))))
                 (_%printable132393%_
                  (if (not _%all-slots-printable?132391%_)
                      (_%make-props!132384%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?132398%_
                  (let ((_%$e132395%_ _%transparent?132386%_))
                    (if _%$e132395%_
                        _%$e132395%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties132378%_))))))
                 (_%equalable132400%_
                  (if (not _%all-slots-equalable?132398%_)
                      (_%make-props!132384%_ 'equal:)
                      '#f))
                 (_%first-new-field132402%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super132375%_ 'class))
                      (let ((__tmp135806
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super132375%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp135806))
                      '1))
                 (_%field-info-length132404%_
                  (let ((__tmp135807
                         (let ((__tmp135808
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector132377%_))))
                           (declare (not safe))
                           (##fx- __tmp135808 _%first-new-field132402%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp135807)))
                 (_%field-info132406%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length132404%_ '#f)))
                 (_%struct?132408%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties132378%_)))
                 (_%final?132410%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties132378%_)))
                 (_%metaclass132417%_
                  (let ((_%metaclass132411132413%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties132378%_))))
                    (if _%metaclass132411132413%_
                        (let ((_%metaclass132415%_ _%metaclass132411132413%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass132415%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id132373%_
                                     'metaclass:
                                     _%metaclass132415%_))
                          _%metaclass132415%_)
                        '#f)))
                 (_%system?132419%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties132378%_)))
                 (_%opaque?132458%_
                  (if (or _%transparent?132386%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties132378%_)))
                      '#f
                      (let ((_%$e132424%_ (not _%type-super132375%_)))
                        (if _%$e132424%_
                            _%$e132424%_
                            (let ((_%type132427%_ _%type-super132375%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##type? _%type132427%_))
                                  (let ((_%type132432%_ _%type132427%_))
                                    (__type-opaque? _%type132432%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     '##type?
                                     'value:
                                     _%type132427%_)
                                    '#!void)))))))
                 (_%acyclic?132460%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties132378%_)))
                 (_%type-flags132462%_
                  (let ((__tmp135814
                         (if _%final?132410%_ '0 type-flag-extensible))
                        (__tmp135813
                         (if _%opaque?132458%_ type-flag-opaque '0))
                        (__tmp135812
                         (if _%struct?132408%_ class-type-flag-struct '0))
                        (__tmp135811
                         (if _%metaclass132417%_ class-type-flag-metaclass '0))
                        (__tmp135810
                         (if _%system?132419%_ class-type-flag-system '0))
                        (__tmp135809
                         (if _%acyclic?132460%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp135814
                             __tmp135813
                             __tmp135812
                             __tmp135811
                             __tmp135810
                             __tmp135809)))
                 (_%precedence-list132470%_
                  (let ((_%$e132464%_ (memq t::t _%precedence-list132376%_)))
                    (if _%$e132464%_
                        ((lambda (_%tail132467%_)
                           (if (null? (cdr _%tail132467%_))
                               _%precedence-list132376%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list132376%_)))
                         _%$e132464%_)
                        (let ((__tmp135815 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list132376%_ __tmp135815))))))
            (let _%loop132473%_ ((_%i132475%_ _%first-new-field132402%_)
                                 (_%j132476%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j132476%_ _%field-info-length132404%_))
                  (let* ((_%slot132478%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector132377%_ _%i132475%_)))
                         (_%flags132486%_
                          (if _%transparent?132386%_
                              '0
                              (let ((__tmp135817
                                     (if (or _%all-slots-printable?132391%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable132393%_
                                                _%slot132478%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp135816
                                     (if (or _%all-slots-equalable?132398%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable132400%_
                                                _%slot132478%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp135817 __tmp135816)))))
                    (vector-set!
                     _%field-info132406%_
                     _%j132476%_
                     _%slot132478%_)
                    (vector-set!
                     _%field-info132406%_
                     (let () (declare (not safe)) (##fx+ _%j132476%_ '1))
                     _%flags132486%_)
                    (_%loop132473%_
                     (let () (declare (not safe)) (##fx+ _%i132475%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j132476%_ '3))))
                  '#!void))
            (if _%metaclass132417%_
                (let ((_%val132513%_
                       (let* ((_%klass132489%_ _%metaclass132417%_)
                              (_%args132492%_
                               (list _%type-id132373%_
                                     _%type-name132374%_
                                     _%type-flags132462%_
                                     _%type-super132375%_
                                     _%field-info132406%_
                                     _%precedence-list132470%_
                                     _%slot-vector132377%_
                                     _%slot-table132380%_
                                     _%properties132378%_
                                     _%constructor132379%_
                                     _%methods132381%_)))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%klass132489%_
                                'class))
                             (let ((_%klass132497%_ _%klass132489%_))
                               (declare (not safe))
                               (##apply __make-instance
                                        _%klass132497%_
                                        _%args132492%_))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%klass132489%_)
                               '#!void)))))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val132513%_ 'class))
                      _%val132513%_
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         '"\"gerbil/runtime/mop.ss\"@283.10-287.95"
                         'contract:
                         '(class-type? val)
                         'value:
                         _%val132513%_)
                        '#!void)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id132373%_
                   _%type-name132374%_
                   _%type-flags132462%_
                   _%type-super132375%_
                   _%field-info132406%_
                   _%precedence-list132470%_
                   _%slot-vector132377%_
                   _%slot-table132380%_
                   _%properties132378%_
                   _%constructor132379%_
                   _%methods132381%_
                   '#f
                   '#f)))))))
    (define class-type-id
      (lambda (_%klass132371%_)
        (##structure-ref _%klass132371%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass132369%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass132369%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass132366%_ _%val132367%_)
        (##structure-set! _%klass132366%_ _%val132367%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass132361%_ _%val132363%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132361%_
           _%val132363%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass132359%_)
        (##structure-ref _%klass132359%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass132357%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass132357%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass132354%_ _%val132355%_)
        (##structure-set! _%klass132354%_ _%val132355%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass132349%_ _%val132351%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132349%_
           _%val132351%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass132347%_)
        (##structure-ref _%klass132347%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass132345%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass132345%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass132342%_ _%val132343%_)
        (##structure-set! _%klass132342%_ _%val132343%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass132337%_ _%val132339%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132337%_
           _%val132339%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass132335%_)
        (##structure-ref _%klass132335%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass132333%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass132333%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass132330%_ _%val132331%_)
        (##structure-set! _%klass132330%_ _%val132331%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass132325%_ _%val132327%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132325%_
           _%val132327%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass132323%_)
        (##structure-ref _%klass132323%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass132321%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass132321%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass132318%_ _%val132319%_)
        (##structure-set! _%klass132318%_ _%val132319%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass132313%_ _%val132315%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132313%_
           _%val132315%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass132311%_)
        (##structure-ref _%klass132311%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass132309%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass132309%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass132306%_ _%val132307%_)
        (##structure-set!
         _%klass132306%_
         _%val132307%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass132301%_ _%val132303%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132301%_
           _%val132303%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass132299%_)
        (##structure-ref _%klass132299%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass132297%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass132297%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass132294%_ _%val132295%_)
        (##structure-set!
         _%klass132294%_
         _%val132295%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass132289%_ _%val132291%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132289%_
           _%val132291%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass132287%_)
        (##structure-ref _%klass132287%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass132285%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass132285%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass132282%_ _%val132283%_)
        (##structure-set!
         _%klass132282%_
         _%val132283%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass132277%_ _%val132279%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132277%_
           _%val132279%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass132275%_)
        (##structure-ref _%klass132275%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass132273%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass132273%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass132270%_ _%val132271%_)
        (##structure-set!
         _%klass132270%_
         _%val132271%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass132265%_ _%val132267%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132265%_
           _%val132267%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass132263%_)
        (##structure-ref _%klass132263%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass132261%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass132261%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass132258%_ _%val132259%_)
        (##structure-set!
         _%klass132258%_
         _%val132259%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass132253%_ _%val132255%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132253%_
           _%val132255%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass132251%_)
        (##structure-ref _%klass132251%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass132249%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass132249%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass132246%_ _%val132247%_)
        (##structure-set!
         _%klass132246%_
         _%val132247%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass132241%_ _%val132243%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132241%_
           _%val132243%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass132239%_)
        (##structure-ref _%klass132239%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass132237%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass132237%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass132234%_ _%val132235%_)
        (##structure-set!
         _%klass132234%_
         _%val132235%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass132229%_ _%val132231%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132229%_
           _%val132231%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass132227%_)
        (##structure-ref _%klass132227%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass132225%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass132225%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass132222%_ _%val132223%_)
        (##structure-set!
         _%klass132222%_
         _%val132223%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass132217%_ _%val132219%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass132217%_
           _%val132219%_
           '13
           class::t
           'interface))))
    (define __class-type-slot-list
      (lambda (_%klass132205%_)
        (let ((_%klass132208%_ _%klass132205%_))
          (vector->list
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass132208%_ '7 '#f '#f))
           '1))))
    (define class-type-slot-list
      (lambda (_%klass120878%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass120878%_ 'class))
            (let ((_%klass120882%_ _%klass120878%_))
              (__class-type-slot-list _%klass120882%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@345.29-345.34"
               'contract:
               'class-type?
               'value:
               _%klass120878%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass132193%_)
        (let* ((_%klass132196%_ _%klass132193%_)
               (__tmp135818
                (let ((__tmp135819
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass132196%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp135819))))
          (declare (not safe))
          (##fx- __tmp135818 '1))))
    (define class-type-field-count
      (lambda (_%klass121012%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121012%_ 'class))
            (let ((_%klass121016%_ _%klass121012%_))
              (__class-type-field-count _%klass121016%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@347.31-347.36"
               'contract:
               'class-type?
               'value:
               _%klass121012%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass132181%_)
        (let ((_%klass132184%_ _%klass132181%_))
          (let ((__tmp135820
                 (let ((__tmp135821
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass132184%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp135821))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass132184%_
             __tmp135820
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define class-type-seal!
      (lambda (_%klass121146%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121146%_ 'class))
            (let ((_%klass121150%_ _%klass121146%_))
              (__class-type-seal! _%klass121150%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@350.25-350.30"
               'contract:
               'class-type?
               'value:
               _%klass121146%_)
              '#!void))))
    (define __class-type-printable-slots
      (lambda (_%klass132114%_)
        (let ((_%klass132117%_ _%klass132114%_))
          (letrec ((_%get-field-vector132126%_
                    (lambda (_%type132165%_)
                      (let _%loop132167%_ ((_%type132169%_ _%type132165%_))
                        (let* ((_%fields132171%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type132169%_)))
                               (_%$e132173%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type132169%_))))
                          (if _%$e132173%_
                              ((lambda (_%super132176%_)
                                 (let ((_%super-fields132178%_
                                        (_%loop132167%_ _%super132176%_)))
                                   (vector-append
                                    _%super-fields132178%_
                                    _%fields132171%_)))
                               _%$e132173%_)
                              _%fields132171%_)))))
                   (_%get-printable-slot-alist132127%_
                    (lambda (_%type132148%_)
                      (let* ((_%fields132150%_
                              (_%get-field-vector132126%_ _%type132148%_))
                             (_%count132152%_
                              (vector-length _%fields132150%_)))
                        (let _%loop132155%_ ((_%i132157%_ '3)
                                             (_%offset132158%_ '1)
                                             (_%r132159%_ '()))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i132157%_ _%count132152%_))
                              (let ((_%slot-name132161%_
                                     (vector-ref _%fields132150%_ _%i132157%_))
                                    (_%slot-flags132162%_
                                     (vector-ref
                                      _%fields132150%_
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%i132157%_ '1))))
                                    (_%next-i132163%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i132157%_ '2))))
                                (if (let ((__tmp135822
                                           (let ()
                                             (declare (not safe))
                                             (##fxand _%slot-flags132162%_
                                                      '1))))
                                      (declare (not safe))
                                      (##fx= __tmp135822 '0))
                                    (_%loop132155%_
                                     _%next-i132163%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset132158%_ '1))
                                     _%r132159%_)
                                    (_%loop132155%_
                                     _%next-i132163%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset132158%_ '1))
                                     (cons (cons _%slot-name132161%_
                                                 _%offset132158%_)
                                           _%r132159%_))))
                              (reverse! _%r132159%_))))))
                   (_%get-printable-slots!132128%_
                    (lambda (_%klass132143%_ _%type132144%_)
                      (let ((_%printable132146%_
                             (_%get-printable-slot-alist132127%_
                              _%type132144%_)))
                        (##structure-set!
                         _%klass132143%_
                         (cons (cons 'printable-slots: _%printable132146%_)
                               (##structure-ref
                                _%klass132143%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%printable132146%_))))
            (let* ((_%props132130%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass132117%_ '9 '#f '#f)))
                   (_%$e132132%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'printable-slots: _%props132130%_))))
              (if _%$e132132%_
                  _%$e132132%_
                  (let ((_%$e132135%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props132130%_))))
                    (if _%$e132135%_
                        ((lambda (_%g132137132139%_)
                           (_%get-printable-slots!132128%_
                            _%klass132117%_
                            _%g132137132139%_))
                         _%$e132135%_)
                        (_%get-printable-slots!132128%_
                         _%klass132117%_
                         _%klass132117%_)))))))))
    (define class-type-printable-slots
      (lambda (_%klass121280%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121280%_ 'class))
            (let ((_%klass121284%_ _%klass121280%_))
              (__class-type-printable-slots _%klass121284%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@357.35-357.40"
               'contract:
               'class-type?
               'value:
               _%klass121280%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct132083%_ _%maybe-super-struct132084%_)
        (let* ((_%maybe-sub-struct132087%_ _%maybe-sub-struct132083%_)
               (_%maybe-super-struct132095%_ _%maybe-super-struct132084%_)
               (_%maybe-super-struct-id132104%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct132095%_))))
          (let _%lp132106%_ ((_%super-struct132108%_
                              _%maybe-sub-struct132087%_))
            (if (not _%super-struct132108%_)
                '#f
                (if (eq? _%maybe-super-struct-id132104%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct132108%_)))
                    '#t
                    (_%lp132106%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct132108%_)))))))))
    (define substruct?
      (lambda (_%maybe-sub-struct121414%_ _%maybe-super-struct121415%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct121414%_ 'class))
            (let ((_%maybe-sub-struct121419%_ _%maybe-sub-struct121414%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct121415%_
                     'class))
                  (let ((_%maybe-super-struct121429%_
                         _%maybe-super-struct121415%_))
                    (__substruct?
                     _%maybe-sub-struct121419%_
                     _%maybe-super-struct121429%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@403.47-403.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct121415%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@403.19-403.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct121414%_)
              '#!void))))
    (define base-struct/1
      (lambda (_%klass132061%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass132061%_ 'class))
            (if (let* ((_%klass132064%_ _%klass132061%_)
                       (_%klass132069%_ _%klass132064%_))
                  (__class-type-struct? _%klass132069%_))
                _%klass132061%_
                (let () (declare (not safe)) (##type-super _%klass132061%_)))
            (if (not _%klass132061%_)
                '#f
                (error '"not a class or false" _%klass132061%_)))))
    (define base-struct/2
      (lambda (_%klass1131984%_ _%klass2131985%_)
        (let ((_%s1131987%_ (base-struct/1 _%klass1131984%_))
              (_%s2131988%_ (base-struct/1 _%klass2131985%_)))
          (if (or (not _%s1131987%_)
                  (and _%s2131988%_
                       (let* ((_%maybe-sub-struct131993%_ _%s1131987%_)
                              (_%maybe-super-struct131996%_ _%s2131988%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%maybe-sub-struct131993%_
                                'class))
                             (let ((_%maybe-sub-struct132001%_
                                    _%maybe-sub-struct131993%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%maybe-super-struct131996%_
                                      'class))
                                   (let ((_%maybe-super-struct132015%_
                                          _%maybe-super-struct131996%_))
                                     (__substruct?
                                      _%maybe-sub-struct132001%_
                                      _%maybe-super-struct132015%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%maybe-super-struct131996%_)
                                     '#!void)))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%maybe-sub-struct131993%_)
                               '#!void)))))
              _%s2131988%_
              (if (or (not _%s2131988%_)
                      (and _%s1131987%_
                           (let* ((_%maybe-sub-struct132029%_ _%s2131988%_)
                                  (_%maybe-super-struct132032%_ _%s1131987%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%maybe-sub-struct132029%_
                                    'class))
                                 (let ((_%maybe-sub-struct132037%_
                                        _%maybe-sub-struct132029%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%maybe-super-struct132032%_
                                          'class))
                                       (let ((_%maybe-super-struct132049%_
                                              _%maybe-super-struct132032%_))
                                         (__substruct?
                                          _%maybe-sub-struct132037%_
                                          _%maybe-super-struct132049%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          'class-type?
                                          'value:
                                          _%maybe-super-struct132032%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'class-type?
                                    'value:
                                    _%maybe-sub-struct132029%_)
                                   '#!void)))))
                  _%s1131987%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1131984%_
                         _%klass2131985%_
                         _%s1131987%_
                         _%s2131988%_))))))
    (define base-struct/list
      (lambda (_%all-supers131869%_)
        (let* ((_%all-supers131870131895%_ _%all-supers131869%_)
               (_%E131875131899%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers131870131895%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K131893131981%_ (lambda () '#f))
                (_%K131890131967%_
                 (lambda (_%x131965%_) (base-struct/1 _%x131965%_)))
                (_%K131885131944%_
                 (lambda (_%y131941%_ _%x131942%_)
                   (base-struct/2 _%x131942%_ _%y131941%_)))
                (_%K131876131906%_
                 (lambda (_%y131903%_ _%x131904%_)
                   (let ()
                     (declare (not safe))
                     (foldr__0 base-struct/2 _%x131904%_ _%y131903%_)))))
            (let* ((_%__match134595134596%_
                    (lambda (_%hd131877131909%_ _%tl131878131911%_)
                      (let ((_%x131914%_ _%hd131877131909%_))
                        (letrec ((_%splice-rest131880131916%_
                                  (lambda (_%rest131884131923%_ _%y131925%_)
                                    (if (null? _%rest131884131923%_)
                                        (_%K131876131906%_
                                         _%y131925%_
                                         _%x131914%_)
                                        (_%E131875131899%_))))
                                 (_%splice-try131882131918%_
                                  (lambda (_%hd131883131927%_
                                           _%rest131884131929%_
                                           _%y131879131930%_)
                                    (let ((_%y131932%_ _%hd131883131927%_))
                                      (_%splice-loop131881131920%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest131884131929%_))
                                       (cons _%y131932%_ _%y131879131930%_)))))
                                 (_%splice-loop131881131920%_
                                  (lambda (_%rest131884131934%_
                                           _%y131879131935%_)
                                    (if (pair? _%rest131884131934%_)
                                        (_%splice-try131882131918%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest131884131934%_))
                                         _%rest131884131934%_
                                         _%y131879131935%_)
                                        (_%splice-rest131880131916%_
                                         _%rest131884131934%_
                                         (reverse _%y131879131935%_))))))
                          (_%splice-loop131881131920%_
                           _%tl131878131911%_
                           '())))))
                   (_%try-match131872131977%_
                    (lambda ()
                      (if (pair? _%all-supers131870131895%_)
                          (let ((_%tl131892131972%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers131870131895%_)))
                                (_%hd131891131970%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers131870131895%_))))
                            (if (null? _%tl131892131972%_)
                                (let ((_%x131975%_ _%hd131891131970%_))
                                  (base-struct/1 _%x131975%_))
                                (if (pair? _%tl131892131972%_)
                                    (let ((_%tl131889131956%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl131892131972%_)))
                                          (_%hd131888131954%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl131892131972%_))))
                                      (if (null? _%tl131889131956%_)
                                          (let ((_%x131952%_
                                                 _%hd131891131970%_)
                                                (_%y131959%_
                                                 _%hd131888131954%_))
                                            (_%K131885131944%_
                                             _%y131959%_
                                             _%x131952%_))
                                          (_%__match134595134596%_
                                           _%hd131891131970%_
                                           _%tl131892131972%_)))
                                    (_%__match134595134596%_
                                     _%hd131891131970%_
                                     _%tl131892131972%_))))
                          (_%E131875131899%_)))))
              (if (null? _%all-supers131870131895%_)
                  (_%K131893131981%_)
                  (_%try-match131872131977%_)))))))
    (define base-struct
      (lambda _%all-supers131867%_ (base-struct/list _%all-supers131867%_)))
    (define find-super-constructor
      (lambda (_%super131818%_)
        (let _%lp131820%_ ((_%rest131822%_ _%super131818%_)
                           (_%constructor131823%_ '#f))
          (let* ((_%rest131824131832%_ _%rest131822%_)
                 (_%else131826131840%_ (lambda () _%constructor131823%_))
                 (_%K131828131855%_
                  (lambda (_%rest131843%_ _%hd131844%_)
                    (let ((_%$e131846%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd131844%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e131846%_
                          ((lambda (_%xconstructor131849%_)
                             (if (or (not _%constructor131823%_)
                                     (eq? _%constructor131823%_
                                          _%xconstructor131849%_))
                                 (_%lp131820%_
                                  _%rest131843%_
                                  _%xconstructor131849%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor131823%_
                                        _%xconstructor131849%_)))
                           _%$e131846%_)
                          (_%lp131820%_
                           _%rest131843%_
                           _%constructor131823%_))))))
            (if (pair? _%rest131824131832%_)
                (let ((_%hd131829131858%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest131824131832%_)))
                      (_%tl131830131860%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest131824131832%_))))
                  (let* ((_%hd131863%_ _%hd131829131858%_)
                         (_%rest131865%_ _%tl131830131860%_))
                    (_%K131828131855%_ _%rest131865%_ _%hd131863%_)))
                (_%else131826131840%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list131774%_ _%direct-slots131775%_)
        (let* ((_%next-slot131777%_ '1)
               (_%slot-table131779%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots131781%_ '(__class))
               (_%process-slot131805%_
                (lambda (_%slot131783%_)
                  (if (symbol? _%slot131783%_)
                      '#!void
                      (error '"invalid slot name" _%slot131783%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table131779%_
                              _%slot131783%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table131779%_
                           _%slot131783%_
                           _%next-slot131777%_))
                        (let ((__tmp135823
                               (let ((_%sym131785%_ _%slot131783%_))
                                 (if (symbol? _%sym131785%_)
                                     (let ((_%sym131790%_ _%sym131785%_))
                                       (declare (not safe))
                                       (__symbol->keyword _%sym131790%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/mop
                                        'contract:
                                        'symbol?
                                        'value:
                                        _%sym131785%_)
                                       '#!void)))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table131779%_
                           __tmp135823
                           _%next-slot131777%_))
                        (set! _%r-slots131781%_
                              (cons _%slot131783%_ _%r-slots131781%_))
                        (set! _%next-slot131777%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot131777%_ '1))))
                      '#!void)))
               (_%process-slots131811%_
                (lambda (_%g131806131808%_)
                  (for-each _%process-slot131805%_ _%g131806131808%_))))
          (let ((__tmp135825
                 (lambda (_%mixin131814%_)
                   (_%process-slots131811%_
                    (let ((__tmp135826
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin131814%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp135826 '())))))
                (__tmp135824 (reverse _%class-precedence-list131774%_)))
            (declare (not safe))
            (##for-each __tmp135825 __tmp135824))
          (_%process-slots131811%_ _%direct-slots131775%_)
          (let ((_%slot-vector131816%_
                 (list->vector
                  (let ()
                    (declare (not safe))
                    (##reverse _%r-slots131781%_)))))
            (values _%slot-vector131816%_ _%slot-table131779%_)))))
    (define __make-class-type
      (lambda (_%id131601%_
               _%name131602%_
               _%direct-supers131603%_
               _%direct-slots131604%_
               _%properties131605%_
               _%constructor131606%_)
        (let* ((_%id131609%_ _%id131601%_)
               (_%name131617%_ _%name131602%_)
               (_%direct-supers131625%_ _%direct-supers131603%_)
               (_%direct-slots131633%_ _%direct-slots131604%_)
               (_%properties131641%_ _%properties131605%_)
               (_%constructor131649%_ _%constructor131606%_))
          (let ((_%$e131683%_
                 (let* ((_%pred131661%_
                         (lambda (_%$obj131658%_)
                           (not (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%$obj131658%_
                                   'class)))))
                        (_%lst131664%_ _%direct-supers131625%_)
                        (_%pred131669%_ _%pred131661%_))
                   (declare (not safe))
                   (__find _%pred131669%_ _%lst131664%_))))
            (if _%$e131683%_
                ((lambda (_%g131685131687%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g131685131687%_))
                 _%$e131683%_)
                (let ((_%$e131710%_
                       (let* ((_%pred131690%_ __class-type-final?)
                              (_%lst131693%_ _%direct-supers131625%_)
                              (_%pred131698%_ _%pred131690%_))
                         (declare (not safe))
                         (__find _%pred131698%_ _%lst131693%_))))
                  (if _%$e131710%_
                      ((lambda (_%g131712131714%_)
                         (error '"Cannot extend final class"
                                _%g131712131714%_))
                       _%$e131710%_)
                      '#!void))))
          (let ((_g135827_ (compute-precedence-list _%direct-supers131625%_)))
            (begin
              (let ((_g135828_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g135827_)
                           (##values-length _g135827_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g135828_ 2)))
                    (error "Context expects 2 values" _g135828_)))
              (let ((_%precedence-list131717%_
                     (let () (declare (not safe)) (##values-ref _g135827_ 0)))
                    (_%struct-super131718%_
                     (let () (declare (not safe)) (##values-ref _g135827_ 1))))
                (let ((_g135829_
                       (compute-class-slots
                        _%precedence-list131717%_
                        _%direct-slots131633%_)))
                  (begin
                    (let ((_g135830_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g135829_)
                                 (##values-length _g135829_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g135830_ 2)))
                          (error "Context expects 2 values" _g135830_)))
                    (let ((_%slot-vector131720%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g135829_ 0)))
                          (_%slot-table131721%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g135829_ 1))))
                      (let* ((_%properties131723%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots131633%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers131625%_)
                                          _%properties131641%_)))
                             (_%constructor*131728%_
                              (let ((_%$e131725%_ _%constructor131649%_))
                                (if _%$e131725%_
                                    _%$e131725%_
                                    (find-super-constructor
                                     _%direct-supers131625%_))))
                             (_%precedence-list131771%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties131723%_))
                                      (memq object::t
                                            _%precedence-list131717%_))
                                  _%precedence-list131717%_
                                  (let _%loop131733%_ ((_%tail131735%_
                                                        _%precedence-list131717%_)
                                                       (_%head131736%_ '()))
                                    (let* ((_%tail131737131745%_
                                            _%tail131735%_)
                                           (_%else131739131753%_
                                            (lambda ()
                                              (let ((__tmp135831
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp135831
                                                 _%head131736%_))))
                                           (_%K131741131759%_
                                            (lambda (_%rest131756%_
                                                     _%hd131757%_)
                                              (if (eq? _%hd131757%_ t::t)
                                                  (let ((__tmp135832
                                                         (cons object::t
                                                               _%tail131735%_)))
                                                    (declare (not safe))
                                                    (foldl__0
                                                     cons
                                                     __tmp135832
                                                     _%head131736%_))
                                                  (_%loop131733%_
                                                   _%rest131756%_
                                                   (cons _%hd131757%_
                                                         _%head131736%_))))))
                                      (if (pair? _%tail131737131745%_)
                                          (let ((_%hd131742131762%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail131737131745%_)))
                                                (_%tl131743131764%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail131737131745%_))))
                                            (let* ((_%hd131767%_
                                                    _%hd131742131762%_)
                                                   (_%rest131769%_
                                                    _%tl131743131764%_))
                                              (_%K131741131759%_
                                               _%rest131769%_
                                               _%hd131767%_)))
                                          (_%else131739131753%_)))))))
                        (make-class-type-descriptor
                         _%id131609%_
                         _%name131617%_
                         _%struct-super131718%_
                         _%precedence-list131771%_
                         _%slot-vector131720%_
                         _%properties131723%_
                         _%constructor*131728%_
                         _%slot-table131721%_
                         '#f)))))))))))
    (define make-class-type
      (lambda (_%id121559%_
               _%name121560%_
               _%direct-supers121561%_
               _%direct-slots121562%_
               _%properties121563%_
               _%constructor121564%_)
        (if (symbol? _%id121559%_)
            (let ((_%id121568%_ _%id121559%_))
              (if (symbol? _%name121560%_)
                  (let ((_%name121578%_ _%name121560%_))
                    (if (list? _%direct-supers121561%_)
                        (let ((_%direct-supers121588%_
                               _%direct-supers121561%_))
                          (if (list? _%direct-slots121562%_)
                              (let ((_%direct-slots121598%_
                                     _%direct-slots121562%_))
                                (if (list? _%properties121563%_)
                                    (let ((_%properties121608%_
                                           _%properties121563%_))
                                      (if ((lambda (_%$obj121617%_)
                                             (or (not _%$obj121617%_)
                                                 (symbol? _%$obj121617%_)))
                                           _%constructor121564%_)
                                          (let ((_%constructor121624%_
                                                 _%constructor121564%_))
                                            (__make-class-type
                                             _%id121568%_
                                             _%name121578%_
                                             _%direct-supers121588%_
                                             _%direct-slots121598%_
                                             _%properties121608%_
                                             _%constructor121624%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@500.24-500.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor121564%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@499.24-499.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties121563%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@498.24-498.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots121562%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@497.24-497.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers121561%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@496.24-496.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name121560%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@495.24-495.26"
               'contract:
               'symbol?
               'value:
               _%id121559%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass131589%_)
        (let ((_%klass131592%_ _%klass131589%_))
          (cons _%klass131592%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass131592%_ '6 '#f '#f))))))
    (define class-precedence-list
      (lambda (_%klass121754%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121754%_ 'class))
            (let ((_%klass121758%_ _%klass121754%_))
              (__class-precedence-list _%klass121758%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@533.30-533.35"
               'contract:
               'class-type?
               'value:
               _%klass121754%_)
              '#!void))))
    (define compute-precedence-list
      (lambda (_%direct-supers131586%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers131586%_))))
    (define __make-class-predicate
      (lambda (_%klass131502%_)
        (let* ((_%klass131505%_ _%klass131502%_)
               (_%tid131514%_
                (let () (declare (not safe)) (##type-id _%klass131505%_))))
          (if (let* ((_%type131516%_ _%klass131505%_)
                     (_%type131521%_ _%type131516%_))
                (__class-type-final? _%type131521%_))
              (lambda (_%g131535131537%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g131535131537%_
                   _%tid131514%_)))
              (if (let* ((_%klass131540%_ _%klass131505%_)
                         (_%klass131545%_ _%klass131540%_))
                    (__class-type-struct? _%klass131545%_))
                  (lambda (_%g131555131557%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%g131555131557%_
                       _%tid131514%_)))
                  (lambda (_%g131560131562%_)
                    (let* ((_%klass131565%_ _%klass131505%_)
                           (_%obj131568%_ _%g131560131562%_)
                           (_%klass131573%_ _%klass131565%_))
                      (__class-instance? _%klass131573%_ _%obj131568%_))))))))
    (define make-class-predicate
      (lambda (_%klass121888%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121888%_ 'class))
            (let ((_%klass121892%_ _%klass121888%_))
              (__make-class-predicate _%klass121892%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@545.29-545.34"
               'contract:
               'class-type?
               'value:
               _%klass121888%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass131436%_ _%slot131437%_)
        (let* ((_%klass131440%_ _%klass131436%_)
               (_%slot131448%_ _%slot131437%_)
               (_%field131457%_
                (let ((__tmp135833
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass131440%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp135833 _%slot131448%_ '#f))))
          (if (not _%field131457%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass131440%_
                       'slot:
                       _%slot131448%_)
                '#!void)
              (if (let* ((_%type131461%_ _%klass131440%_)
                         (_%type131466%_ _%type131461%_))
                    (__class-type-final? _%type131466%_))
                  (make-final-slot-accessor
                   _%klass131440%_
                   _%slot131448%_
                   _%field131457%_)
                  (if (let* ((_%klass131481%_ _%klass131440%_)
                             (_%klass131486%_ _%klass131481%_))
                        (__class-type-struct? _%klass131486%_))
                      (make-struct-slot-accessor
                       _%klass131440%_
                       _%slot131448%_
                       _%field131457%_)
                      (if (let ((_%strukt131497%_
                                 (base-struct/1 _%klass131440%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt131497%_
                                    'class))
                                 (let ((__tmp135834
                                        (let ((__tmp135835
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt131497%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp135835))))
                                   (declare (not safe))
                                   (##fx< _%field131457%_ __tmp135834))))
                          (make-struct-subclass-slot-accessor
                           _%klass131440%_
                           _%slot131448%_
                           _%field131457%_)
                          (make-class-cached-slot-accessor
                           _%klass131440%_
                           _%slot131448%_
                           _%field131457%_))))))))
    (define make-class-slot-accessor
      (lambda (_%klass122175%_ _%slot122176%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122175%_ 'class))
            (let ((_%klass122180%_ _%klass122175%_))
              (if (symbol? _%slot122176%_)
                  (let ((_%slot122190%_ _%slot122176%_))
                    (__make-class-slot-accessor
                     _%klass122180%_
                     _%slot122190%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@576.50-576.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot122176%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@576.33-576.38"
               'contract:
               'class-type?
               'value:
               _%klass122175%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass131370%_ _%slot131371%_)
        (let* ((_%klass131374%_ _%klass131370%_)
               (_%slot131382%_ _%slot131371%_)
               (_%field131391%_
                (let ((__tmp135836
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass131374%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp135836 _%slot131382%_ '#f))))
          (if (not _%field131391%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass131374%_
                       'slot:
                       _%slot131382%_)
                '#!void)
              (if (let* ((_%type131395%_ _%klass131374%_)
                         (_%type131400%_ _%type131395%_))
                    (__class-type-final? _%type131400%_))
                  (make-final-slot-mutator
                   _%klass131374%_
                   _%slot131382%_
                   _%field131391%_)
                  (if (let* ((_%klass131415%_ _%klass131374%_)
                             (_%klass131420%_ _%klass131415%_))
                        (__class-type-struct? _%klass131420%_))
                      (make-struct-slot-mutator
                       _%klass131374%_
                       _%slot131382%_
                       _%field131391%_)
                      (if (let ((_%strukt131431%_
                                 (base-struct/1 _%klass131374%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt131431%_
                                    'class))
                                 (let ((__tmp135837
                                        (let ((__tmp135838
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt131431%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp135838))))
                                   (declare (not safe))
                                   (##fx< _%field131391%_ __tmp135837))))
                          (make-struct-subclass-slot-mutator
                           _%klass131374%_
                           _%slot131382%_
                           _%field131391%_)
                          (make-class-cached-slot-mutator
                           _%klass131374%_
                           _%slot131382%_
                           _%field131391%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass122320%_ _%slot122321%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122320%_ 'class))
            (let ((_%klass122325%_ _%klass122320%_))
              (if (symbol? _%slot122321%_)
                  (let ((_%slot122335%_ _%slot122321%_))
                    (__make-class-slot-mutator _%klass122325%_ _%slot122335%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@584.49-584.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot122321%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@584.32-584.37"
               'contract:
               'class-type?
               'value:
               _%klass122320%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass131304%_ _%slot131305%_)
        (let* ((_%klass131308%_ _%klass131304%_)
               (_%slot131316%_ _%slot131305%_)
               (_%field131325%_
                (let ((__tmp135839
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass131308%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp135839 _%slot131316%_ '#f))))
          (if (not _%field131325%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass131308%_
                       'slot:
                       _%slot131316%_)
                '#!void)
              (if (let* ((_%type131329%_ _%klass131308%_)
                         (_%type131334%_ _%type131329%_))
                    (__class-type-final? _%type131334%_))
                  (make-struct-slot-unchecked-accessor
                   _%klass131308%_
                   _%slot131316%_
                   _%field131325%_)
                  (if (let* ((_%klass131349%_ _%klass131308%_)
                             (_%klass131354%_ _%klass131349%_))
                        (__class-type-struct? _%klass131354%_))
                      (make-struct-slot-unchecked-accessor
                       _%klass131308%_
                       _%slot131316%_
                       _%field131325%_)
                      (if (let ((_%strukt131365%_
                                 (base-struct/1 _%klass131308%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt131365%_
                                    'class))
                                 (let ((__tmp135840
                                        (let ((__tmp135841
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt131365%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp135841))))
                                   (declare (not safe))
                                   (##fx< _%field131325%_ __tmp135840))))
                          (make-struct-slot-unchecked-accessor
                           _%klass131308%_
                           _%slot131316%_
                           _%field131325%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass131308%_
                           _%slot131316%_
                           _%field131325%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass122465%_ _%slot122466%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122465%_ 'class))
            (let ((_%klass122470%_ _%klass122465%_))
              (if (symbol? _%slot122466%_)
                  (let ((_%slot122480%_ _%slot122466%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass122470%_
                     _%slot122480%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.60-592.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot122466%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.43-592.48"
               'contract:
               'class-type?
               'value:
               _%klass122465%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass131238%_ _%slot131239%_)
        (let* ((_%klass131242%_ _%klass131238%_)
               (_%slot131250%_ _%slot131239%_)
               (_%field131259%_
                (let ((__tmp135842
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass131242%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp135842 _%slot131250%_ '#f))))
          (if (not _%field131259%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass131242%_
                       'slot:
                       _%slot131250%_)
                '#!void)
              (if (let* ((_%type131263%_ _%klass131242%_)
                         (_%type131268%_ _%type131263%_))
                    (__class-type-final? _%type131268%_))
                  (make-struct-slot-unchecked-mutator
                   _%klass131242%_
                   _%slot131250%_
                   _%field131259%_)
                  (if (let* ((_%klass131283%_ _%klass131242%_)
                             (_%klass131288%_ _%klass131283%_))
                        (__class-type-struct? _%klass131288%_))
                      (make-struct-slot-unchecked-mutator
                       _%klass131242%_
                       _%slot131250%_
                       _%field131259%_)
                      (if (let ((_%strukt131299%_
                                 (base-struct/1 _%klass131242%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt131299%_
                                    'class))
                                 (let ((__tmp135843
                                        (let ((__tmp135844
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt131299%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp135844))))
                                   (declare (not safe))
                                   (##fx< _%field131259%_ __tmp135843))))
                          (make-struct-slot-unchecked-mutator
                           _%klass131242%_
                           _%slot131250%_
                           _%field131259%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass131242%_
                           _%slot131250%_
                           _%field131259%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass122610%_ _%slot122611%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122610%_ 'class))
            (let ((_%klass122615%_ _%klass122610%_))
              (if (symbol? _%slot122611%_)
                  (let ((_%slot122625%_ _%slot122611%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass122615%_
                     _%slot122625%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@600.59-600.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot122611%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@600.42-600.47"
               'contract:
               'class-type?
               'value:
               _%klass122610%_)
              '#!void))))
    (define not-an-instance__%
      (lambda (_%object131222%_ _%class131223%_ _%slot131224%_)
        (apply error
               '"not an instance"
               'object:
               _%object131222%_
               'class:
               _%class131223%_
               (if _%slot131224%_
                   (cons 'slot: (cons _%slot131224%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object131229%_ _%class131230%_)
        (let ((_%slot131232%_ '#f))
          (not-an-instance__%
           _%object131229%_
           _%class131230%_
           _%slot131232%_))))
    (define not-an-instance
      (lambda _g135845_
        (let ((_g135846_ (let () (declare (not safe)) (##length _g135845_))))
          (cond ((let () (declare (not safe)) (##fx= _g135846_ 2))
                 (apply not-an-instance__0 _g135845_))
                ((let () (declare (not safe)) (##fx= _g135846_ 3))
                 (apply not-an-instance__% _g135845_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g135845_))))))
    (define make-final-slot-accessor
      (lambda (_%klass131215%_ _%slot131216%_ _%field131217%_)
        (lambda (_%obj131219%_)
          (##direct-structure-ref
           _%obj131219%_
           _%field131217%_
           _%klass131215%_
           _%slot131216%_))))
    (define make-final-slot-mutator
      (lambda (_%klass131208%_ _%slot131209%_ _%field131210%_)
        (lambda (_%obj131212%_ _%val131213%_)
          (##direct-structure-set!
           _%obj131212%_
           _%val131213%_
           _%field131210%_
           _%klass131208%_
           _%slot131209%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass131202%_ _%slot131203%_ _%field131204%_)
        (lambda (_%obj131206%_)
          (##structure-ref
           _%obj131206%_
           _%field131204%_
           _%klass131202%_
           _%slot131203%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass131195%_ _%slot131196%_ _%field131197%_)
        (lambda (_%obj131199%_ _%val131200%_)
          (##structure-set!
           _%obj131199%_
           _%val131200%_
           _%field131197%_
           _%klass131195%_
           _%slot131196%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass131189%_ _%slot131190%_ _%field131191%_)
        (lambda (_%obj131193%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj131193%_
             _%field131191%_
             _%klass131189%_
             _%slot131190%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass131182%_ _%slot131183%_ _%field131184%_)
        (lambda (_%obj131186%_ _%val131187%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj131186%_
             _%val131187%_
             _%field131184%_
             _%klass131182%_
             _%slot131183%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass131155%_ _%slot131156%_ _%field131157%_)
        (lambda (_%obj131159%_)
          (if (let* ((_%klass131161%_ _%klass131155%_)
                     (_%obj131164%_ _%obj131159%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass131161%_ 'class))
                    (let ((_%klass131169%_ _%klass131161%_))
                      (__class-instance? _%klass131169%_ _%obj131164%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass131161%_)
                      '#!void)))
              (unchecked-slot-ref _%obj131159%_ _%field131157%_)
              (not-an-instance__%
               _%obj131159%_
               _%klass131155%_
               _%slot131156%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass131127%_ _%slot131128%_ _%field131129%_)
        (lambda (_%obj131131%_ _%val131132%_)
          (if (let* ((_%klass131134%_ _%klass131127%_)
                     (_%obj131137%_ _%obj131131%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass131134%_ 'class))
                    (let ((_%klass131142%_ _%klass131134%_))
                      (__class-instance? _%klass131142%_ _%obj131137%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass131134%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj131131%_
               _%field131129%_
               _%val131132%_)
              (not-an-instance__%
               _%obj131131%_
               _%klass131127%_
               _%slot131128%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass131078%_ _%slot131079%_ _%field131080%_)
        (lambda (_%obj131082%_)
          (if (let* ((_%klass131084%_ _%klass131078%_)
                     (_%obj131087%_ _%obj131082%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass131084%_ 'class))
                    (let ((_%klass131092%_ _%klass131084%_))
                      (__direct-instance? _%klass131092%_ _%obj131087%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass131084%_)
                      '#!void)))
              (unchecked-field-ref _%obj131082%_ _%field131080%_)
              (if (let* ((_%klass131106%_ _%klass131078%_)
                         (_%obj131109%_ _%obj131082%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass131106%_ 'class))
                        (let ((_%klass131114%_ _%klass131106%_))
                          (__class-instance? _%klass131114%_ _%obj131109%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass131106%_)
                          '#!void)))
                  (unchecked-slot-ref _%obj131082%_ _%slot131079%_)
                  (not-an-instance__%
                   _%obj131082%_
                   _%klass131078%_
                   _%slot131079%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass131028%_ _%slot131029%_ _%field131030%_)
        (lambda (_%obj131032%_ _%val131033%_)
          (if (let* ((_%klass131035%_ _%klass131028%_)
                     (_%obj131038%_ _%obj131032%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass131035%_ 'class))
                    (let ((_%klass131043%_ _%klass131035%_))
                      (__direct-instance? _%klass131043%_ _%obj131038%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass131035%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj131032%_
               _%field131030%_
               _%val131033%_)
              (if (let* ((_%klass131057%_ _%klass131028%_)
                         (_%obj131060%_ _%obj131032%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass131057%_ 'class))
                        (let ((_%klass131065%_ _%klass131057%_))
                          (__class-instance? _%klass131065%_ _%obj131060%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass131057%_)
                          '#!void)))
                  (unchecked-slot-set!
                   _%obj131032%_
                   _%slot131029%_
                   _%val131033%_)
                  (not-an-instance__%
                   _%obj131032%_
                   _%klass131028%_
                   _%slot131029%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass131001%_ _%slot131002%_ _%field131003%_)
        (lambda (_%obj131005%_)
          (if (let* ((_%klass131007%_ _%klass131001%_)
                     (_%obj131010%_ _%obj131005%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass131007%_ 'class))
                    (let ((_%klass131015%_ _%klass131007%_))
                      (__direct-instance? _%klass131015%_ _%obj131010%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass131007%_)
                      '#!void)))
              (unchecked-field-ref _%obj131005%_ _%field131003%_)
              (unchecked-slot-ref _%obj131005%_ _%slot131002%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass130973%_ _%slot130974%_ _%field130975%_)
        (lambda (_%obj130977%_ _%val130978%_)
          (if (let* ((_%klass130980%_ _%klass130973%_)
                     (_%obj130983%_ _%obj130977%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass130980%_ 'class))
                    (let ((_%klass130988%_ _%klass130980%_))
                      (__direct-instance? _%klass130988%_ _%obj130983%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass130980%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj130977%_
               _%field130975%_
               _%val130978%_)
              (unchecked-slot-set!
               _%obj130977%_
               _%slot130974%_
               _%val130978%_)))))
    (define __class-slot-offset
      (lambda (_%klass130952%_ _%slot130953%_)
        (let* ((_%klass130956%_ _%klass130952%_)
               (_%slot130964%_ _%slot130953%_)
               (__tmp135847
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass130956%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp135847 _%slot130964%_ '#f))))
    (define class-slot-offset
      (lambda (_%klass122755%_ _%slot122756%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122755%_ 'class))
            (let ((_%klass122760%_ _%klass122755%_))
              (if (let () (declare (not safe)) (symbolic? _%slot122756%_))
                  (let ((_%slot122770%_ _%slot122756%_))
                    (__class-slot-offset _%klass122760%_ _%slot122770%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@662.43-662.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot122756%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@662.26-662.31"
               'contract:
               'class-type?
               'value:
               _%klass122755%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass130877%_ _%obj130878%_ _%slot130879%_)
        (let* ((_%klass130882%_ _%klass130877%_)
               (_%slot130890%_ _%slot130879%_))
          (if (let* ((_%klass130899%_ _%klass130882%_)
                     (_%obj130902%_ _%obj130878%_)
                     (_%klass130907%_ _%klass130899%_))
                (__class-instance? _%klass130907%_ _%obj130902%_))
              (let ((_%off130950%_
                     (let* ((_%klass130921%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj130878%_)))
                            (_%slot130924%_ _%slot130890%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass130921%_ 'class))
                           (let ((_%klass130929%_ _%klass130921%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot130924%_))
                                 (let ((_%slot130940%_ _%slot130924%_))
                                   (__class-slot-offset
                                    _%klass130929%_
                                    _%slot130940%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot130924%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass130921%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj130878%_
                 _%off130950%_
                 _%klass130882%_
                 _%slot130890%_))
              (not-an-instance__0 _%obj130878%_ _%klass130882%_)))))
    (define class-slot-ref
      (lambda (_%klass122900%_ _%obj122901%_ _%slot122902%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122900%_ 'class))
            (let ((_%klass122906%_ _%klass122900%_))
              (if (let () (declare (not safe)) (symbolic? _%slot122902%_))
                  (let ((_%slot122916%_ _%slot122902%_))
                    (__class-slot-ref
                     _%klass122906%_
                     _%obj122901%_
                     _%slot122916%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@665.44-665.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot122902%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@665.23-665.28"
               'contract:
               'class-type?
               'value:
               _%klass122900%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass130801%_ _%obj130802%_ _%slot130803%_ _%val130804%_)
        (let* ((_%klass130807%_ _%klass130801%_)
               (_%slot130815%_ _%slot130803%_))
          (if (let* ((_%klass130824%_ _%klass130807%_)
                     (_%obj130827%_ _%obj130802%_)
                     (_%klass130832%_ _%klass130824%_))
                (__class-instance? _%klass130832%_ _%obj130827%_))
              (let ((_%off130875%_
                     (let* ((_%klass130846%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj130802%_)))
                            (_%slot130849%_ _%slot130815%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass130846%_ 'class))
                           (let ((_%klass130854%_ _%klass130846%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot130849%_))
                                 (let ((_%slot130865%_ _%slot130849%_))
                                   (__class-slot-offset
                                    _%klass130854%_
                                    _%slot130865%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot130849%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass130846%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj130802%_
                 _%val130804%_
                 _%off130875%_
                 _%klass130807%_
                 _%slot130815%_))
              (not-an-instance__0 _%obj130802%_ _%klass130807%_)))))
    (define class-slot-set!
      (lambda (_%klass123046%_ _%obj123047%_ _%slot123048%_ _%val123049%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123046%_ 'class))
            (let ((_%klass123053%_ _%klass123046%_))
              (if (let () (declare (not safe)) (symbolic? _%slot123048%_))
                  (let ((_%slot123063%_ _%slot123048%_))
                    (__class-slot-set!
                     _%klass123053%_
                     _%obj123047%_
                     _%slot123063%_
                     _%val123049%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@671.45-671.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot123048%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@671.24-671.29"
               'contract:
               'class-type?
               'value:
               _%klass123046%_)
              '#!void))))
    (define unchecked-field-ref
      (lambda (_%obj130798%_ _%off130799%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj130798%_ _%off130799%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj130794%_ _%off130795%_ _%val130796%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj130794%_
           _%val130796%_
           _%off130795%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj130791%_ _%slot130792%_)
        (unchecked-field-ref
         _%obj130791%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj130791%_))
          _%slot130792%_))))
    (define unchecked-slot-set!
      (lambda (_%obj130787%_ _%slot130788%_ _%val130789%_)
        (unchecked-field-set!
         _%obj130787%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj130787%_))
          _%slot130788%_)
         _%val130789%_)))
    (define __slot-error
      (lambda (_%obj130784%_ _%slot130785%_)
        (error '"Cannot find slot"
               'object:
               _%obj130784%_
               'slot:
               _%slot130785%_)))
    (define __slot-ref__%
      (lambda (_%obj130708%_ _%slot130709%_ _%E130710%_)
        (let* ((_%slot130713%_ _%slot130709%_)
               (_%E130721%_ _%E130710%_)
               (_%klass130730%_ (class-of _%obj130708%_))
               (_%$e130766%_
                (let* ((_%klass130733%_ _%klass130730%_)
                       (_%slot130736%_ _%slot130713%_)
                       (_%klass130741%_ _%klass130733%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot130736%_))
                      (let ((_%slot130756%_ _%slot130736%_))
                        (__class-slot-offset _%klass130741%_ _%slot130756%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot130736%_)
                        '#!void)))))
          (if _%$e130766%_
              ((lambda (_%off130769%_)
                 (unchecked-field-ref _%obj130708%_ _%off130769%_))
               _%$e130766%_)
              (let ()
                (declare (not safe))
                (_%E130721%_ _%obj130708%_ _%slot130713%_))))))
    (define __slot-ref__0
      (lambda (_%obj130775%_ _%slot130776%_)
        (let ((_%E130778%_ __slot-error))
          (__slot-ref__% _%obj130775%_ _%slot130776%_ _%E130778%_))))
    (define __slot-ref
      (lambda _g135848_
        (let ((_g135849_ (let () (declare (not safe)) (##length _g135848_))))
          (cond ((let () (declare (not safe)) (##fx= _g135849_ 2))
                 (apply __slot-ref__0 _g135848_))
                ((let () (declare (not safe)) (##fx= _g135849_ 3))
                 (apply __slot-ref__% _g135848_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g135848_))))))
    (define slot-ref__%
      (lambda (_%obj123311%_ _%slot123312%_ _%E123313%_)
        (if (symbol? _%slot123312%_)
            (let ((_%slot123317%_ _%slot123312%_))
              (if (procedure? _%E123313%_)
                  (let ((_%E123327%_ _%E123313%_))
                    (__slot-ref__% _%obj123311%_ _%slot123317%_ _%E123327%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@697.38-697.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E123313%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@697.21-697.25"
               'contract:
               'symbol?
               'value:
               _%slot123312%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj123340%_ _%slot123341%_)
        (let ((_%E123343%_ __slot-error))
          (slot-ref__% _%obj123340%_ _%slot123341%_ _%E123343%_))))
    (define slot-ref
      (lambda _g135850_
        (let ((_g135851_ (let () (declare (not safe)) (##length _g135850_))))
          (cond ((let () (declare (not safe)) (##fx= _g135851_ 2))
                 (apply slot-ref__0 _g135850_))
                ((let () (declare (not safe)) (##fx= _g135851_ 3))
                 (apply slot-ref__% _g135850_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g135850_))))))
    (define __slot-set!__%
      (lambda (_%obj130628%_ _%slot130629%_ _%val130630%_ _%E130631%_)
        (let* ((_%slot130634%_ _%slot130629%_)
               (_%E130642%_ _%E130631%_)
               (_%klass130651%_ (class-of _%obj130628%_))
               (_%$e130687%_
                (let* ((_%klass130654%_ _%klass130651%_)
                       (_%slot130657%_ _%slot130634%_)
                       (_%klass130662%_ _%klass130654%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot130657%_))
                      (let ((_%slot130677%_ _%slot130657%_))
                        (__class-slot-offset _%klass130662%_ _%slot130677%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot130657%_)
                        '#!void)))))
          (if _%$e130687%_
              ((lambda (_%off130690%_)
                 (unchecked-field-set!
                  _%obj130628%_
                  _%off130690%_
                  _%val130630%_))
               _%$e130687%_)
              (let ()
                (declare (not safe))
                (_%E130642%_ _%obj130628%_ _%slot130634%_))))))
    (define __slot-set!__0
      (lambda (_%obj130696%_ _%slot130697%_ _%val130698%_)
        (let ((_%E130700%_ __slot-error))
          (__slot-set!__%
           _%obj130696%_
           _%slot130697%_
           _%val130698%_
           _%E130700%_))))
    (define __slot-set!
      (lambda _g135852_
        (let ((_g135853_ (let () (declare (not safe)) (##length _g135852_))))
          (cond ((let () (declare (not safe)) (##fx= _g135853_ 3))
                 (apply __slot-set!__0 _g135852_))
                ((let () (declare (not safe)) (##fx= _g135853_ 4))
                 (apply __slot-set!__% _g135852_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g135852_))))))
    (define slot-set!__%
      (lambda (_%obj123470%_ _%slot123471%_ _%val123472%_ _%E123473%_)
        (if (symbol? _%slot123471%_)
            (let ((_%slot123477%_ _%slot123471%_))
              (if (procedure? _%E123473%_)
                  (let ((_%E123487%_ _%E123473%_))
                    (__slot-set!__%
                     _%obj123470%_
                     _%slot123477%_
                     _%val123472%_
                     _%E123487%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@699.43-699.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E123473%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@699.22-699.26"
               'contract:
               'symbol?
               'value:
               _%slot123471%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj123500%_ _%slot123501%_ _%val123502%_)
        (let ((_%E123504%_ __slot-error))
          (slot-set!__%
           _%obj123500%_
           _%slot123501%_
           _%val123502%_
           _%E123504%_))))
    (define slot-set!
      (lambda _g135854_
        (let ((_g135855_ (let () (declare (not safe)) (##length _g135854_))))
          (cond ((let () (declare (not safe)) (##fx= _g135855_ 3))
                 (apply slot-set!__0 _g135854_))
                ((let () (declare (not safe)) (##fx= _g135855_ 4))
                 (apply slot-set!__% _g135854_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g135854_))))))
    (define __subclass?
      (lambda (_%maybe-sub-class130599%_ _%maybe-super-class130600%_)
        (let* ((_%maybe-sub-class130603%_ _%maybe-sub-class130599%_)
               (_%maybe-super-class130611%_ _%maybe-super-class130600%_)
               (_%maybe-super-class-id130620%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class130611%_)))
               (_%$e130622%_
                (eq? _%maybe-super-class-id130620%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class130603%_)))))
          (if _%$e130622%_
              _%$e130622%_
              (let ((__tmp135857
                     (lambda (_%super-class130625%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class130625%_))
                            _%maybe-super-class-id130620%_)))
                    (__tmp135856
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class130603%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (ormap__0 __tmp135857 __tmp135856))))))
    (define subclass?
      (lambda (_%maybe-sub-class123631%_ _%maybe-super-class123632%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class123631%_ 'class))
            (let ((_%maybe-sub-class123636%_ _%maybe-sub-class123631%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class123632%_
                     'class))
                  (let ((_%maybe-super-class123646%_
                         _%maybe-super-class123632%_))
                    (__subclass?
                     _%maybe-sub-class123636%_
                     _%maybe-super-class123646%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@705.45-705.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class123632%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@705.18-705.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class123631%_)
              '#!void))))
    (define object?
      (lambda (_%o130596%_)
        (if (let () (declare (not safe)) (##structure? _%o130596%_))
            (let ((__tmp135858
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o130596%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp135858 'class))
            '#f)))
    (define __direct-instance?
      (lambda (_%klass130583%_ _%obj130584%_)
        (let* ((_%klass130587%_ _%klass130583%_)
               (__tmp135859
                (let () (declare (not safe)) (##type-id _%klass130587%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj130584%_ __tmp135859))))
    (define direct-instance?
      (lambda (_%klass123776%_ _%obj123777%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123776%_ 'class))
            (let ((_%klass123781%_ _%klass123776%_))
              (__direct-instance? _%klass123781%_ _%obj123777%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@719.25-719.30"
               'contract:
               'class-type?
               'value:
               _%klass123776%_)
              '#!void))))
    (define immediate-instance-of?
      (lambda (_%klass130579%_ _%obj130580%_)
        (if (let () (declare (not safe)) (##structure? _%obj130580%_))
            (eq? _%klass130579%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj130580%_)))
            '#f)))
    (define __struct-instance?
      (lambda (_%klass130566%_ _%obj130567%_)
        (let* ((_%klass130570%_ _%klass130566%_)
               (__tmp135860
                (let () (declare (not safe)) (##type-id _%klass130570%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj130567%_ __tmp135860))))
    (define struct-instance?
      (lambda (_%klass123911%_ _%obj123912%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123911%_ 'class))
            (let ((_%klass123916%_ _%klass123911%_))
              (__struct-instance? _%klass123916%_ _%obj123912%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@748.25-748.30"
               'contract:
               'class-type?
               'value:
               _%klass123911%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass130518%_ _%obj130519%_)
        (let* ((_%klass130522%_ _%klass130518%_)
               (_%type130531%_ (class-of _%obj130519%_))
               (_%maybe-sub-class130533%_ _%type130531%_)
               (_%maybe-super-class130536%_ _%klass130522%_)
               (_%maybe-sub-class130541%_ _%maybe-sub-class130533%_)
               (_%maybe-super-class130556%_ _%maybe-super-class130536%_))
          (__subclass?
           _%maybe-sub-class130541%_
           _%maybe-super-class130556%_))))
    (define class-instance?
      (lambda (_%klass124046%_ _%obj124047%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124046%_ 'class))
            (let ((_%klass124051%_ _%klass124046%_))
              (__class-instance? _%klass124051%_ _%obj124047%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.24-753.29"
               'contract:
               'class-type?
               'value:
               _%klass124046%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass130477%_ _%k130478%_)
        (let* ((_%klass130481%_ _%klass130477%_) (_%k130489%_ _%k130478%_))
          (if (let* ((_%klass130498%_ _%klass130481%_)
                     (_%klass130503%_ _%klass130498%_))
                (__class-type-system? _%klass130503%_))
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass130481%_)
                '#!void)
              (let ((_%obj130516%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass130481%_ _%k130489%_))))
                (__object-fill! _%obj130516%_ '#f))))))
    (define make-object
      (lambda (_%klass124181%_ _%k124182%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124181%_ 'class))
            (let ((_%klass124186%_ _%klass124181%_))
              (if (fixnum? _%k124182%_)
                  (let ((_%k124196%_ _%k124182%_))
                    (__make-object _%klass124186%_ _%k124196%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@758.37-758.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k124182%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@758.20-758.25"
               'contract:
               'class-type?
               'value:
               _%klass124181%_)
              '#!void))))
    (define __object-class
      (lambda (_%obj130465%_)
        (let ((_%obj130468%_ _%obj130465%_))
          (declare (not safe))
          (##structure-type _%obj130468%_))))
    (define object-class
      (lambda (_%obj124326%_)
        (if (object? _%obj124326%_)
            (let ((_%obj124330%_ _%obj124326%_))
              (__object-class _%obj124330%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@778.21-778.24"
               'contract:
               'object?
               'value:
               _%obj124326%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj130447%_ _%fill130448%_)
        (let ((_%obj130451%_ _%obj130447%_))
          (let _%loop130460%_ ((_%i130462%_
                                (let ((__tmp135861
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj130451%_))))
                                  (declare (not safe))
                                  (##fx- __tmp135861 '1))))
            (if (let () (declare (not safe)) (##fx> _%i130462%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj130451%_
                     _%fill130448%_
                     _%i130462%_
                     '#f
                     '#f))
                  (_%loop130460%_
                   (let () (declare (not safe)) (##fx- _%i130462%_ '1))))
                _%obj130451%_)))))
    (define object-fill!
      (lambda (_%obj124460%_ _%fill124461%_)
        (if (object? _%obj124460%_)
            (let ((_%obj124465%_ _%obj124460%_))
              (__object-fill! _%obj124465%_ _%fill124461%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@783.21-783.24"
               'contract:
               'object?
               'value:
               _%obj124460%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass130403%_)
        (let* ((_%klass130406%_ _%klass130403%_)
               (_%klass130415%_ _%klass130406%_)
               (_%k130418%_
                (let ((__tmp135862
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass130406%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp135862)))
               (_%klass130423%_ _%klass130415%_)
               (_%k130437%_ _%k130418%_))
          (__make-object _%klass130423%_ _%k130437%_))))
    (define new-instance
      (lambda (_%klass124595%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124595%_ 'class))
            (let ((_%klass124599%_ _%klass124595%_))
              (__new-instance _%klass124599%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@794.21-794.26"
               'contract:
               'class-type?
               'value:
               _%klass124595%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass130262%_ . _%args130263%_)
        (let* ((_%klass130266%_ _%klass130262%_)
               (_%$e130275%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass130266%_ '10 '#f '#f))))
          (if _%$e130275%_
              ((lambda (_%kons-id130278%_)
                 (let ((_%obj130300%_
                        (let* ((_%klass130280%_ _%klass130266%_)
                               (_%klass130285%_ _%klass130280%_))
                          (__new-instance _%klass130285%_))))
                   (___constructor-init!
                    _%klass130266%_
                    _%kons-id130278%_
                    _%obj130300%_
                    _%args130263%_)
                   _%obj130300%_))
               _%$e130275%_)
              (if (let* ((_%klass130302%_ _%klass130266%_)
                         (_%klass130307%_ _%klass130302%_))
                    (__class-type-metaclass? _%klass130307%_))
                  (let ((_%obj130334%_
                         (let* ((_%klass130318%_ _%klass130266%_)
                                (_%klass130323%_ _%klass130318%_))
                           (__new-instance _%klass130323%_))))
                    (__metaclass-instance-init!
                     _%klass130266%_
                     _%obj130334%_
                     _%args130263%_)
                    _%obj130334%_)
                  (if (let* ((_%klass130336%_ _%klass130266%_)
                             (_%klass130341%_ _%klass130336%_))
                        (__class-type-struct? _%klass130341%_))
                      (if (let ((__tmp135864
                                 (let* ((_%klass130370%_ _%klass130266%_)
                                        (_%klass130375%_ _%klass130370%_))
                                   (__class-type-field-count _%klass130375%_)))
                                (__tmp135863
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args130263%_))))
                            (declare (not safe))
                            (##fx= __tmp135864 __tmp135863))
                          (apply ##structure _%klass130266%_ _%args130263%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass130266%_
                                   'slots:
                                   (let* ((_%klass130387%_ _%klass130266%_)
                                          (_%klass130392%_ _%klass130387%_))
                                     (__class-type-slot-list _%klass130392%_))
                                   'args:
                                   _%args130263%_)
                            '#!void))
                      (let ((_%obj130368%_
                             (let* ((_%klass130352%_ _%klass130266%_)
                                    (_%klass130357%_ _%klass130352%_))
                               (__new-instance _%klass130357%_))))
                        (___class-instance-init!
                         _%klass130266%_
                         _%obj130368%_
                         _%args130263%_)
                        _%obj130368%_)))))))
    (define make-instance
      (lambda (_%klass124729%_ . _%args124730%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124729%_ 'class))
            (let ((_%klass124734%_ _%klass124729%_))
              (declare (not safe))
              (##apply __make-instance _%klass124734%_ _%args124730%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@797.22-797.27"
               'contract:
               'class-type?
               'value:
               _%klass124729%_)
              '#!void))))
    (define make-class-instance make-instance)
    (define __struct-instance-init!
      (lambda (_%obj130249%_ . _%args130250%_)
        (let ((_%obj130253%_ _%obj130249%_))
          (if (let ((__tmp135866
                     (let () (declare (not safe)) (##length _%args130250%_)))
                    (__tmp135865
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj130253%_))))
                (declare (not safe))
                (##fx< __tmp135866 __tmp135865))
              (___struct-instance-init! _%obj130253%_ _%args130250%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj130253%_
                     'args:
                     _%args130250%_))
          '#!void)))
    (define struct-instance-init!
      (lambda (_%obj124864%_ . _%args124865%_)
        (if (object? _%obj124864%_)
            (let ((_%obj124869%_ _%obj124864%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj124869%_ _%args124865%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@822.30-822.33"
               'contract:
               'object?
               'value:
               _%obj124864%_)
              '#!void))))
    (define ___struct-instance-init!
      (lambda (_%obj130208%_ _%args130209%_)
        (let _%lp130211%_ ((_%k130213%_ '1) (_%rest130214%_ _%args130209%_))
          (let* ((_%rest130215130223%_ _%rest130214%_)
                 (_%else130217130231%_ (lambda () _%obj130208%_))
                 (_%K130219130237%_
                  (lambda (_%rest130234%_ _%hd130235%_)
                    (unchecked-field-set!
                     _%obj130208%_
                     _%k130213%_
                     _%hd130235%_)
                    (_%lp130211%_
                     (let () (declare (not safe)) (##fx+ _%k130213%_ '1))
                     _%rest130234%_))))
            (if (pair? _%rest130215130223%_)
                (let ((_%hd130220130240%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest130215130223%_)))
                      (_%tl130221130242%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest130215130223%_))))
                  (let* ((_%hd130245%_ _%hd130220130240%_)
                         (_%rest130247%_ _%tl130221130242%_))
                    (_%K130219130237%_ _%rest130247%_ _%hd130245%_)))
                (_%else130217130231%_))))))
    (define __class-instance-init!
      (lambda (_%obj130195%_ . _%args130196%_)
        (let ((_%obj130199%_ _%obj130195%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj130199%_))
           _%obj130199%_
           _%args130196%_)
          '#!void)))
    (define class-instance-init!
      (lambda (_%obj124999%_ . _%args125000%_)
        (if (object? _%obj124999%_)
            (let ((_%obj125004%_ _%obj124999%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj125004%_ _%args125000%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@862.29-862.32"
               'contract:
               'object?
               'value:
               _%obj124999%_)
              '#!void))))
    (define ___class-instance-init!
      (lambda (_%klass130137%_ _%obj130138%_ _%args130139%_)
        (let _%lp130141%_ ((_%rest130143%_ _%args130139%_))
          (let* ((_%rest130144130154%_ _%rest130143%_)
                 (_%else130146130162%_
                  (lambda ()
                    (if (null? _%rest130143%_)
                        _%obj130138%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass130137%_
                               'rest:
                               _%rest130143%_))))
                 (_%K130148130176%_
                  (lambda (_%rest130165%_ _%val130166%_ _%key130167%_)
                    (if (keyword? _%key130167%_)
                        (let ((_%$e130170%_
                               (__class-slot-offset
                                _%klass130137%_
                                _%key130167%_)))
                          (if _%$e130170%_
                              ((lambda (_%off130173%_)
                                 (unchecked-field-set!
                                  _%obj130138%_
                                  _%off130173%_
                                  _%val130166%_)
                                 (_%lp130141%_ _%rest130165%_))
                               _%$e130170%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass130137%_
                                     'slot:
                                     _%key130167%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key130167%_)))))
            (if (pair? _%rest130144130154%_)
                (let ((_%hd130149130179%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest130144130154%_)))
                      (_%tl130150130181%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest130144130154%_))))
                  (let ((_%key130184%_ _%hd130149130179%_))
                    (if (pair? _%tl130150130181%_)
                        (let ((_%hd130151130186%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl130150130181%_)))
                              (_%tl130152130188%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl130150130181%_))))
                          (let* ((_%val130191%_ _%hd130151130186%_)
                                 (_%rest130193%_ _%tl130152130188%_))
                            (_%K130148130176%_
                             _%rest130193%_
                             _%val130191%_
                             _%key130184%_)))
                        (_%else130146130162%_))))
                (_%else130146130162%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass130133%_ _%obj130134%_ _%args130135%_)
        (apply call-method
               _%klass130133%_
               'instance-init!
               _%obj130134%_
               _%args130135%_)))
    (define __constructor-init!
      (lambda (_%klass130102%_
               _%kons-id130103%_
               _%obj130104%_
               .
               _%args130105%_)
        (let* ((_%klass130108%_ _%klass130102%_)
               (_%kons-id130116%_ _%kons-id130103%_)
               (_%obj130124%_ _%obj130104%_))
          (___constructor-init!
           _%klass130108%_
           _%kons-id130116%_
           _%obj130124%_
           _%args130105%_)
          '#!void)))
    (define constructor-init!
      (lambda (_%klass125134%_
               _%kons-id125135%_
               _%obj125136%_
               .
               _%args125137%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125134%_ 'class))
            (let ((_%klass125141%_ _%klass125134%_))
              (if (symbol? _%kons-id125135%_)
                  (let ((_%kons-id125151%_ _%kons-id125135%_))
                    (if (object? _%obj125136%_)
                        (let ((_%obj125161%_ _%obj125136%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass125141%_
                                   _%kons-id125151%_
                                   _%obj125161%_
                                   _%args125137%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@886.63-886.66"
                           'contract:
                           'object?
                           'value:
                           _%obj125136%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@886.43-886.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id125135%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@886.26-886.31"
               'contract:
               'class-type?
               'value:
               _%klass125134%_)
              '#!void))))
    (define ___constructor-init!
      (lambda (_%klass130091%_ _%kons-id130092%_ _%obj130093%_ _%args130094%_)
        (let ((_%$e130096%_
               (__find-method
                _%klass130091%_
                _%obj130093%_
                _%kons-id130092%_)))
          (if _%$e130096%_
              ((lambda (_%kons130099%_)
                 (apply _%kons130099%_ _%obj130093%_ _%args130094%_)
                 _%obj130093%_)
               _%$e130096%_)
              (error '"missing constructor"
                     'class:
                     _%klass130091%_
                     'method:
                     _%kons-id130092%_)))))
    (define __struct-copy
      (lambda (_%struct130079%_)
        (let ((_%struct130082%_ _%struct130079%_))
          (declare (not safe))
          (##structure-copy _%struct130082%_))))
    (define struct-copy
      (lambda (_%struct125291%_)
        (if (object? _%struct125291%_)
            (let ((_%struct125295%_ _%struct125291%_))
              (__struct-copy _%struct125295%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@900.20-900.26"
               'contract:
               'object?
               'value:
               _%struct125291%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj130060%_)
        (let* ((_%obj130063%_ _%obj130060%_)
               (_%len130072%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj130063%_))))
          (let _%recur130074%_ ((_%i130076%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i130076%_ _%len130072%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj130063%_
                         _%i130076%_
                         '#f
                         '#f))
                      (_%recur130074%_
                       (let () (declare (not safe)) (##fx+ _%i130076%_ '1))))
                '())))))
    (define struct->list
      (lambda (_%obj125425%_)
        (if (object? _%obj125425%_)
            (let ((_%obj125429%_ _%obj125425%_))
              (__struct->list _%obj125429%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@903.21-903.24"
               'contract:
               'object?
               'value:
               _%obj125425%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj130012%_)
        (let* ((_%obj130015%_ _%obj130012%_)
               (_%klass130024%_
                (let () (declare (not safe)) (##structure-type _%obj130015%_)))
               (_%slot-vector130026%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass130024%_ '7 '#f '#f))))
          (let _%loop130028%_ ((_%index130030%_
                                (let ((__tmp135867
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector130026%_))))
                                  (declare (not safe))
                                  (##fx- __tmp135867 '1)))
                               (_%plist130031%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index130030%_ '1))
                (cons _%klass130024%_ _%plist130031%_)
                (let ((_%slot130034%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector130026%_
                          _%index130030%_))))
                  (_%loop130028%_
                   (let () (declare (not safe)) (##fx- _%index130030%_ '1))
                   (cons (let ((_%sym130036%_ _%slot130034%_))
                           (if (symbol? _%sym130036%_)
                               (let ((_%sym130041%_ _%sym130036%_))
                                 (declare (not safe))
                                 (__symbol->keyword _%sym130041%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  'symbol?
                                  'value:
                                  _%sym130036%_)
                                 '#!void)))
                         (cons (unchecked-field-ref
                                _%obj130015%_
                                _%index130030%_)
                               _%plist130031%_)))))))))
    (define class->list
      (lambda (_%obj125559%_)
        (if (object? _%obj125559%_)
            (let ((_%obj125563%_ _%obj125559%_)) (__class->list _%obj125563%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@911.20-911.23"
               'contract:
               'object?
               'value:
               _%obj125559%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj129962%_ _%id129963%_ . _%args129964%_)
        (let* ((_%id129967%_ _%id129963%_)
               (_%$e129998%_
                (let* ((_%obj129976%_ _%obj129962%_)
                       (_%id129979%_ _%id129967%_)
                       (_%id129984%_ _%id129979%_))
                  (__method-ref _%obj129976%_ _%id129984%_))))
          (if _%$e129998%_
              ((lambda (_%method130001%_)
                 (let ((_%method130003%_ _%method130001%_))
                   (apply _%method130003%_ _%obj129962%_ _%args129964%_)))
               _%$e129998%_)
              (error '"cannot find method"
                     'object:
                     _%obj129962%_
                     'method:
                     _%id129967%_)))))
    (define call-method
      (lambda (_%obj125693%_ _%id125694%_ . _%args125695%_)
        (if (symbol? _%id125694%_)
            (let ((_%id125699%_ _%id125694%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj125693%_
                       _%id125699%_
                       _%args125695%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@926.24-926.26"
               'contract:
               'symbol?
               'value:
               _%id125694%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj129913%_ _%id129914%_)
        (let* ((_%id129917%_ _%id129914%_)
               (_%klass129926%_ (class-of _%obj129913%_))
               (_%obj129929%_ _%obj129913%_)
               (_%id129932%_ _%id129917%_)
               (_%klass129937%_ _%klass129926%_)
               (_%id129952%_ _%id129932%_))
          (__find-method _%klass129937%_ _%obj129929%_ _%id129952%_))))
    (define method-ref
      (lambda (_%obj125829%_ _%id125830%_)
        (if (symbol? _%id125830%_)
            (let ((_%id125834%_ _%id125830%_))
              (__method-ref _%obj125829%_ _%id125834%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@953.23-953.25"
               'contract:
               'symbol?
               'value:
               _%id125830%_)
              '#!void))))
    (define checked-method-ref
      (lambda (_%obj129885%_ _%id129886%_)
        (let ((_%$e129910%_
               (let* ((_%obj129889%_ _%obj129885%_)
                      (_%id129892%_ _%id129886%_))
                 (if (symbol? _%id129892%_)
                     (let ((_%id129897%_ _%id129892%_))
                       (__method-ref _%obj129889%_ _%id129897%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id129892%_)
                       '#!void)))))
          (if _%$e129910%_
              _%$e129910%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj129885%_
                       'method:
                       _%id129886%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj129834%_ _%id129835%_)
        (let* ((_%id129838%_ _%id129835%_)
               (_%$e129869%_
                (let* ((_%obj129847%_ _%obj129834%_)
                       (_%id129850%_ _%id129838%_)
                       (_%id129855%_ _%id129850%_))
                  (__method-ref _%obj129847%_ _%id129855%_))))
          (if _%$e129869%_
              ((lambda (_%method129872%_)
                 (let ((_%method129874%_ _%method129872%_))
                   (lambda _%args129882%_
                     (apply _%method129874%_ _%obj129834%_ _%args129882%_))))
               _%$e129869%_)
              '#f))))
    (define bound-method-ref
      (lambda (_%obj125964%_ _%id125965%_)
        (if (symbol? _%id125965%_)
            (let ((_%id125969%_ _%id125965%_))
              (__bound-method-ref _%obj125964%_ _%id125969%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@961.29-961.31"
               'contract:
               'symbol?
               'value:
               _%id125965%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj129817%_ _%id129818%_)
        (let* ((_%id129821%_ _%id129818%_)
               (_%method129830%_
                (checked-method-ref _%obj129817%_ _%id129821%_)))
          (lambda _%args129832%_
            (apply _%method129830%_ _%obj129817%_ _%args129832%_)))))
    (define checked-bound-method-ref
      (lambda (_%obj126099%_ _%id126100%_)
        (if (symbol? _%id126100%_)
            (let ((_%id126104%_ _%id126100%_))
              (__checked-bound-method-ref _%obj126099%_ _%id126104%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@970.37-970.39"
               'contract:
               'symbol?
               'value:
               _%id126100%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass129686%_ _%obj129687%_ _%id129688%_)
        (let* ((_%klass129691%_ _%klass129686%_) (_%id129699%_ _%id129688%_))
          (if (let* ((_%klass129708%_ _%klass129691%_)
                     (_%klass129713%_ _%klass129708%_))
                (__class-type-sealed? _%klass129713%_))
              (let ((_%tab129743%_
                     (let* ((_%klass129727%_ _%klass129691%_)
                            (_%klass129732%_ _%klass129727%_))
                       (__specialize-class _%klass129732%_))))
                (declare (not safe))
                (symbolic-table-ref _%tab129743%_ _%id129699%_ '#f))
              (let ((_%$e129778%_
                     (let* ((_%klass129745%_ _%klass129691%_)
                            (_%obj129748%_ _%obj129687%_)
                            (_%id129751%_ _%id129699%_)
                            (_%klass129756%_ _%klass129745%_)
                            (_%id129768%_ _%id129751%_))
                       (__direct-method-ref
                        _%klass129756%_
                        _%obj129748%_
                        _%id129768%_))))
                (if _%$e129778%_
                    _%$e129778%_
                    (let* ((_%klass129782%_ _%klass129691%_)
                           (_%obj129785%_ _%obj129687%_)
                           (_%id129788%_ _%id129699%_)
                           (_%klass129793%_ _%klass129782%_)
                           (_%id129807%_ _%id129788%_))
                      (__mixin-method-ref
                       _%klass129793%_
                       _%obj129785%_
                       _%id129807%_))))))))
    (define find-method
      (lambda (_%klass126234%_ _%obj126235%_ _%id126236%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126234%_ 'class))
            (let ((_%klass126240%_ _%klass126234%_))
              (if (symbol? _%id126236%_)
                  (let ((_%id126250%_ _%id126236%_))
                    (__find-method _%klass126240%_ _%obj126235%_ _%id126250%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@975.41-975.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id126236%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@975.20-975.25"
               'contract:
               'class-type?
               'value:
               _%klass126234%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins129631%_ _%obj129632%_ _%id129633%_)
        (let* ((_%id129636%_ _%id129633%_)
               (__tmp135868
                (lambda (_%g129644129646%_)
                  (let* ((_%klass129649%_ _%g129644129646%_)
                         (_%obj129652%_ _%obj129632%_)
                         (_%id129655%_ _%id129636%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass129649%_ 'class))
                        (let* ((_%klass129660%_ _%klass129649%_)
                               (_%id129676%_ _%id129655%_))
                          (__direct-method-ref
                           _%klass129660%_
                           _%obj129652%_
                           _%id129676%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass129649%_)
                          '#!void))))))
          (declare (not safe))
          (ormap__0 __tmp135868 _%mixins129631%_))))
    (define mixin-find-method
      (lambda (_%mixins126380%_ _%obj126381%_ _%id126382%_)
        (if (symbol? _%id126382%_)
            (let ((_%id126386%_ _%id126382%_))
              (__mixin-find-method
               _%mixins126380%_
               _%obj126381%_
               _%id126386%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@984.37-984.39"
               'contract:
               'symbol?
               'value:
               _%id126382%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass129524%_ _%obj129525%_ _%id129526%_)
        (let* ((_%klass129529%_ _%klass129524%_) (_%id129537%_ _%id129526%_))
          (letrec ((_%metaclass-resolve-method129546%_
                    (lambda ()
                      (let* ((_%obj129607%_ _%klass129529%_)
                             (_%id129610%_ 'direct-method-ref)
                             (_%args129613%_ (list _%obj129525%_ _%id129537%_))
                             (_%id129618%_ _%id129610%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj129607%_
                                 _%id129618%_
                                 _%args129613%_))))
                   (_%metaclass-resolve-method!129547%_
                    (lambda ()
                      (let ((_%method129604%_
                             (_%metaclass-resolve-method129546%_)))
                        (let ((__tmp135870
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass129529%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp135869
                               (if _%method129604%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp135870
                           _%id129537%_
                           __tmp135869))
                        _%method129604%_))))
            (let ((_%$e129549%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass129529%_ '11 '#f '#f))))
              (if _%$e129549%_
                  ((lambda (_%ht129552%_)
                     (let ((_%method129554%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht129552%_
                               _%id129537%_
                               '#f))))
                       (if (procedure? _%method129554%_)
                           _%method129554%_
                           (if (let* ((_%klass129557%_ _%klass129529%_)
                                      (_%klass129562%_ _%klass129557%_))
                                 (__class-type-metaclass? _%klass129562%_))
                               (let ((_%$e129580%_ _%method129554%_))
                                 (if (eq? 'resolved _%$e129580%_)
                                     (_%metaclass-resolve-method129546%_)
                                     (if (eq? 'unknown _%$e129580%_)
                                         '#f
                                         (_%metaclass-resolve-method!129547%_))))
                               '#f))))
                   _%$e129549%_)
                  (if (let* ((_%klass129584%_ _%klass129529%_)
                             (_%klass129589%_ _%klass129584%_))
                        (__class-type-metaclass? _%klass129589%_))
                      (let ((_%tab129600%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass129529%_
                           _%tab129600%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!129547%_))
                      '#f)))))))
    (define direct-method-ref
      (lambda (_%klass126516%_ _%obj126517%_ _%id126518%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126516%_ 'class))
            (let ((_%klass126522%_ _%klass126516%_))
              (if (symbol? _%id126518%_)
                  (let ((_%id126532%_ _%id126518%_))
                    (__direct-method-ref
                     _%klass126522%_
                     _%obj126517%_
                     _%id126532%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@987.47-987.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id126518%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@987.26-987.31"
               'contract:
               'class-type?
               'value:
               _%klass126516%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass129476%_ _%obj129477%_ _%id129478%_)
        (let* ((_%klass129481%_ _%klass129476%_)
               (_%id129489%_ _%id129478%_)
               (_%mixins129498%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass129481%_ '6 '#f '#f)))
               (_%obj129501%_ _%obj129477%_)
               (_%id129504%_ _%id129489%_)
               (_%id129509%_ _%id129504%_))
          (__mixin-find-method _%mixins129498%_ _%obj129501%_ _%id129509%_))))
    (define mixin-method-ref
      (lambda (_%klass126662%_ _%obj126663%_ _%id126664%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126662%_ 'class))
            (let ((_%klass126668%_ _%klass126662%_))
              (if (symbol? _%id126664%_)
                  (let ((_%id126678%_ _%id126664%_))
                    (__mixin-method-ref
                     _%klass126668%_
                     _%obj126663%_
                     _%id126678%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1017.46-1017.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id126664%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1017.25-1017.30"
               'contract:
               'class-type?
               'value:
               _%klass126662%_)
              '#!void))))
    (define __bind-method!__%
      (lambda (_%klass129386%_ _%id129387%_ _%proc129388%_ _%rebind?129389%_)
        (let* ((_%id129392%_ _%id129387%_) (_%proc129400%_ _%proc129388%_))
          (letrec ((_%bind!129409%_
                    (lambda (_%ht129460%_)
                      (if (and (not _%rebind?129389%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht129460%_
                                  _%id129392%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass129386%_
                                 'method:
                                 _%id129392%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht129460%_
                               _%id129392%_
                               _%proc129400%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass129386%_ 'class))
                (let ((_%ht129412%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass129386%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht129412%_
                      (_%bind!129409%_ _%ht129412%_)
                      (let ((_%ht129414%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass129386%_
                           _%ht129414%_
                           '11
                           '#f
                           '#f))
                        (_%bind!129409%_ _%ht129414%_))))
                (if (let () (declare (not safe)) (##type? _%klass129386%_))
                    (let* ((_%klass129417%_
                            (__shadow-class__0 _%klass129386%_))
                           (_%id129420%_ _%id129392%_)
                           (_%proc129423%_ _%proc129400%_)
                           (_%rebind?129426%_ _%rebind?129389%_)
                           (_%id129431%_ _%id129420%_)
                           (_%proc129449%_ _%proc129423%_))
                      (__bind-method!__%
                       _%klass129417%_
                       _%id129431%_
                       _%proc129449%_
                       _%rebind?129426%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass129386%_)))))))
    (define __bind-method!__0
      (lambda (_%klass129465%_ _%id129466%_ _%proc129467%_)
        (let ((_%rebind?129469%_ '#f))
          (__bind-method!__%
           _%klass129465%_
           _%id129466%_
           _%proc129467%_
           _%rebind?129469%_))))
    (define __bind-method!
      (lambda _g135871_
        (let ((_g135872_ (let () (declare (not safe)) (##length _g135871_))))
          (cond ((let () (declare (not safe)) (##fx= _g135872_ 3))
                 (apply __bind-method!__0 _g135871_))
                ((let () (declare (not safe)) (##fx= _g135872_ 4))
                 (apply __bind-method!__% _g135871_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g135871_))))))
    (define bind-method!__%
      (lambda (_%klass126809%_ _%id126810%_ _%proc126811%_ _%rebind?126812%_)
        (if (symbol? _%id126810%_)
            (let ((_%id126816%_ _%id126810%_))
              (if (procedure? _%proc126811%_)
                  (let ((_%proc126826%_ _%proc126811%_))
                    (__bind-method!__%
                     _%klass126809%_
                     _%id126816%_
                     _%proc126826%_
                     _%rebind?126812%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1020.42-1020.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc126811%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1020.27-1020.29"
               'contract:
               'symbol?
               'value:
               _%id126810%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass126839%_ _%id126840%_ _%proc126841%_)
        (let ((_%rebind?126843%_ '#f))
          (bind-method!__%
           _%klass126839%_
           _%id126840%_
           _%proc126841%_
           _%rebind?126843%_))))
    (define bind-method!
      (lambda _g135873_
        (let ((_g135874_ (let () (declare (not safe)) (##length _g135873_))))
          (cond ((let () (declare (not safe)) (##fx= _g135874_ 3))
                 (apply bind-method!__0 _g135873_))
                ((let () (declare (not safe)) (##fx= _g135874_ 4))
                 (apply bind-method!__% _g135873_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g135873_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint129367%_ _%seed129368%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint129367%_
           procedure-hash
           eq?
           _%seed129368%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint129374%_ '#f) (_%seed129376%_ '0))
          (make-method-specializer-table__%
           _%size-hint129374%_
           _%seed129376%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint129378%_)
        (let ((_%seed129380%_ '0))
          (make-method-specializer-table__%
           _%size-hint129378%_
           _%seed129380%_))))
    (define make-method-specializer-table
      (lambda _g135875_
        (let ((_g135876_ (let () (declare (not safe)) (##length _g135875_))))
          (cond ((let () (declare (not safe)) (##fx= _g135876_ 0))
                 (apply make-method-specializer-table__0 _g135875_))
                ((let () (declare (not safe)) (##fx= _g135876_ 1))
                 (apply make-method-specializer-table__1 _g135875_))
                ((let () (declare (not safe)) (##fx= _g135876_ 2))
                 (apply make-method-specializer-table__% _g135875_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g135875_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint129347%_ _%seed129349%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint129347%_
           procedure-hash
           eq?
           _%seed129349%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint129355%_ '#f) (_%seed129357%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint129355%_
           _%seed129357%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint129359%_)
        (let ((_%seed129361%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint129359%_
           _%seed129361%_))))
    (define make-method-specializer-table/lock
      (lambda _g135877_
        (let ((_g135878_ (let () (declare (not safe)) (##length _g135877_))))
          (cond ((let () (declare (not safe)) (##fx= _g135878_ 0))
                 (apply make-method-specializer-table/lock__0 _g135877_))
                ((let () (declare (not safe)) (##fx= _g135878_ 1))
                 (apply make-method-specializer-table/lock__1 _g135877_))
                ((let () (declare (not safe)) (##fx= _g135878_ 2))
                 (apply make-method-specializer-table/lock__% _g135877_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g135877_))))))
    (define method-specializer-table-ref
      (lambda (_%tab129300%_ _%key129301%_ _%default129302%_)
        (let ((_%table129304%_
               (let () (declare (not safe)) (&raw-table-table _%tab129300%_)))
              (_%seed129305%_
               (let () (declare (not safe)) (&raw-table-seed _%tab129300%_))))
          (let* ((_%h129307%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key129301%_))
                         _%seed129305%_))
                 (_%size129310%_ (vector-length _%table129304%_))
                 (_%entries129313%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size129310%_ '2)))
                 (_%start129316%_
                  (let ((__tmp135879
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h129307%_ _%entries129313%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp135879 '1))))
            (let _%loop129320%_ ((_%probe129323%_ _%start129316%_)
                                 (_%i129325%_ '1)
                                 (_%deleted129327%_ '#f))
              (let ((_%k129330%_ (vector-ref _%table129304%_ _%probe129323%_)))
                (if (eq? _%k129330%_ (macro-unused-obj))
                    _%default129302%_
                    (if (eq? _%k129330%_ (macro-deleted-obj))
                        (_%loop129320%_
                         (let ((_%next-probe129335%_
                                (fx+ _%start129316%_
                                     _%i129325%_
                                     (fx* _%i129325%_ _%i129325%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe129335%_ _%size129310%_))
                         (let () (declare (not safe)) (##fx+ _%i129325%_ '1))
                         (let ((_%$e129338%_ _%deleted129327%_))
                           (if _%$e129338%_ _%$e129338%_ _%probe129323%_)))
                        (if (eq? _%key129301%_ _%k129330%_)
                            (vector-ref
                             _%table129304%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe129323%_ '1)))
                            (_%loop129320%_
                             (let ((_%next-probe129343%_
                                    (fx+ _%start129316%_
                                         _%i129325%_
                                         (fx* _%i129325%_ _%i129325%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe129343%_
                                _%size129310%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i129325%_ '1))
                             _%deleted129327%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab129273%_ _%key129274%_ _%default129275%_)
        (let ((_%lock129277%_
               (let () (declare (not safe)) (&raw-table-lock _%tab129273%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again129282%_ ((_%spin129285%_ '0))
              (if (let ((__tmp135880
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock129277%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp135880 '0))
                  (let ((__tmp135881 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock129277%_ '1 __tmp135881))
                  (if (let () (declare (not safe)) (##fx< _%spin129285%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again129282%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin129285%_ '1))))
                      (let ((_%owner129291%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock129277%_ '1))))
                        (if (eq? _%owner129291%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner129291%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again129282%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r129297%_
                 (method-specializer-table-ref
                  _%tab129273%_
                  _%key129274%_
                  _%default129275%_)))
            (let () (declare (not safe)) (##vector-set! _%lock129277%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock129277%_ '0 '0 '1))
            _%$r129297%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab129225%_ _%key129226%_ _%value129227%_)
        (let ((_%table129229%_
               (let () (declare (not safe)) (&raw-table-table _%tab129225%_)))
              (_%seed129230%_
               (let () (declare (not safe)) (&raw-table-seed _%tab129225%_))))
          (let* ((_%h129232%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key129226%_))
                         _%seed129230%_))
                 (_%size129235%_ (vector-length _%table129229%_))
                 (_%entries129238%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size129235%_ '2)))
                 (_%start129241%_
                  (let ((__tmp135882
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h129232%_ _%entries129238%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp135882 '1))))
            (let _%loop129245%_ ((_%probe129248%_ _%start129241%_)
                                 (_%i129250%_ '1)
                                 (_%deleted129252%_ '#f))
              (let ((_%k129255%_ (vector-ref _%table129229%_ _%probe129248%_)))
                (if (eq? _%k129255%_ (macro-unused-obj))
                    (if _%deleted129252%_
                        (begin
                          (vector-set!
                           _%table129229%_
                           _%deleted129252%_
                           _%key129226%_)
                          (vector-set!
                           _%table129229%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted129252%_ '1))
                           _%value129227%_)
                          ((lambda ()
                             (let ((__tmp135883
                                    (let ((__tmp135884
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab129225%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp135884 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab129225%_
                                __tmp135883)))))
                        (begin
                          (vector-set!
                           _%table129229%_
                           _%probe129248%_
                           _%key129226%_)
                          (vector-set!
                           _%table129229%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe129248%_ '1))
                           _%value129227%_)
                          ((lambda ()
                             (let ((__tmp135885
                                    (let ((__tmp135886
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab129225%_))))
                                      (declare (not safe))
                                      (##fx- __tmp135886 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab129225%_
                                __tmp135885))
                             (let ((__tmp135887
                                    (let ((__tmp135888
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab129225%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp135888 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab129225%_
                                __tmp135887))))))
                    (if (eq? _%k129255%_ (macro-deleted-obj))
                        (_%loop129245%_
                         (let ((_%next-probe129262%_
                                (fx+ _%start129241%_
                                     _%i129250%_
                                     (fx* _%i129250%_ _%i129250%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe129262%_ _%size129235%_))
                         (let () (declare (not safe)) (##fx+ _%i129250%_ '1))
                         (let ((_%$e129265%_ _%deleted129252%_))
                           (if _%$e129265%_ _%$e129265%_ _%probe129248%_)))
                        (if (eq? _%key129226%_ _%k129255%_)
                            (let ()
                              (vector-set!
                               _%table129229%_
                               _%probe129248%_
                               _%key129226%_)
                              (vector-set!
                               _%table129229%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe129248%_ '1))
                               _%value129227%_))
                            (_%loop129245%_
                             (let ((_%next-probe129270%_
                                    (fx+ _%start129241%_
                                         _%i129250%_
                                         (fx* _%i129250%_ _%i129250%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe129270%_
                                _%size129235%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i129250%_ '1))
                             _%deleted129252%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab129221%_ _%key129222%_ _%value129223%_)
        (if (let ((__tmp135891
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab129221%_)))
                  (__tmp135889
                   (let ((__tmp135890
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab129221%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp135890 '4))))
              (declare (not safe))
              (##fx< __tmp135891 __tmp135889))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab129221%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab129221%_
         _%key129222%_
         _%value129223%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab129193%_ _%key129194%_ _%value129195%_)
        (let ((_%lock129198%_
               (let () (declare (not safe)) (&raw-table-lock _%tab129193%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again129203%_ ((_%spin129206%_ '0))
              (if (let ((__tmp135892
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock129198%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp135892 '0))
                  (let ((__tmp135893 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock129198%_ '1 __tmp135893))
                  (if (let () (declare (not safe)) (##fx< _%spin129206%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again129203%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin129206%_ '1))))
                      (let ((_%owner129212%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock129198%_ '1))))
                        (if (eq? _%owner129212%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner129212%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again129203%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r129218%_
                 (method-specializer-table-set!
                  _%tab129193%_
                  _%key129194%_
                  _%value129195%_)))
            (let () (declare (not safe)) (##vector-set! _%lock129198%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock129198%_ '0 '0 '1))
            _%$r129218%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab129144%_
               _%key129145%_
               _%method-specializer-table-update!129146%_
               _%default129147%_)
        (let ((_%table129149%_
               (let () (declare (not safe)) (&raw-table-table _%tab129144%_)))
              (_%seed129150%_
               (let () (declare (not safe)) (&raw-table-seed _%tab129144%_))))
          (let* ((_%h129152%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key129145%_))
                         _%seed129150%_))
                 (_%size129155%_ (vector-length _%table129149%_))
                 (_%entries129158%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size129155%_ '2)))
                 (_%start129161%_
                  (let ((__tmp135894
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h129152%_ _%entries129158%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp135894 '1))))
            (let _%loop129165%_ ((_%probe129168%_ _%start129161%_)
                                 (_%i129170%_ '1)
                                 (_%deleted129172%_ '#f))
              (let ((_%k129175%_ (vector-ref _%table129149%_ _%probe129168%_)))
                (if (eq? _%k129175%_ (macro-unused-obj))
                    (if _%deleted129172%_
                        (begin
                          (vector-set!
                           _%table129149%_
                           _%deleted129172%_
                           _%key129145%_)
                          (vector-set!
                           _%table129149%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted129172%_ '1))
                           (_%method-specializer-table-update!129146%_
                            _%default129147%_))
                          ((lambda ()
                             (let ((__tmp135895
                                    (let ((__tmp135896
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab129144%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp135896 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab129144%_
                                __tmp135895)))))
                        (begin
                          (vector-set!
                           _%table129149%_
                           _%probe129168%_
                           _%key129145%_)
                          (vector-set!
                           _%table129149%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe129168%_ '1))
                           (_%method-specializer-table-update!129146%_
                            _%default129147%_))
                          ((lambda ()
                             (let ((__tmp135897
                                    (let ((__tmp135898
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab129144%_))))
                                      (declare (not safe))
                                      (##fx- __tmp135898 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab129144%_
                                __tmp135897))
                             (let ((__tmp135899
                                    (let ((__tmp135900
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab129144%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp135900 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab129144%_
                                __tmp135899))))))
                    (if (eq? _%k129175%_ (macro-deleted-obj))
                        (_%loop129165%_
                         (let ((_%next-probe129182%_
                                (fx+ _%start129161%_
                                     _%i129170%_
                                     (fx* _%i129170%_ _%i129170%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe129182%_ _%size129155%_))
                         (let () (declare (not safe)) (##fx+ _%i129170%_ '1))
                         (let ((_%$e129185%_ _%deleted129172%_))
                           (if _%$e129185%_ _%$e129185%_ _%probe129168%_)))
                        (if (eq? _%key129145%_ _%k129175%_)
                            (let ()
                              (vector-set!
                               _%table129149%_
                               _%probe129168%_
                               _%key129145%_)
                              (vector-set!
                               _%table129149%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe129168%_ '1))
                               (_%method-specializer-table-update!129146%_
                                (vector-ref
                                 _%table129149%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe129168%_ '1))))))
                            (_%loop129165%_
                             (let ((_%next-probe129190%_
                                    (fx+ _%start129161%_
                                         _%i129170%_
                                         (fx* _%i129170%_ _%i129170%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe129190%_
                                _%size129155%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i129170%_ '1))
                             _%deleted129172%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab129139%_
               _%key129140%_
               _%method-specializer-table-update!129141%_
               _%default129142%_)
        (if (let ((__tmp135903
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab129139%_)))
                  (__tmp135901
                   (let ((__tmp135902
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab129139%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp135902 '4))))
              (declare (not safe))
              (##fx< __tmp135903 __tmp135901))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab129139%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab129139%_
         _%key129140%_
         _%method-specializer-table-update!129141%_
         _%default129142%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab129110%_
               _%key129111%_
               _%method-specializer-table-update!129112%_
               _%default129113%_)
        (let ((_%lock129116%_
               (let () (declare (not safe)) (&raw-table-lock _%tab129110%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again129121%_ ((_%spin129124%_ '0))
              (if (let ((__tmp135904
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock129116%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp135904 '0))
                  (let ((__tmp135905 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock129116%_ '1 __tmp135905))
                  (if (let () (declare (not safe)) (##fx< _%spin129124%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again129121%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin129124%_ '1))))
                      (let ((_%owner129130%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock129116%_ '1))))
                        (if (eq? _%owner129130%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner129130%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again129121%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r129136%_
                 (_%method-specializer-table-update!129112%_
                  _%tab129110%_
                  _%key129111%_
                  _%method-specializer-table-update!129112%_
                  _%default129113%_)))
            (let () (declare (not safe)) (##vector-set! _%lock129116%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock129116%_ '0 '0 '1))
            _%$r129136%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab129067%_ _%key129068%_)
        (let ((_%table129070%_
               (let () (declare (not safe)) (&raw-table-table _%tab129067%_)))
              (_%seed129072%_
               (let () (declare (not safe)) (&raw-table-seed _%tab129067%_))))
          (let* ((_%h129075%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key129068%_))
                         _%seed129072%_))
                 (_%size129078%_ (vector-length _%table129070%_))
                 (_%entries129081%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size129078%_ '2)))
                 (_%start129084%_
                  (let ((__tmp135906
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h129075%_ _%entries129081%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp135906 '1))))
            (let _%loop129088%_ ((_%probe129091%_ _%start129084%_)
                                 (_%i129093%_ '1))
              (let ((_%k129096%_ (vector-ref _%table129070%_ _%probe129091%_)))
                (if (eq? _%k129096%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k129096%_ (macro-deleted-obj))
                        (_%loop129088%_
                         (let ((_%next-probe129101%_
                                (fx+ _%start129084%_
                                     _%i129093%_
                                     (fx* _%i129093%_ _%i129093%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe129101%_ _%size129078%_))
                         (let () (declare (not safe)) (##fx+ _%i129093%_ '1)))
                        (if (eq? _%key129068%_ _%k129096%_)
                            (let ()
                              (vector-set!
                               _%table129070%_
                               _%probe129091%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table129070%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe129091%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp135907
                                        (let ((__tmp135908
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab129067%_))))
                                          (declare (not safe))
                                          (##fx- __tmp135908 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab129067%_
                                    __tmp135907)))))
                            (_%loop129088%_
                             (let ((_%next-probe129107%_
                                    (fx+ _%start129084%_
                                         _%i129093%_
                                         (fx* _%i129093%_ _%i129093%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe129107%_
                                _%size129078%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i129093%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab129039%_ _%key129041%_)
        (let ((_%lock129044%_
               (let () (declare (not safe)) (&raw-table-lock _%tab129039%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again129049%_ ((_%spin129052%_ '0))
              (if (let ((__tmp135909
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock129044%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp135909 '0))
                  (let ((__tmp135910 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock129044%_ '1 __tmp135910))
                  (if (let () (declare (not safe)) (##fx< _%spin129052%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again129049%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin129052%_ '1))))
                      (let ((_%owner129058%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock129044%_ '1))))
                        (if (eq? _%owner129058%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner129058%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again129049%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r129064%_
                 (method-specializer-table-delete!
                  _%tab129039%_
                  _%key129041%_)))
            (let () (declare (not safe)) (##vector-set! _%lock129044%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock129044%_ '0 '0 '1))
            _%$r129064%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc129036%_ _%specializer129037%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc129036%_
         _%specializer129037%_)))
    (define __lookup-method-specializer
      (lambda (_%proc129034%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc129034%_
         '#f)))
    (define __specialize-class
      (lambda (_%klass129016%_)
        (let* ((_%klass129019%_ _%klass129016%_)
               (_%$e129028%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass129019%_ '12 '#f '#f))))
          (if _%$e129028%_
              _%$e129028%_
              (let ((_%method-table129032%_
                     (___specialize-class _%klass129019%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass129019%_
                   _%method-table129032%_
                   '12
                   '#f
                   '#f))
                _%method-table129032%_)))))
    (define specialize-class
      (lambda (_%klass126970%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126970%_ 'class))
            (let ((_%klass126974%_ _%klass126970%_))
              (__specialize-class _%klass126974%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1070.25-1070.30"
               'contract:
               'class-type?
               'value:
               _%klass126970%_)
              '#!void))))
    (define __specialize-method
      (lambda (_%klass129000%_
               _%method-table129001%_
               _%method129002%_
               _%proc129003%_)
        (let ((_%$e129005%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table129001%_
                  _%method129002%_
                  '#f))))
          (if _%$e129005%_
              _%$e129005%_
              (let ((_%$e129008%_
                     (__lookup-method-specializer _%proc129003%_)))
                (if _%$e129008%_
                    ((lambda (_%specialize129011%_)
                       (let ((_%specialized-proc129013%_
                              (_%specialize129011%_
                               _%klass129000%_
                               _%method-table129001%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table129001%_
                          _%method129002%_
                          _%specialized-proc129013%_)))
                     _%$e129008%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table129001%_
                       _%method129002%_
                       _%proc129003%_))))))))
    (define ___specialize-class
      (lambda (_%klass128867%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass128867%_ 'class))
            (if (let* ((_%klass128870%_ _%klass128867%_)
                       (_%klass128875%_ _%klass128870%_))
                  (__class-type-metaclass? _%klass128875%_))
                (let* ((_%obj128887%_ _%klass128867%_)
                       (_%id128890%_ 'specialize-class)
                       (_%args128893%_ '())
                       (_%id128898%_ _%id128890%_))
                  (declare (not safe))
                  (##apply __call-method
                           _%obj128887%_
                           _%id128898%_
                           _%args128893%_))
                (if (let* ((_%pred128911%_ class-type-metaclass?)
                           (_%lst128914%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass128867%_
                               '6
                               '#f
                               '#f)))
                           (_%pred128919%_ _%pred128911%_))
                      (declare (not safe))
                      (__find _%pred128919%_ _%lst128914%_))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass128867%_)
                    (let ((_%method-table128932%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop128934%_ ((_%rest128936%_
                                            (let* ((_%klass128983%_
                                                    _%klass128867%_)
                                                   (_%klass128988%_
                                                    _%klass128983%_))
                                              (__class-precedence-list
                                               _%klass128988%_))))
                        (let* ((_%rest128937128945%_ _%rest128936%_)
                               (_%else128939128953%_
                                (lambda () _%method-table128932%_))
                               (_%K128941128971%_
                                (lambda (_%rest128956%_ _%xklass128957%_)
                                  (let ((_%xmethod-table128958128960%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass128957%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table128958128960%_
                                        (let* ((_%xmethod-table128962%_
                                                _%xmethod-table128958128960%_)
                                               (__tmp135911
                                                (lambda (_%g128963128966%_
                                                         _%g128964128968%_)
                                                  (__specialize-method
                                                   _%klass128867%_
                                                   _%method-table128932%_
                                                   _%g128963128966%_
                                                   _%g128964128968%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table128962%_
                                           __tmp135911))
                                        '#f))
                                  (_%loop128934%_ _%rest128956%_))))
                          (if (pair? _%rest128937128945%_)
                              (let ((_%hd128942128974%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest128937128945%_)))
                                    (_%tl128943128976%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest128937128945%_))))
                                (let* ((_%xklass128979%_ _%hd128942128974%_)
                                       (_%rest128981%_ _%tl128943128976%_))
                                  (_%K128941128971%_
                                   _%rest128981%_
                                   _%xklass128979%_)))
                              (_%else128939128953%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass128867%_))
                (__specialize-class (__shadow-class__0 _%klass128867%_))
                (error '"bad class; cannot specialize" _%klass128867%_)))))
    (define __seal-class!
      (lambda (_%klass128730%_)
        (let ((_%klass128733%_ _%klass128730%_))
          (if (let* ((_%klass128742%_ _%klass128733%_)
                     (_%klass128747%_ _%klass128742%_))
                (__class-type-sealed? _%klass128747%_))
              '#!void
              (begin
                (if (let* ((_%klass128760%_ _%klass128733%_)
                           (_%klass128765%_ _%klass128760%_))
                      (__class-type-metaclass? _%klass128765%_))
                    (let ()
                      (let* ((_%obj128776%_ _%klass128733%_)
                             (_%id128779%_ 'seal-class!)
                             (_%args128782%_ '())
                             (_%id128787%_ _%id128779%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj128776%_
                                 _%id128787%_
                                 _%args128782%_))
                      (let* ((_%klass128800%_ _%klass128733%_)
                             (_%klass128805%_ _%klass128800%_))
                        (__specialize-class _%klass128805%_)))
                    (if (let* ((_%pred128815%_ class-type-metaclass?)
                               (_%lst128818%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass128733%_
                                   '6
                                   '#f
                                   '#f)))
                               (_%pred128823%_ _%pred128815%_))
                          (declare (not safe))
                          (__find _%pred128823%_ _%lst128818%_))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass128733%_)
                        (let* ((_%klass128836%_ _%klass128733%_)
                               (_%klass128841%_ _%klass128836%_))
                          (__specialize-class _%klass128841%_))))
                (let* ((_%klass128852%_ _%klass128733%_)
                       (_%klass128857%_ _%klass128852%_))
                  (__class-type-seal! _%klass128857%_)))))))
    (define seal-class!
      (lambda (_%klass127104%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127104%_ 'class))
            (let ((_%klass127108%_ _%klass127104%_))
              (__seal-class! _%klass127108%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1116.20-1116.25"
               'contract:
               'class-type?
               'value:
               _%klass127104%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass128618%_ _%obj128619%_ _%id128620%_)
        (let* ((_%subklass128623%_ _%subklass128618%_)
               (_%id128631%_ _%id128620%_))
          (letrec ((_%find-next-method128640%_
                    (lambda (_%klass128642%_)
                      (let _%lp128644%_ ((_%rest128646%_
                                          (let ((_%klass128715%_
                                                 _%klass128642%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%klass128715%_
                                                   'class))
                                                (let ((_%klass128720%_
                                                       _%klass128715%_))
                                                  (__class-precedence-list
                                                   _%klass128720%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/mop
                                                   'contract:
                                                   'class-type?
                                                   'value:
                                                   _%klass128715%_)
                                                  '#!void)))))
                        (let* ((_%rest128647128655%_ _%rest128646%_)
                               (_%else128649128663%_ (lambda () '#f))
                               (_%K128651128703%_
                                (lambda (_%rest128666%_ _%klass128667%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass128623%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass128667%_)))
                                      (let* ((_%mixins128669%_ _%rest128666%_)
                                             (_%obj128672%_ _%obj128619%_)
                                             (_%id128675%_ _%id128631%_)
                                             (_%id128680%_ _%id128675%_))
                                        (__mixin-find-method
                                         _%mixins128669%_
                                         _%obj128672%_
                                         _%id128680%_))
                                      (_%lp128644%_ _%rest128666%_)))))
                          (if (pair? _%rest128647128655%_)
                              (let ((_%hd128652128706%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest128647128655%_)))
                                    (_%tl128653128708%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest128647128655%_))))
                                (let* ((_%klass128711%_ _%hd128652128706%_)
                                       (_%rest128713%_ _%tl128653128708%_))
                                  (_%K128651128703%_
                                   _%rest128713%_
                                   _%klass128711%_)))
                              (_%else128649128663%_)))))))
            (_%find-next-method128640%_ (class-of _%obj128619%_))))))
    (define next-method
      (lambda (_%subklass127238%_ _%obj127239%_ _%id127240%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass127238%_ 'class))
            (let ((_%subklass127244%_ _%subklass127238%_))
              (if (symbol? _%id127240%_)
                  (let ((_%id127254%_ _%id127240%_))
                    (__next-method
                     _%subklass127244%_
                     _%obj127239%_
                     _%id127254%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1138.44-1138.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id127240%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1138.20-1138.28"
               'contract:
               'class-type?
               'value:
               _%subklass127238%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass128553%_ _%obj128554%_ _%id128555%_ . _%args128556%_)
        (let* ((_%subklass128559%_ _%subklass128553%_)
               (_%id128567%_ _%id128555%_)
               (_%$e128612%_
                (let* ((_%subklass128576%_ _%subklass128559%_)
                       (_%obj128579%_ _%obj128554%_)
                       (_%id128582%_ _%id128567%_)
                       (_%subklass128587%_ _%subklass128576%_)
                       (_%id128602%_ _%id128582%_))
                  (__next-method
                   _%subklass128587%_
                   _%obj128579%_
                   _%id128602%_))))
          (if _%$e128612%_
              ((lambda (_%methodf128615%_)
                 (apply _%methodf128615%_ _%obj128554%_ _%args128556%_))
               _%$e128612%_)
              (error '"cannot find next method"
                     'object:
                     _%obj128554%_
                     'method:
                     _%id128567%_)))))
    (define call-next-method
      (lambda (_%subklass127384%_ _%obj127385%_ _%id127386%_ . _%args127387%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass127384%_ 'class))
            (let ((_%subklass127391%_ _%subklass127384%_))
              (if (symbol? _%id127386%_)
                  (let ((_%id127401%_ _%id127386%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass127391%_
                             _%obj127385%_
                             _%id127401%_
                             _%args127387%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1149.49-1149.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id127386%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1149.25-1149.33"
               'contract:
               'class-type?
               'value:
               _%subklass127384%_)
              '#!void))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type128336%_ _%properties128337%_)
        (letrec ((_%shadow-type-id128339%_
                  (lambda (_%type128541%_)
                    (let ((__tmp135912
                           (let ()
                             (declare (not safe))
                             (##type-name _%type128541%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp135912 '"::t"))))
                 (_%shadow-type-name128340%_
                  (lambda (_%type128539%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type128539%_))))
                 (_%make-shadow-class128341%_
                  (lambda (_%type128421%_ _%precedence-list128422%_)
                    (let* ((_%super128424%_
                            (if (pair? _%precedence-list128422%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list128422%_))
                                      '())
                                '()))
                           (_%klass128536%_
                            (let* ((_%id128426%_
                                    (_%shadow-type-id128339%_ _%type128421%_))
                                   (_%name128429%_
                                    (let ()
                                      (declare (not safe))
                                      (##type-name _%type128421%_)))
                                   (_%direct-supers128432%_ _%super128424%_)
                                   (_%direct-slots128435%_ '())
                                   (_%properties128461%_
                                    (cons (cons 'struct: '#t)
                                          (cons (cons 'system: '#t)
                                                (cons (cons 'system-type:
                                                            _%type128421%_)
                                                      (let ((__tmp135913
                                                             (if (let ((_%type128438%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%type128421%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##type? _%type128438%_))
                               (let ((_%type128443%_ _%type128438%_))
                                 (__type-extensible? _%type128443%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  '##type?
                                  'value:
                                  _%type128438%_)
                                 '#!void)))
                         '()
                         (cons (cons 'final: '#t) '()))))
                (declare (not safe))
                (foldr__0 cons _%properties128337%_ __tmp135913))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%constructor128464%_ '#f)
                                   (_%id128469%_ _%id128426%_))
                              (if (symbol? _%name128429%_)
                                  (let* ((_%name128480%_ _%name128429%_)
                                         (_%direct-supers128490%_
                                          _%direct-supers128432%_)
                                         (_%direct-slots128500%_
                                          _%direct-slots128435%_)
                                         (_%properties128510%_
                                          _%properties128461%_))
                                    (if ((lambda (_%$obj128519%_)
                                           (or (not _%$obj128519%_)
                                               (symbol? _%$obj128519%_)))
                                         _%constructor128464%_)
                                        (let ((_%constructor128526%_
                                               _%constructor128464%_))
                                          (__make-class-type
                                           _%id128469%_
                                           _%name128480%_
                                           _%direct-supers128490%_
                                           _%direct-slots128500%_
                                           _%properties128510%_
                                           _%constructor128526%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '(? (or not symbol?))
                                           'value:
                                           _%constructor128464%_)
                                          '#!void)))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     'symbol?
                                     'value:
                                     _%name128429%_)
                                    '#!void)))))
                      (let ((__tmp135914
                             (let ()
                               (declare (not safe))
                               (##type-id _%type128421%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp135914
                         _%klass128536%_))
                      _%klass128536%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again128345%_ ((_%spin128348%_ '0))
              (if (let ((__tmp135915
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp135915 '0))
                  (let ((__tmp135916 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp135916))
                  (if (let () (declare (not safe)) (##fx< _%spin128348%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again128345%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin128348%_ '1))))
                      (let ((_%owner128354%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner128354%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner128354%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again128345%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e128360%_
                 (let ((__tmp135917
                        (let ()
                          (declare (not safe))
                          (##type-id _%type128336%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp135917 '#f))))
            (if _%$e128360%_
                ((lambda (_%klass128363%_)
                   (let ()
                     (declare (not safe))
                     (##vector-set! __shadow-classes-lock '1 '#f))
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-lock '0 '0 '1))
                   _%klass128363%_)
                 _%$e128360%_)
                (let _%loop128366%_ ((_%super128368%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type128336%_)))
                                     (_%hierarchy128369%_ '()))
                  (if (not _%super128368%_)
                      (let _%loop128372%_ ((_%rest128374%_ _%hierarchy128369%_)
                                           (_%precedence-list128375%_ '()))
                        (let* ((_%rest128376128384%_ _%rest128374%_)
                               (_%else128378128394%_
                                (lambda ()
                                  (let ((_%klass128392%_
                                         (_%make-shadow-class128341%_
                                          _%type128336%_
                                          _%precedence-list128375%_)))
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
                                    _%klass128392%_)))
                               (_%K128380128408%_
                                (lambda (_%rest128397%_ _%type128398%_)
                                  (let ((_%$e128400%_
                                         (let ((__tmp135918
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type128398%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp135918
                                            '#f))))
                                    (if _%$e128400%_
                                        ((lambda (_%klass128403%_)
                                           (_%loop128372%_
                                            _%rest128397%_
                                            (cons _%klass128403%_
                                                  _%precedence-list128375%_)))
                                         _%$e128400%_)
                                        (let ((_%klass128406%_
                                               (_%make-shadow-class128341%_
                                                _%type128398%_
                                                _%precedence-list128375%_)))
                                          (_%loop128372%_
                                           _%rest128397%_
                                           (cons _%klass128406%_
                                                 _%precedence-list128375%_))))))))
                          (if (pair? _%rest128376128384%_)
                              (let ((_%hd128381128411%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest128376128384%_)))
                                    (_%tl128382128413%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest128376128384%_))))
                                (let* ((_%type128416%_ _%hd128381128411%_)
                                       (_%rest128418%_ _%tl128382128413%_))
                                  (_%K128380128408%_
                                   _%rest128418%_
                                   _%type128416%_)))
                              (_%else128378128394%_))))
                      (_%loop128366%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super128368%_))
                       (cons _%super128368%_ _%hierarchy128369%_)))))))))
    (define __shadow-class__0
      (lambda (_%type128546%_)
        (let ((_%properties128548%_ '()))
          (__shadow-class__% _%type128546%_ _%properties128548%_))))
    (define __shadow-class
      (lambda _g135919_
        (let ((_g135920_ (let () (declare (not safe)) (##length _g135919_))))
          (cond ((let () (declare (not safe)) (##fx= _g135920_ 1))
                 (apply __shadow-class__0 _g135919_))
                ((let () (declare (not safe)) (##fx= _g135920_ 2))
                 (apply __shadow-class__% _g135919_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g135919_))))))
    (define __type
      (let* ((_%tb128324%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e128326%_ _%tb128324%_))
        (if (eq? '2 _%$e128326%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e128326%_)
                (let ((_%flonum-self-tagging-tags128329%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits128330%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e128332%_ _%flonum-self-tagging-tags128329%_))
                    (if (eq? '0 _%$e128332%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits128330%_ '2))
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
                        (if (eq? '1 _%$e128332%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits128330%_ '2))
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
                            (if (eq? '2 _%$e128332%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e128332%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e128332%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags128329%_))))))))
                (error '"unexpected tag width" _%tb128324%_)))))
    (define __class
      (let* ((_%len128272%_
              (let () (declare (not safe)) (##vector-length __type)))
             (_%cv128274%_
              (let () (declare (not safe)) (##make-vector _%len128272%_ '#f))))
        (let _%loop128277%_ ((_%i128279%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i128279%_ _%len128272%_))
              (let* ((_%t128281%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i128279%_)))
                     (_%f128321%_
                      (if (eq? _%t128281%_ 'undefined)
                          (lambda (_%obj128284%_)
                            (error '"object type is undefined" _%obj128284%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t128281%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj128287%_)
                                (declare (not interrupts-enabled) (not safe))
                                (__system-class _%t128281%_))
                              (if (eq? _%t128281%_ 'subtyped)
                                  (lambda (_%obj128291%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st128294%_
                                           (##subtype _%obj128291%_)))
                                      (if (##fx= _%st128294%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass128297%_
                                                 (##structure-type
                                                  _%obj128291%_)))
                                            (if (##structure-instance-of?
                                                 _%klass128297%_
                                                 'class)
                                                _%klass128297%_
                                                (__shadow-class__0
                                                 _%klass128297%_)))
                                          (if (##fx= _%st128294%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj128291%_)
                                                         '1)
                                                  (__system-class 'box)
                                                  (__system-class 'values))
                                              (let ((_%$e128300%_
                                                     (##vector-ref
                                                      __subtype-id
                                                      _%st128294%_)))
                                                (if _%$e128300%_
                                                    (__system-class
                                                     _%$e128300%_)
                                                    (error '"unknown class"
                                                           'subtype:
                                                           _%st128294%_
                                                           'object:
                                                           _%obj128291%_)))))))
                                  (if (eq? _%t128281%_ 'special)
                                      (lambda (_%obj128305%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (if (char? _%obj128305%_)
                                            (__system-class 'char)
                                            (if (eq? _%obj128305%_ '())
                                                (__system-class 'null)
                                                (if (eq? _%obj128305%_ '#f)
                                                    (__system-class 'boolean)
                                                    (if (eq? _%obj128305%_ '#t)
                                                        (__system-class
                                                         'boolean)
                                                        (if (eq? _%obj128305%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void)
                    (__system-class 'void)
                    (if (eq? _%obj128305%_ '#!eof)
                        (__system-class 'eof)
                        (if (eq? _%obj128305%_ '#!unbound)
                            (__system-class 'unbound)
                            (if (eq? _%obj128305%_ '#!unbound2)
                                (__system-class 'unbound2)
                                (if (eq? _%obj128305%_ '#!optional)
                                    (__system-class 'optional)
                                    (if (eq? _%obj128305%_ '#!rest)
                                        (__system-class 'rest)
                                        (if (eq? _%obj128305%_ '#!key)
                                            (__system-class 'key)
                                            (__system-class
                                             'special)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t128281%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv128274%_ _%i128279%_ _%f128321%_))
                (_%loop128277%_
                 (let () (declare (not safe)) (##fx+ _%i128279%_ '1))))
              _%cv128274%_))))
    (define type-of
      (lambda (_%obj128268%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj128268%_)))))
    (define class-of
      (lambda (_%obj128259%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t128263%_ (##type _%obj128259%_))
                 (_%f128265%_ (##vector-ref __class _%t128263%_)))
            (_%f128265%_ _%obj128259%_)))))
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
      (lambda (_%id128253%_)
        (let ((_%$e128255%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id128253%_ '#f))))
          (if _%$e128255%_
              _%$e128255%_
              (error '"unknown system class" _%id128253%_)))))
    (define __make-system-class
      (lambda (_%id128155%_ _%super128156%_ _%properties128157%_)
        (let ((_%klass128251%_
               (let* ((_%id128159%_ _%id128155%_)
                      (_%name128162%_ _%id128155%_)
                      (_%direct-supers128165%_ _%super128156%_)
                      (_%direct-slots128168%_ '())
                      (_%properties128171%_
                       (cons (cons 'system: '#t)
                             (let ()
                               (declare (not safe))
                               (foldr__0 cons '() _%properties128157%_))))
                      (_%constructor128174%_ '#f))
                 (if (symbol? _%id128159%_)
                     (let ((_%id128179%_ _%id128159%_))
                       (if (symbol? _%name128162%_)
                           (let ((_%name128195%_ _%name128162%_))
                             (if (list? _%direct-supers128165%_)
                                 (let* ((_%direct-supers128205%_
                                         _%direct-supers128165%_)
                                        (_%direct-slots128215%_
                                         _%direct-slots128168%_)
                                        (_%properties128225%_
                                         _%properties128171%_))
                                   (if ((lambda (_%$obj128234%_)
                                          (or (not _%$obj128234%_)
                                              (symbol? _%$obj128234%_)))
                                        _%constructor128174%_)
                                       (let ((_%constructor128241%_
                                              _%constructor128174%_))
                                         (__make-class-type
                                          _%id128179%_
                                          _%name128195%_
                                          _%direct-supers128205%_
                                          _%direct-slots128215%_
                                          _%properties128225%_
                                          _%constructor128241%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          '(? (or not symbol?))
                                          'value:
                                          _%constructor128174%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'list?
                                    'value:
                                    _%direct-supers128165%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'symbol?
                              'value:
                              _%name128162%_)
                             '#!void)))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id128159%_)
                       '#!void)))))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id128155%_
             _%klass128251%_))
          _%klass128251%_)))))
