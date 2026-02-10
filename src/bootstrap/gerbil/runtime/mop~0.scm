(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1770744573)
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
      (let ((_%flags133826%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties133827%_ '((direct-slots:) (system: . #t)))
            (_%slot-table133828%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags133826%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table133828%_
           _%properties133827%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots133783%_
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
             (_%slot-vector133785%_ (list->vector (cons '#f _%slots133783%_)))
             (_%slot-table133811%_
              (let ((_%slot-table133787%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp136853
                       (lambda (_%slot133789%_ _%field133790%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table133787%_
                            _%slot133789%_
                            _%field133790%_))
                         (let ((__tmp136854
                                (let ((_%sym133792%_ _%slot133789%_))
                                  (if (symbol? _%sym133792%_)
                                      (let ((_%sym133797%_ _%sym133792%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym133797%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym133792%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table133787%_
                            __tmp136854
                            _%field133790%_))))
                      (__tmp136851
                       (let ((__tmp136852
                              (let ()
                                (declare (not safe))
                                (##length _%slots133783%_))))
                         (declare (not safe))
                         (##iota __tmp136852 '1))))
                  (declare (not safe))
                  (##for-each __tmp136853 _%slots133783%_ __tmp136851))
                _%slot-table133787%_))
             (_%flags133813%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields133819%_
              (list->vector
               (let ((__tmp136855
                      (map (lambda (_%g133814133816%_)
                             (list _%g133814133816%_ '5 '#f))
                           (drop _%slots133783%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp136855))))
             (_%properties133821%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots133783%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t133823%_
              (let ((__tmp136856 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags133813%_
                 ##type-type
                 _%fields133819%_
                 __tmp136856
                 _%slot-vector133785%_
                 _%slot-table133811%_
                 _%properties133821%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t133823%_ _%t133823%_))
        _%t133823%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags133779%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties133780%_ '((direct-slots:) (system: . #t)))
            (_%slot-table133781%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp136857 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags133779%_
           '#f
           '#()
           __tmp136857
           '#(#f)
           _%slot-table133781%_
           _%properties133780%_
           '#f
           '#f
           '#f
           '#f))))
    (define __class-type
      (lambda (_%klass133767%_)
        (let ((_%klass133770%_ _%klass133767%_))
          (declare (not safe))
          (##structure-type _%klass133770%_))))
    (define class-type
      (lambda (_%klass119771%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass119771%_ 'class))
            (let ((_%klass119775%_ _%klass119771%_))
              (__class-type _%klass119775%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass119771%_)
              '#!void))))
    (define class-type?
      (lambda (_%obj133765%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj133765%_ 'class))))
    (define __class-type=?
      (lambda (_%x133744%_ _%y133745%_)
        (let* ((_%x133748%_ _%x133744%_) (_%y133756%_ _%y133745%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x133748%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y133756%_ '1 '#f '#f))))))
    (define class-type=?
      (lambda (_%x119905%_ _%y119906%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x119905%_ 'class))
            (let ((_%x119910%_ _%x119905%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y119906%_ 'class))
                  (let ((_%y119920%_ _%y119906%_))
                    (__class-type=? _%x119910%_ _%y119920%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y119906%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x119905%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type133732%_)
        (let* ((_%type133735%_ _%type133732%_)
               (__tmp136858
                (let ((__tmp136859
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type133735%_))))
                  (declare (not safe))
                  (##fxand __tmp136859 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp136858 type-flag-opaque))))
    (define type-opaque?
      (lambda (_%type120352%_)
        (if (let () (declare (not safe)) (##type? _%type120352%_))
            (let ((_%type120356%_ _%type120352%_))
              (__type-opaque? _%type120356%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type120352%_)
              '#!void))))
    (define __class-type-opaque?
      (lambda (_%klass133720%_)
        (let* ((_%klass133723%_ _%klass133720%_)
               (__tmp136860
                (let ((__tmp136861
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass133723%_))))
                  (declare (not safe))
                  (##fxand __tmp136861 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp136860 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass120486%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass120486%_ 'class))
            (let ((_%klass120490%_ _%klass120486%_))
              (__class-type-opaque? _%klass120490%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass120486%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type133708%_)
        (let* ((_%type133711%_ _%type133708%_)
               (__tmp136862
                (let ((__tmp136863
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type133711%_))))
                  (declare (not safe))
                  (##fxand __tmp136863 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp136862 type-flag-extensible))))
    (define type-extensible?
      (lambda (_%type120620%_)
        (if (let () (declare (not safe)) (##type? _%type120620%_))
            (let ((_%type120624%_ _%type120620%_))
              (__type-extensible? _%type120624%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type120620%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type133696%_)
        (let* ((_%type133699%_ _%type133696%_)
               (__tmp136864
                (let ((__tmp136865
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type133699%_))))
                  (declare (not safe))
                  (##fxand __tmp136865 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp136864 '0))))
    (define class-type-final?
      (lambda (_%type120754%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type120754%_ 'class))
            (let ((_%type120758%_ _%type120754%_))
              (__class-type-final? _%type120758%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type120754%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass133684%_)
        (let* ((_%klass133687%_ _%klass133684%_)
               (__tmp136866
                (let ((__tmp136867
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass133687%_))))
                  (declare (not safe))
                  (##fxand __tmp136867 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp136866 class-type-flag-struct))))
    (define class-type-struct?
      (lambda (_%klass120888%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass120888%_ 'class))
            (let ((_%klass120892%_ _%klass120888%_))
              (__class-type-struct? _%klass120892%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass120888%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass133672%_)
        (let* ((_%klass133675%_ _%klass133672%_)
               (__tmp136868
                (let ((__tmp136869
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass133675%_))))
                  (declare (not safe))
                  (##fxand __tmp136869 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp136868 class-type-flag-sealed))))
    (define class-type-sealed?
      (lambda (_%klass121022%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121022%_ 'class))
            (let ((_%klass121026%_ _%klass121022%_))
              (__class-type-sealed? _%klass121026%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass121022%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass133660%_)
        (let* ((_%klass133663%_ _%klass133660%_)
               (__tmp136870
                (let ((__tmp136871
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass133663%_))))
                  (declare (not safe))
                  (##fxand __tmp136871 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp136870 class-type-flag-metaclass))))
    (define class-type-metaclass?
      (lambda (_%klass121156%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121156%_ 'class))
            (let ((_%klass121160%_ _%klass121156%_))
              (__class-type-metaclass? _%klass121160%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass121156%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass133648%_)
        (let* ((_%klass133651%_ _%klass133648%_)
               (__tmp136872
                (let ((__tmp136873
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass133651%_))))
                  (declare (not safe))
                  (##fxand __tmp136873 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp136872 class-type-flag-system))))
    (define class-type-system?
      (lambda (_%klass121290%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121290%_ 'class))
            (let ((_%klass121294%_ _%klass121290%_))
              (__class-type-system? _%klass121294%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass121290%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass133636%_)
        (let* ((_%klass133639%_ _%klass133636%_)
               (__tmp136874
                (let ((__tmp136875
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass133639%_))))
                  (declare (not safe))
                  (##fxand __tmp136875 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp136874 class-type-flag-acyclic))))
    (define class-type-acyclic?
      (lambda (_%klass121424%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121424%_ 'class))
            (let ((_%klass121428%_ _%klass121424%_))
              (__class-type-acyclic? _%klass121428%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass121424%_)
              '#!void))))
    (define make-class-type-descriptor
      (lambda (_%type-id133443%_
               _%type-name133444%_
               _%type-super133445%_
               _%precedence-list133446%_
               _%slot-vector133447%_
               _%properties133448%_
               _%constructor133449%_
               _%slot-table133450%_
               _%methods133451%_)
        (letrec ((_%make-props!133454%_
                  (lambda (_%key133586%_)
                    (letrec* ((_%ht133588%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!133589%_
                               (lambda (_%ht133629%_ _%slots133630%_)
                                 (for-each
                                  (lambda (_%g133631133633%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht133629%_
                                       _%g133631133633%_
                                       '#t)))
                                  _%slots133630%_)))
                              (_%put-alist!133590%_
                               (lambda (_%ht133618%_
                                        _%key133619%_
                                        _%alist133620%_)
                                 (let ((_%$e133622%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key133619%_
                                           _%alist133620%_))))
                                   (if _%$e133622%_
                                       ((lambda (_%g133624133626%_)
                                          (_%put-slots!133589%_
                                           _%ht133618%_
                                           _%g133624133626%_))
                                        _%$e133622%_)
                                       '#!void)))))
                      (_%put-alist!133590%_
                       _%ht133588%_
                       _%key133586%_
                       _%properties133448%_)
                      (for-each
                       (lambda (_%mixin133592%_)
                         (let ((_%alist133594%_
                                (##structure-ref
                                 _%mixin133592%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist133594%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key133586%_
                                           _%alist133594%_))))
                               (_%put-slots!133589%_
                                _%ht133588%_
                                (let ((_%klass133599%_ _%mixin133592%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass133599%_
                                         'class))
                                      (let ((_%klass133604%_ _%klass133599%_))
                                        (__class-type-slot-list
                                         _%klass133604%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass133599%_)
                                        '#!void))))
                               (_%put-alist!133590%_
                                _%ht133588%_
                                _%key133586%_
                                _%alist133594%_))))
                       _%precedence-list133446%_)
                      _%ht133588%_))))
          (let* ((_%transparent?133456%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties133448%_)))
                 (_%all-slots-printable?133461%_
                  (let ((_%$e133458%_ _%transparent?133456%_))
                    (if _%$e133458%_
                        _%$e133458%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties133448%_))))))
                 (_%printable133463%_
                  (if (not _%all-slots-printable?133461%_)
                      (_%make-props!133454%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?133468%_
                  (let ((_%$e133465%_ _%transparent?133456%_))
                    (if _%$e133465%_
                        _%$e133465%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties133448%_))))))
                 (_%equalable133470%_
                  (if (not _%all-slots-equalable?133468%_)
                      (_%make-props!133454%_ 'equal:)
                      '#f))
                 (_%first-new-field133472%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super133445%_ 'class))
                      (let ((__tmp136876
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super133445%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp136876))
                      '1))
                 (_%field-info-length133474%_
                  (let ((__tmp136877
                         (let ((__tmp136878
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector133447%_))))
                           (declare (not safe))
                           (##fx- __tmp136878 _%first-new-field133472%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp136877)))
                 (_%field-info133476%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length133474%_ '#f)))
                 (_%struct?133478%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties133448%_)))
                 (_%final?133480%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties133448%_)))
                 (_%metaclass133487%_
                  (let ((_%metaclass133481133483%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties133448%_))))
                    (if _%metaclass133481133483%_
                        (let ((_%metaclass133485%_ _%metaclass133481133483%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass133485%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id133443%_
                                     'metaclass:
                                     _%metaclass133485%_))
                          _%metaclass133485%_)
                        '#f)))
                 (_%system?133489%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties133448%_)))
                 (_%opaque?133528%_
                  (if (or _%transparent?133456%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties133448%_)))
                      '#f
                      (let ((_%$e133494%_ (not _%type-super133445%_)))
                        (if _%$e133494%_
                            _%$e133494%_
                            (let ((_%type133497%_ _%type-super133445%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##type? _%type133497%_))
                                  (let ((_%type133502%_ _%type133497%_))
                                    (__type-opaque? _%type133502%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     '##type?
                                     'value:
                                     _%type133497%_)
                                    '#!void)))))))
                 (_%acyclic?133530%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties133448%_)))
                 (_%type-flags133532%_
                  (let ((__tmp136884
                         (if _%final?133480%_ '0 type-flag-extensible))
                        (__tmp136883
                         (if _%opaque?133528%_ type-flag-opaque '0))
                        (__tmp136882
                         (if _%struct?133478%_ class-type-flag-struct '0))
                        (__tmp136881
                         (if _%metaclass133487%_ class-type-flag-metaclass '0))
                        (__tmp136880
                         (if _%system?133489%_ class-type-flag-system '0))
                        (__tmp136879
                         (if _%acyclic?133530%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp136884
                             __tmp136883
                             __tmp136882
                             __tmp136881
                             __tmp136880
                             __tmp136879)))
                 (_%precedence-list133540%_
                  (let ((_%$e133534%_ (memq t::t _%precedence-list133446%_)))
                    (if _%$e133534%_
                        ((lambda (_%tail133537%_)
                           (if (null? (cdr _%tail133537%_))
                               _%precedence-list133446%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list133446%_)))
                         _%$e133534%_)
                        (let ((__tmp136885 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list133446%_ __tmp136885))))))
            (let _%loop133543%_ ((_%i133545%_ _%first-new-field133472%_)
                                 (_%j133546%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j133546%_ _%field-info-length133474%_))
                  (let* ((_%slot133548%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector133447%_ _%i133545%_)))
                         (_%flags133556%_
                          (if _%transparent?133456%_
                              '0
                              (let ((__tmp136887
                                     (if (or _%all-slots-printable?133461%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable133463%_
                                                _%slot133548%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp136886
                                     (if (or _%all-slots-equalable?133468%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable133470%_
                                                _%slot133548%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp136887 __tmp136886)))))
                    (vector-set!
                     _%field-info133476%_
                     _%j133546%_
                     _%slot133548%_)
                    (vector-set!
                     _%field-info133476%_
                     (let () (declare (not safe)) (##fx+ _%j133546%_ '1))
                     _%flags133556%_)
                    (_%loop133543%_
                     (let () (declare (not safe)) (##fx+ _%i133545%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j133546%_ '3))))
                  '#!void))
            (if _%metaclass133487%_
                (let ((_%val133583%_
                       (let* ((_%klass133559%_ _%metaclass133487%_)
                              (_%args133562%_
                               (list _%type-id133443%_
                                     _%type-name133444%_
                                     _%type-flags133532%_
                                     _%type-super133445%_
                                     _%field-info133476%_
                                     _%precedence-list133540%_
                                     _%slot-vector133447%_
                                     _%slot-table133450%_
                                     _%properties133448%_
                                     _%constructor133449%_
                                     _%methods133451%_)))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%klass133559%_
                                'class))
                             (let ((_%klass133567%_ _%klass133559%_))
                               (declare (not safe))
                               (##apply __make-instance
                                        _%klass133567%_
                                        _%args133562%_))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%klass133559%_)
                               '#!void)))))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val133583%_ 'class))
                      _%val133583%_
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         '"\"gerbil/runtime/mop.ss\"@283.10-287.95"
                         'contract:
                         '(class-type? val)
                         'value:
                         _%val133583%_)
                        '#!void)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id133443%_
                   _%type-name133444%_
                   _%type-flags133532%_
                   _%type-super133445%_
                   _%field-info133476%_
                   _%precedence-list133540%_
                   _%slot-vector133447%_
                   _%slot-table133450%_
                   _%properties133448%_
                   _%constructor133449%_
                   _%methods133451%_
                   '#f
                   '#f)))))))
    (define class-type-id
      (lambda (_%klass133441%_)
        (##structure-ref _%klass133441%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass133439%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass133439%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass133436%_ _%val133437%_)
        (##structure-set! _%klass133436%_ _%val133437%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass133431%_ _%val133433%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass133431%_
           _%val133433%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass133429%_)
        (##structure-ref _%klass133429%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass133427%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass133427%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass133424%_ _%val133425%_)
        (##structure-set! _%klass133424%_ _%val133425%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass133419%_ _%val133421%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass133419%_
           _%val133421%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass133417%_)
        (##structure-ref _%klass133417%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass133415%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass133415%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass133412%_ _%val133413%_)
        (##structure-set! _%klass133412%_ _%val133413%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass133407%_ _%val133409%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass133407%_
           _%val133409%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass133405%_)
        (##structure-ref _%klass133405%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass133403%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass133403%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass133400%_ _%val133401%_)
        (##structure-set! _%klass133400%_ _%val133401%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass133395%_ _%val133397%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass133395%_
           _%val133397%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass133393%_)
        (##structure-ref _%klass133393%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass133391%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass133391%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass133388%_ _%val133389%_)
        (##structure-set! _%klass133388%_ _%val133389%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass133383%_ _%val133385%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass133383%_
           _%val133385%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass133381%_)
        (##structure-ref _%klass133381%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass133379%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass133379%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass133376%_ _%val133377%_)
        (##structure-set!
         _%klass133376%_
         _%val133377%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass133371%_ _%val133373%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass133371%_
           _%val133373%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass133369%_)
        (##structure-ref _%klass133369%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass133367%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass133367%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass133364%_ _%val133365%_)
        (##structure-set!
         _%klass133364%_
         _%val133365%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass133359%_ _%val133361%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass133359%_
           _%val133361%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass133357%_)
        (##structure-ref _%klass133357%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass133355%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass133355%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass133352%_ _%val133353%_)
        (##structure-set!
         _%klass133352%_
         _%val133353%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass133347%_ _%val133349%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass133347%_
           _%val133349%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass133345%_)
        (##structure-ref _%klass133345%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass133343%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass133343%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass133340%_ _%val133341%_)
        (##structure-set!
         _%klass133340%_
         _%val133341%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass133335%_ _%val133337%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass133335%_
           _%val133337%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass133333%_)
        (##structure-ref _%klass133333%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass133331%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass133331%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass133328%_ _%val133329%_)
        (##structure-set!
         _%klass133328%_
         _%val133329%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass133323%_ _%val133325%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass133323%_
           _%val133325%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass133321%_)
        (##structure-ref _%klass133321%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass133319%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass133319%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass133316%_ _%val133317%_)
        (##structure-set!
         _%klass133316%_
         _%val133317%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass133311%_ _%val133313%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass133311%_
           _%val133313%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass133309%_)
        (##structure-ref _%klass133309%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass133307%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass133307%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass133304%_ _%val133305%_)
        (##structure-set!
         _%klass133304%_
         _%val133305%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass133299%_ _%val133301%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass133299%_
           _%val133301%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass133297%_)
        (##structure-ref _%klass133297%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass133295%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass133295%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass133292%_ _%val133293%_)
        (##structure-set!
         _%klass133292%_
         _%val133293%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass133287%_ _%val133289%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass133287%_
           _%val133289%_
           '13
           class::t
           'interface))))
    (define __class-type-slot-list
      (lambda (_%klass133275%_)
        (let ((_%klass133278%_ _%klass133275%_))
          (vector->list
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass133278%_ '7 '#f '#f))
           '1))))
    (define class-type-slot-list
      (lambda (_%klass121948%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121948%_ 'class))
            (let ((_%klass121952%_ _%klass121948%_))
              (__class-type-slot-list _%klass121952%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@345.29-345.34"
               'contract:
               'class-type?
               'value:
               _%klass121948%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass133263%_)
        (let* ((_%klass133266%_ _%klass133263%_)
               (__tmp136888
                (let ((__tmp136889
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass133266%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp136889))))
          (declare (not safe))
          (##fx- __tmp136888 '1))))
    (define class-type-field-count
      (lambda (_%klass122082%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122082%_ 'class))
            (let ((_%klass122086%_ _%klass122082%_))
              (__class-type-field-count _%klass122086%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@347.31-347.36"
               'contract:
               'class-type?
               'value:
               _%klass122082%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass133251%_)
        (let ((_%klass133254%_ _%klass133251%_))
          (let ((__tmp136890
                 (let ((__tmp136891
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass133254%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp136891))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass133254%_
             __tmp136890
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define class-type-seal!
      (lambda (_%klass122216%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122216%_ 'class))
            (let ((_%klass122220%_ _%klass122216%_))
              (__class-type-seal! _%klass122220%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@350.25-350.30"
               'contract:
               'class-type?
               'value:
               _%klass122216%_)
              '#!void))))
    (define __class-type-printable-slots
      (lambda (_%klass133184%_)
        (let ((_%klass133187%_ _%klass133184%_))
          (letrec ((_%get-field-vector133196%_
                    (lambda (_%type133235%_)
                      (let _%loop133237%_ ((_%type133239%_ _%type133235%_))
                        (let* ((_%fields133241%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type133239%_)))
                               (_%$e133243%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type133239%_))))
                          (if _%$e133243%_
                              ((lambda (_%super133246%_)
                                 (let ((_%super-fields133248%_
                                        (_%loop133237%_ _%super133246%_)))
                                   (vector-append
                                    _%super-fields133248%_
                                    _%fields133241%_)))
                               _%$e133243%_)
                              _%fields133241%_)))))
                   (_%get-printable-slot-alist133197%_
                    (lambda (_%type133218%_)
                      (let* ((_%fields133220%_
                              (_%get-field-vector133196%_ _%type133218%_))
                             (_%count133222%_
                              (vector-length _%fields133220%_)))
                        (let _%loop133225%_ ((_%i133227%_ '3)
                                             (_%offset133228%_ '1)
                                             (_%r133229%_ '()))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i133227%_ _%count133222%_))
                              (let ((_%slot-name133231%_
                                     (vector-ref _%fields133220%_ _%i133227%_))
                                    (_%slot-flags133232%_
                                     (vector-ref
                                      _%fields133220%_
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%i133227%_ '1))))
                                    (_%next-i133233%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i133227%_ '2))))
                                (if (let ((__tmp136892
                                           (let ()
                                             (declare (not safe))
                                             (##fxand _%slot-flags133232%_
                                                      '1))))
                                      (declare (not safe))
                                      (##fx= __tmp136892 '0))
                                    (_%loop133225%_
                                     _%next-i133233%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset133228%_ '1))
                                     _%r133229%_)
                                    (_%loop133225%_
                                     _%next-i133233%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset133228%_ '1))
                                     (cons (cons _%slot-name133231%_
                                                 _%offset133228%_)
                                           _%r133229%_))))
                              (reverse! _%r133229%_))))))
                   (_%get-printable-slots!133198%_
                    (lambda (_%klass133213%_ _%type133214%_)
                      (let ((_%printable133216%_
                             (_%get-printable-slot-alist133197%_
                              _%type133214%_)))
                        (##structure-set!
                         _%klass133213%_
                         (cons (cons 'printable-slots: _%printable133216%_)
                               (##structure-ref
                                _%klass133213%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%printable133216%_))))
            (let* ((_%props133200%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass133187%_ '9 '#f '#f)))
                   (_%$e133202%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'printable-slots: _%props133200%_))))
              (if _%$e133202%_
                  _%$e133202%_
                  (let ((_%$e133205%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props133200%_))))
                    (if _%$e133205%_
                        ((lambda (_%g133207133209%_)
                           (_%get-printable-slots!133198%_
                            _%klass133187%_
                            _%g133207133209%_))
                         _%$e133205%_)
                        (_%get-printable-slots!133198%_
                         _%klass133187%_
                         _%klass133187%_)))))))))
    (define class-type-printable-slots
      (lambda (_%klass122350%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122350%_ 'class))
            (let ((_%klass122354%_ _%klass122350%_))
              (__class-type-printable-slots _%klass122354%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@357.35-357.40"
               'contract:
               'class-type?
               'value:
               _%klass122350%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct133153%_ _%maybe-super-struct133154%_)
        (let* ((_%maybe-sub-struct133157%_ _%maybe-sub-struct133153%_)
               (_%maybe-super-struct133165%_ _%maybe-super-struct133154%_)
               (_%maybe-super-struct-id133174%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct133165%_))))
          (let _%lp133176%_ ((_%super-struct133178%_
                              _%maybe-sub-struct133157%_))
            (if (not _%super-struct133178%_)
                '#f
                (if (eq? _%maybe-super-struct-id133174%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct133178%_)))
                    '#t
                    (_%lp133176%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct133178%_)))))))))
    (define substruct?
      (lambda (_%maybe-sub-struct122484%_ _%maybe-super-struct122485%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct122484%_ 'class))
            (let ((_%maybe-sub-struct122489%_ _%maybe-sub-struct122484%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct122485%_
                     'class))
                  (let ((_%maybe-super-struct122499%_
                         _%maybe-super-struct122485%_))
                    (__substruct?
                     _%maybe-sub-struct122489%_
                     _%maybe-super-struct122499%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@403.47-403.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct122485%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@403.19-403.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct122484%_)
              '#!void))))
    (define base-struct/1
      (lambda (_%klass133131%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass133131%_ 'class))
            (if (let* ((_%klass133134%_ _%klass133131%_)
                       (_%klass133139%_ _%klass133134%_))
                  (__class-type-struct? _%klass133139%_))
                _%klass133131%_
                (let () (declare (not safe)) (##type-super _%klass133131%_)))
            (if (not _%klass133131%_)
                '#f
                (error '"not a class or false" _%klass133131%_)))))
    (define base-struct/2
      (lambda (_%klass1133054%_ _%klass2133055%_)
        (let ((_%s1133057%_ (base-struct/1 _%klass1133054%_))
              (_%s2133058%_ (base-struct/1 _%klass2133055%_)))
          (if (or (not _%s1133057%_)
                  (and _%s2133058%_
                       (let* ((_%maybe-sub-struct133063%_ _%s1133057%_)
                              (_%maybe-super-struct133066%_ _%s2133058%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%maybe-sub-struct133063%_
                                'class))
                             (let ((_%maybe-sub-struct133071%_
                                    _%maybe-sub-struct133063%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%maybe-super-struct133066%_
                                      'class))
                                   (let ((_%maybe-super-struct133085%_
                                          _%maybe-super-struct133066%_))
                                     (__substruct?
                                      _%maybe-sub-struct133071%_
                                      _%maybe-super-struct133085%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%maybe-super-struct133066%_)
                                     '#!void)))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%maybe-sub-struct133063%_)
                               '#!void)))))
              _%s2133058%_
              (if (or (not _%s2133058%_)
                      (and _%s1133057%_
                           (let* ((_%maybe-sub-struct133099%_ _%s2133058%_)
                                  (_%maybe-super-struct133102%_ _%s1133057%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%maybe-sub-struct133099%_
                                    'class))
                                 (let ((_%maybe-sub-struct133107%_
                                        _%maybe-sub-struct133099%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%maybe-super-struct133102%_
                                          'class))
                                       (let ((_%maybe-super-struct133119%_
                                              _%maybe-super-struct133102%_))
                                         (__substruct?
                                          _%maybe-sub-struct133107%_
                                          _%maybe-super-struct133119%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          'class-type?
                                          'value:
                                          _%maybe-super-struct133102%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'class-type?
                                    'value:
                                    _%maybe-sub-struct133099%_)
                                   '#!void)))))
                  _%s1133057%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1133054%_
                         _%klass2133055%_
                         _%s1133057%_
                         _%s2133058%_))))))
    (define base-struct/list
      (lambda (_%all-supers132939%_)
        (let* ((_%all-supers132940132965%_ _%all-supers132939%_)
               (_%E132945132969%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers132940132965%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K132963133051%_ (lambda () '#f))
                (_%K132960133037%_
                 (lambda (_%x133035%_) (base-struct/1 _%x133035%_)))
                (_%K132955133014%_
                 (lambda (_%y133011%_ _%x133012%_)
                   (base-struct/2 _%x133012%_ _%y133011%_)))
                (_%K132946132976%_
                 (lambda (_%y132973%_ _%x132974%_)
                   (let ()
                     (declare (not safe))
                     (foldr__0 base-struct/2 _%x132974%_ _%y132973%_)))))
            (let* ((_%__match135665135666%_
                    (lambda (_%hd132947132979%_ _%tl132948132981%_)
                      (let ((_%x132984%_ _%hd132947132979%_))
                        (letrec ((_%splice-rest132950132986%_
                                  (lambda (_%rest132954132993%_ _%y132995%_)
                                    (if (null? _%rest132954132993%_)
                                        (_%K132946132976%_
                                         _%y132995%_
                                         _%x132984%_)
                                        (_%E132945132969%_))))
                                 (_%splice-try132952132988%_
                                  (lambda (_%hd132953132997%_
                                           _%rest132954132999%_
                                           _%y132949133000%_)
                                    (let ((_%y133002%_ _%hd132953132997%_))
                                      (_%splice-loop132951132990%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest132954132999%_))
                                       (cons _%y133002%_ _%y132949133000%_)))))
                                 (_%splice-loop132951132990%_
                                  (lambda (_%rest132954133004%_
                                           _%y132949133005%_)
                                    (if (pair? _%rest132954133004%_)
                                        (_%splice-try132952132988%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest132954133004%_))
                                         _%rest132954133004%_
                                         _%y132949133005%_)
                                        (_%splice-rest132950132986%_
                                         _%rest132954133004%_
                                         (reverse _%y132949133005%_))))))
                          (_%splice-loop132951132990%_
                           _%tl132948132981%_
                           '())))))
                   (_%try-match132942133047%_
                    (lambda ()
                      (if (pair? _%all-supers132940132965%_)
                          (let ((_%tl132962133042%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers132940132965%_)))
                                (_%hd132961133040%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers132940132965%_))))
                            (if (null? _%tl132962133042%_)
                                (let ((_%x133045%_ _%hd132961133040%_))
                                  (base-struct/1 _%x133045%_))
                                (if (pair? _%tl132962133042%_)
                                    (let ((_%tl132959133026%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl132962133042%_)))
                                          (_%hd132958133024%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl132962133042%_))))
                                      (if (null? _%tl132959133026%_)
                                          (let ((_%x133022%_
                                                 _%hd132961133040%_)
                                                (_%y133029%_
                                                 _%hd132958133024%_))
                                            (_%K132955133014%_
                                             _%y133029%_
                                             _%x133022%_))
                                          (_%__match135665135666%_
                                           _%hd132961133040%_
                                           _%tl132962133042%_)))
                                    (_%__match135665135666%_
                                     _%hd132961133040%_
                                     _%tl132962133042%_))))
                          (_%E132945132969%_)))))
              (if (null? _%all-supers132940132965%_)
                  (_%K132963133051%_)
                  (_%try-match132942133047%_)))))))
    (define base-struct
      (lambda _%all-supers132937%_ (base-struct/list _%all-supers132937%_)))
    (define find-super-constructor
      (lambda (_%super132888%_)
        (let _%lp132890%_ ((_%rest132892%_ _%super132888%_)
                           (_%constructor132893%_ '#f))
          (let* ((_%rest132894132902%_ _%rest132892%_)
                 (_%else132896132910%_ (lambda () _%constructor132893%_))
                 (_%K132898132925%_
                  (lambda (_%rest132913%_ _%hd132914%_)
                    (let ((_%$e132916%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd132914%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e132916%_
                          ((lambda (_%xconstructor132919%_)
                             (if (or (not _%constructor132893%_)
                                     (eq? _%constructor132893%_
                                          _%xconstructor132919%_))
                                 (_%lp132890%_
                                  _%rest132913%_
                                  _%xconstructor132919%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor132893%_
                                        _%xconstructor132919%_)))
                           _%$e132916%_)
                          (_%lp132890%_
                           _%rest132913%_
                           _%constructor132893%_))))))
            (if (pair? _%rest132894132902%_)
                (let ((_%hd132899132928%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest132894132902%_)))
                      (_%tl132900132930%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest132894132902%_))))
                  (let* ((_%hd132933%_ _%hd132899132928%_)
                         (_%rest132935%_ _%tl132900132930%_))
                    (_%K132898132925%_ _%rest132935%_ _%hd132933%_)))
                (_%else132896132910%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list132844%_ _%direct-slots132845%_)
        (let* ((_%next-slot132847%_ '1)
               (_%slot-table132849%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots132851%_ '(__class))
               (_%process-slot132875%_
                (lambda (_%slot132853%_)
                  (if (symbol? _%slot132853%_)
                      '#!void
                      (error '"invalid slot name" _%slot132853%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table132849%_
                              _%slot132853%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table132849%_
                           _%slot132853%_
                           _%next-slot132847%_))
                        (let ((__tmp136893
                               (let ((_%sym132855%_ _%slot132853%_))
                                 (if (symbol? _%sym132855%_)
                                     (let ((_%sym132860%_ _%sym132855%_))
                                       (declare (not safe))
                                       (__symbol->keyword _%sym132860%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/mop
                                        'contract:
                                        'symbol?
                                        'value:
                                        _%sym132855%_)
                                       '#!void)))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table132849%_
                           __tmp136893
                           _%next-slot132847%_))
                        (set! _%r-slots132851%_
                              (cons _%slot132853%_ _%r-slots132851%_))
                        (set! _%next-slot132847%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot132847%_ '1))))
                      '#!void)))
               (_%process-slots132881%_
                (lambda (_%g132876132878%_)
                  (for-each _%process-slot132875%_ _%g132876132878%_))))
          (let ((__tmp136895
                 (lambda (_%mixin132884%_)
                   (_%process-slots132881%_
                    (let ((__tmp136896
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin132884%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp136896 '())))))
                (__tmp136894 (reverse _%class-precedence-list132844%_)))
            (declare (not safe))
            (##for-each __tmp136895 __tmp136894))
          (_%process-slots132881%_ _%direct-slots132845%_)
          (let ((_%slot-vector132886%_
                 (list->vector
                  (let ()
                    (declare (not safe))
                    (##reverse _%r-slots132851%_)))))
            (values _%slot-vector132886%_ _%slot-table132849%_)))))
    (define __make-class-type
      (lambda (_%id132671%_
               _%name132672%_
               _%direct-supers132673%_
               _%direct-slots132674%_
               _%properties132675%_
               _%constructor132676%_)
        (let* ((_%id132679%_ _%id132671%_)
               (_%name132687%_ _%name132672%_)
               (_%direct-supers132695%_ _%direct-supers132673%_)
               (_%direct-slots132703%_ _%direct-slots132674%_)
               (_%properties132711%_ _%properties132675%_)
               (_%constructor132719%_ _%constructor132676%_))
          (let ((_%$e132753%_
                 (let* ((_%pred132731%_
                         (lambda (_%$obj132728%_)
                           (not (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%$obj132728%_
                                   'class)))))
                        (_%lst132734%_ _%direct-supers132695%_)
                        (_%pred132739%_ _%pred132731%_))
                   (declare (not safe))
                   (__find _%pred132739%_ _%lst132734%_))))
            (if _%$e132753%_
                ((lambda (_%g132755132757%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g132755132757%_))
                 _%$e132753%_)
                (let ((_%$e132780%_
                       (let* ((_%pred132760%_ __class-type-final?)
                              (_%lst132763%_ _%direct-supers132695%_)
                              (_%pred132768%_ _%pred132760%_))
                         (declare (not safe))
                         (__find _%pred132768%_ _%lst132763%_))))
                  (if _%$e132780%_
                      ((lambda (_%g132782132784%_)
                         (error '"Cannot extend final class"
                                _%g132782132784%_))
                       _%$e132780%_)
                      '#!void))))
          (let ((_g136897_ (compute-precedence-list _%direct-supers132695%_)))
            (begin
              (let ((_g136898_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g136897_)
                           (##values-length _g136897_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g136898_ 2)))
                    (error "Context expects 2 values" _g136898_)))
              (let ((_%precedence-list132787%_
                     (let () (declare (not safe)) (##values-ref _g136897_ 0)))
                    (_%struct-super132788%_
                     (let () (declare (not safe)) (##values-ref _g136897_ 1))))
                (let ((_g136899_
                       (compute-class-slots
                        _%precedence-list132787%_
                        _%direct-slots132703%_)))
                  (begin
                    (let ((_g136900_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g136899_)
                                 (##values-length _g136899_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g136900_ 2)))
                          (error "Context expects 2 values" _g136900_)))
                    (let ((_%slot-vector132790%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g136899_ 0)))
                          (_%slot-table132791%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g136899_ 1))))
                      (let* ((_%properties132793%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots132703%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers132695%_)
                                          _%properties132711%_)))
                             (_%constructor*132798%_
                              (let ((_%$e132795%_ _%constructor132719%_))
                                (if _%$e132795%_
                                    _%$e132795%_
                                    (find-super-constructor
                                     _%direct-supers132695%_))))
                             (_%precedence-list132841%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties132793%_))
                                      (memq object::t
                                            _%precedence-list132787%_))
                                  _%precedence-list132787%_
                                  (let _%loop132803%_ ((_%tail132805%_
                                                        _%precedence-list132787%_)
                                                       (_%head132806%_ '()))
                                    (let* ((_%tail132807132815%_
                                            _%tail132805%_)
                                           (_%else132809132823%_
                                            (lambda ()
                                              (let ((__tmp136901
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp136901
                                                 _%head132806%_))))
                                           (_%K132811132829%_
                                            (lambda (_%rest132826%_
                                                     _%hd132827%_)
                                              (if (eq? _%hd132827%_ t::t)
                                                  (let ((__tmp136902
                                                         (cons object::t
                                                               _%tail132805%_)))
                                                    (declare (not safe))
                                                    (foldl__0
                                                     cons
                                                     __tmp136902
                                                     _%head132806%_))
                                                  (_%loop132803%_
                                                   _%rest132826%_
                                                   (cons _%hd132827%_
                                                         _%head132806%_))))))
                                      (if (pair? _%tail132807132815%_)
                                          (let ((_%hd132812132832%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail132807132815%_)))
                                                (_%tl132813132834%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail132807132815%_))))
                                            (let* ((_%hd132837%_
                                                    _%hd132812132832%_)
                                                   (_%rest132839%_
                                                    _%tl132813132834%_))
                                              (_%K132811132829%_
                                               _%rest132839%_
                                               _%hd132837%_)))
                                          (_%else132809132823%_)))))))
                        (make-class-type-descriptor
                         _%id132679%_
                         _%name132687%_
                         _%struct-super132788%_
                         _%precedence-list132841%_
                         _%slot-vector132790%_
                         _%properties132793%_
                         _%constructor*132798%_
                         _%slot-table132791%_
                         '#f)))))))))))
    (define make-class-type
      (lambda (_%id122629%_
               _%name122630%_
               _%direct-supers122631%_
               _%direct-slots122632%_
               _%properties122633%_
               _%constructor122634%_)
        (if (symbol? _%id122629%_)
            (let ((_%id122638%_ _%id122629%_))
              (if (symbol? _%name122630%_)
                  (let ((_%name122648%_ _%name122630%_))
                    (if (list? _%direct-supers122631%_)
                        (let ((_%direct-supers122658%_
                               _%direct-supers122631%_))
                          (if (list? _%direct-slots122632%_)
                              (let ((_%direct-slots122668%_
                                     _%direct-slots122632%_))
                                (if (list? _%properties122633%_)
                                    (let ((_%properties122678%_
                                           _%properties122633%_))
                                      (if ((lambda (_%$obj122687%_)
                                             (or (not _%$obj122687%_)
                                                 (symbol? _%$obj122687%_)))
                                           _%constructor122634%_)
                                          (let ((_%constructor122694%_
                                                 _%constructor122634%_))
                                            (__make-class-type
                                             _%id122638%_
                                             _%name122648%_
                                             _%direct-supers122658%_
                                             _%direct-slots122668%_
                                             _%properties122678%_
                                             _%constructor122694%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@500.24-500.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor122634%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@499.24-499.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties122633%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@498.24-498.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots122632%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@497.24-497.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers122631%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@496.24-496.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name122630%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@495.24-495.26"
               'contract:
               'symbol?
               'value:
               _%id122629%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass132659%_)
        (let ((_%klass132662%_ _%klass132659%_))
          (cons _%klass132662%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass132662%_ '6 '#f '#f))))))
    (define class-precedence-list
      (lambda (_%klass122824%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122824%_ 'class))
            (let ((_%klass122828%_ _%klass122824%_))
              (__class-precedence-list _%klass122828%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@533.30-533.35"
               'contract:
               'class-type?
               'value:
               _%klass122824%_)
              '#!void))))
    (define compute-precedence-list
      (lambda (_%direct-supers132656%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers132656%_))))
    (define __make-class-predicate
      (lambda (_%klass132572%_)
        (let* ((_%klass132575%_ _%klass132572%_)
               (_%tid132584%_
                (let () (declare (not safe)) (##type-id _%klass132575%_))))
          (if (let* ((_%type132586%_ _%klass132575%_)
                     (_%type132591%_ _%type132586%_))
                (__class-type-final? _%type132591%_))
              (lambda (_%g132605132607%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g132605132607%_
                   _%tid132584%_)))
              (if (let* ((_%klass132610%_ _%klass132575%_)
                         (_%klass132615%_ _%klass132610%_))
                    (__class-type-struct? _%klass132615%_))
                  (lambda (_%g132625132627%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%g132625132627%_
                       _%tid132584%_)))
                  (lambda (_%g132630132632%_)
                    (let* ((_%klass132635%_ _%klass132575%_)
                           (_%obj132638%_ _%g132630132632%_)
                           (_%klass132643%_ _%klass132635%_))
                      (__class-instance? _%klass132643%_ _%obj132638%_))))))))
    (define make-class-predicate
      (lambda (_%klass122958%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122958%_ 'class))
            (let ((_%klass122962%_ _%klass122958%_))
              (__make-class-predicate _%klass122962%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@545.29-545.34"
               'contract:
               'class-type?
               'value:
               _%klass122958%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass132506%_ _%slot132507%_)
        (let* ((_%klass132510%_ _%klass132506%_)
               (_%slot132518%_ _%slot132507%_)
               (_%field132527%_
                (let ((__tmp136903
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass132510%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp136903 _%slot132518%_ '#f))))
          (if (not _%field132527%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass132510%_
                       'slot:
                       _%slot132518%_)
                '#!void)
              (if (let* ((_%type132531%_ _%klass132510%_)
                         (_%type132536%_ _%type132531%_))
                    (__class-type-final? _%type132536%_))
                  (make-final-slot-accessor
                   _%klass132510%_
                   _%slot132518%_
                   _%field132527%_)
                  (if (let* ((_%klass132551%_ _%klass132510%_)
                             (_%klass132556%_ _%klass132551%_))
                        (__class-type-struct? _%klass132556%_))
                      (make-struct-slot-accessor
                       _%klass132510%_
                       _%slot132518%_
                       _%field132527%_)
                      (if (let ((_%strukt132567%_
                                 (base-struct/1 _%klass132510%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt132567%_
                                    'class))
                                 (let ((__tmp136904
                                        (let ((__tmp136905
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt132567%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp136905))))
                                   (declare (not safe))
                                   (##fx< _%field132527%_ __tmp136904))))
                          (make-struct-subclass-slot-accessor
                           _%klass132510%_
                           _%slot132518%_
                           _%field132527%_)
                          (make-class-cached-slot-accessor
                           _%klass132510%_
                           _%slot132518%_
                           _%field132527%_))))))))
    (define make-class-slot-accessor
      (lambda (_%klass123245%_ _%slot123246%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123245%_ 'class))
            (let ((_%klass123250%_ _%klass123245%_))
              (if (symbol? _%slot123246%_)
                  (let ((_%slot123260%_ _%slot123246%_))
                    (__make-class-slot-accessor
                     _%klass123250%_
                     _%slot123260%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@576.50-576.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot123246%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@576.33-576.38"
               'contract:
               'class-type?
               'value:
               _%klass123245%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass132440%_ _%slot132441%_)
        (let* ((_%klass132444%_ _%klass132440%_)
               (_%slot132452%_ _%slot132441%_)
               (_%field132461%_
                (let ((__tmp136906
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass132444%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp136906 _%slot132452%_ '#f))))
          (if (not _%field132461%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass132444%_
                       'slot:
                       _%slot132452%_)
                '#!void)
              (if (let* ((_%type132465%_ _%klass132444%_)
                         (_%type132470%_ _%type132465%_))
                    (__class-type-final? _%type132470%_))
                  (make-final-slot-mutator
                   _%klass132444%_
                   _%slot132452%_
                   _%field132461%_)
                  (if (let* ((_%klass132485%_ _%klass132444%_)
                             (_%klass132490%_ _%klass132485%_))
                        (__class-type-struct? _%klass132490%_))
                      (make-struct-slot-mutator
                       _%klass132444%_
                       _%slot132452%_
                       _%field132461%_)
                      (if (let ((_%strukt132501%_
                                 (base-struct/1 _%klass132444%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt132501%_
                                    'class))
                                 (let ((__tmp136907
                                        (let ((__tmp136908
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt132501%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp136908))))
                                   (declare (not safe))
                                   (##fx< _%field132461%_ __tmp136907))))
                          (make-struct-subclass-slot-mutator
                           _%klass132444%_
                           _%slot132452%_
                           _%field132461%_)
                          (make-class-cached-slot-mutator
                           _%klass132444%_
                           _%slot132452%_
                           _%field132461%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass123390%_ _%slot123391%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123390%_ 'class))
            (let ((_%klass123395%_ _%klass123390%_))
              (if (symbol? _%slot123391%_)
                  (let ((_%slot123405%_ _%slot123391%_))
                    (__make-class-slot-mutator _%klass123395%_ _%slot123405%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@584.49-584.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot123391%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@584.32-584.37"
               'contract:
               'class-type?
               'value:
               _%klass123390%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass132374%_ _%slot132375%_)
        (let* ((_%klass132378%_ _%klass132374%_)
               (_%slot132386%_ _%slot132375%_)
               (_%field132395%_
                (let ((__tmp136909
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass132378%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp136909 _%slot132386%_ '#f))))
          (if (not _%field132395%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass132378%_
                       'slot:
                       _%slot132386%_)
                '#!void)
              (if (let* ((_%type132399%_ _%klass132378%_)
                         (_%type132404%_ _%type132399%_))
                    (__class-type-final? _%type132404%_))
                  (make-struct-slot-unchecked-accessor
                   _%klass132378%_
                   _%slot132386%_
                   _%field132395%_)
                  (if (let* ((_%klass132419%_ _%klass132378%_)
                             (_%klass132424%_ _%klass132419%_))
                        (__class-type-struct? _%klass132424%_))
                      (make-struct-slot-unchecked-accessor
                       _%klass132378%_
                       _%slot132386%_
                       _%field132395%_)
                      (if (let ((_%strukt132435%_
                                 (base-struct/1 _%klass132378%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt132435%_
                                    'class))
                                 (let ((__tmp136910
                                        (let ((__tmp136911
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt132435%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp136911))))
                                   (declare (not safe))
                                   (##fx< _%field132395%_ __tmp136910))))
                          (make-struct-slot-unchecked-accessor
                           _%klass132378%_
                           _%slot132386%_
                           _%field132395%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass132378%_
                           _%slot132386%_
                           _%field132395%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass123535%_ _%slot123536%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123535%_ 'class))
            (let ((_%klass123540%_ _%klass123535%_))
              (if (symbol? _%slot123536%_)
                  (let ((_%slot123550%_ _%slot123536%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass123540%_
                     _%slot123550%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.60-592.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot123536%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.43-592.48"
               'contract:
               'class-type?
               'value:
               _%klass123535%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass132308%_ _%slot132309%_)
        (let* ((_%klass132312%_ _%klass132308%_)
               (_%slot132320%_ _%slot132309%_)
               (_%field132329%_
                (let ((__tmp136912
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass132312%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp136912 _%slot132320%_ '#f))))
          (if (not _%field132329%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass132312%_
                       'slot:
                       _%slot132320%_)
                '#!void)
              (if (let* ((_%type132333%_ _%klass132312%_)
                         (_%type132338%_ _%type132333%_))
                    (__class-type-final? _%type132338%_))
                  (make-struct-slot-unchecked-mutator
                   _%klass132312%_
                   _%slot132320%_
                   _%field132329%_)
                  (if (let* ((_%klass132353%_ _%klass132312%_)
                             (_%klass132358%_ _%klass132353%_))
                        (__class-type-struct? _%klass132358%_))
                      (make-struct-slot-unchecked-mutator
                       _%klass132312%_
                       _%slot132320%_
                       _%field132329%_)
                      (if (let ((_%strukt132369%_
                                 (base-struct/1 _%klass132312%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt132369%_
                                    'class))
                                 (let ((__tmp136913
                                        (let ((__tmp136914
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt132369%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp136914))))
                                   (declare (not safe))
                                   (##fx< _%field132329%_ __tmp136913))))
                          (make-struct-slot-unchecked-mutator
                           _%klass132312%_
                           _%slot132320%_
                           _%field132329%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass132312%_
                           _%slot132320%_
                           _%field132329%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass123680%_ _%slot123681%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123680%_ 'class))
            (let ((_%klass123685%_ _%klass123680%_))
              (if (symbol? _%slot123681%_)
                  (let ((_%slot123695%_ _%slot123681%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass123685%_
                     _%slot123695%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@600.59-600.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot123681%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@600.42-600.47"
               'contract:
               'class-type?
               'value:
               _%klass123680%_)
              '#!void))))
    (define not-an-instance__%
      (lambda (_%object132292%_ _%class132293%_ _%slot132294%_)
        (apply error
               '"not an instance"
               'object:
               _%object132292%_
               'class:
               _%class132293%_
               (if _%slot132294%_
                   (cons 'slot: (cons _%slot132294%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object132299%_ _%class132300%_)
        (let ((_%slot132302%_ '#f))
          (not-an-instance__%
           _%object132299%_
           _%class132300%_
           _%slot132302%_))))
    (define not-an-instance
      (lambda _g136915_
        (let ((_g136916_ (let () (declare (not safe)) (##length _g136915_))))
          (cond ((let () (declare (not safe)) (##fx= _g136916_ 2))
                 (apply not-an-instance__0 _g136915_))
                ((let () (declare (not safe)) (##fx= _g136916_ 3))
                 (apply not-an-instance__% _g136915_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g136915_))))))
    (define make-final-slot-accessor
      (lambda (_%klass132285%_ _%slot132286%_ _%field132287%_)
        (lambda (_%obj132289%_)
          (##direct-structure-ref
           _%obj132289%_
           _%field132287%_
           _%klass132285%_
           _%slot132286%_))))
    (define make-final-slot-mutator
      (lambda (_%klass132278%_ _%slot132279%_ _%field132280%_)
        (lambda (_%obj132282%_ _%val132283%_)
          (##direct-structure-set!
           _%obj132282%_
           _%val132283%_
           _%field132280%_
           _%klass132278%_
           _%slot132279%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass132272%_ _%slot132273%_ _%field132274%_)
        (lambda (_%obj132276%_)
          (##structure-ref
           _%obj132276%_
           _%field132274%_
           _%klass132272%_
           _%slot132273%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass132265%_ _%slot132266%_ _%field132267%_)
        (lambda (_%obj132269%_ _%val132270%_)
          (##structure-set!
           _%obj132269%_
           _%val132270%_
           _%field132267%_
           _%klass132265%_
           _%slot132266%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass132259%_ _%slot132260%_ _%field132261%_)
        (lambda (_%obj132263%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj132263%_
             _%field132261%_
             _%klass132259%_
             _%slot132260%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass132252%_ _%slot132253%_ _%field132254%_)
        (lambda (_%obj132256%_ _%val132257%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj132256%_
             _%val132257%_
             _%field132254%_
             _%klass132252%_
             _%slot132253%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass132225%_ _%slot132226%_ _%field132227%_)
        (lambda (_%obj132229%_)
          (if (let* ((_%klass132231%_ _%klass132225%_)
                     (_%obj132234%_ _%obj132229%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass132231%_ 'class))
                    (let ((_%klass132239%_ _%klass132231%_))
                      (__class-instance? _%klass132239%_ _%obj132234%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass132231%_)
                      '#!void)))
              (unchecked-slot-ref _%obj132229%_ _%field132227%_)
              (not-an-instance__%
               _%obj132229%_
               _%klass132225%_
               _%slot132226%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass132197%_ _%slot132198%_ _%field132199%_)
        (lambda (_%obj132201%_ _%val132202%_)
          (if (let* ((_%klass132204%_ _%klass132197%_)
                     (_%obj132207%_ _%obj132201%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass132204%_ 'class))
                    (let ((_%klass132212%_ _%klass132204%_))
                      (__class-instance? _%klass132212%_ _%obj132207%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass132204%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj132201%_
               _%field132199%_
               _%val132202%_)
              (not-an-instance__%
               _%obj132201%_
               _%klass132197%_
               _%slot132198%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass132148%_ _%slot132149%_ _%field132150%_)
        (lambda (_%obj132152%_)
          (if (let* ((_%klass132154%_ _%klass132148%_)
                     (_%obj132157%_ _%obj132152%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass132154%_ 'class))
                    (let ((_%klass132162%_ _%klass132154%_))
                      (__direct-instance? _%klass132162%_ _%obj132157%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass132154%_)
                      '#!void)))
              (unchecked-field-ref _%obj132152%_ _%field132150%_)
              (if (let* ((_%klass132176%_ _%klass132148%_)
                         (_%obj132179%_ _%obj132152%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass132176%_ 'class))
                        (let ((_%klass132184%_ _%klass132176%_))
                          (__class-instance? _%klass132184%_ _%obj132179%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass132176%_)
                          '#!void)))
                  (unchecked-slot-ref _%obj132152%_ _%slot132149%_)
                  (not-an-instance__%
                   _%obj132152%_
                   _%klass132148%_
                   _%slot132149%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass132098%_ _%slot132099%_ _%field132100%_)
        (lambda (_%obj132102%_ _%val132103%_)
          (if (let* ((_%klass132105%_ _%klass132098%_)
                     (_%obj132108%_ _%obj132102%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass132105%_ 'class))
                    (let ((_%klass132113%_ _%klass132105%_))
                      (__direct-instance? _%klass132113%_ _%obj132108%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass132105%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj132102%_
               _%field132100%_
               _%val132103%_)
              (if (let* ((_%klass132127%_ _%klass132098%_)
                         (_%obj132130%_ _%obj132102%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass132127%_ 'class))
                        (let ((_%klass132135%_ _%klass132127%_))
                          (__class-instance? _%klass132135%_ _%obj132130%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass132127%_)
                          '#!void)))
                  (unchecked-slot-set!
                   _%obj132102%_
                   _%slot132099%_
                   _%val132103%_)
                  (not-an-instance__%
                   _%obj132102%_
                   _%klass132098%_
                   _%slot132099%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass132071%_ _%slot132072%_ _%field132073%_)
        (lambda (_%obj132075%_)
          (if (let* ((_%klass132077%_ _%klass132071%_)
                     (_%obj132080%_ _%obj132075%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass132077%_ 'class))
                    (let ((_%klass132085%_ _%klass132077%_))
                      (__direct-instance? _%klass132085%_ _%obj132080%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass132077%_)
                      '#!void)))
              (unchecked-field-ref _%obj132075%_ _%field132073%_)
              (unchecked-slot-ref _%obj132075%_ _%slot132072%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass132043%_ _%slot132044%_ _%field132045%_)
        (lambda (_%obj132047%_ _%val132048%_)
          (if (let* ((_%klass132050%_ _%klass132043%_)
                     (_%obj132053%_ _%obj132047%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass132050%_ 'class))
                    (let ((_%klass132058%_ _%klass132050%_))
                      (__direct-instance? _%klass132058%_ _%obj132053%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass132050%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj132047%_
               _%field132045%_
               _%val132048%_)
              (unchecked-slot-set!
               _%obj132047%_
               _%slot132044%_
               _%val132048%_)))))
    (define __class-slot-offset
      (lambda (_%klass132022%_ _%slot132023%_)
        (let* ((_%klass132026%_ _%klass132022%_)
               (_%slot132034%_ _%slot132023%_)
               (__tmp136917
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass132026%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp136917 _%slot132034%_ '#f))))
    (define class-slot-offset
      (lambda (_%klass123825%_ _%slot123826%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123825%_ 'class))
            (let ((_%klass123830%_ _%klass123825%_))
              (if (let () (declare (not safe)) (symbolic? _%slot123826%_))
                  (let ((_%slot123840%_ _%slot123826%_))
                    (__class-slot-offset _%klass123830%_ _%slot123840%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@662.43-662.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot123826%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@662.26-662.31"
               'contract:
               'class-type?
               'value:
               _%klass123825%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass131947%_ _%obj131948%_ _%slot131949%_)
        (let* ((_%klass131952%_ _%klass131947%_)
               (_%slot131960%_ _%slot131949%_))
          (if (let* ((_%klass131969%_ _%klass131952%_)
                     (_%obj131972%_ _%obj131948%_)
                     (_%klass131977%_ _%klass131969%_))
                (__class-instance? _%klass131977%_ _%obj131972%_))
              (let ((_%off132020%_
                     (let* ((_%klass131991%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj131948%_)))
                            (_%slot131994%_ _%slot131960%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass131991%_ 'class))
                           (let ((_%klass131999%_ _%klass131991%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot131994%_))
                                 (let ((_%slot132010%_ _%slot131994%_))
                                   (__class-slot-offset
                                    _%klass131999%_
                                    _%slot132010%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot131994%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass131991%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj131948%_
                 _%off132020%_
                 _%klass131952%_
                 _%slot131960%_))
              (not-an-instance__0 _%obj131948%_ _%klass131952%_)))))
    (define class-slot-ref
      (lambda (_%klass123970%_ _%obj123971%_ _%slot123972%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123970%_ 'class))
            (let ((_%klass123976%_ _%klass123970%_))
              (if (let () (declare (not safe)) (symbolic? _%slot123972%_))
                  (let ((_%slot123986%_ _%slot123972%_))
                    (__class-slot-ref
                     _%klass123976%_
                     _%obj123971%_
                     _%slot123986%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@665.44-665.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot123972%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@665.23-665.28"
               'contract:
               'class-type?
               'value:
               _%klass123970%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass131871%_ _%obj131872%_ _%slot131873%_ _%val131874%_)
        (let* ((_%klass131877%_ _%klass131871%_)
               (_%slot131885%_ _%slot131873%_))
          (if (let* ((_%klass131894%_ _%klass131877%_)
                     (_%obj131897%_ _%obj131872%_)
                     (_%klass131902%_ _%klass131894%_))
                (__class-instance? _%klass131902%_ _%obj131897%_))
              (let ((_%off131945%_
                     (let* ((_%klass131916%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj131872%_)))
                            (_%slot131919%_ _%slot131885%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass131916%_ 'class))
                           (let ((_%klass131924%_ _%klass131916%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot131919%_))
                                 (let ((_%slot131935%_ _%slot131919%_))
                                   (__class-slot-offset
                                    _%klass131924%_
                                    _%slot131935%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot131919%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass131916%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj131872%_
                 _%val131874%_
                 _%off131945%_
                 _%klass131877%_
                 _%slot131885%_))
              (not-an-instance__0 _%obj131872%_ _%klass131877%_)))))
    (define class-slot-set!
      (lambda (_%klass124116%_ _%obj124117%_ _%slot124118%_ _%val124119%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124116%_ 'class))
            (let ((_%klass124123%_ _%klass124116%_))
              (if (let () (declare (not safe)) (symbolic? _%slot124118%_))
                  (let ((_%slot124133%_ _%slot124118%_))
                    (__class-slot-set!
                     _%klass124123%_
                     _%obj124117%_
                     _%slot124133%_
                     _%val124119%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@671.45-671.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot124118%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@671.24-671.29"
               'contract:
               'class-type?
               'value:
               _%klass124116%_)
              '#!void))))
    (define unchecked-field-ref
      (lambda (_%obj131868%_ _%off131869%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj131868%_ _%off131869%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj131864%_ _%off131865%_ _%val131866%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj131864%_
           _%val131866%_
           _%off131865%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj131861%_ _%slot131862%_)
        (unchecked-field-ref
         _%obj131861%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj131861%_))
          _%slot131862%_))))
    (define unchecked-slot-set!
      (lambda (_%obj131857%_ _%slot131858%_ _%val131859%_)
        (unchecked-field-set!
         _%obj131857%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj131857%_))
          _%slot131858%_)
         _%val131859%_)))
    (define __slot-error
      (lambda (_%obj131854%_ _%slot131855%_)
        (error '"Cannot find slot"
               'object:
               _%obj131854%_
               'slot:
               _%slot131855%_)))
    (define __slot-ref__%
      (lambda (_%obj131778%_ _%slot131779%_ _%E131780%_)
        (let* ((_%slot131783%_ _%slot131779%_)
               (_%E131791%_ _%E131780%_)
               (_%klass131800%_ (class-of _%obj131778%_))
               (_%$e131836%_
                (let* ((_%klass131803%_ _%klass131800%_)
                       (_%slot131806%_ _%slot131783%_)
                       (_%klass131811%_ _%klass131803%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot131806%_))
                      (let ((_%slot131826%_ _%slot131806%_))
                        (__class-slot-offset _%klass131811%_ _%slot131826%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot131806%_)
                        '#!void)))))
          (if _%$e131836%_
              ((lambda (_%off131839%_)
                 (unchecked-field-ref _%obj131778%_ _%off131839%_))
               _%$e131836%_)
              (let ()
                (declare (not safe))
                (_%E131791%_ _%obj131778%_ _%slot131783%_))))))
    (define __slot-ref__0
      (lambda (_%obj131845%_ _%slot131846%_)
        (let ((_%E131848%_ __slot-error))
          (__slot-ref__% _%obj131845%_ _%slot131846%_ _%E131848%_))))
    (define __slot-ref
      (lambda _g136918_
        (let ((_g136919_ (let () (declare (not safe)) (##length _g136918_))))
          (cond ((let () (declare (not safe)) (##fx= _g136919_ 2))
                 (apply __slot-ref__0 _g136918_))
                ((let () (declare (not safe)) (##fx= _g136919_ 3))
                 (apply __slot-ref__% _g136918_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g136918_))))))
    (define slot-ref__%
      (lambda (_%obj124381%_ _%slot124382%_ _%E124383%_)
        (if (symbol? _%slot124382%_)
            (let ((_%slot124387%_ _%slot124382%_))
              (if (procedure? _%E124383%_)
                  (let ((_%E124397%_ _%E124383%_))
                    (__slot-ref__% _%obj124381%_ _%slot124387%_ _%E124397%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@697.38-697.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E124383%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@697.21-697.25"
               'contract:
               'symbol?
               'value:
               _%slot124382%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj124410%_ _%slot124411%_)
        (let ((_%E124413%_ __slot-error))
          (slot-ref__% _%obj124410%_ _%slot124411%_ _%E124413%_))))
    (define slot-ref
      (lambda _g136920_
        (let ((_g136921_ (let () (declare (not safe)) (##length _g136920_))))
          (cond ((let () (declare (not safe)) (##fx= _g136921_ 2))
                 (apply slot-ref__0 _g136920_))
                ((let () (declare (not safe)) (##fx= _g136921_ 3))
                 (apply slot-ref__% _g136920_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g136920_))))))
    (define __slot-set!__%
      (lambda (_%obj131698%_ _%slot131699%_ _%val131700%_ _%E131701%_)
        (let* ((_%slot131704%_ _%slot131699%_)
               (_%E131712%_ _%E131701%_)
               (_%klass131721%_ (class-of _%obj131698%_))
               (_%$e131757%_
                (let* ((_%klass131724%_ _%klass131721%_)
                       (_%slot131727%_ _%slot131704%_)
                       (_%klass131732%_ _%klass131724%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot131727%_))
                      (let ((_%slot131747%_ _%slot131727%_))
                        (__class-slot-offset _%klass131732%_ _%slot131747%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot131727%_)
                        '#!void)))))
          (if _%$e131757%_
              ((lambda (_%off131760%_)
                 (unchecked-field-set!
                  _%obj131698%_
                  _%off131760%_
                  _%val131700%_))
               _%$e131757%_)
              (let ()
                (declare (not safe))
                (_%E131712%_ _%obj131698%_ _%slot131704%_))))))
    (define __slot-set!__0
      (lambda (_%obj131766%_ _%slot131767%_ _%val131768%_)
        (let ((_%E131770%_ __slot-error))
          (__slot-set!__%
           _%obj131766%_
           _%slot131767%_
           _%val131768%_
           _%E131770%_))))
    (define __slot-set!
      (lambda _g136922_
        (let ((_g136923_ (let () (declare (not safe)) (##length _g136922_))))
          (cond ((let () (declare (not safe)) (##fx= _g136923_ 3))
                 (apply __slot-set!__0 _g136922_))
                ((let () (declare (not safe)) (##fx= _g136923_ 4))
                 (apply __slot-set!__% _g136922_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g136922_))))))
    (define slot-set!__%
      (lambda (_%obj124540%_ _%slot124541%_ _%val124542%_ _%E124543%_)
        (if (symbol? _%slot124541%_)
            (let ((_%slot124547%_ _%slot124541%_))
              (if (procedure? _%E124543%_)
                  (let ((_%E124557%_ _%E124543%_))
                    (__slot-set!__%
                     _%obj124540%_
                     _%slot124547%_
                     _%val124542%_
                     _%E124557%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@699.43-699.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E124543%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@699.22-699.26"
               'contract:
               'symbol?
               'value:
               _%slot124541%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj124570%_ _%slot124571%_ _%val124572%_)
        (let ((_%E124574%_ __slot-error))
          (slot-set!__%
           _%obj124570%_
           _%slot124571%_
           _%val124572%_
           _%E124574%_))))
    (define slot-set!
      (lambda _g136924_
        (let ((_g136925_ (let () (declare (not safe)) (##length _g136924_))))
          (cond ((let () (declare (not safe)) (##fx= _g136925_ 3))
                 (apply slot-set!__0 _g136924_))
                ((let () (declare (not safe)) (##fx= _g136925_ 4))
                 (apply slot-set!__% _g136924_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g136924_))))))
    (define __subclass?
      (lambda (_%maybe-sub-class131669%_ _%maybe-super-class131670%_)
        (let* ((_%maybe-sub-class131673%_ _%maybe-sub-class131669%_)
               (_%maybe-super-class131681%_ _%maybe-super-class131670%_)
               (_%maybe-super-class-id131690%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class131681%_)))
               (_%$e131692%_
                (eq? _%maybe-super-class-id131690%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class131673%_)))))
          (if _%$e131692%_
              _%$e131692%_
              (let ((__tmp136927
                     (lambda (_%super-class131695%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class131695%_))
                            _%maybe-super-class-id131690%_)))
                    (__tmp136926
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class131673%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (ormap__0 __tmp136927 __tmp136926))))))
    (define subclass?
      (lambda (_%maybe-sub-class124701%_ _%maybe-super-class124702%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class124701%_ 'class))
            (let ((_%maybe-sub-class124706%_ _%maybe-sub-class124701%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class124702%_
                     'class))
                  (let ((_%maybe-super-class124716%_
                         _%maybe-super-class124702%_))
                    (__subclass?
                     _%maybe-sub-class124706%_
                     _%maybe-super-class124716%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@705.45-705.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class124702%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@705.18-705.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class124701%_)
              '#!void))))
    (define object?
      (lambda (_%o131666%_)
        (if (let () (declare (not safe)) (##structure? _%o131666%_))
            (let ((__tmp136928
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o131666%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp136928 'class))
            '#f)))
    (define __direct-instance?
      (lambda (_%klass131653%_ _%obj131654%_)
        (let* ((_%klass131657%_ _%klass131653%_)
               (__tmp136929
                (let () (declare (not safe)) (##type-id _%klass131657%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj131654%_ __tmp136929))))
    (define direct-instance?
      (lambda (_%klass124846%_ _%obj124847%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124846%_ 'class))
            (let ((_%klass124851%_ _%klass124846%_))
              (__direct-instance? _%klass124851%_ _%obj124847%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@719.25-719.30"
               'contract:
               'class-type?
               'value:
               _%klass124846%_)
              '#!void))))
    (define immediate-instance-of?
      (lambda (_%klass131649%_ _%obj131650%_)
        (if (let () (declare (not safe)) (##structure? _%obj131650%_))
            (eq? _%klass131649%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj131650%_)))
            '#f)))
    (define __struct-instance?
      (lambda (_%klass131636%_ _%obj131637%_)
        (let* ((_%klass131640%_ _%klass131636%_)
               (__tmp136930
                (let () (declare (not safe)) (##type-id _%klass131640%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj131637%_ __tmp136930))))
    (define struct-instance?
      (lambda (_%klass124981%_ _%obj124982%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124981%_ 'class))
            (let ((_%klass124986%_ _%klass124981%_))
              (__struct-instance? _%klass124986%_ _%obj124982%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@748.25-748.30"
               'contract:
               'class-type?
               'value:
               _%klass124981%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass131588%_ _%obj131589%_)
        (let* ((_%klass131592%_ _%klass131588%_)
               (_%type131601%_ (class-of _%obj131589%_))
               (_%maybe-sub-class131603%_ _%type131601%_)
               (_%maybe-super-class131606%_ _%klass131592%_)
               (_%maybe-sub-class131611%_ _%maybe-sub-class131603%_)
               (_%maybe-super-class131626%_ _%maybe-super-class131606%_))
          (__subclass?
           _%maybe-sub-class131611%_
           _%maybe-super-class131626%_))))
    (define class-instance?
      (lambda (_%klass125116%_ _%obj125117%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125116%_ 'class))
            (let ((_%klass125121%_ _%klass125116%_))
              (__class-instance? _%klass125121%_ _%obj125117%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.24-753.29"
               'contract:
               'class-type?
               'value:
               _%klass125116%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass131547%_ _%k131548%_)
        (let* ((_%klass131551%_ _%klass131547%_) (_%k131559%_ _%k131548%_))
          (if (let* ((_%klass131568%_ _%klass131551%_)
                     (_%klass131573%_ _%klass131568%_))
                (__class-type-system? _%klass131573%_))
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass131551%_)
                '#!void)
              (let ((_%obj131586%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass131551%_ _%k131559%_))))
                (__object-fill! _%obj131586%_ '#f))))))
    (define make-object
      (lambda (_%klass125251%_ _%k125252%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125251%_ 'class))
            (let ((_%klass125256%_ _%klass125251%_))
              (if (fixnum? _%k125252%_)
                  (let ((_%k125266%_ _%k125252%_))
                    (__make-object _%klass125256%_ _%k125266%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@758.37-758.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k125252%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@758.20-758.25"
               'contract:
               'class-type?
               'value:
               _%klass125251%_)
              '#!void))))
    (define __object-class
      (lambda (_%obj131535%_)
        (let ((_%obj131538%_ _%obj131535%_))
          (declare (not safe))
          (##structure-type _%obj131538%_))))
    (define object-class
      (lambda (_%obj125396%_)
        (if (object? _%obj125396%_)
            (let ((_%obj125400%_ _%obj125396%_))
              (__object-class _%obj125400%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@778.21-778.24"
               'contract:
               'object?
               'value:
               _%obj125396%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj131517%_ _%fill131518%_)
        (let ((_%obj131521%_ _%obj131517%_))
          (let _%loop131530%_ ((_%i131532%_
                                (let ((__tmp136931
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj131521%_))))
                                  (declare (not safe))
                                  (##fx- __tmp136931 '1))))
            (if (let () (declare (not safe)) (##fx> _%i131532%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj131521%_
                     _%fill131518%_
                     _%i131532%_
                     '#f
                     '#f))
                  (_%loop131530%_
                   (let () (declare (not safe)) (##fx- _%i131532%_ '1))))
                _%obj131521%_)))))
    (define object-fill!
      (lambda (_%obj125530%_ _%fill125531%_)
        (if (object? _%obj125530%_)
            (let ((_%obj125535%_ _%obj125530%_))
              (__object-fill! _%obj125535%_ _%fill125531%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@783.21-783.24"
               'contract:
               'object?
               'value:
               _%obj125530%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass131473%_)
        (let* ((_%klass131476%_ _%klass131473%_)
               (_%klass131485%_ _%klass131476%_)
               (_%k131488%_
                (let ((__tmp136932
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass131476%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp136932)))
               (_%klass131493%_ _%klass131485%_)
               (_%k131507%_ _%k131488%_))
          (__make-object _%klass131493%_ _%k131507%_))))
    (define new-instance
      (lambda (_%klass125665%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125665%_ 'class))
            (let ((_%klass125669%_ _%klass125665%_))
              (__new-instance _%klass125669%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@794.21-794.26"
               'contract:
               'class-type?
               'value:
               _%klass125665%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass131332%_ . _%args131333%_)
        (let* ((_%klass131336%_ _%klass131332%_)
               (_%$e131345%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass131336%_ '10 '#f '#f))))
          (if _%$e131345%_
              ((lambda (_%kons-id131348%_)
                 (let ((_%obj131370%_
                        (let* ((_%klass131350%_ _%klass131336%_)
                               (_%klass131355%_ _%klass131350%_))
                          (__new-instance _%klass131355%_))))
                   (___constructor-init!
                    _%klass131336%_
                    _%kons-id131348%_
                    _%obj131370%_
                    _%args131333%_)
                   _%obj131370%_))
               _%$e131345%_)
              (if (let* ((_%klass131372%_ _%klass131336%_)
                         (_%klass131377%_ _%klass131372%_))
                    (__class-type-metaclass? _%klass131377%_))
                  (let ((_%obj131404%_
                         (let* ((_%klass131388%_ _%klass131336%_)
                                (_%klass131393%_ _%klass131388%_))
                           (__new-instance _%klass131393%_))))
                    (__metaclass-instance-init!
                     _%klass131336%_
                     _%obj131404%_
                     _%args131333%_)
                    _%obj131404%_)
                  (if (let* ((_%klass131406%_ _%klass131336%_)
                             (_%klass131411%_ _%klass131406%_))
                        (__class-type-struct? _%klass131411%_))
                      (if (let ((__tmp136934
                                 (let* ((_%klass131440%_ _%klass131336%_)
                                        (_%klass131445%_ _%klass131440%_))
                                   (__class-type-field-count _%klass131445%_)))
                                (__tmp136933
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args131333%_))))
                            (declare (not safe))
                            (##fx= __tmp136934 __tmp136933))
                          (apply ##structure _%klass131336%_ _%args131333%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass131336%_
                                   'slots:
                                   (let* ((_%klass131457%_ _%klass131336%_)
                                          (_%klass131462%_ _%klass131457%_))
                                     (__class-type-slot-list _%klass131462%_))
                                   'args:
                                   _%args131333%_)
                            '#!void))
                      (let ((_%obj131438%_
                             (let* ((_%klass131422%_ _%klass131336%_)
                                    (_%klass131427%_ _%klass131422%_))
                               (__new-instance _%klass131427%_))))
                        (___class-instance-init!
                         _%klass131336%_
                         _%obj131438%_
                         _%args131333%_)
                        _%obj131438%_)))))))
    (define make-instance
      (lambda (_%klass125799%_ . _%args125800%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125799%_ 'class))
            (let ((_%klass125804%_ _%klass125799%_))
              (declare (not safe))
              (##apply __make-instance _%klass125804%_ _%args125800%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@797.22-797.27"
               'contract:
               'class-type?
               'value:
               _%klass125799%_)
              '#!void))))
    (define make-class-instance make-instance)
    (define __struct-instance-init!
      (lambda (_%obj131319%_ . _%args131320%_)
        (let ((_%obj131323%_ _%obj131319%_))
          (if (let ((__tmp136936
                     (let () (declare (not safe)) (##length _%args131320%_)))
                    (__tmp136935
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj131323%_))))
                (declare (not safe))
                (##fx< __tmp136936 __tmp136935))
              (___struct-instance-init! _%obj131323%_ _%args131320%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj131323%_
                     'args:
                     _%args131320%_))
          '#!void)))
    (define struct-instance-init!
      (lambda (_%obj125934%_ . _%args125935%_)
        (if (object? _%obj125934%_)
            (let ((_%obj125939%_ _%obj125934%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj125939%_ _%args125935%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@822.30-822.33"
               'contract:
               'object?
               'value:
               _%obj125934%_)
              '#!void))))
    (define ___struct-instance-init!
      (lambda (_%obj131278%_ _%args131279%_)
        (let _%lp131281%_ ((_%k131283%_ '1) (_%rest131284%_ _%args131279%_))
          (let* ((_%rest131285131293%_ _%rest131284%_)
                 (_%else131287131301%_ (lambda () _%obj131278%_))
                 (_%K131289131307%_
                  (lambda (_%rest131304%_ _%hd131305%_)
                    (unchecked-field-set!
                     _%obj131278%_
                     _%k131283%_
                     _%hd131305%_)
                    (_%lp131281%_
                     (let () (declare (not safe)) (##fx+ _%k131283%_ '1))
                     _%rest131304%_))))
            (if (pair? _%rest131285131293%_)
                (let ((_%hd131290131310%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest131285131293%_)))
                      (_%tl131291131312%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest131285131293%_))))
                  (let* ((_%hd131315%_ _%hd131290131310%_)
                         (_%rest131317%_ _%tl131291131312%_))
                    (_%K131289131307%_ _%rest131317%_ _%hd131315%_)))
                (_%else131287131301%_))))))
    (define __class-instance-init!
      (lambda (_%obj131265%_ . _%args131266%_)
        (let ((_%obj131269%_ _%obj131265%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj131269%_))
           _%obj131269%_
           _%args131266%_)
          '#!void)))
    (define class-instance-init!
      (lambda (_%obj126069%_ . _%args126070%_)
        (if (object? _%obj126069%_)
            (let ((_%obj126074%_ _%obj126069%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj126074%_ _%args126070%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@862.29-862.32"
               'contract:
               'object?
               'value:
               _%obj126069%_)
              '#!void))))
    (define ___class-instance-init!
      (lambda (_%klass131207%_ _%obj131208%_ _%args131209%_)
        (let _%lp131211%_ ((_%rest131213%_ _%args131209%_))
          (let* ((_%rest131214131224%_ _%rest131213%_)
                 (_%else131216131232%_
                  (lambda ()
                    (if (null? _%rest131213%_)
                        _%obj131208%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass131207%_
                               'rest:
                               _%rest131213%_))))
                 (_%K131218131246%_
                  (lambda (_%rest131235%_ _%val131236%_ _%key131237%_)
                    (if (keyword? _%key131237%_)
                        (let ((_%$e131240%_
                               (__class-slot-offset
                                _%klass131207%_
                                _%key131237%_)))
                          (if _%$e131240%_
                              ((lambda (_%off131243%_)
                                 (unchecked-field-set!
                                  _%obj131208%_
                                  _%off131243%_
                                  _%val131236%_)
                                 (_%lp131211%_ _%rest131235%_))
                               _%$e131240%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass131207%_
                                     'slot:
                                     _%key131237%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key131237%_)))))
            (if (pair? _%rest131214131224%_)
                (let ((_%hd131219131249%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest131214131224%_)))
                      (_%tl131220131251%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest131214131224%_))))
                  (let ((_%key131254%_ _%hd131219131249%_))
                    (if (pair? _%tl131220131251%_)
                        (let ((_%hd131221131256%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl131220131251%_)))
                              (_%tl131222131258%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl131220131251%_))))
                          (let* ((_%val131261%_ _%hd131221131256%_)
                                 (_%rest131263%_ _%tl131222131258%_))
                            (_%K131218131246%_
                             _%rest131263%_
                             _%val131261%_
                             _%key131254%_)))
                        (_%else131216131232%_))))
                (_%else131216131232%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass131203%_ _%obj131204%_ _%args131205%_)
        (apply call-method
               _%klass131203%_
               'instance-init!
               _%obj131204%_
               _%args131205%_)))
    (define __constructor-init!
      (lambda (_%klass131172%_
               _%kons-id131173%_
               _%obj131174%_
               .
               _%args131175%_)
        (let* ((_%klass131178%_ _%klass131172%_)
               (_%kons-id131186%_ _%kons-id131173%_)
               (_%obj131194%_ _%obj131174%_))
          (___constructor-init!
           _%klass131178%_
           _%kons-id131186%_
           _%obj131194%_
           _%args131175%_)
          '#!void)))
    (define constructor-init!
      (lambda (_%klass126204%_
               _%kons-id126205%_
               _%obj126206%_
               .
               _%args126207%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126204%_ 'class))
            (let ((_%klass126211%_ _%klass126204%_))
              (if (symbol? _%kons-id126205%_)
                  (let ((_%kons-id126221%_ _%kons-id126205%_))
                    (if (object? _%obj126206%_)
                        (let ((_%obj126231%_ _%obj126206%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass126211%_
                                   _%kons-id126221%_
                                   _%obj126231%_
                                   _%args126207%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@886.63-886.66"
                           'contract:
                           'object?
                           'value:
                           _%obj126206%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@886.43-886.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id126205%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@886.26-886.31"
               'contract:
               'class-type?
               'value:
               _%klass126204%_)
              '#!void))))
    (define ___constructor-init!
      (lambda (_%klass131161%_ _%kons-id131162%_ _%obj131163%_ _%args131164%_)
        (let ((_%$e131166%_
               (__find-method
                _%klass131161%_
                _%obj131163%_
                _%kons-id131162%_)))
          (if _%$e131166%_
              ((lambda (_%kons131169%_)
                 (apply _%kons131169%_ _%obj131163%_ _%args131164%_)
                 _%obj131163%_)
               _%$e131166%_)
              (error '"missing constructor"
                     'class:
                     _%klass131161%_
                     'method:
                     _%kons-id131162%_)))))
    (define __struct-copy
      (lambda (_%struct131149%_)
        (let ((_%struct131152%_ _%struct131149%_))
          (declare (not safe))
          (##structure-copy _%struct131152%_))))
    (define struct-copy
      (lambda (_%struct126361%_)
        (if (object? _%struct126361%_)
            (let ((_%struct126365%_ _%struct126361%_))
              (__struct-copy _%struct126365%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@900.20-900.26"
               'contract:
               'object?
               'value:
               _%struct126361%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj131130%_)
        (let* ((_%obj131133%_ _%obj131130%_)
               (_%len131142%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj131133%_))))
          (let _%recur131144%_ ((_%i131146%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i131146%_ _%len131142%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj131133%_
                         _%i131146%_
                         '#f
                         '#f))
                      (_%recur131144%_
                       (let () (declare (not safe)) (##fx+ _%i131146%_ '1))))
                '())))))
    (define struct->list
      (lambda (_%obj126495%_)
        (if (object? _%obj126495%_)
            (let ((_%obj126499%_ _%obj126495%_))
              (__struct->list _%obj126499%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@903.21-903.24"
               'contract:
               'object?
               'value:
               _%obj126495%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj131082%_)
        (let* ((_%obj131085%_ _%obj131082%_)
               (_%klass131094%_
                (let () (declare (not safe)) (##structure-type _%obj131085%_)))
               (_%slot-vector131096%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass131094%_ '7 '#f '#f))))
          (let _%loop131098%_ ((_%index131100%_
                                (let ((__tmp136937
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector131096%_))))
                                  (declare (not safe))
                                  (##fx- __tmp136937 '1)))
                               (_%plist131101%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index131100%_ '1))
                (cons _%klass131094%_ _%plist131101%_)
                (let ((_%slot131104%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector131096%_
                          _%index131100%_))))
                  (_%loop131098%_
                   (let () (declare (not safe)) (##fx- _%index131100%_ '1))
                   (cons (let ((_%sym131106%_ _%slot131104%_))
                           (if (symbol? _%sym131106%_)
                               (let ((_%sym131111%_ _%sym131106%_))
                                 (declare (not safe))
                                 (__symbol->keyword _%sym131111%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  'symbol?
                                  'value:
                                  _%sym131106%_)
                                 '#!void)))
                         (cons (unchecked-field-ref
                                _%obj131085%_
                                _%index131100%_)
                               _%plist131101%_)))))))))
    (define class->list
      (lambda (_%obj126629%_)
        (if (object? _%obj126629%_)
            (let ((_%obj126633%_ _%obj126629%_)) (__class->list _%obj126633%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@911.20-911.23"
               'contract:
               'object?
               'value:
               _%obj126629%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj131032%_ _%id131033%_ . _%args131034%_)
        (let* ((_%id131037%_ _%id131033%_)
               (_%$e131068%_
                (let* ((_%obj131046%_ _%obj131032%_)
                       (_%id131049%_ _%id131037%_)
                       (_%id131054%_ _%id131049%_))
                  (__method-ref _%obj131046%_ _%id131054%_))))
          (if _%$e131068%_
              ((lambda (_%method131071%_)
                 (let ((_%method131073%_ _%method131071%_))
                   (apply _%method131073%_ _%obj131032%_ _%args131034%_)))
               _%$e131068%_)
              (error '"cannot find method"
                     'object:
                     _%obj131032%_
                     'method:
                     _%id131037%_)))))
    (define call-method
      (lambda (_%obj126763%_ _%id126764%_ . _%args126765%_)
        (if (symbol? _%id126764%_)
            (let ((_%id126769%_ _%id126764%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj126763%_
                       _%id126769%_
                       _%args126765%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@926.24-926.26"
               'contract:
               'symbol?
               'value:
               _%id126764%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj130983%_ _%id130984%_)
        (let* ((_%id130987%_ _%id130984%_)
               (_%klass130996%_ (class-of _%obj130983%_))
               (_%obj130999%_ _%obj130983%_)
               (_%id131002%_ _%id130987%_)
               (_%klass131007%_ _%klass130996%_)
               (_%id131022%_ _%id131002%_))
          (__find-method _%klass131007%_ _%obj130999%_ _%id131022%_))))
    (define method-ref
      (lambda (_%obj126899%_ _%id126900%_)
        (if (symbol? _%id126900%_)
            (let ((_%id126904%_ _%id126900%_))
              (__method-ref _%obj126899%_ _%id126904%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@953.23-953.25"
               'contract:
               'symbol?
               'value:
               _%id126900%_)
              '#!void))))
    (define checked-method-ref
      (lambda (_%obj130955%_ _%id130956%_)
        (let ((_%$e130980%_
               (let* ((_%obj130959%_ _%obj130955%_)
                      (_%id130962%_ _%id130956%_))
                 (if (symbol? _%id130962%_)
                     (let ((_%id130967%_ _%id130962%_))
                       (__method-ref _%obj130959%_ _%id130967%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id130962%_)
                       '#!void)))))
          (if _%$e130980%_
              _%$e130980%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj130955%_
                       'method:
                       _%id130956%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj130904%_ _%id130905%_)
        (let* ((_%id130908%_ _%id130905%_)
               (_%$e130939%_
                (let* ((_%obj130917%_ _%obj130904%_)
                       (_%id130920%_ _%id130908%_)
                       (_%id130925%_ _%id130920%_))
                  (__method-ref _%obj130917%_ _%id130925%_))))
          (if _%$e130939%_
              ((lambda (_%method130942%_)
                 (let ((_%method130944%_ _%method130942%_))
                   (lambda _%args130952%_
                     (apply _%method130944%_ _%obj130904%_ _%args130952%_))))
               _%$e130939%_)
              '#f))))
    (define bound-method-ref
      (lambda (_%obj127034%_ _%id127035%_)
        (if (symbol? _%id127035%_)
            (let ((_%id127039%_ _%id127035%_))
              (__bound-method-ref _%obj127034%_ _%id127039%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@961.29-961.31"
               'contract:
               'symbol?
               'value:
               _%id127035%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj130887%_ _%id130888%_)
        (let* ((_%id130891%_ _%id130888%_)
               (_%method130900%_
                (checked-method-ref _%obj130887%_ _%id130891%_)))
          (lambda _%args130902%_
            (apply _%method130900%_ _%obj130887%_ _%args130902%_)))))
    (define checked-bound-method-ref
      (lambda (_%obj127169%_ _%id127170%_)
        (if (symbol? _%id127170%_)
            (let ((_%id127174%_ _%id127170%_))
              (__checked-bound-method-ref _%obj127169%_ _%id127174%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@970.37-970.39"
               'contract:
               'symbol?
               'value:
               _%id127170%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass130756%_ _%obj130757%_ _%id130758%_)
        (let* ((_%klass130761%_ _%klass130756%_) (_%id130769%_ _%id130758%_))
          (if (let* ((_%klass130778%_ _%klass130761%_)
                     (_%klass130783%_ _%klass130778%_))
                (__class-type-sealed? _%klass130783%_))
              (let ((_%tab130813%_
                     (let* ((_%klass130797%_ _%klass130761%_)
                            (_%klass130802%_ _%klass130797%_))
                       (__specialize-class _%klass130802%_))))
                (declare (not safe))
                (symbolic-table-ref _%tab130813%_ _%id130769%_ '#f))
              (let ((_%$e130848%_
                     (let* ((_%klass130815%_ _%klass130761%_)
                            (_%obj130818%_ _%obj130757%_)
                            (_%id130821%_ _%id130769%_)
                            (_%klass130826%_ _%klass130815%_)
                            (_%id130838%_ _%id130821%_))
                       (__direct-method-ref
                        _%klass130826%_
                        _%obj130818%_
                        _%id130838%_))))
                (if _%$e130848%_
                    _%$e130848%_
                    (let* ((_%klass130852%_ _%klass130761%_)
                           (_%obj130855%_ _%obj130757%_)
                           (_%id130858%_ _%id130769%_)
                           (_%klass130863%_ _%klass130852%_)
                           (_%id130877%_ _%id130858%_))
                      (__mixin-method-ref
                       _%klass130863%_
                       _%obj130855%_
                       _%id130877%_))))))))
    (define find-method
      (lambda (_%klass127304%_ _%obj127305%_ _%id127306%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127304%_ 'class))
            (let ((_%klass127310%_ _%klass127304%_))
              (if (symbol? _%id127306%_)
                  (let ((_%id127320%_ _%id127306%_))
                    (__find-method _%klass127310%_ _%obj127305%_ _%id127320%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@975.41-975.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id127306%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@975.20-975.25"
               'contract:
               'class-type?
               'value:
               _%klass127304%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins130701%_ _%obj130702%_ _%id130703%_)
        (let* ((_%id130706%_ _%id130703%_)
               (__tmp136938
                (lambda (_%g130714130716%_)
                  (let* ((_%klass130719%_ _%g130714130716%_)
                         (_%obj130722%_ _%obj130702%_)
                         (_%id130725%_ _%id130706%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass130719%_ 'class))
                        (let* ((_%klass130730%_ _%klass130719%_)
                               (_%id130746%_ _%id130725%_))
                          (__direct-method-ref
                           _%klass130730%_
                           _%obj130722%_
                           _%id130746%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass130719%_)
                          '#!void))))))
          (declare (not safe))
          (ormap__0 __tmp136938 _%mixins130701%_))))
    (define mixin-find-method
      (lambda (_%mixins127450%_ _%obj127451%_ _%id127452%_)
        (if (symbol? _%id127452%_)
            (let ((_%id127456%_ _%id127452%_))
              (__mixin-find-method
               _%mixins127450%_
               _%obj127451%_
               _%id127456%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@984.37-984.39"
               'contract:
               'symbol?
               'value:
               _%id127452%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass130594%_ _%obj130595%_ _%id130596%_)
        (let* ((_%klass130599%_ _%klass130594%_) (_%id130607%_ _%id130596%_))
          (letrec ((_%metaclass-resolve-method130616%_
                    (lambda ()
                      (let* ((_%obj130677%_ _%klass130599%_)
                             (_%id130680%_ 'direct-method-ref)
                             (_%args130683%_ (list _%obj130595%_ _%id130607%_))
                             (_%id130688%_ _%id130680%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj130677%_
                                 _%id130688%_
                                 _%args130683%_))))
                   (_%metaclass-resolve-method!130617%_
                    (lambda ()
                      (let ((_%method130674%_
                             (_%metaclass-resolve-method130616%_)))
                        (let ((__tmp136940
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass130599%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp136939
                               (if _%method130674%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp136940
                           _%id130607%_
                           __tmp136939))
                        _%method130674%_))))
            (let ((_%$e130619%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass130599%_ '11 '#f '#f))))
              (if _%$e130619%_
                  ((lambda (_%ht130622%_)
                     (let ((_%method130624%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht130622%_
                               _%id130607%_
                               '#f))))
                       (if (procedure? _%method130624%_)
                           _%method130624%_
                           (if (let* ((_%klass130627%_ _%klass130599%_)
                                      (_%klass130632%_ _%klass130627%_))
                                 (__class-type-metaclass? _%klass130632%_))
                               (let ((_%$e130650%_ _%method130624%_))
                                 (if (eq? 'resolved _%$e130650%_)
                                     (_%metaclass-resolve-method130616%_)
                                     (if (eq? 'unknown _%$e130650%_)
                                         '#f
                                         (_%metaclass-resolve-method!130617%_))))
                               '#f))))
                   _%$e130619%_)
                  (if (let* ((_%klass130654%_ _%klass130599%_)
                             (_%klass130659%_ _%klass130654%_))
                        (__class-type-metaclass? _%klass130659%_))
                      (let ((_%tab130670%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass130599%_
                           _%tab130670%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!130617%_))
                      '#f)))))))
    (define direct-method-ref
      (lambda (_%klass127586%_ _%obj127587%_ _%id127588%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127586%_ 'class))
            (let ((_%klass127592%_ _%klass127586%_))
              (if (symbol? _%id127588%_)
                  (let ((_%id127602%_ _%id127588%_))
                    (__direct-method-ref
                     _%klass127592%_
                     _%obj127587%_
                     _%id127602%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@987.47-987.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id127588%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@987.26-987.31"
               'contract:
               'class-type?
               'value:
               _%klass127586%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass130546%_ _%obj130547%_ _%id130548%_)
        (let* ((_%klass130551%_ _%klass130546%_)
               (_%id130559%_ _%id130548%_)
               (_%mixins130568%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass130551%_ '6 '#f '#f)))
               (_%obj130571%_ _%obj130547%_)
               (_%id130574%_ _%id130559%_)
               (_%id130579%_ _%id130574%_))
          (__mixin-find-method _%mixins130568%_ _%obj130571%_ _%id130579%_))))
    (define mixin-method-ref
      (lambda (_%klass127732%_ _%obj127733%_ _%id127734%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127732%_ 'class))
            (let ((_%klass127738%_ _%klass127732%_))
              (if (symbol? _%id127734%_)
                  (let ((_%id127748%_ _%id127734%_))
                    (__mixin-method-ref
                     _%klass127738%_
                     _%obj127733%_
                     _%id127748%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1017.46-1017.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id127734%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1017.25-1017.30"
               'contract:
               'class-type?
               'value:
               _%klass127732%_)
              '#!void))))
    (define __bind-method!__%
      (lambda (_%klass130456%_ _%id130457%_ _%proc130458%_ _%rebind?130459%_)
        (let* ((_%id130462%_ _%id130457%_) (_%proc130470%_ _%proc130458%_))
          (letrec ((_%bind!130479%_
                    (lambda (_%ht130530%_)
                      (if (and (not _%rebind?130459%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht130530%_
                                  _%id130462%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass130456%_
                                 'method:
                                 _%id130462%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht130530%_
                               _%id130462%_
                               _%proc130470%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass130456%_ 'class))
                (let ((_%ht130482%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass130456%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht130482%_
                      (_%bind!130479%_ _%ht130482%_)
                      (let ((_%ht130484%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass130456%_
                           _%ht130484%_
                           '11
                           '#f
                           '#f))
                        (_%bind!130479%_ _%ht130484%_))))
                (if (let () (declare (not safe)) (##type? _%klass130456%_))
                    (let* ((_%klass130487%_
                            (__shadow-class__0 _%klass130456%_))
                           (_%id130490%_ _%id130462%_)
                           (_%proc130493%_ _%proc130470%_)
                           (_%rebind?130496%_ _%rebind?130459%_)
                           (_%id130501%_ _%id130490%_)
                           (_%proc130519%_ _%proc130493%_))
                      (__bind-method!__%
                       _%klass130487%_
                       _%id130501%_
                       _%proc130519%_
                       _%rebind?130496%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass130456%_)))))))
    (define __bind-method!__0
      (lambda (_%klass130535%_ _%id130536%_ _%proc130537%_)
        (let ((_%rebind?130539%_ '#f))
          (__bind-method!__%
           _%klass130535%_
           _%id130536%_
           _%proc130537%_
           _%rebind?130539%_))))
    (define __bind-method!
      (lambda _g136941_
        (let ((_g136942_ (let () (declare (not safe)) (##length _g136941_))))
          (cond ((let () (declare (not safe)) (##fx= _g136942_ 3))
                 (apply __bind-method!__0 _g136941_))
                ((let () (declare (not safe)) (##fx= _g136942_ 4))
                 (apply __bind-method!__% _g136941_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g136941_))))))
    (define bind-method!__%
      (lambda (_%klass127879%_ _%id127880%_ _%proc127881%_ _%rebind?127882%_)
        (if (symbol? _%id127880%_)
            (let ((_%id127886%_ _%id127880%_))
              (if (procedure? _%proc127881%_)
                  (let ((_%proc127896%_ _%proc127881%_))
                    (__bind-method!__%
                     _%klass127879%_
                     _%id127886%_
                     _%proc127896%_
                     _%rebind?127882%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1020.42-1020.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc127881%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1020.27-1020.29"
               'contract:
               'symbol?
               'value:
               _%id127880%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass127909%_ _%id127910%_ _%proc127911%_)
        (let ((_%rebind?127913%_ '#f))
          (bind-method!__%
           _%klass127909%_
           _%id127910%_
           _%proc127911%_
           _%rebind?127913%_))))
    (define bind-method!
      (lambda _g136943_
        (let ((_g136944_ (let () (declare (not safe)) (##length _g136943_))))
          (cond ((let () (declare (not safe)) (##fx= _g136944_ 3))
                 (apply bind-method!__0 _g136943_))
                ((let () (declare (not safe)) (##fx= _g136944_ 4))
                 (apply bind-method!__% _g136943_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g136943_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint130437%_ _%seed130438%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint130437%_
           procedure-hash
           eq?
           _%seed130438%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint130444%_ '#f) (_%seed130446%_ '0))
          (make-method-specializer-table__%
           _%size-hint130444%_
           _%seed130446%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint130448%_)
        (let ((_%seed130450%_ '0))
          (make-method-specializer-table__%
           _%size-hint130448%_
           _%seed130450%_))))
    (define make-method-specializer-table
      (lambda _g136945_
        (let ((_g136946_ (let () (declare (not safe)) (##length _g136945_))))
          (cond ((let () (declare (not safe)) (##fx= _g136946_ 0))
                 (apply make-method-specializer-table__0 _g136945_))
                ((let () (declare (not safe)) (##fx= _g136946_ 1))
                 (apply make-method-specializer-table__1 _g136945_))
                ((let () (declare (not safe)) (##fx= _g136946_ 2))
                 (apply make-method-specializer-table__% _g136945_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g136945_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint130417%_ _%seed130419%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint130417%_
           procedure-hash
           eq?
           _%seed130419%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint130425%_ '#f) (_%seed130427%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint130425%_
           _%seed130427%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint130429%_)
        (let ((_%seed130431%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint130429%_
           _%seed130431%_))))
    (define make-method-specializer-table/lock
      (lambda _g136947_
        (let ((_g136948_ (let () (declare (not safe)) (##length _g136947_))))
          (cond ((let () (declare (not safe)) (##fx= _g136948_ 0))
                 (apply make-method-specializer-table/lock__0 _g136947_))
                ((let () (declare (not safe)) (##fx= _g136948_ 1))
                 (apply make-method-specializer-table/lock__1 _g136947_))
                ((let () (declare (not safe)) (##fx= _g136948_ 2))
                 (apply make-method-specializer-table/lock__% _g136947_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g136947_))))))
    (define method-specializer-table-ref
      (lambda (_%tab130370%_ _%key130371%_ _%default130372%_)
        (let ((_%table130374%_
               (let () (declare (not safe)) (&raw-table-table _%tab130370%_)))
              (_%seed130375%_
               (let () (declare (not safe)) (&raw-table-seed _%tab130370%_))))
          (let* ((_%h130377%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key130371%_))
                         _%seed130375%_))
                 (_%size130380%_ (vector-length _%table130374%_))
                 (_%entries130383%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size130380%_ '2)))
                 (_%start130386%_
                  (let ((__tmp136949
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h130377%_ _%entries130383%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp136949 '1))))
            (let _%loop130390%_ ((_%probe130393%_ _%start130386%_)
                                 (_%i130395%_ '1)
                                 (_%deleted130397%_ '#f))
              (let ((_%k130400%_ (vector-ref _%table130374%_ _%probe130393%_)))
                (if (eq? _%k130400%_ (macro-unused-obj))
                    _%default130372%_
                    (if (eq? _%k130400%_ (macro-deleted-obj))
                        (_%loop130390%_
                         (let ((_%next-probe130405%_
                                (fx+ _%start130386%_
                                     _%i130395%_
                                     (fx* _%i130395%_ _%i130395%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe130405%_ _%size130380%_))
                         (let () (declare (not safe)) (##fx+ _%i130395%_ '1))
                         (let ((_%$e130408%_ _%deleted130397%_))
                           (if _%$e130408%_ _%$e130408%_ _%probe130393%_)))
                        (if (eq? _%key130371%_ _%k130400%_)
                            (vector-ref
                             _%table130374%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe130393%_ '1)))
                            (_%loop130390%_
                             (let ((_%next-probe130413%_
                                    (fx+ _%start130386%_
                                         _%i130395%_
                                         (fx* _%i130395%_ _%i130395%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe130413%_
                                _%size130380%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i130395%_ '1))
                             _%deleted130397%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab130343%_ _%key130344%_ _%default130345%_)
        (let ((_%lock130347%_
               (let () (declare (not safe)) (&raw-table-lock _%tab130343%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again130352%_ ((_%spin130355%_ '0))
              (if (let ((__tmp136950
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock130347%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp136950 '0))
                  (let ((__tmp136951 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock130347%_ '1 __tmp136951))
                  (if (let () (declare (not safe)) (##fx< _%spin130355%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again130352%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin130355%_ '1))))
                      (let ((_%owner130361%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock130347%_ '1))))
                        (if (eq? _%owner130361%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner130361%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again130352%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r130367%_
                 (method-specializer-table-ref
                  _%tab130343%_
                  _%key130344%_
                  _%default130345%_)))
            (let () (declare (not safe)) (##vector-set! _%lock130347%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock130347%_ '0 '0 '1))
            _%$r130367%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab130295%_ _%key130296%_ _%value130297%_)
        (let ((_%table130299%_
               (let () (declare (not safe)) (&raw-table-table _%tab130295%_)))
              (_%seed130300%_
               (let () (declare (not safe)) (&raw-table-seed _%tab130295%_))))
          (let* ((_%h130302%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key130296%_))
                         _%seed130300%_))
                 (_%size130305%_ (vector-length _%table130299%_))
                 (_%entries130308%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size130305%_ '2)))
                 (_%start130311%_
                  (let ((__tmp136952
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h130302%_ _%entries130308%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp136952 '1))))
            (let _%loop130315%_ ((_%probe130318%_ _%start130311%_)
                                 (_%i130320%_ '1)
                                 (_%deleted130322%_ '#f))
              (let ((_%k130325%_ (vector-ref _%table130299%_ _%probe130318%_)))
                (if (eq? _%k130325%_ (macro-unused-obj))
                    (if _%deleted130322%_
                        (begin
                          (vector-set!
                           _%table130299%_
                           _%deleted130322%_
                           _%key130296%_)
                          (vector-set!
                           _%table130299%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted130322%_ '1))
                           _%value130297%_)
                          ((lambda ()
                             (let ((__tmp136953
                                    (let ((__tmp136954
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab130295%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp136954 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab130295%_
                                __tmp136953)))))
                        (begin
                          (vector-set!
                           _%table130299%_
                           _%probe130318%_
                           _%key130296%_)
                          (vector-set!
                           _%table130299%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe130318%_ '1))
                           _%value130297%_)
                          ((lambda ()
                             (let ((__tmp136955
                                    (let ((__tmp136956
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab130295%_))))
                                      (declare (not safe))
                                      (##fx- __tmp136956 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab130295%_
                                __tmp136955))
                             (let ((__tmp136957
                                    (let ((__tmp136958
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab130295%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp136958 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab130295%_
                                __tmp136957))))))
                    (if (eq? _%k130325%_ (macro-deleted-obj))
                        (_%loop130315%_
                         (let ((_%next-probe130332%_
                                (fx+ _%start130311%_
                                     _%i130320%_
                                     (fx* _%i130320%_ _%i130320%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe130332%_ _%size130305%_))
                         (let () (declare (not safe)) (##fx+ _%i130320%_ '1))
                         (let ((_%$e130335%_ _%deleted130322%_))
                           (if _%$e130335%_ _%$e130335%_ _%probe130318%_)))
                        (if (eq? _%key130296%_ _%k130325%_)
                            (let ()
                              (vector-set!
                               _%table130299%_
                               _%probe130318%_
                               _%key130296%_)
                              (vector-set!
                               _%table130299%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe130318%_ '1))
                               _%value130297%_))
                            (_%loop130315%_
                             (let ((_%next-probe130340%_
                                    (fx+ _%start130311%_
                                         _%i130320%_
                                         (fx* _%i130320%_ _%i130320%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe130340%_
                                _%size130305%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i130320%_ '1))
                             _%deleted130322%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab130291%_ _%key130292%_ _%value130293%_)
        (if (let ((__tmp136961
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab130291%_)))
                  (__tmp136959
                   (let ((__tmp136960
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab130291%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp136960 '4))))
              (declare (not safe))
              (##fx< __tmp136961 __tmp136959))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab130291%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab130291%_
         _%key130292%_
         _%value130293%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab130263%_ _%key130264%_ _%value130265%_)
        (let ((_%lock130268%_
               (let () (declare (not safe)) (&raw-table-lock _%tab130263%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again130273%_ ((_%spin130276%_ '0))
              (if (let ((__tmp136962
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock130268%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp136962 '0))
                  (let ((__tmp136963 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock130268%_ '1 __tmp136963))
                  (if (let () (declare (not safe)) (##fx< _%spin130276%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again130273%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin130276%_ '1))))
                      (let ((_%owner130282%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock130268%_ '1))))
                        (if (eq? _%owner130282%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner130282%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again130273%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r130288%_
                 (method-specializer-table-set!
                  _%tab130263%_
                  _%key130264%_
                  _%value130265%_)))
            (let () (declare (not safe)) (##vector-set! _%lock130268%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock130268%_ '0 '0 '1))
            _%$r130288%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab130214%_
               _%key130215%_
               _%method-specializer-table-update!130216%_
               _%default130217%_)
        (let ((_%table130219%_
               (let () (declare (not safe)) (&raw-table-table _%tab130214%_)))
              (_%seed130220%_
               (let () (declare (not safe)) (&raw-table-seed _%tab130214%_))))
          (let* ((_%h130222%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key130215%_))
                         _%seed130220%_))
                 (_%size130225%_ (vector-length _%table130219%_))
                 (_%entries130228%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size130225%_ '2)))
                 (_%start130231%_
                  (let ((__tmp136964
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h130222%_ _%entries130228%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp136964 '1))))
            (let _%loop130235%_ ((_%probe130238%_ _%start130231%_)
                                 (_%i130240%_ '1)
                                 (_%deleted130242%_ '#f))
              (let ((_%k130245%_ (vector-ref _%table130219%_ _%probe130238%_)))
                (if (eq? _%k130245%_ (macro-unused-obj))
                    (if _%deleted130242%_
                        (begin
                          (vector-set!
                           _%table130219%_
                           _%deleted130242%_
                           _%key130215%_)
                          (vector-set!
                           _%table130219%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted130242%_ '1))
                           (_%method-specializer-table-update!130216%_
                            _%default130217%_))
                          ((lambda ()
                             (let ((__tmp136965
                                    (let ((__tmp136966
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab130214%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp136966 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab130214%_
                                __tmp136965)))))
                        (begin
                          (vector-set!
                           _%table130219%_
                           _%probe130238%_
                           _%key130215%_)
                          (vector-set!
                           _%table130219%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe130238%_ '1))
                           (_%method-specializer-table-update!130216%_
                            _%default130217%_))
                          ((lambda ()
                             (let ((__tmp136967
                                    (let ((__tmp136968
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab130214%_))))
                                      (declare (not safe))
                                      (##fx- __tmp136968 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab130214%_
                                __tmp136967))
                             (let ((__tmp136969
                                    (let ((__tmp136970
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab130214%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp136970 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab130214%_
                                __tmp136969))))))
                    (if (eq? _%k130245%_ (macro-deleted-obj))
                        (_%loop130235%_
                         (let ((_%next-probe130252%_
                                (fx+ _%start130231%_
                                     _%i130240%_
                                     (fx* _%i130240%_ _%i130240%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe130252%_ _%size130225%_))
                         (let () (declare (not safe)) (##fx+ _%i130240%_ '1))
                         (let ((_%$e130255%_ _%deleted130242%_))
                           (if _%$e130255%_ _%$e130255%_ _%probe130238%_)))
                        (if (eq? _%key130215%_ _%k130245%_)
                            (let ()
                              (vector-set!
                               _%table130219%_
                               _%probe130238%_
                               _%key130215%_)
                              (vector-set!
                               _%table130219%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe130238%_ '1))
                               (_%method-specializer-table-update!130216%_
                                (vector-ref
                                 _%table130219%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe130238%_ '1))))))
                            (_%loop130235%_
                             (let ((_%next-probe130260%_
                                    (fx+ _%start130231%_
                                         _%i130240%_
                                         (fx* _%i130240%_ _%i130240%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe130260%_
                                _%size130225%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i130240%_ '1))
                             _%deleted130242%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab130209%_
               _%key130210%_
               _%method-specializer-table-update!130211%_
               _%default130212%_)
        (if (let ((__tmp136973
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab130209%_)))
                  (__tmp136971
                   (let ((__tmp136972
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab130209%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp136972 '4))))
              (declare (not safe))
              (##fx< __tmp136973 __tmp136971))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab130209%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab130209%_
         _%key130210%_
         _%method-specializer-table-update!130211%_
         _%default130212%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab130180%_
               _%key130181%_
               _%method-specializer-table-update!130182%_
               _%default130183%_)
        (let ((_%lock130186%_
               (let () (declare (not safe)) (&raw-table-lock _%tab130180%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again130191%_ ((_%spin130194%_ '0))
              (if (let ((__tmp136974
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock130186%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp136974 '0))
                  (let ((__tmp136975 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock130186%_ '1 __tmp136975))
                  (if (let () (declare (not safe)) (##fx< _%spin130194%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again130191%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin130194%_ '1))))
                      (let ((_%owner130200%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock130186%_ '1))))
                        (if (eq? _%owner130200%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner130200%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again130191%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r130206%_
                 (_%method-specializer-table-update!130182%_
                  _%tab130180%_
                  _%key130181%_
                  _%method-specializer-table-update!130182%_
                  _%default130183%_)))
            (let () (declare (not safe)) (##vector-set! _%lock130186%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock130186%_ '0 '0 '1))
            _%$r130206%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab130137%_ _%key130138%_)
        (let ((_%table130140%_
               (let () (declare (not safe)) (&raw-table-table _%tab130137%_)))
              (_%seed130142%_
               (let () (declare (not safe)) (&raw-table-seed _%tab130137%_))))
          (let* ((_%h130145%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key130138%_))
                         _%seed130142%_))
                 (_%size130148%_ (vector-length _%table130140%_))
                 (_%entries130151%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size130148%_ '2)))
                 (_%start130154%_
                  (let ((__tmp136976
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h130145%_ _%entries130151%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp136976 '1))))
            (let _%loop130158%_ ((_%probe130161%_ _%start130154%_)
                                 (_%i130163%_ '1))
              (let ((_%k130166%_ (vector-ref _%table130140%_ _%probe130161%_)))
                (if (eq? _%k130166%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k130166%_ (macro-deleted-obj))
                        (_%loop130158%_
                         (let ((_%next-probe130171%_
                                (fx+ _%start130154%_
                                     _%i130163%_
                                     (fx* _%i130163%_ _%i130163%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe130171%_ _%size130148%_))
                         (let () (declare (not safe)) (##fx+ _%i130163%_ '1)))
                        (if (eq? _%key130138%_ _%k130166%_)
                            (let ()
                              (vector-set!
                               _%table130140%_
                               _%probe130161%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table130140%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe130161%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp136977
                                        (let ((__tmp136978
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab130137%_))))
                                          (declare (not safe))
                                          (##fx- __tmp136978 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab130137%_
                                    __tmp136977)))))
                            (_%loop130158%_
                             (let ((_%next-probe130177%_
                                    (fx+ _%start130154%_
                                         _%i130163%_
                                         (fx* _%i130163%_ _%i130163%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe130177%_
                                _%size130148%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i130163%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab130109%_ _%key130111%_)
        (let ((_%lock130114%_
               (let () (declare (not safe)) (&raw-table-lock _%tab130109%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again130119%_ ((_%spin130122%_ '0))
              (if (let ((__tmp136979
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock130114%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp136979 '0))
                  (let ((__tmp136980 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock130114%_ '1 __tmp136980))
                  (if (let () (declare (not safe)) (##fx< _%spin130122%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again130119%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin130122%_ '1))))
                      (let ((_%owner130128%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock130114%_ '1))))
                        (if (eq? _%owner130128%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner130128%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again130119%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r130134%_
                 (method-specializer-table-delete!
                  _%tab130109%_
                  _%key130111%_)))
            (let () (declare (not safe)) (##vector-set! _%lock130114%_ '1 '#f))
            (let ()
              (declare (not safe))
              (##vector-cas! _%lock130114%_ '0 '0 '1))
            _%$r130134%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc130106%_ _%specializer130107%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc130106%_
         _%specializer130107%_)))
    (define __lookup-method-specializer
      (lambda (_%proc130104%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc130104%_
         '#f)))
    (define __specialize-class
      (lambda (_%klass130086%_)
        (let* ((_%klass130089%_ _%klass130086%_)
               (_%$e130098%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass130089%_ '12 '#f '#f))))
          (if _%$e130098%_
              _%$e130098%_
              (let ((_%method-table130102%_
                     (___specialize-class _%klass130089%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass130089%_
                   _%method-table130102%_
                   '12
                   '#f
                   '#f))
                _%method-table130102%_)))))
    (define specialize-class
      (lambda (_%klass128040%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass128040%_ 'class))
            (let ((_%klass128044%_ _%klass128040%_))
              (__specialize-class _%klass128044%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1070.25-1070.30"
               'contract:
               'class-type?
               'value:
               _%klass128040%_)
              '#!void))))
    (define __specialize-method
      (lambda (_%klass130070%_
               _%method-table130071%_
               _%method130072%_
               _%proc130073%_)
        (let ((_%$e130075%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table130071%_
                  _%method130072%_
                  '#f))))
          (if _%$e130075%_
              _%$e130075%_
              (let ((_%$e130078%_
                     (__lookup-method-specializer _%proc130073%_)))
                (if _%$e130078%_
                    ((lambda (_%specialize130081%_)
                       (let ((_%specialized-proc130083%_
                              (_%specialize130081%_
                               _%klass130070%_
                               _%method-table130071%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table130071%_
                          _%method130072%_
                          _%specialized-proc130083%_)))
                     _%$e130078%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table130071%_
                       _%method130072%_
                       _%proc130073%_))))))))
    (define ___specialize-class
      (lambda (_%klass129937%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass129937%_ 'class))
            (if (let* ((_%klass129940%_ _%klass129937%_)
                       (_%klass129945%_ _%klass129940%_))
                  (__class-type-metaclass? _%klass129945%_))
                (let* ((_%obj129957%_ _%klass129937%_)
                       (_%id129960%_ 'specialize-class)
                       (_%args129963%_ '())
                       (_%id129968%_ _%id129960%_))
                  (declare (not safe))
                  (##apply __call-method
                           _%obj129957%_
                           _%id129968%_
                           _%args129963%_))
                (if (let* ((_%pred129981%_ class-type-metaclass?)
                           (_%lst129984%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass129937%_
                               '6
                               '#f
                               '#f)))
                           (_%pred129989%_ _%pred129981%_))
                      (declare (not safe))
                      (__find _%pred129989%_ _%lst129984%_))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass129937%_)
                    (let ((_%method-table130002%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop130004%_ ((_%rest130006%_
                                            (let* ((_%klass130053%_
                                                    _%klass129937%_)
                                                   (_%klass130058%_
                                                    _%klass130053%_))
                                              (__class-precedence-list
                                               _%klass130058%_))))
                        (let* ((_%rest130007130015%_ _%rest130006%_)
                               (_%else130009130023%_
                                (lambda () _%method-table130002%_))
                               (_%K130011130041%_
                                (lambda (_%rest130026%_ _%xklass130027%_)
                                  (let ((_%xmethod-table130028130030%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass130027%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table130028130030%_
                                        (let* ((_%xmethod-table130032%_
                                                _%xmethod-table130028130030%_)
                                               (__tmp136981
                                                (lambda (_%g130033130036%_
                                                         _%g130034130038%_)
                                                  (__specialize-method
                                                   _%klass129937%_
                                                   _%method-table130002%_
                                                   _%g130033130036%_
                                                   _%g130034130038%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table130032%_
                                           __tmp136981))
                                        '#f))
                                  (_%loop130004%_ _%rest130026%_))))
                          (if (pair? _%rest130007130015%_)
                              (let ((_%hd130012130044%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest130007130015%_)))
                                    (_%tl130013130046%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest130007130015%_))))
                                (let* ((_%xklass130049%_ _%hd130012130044%_)
                                       (_%rest130051%_ _%tl130013130046%_))
                                  (_%K130011130041%_
                                   _%rest130051%_
                                   _%xklass130049%_)))
                              (_%else130009130023%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass129937%_))
                (__specialize-class (__shadow-class__0 _%klass129937%_))
                (error '"bad class; cannot specialize" _%klass129937%_)))))
    (define __seal-class!
      (lambda (_%klass129800%_)
        (let ((_%klass129803%_ _%klass129800%_))
          (if (let* ((_%klass129812%_ _%klass129803%_)
                     (_%klass129817%_ _%klass129812%_))
                (__class-type-sealed? _%klass129817%_))
              '#!void
              (begin
                (if (let* ((_%klass129830%_ _%klass129803%_)
                           (_%klass129835%_ _%klass129830%_))
                      (__class-type-metaclass? _%klass129835%_))
                    (let ()
                      (let* ((_%obj129846%_ _%klass129803%_)
                             (_%id129849%_ 'seal-class!)
                             (_%args129852%_ '())
                             (_%id129857%_ _%id129849%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj129846%_
                                 _%id129857%_
                                 _%args129852%_))
                      (let* ((_%klass129870%_ _%klass129803%_)
                             (_%klass129875%_ _%klass129870%_))
                        (__specialize-class _%klass129875%_)))
                    (if (let* ((_%pred129885%_ class-type-metaclass?)
                               (_%lst129888%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass129803%_
                                   '6
                                   '#f
                                   '#f)))
                               (_%pred129893%_ _%pred129885%_))
                          (declare (not safe))
                          (__find _%pred129893%_ _%lst129888%_))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass129803%_)
                        (let* ((_%klass129906%_ _%klass129803%_)
                               (_%klass129911%_ _%klass129906%_))
                          (__specialize-class _%klass129911%_))))
                (let* ((_%klass129922%_ _%klass129803%_)
                       (_%klass129927%_ _%klass129922%_))
                  (__class-type-seal! _%klass129927%_)))))))
    (define seal-class!
      (lambda (_%klass128174%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass128174%_ 'class))
            (let ((_%klass128178%_ _%klass128174%_))
              (__seal-class! _%klass128178%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1116.20-1116.25"
               'contract:
               'class-type?
               'value:
               _%klass128174%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass129688%_ _%obj129689%_ _%id129690%_)
        (let* ((_%subklass129693%_ _%subklass129688%_)
               (_%id129701%_ _%id129690%_))
          (letrec ((_%find-next-method129710%_
                    (lambda (_%klass129712%_)
                      (let _%lp129714%_ ((_%rest129716%_
                                          (let ((_%klass129785%_
                                                 _%klass129712%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%klass129785%_
                                                   'class))
                                                (let ((_%klass129790%_
                                                       _%klass129785%_))
                                                  (__class-precedence-list
                                                   _%klass129790%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/mop
                                                   'contract:
                                                   'class-type?
                                                   'value:
                                                   _%klass129785%_)
                                                  '#!void)))))
                        (let* ((_%rest129717129725%_ _%rest129716%_)
                               (_%else129719129733%_ (lambda () '#f))
                               (_%K129721129773%_
                                (lambda (_%rest129736%_ _%klass129737%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass129693%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass129737%_)))
                                      (let* ((_%mixins129739%_ _%rest129736%_)
                                             (_%obj129742%_ _%obj129689%_)
                                             (_%id129745%_ _%id129701%_)
                                             (_%id129750%_ _%id129745%_))
                                        (__mixin-find-method
                                         _%mixins129739%_
                                         _%obj129742%_
                                         _%id129750%_))
                                      (_%lp129714%_ _%rest129736%_)))))
                          (if (pair? _%rest129717129725%_)
                              (let ((_%hd129722129776%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest129717129725%_)))
                                    (_%tl129723129778%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest129717129725%_))))
                                (let* ((_%klass129781%_ _%hd129722129776%_)
                                       (_%rest129783%_ _%tl129723129778%_))
                                  (_%K129721129773%_
                                   _%rest129783%_
                                   _%klass129781%_)))
                              (_%else129719129733%_)))))))
            (_%find-next-method129710%_ (class-of _%obj129689%_))))))
    (define next-method
      (lambda (_%subklass128308%_ _%obj128309%_ _%id128310%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass128308%_ 'class))
            (let ((_%subklass128314%_ _%subklass128308%_))
              (if (symbol? _%id128310%_)
                  (let ((_%id128324%_ _%id128310%_))
                    (__next-method
                     _%subklass128314%_
                     _%obj128309%_
                     _%id128324%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1138.44-1138.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id128310%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1138.20-1138.28"
               'contract:
               'class-type?
               'value:
               _%subklass128308%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass129623%_ _%obj129624%_ _%id129625%_ . _%args129626%_)
        (let* ((_%subklass129629%_ _%subklass129623%_)
               (_%id129637%_ _%id129625%_)
               (_%$e129682%_
                (let* ((_%subklass129646%_ _%subklass129629%_)
                       (_%obj129649%_ _%obj129624%_)
                       (_%id129652%_ _%id129637%_)
                       (_%subklass129657%_ _%subklass129646%_)
                       (_%id129672%_ _%id129652%_))
                  (__next-method
                   _%subklass129657%_
                   _%obj129649%_
                   _%id129672%_))))
          (if _%$e129682%_
              ((lambda (_%methodf129685%_)
                 (apply _%methodf129685%_ _%obj129624%_ _%args129626%_))
               _%$e129682%_)
              (error '"cannot find next method"
                     'object:
                     _%obj129624%_
                     'method:
                     _%id129637%_)))))
    (define call-next-method
      (lambda (_%subklass128454%_ _%obj128455%_ _%id128456%_ . _%args128457%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass128454%_ 'class))
            (let ((_%subklass128461%_ _%subklass128454%_))
              (if (symbol? _%id128456%_)
                  (let ((_%id128471%_ _%id128456%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass128461%_
                             _%obj128455%_
                             _%id128471%_
                             _%args128457%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1149.49-1149.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id128456%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1149.25-1149.33"
               'contract:
               'class-type?
               'value:
               _%subklass128454%_)
              '#!void))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type129406%_ _%properties129407%_)
        (letrec ((_%shadow-type-id129409%_
                  (lambda (_%type129611%_)
                    (let ((__tmp136982
                           (let ()
                             (declare (not safe))
                             (##type-name _%type129611%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp136982 '"::t"))))
                 (_%shadow-type-name129410%_
                  (lambda (_%type129609%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type129609%_))))
                 (_%make-shadow-class129411%_
                  (lambda (_%type129491%_ _%precedence-list129492%_)
                    (let* ((_%super129494%_
                            (if (pair? _%precedence-list129492%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list129492%_))
                                      '())
                                '()))
                           (_%klass129606%_
                            (let* ((_%id129496%_
                                    (_%shadow-type-id129409%_ _%type129491%_))
                                   (_%name129499%_
                                    (let ()
                                      (declare (not safe))
                                      (##type-name _%type129491%_)))
                                   (_%direct-supers129502%_ _%super129494%_)
                                   (_%direct-slots129505%_ '())
                                   (_%properties129531%_
                                    (cons (cons 'struct: '#t)
                                          (cons (cons 'system: '#t)
                                                (cons (cons 'system-type:
                                                            _%type129491%_)
                                                      (let ((__tmp136983
                                                             (if (let ((_%type129508%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%type129491%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##type? _%type129508%_))
                               (let ((_%type129513%_ _%type129508%_))
                                 (__type-extensible? _%type129513%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  '##type?
                                  'value:
                                  _%type129508%_)
                                 '#!void)))
                         '()
                         (cons (cons 'final: '#t) '()))))
                (declare (not safe))
                (foldr__0 cons _%properties129407%_ __tmp136983))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%constructor129534%_ '#f)
                                   (_%id129539%_ _%id129496%_))
                              (if (symbol? _%name129499%_)
                                  (let* ((_%name129550%_ _%name129499%_)
                                         (_%direct-supers129560%_
                                          _%direct-supers129502%_)
                                         (_%direct-slots129570%_
                                          _%direct-slots129505%_)
                                         (_%properties129580%_
                                          _%properties129531%_))
                                    (if ((lambda (_%$obj129589%_)
                                           (or (not _%$obj129589%_)
                                               (symbol? _%$obj129589%_)))
                                         _%constructor129534%_)
                                        (let ((_%constructor129596%_
                                               _%constructor129534%_))
                                          (__make-class-type
                                           _%id129539%_
                                           _%name129550%_
                                           _%direct-supers129560%_
                                           _%direct-slots129570%_
                                           _%properties129580%_
                                           _%constructor129596%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '(? (or not symbol?))
                                           'value:
                                           _%constructor129534%_)
                                          '#!void)))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     'symbol?
                                     'value:
                                     _%name129499%_)
                                    '#!void)))))
                      (let ((__tmp136984
                             (let ()
                               (declare (not safe))
                               (##type-id _%type129491%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp136984
                         _%klass129606%_))
                      _%klass129606%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again129415%_ ((_%spin129418%_ '0))
              (if (let ((__tmp136985
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp136985 '0))
                  (let ((__tmp136986 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp136986))
                  (if (let () (declare (not safe)) (##fx< _%spin129418%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again129415%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin129418%_ '1))))
                      (let ((_%owner129424%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner129424%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner129424%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again129415%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e129430%_
                 (let ((__tmp136987
                        (let ()
                          (declare (not safe))
                          (##type-id _%type129406%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp136987 '#f))))
            (if _%$e129430%_
                ((lambda (_%klass129433%_)
                   (let ()
                     (declare (not safe))
                     (##vector-set! __shadow-classes-lock '1 '#f))
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-lock '0 '0 '1))
                   _%klass129433%_)
                 _%$e129430%_)
                (let _%loop129436%_ ((_%super129438%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type129406%_)))
                                     (_%hierarchy129439%_ '()))
                  (if (not _%super129438%_)
                      (let _%loop129442%_ ((_%rest129444%_ _%hierarchy129439%_)
                                           (_%precedence-list129445%_ '()))
                        (let* ((_%rest129446129454%_ _%rest129444%_)
                               (_%else129448129464%_
                                (lambda ()
                                  (let ((_%klass129462%_
                                         (_%make-shadow-class129411%_
                                          _%type129406%_
                                          _%precedence-list129445%_)))
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
                                    _%klass129462%_)))
                               (_%K129450129478%_
                                (lambda (_%rest129467%_ _%type129468%_)
                                  (let ((_%$e129470%_
                                         (let ((__tmp136988
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type129468%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp136988
                                            '#f))))
                                    (if _%$e129470%_
                                        ((lambda (_%klass129473%_)
                                           (_%loop129442%_
                                            _%rest129467%_
                                            (cons _%klass129473%_
                                                  _%precedence-list129445%_)))
                                         _%$e129470%_)
                                        (let ((_%klass129476%_
                                               (_%make-shadow-class129411%_
                                                _%type129468%_
                                                _%precedence-list129445%_)))
                                          (_%loop129442%_
                                           _%rest129467%_
                                           (cons _%klass129476%_
                                                 _%precedence-list129445%_))))))))
                          (if (pair? _%rest129446129454%_)
                              (let ((_%hd129451129481%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest129446129454%_)))
                                    (_%tl129452129483%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest129446129454%_))))
                                (let* ((_%type129486%_ _%hd129451129481%_)
                                       (_%rest129488%_ _%tl129452129483%_))
                                  (_%K129450129478%_
                                   _%rest129488%_
                                   _%type129486%_)))
                              (_%else129448129464%_))))
                      (_%loop129436%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super129438%_))
                       (cons _%super129438%_ _%hierarchy129439%_)))))))))
    (define __shadow-class__0
      (lambda (_%type129616%_)
        (let ((_%properties129618%_ '()))
          (__shadow-class__% _%type129616%_ _%properties129618%_))))
    (define __shadow-class
      (lambda _g136989_
        (let ((_g136990_ (let () (declare (not safe)) (##length _g136989_))))
          (cond ((let () (declare (not safe)) (##fx= _g136990_ 1))
                 (apply __shadow-class__0 _g136989_))
                ((let () (declare (not safe)) (##fx= _g136990_ 2))
                 (apply __shadow-class__% _g136989_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g136989_))))))
    (define __type
      (let* ((_%tb129394%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e129396%_ _%tb129394%_))
        (if (eq? '2 _%$e129396%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e129396%_)
                (let ((_%flonum-self-tagging-tags129399%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits129400%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e129402%_ _%flonum-self-tagging-tags129399%_))
                    (if (eq? '0 _%$e129402%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits129400%_ '2))
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
                        (if (eq? '1 _%$e129402%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits129400%_ '2))
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
                            (if (eq? '2 _%$e129402%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e129402%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e129402%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags129399%_))))))))
                (error '"unexpected tag width" _%tb129394%_)))))
    (define __class
      (let* ((_%len129342%_
              (let () (declare (not safe)) (##vector-length __type)))
             (_%cv129344%_
              (let () (declare (not safe)) (##make-vector _%len129342%_ '#f))))
        (let _%loop129347%_ ((_%i129349%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i129349%_ _%len129342%_))
              (let* ((_%t129351%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i129349%_)))
                     (_%f129391%_
                      (if (eq? _%t129351%_ 'undefined)
                          (lambda (_%obj129354%_)
                            (error '"object type is undefined" _%obj129354%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t129351%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj129357%_)
                                (declare (not interrupts-enabled) (not safe))
                                (__system-class _%t129351%_))
                              (if (eq? _%t129351%_ 'subtyped)
                                  (lambda (_%obj129361%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st129364%_
                                           (##subtype _%obj129361%_)))
                                      (if (##fx= _%st129364%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass129367%_
                                                 (##structure-type
                                                  _%obj129361%_)))
                                            (if (##structure-instance-of?
                                                 _%klass129367%_
                                                 'class)
                                                _%klass129367%_
                                                (__shadow-class__0
                                                 _%klass129367%_)))
                                          (if (##fx= _%st129364%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj129361%_)
                                                         '1)
                                                  (__system-class 'box)
                                                  (__system-class 'values))
                                              (let ((_%$e129370%_
                                                     (##vector-ref
                                                      __subtype-id
                                                      _%st129364%_)))
                                                (if _%$e129370%_
                                                    (__system-class
                                                     _%$e129370%_)
                                                    (error '"unknown class"
                                                           'subtype:
                                                           _%st129364%_
                                                           'object:
                                                           _%obj129361%_)))))))
                                  (if (eq? _%t129351%_ 'special)
                                      (lambda (_%obj129375%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (if (char? _%obj129375%_)
                                            (__system-class 'char)
                                            (if (eq? _%obj129375%_ '())
                                                (__system-class 'null)
                                                (if (eq? _%obj129375%_ '#f)
                                                    (__system-class 'boolean)
                                                    (if (eq? _%obj129375%_ '#t)
                                                        (__system-class
                                                         'boolean)
                                                        (if (eq? _%obj129375%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void)
                    (__system-class 'void)
                    (if (eq? _%obj129375%_ '#!eof)
                        (__system-class 'eof)
                        (if (eq? _%obj129375%_ '#!unbound)
                            (__system-class 'unbound)
                            (if (eq? _%obj129375%_ '#!unbound2)
                                (__system-class 'unbound2)
                                (if (eq? _%obj129375%_ '#!optional)
                                    (__system-class 'optional)
                                    (if (eq? _%obj129375%_ '#!rest)
                                        (__system-class 'rest)
                                        (if (eq? _%obj129375%_ '#!key)
                                            (__system-class 'key)
                                            (__system-class
                                             'special)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t129351%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv129344%_ _%i129349%_ _%f129391%_))
                (_%loop129347%_
                 (let () (declare (not safe)) (##fx+ _%i129349%_ '1))))
              _%cv129344%_))))
    (define type-of
      (lambda (_%obj129338%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj129338%_)))))
    (define class-of
      (lambda (_%obj129329%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t129333%_ (##type _%obj129329%_))
                 (_%f129335%_ (##vector-ref __class _%t129333%_)))
            (_%f129335%_ _%obj129329%_)))))
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
      (lambda (_%id129323%_)
        (let ((_%$e129325%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id129323%_ '#f))))
          (if _%$e129325%_
              _%$e129325%_
              (error '"unknown system class" _%id129323%_)))))
    (define __make-system-class
      (lambda (_%id129225%_ _%super129226%_ _%properties129227%_)
        (let ((_%klass129321%_
               (let* ((_%id129229%_ _%id129225%_)
                      (_%name129232%_ _%id129225%_)
                      (_%direct-supers129235%_ _%super129226%_)
                      (_%direct-slots129238%_ '())
                      (_%properties129241%_
                       (cons (cons 'system: '#t)
                             (let ()
                               (declare (not safe))
                               (foldr__0 cons '() _%properties129227%_))))
                      (_%constructor129244%_ '#f))
                 (if (symbol? _%id129229%_)
                     (let ((_%id129249%_ _%id129229%_))
                       (if (symbol? _%name129232%_)
                           (let ((_%name129265%_ _%name129232%_))
                             (if (list? _%direct-supers129235%_)
                                 (let* ((_%direct-supers129275%_
                                         _%direct-supers129235%_)
                                        (_%direct-slots129285%_
                                         _%direct-slots129238%_)
                                        (_%properties129295%_
                                         _%properties129241%_))
                                   (if ((lambda (_%$obj129304%_)
                                          (or (not _%$obj129304%_)
                                              (symbol? _%$obj129304%_)))
                                        _%constructor129244%_)
                                       (let ((_%constructor129311%_
                                              _%constructor129244%_))
                                         (__make-class-type
                                          _%id129249%_
                                          _%name129265%_
                                          _%direct-supers129275%_
                                          _%direct-slots129285%_
                                          _%properties129295%_
                                          _%constructor129311%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          '(? (or not symbol?))
                                          'value:
                                          _%constructor129244%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'list?
                                    'value:
                                    _%direct-supers129235%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'symbol?
                              'value:
                              _%name129232%_)
                             '#!void)))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id129229%_)
                       '#!void)))))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id129225%_
             _%klass129321%_))
          _%klass129321%_)))))
