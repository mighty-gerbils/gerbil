(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1781119035)
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
      (let ((_%flags120965%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties120966%_ '((direct-slots:) (system: . #t)))
            (_%slot-table120967%_ (make-symbolic-table '#f '0)))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags120965%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table120967%_
           _%properties120966%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots120922%_
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
             (_%slot-vector120924%_ (list->vector (cons '#f _%slots120922%_)))
             (_%slot-table120950%_
              (let ((_%slot-table120926%_ (make-symbolic-table '#f '0)))
                (for-each
                 (lambda (_%slot120928%_ _%field120929%_)
                   (symbolic-table-set!
                    _%slot-table120926%_
                    _%slot120928%_
                    _%field120929%_)
                   (symbolic-table-set!
                    _%slot-table120926%_
                    (let ((_%sym120931%_ _%slot120928%_))
                      (if (symbol? _%sym120931%_)
                          (let ((_%sym120936%_ _%sym120931%_))
                            (__symbol->keyword _%sym120936%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/mop
                             'contract:
                             'symbol?
                             'value:
                             _%sym120931%_)
                            (void))))
                    _%field120929%_))
                 _%slots120922%_
                 (iota (length _%slots120922%_) '1))
                _%slot-table120926%_))
             (_%flags120952%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields120958%_
              (list->vector
               (apply append
                      (map (lambda (_%$%g120953120955%_)
                             (list _%$%g120953120955%_ '5 '#f))
                           (drop _%slots120922%_ '5)))))
             (_%properties120960%_
              (cons (cons 'direct-slots: (foldr cons '() _%slots120922%_))
                    (cons (cons 'struct: '#t) '())))
             (_%t120962%_
              (let ((__tmp120968 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags120952%_
                 ##type-type
                 _%fields120958%_
                 __tmp120968
                 _%slot-vector120924%_
                 _%slot-table120950%_
                 _%properties120960%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t120962%_ _%t120962%_))
        _%t120962%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags120918%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties120919%_ '((direct-slots:) (system: . #t)))
            (_%slot-table120920%_ (make-symbolic-table '#f '0)))
        (let ((__tmp120969 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags120918%_
           '#f
           '#()
           __tmp120969
           '#(#f)
           _%slot-table120920%_
           _%properties120919%_
           '#f
           '#f
           '#f
           '#f))))
    (define __class-type
      (lambda (_%klass120906%_)
        (let ((_%klass120909%_ _%klass120906%_))
          (declare (not safe))
          (##structure-type _%klass120909%_))))
    (define class-type
      (lambda (_%klass120892%_)
        (if (class-type? _%klass120892%_)
            (let ((_%klass120896%_ _%klass120892%_))
              (__class-type _%klass120896%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass120892%_)
              (void)))))
    (define class-type?
      (lambda (_%obj120890%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj120890%_ 'class))))
    (define __class-type=?
      (lambda (_%x120869%_ _%y120870%_)
        (let* ((_%x120873%_ _%x120869%_) (_%y120881%_ _%y120870%_))
          (eq? (class-type-id _%x120873%_) (class-type-id _%y120881%_)))))
    (define class-type=?
      (lambda (_%x120844%_ _%y120845%_)
        (if (class-type? _%x120844%_)
            (let ((_%x120849%_ _%x120844%_))
              (if (class-type? _%y120845%_)
                  (let ((_%y120859%_ _%y120845%_))
                    (__class-type=? _%x120849%_ _%y120859%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y120845%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x120844%_)
              (void)))))
    (define __type-opaque?
      (lambda (_%type120832%_)
        (let* ((_%type120835%_ _%type120832%_)
               (__tmp120970
                (let ((__tmp120971
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type120835%_))))
                  (declare (not safe))
                  (##fxand __tmp120971 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp120970 type-flag-opaque))))
    (define type-opaque?
      (lambda (_%type120818%_)
        (if (let () (declare (not safe)) (##type? _%type120818%_))
            (let ((_%type120822%_ _%type120818%_))
              (__type-opaque? _%type120822%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type120818%_)
              (void)))))
    (define __class-type-opaque?
      (lambda (_%klass120806%_)
        (let* ((_%klass120809%_ _%klass120806%_)
               (__tmp120972
                (let ((__tmp120973
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass120809%_))))
                  (declare (not safe))
                  (##fxand __tmp120973 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp120972 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass120792%_)
        (if (class-type? _%klass120792%_)
            (let ((_%klass120796%_ _%klass120792%_))
              (__class-type-opaque? _%klass120796%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass120792%_)
              (void)))))
    (define __type-extensible?
      (lambda (_%type120780%_)
        (let* ((_%type120783%_ _%type120780%_)
               (__tmp120974
                (let ((__tmp120975
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type120783%_))))
                  (declare (not safe))
                  (##fxand __tmp120975 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp120974 type-flag-extensible))))
    (define type-extensible?
      (lambda (_%type120766%_)
        (if (let () (declare (not safe)) (##type? _%type120766%_))
            (let ((_%type120770%_ _%type120766%_))
              (__type-extensible? _%type120770%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type120766%_)
              (void)))))
    (define __class-type-final?
      (lambda (_%type120754%_)
        (let* ((_%type120757%_ _%type120754%_)
               (__tmp120976
                (let ((__tmp120977
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type120757%_))))
                  (declare (not safe))
                  (##fxand __tmp120977 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp120976 '0))))
    (define class-type-final?
      (lambda (_%type120740%_)
        (if (class-type? _%type120740%_)
            (let ((_%type120744%_ _%type120740%_))
              (__class-type-final? _%type120744%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type120740%_)
              (void)))))
    (define __class-type-struct?
      (lambda (_%klass120728%_)
        (let* ((_%klass120731%_ _%klass120728%_)
               (__tmp120978
                (let ((__tmp120979
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass120731%_))))
                  (declare (not safe))
                  (##fxand __tmp120979 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp120978 class-type-flag-struct))))
    (define class-type-struct?
      (lambda (_%klass120714%_)
        (if (class-type? _%klass120714%_)
            (let ((_%klass120718%_ _%klass120714%_))
              (__class-type-struct? _%klass120718%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass120714%_)
              (void)))))
    (define __class-type-sealed?
      (lambda (_%klass120702%_)
        (let* ((_%klass120705%_ _%klass120702%_)
               (__tmp120980
                (let ((__tmp120981
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass120705%_))))
                  (declare (not safe))
                  (##fxand __tmp120981 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp120980 class-type-flag-sealed))))
    (define class-type-sealed?
      (lambda (_%klass120688%_)
        (if (class-type? _%klass120688%_)
            (let ((_%klass120692%_ _%klass120688%_))
              (__class-type-sealed? _%klass120692%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass120688%_)
              (void)))))
    (define __class-type-metaclass?
      (lambda (_%klass120676%_)
        (let* ((_%klass120679%_ _%klass120676%_)
               (__tmp120982
                (let ((__tmp120983
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass120679%_))))
                  (declare (not safe))
                  (##fxand __tmp120983 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp120982 class-type-flag-metaclass))))
    (define class-type-metaclass?
      (lambda (_%klass120662%_)
        (if (class-type? _%klass120662%_)
            (let ((_%klass120666%_ _%klass120662%_))
              (__class-type-metaclass? _%klass120666%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass120662%_)
              (void)))))
    (define __class-type-system?
      (lambda (_%klass120650%_)
        (let* ((_%klass120653%_ _%klass120650%_)
               (__tmp120984
                (let ((__tmp120985
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass120653%_))))
                  (declare (not safe))
                  (##fxand __tmp120985 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp120984 class-type-flag-system))))
    (define class-type-system?
      (lambda (_%klass120636%_)
        (if (class-type? _%klass120636%_)
            (let ((_%klass120640%_ _%klass120636%_))
              (__class-type-system? _%klass120640%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass120636%_)
              (void)))))
    (define __class-type-acyclic?
      (lambda (_%klass120624%_)
        (let* ((_%klass120627%_ _%klass120624%_)
               (__tmp120986
                (let ((__tmp120987
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass120627%_))))
                  (declare (not safe))
                  (##fxand __tmp120987 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp120986 class-type-flag-acyclic))))
    (define class-type-acyclic?
      (lambda (_%klass120610%_)
        (if (class-type? _%klass120610%_)
            (let ((_%klass120614%_ _%klass120610%_))
              (__class-type-acyclic? _%klass120614%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass120610%_)
              (void)))))
    (define make-class-type-descriptor
      (lambda (_%type-id120384%_
               _%type-name120385%_
               _%type-super120386%_
               _%precedence-list120387%_
               _%slot-vector120388%_
               _%properties120389%_
               _%constructor120390%_
               _%slot-table120391%_
               _%methods120392%_)
        (letrec ((_%make-props!120395%_
                  (lambda (_%key120560%_)
                    (letrec* ((_%ht120562%_ (make-symbolic-table '#f '0))
                              (_%put-slots!120563%_
                               (lambda (_%ht120603%_ _%slots120604%_)
                                 (for-each
                                  (lambda (_%$%g120605120607%_)
                                    (symbolic-table-set!
                                     _%ht120603%_
                                     _%$%g120605120607%_
                                     '#t))
                                  _%slots120604%_)))
                              (_%put-alist!120564%_
                               (lambda (_%ht120592%_
                                        _%key120593%_
                                        _%alist120594%_)
                                 (let ((_%$e120596%_
                                        (agetq _%key120593%_ _%alist120594%_)))
                                   (if _%$e120596%_
                                       ((lambda (_%$%g120598120600%_)
                                          (_%put-slots!120563%_
                                           _%ht120592%_
                                           _%$%g120598120600%_))
                                        _%$e120596%_)
                                       '#!void)))))
                      (_%put-alist!120564%_
                       _%ht120562%_
                       _%key120560%_
                       _%properties120389%_)
                      (for-each
                       (lambda (_%mixin120566%_)
                         (let ((_%alist120568%_
                                (class-type-properties _%mixin120566%_)))
                           (if (or (agetq 'transparent: _%alist120568%_)
                                   (eq? '#t
                                        (agetq _%key120560%_ _%alist120568%_)))
                               (_%put-slots!120563%_
                                _%ht120562%_
                                (let ((_%klass120573%_ _%mixin120566%_))
                                  (if (class-type? _%klass120573%_)
                                      (let ((_%klass120578%_ _%klass120573%_))
                                        (__class-type-slot-list
                                         _%klass120578%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass120573%_)
                                        (void)))))
                               (_%put-alist!120564%_
                                _%ht120562%_
                                _%key120560%_
                                _%alist120568%_))))
                       _%precedence-list120387%_)
                      _%ht120562%_)))
                 (_%has-no-alist-override?120396%_
                  (lambda (_%key120549%_ _%alist120550%_)
                    (let ((_%$e120552%_ (agetq _%key120549%_ _%alist120550%_)))
                      (if _%$e120552%_
                          ((lambda (_%$%g120554120556%_)
                             (eq? _%$%g120554120556%_ '#t))
                           _%$e120552%_)
                          '#t)))))
          (let* ((_%transparent?120416%_
                  (agetq 'transparent:
                         _%properties120389%_
                         (if _%type-super120386%_
                             (not (let ((_%type120398%_ _%type-super120386%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##type? _%type120398%_))
                                        (let ((_%type120403%_ _%type120398%_))
                                          (__type-opaque? _%type120403%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '##type?
                                           'value:
                                           _%type120398%_)
                                          (void)))))
                             '#t)))
                 (_%all-slots-printable?120418%_
                  (if _%transparent?120416%_
                      (_%has-no-alist-override?120396%_
                       'print:
                       _%properties120389%_)
                      '#f))
                 (_%printable120420%_
                  (if (not _%all-slots-printable?120418%_)
                      (_%make-props!120395%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?120422%_
                  (if _%transparent?120416%_
                      (_%has-no-alist-override?120396%_
                       'equal:
                       _%properties120389%_)
                      '#f))
                 (_%equalable120424%_
                  (if (not _%all-slots-equalable?120422%_)
                      (_%make-props!120395%_ 'equal:)
                      '#f))
                 (_%first-new-field120426%_
                  (if (class-type? _%type-super120386%_)
                      (let ((__tmp120988
                             (class-type-slot-vector _%type-super120386%_)))
                        (declare (not safe))
                        (##vector-length __tmp120988))
                      '1))
                 (_%field-info-length120428%_
                  (let ((__tmp120989
                         (let ((__tmp120990
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector120388%_))))
                           (declare (not safe))
                           (##fx- __tmp120990 _%first-new-field120426%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp120989)))
                 (_%field-info120430%_
                  (make-vector _%field-info-length120428%_ '#f))
                 (_%struct?120432%_ (agetq 'struct: _%properties120389%_))
                 (_%final?120434%_ (agetq 'final: _%properties120389%_))
                 (_%metaclass120441%_
                  (let ((_%$%metaclass120435120437%_
                         (agetq 'metaclass: _%properties120389%_)))
                    (if _%$%metaclass120435120437%_
                        (let ((_%metaclass120439%_
                               _%$%metaclass120435120437%_))
                          (if (class-type? _%metaclass120439%_)
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id120384%_
                                     'metaclass:
                                     _%metaclass120439%_))
                          _%metaclass120439%_)
                        '#f)))
                 (_%system?120443%_ (agetq 'system: _%properties120389%_))
                 (_%opaque?120445%_ (not _%transparent?120416%_))
                 (_%acyclic?120447%_ (agetq 'acyclic: _%properties120389%_))
                 (_%type-flags120449%_
                  (let ((__tmp120996
                         (if _%final?120434%_ '0 type-flag-extensible))
                        (__tmp120995
                         (if _%opaque?120445%_ type-flag-opaque '0))
                        (__tmp120994
                         (if _%struct?120432%_ class-type-flag-struct '0))
                        (__tmp120993
                         (if _%metaclass120441%_ class-type-flag-metaclass '0))
                        (__tmp120992
                         (if _%system?120443%_ class-type-flag-system '0))
                        (__tmp120991
                         (if _%acyclic?120447%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp120996
                             __tmp120995
                             __tmp120994
                             __tmp120993
                             __tmp120992
                             __tmp120991)))
                 (_%precedence-list120457%_
                  (let ((_%$e120451%_ (memq t::t _%precedence-list120387%_)))
                    (if _%$e120451%_
                        ((lambda (_%tail120454%_)
                           (if (null? (cdr _%tail120454%_))
                               _%precedence-list120387%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list120387%_)))
                         _%$e120451%_)
                        (append _%precedence-list120387%_ (cons t::t '()))))))
            (let _%loop120460%_ ((_%i120462%_ _%first-new-field120426%_)
                                 (_%j120463%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j120463%_ _%field-info-length120428%_))
                  (let* ((_%slot120465%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector120388%_ _%i120462%_)))
                         (_%flags120473%_
                          (let ((__tmp120998
                                 (if (or _%all-slots-printable?120418%_
                                         (symbolic-table-ref
                                          _%printable120420%_
                                          _%slot120465%_
                                          '#f))
                                     '0
                                     '1))
                                (__tmp120997
                                 (if (or _%all-slots-equalable?120422%_
                                         (symbolic-table-ref
                                          _%equalable120424%_
                                          _%slot120465%_
                                          '#f))
                                     '0
                                     '4)))
                            (declare (not safe))
                            (##fxior __tmp120998 __tmp120997))))
                    (vector-set!
                     _%field-info120430%_
                     _%j120463%_
                     _%slot120465%_)
                    (vector-set!
                     _%field-info120430%_
                     (let () (declare (not safe)) (##fx+ _%j120463%_ '1))
                     _%flags120473%_)
                    (_%loop120460%_
                     (let () (declare (not safe)) (##fx+ _%i120462%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j120463%_ '3))))
                  '#!void))
            (if _%metaclass120441%_
                (let ((_%val120512%_
                       (let* ((_%klass120476%_ _%metaclass120441%_)
                              (_%args120479%_
                               (list _%type-id120384%_
                                     _%type-name120385%_
                                     _%type-flags120449%_
                                     _%type-super120386%_
                                     _%field-info120430%_
                                     _%precedence-list120457%_
                                     _%slot-vector120388%_
                                     _%slot-table120391%_
                                     _%properties120389%_
                                     _%constructor120390%_
                                     _%methods120392%_)))
                         (if (class-type? _%klass120476%_)
                             (let ((_%klass120484%_ _%klass120476%_))
                               (declare (not safe))
                               (##apply __make-instance
                                        _%klass120484%_
                                        _%args120479%_))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%klass120476%_)
                               (void))))))
                  (if (class-type? _%val120512%_)
                      _%val120512%_
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         '"\"gerbil/runtime/mop.ss\"@293.10-297.95"
                         'contract:
                         '(class-type? val)
                         'value:
                         _%val120512%_)
                        (void))))
                (let ((_%klass120515%_
                       (let ()
                         (declare (not safe))
                         (##structure
                          class::t
                          _%type-id120384%_
                          _%type-name120385%_
                          _%type-flags120449%_
                          _%type-super120386%_
                          _%field-info120430%_
                          _%precedence-list120457%_
                          _%slot-vector120388%_
                          _%slot-table120391%_
                          _%properties120389%_
                          _%constructor120390%_
                          _%methods120392%_
                          '#f
                          '#f))))
                  (for-each
                   (lambda (_%super120517%_)
                     (let ()
                       (declare (not interrupts-enabled))
                       (let _%again120521%_ ((_%spin120524%_ '0))
                         (if (let ((__tmp120999
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __class-type-properties-lock
                                       '0
                                       '1
                                       '0))))
                               (declare (not safe))
                               (##fx= __tmp120999 '0))
                             (let ((__tmp121000 (current-thread)))
                               (declare (not safe))
                               (##vector-set!
                                __class-type-properties-lock
                                '1
                                __tmp121000))
                             (if (let ()
                                   (declare (not safe))
                                   (##fx< _%spin120524%_ '10))
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##thread-yield!))
                                   (_%again120521%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%spin120524%_ '1))))
                                 (let ((_%owner120530%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           __class-type-properties-lock
                                           '1))))
                                   (if (eq? _%owner120530%_
                                            (macro-current-thread))
                                       (let ()
                                         (declare (not safe))
                                         (##thread-deadlock-action!))
                                       (if (not (macro-thread-end-condvar
                                                 _%owner120530%_))
                                           (let ()
                                             (declare (not safe))
                                             (##thread-deadlock-action!))
                                           (let ()
                                             (let ()
                                               (declare (not safe))
                                               (##thread-yield!))
                                             (_%again120521%_ '0)))))))))
                     (let ((_%$r120544%_
                            (let* ((_%props120536%_
                                    (&class-type-properties _%super120517%_))
                                   (_%$e120538%_
                                    (assq 'subclasses: _%props120536%_)))
                              (if _%$e120538%_
                                  ((lambda (_%subclasses120541%_)
                                     (set-cdr!
                                      _%subclasses120541%_
                                      (cons _%klass120515%_
                                            (cdr _%subclasses120541%_))))
                                   _%$e120538%_)
                                  (&class-type-properties-set!
                                   _%super120517%_
                                   (cons (cons 'subclasses:
                                               (cons _%klass120515%_ '()))
                                         _%props120536%_))))))
                       (let ()
                         (declare (not interrupts-enabled))
                         (begin
                           (let ()
                             (declare (not safe))
                             (##vector-set!
                              __class-type-properties-lock
                              '1
                              '#f))
                           (let ()
                             (declare (not safe))
                             (##vector-cas!
                              __class-type-properties-lock
                              '0
                              '0
                              '1))))
                       _%$r120544%_))
                   (agetq 'direct-supers: _%properties120389%_ '()))
                  _%klass120515%_))))))
    (define class-type-id
      (lambda (_%klass120382%_)
        (##structure-ref _%klass120382%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass120380%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass120380%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass120377%_ _%val120378%_)
        (##structure-set! _%klass120377%_ _%val120378%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass120372%_ _%val120374%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass120372%_
           _%val120374%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass120370%_)
        (##structure-ref _%klass120370%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass120368%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass120368%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass120365%_ _%val120366%_)
        (##structure-set! _%klass120365%_ _%val120366%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass120360%_ _%val120362%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass120360%_
           _%val120362%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass120358%_)
        (##structure-ref _%klass120358%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass120356%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass120356%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass120353%_ _%val120354%_)
        (##structure-set! _%klass120353%_ _%val120354%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass120348%_ _%val120350%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass120348%_
           _%val120350%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass120346%_)
        (##structure-ref _%klass120346%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass120344%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass120344%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass120341%_ _%val120342%_)
        (##structure-set! _%klass120341%_ _%val120342%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass120336%_ _%val120338%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass120336%_
           _%val120338%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass120334%_)
        (##structure-ref _%klass120334%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass120332%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass120332%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass120329%_ _%val120330%_)
        (##structure-set! _%klass120329%_ _%val120330%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass120324%_ _%val120326%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass120324%_
           _%val120326%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass120322%_)
        (##structure-ref _%klass120322%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass120320%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass120320%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass120317%_ _%val120318%_)
        (##structure-set!
         _%klass120317%_
         _%val120318%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass120312%_ _%val120314%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass120312%_
           _%val120314%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass120310%_)
        (##structure-ref _%klass120310%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass120308%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass120308%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass120305%_ _%val120306%_)
        (##structure-set!
         _%klass120305%_
         _%val120306%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass120300%_ _%val120302%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass120300%_
           _%val120302%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass120298%_)
        (##structure-ref _%klass120298%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass120296%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass120296%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass120293%_ _%val120294%_)
        (##structure-set!
         _%klass120293%_
         _%val120294%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass120288%_ _%val120290%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass120288%_
           _%val120290%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass120286%_)
        (##structure-ref _%klass120286%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass120284%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass120284%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass120281%_ _%val120282%_)
        (##structure-set!
         _%klass120281%_
         _%val120282%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass120276%_ _%val120278%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass120276%_
           _%val120278%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass120274%_)
        (##structure-ref _%klass120274%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass120272%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass120272%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass120269%_ _%val120270%_)
        (##structure-set!
         _%klass120269%_
         _%val120270%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass120264%_ _%val120266%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass120264%_
           _%val120266%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass120262%_)
        (##structure-ref _%klass120262%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass120260%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass120260%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass120257%_ _%val120258%_)
        (##structure-set!
         _%klass120257%_
         _%val120258%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass120252%_ _%val120254%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass120252%_
           _%val120254%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass120250%_)
        (##structure-ref _%klass120250%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass120248%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass120248%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass120245%_ _%val120246%_)
        (##structure-set!
         _%klass120245%_
         _%val120246%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass120240%_ _%val120242%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass120240%_
           _%val120242%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass120238%_)
        (##structure-ref _%klass120238%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass120236%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass120236%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass120233%_ _%val120234%_)
        (##structure-set!
         _%klass120233%_
         _%val120234%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass120228%_ _%val120230%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass120228%_
           _%val120230%_
           '13
           class::t
           'interface))))
    (define type-field-list
      (lambda (_%type119992%_)
        (letrec ((_%__fields->list120122%_
                  (lambda (_%fields120186%_)
                    (let* ((_%fields120189%_ _%fields120186%_)
                           (_%fields-len120198%_
                            (vector-length _%fields120189%_)))
                      (let _%loop120200%_ ((_%i120202%_ '0) (_%r120203%_ '()))
                        (let* ((_%i120206%_ _%i120202%_)
                               (_%r120219%_ _%r120203%_))
                          (if (fx< _%i120206%_ _%fields-len120198%_)
                              (_%loop120200%_
                               (fx+ _%i120206%_ '3)
                               (cons (vector-ref _%fields120189%_ _%i120206%_)
                                     _%r120219%_))
                              (reverse! _%r120219%_)))))))
                 (_%fields->list120123%_
                  (lambda (_%fields120174%_)
                    (let ((_%fields120177%_ _%fields120174%_))
                      (_%__fields->list120122%_ _%fields120177%_)))))
          (let _%loop120125%_ ((_%type120127%_ _%type119992%_))
            (if (let () (declare (not safe)) (##type? _%type120127%_))
                (if (eq? _%type120127%_ ##type-type)
                    '()
                    (let ((_%$e120132%_
                           (let ()
                             (declare (not safe))
                             (##type-super _%type120127%_))))
                      (if _%$e120132%_
                          ((lambda (_%super120135%_)
                             (append (_%loop120125%_ _%super120135%_)
                                     (let* ((_%fields120138%_
                                             (let ()
                                               (declare (not safe))
                                               (##type-fields _%type120127%_)))
                                            (_%fields120142%_
                                             _%fields120138%_))
                                       (_%__fields->list120122%_
                                        _%fields120142%_))))
                           _%$e120132%_)
                          (let* ((_%fields120159%_
                                  (let ()
                                    (declare (not safe))
                                    (##type-fields _%type120127%_)))
                                 (_%fields120163%_ _%fields120159%_))
                            (_%__fields->list120122%_ _%fields120163%_)))))
                '())))))
    (define __class-type-field-list
      (lambda (_%klass119960%_)
        (let ((_%klass119963%_ _%klass119960%_))
          (letrec ((_%get-fields!119972%_
                    (lambda (_%klass119987%_ _%type119988%_)
                      (let ((_%fields119990%_
                             (type-field-list _%type119988%_)))
                        (class-type-properties-set!
                         _%klass119987%_
                         (cons (cons 'fields: _%fields119990%_)
                               (class-type-properties _%klass119987%_)))
                        _%fields119990%_))))
            (let* ((_%props119974%_ (class-type-properties _%klass119963%_))
                   (_%$e119976%_ (agetq 'fields: _%props119974%_)))
              (if _%$e119976%_
                  _%$e119976%_
                  (let ((_%$e119979%_ (agetq 'system-type: _%props119974%_)))
                    (if _%$e119979%_
                        ((lambda (_%$%g119981119983%_)
                           (_%get-fields!119972%_
                            _%klass119963%_
                            _%$%g119981119983%_))
                         _%$e119979%_)
                        (_%get-fields!119972%_
                         _%klass119963%_
                         _%klass119963%_)))))))))
    (define class-type-field-list
      (lambda (_%klass119946%_)
        (if (class-type? _%klass119946%_)
            (let ((_%klass119950%_ _%klass119946%_))
              (__class-type-field-list _%klass119950%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@395.30-395.35"
               'contract:
               'class-type?
               'value:
               _%klass119946%_)
              (void)))))
    (define __class-type-slot-list
      (lambda (_%klass119934%_)
        (let ((_%klass119937%_ _%klass119934%_))
          (vector->list (class-type-slot-vector _%klass119937%_) '1))))
    (define class-type-slot-list
      (lambda (_%klass119920%_)
        (if (class-type? _%klass119920%_)
            (let ((_%klass119924%_ _%klass119920%_))
              (__class-type-slot-list _%klass119924%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@411.29-411.34"
               'contract:
               'class-type?
               'value:
               _%klass119920%_)
              (void)))))
    (define __class-type-field-count
      (lambda (_%klass119908%_)
        (let* ((_%klass119911%_ _%klass119908%_)
               (__tmp121001
                (let ((__tmp121002 (class-type-slot-vector _%klass119911%_)))
                  (declare (not safe))
                  (##vector-length __tmp121002))))
          (declare (not safe))
          (##fx- __tmp121001 '1))))
    (define class-type-field-count
      (lambda (_%klass119894%_)
        (if (class-type? _%klass119894%_)
            (let ((_%klass119898%_ _%klass119894%_))
              (__class-type-field-count _%klass119898%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@413.31-413.36"
               'contract:
               'class-type?
               'value:
               _%klass119894%_)
              (void)))))
    (define __class-type-seal!
      (lambda (_%klass119882%_)
        (let ((_%klass119885%_ _%klass119882%_))
          (let ((__tmp121003
                 (let ((__tmp121004
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass119885%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp121004))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass119885%_
             __tmp121003
             '3
             class::t
             class-type-seal!))
          (void))))
    (define class-type-seal!
      (lambda (_%klass119868%_)
        (if (class-type? _%klass119868%_)
            (let ((_%klass119872%_ _%klass119868%_))
              (__class-type-seal! _%klass119872%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@416.25-416.30"
               'contract:
               'class-type?
               'value:
               _%klass119868%_)
              (void)))))
    (define __class-type-properties-lock (vector '0 '#f))
    (define __class-type-properties-put!
      (lambda (_%klass119822%_ _%key119823%_ _%val119824%_)
        (let* ((_%klass119827%_ _%klass119822%_) (_%key119835%_ _%key119823%_))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again119846%_ ((_%spin119849%_ '0))
              (if (let ((__tmp121005
                         (let ()
                           (declare (not safe))
                           (##vector-cas!
                            __class-type-properties-lock
                            '0
                            '1
                            '0))))
                    (declare (not safe))
                    (##fx= __tmp121005 '0))
                  (let ((__tmp121006 (current-thread)))
                    (declare (not safe))
                    (##vector-set!
                     __class-type-properties-lock
                     '1
                     __tmp121006))
                  (if (let () (declare (not safe)) (##fx< _%spin119849%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again119846%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin119849%_ '1))))
                      (let ((_%owner119855%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref
                                __class-type-properties-lock
                                '1))))
                        (if (eq? _%owner119855%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (not (macro-thread-end-condvar
                                      _%owner119855%_))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again119846%_ '0)))))))))
          (let ((_%$r119863%_
                 (let ((_%props119861%_
                        (&class-type-properties _%klass119827%_)))
                   (if (assq _%key119835%_ _%props119861%_)
                       '#!void
                       (&class-type-properties-set!
                        _%klass119827%_
                        (cons (cons _%key119835%_ _%val119824%_)
                              _%props119861%_))))))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! __class-type-properties-lock '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! __class-type-properties-lock '0 '0 '1))))
            _%$r119863%_))))
    (define class-type-properties-put!
      (lambda (_%klass119796%_ _%key119797%_ _%val119798%_)
        (if (class-type? _%klass119796%_)
            (let ((_%klass119802%_ _%klass119796%_))
              (if (keyword? _%key119797%_)
                  (let ((_%key119812%_ _%key119797%_))
                    (__class-type-properties-put!
                     _%klass119802%_
                     _%key119812%_
                     _%val119798%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@424.52-424.55"
                     'contract:
                     'keyword?
                     'value:
                     _%key119797%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@424.35-424.40"
               'contract:
               'class-type?
               'value:
               _%klass119796%_)
              (void)))))
    (define __class-type-printable-slots
      (lambda (_%klass119690%_)
        (let ((_%klass119693%_ _%klass119690%_))
          (letrec ((_%get-field-vector119702%_
                    (lambda (_%type119780%_)
                      (let _%loop119782%_ ((_%type119784%_ _%type119780%_))
                        (let* ((_%fields119786%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type119784%_)))
                               (_%$e119788%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type119784%_))))
                          (if _%$e119788%_
                              ((lambda (_%super119791%_)
                                 (let ((_%super-fields119793%_
                                        (_%loop119782%_ _%super119791%_)))
                                   (vector-append
                                    _%super-fields119793%_
                                    _%fields119786%_)))
                               _%$e119788%_)
                              _%fields119786%_)))))
                   (_%get-printable-slot-alist119703%_
                    (lambda (_%type119763%_)
                      (let* ((_%fields119765%_
                              (_%get-field-vector119702%_ _%type119763%_))
                             (_%count119767%_
                              (vector-length _%fields119765%_)))
                        (let _%loop119770%_ ((_%i119772%_ '0)
                                             (_%offset119773%_ '1)
                                             (_%r119774%_ '()))
                          (if (fx< _%i119772%_ _%count119767%_)
                              (let ((_%slot-name119776%_
                                     (vector-ref _%fields119765%_ _%i119772%_))
                                    (_%slot-flags119777%_
                                     (vector-ref
                                      _%fields119765%_
                                      (fx+ _%i119772%_ '1)))
                                    (_%next-i119778%_ (fx+ _%i119772%_ '3)))
                                (if (fx= (fxand _%slot-flags119777%_ '1) '0)
                                    (_%loop119770%_
                                     _%next-i119778%_
                                     (fx+ _%offset119773%_ '1)
                                     (cons (cons _%slot-name119776%_
                                                 _%offset119773%_)
                                           _%r119774%_))
                                    (_%loop119770%_
                                     _%next-i119778%_
                                     (fx+ _%offset119773%_ '1)
                                     _%r119774%_)))
                              (reverse! _%r119774%_))))))
                   (_%get-printable-slots!119704%_
                    (lambda (_%klass119719%_ _%type119720%_)
                      (let ((_%printable119722%_
                             (_%get-printable-slot-alist119703%_
                              _%type119720%_)))
                        (let* ((_%klass119724%_ _%klass119719%_)
                               (_%key119727%_ 'printable-slots:)
                               (_%val119730%_ _%printable119722%_))
                          (if (class-type? _%klass119724%_)
                              (let ((_%klass119735%_ _%klass119724%_))
                                (if (keyword? _%key119727%_)
                                    (let ((_%key119753%_ _%key119727%_))
                                      (__class-type-properties-put!
                                       _%klass119735%_
                                       _%key119753%_
                                       _%val119730%_))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       'gerbil/runtime/mop
                                       'contract:
                                       'keyword?
                                       'value:
                                       _%key119727%_)
                                      (void))))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 'gerbil/runtime/mop
                                 'contract:
                                 'class-type?
                                 'value:
                                 _%klass119724%_)
                                (void))))
                        _%printable119722%_))))
            (let* ((_%props119706%_ (class-type-properties _%klass119693%_))
                   (_%$e119708%_ (agetq 'printable-slots: _%props119706%_)))
              (if _%$e119708%_
                  _%$e119708%_
                  (let ((_%$e119711%_ (agetq 'system-type: _%props119706%_)))
                    (if _%$e119711%_
                        ((lambda (_%$%g119713119715%_)
                           (_%get-printable-slots!119704%_
                            _%klass119693%_
                            _%$%g119713119715%_))
                         _%$e119711%_)
                        (_%get-printable-slots!119704%_
                         _%klass119693%_
                         _%klass119693%_)))))))))
    (define class-type-printable-slots
      (lambda (_%klass119676%_)
        (if (class-type? _%klass119676%_)
            (let ((_%klass119680%_ _%klass119676%_))
              (__class-type-printable-slots _%klass119680%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@433.35-433.40"
               'contract:
               'class-type?
               'value:
               _%klass119676%_)
              (void)))))
    (define __substruct?
      (lambda (_%maybe-sub-struct119645%_ _%maybe-super-struct119646%_)
        (let* ((_%maybe-sub-struct119649%_ _%maybe-sub-struct119645%_)
               (_%maybe-super-struct119657%_ _%maybe-super-struct119646%_)
               (_%maybe-super-struct-id119666%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct119657%_))))
          (let _%lp119668%_ ((_%super-struct119670%_
                              _%maybe-sub-struct119649%_))
            (if (not _%super-struct119670%_)
                '#f
                (if (eq? _%maybe-super-struct-id119666%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct119670%_)))
                    '#t
                    (_%lp119668%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct119670%_)))))))))
    (define substruct?
      (lambda (_%maybe-sub-struct119620%_ _%maybe-super-struct119621%_)
        (if (class-type? _%maybe-sub-struct119620%_)
            (let ((_%maybe-sub-struct119625%_ _%maybe-sub-struct119620%_))
              (if (class-type? _%maybe-super-struct119621%_)
                  (let ((_%maybe-super-struct119635%_
                         _%maybe-super-struct119621%_))
                    (__substruct?
                     _%maybe-sub-struct119625%_
                     _%maybe-super-struct119635%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@477.47-477.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct119621%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@477.19-477.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct119620%_)
              (void)))))
    (define base-struct/1
      (lambda (_%klass119598%_)
        (if (class-type? _%klass119598%_)
            (if (let ((_%klass119601%_ _%klass119598%_))
                  (if (class-type? _%klass119601%_)
                      (let ((_%klass119606%_ _%klass119601%_))
                        (__class-type-struct? _%klass119606%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'class-type?
                         'value:
                         _%klass119601%_)
                        (void))))
                _%klass119598%_
                (let () (declare (not safe)) (##type-super _%klass119598%_)))
            (if (not _%klass119598%_)
                '#f
                (error '"not a class or false" _%klass119598%_)))))
    (define base-struct/2
      (lambda (_%klass1119521%_ _%klass2119522%_)
        (let ((_%s1119524%_ (base-struct/1 _%klass1119521%_))
              (_%s2119525%_ (base-struct/1 _%klass2119522%_)))
          (if (or (not _%s1119524%_)
                  (and _%s2119525%_
                       (let* ((_%maybe-sub-struct119530%_ _%s1119524%_)
                              (_%maybe-super-struct119533%_ _%s2119525%_))
                         (if (class-type? _%maybe-sub-struct119530%_)
                             (let ((_%maybe-sub-struct119538%_
                                    _%maybe-sub-struct119530%_))
                               (if (class-type? _%maybe-super-struct119533%_)
                                   (let ((_%maybe-super-struct119552%_
                                          _%maybe-super-struct119533%_))
                                     (__substruct?
                                      _%maybe-sub-struct119538%_
                                      _%maybe-super-struct119552%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%maybe-super-struct119533%_)
                                     (void))))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%maybe-sub-struct119530%_)
                               (void))))))
              _%s2119525%_
              (if (or (not _%s2119525%_)
                      (and _%s1119524%_
                           (let* ((_%maybe-sub-struct119566%_ _%s2119525%_)
                                  (_%maybe-super-struct119569%_ _%s1119524%_))
                             (if (class-type? _%maybe-sub-struct119566%_)
                                 (let ((_%maybe-sub-struct119574%_
                                        _%maybe-sub-struct119566%_))
                                   (if (class-type?
                                        _%maybe-super-struct119569%_)
                                       (let ((_%maybe-super-struct119586%_
                                              _%maybe-super-struct119569%_))
                                         (__substruct?
                                          _%maybe-sub-struct119574%_
                                          _%maybe-super-struct119586%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          'class-type?
                                          'value:
                                          _%maybe-super-struct119569%_)
                                         (void))))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'class-type?
                                    'value:
                                    _%maybe-sub-struct119566%_)
                                   (void))))))
                  _%s1119524%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1119521%_
                         _%klass2119522%_
                         _%s1119524%_
                         _%s2119525%_))))))
    (define base-struct/list
      (lambda (_%all-supers119406%_)
        (let* ((_%$%all-supers119407119432%_ _%all-supers119406%_)
               (_%$%E119412119436%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%all-supers119407119432%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  (void)))
               (_%$%try-match119411119474%_
                (lambda ()
                  (let ((_%$%K119413119443%_
                         (lambda (_%y119440%_ _%x119441%_)
                           (foldr base-struct/2 _%x119441%_ _%y119440%_))))
                    (if (pair? _%$%all-supers119407119432%_)
                        (let ((_%$%hd119414119446%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%all-supers119407119432%_)))
                              (_%$%tl119415119448%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%all-supers119407119432%_))))
                          (let ((_%x119451%_ _%$%hd119414119446%_))
                            (letrec ((_%$%splice-rest119417119453%_
                                      (lambda (_%$%rest119421119460%_
                                               _%y119462%_)
                                        (if (null? _%$%rest119421119460%_)
                                            (_%$%K119413119443%_
                                             _%y119462%_
                                             _%x119451%_)
                                            (_%$%E119412119436%_))))
                                     (_%$%splice-try119419119455%_
                                      (lambda (_%$%hd119420119464%_
                                               _%$%rest119421119466%_
                                               _%$%y119416119467%_)
                                        (let ((_%y119469%_
                                               _%$%hd119420119464%_))
                                          (_%$%splice-loop119418119457%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%rest119421119466%_))
                                           (cons _%y119469%_
                                                 _%$%y119416119467%_)))))
                                     (_%$%splice-loop119418119457%_
                                      (lambda (_%$%rest119421119471%_
                                               _%$%y119416119472%_)
                                        (if (pair? _%$%rest119421119471%_)
                                            (_%$%splice-try119419119455%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%rest119421119471%_))
                                             _%$%rest119421119471%_
                                             _%$%y119416119472%_)
                                            (_%$%splice-rest119417119453%_
                                             _%$%rest119421119471%_
                                             (reverse _%$%y119416119472%_))))))
                              (_%$%splice-loop119418119457%_
                               _%$%tl119415119448%_
                               '()))))
                        (_%$%E119412119436%_)))))
               (_%$%try-match119410119498%_
                (lambda ()
                  (let ((_%$%K119422119481%_
                         (lambda (_%y119478%_ _%x119479%_)
                           (base-struct/2 _%x119479%_ _%y119478%_))))
                    (if (pair? _%$%all-supers119407119432%_)
                        (let ((_%$%hd119423119484%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%all-supers119407119432%_)))
                              (_%$%tl119424119486%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%all-supers119407119432%_))))
                          (let ((_%x119489%_ _%$%hd119423119484%_))
                            (if (pair? _%$%tl119424119486%_)
                                (let ((_%$%hd119425119491%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%tl119424119486%_)))
                                      (_%$%tl119426119493%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%tl119424119486%_))))
                                  (let ((_%y119496%_ _%$%hd119425119491%_))
                                    (if (null? _%$%tl119426119493%_)
                                        (_%$%K119422119481%_
                                         _%y119496%_
                                         _%x119489%_)
                                        (_%$%try-match119411119474%_))))
                                (_%$%try-match119411119474%_))))
                        (_%$%try-match119411119474%_)))))
               (_%$%try-match119409119514%_
                (lambda ()
                  (let ((_%$%K119427119504%_
                         (lambda (_%x119502%_) (base-struct/1 _%x119502%_))))
                    (if (pair? _%$%all-supers119407119432%_)
                        (let ((_%$%hd119428119507%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%all-supers119407119432%_)))
                              (_%$%tl119429119509%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%all-supers119407119432%_))))
                          (let ((_%x119512%_ _%$%hd119428119507%_))
                            (if (null? _%$%tl119429119509%_)
                                (_%$%K119427119504%_ _%x119512%_)
                                (_%$%try-match119410119498%_))))
                        (_%$%try-match119410119498%_)))))
               (_%$%K119430119518%_ (lambda () '#f)))
          (if (null? _%$%all-supers119407119432%_)
              (_%$%K119430119518%_)
              (_%$%try-match119409119514%_)))))
    (define base-struct
      (lambda _%all-supers119404%_ (base-struct/list _%all-supers119404%_)))
    (define find-super-constructor
      (lambda (_%super119355%_)
        (let _%lp119357%_ ((_%rest119359%_ _%super119355%_)
                           (_%constructor119360%_ '#f))
          (let* ((_%$%rest119361119369%_ _%rest119359%_)
                 (_%$%E119364119373%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%rest119361119369%_
                           '([hd . rest])
                           'else)
                    (void)))
                 (_%$%else119363119377%_ (lambda () _%constructor119360%_))
                 (_%$%K119365119392%_
                  (lambda (_%rest119380%_ _%hd119381%_)
                    (let ((_%$e119383%_
                           (&class-type-constructor _%hd119381%_)))
                      (if _%$e119383%_
                          ((lambda (_%xconstructor119386%_)
                             (if (or (not _%constructor119360%_)
                                     (eq? _%constructor119360%_
                                          _%xconstructor119386%_))
                                 (_%lp119357%_
                                  _%rest119380%_
                                  _%xconstructor119386%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor119360%_
                                        _%xconstructor119386%_)))
                           _%$e119383%_)
                          (_%lp119357%_
                           _%rest119380%_
                           _%constructor119360%_))))))
            (if (pair? _%$%rest119361119369%_)
                (let ((_%$%hd119366119395%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest119361119369%_)))
                      (_%$%tl119367119397%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest119361119369%_))))
                  (let* ((_%hd119400%_ _%$%hd119366119395%_)
                         (_%rest119402%_ _%$%tl119367119397%_))
                    (_%$%K119365119392%_ _%rest119402%_ _%hd119400%_)))
                (_%$%else119363119377%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list119347%_ _%direct-slots119348%_)
        (c4-compute-class-slots
         _%class-precedence-list119347%_
         _%direct-slots119348%_
         (lambda (_%mixin119350%_)
           (agetq 'direct-slots: (&class-type-properties _%mixin119350%_) '()))
         (lambda (_%slot-list119352%_ _%slot-table119353%_)
           (values (list->vector _%slot-list119352%_) _%slot-table119353%_)))))
    (define __make-class-type
      (lambda (_%id119174%_
               _%name119175%_
               _%direct-supers119176%_
               _%direct-slots119177%_
               _%properties119178%_
               _%constructor119179%_)
        (let* ((_%id119182%_ _%id119174%_)
               (_%name119190%_ _%name119175%_)
               (_%direct-supers119198%_ _%direct-supers119176%_)
               (_%direct-slots119206%_ _%direct-slots119177%_)
               (_%properties119214%_ _%properties119178%_)
               (_%constructor119222%_ _%constructor119179%_))
          (let ((_%$e119256%_
                 (let* ((_%pred119234%_
                         (lambda (_%$obj119231%_)
                           (not (class-type? _%$obj119231%_))))
                        (_%lst119237%_ _%direct-supers119198%_))
                   (if (procedure? _%pred119234%_)
                       (let ((_%pred119242%_ _%pred119234%_))
                         (__find _%pred119242%_ _%lst119237%_))
                       (begin
                         (raise-contract-violation-error
                          '"contract violation"
                          'context:
                          'gerbil/runtime/mop
                          'contract:
                          'procedure?
                          'value:
                          _%pred119234%_)
                         (void))))))
            (if _%$e119256%_
                ((lambda (_%$%g119258119260%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%$%g119258119260%_))
                 _%$e119256%_)
                (let ((_%$e119283%_
                       (let* ((_%pred119263%_ __class-type-final?)
                              (_%lst119266%_ _%direct-supers119198%_))
                         (if (procedure? _%pred119263%_)
                             (let ((_%pred119271%_ _%pred119263%_))
                               (__find _%pred119271%_ _%lst119266%_))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'procedure?
                                'value:
                                _%pred119263%_)
                               (void))))))
                  (if _%$e119283%_
                      ((lambda (_%$%g119285119287%_)
                         (error '"Cannot extend final class"
                                _%$%g119285119287%_))
                       _%$e119283%_)
                      '#!void))))
          (let ((_g121007_ (compute-precedence-list _%direct-supers119198%_)))
            (begin
              (let ((_g121008_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g121007_)
                           (##values-length _g121007_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g121008_ 2)))
                    (error "Context expects 2 values" _g121008_)))
              (let ((_%precedence-list119290%_
                     (let () (declare (not safe)) (##values-ref _g121007_ 0)))
                    (_%struct-super119291%_
                     (let () (declare (not safe)) (##values-ref _g121007_ 1))))
                (let ((_g121009_
                       (compute-class-slots
                        _%precedence-list119290%_
                        _%direct-slots119206%_)))
                  (begin
                    (let ((_g121010_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g121009_)
                                 (##values-length _g121009_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g121010_ 2)))
                          (error "Context expects 2 values" _g121010_)))
                    (let ((_%slot-vector119293%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g121009_ 0)))
                          (_%slot-table119294%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g121009_ 1))))
                      (let* ((_%properties119296%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots119206%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers119198%_)
                                          _%properties119214%_)))
                             (_%constructor*119301%_
                              (let ((_%$e119298%_ _%constructor119222%_))
                                (if _%$e119298%_
                                    _%$e119298%_
                                    (find-super-constructor
                                     _%direct-supers119198%_))))
                             (_%precedence-list119344%_
                              (if (or (agetq 'system: _%properties119296%_)
                                      (memq object::t
                                            _%precedence-list119290%_))
                                  _%precedence-list119290%_
                                  (let _%loop119306%_ ((_%tail119308%_
                                                        _%precedence-list119290%_)
                                                       (_%head119309%_ '()))
                                    (let* ((_%$%tail119310119318%_
                                            _%tail119308%_)
                                           (_%$%E119313119322%_
                                            (lambda ()
                                              (error '"No clause matching"
                                                     _%$%tail119310119318%_
                                                     '([hd . rest])
                                                     'else)
                                              (void)))
                                           (_%$%else119312119326%_
                                            (lambda ()
                                              (foldl cons
                                                     (cons object::t
                                                           (cons t::t '()))
                                                     _%head119309%_)))
                                           (_%$%K119314119332%_
                                            (lambda (_%rest119329%_
                                                     _%hd119330%_)
                                              (if (eq? _%hd119330%_ t::t)
                                                  (foldl cons
                                                         (cons object::t
                                                               _%tail119308%_)
                                                         _%head119309%_)
                                                  (_%loop119306%_
                                                   _%rest119329%_
                                                   (cons _%hd119330%_
                                                         _%head119309%_))))))
                                      (if (pair? _%$%tail119310119318%_)
                                          (let ((_%$%hd119315119335%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tail119310119318%_)))
                                                (_%$%tl119316119337%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tail119310119318%_))))
                                            (let* ((_%hd119340%_
                                                    _%$%hd119315119335%_)
                                                   (_%rest119342%_
                                                    _%$%tl119316119337%_))
                                              (_%$%K119314119332%_
                                               _%rest119342%_
                                               _%hd119340%_)))
                                          (_%$%else119312119326%_)))))))
                        (make-class-type-descriptor
                         _%id119182%_
                         _%name119190%_
                         _%struct-super119291%_
                         _%precedence-list119344%_
                         _%slot-vector119293%_
                         _%properties119296%_
                         _%constructor*119301%_
                         _%slot-table119294%_
                         '#f)))))))))))
    (define make-class-type
      (lambda (_%id119099%_
               _%name119100%_
               _%direct-supers119101%_
               _%direct-slots119102%_
               _%properties119103%_
               _%constructor119104%_)
        (if (symbol? _%id119099%_)
            (let ((_%id119108%_ _%id119099%_))
              (if (symbol? _%name119100%_)
                  (let ((_%name119118%_ _%name119100%_))
                    (if (list? _%direct-supers119101%_)
                        (let ((_%direct-supers119128%_
                               _%direct-supers119101%_))
                          (if (list? _%direct-slots119102%_)
                              (let ((_%direct-slots119138%_
                                     _%direct-slots119102%_))
                                (if (list? _%properties119103%_)
                                    (let ((_%properties119148%_
                                           _%properties119103%_))
                                      (if ((lambda (_%$obj119157%_)
                                             (or (not _%$obj119157%_)
                                                 (symbol? _%$obj119157%_)))
                                           _%constructor119104%_)
                                          (let ((_%constructor119164%_
                                                 _%constructor119104%_))
                                            (__make-class-type
                                             _%id119108%_
                                             _%name119118%_
                                             _%direct-supers119128%_
                                             _%direct-slots119138%_
                                             _%properties119148%_
                                             _%constructor119164%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@558.24-558.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor119104%_)
                                            (void))))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@557.24-557.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties119103%_)
                                      (void))))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@556.24-556.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots119102%_)
                                (void))))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@555.24-555.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers119101%_)
                          (void))))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@554.24-554.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name119100%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@553.24-553.26"
               'contract:
               'symbol?
               'value:
               _%id119099%_)
              (void)))))
    (define __class-precedence-list
      (lambda (_%klass119087%_)
        (let ((_%klass119090%_ _%klass119087%_))
          (cons _%klass119090%_
                (&class-type-precedence-list _%klass119090%_)))))
    (define class-precedence-list
      (lambda (_%klass119073%_)
        (if (class-type? _%klass119073%_)
            (let ((_%klass119077%_ _%klass119073%_))
              (__class-precedence-list _%klass119077%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@591.30-591.35"
               'contract:
               'class-type?
               'value:
               _%klass119073%_)
              (void)))))
    (define compute-precedence-list
      (lambda (_%direct-supers119070%_)
        (c4-linearize
         '()
         _%direct-supers119070%_
         'get-precedence-list:
         class-precedence-list
         'struct:
         class-type-struct?
         'eq:
         eq?
         'get-name:
         ##type-name)))
    (define __make-class-predicate
      (lambda (_%klass118986%_)
        (let* ((_%klass118989%_ _%klass118986%_)
               (_%tid118998%_
                (let () (declare (not safe)) (##type-id _%klass118989%_))))
          (if (let ((_%type119000%_ _%klass118989%_))
                (if (class-type? _%type119000%_)
                    (let ((_%type119005%_ _%type119000%_))
                      (__class-type-final? _%type119005%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%type119000%_)
                      (void))))
              (lambda (_%$%g119019119021%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%$%g119019119021%_
                   _%tid118998%_)))
              (if (let ((_%klass119024%_ _%klass118989%_))
                    (if (class-type? _%klass119024%_)
                        (let ((_%klass119029%_ _%klass119024%_))
                          (__class-type-struct? _%klass119029%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass119024%_)
                          (void))))
                  (lambda (_%$%g119039119041%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%$%g119039119041%_
                       _%tid118998%_)))
                  (lambda (_%$%g119044119046%_)
                    (let* ((_%klass119049%_ _%klass118989%_)
                           (_%obj119052%_ _%$%g119044119046%_))
                      (if (class-type? _%klass119049%_)
                          (let ((_%klass119057%_ _%klass119049%_))
                            (__class-instance? _%klass119057%_ _%obj119052%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/mop
                             'contract:
                             'class-type?
                             'value:
                             _%klass119049%_)
                            (void))))))))))
    (define make-class-predicate
      (lambda (_%klass118972%_)
        (if (class-type? _%klass118972%_)
            (let ((_%klass118976%_ _%klass118972%_))
              (__make-class-predicate _%klass118976%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@603.29-603.34"
               'contract:
               'class-type?
               'value:
               _%klass118972%_)
              (void)))))
    (define __make-class-slot-accessor
      (lambda (_%klass118906%_ _%slot118907%_)
        (let* ((_%klass118910%_ _%klass118906%_)
               (_%slot118918%_ _%slot118907%_)
               (_%field118927%_
                (symbolic-table-ref
                 (&class-type-slot-table _%klass118910%_)
                 _%slot118918%_
                 '#f)))
          (if (not _%field118927%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass118910%_
                       'slot:
                       _%slot118918%_)
                (void))
              (if (let ((_%type118931%_ _%klass118910%_))
                    (if (class-type? _%type118931%_)
                        (let ((_%type118936%_ _%type118931%_))
                          (__class-type-final? _%type118936%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%type118931%_)
                          (void))))
                  (make-final-slot-accessor
                   _%klass118910%_
                   _%slot118918%_
                   _%field118927%_)
                  (if (let ((_%klass118951%_ _%klass118910%_))
                        (if (class-type? _%klass118951%_)
                            (let ((_%klass118956%_ _%klass118951%_))
                              (__class-type-struct? _%klass118956%_))
                            (begin
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               'gerbil/runtime/mop
                               'contract:
                               'class-type?
                               'value:
                               _%klass118951%_)
                              (void))))
                      (make-struct-slot-accessor
                       _%klass118910%_
                       _%slot118918%_
                       _%field118927%_)
                      (if (let ((_%strukt118967%_
                                 (base-struct/1 _%klass118910%_)))
                            (and (class-type? _%strukt118967%_)
                                 (let ((__tmp121011
                                        (let ((__tmp121012
                                               (&class-type-slot-vector
                                                _%strukt118967%_)))
                                          (declare (not safe))
                                          (##vector-length __tmp121012))))
                                   (declare (not safe))
                                   (##fx< _%field118927%_ __tmp121011))))
                          (make-struct-subclass-slot-accessor
                           _%klass118910%_
                           _%slot118918%_
                           _%field118927%_)
                          (make-class-cached-slot-accessor
                           _%klass118910%_
                           _%slot118918%_
                           _%field118927%_))))))))
    (define make-class-slot-accessor
      (lambda (_%klass118881%_ _%slot118882%_)
        (if (class-type? _%klass118881%_)
            (let ((_%klass118886%_ _%klass118881%_))
              (if (symbol? _%slot118882%_)
                  (let ((_%slot118896%_ _%slot118882%_))
                    (__make-class-slot-accessor
                     _%klass118886%_
                     _%slot118896%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@634.50-634.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot118882%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@634.33-634.38"
               'contract:
               'class-type?
               'value:
               _%klass118881%_)
              (void)))))
    (define __make-class-slot-mutator
      (lambda (_%klass118815%_ _%slot118816%_)
        (let* ((_%klass118819%_ _%klass118815%_)
               (_%slot118827%_ _%slot118816%_)
               (_%field118836%_
                (symbolic-table-ref
                 (&class-type-slot-table _%klass118819%_)
                 _%slot118827%_
                 '#f)))
          (if (not _%field118836%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass118819%_
                       'slot:
                       _%slot118827%_)
                (void))
              (if (let ((_%type118840%_ _%klass118819%_))
                    (if (class-type? _%type118840%_)
                        (let ((_%type118845%_ _%type118840%_))
                          (__class-type-final? _%type118845%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%type118840%_)
                          (void))))
                  (make-final-slot-mutator
                   _%klass118819%_
                   _%slot118827%_
                   _%field118836%_)
                  (if (let ((_%klass118860%_ _%klass118819%_))
                        (if (class-type? _%klass118860%_)
                            (let ((_%klass118865%_ _%klass118860%_))
                              (__class-type-struct? _%klass118865%_))
                            (begin
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               'gerbil/runtime/mop
                               'contract:
                               'class-type?
                               'value:
                               _%klass118860%_)
                              (void))))
                      (make-struct-slot-mutator
                       _%klass118819%_
                       _%slot118827%_
                       _%field118836%_)
                      (if (let ((_%strukt118876%_
                                 (base-struct/1 _%klass118819%_)))
                            (and (class-type? _%strukt118876%_)
                                 (let ((__tmp121013
                                        (let ((__tmp121014
                                               (&class-type-slot-vector
                                                _%strukt118876%_)))
                                          (declare (not safe))
                                          (##vector-length __tmp121014))))
                                   (declare (not safe))
                                   (##fx< _%field118836%_ __tmp121013))))
                          (make-struct-subclass-slot-mutator
                           _%klass118819%_
                           _%slot118827%_
                           _%field118836%_)
                          (make-class-cached-slot-mutator
                           _%klass118819%_
                           _%slot118827%_
                           _%field118836%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass118790%_ _%slot118791%_)
        (if (class-type? _%klass118790%_)
            (let ((_%klass118795%_ _%klass118790%_))
              (if (symbol? _%slot118791%_)
                  (let ((_%slot118805%_ _%slot118791%_))
                    (__make-class-slot-mutator _%klass118795%_ _%slot118805%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@642.49-642.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot118791%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@642.32-642.37"
               'contract:
               'class-type?
               'value:
               _%klass118790%_)
              (void)))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass118724%_ _%slot118725%_)
        (let* ((_%klass118728%_ _%klass118724%_)
               (_%slot118736%_ _%slot118725%_)
               (_%field118745%_
                (symbolic-table-ref
                 (&class-type-slot-table _%klass118728%_)
                 _%slot118736%_
                 '#f)))
          (if (not _%field118745%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass118728%_
                       'slot:
                       _%slot118736%_)
                (void))
              (if (let ((_%type118749%_ _%klass118728%_))
                    (if (class-type? _%type118749%_)
                        (let ((_%type118754%_ _%type118749%_))
                          (__class-type-final? _%type118754%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%type118749%_)
                          (void))))
                  (make-struct-slot-unchecked-accessor
                   _%klass118728%_
                   _%slot118736%_
                   _%field118745%_)
                  (if (let ((_%klass118769%_ _%klass118728%_))
                        (if (class-type? _%klass118769%_)
                            (let ((_%klass118774%_ _%klass118769%_))
                              (__class-type-struct? _%klass118774%_))
                            (begin
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               'gerbil/runtime/mop
                               'contract:
                               'class-type?
                               'value:
                               _%klass118769%_)
                              (void))))
                      (make-struct-slot-unchecked-accessor
                       _%klass118728%_
                       _%slot118736%_
                       _%field118745%_)
                      (if (let ((_%strukt118785%_
                                 (base-struct/1 _%klass118728%_)))
                            (and (class-type? _%strukt118785%_)
                                 (let ((__tmp121015
                                        (let ((__tmp121016
                                               (&class-type-slot-vector
                                                _%strukt118785%_)))
                                          (declare (not safe))
                                          (##vector-length __tmp121016))))
                                   (declare (not safe))
                                   (##fx< _%field118745%_ __tmp121015))))
                          (make-struct-slot-unchecked-accessor
                           _%klass118728%_
                           _%slot118736%_
                           _%field118745%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass118728%_
                           _%slot118736%_
                           _%field118745%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass118699%_ _%slot118700%_)
        (if (class-type? _%klass118699%_)
            (let ((_%klass118704%_ _%klass118699%_))
              (if (symbol? _%slot118700%_)
                  (let ((_%slot118714%_ _%slot118700%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass118704%_
                     _%slot118714%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@650.60-650.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot118700%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@650.43-650.48"
               'contract:
               'class-type?
               'value:
               _%klass118699%_)
              (void)))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass118633%_ _%slot118634%_)
        (let* ((_%klass118637%_ _%klass118633%_)
               (_%slot118645%_ _%slot118634%_)
               (_%field118654%_
                (symbolic-table-ref
                 (&class-type-slot-table _%klass118637%_)
                 _%slot118645%_
                 '#f)))
          (if (not _%field118654%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass118637%_
                       'slot:
                       _%slot118645%_)
                (void))
              (if (let ((_%type118658%_ _%klass118637%_))
                    (if (class-type? _%type118658%_)
                        (let ((_%type118663%_ _%type118658%_))
                          (__class-type-final? _%type118663%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%type118658%_)
                          (void))))
                  (make-struct-slot-unchecked-mutator
                   _%klass118637%_
                   _%slot118645%_
                   _%field118654%_)
                  (if (let ((_%klass118678%_ _%klass118637%_))
                        (if (class-type? _%klass118678%_)
                            (let ((_%klass118683%_ _%klass118678%_))
                              (__class-type-struct? _%klass118683%_))
                            (begin
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               'gerbil/runtime/mop
                               'contract:
                               'class-type?
                               'value:
                               _%klass118678%_)
                              (void))))
                      (make-struct-slot-unchecked-mutator
                       _%klass118637%_
                       _%slot118645%_
                       _%field118654%_)
                      (if (let ((_%strukt118694%_
                                 (base-struct/1 _%klass118637%_)))
                            (and (class-type? _%strukt118694%_)
                                 (let ((__tmp121017
                                        (let ((__tmp121018
                                               (&class-type-slot-vector
                                                _%strukt118694%_)))
                                          (declare (not safe))
                                          (##vector-length __tmp121018))))
                                   (declare (not safe))
                                   (##fx< _%field118654%_ __tmp121017))))
                          (make-struct-slot-unchecked-mutator
                           _%klass118637%_
                           _%slot118645%_
                           _%field118654%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass118637%_
                           _%slot118645%_
                           _%field118654%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass118608%_ _%slot118609%_)
        (if (class-type? _%klass118608%_)
            (let ((_%klass118613%_ _%klass118608%_))
              (if (symbol? _%slot118609%_)
                  (let ((_%slot118623%_ _%slot118609%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass118613%_
                     _%slot118623%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@658.59-658.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot118609%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@658.42-658.47"
               'contract:
               'class-type?
               'value:
               _%klass118608%_)
              (void)))))
    (define not-an-instance
      (let ((_%$%opt-lambda118590118596%_
             (lambda (_%object118592%_ _%class118593%_ _%slot118594%_)
               (apply error
                      '"not an instance"
                      'object:
                      _%object118592%_
                      'class:
                      _%class118593%_
                      (if _%slot118594%_
                          (cons 'slot: (cons _%slot118594%_ '()))
                          '())))))
        (lambda _g121019_
          (let ((_g121020_ (let () (declare (not safe)) (##length _g121019_))))
            (cond ((let () (declare (not safe)) (##fx= _g121020_ 2))
                   (apply (lambda (_%object118599%_ _%class118600%_)
                            (let ((_%slot118602%_ '#f))
                              (_%$%opt-lambda118590118596%_
                               _%object118599%_
                               _%class118600%_
                               _%slot118602%_)))
                          _g121019_))
                  ((let () (declare (not safe)) (##fx= _g121020_ 3))
                   (apply _%$%opt-lambda118590118596%_ _g121019_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    not-an-instance
                    _g121019_)))))))
    (define make-final-slot-accessor
      (lambda (_%klass118585%_ _%slot118586%_ _%field118587%_)
        (lambda (_%obj118589%_)
          (##direct-structure-ref
           _%obj118589%_
           _%field118587%_
           _%klass118585%_
           _%slot118586%_))))
    (define make-final-slot-mutator
      (lambda (_%klass118578%_ _%slot118579%_ _%field118580%_)
        (lambda (_%obj118582%_ _%val118583%_)
          (##direct-structure-set!
           _%obj118582%_
           _%val118583%_
           _%field118580%_
           _%klass118578%_
           _%slot118579%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass118572%_ _%slot118573%_ _%field118574%_)
        (lambda (_%obj118576%_)
          (##structure-ref
           _%obj118576%_
           _%field118574%_
           _%klass118572%_
           _%slot118573%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass118565%_ _%slot118566%_ _%field118567%_)
        (lambda (_%obj118569%_ _%val118570%_)
          (##structure-set!
           _%obj118569%_
           _%val118570%_
           _%field118567%_
           _%klass118565%_
           _%slot118566%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass118559%_ _%slot118560%_ _%field118561%_)
        (lambda (_%obj118563%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj118563%_
             _%field118561%_
             _%klass118559%_
             _%slot118560%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass118552%_ _%slot118553%_ _%field118554%_)
        (lambda (_%obj118556%_ _%val118557%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj118556%_
             _%val118557%_
             _%field118554%_
             _%klass118552%_
             _%slot118553%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass118525%_ _%slot118526%_ _%field118527%_)
        (lambda (_%obj118529%_)
          (if (let* ((_%klass118531%_ _%klass118525%_)
                     (_%obj118534%_ _%obj118529%_))
                (if (class-type? _%klass118531%_)
                    (let ((_%klass118539%_ _%klass118531%_))
                      (__class-instance? _%klass118539%_ _%obj118534%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass118531%_)
                      (void))))
              (unchecked-slot-ref _%obj118529%_ _%field118527%_)
              (not-an-instance
               _%obj118529%_
               _%klass118525%_
               _%slot118526%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass118497%_ _%slot118498%_ _%field118499%_)
        (lambda (_%obj118501%_ _%val118502%_)
          (if (let* ((_%klass118504%_ _%klass118497%_)
                     (_%obj118507%_ _%obj118501%_))
                (if (class-type? _%klass118504%_)
                    (let ((_%klass118512%_ _%klass118504%_))
                      (__class-instance? _%klass118512%_ _%obj118507%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass118504%_)
                      (void))))
              (unchecked-field-set!
               _%obj118501%_
               _%field118499%_
               _%val118502%_)
              (not-an-instance
               _%obj118501%_
               _%klass118497%_
               _%slot118498%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass118448%_ _%slot118449%_ _%field118450%_)
        (lambda (_%obj118452%_)
          (if (let* ((_%klass118454%_ _%klass118448%_)
                     (_%obj118457%_ _%obj118452%_))
                (if (class-type? _%klass118454%_)
                    (let ((_%klass118462%_ _%klass118454%_))
                      (__direct-instance? _%klass118462%_ _%obj118457%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass118454%_)
                      (void))))
              (unchecked-field-ref _%obj118452%_ _%field118450%_)
              (if (let* ((_%klass118476%_ _%klass118448%_)
                         (_%obj118479%_ _%obj118452%_))
                    (if (class-type? _%klass118476%_)
                        (let ((_%klass118484%_ _%klass118476%_))
                          (__class-instance? _%klass118484%_ _%obj118479%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass118476%_)
                          (void))))
                  (unchecked-slot-ref _%obj118452%_ _%slot118449%_)
                  (not-an-instance
                   _%obj118452%_
                   _%klass118448%_
                   _%slot118449%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass118398%_ _%slot118399%_ _%field118400%_)
        (lambda (_%obj118402%_ _%val118403%_)
          (if (let* ((_%klass118405%_ _%klass118398%_)
                     (_%obj118408%_ _%obj118402%_))
                (if (class-type? _%klass118405%_)
                    (let ((_%klass118413%_ _%klass118405%_))
                      (__direct-instance? _%klass118413%_ _%obj118408%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass118405%_)
                      (void))))
              (unchecked-field-set!
               _%obj118402%_
               _%field118400%_
               _%val118403%_)
              (if (let* ((_%klass118427%_ _%klass118398%_)
                         (_%obj118430%_ _%obj118402%_))
                    (if (class-type? _%klass118427%_)
                        (let ((_%klass118435%_ _%klass118427%_))
                          (__class-instance? _%klass118435%_ _%obj118430%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass118427%_)
                          (void))))
                  (unchecked-slot-set!
                   _%obj118402%_
                   _%slot118399%_
                   _%val118403%_)
                  (not-an-instance
                   _%obj118402%_
                   _%klass118398%_
                   _%slot118399%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass118371%_ _%slot118372%_ _%field118373%_)
        (lambda (_%obj118375%_)
          (if (let* ((_%klass118377%_ _%klass118371%_)
                     (_%obj118380%_ _%obj118375%_))
                (if (class-type? _%klass118377%_)
                    (let ((_%klass118385%_ _%klass118377%_))
                      (__direct-instance? _%klass118385%_ _%obj118380%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass118377%_)
                      (void))))
              (unchecked-field-ref _%obj118375%_ _%field118373%_)
              (unchecked-slot-ref _%obj118375%_ _%slot118372%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass118343%_ _%slot118344%_ _%field118345%_)
        (lambda (_%obj118347%_ _%val118348%_)
          (if (let* ((_%klass118350%_ _%klass118343%_)
                     (_%obj118353%_ _%obj118347%_))
                (if (class-type? _%klass118350%_)
                    (let ((_%klass118358%_ _%klass118350%_))
                      (__direct-instance? _%klass118358%_ _%obj118353%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass118350%_)
                      (void))))
              (unchecked-field-set!
               _%obj118347%_
               _%field118345%_
               _%val118348%_)
              (unchecked-slot-set!
               _%obj118347%_
               _%slot118344%_
               _%val118348%_)))))
    (define __class-slot-offset
      (lambda (_%klass118322%_ _%slot118323%_)
        (let* ((_%klass118326%_ _%klass118322%_)
               (_%slot118334%_ _%slot118323%_))
          (symbolic-table-ref
           (&class-type-slot-table _%klass118326%_)
           _%slot118334%_
           '#f))))
    (define class-slot-offset
      (lambda (_%klass118297%_ _%slot118298%_)
        (if (class-type? _%klass118297%_)
            (let ((_%klass118302%_ _%klass118297%_))
              (if (symbolic? _%slot118298%_)
                  (let ((_%slot118312%_ _%slot118298%_))
                    (__class-slot-offset _%klass118302%_ _%slot118312%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@720.43-720.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot118298%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@720.26-720.31"
               'contract:
               'class-type?
               'value:
               _%klass118297%_)
              (void)))))
    (define __class-slot-ref
      (lambda (_%klass118222%_ _%obj118223%_ _%slot118224%_)
        (let* ((_%klass118227%_ _%klass118222%_)
               (_%slot118235%_ _%slot118224%_))
          (if (let* ((_%klass118244%_ _%klass118227%_)
                     (_%obj118247%_ _%obj118223%_))
                (if (class-type? _%klass118244%_)
                    (let ((_%klass118252%_ _%klass118244%_))
                      (__class-instance? _%klass118252%_ _%obj118247%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass118244%_)
                      (void))))
              (let ((_%off118295%_
                     (let* ((_%klass118266%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj118223%_)))
                            (_%slot118269%_ _%slot118235%_))
                       (if (class-type? _%klass118266%_)
                           (let ((_%klass118274%_ _%klass118266%_))
                             (if (symbolic? _%slot118269%_)
                                 (let ((_%slot118285%_ _%slot118269%_))
                                   (__class-slot-offset
                                    _%klass118274%_
                                    _%slot118285%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot118269%_)
                                   (void))))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass118266%_)
                             (void))))))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj118223%_
                 _%off118295%_
                 _%klass118227%_
                 _%slot118235%_))
              (not-an-instance _%obj118223%_ _%klass118227%_)))))
    (define class-slot-ref
      (lambda (_%klass118196%_ _%obj118197%_ _%slot118198%_)
        (if (class-type? _%klass118196%_)
            (let ((_%klass118202%_ _%klass118196%_))
              (if (symbolic? _%slot118198%_)
                  (let ((_%slot118212%_ _%slot118198%_))
                    (__class-slot-ref
                     _%klass118202%_
                     _%obj118197%_
                     _%slot118212%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@723.44-723.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot118198%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@723.23-723.28"
               'contract:
               'class-type?
               'value:
               _%klass118196%_)
              (void)))))
    (define __class-slot-set!
      (lambda (_%klass118120%_ _%obj118121%_ _%slot118122%_ _%val118123%_)
        (let* ((_%klass118126%_ _%klass118120%_)
               (_%slot118134%_ _%slot118122%_))
          (if (let* ((_%klass118143%_ _%klass118126%_)
                     (_%obj118146%_ _%obj118121%_))
                (if (class-type? _%klass118143%_)
                    (let ((_%klass118151%_ _%klass118143%_))
                      (__class-instance? _%klass118151%_ _%obj118146%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass118143%_)
                      (void))))
              (let ((_%off118194%_
                     (let* ((_%klass118165%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj118121%_)))
                            (_%slot118168%_ _%slot118134%_))
                       (if (class-type? _%klass118165%_)
                           (let ((_%klass118173%_ _%klass118165%_))
                             (if (symbolic? _%slot118168%_)
                                 (let ((_%slot118184%_ _%slot118168%_))
                                   (__class-slot-offset
                                    _%klass118173%_
                                    _%slot118184%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot118168%_)
                                   (void))))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass118165%_)
                             (void))))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj118121%_
                 _%val118123%_
                 _%off118194%_
                 _%klass118126%_
                 _%slot118134%_))
              (not-an-instance _%obj118121%_ _%klass118126%_)))))
    (define class-slot-set!
      (lambda (_%klass118093%_ _%obj118094%_ _%slot118095%_ _%val118096%_)
        (if (class-type? _%klass118093%_)
            (let ((_%klass118100%_ _%klass118093%_))
              (if (symbolic? _%slot118095%_)
                  (let ((_%slot118110%_ _%slot118095%_))
                    (__class-slot-set!
                     _%klass118100%_
                     _%obj118094%_
                     _%slot118110%_
                     _%val118096%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@729.45-729.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot118095%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@729.24-729.29"
               'contract:
               'class-type?
               'value:
               _%klass118093%_)
              (void)))))
    (define unchecked-field-ref
      (lambda (_%obj118090%_ _%off118091%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj118090%_ _%off118091%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj118086%_ _%off118087%_ _%val118088%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj118086%_
           _%val118088%_
           _%off118087%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj118083%_ _%slot118084%_)
        (unchecked-field-ref
         _%obj118083%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj118083%_))
          _%slot118084%_))))
    (define unchecked-slot-set!
      (lambda (_%obj118079%_ _%slot118080%_ _%val118081%_)
        (unchecked-field-set!
         _%obj118079%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj118079%_))
          _%slot118080%_)
         _%val118081%_)))
    (define __slot-error
      (lambda (_%obj118076%_ _%slot118077%_)
        (error '"Cannot find slot"
               'object:
               _%obj118076%_
               'slot:
               _%slot118077%_)))
    (define __slot-ref
      (let ((_%$%opt-lambda117998118064%_
             (lambda (_%obj118000%_ _%slot118001%_ _%E118002%_)
               (let* ((_%slot118005%_ _%slot118001%_)
                      (_%E118013%_ _%E118002%_)
                      (_%klass118022%_ (class-of _%obj118000%_))
                      (_%$e118058%_
                       (let* ((_%klass118025%_ _%klass118022%_)
                              (_%slot118028%_ _%slot118005%_))
                         (if (class-type? _%klass118025%_)
                             (let ((_%klass118033%_ _%klass118025%_))
                               (if (symbolic? _%slot118028%_)
                                   (let ((_%slot118048%_ _%slot118028%_))
                                     (__class-slot-offset
                                      _%klass118033%_
                                      _%slot118048%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'symbolic?
                                      'value:
                                      _%slot118028%_)
                                     (void))))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%klass118025%_)
                               (void))))))
                 (if _%$e118058%_
                     ((lambda (_%off118061%_)
                        (unchecked-field-ref _%obj118000%_ _%off118061%_))
                      _%$e118058%_)
                     (_%E118013%_ _%obj118000%_ _%slot118005%_))))))
        (lambda _g121021_
          (let ((_g121022_ (let () (declare (not safe)) (##length _g121021_))))
            (cond ((let () (declare (not safe)) (##fx= _g121022_ 2))
                   (apply (lambda (_%obj118067%_ _%slot118068%_)
                            (let ((_%E118070%_ __slot-error))
                              (_%$%opt-lambda117998118064%_
                               _%obj118067%_
                               _%slot118068%_
                               _%E118070%_)))
                          _g121021_))
                  ((let () (declare (not safe)) (##fx= _g121022_ 3))
                   (apply _%$%opt-lambda117998118064%_ _g121021_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __slot-ref
                    _g121021_)))))))
    (define slot-ref
      (let ((_%$%opt-lambda117959117987%_
             (lambda (_%obj117961%_ _%slot117962%_ _%E117963%_)
               (if (symbol? _%slot117962%_)
                   (let ((_%slot117967%_ _%slot117962%_))
                     (if (procedure? _%E117963%_)
                         (let ((_%E117977%_ _%E117963%_))
                           (__slot-ref
                            _%obj117961%_
                            _%slot117967%_
                            _%E117977%_))
                         (begin
                           (raise-contract-violation-error
                            '"contract violation"
                            'context:
                            '"\"gerbil/runtime/mop.ss\"@755.38-755.39"
                            'contract:
                            'procedure?
                            'value:
                            _%E117963%_)
                           (void))))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      '"\"gerbil/runtime/mop.ss\"@755.21-755.25"
                      'contract:
                      'symbol?
                      'value:
                      _%slot117962%_)
                     (void))))))
        (lambda _g121023_
          (let ((_g121024_ (let () (declare (not safe)) (##length _g121023_))))
            (cond ((let () (declare (not safe)) (##fx= _g121024_ 2))
                   (apply (lambda (_%obj117990%_ _%slot117991%_)
                            (let ((_%E117993%_ __slot-error))
                              (_%$%opt-lambda117959117987%_
                               _%obj117990%_
                               _%slot117991%_
                               _%E117993%_)))
                          _g121023_))
                  ((let () (declare (not safe)) (##fx= _g121024_ 3))
                   (apply _%$%opt-lambda117959117987%_ _g121023_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    slot-ref
                    _g121023_)))))))
    (define __slot-set!
      (let ((_%$%opt-lambda117879117946%_
             (lambda (_%obj117881%_ _%slot117882%_ _%val117883%_ _%E117884%_)
               (let* ((_%slot117887%_ _%slot117882%_)
                      (_%E117895%_ _%E117884%_)
                      (_%klass117904%_ (class-of _%obj117881%_))
                      (_%$e117940%_
                       (let* ((_%klass117907%_ _%klass117904%_)
                              (_%slot117910%_ _%slot117887%_))
                         (if (class-type? _%klass117907%_)
                             (let ((_%klass117915%_ _%klass117907%_))
                               (if (symbolic? _%slot117910%_)
                                   (let ((_%slot117930%_ _%slot117910%_))
                                     (__class-slot-offset
                                      _%klass117915%_
                                      _%slot117930%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'symbolic?
                                      'value:
                                      _%slot117910%_)
                                     (void))))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%klass117907%_)
                               (void))))))
                 (if _%$e117940%_
                     ((lambda (_%off117943%_)
                        (unchecked-field-set!
                         _%obj117881%_
                         _%off117943%_
                         _%val117883%_))
                      _%$e117940%_)
                     (_%E117895%_ _%obj117881%_ _%slot117887%_))))))
        (lambda _g121025_
          (let ((_g121026_ (let () (declare (not safe)) (##length _g121025_))))
            (cond ((let () (declare (not safe)) (##fx= _g121026_ 3))
                   (apply (lambda (_%obj117949%_ _%slot117950%_ _%val117951%_)
                            (let ((_%E117953%_ __slot-error))
                              (_%$%opt-lambda117879117946%_
                               _%obj117949%_
                               _%slot117950%_
                               _%val117951%_
                               _%E117953%_)))
                          _g121025_))
                  ((let () (declare (not safe)) (##fx= _g121026_ 4))
                   (apply _%$%opt-lambda117879117946%_ _g121025_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __slot-set!
                    _g121025_)))))))
    (define slot-set!
      (let ((_%$%opt-lambda117837117866%_
             (lambda (_%obj117839%_ _%slot117840%_ _%val117841%_ _%E117842%_)
               (if (symbol? _%slot117840%_)
                   (let ((_%slot117846%_ _%slot117840%_))
                     (if (procedure? _%E117842%_)
                         (let ((_%E117856%_ _%E117842%_))
                           (__slot-set!
                            _%obj117839%_
                            _%slot117846%_
                            _%val117841%_
                            _%E117856%_))
                         (begin
                           (raise-contract-violation-error
                            '"contract violation"
                            'context:
                            '"\"gerbil/runtime/mop.ss\"@757.43-757.44"
                            'contract:
                            'procedure?
                            'value:
                            _%E117842%_)
                           (void))))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      '"\"gerbil/runtime/mop.ss\"@757.22-757.26"
                      'contract:
                      'symbol?
                      'value:
                      _%slot117840%_)
                     (void))))))
        (lambda _g121027_
          (let ((_g121028_ (let () (declare (not safe)) (##length _g121027_))))
            (cond ((let () (declare (not safe)) (##fx= _g121028_ 3))
                   (apply (lambda (_%obj117869%_ _%slot117870%_ _%val117871%_)
                            (let ((_%E117873%_ __slot-error))
                              (_%$%opt-lambda117837117866%_
                               _%obj117869%_
                               _%slot117870%_
                               _%val117871%_
                               _%E117873%_)))
                          _g121027_))
                  ((let () (declare (not safe)) (##fx= _g121028_ 4))
                   (apply _%$%opt-lambda117837117866%_ _g121027_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    slot-set!
                    _g121027_)))))))
    (define __subclass?
      (lambda (_%maybe-sub-class117810%_ _%maybe-super-class117811%_)
        (let* ((_%maybe-sub-class117814%_ _%maybe-sub-class117810%_)
               (_%maybe-super-class117822%_ _%maybe-super-class117811%_)
               (_%maybe-super-class-id117831%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class117822%_)))
               (_%$e117833%_
                (eq? _%maybe-super-class-id117831%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class117814%_)))))
          (if _%$e117833%_
              _%$e117833%_
              (ormap (lambda (_%super-class117836%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class117836%_))
                            _%maybe-super-class-id117831%_))
                     (&class-type-precedence-list
                      _%maybe-sub-class117814%_))))))
    (define subclass?
      (lambda (_%maybe-sub-class117785%_ _%maybe-super-class117786%_)
        (if (class-type? _%maybe-sub-class117785%_)
            (let ((_%maybe-sub-class117790%_ _%maybe-sub-class117785%_))
              (if (class-type? _%maybe-super-class117786%_)
                  (let ((_%maybe-super-class117800%_
                         _%maybe-super-class117786%_))
                    (__subclass?
                     _%maybe-sub-class117790%_
                     _%maybe-super-class117800%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@763.45-763.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class117786%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@763.18-763.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class117785%_)
              (void)))))
    (define object?
      (lambda (_%o117782%_)
        (if (let () (declare (not safe)) (##structure? _%o117782%_))
            (class-type?
             (let () (declare (not safe)) (##structure-type _%o117782%_)))
            '#f)))
    (define __direct-instance?
      (lambda (_%klass117769%_ _%obj117770%_)
        (let* ((_%klass117773%_ _%klass117769%_)
               (__tmp121029
                (let () (declare (not safe)) (##type-id _%klass117773%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj117770%_ __tmp121029))))
    (define direct-instance?
      (lambda (_%klass117754%_ _%obj117755%_)
        (if (class-type? _%klass117754%_)
            (let ((_%klass117759%_ _%klass117754%_))
              (__direct-instance? _%klass117759%_ _%obj117755%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@777.25-777.30"
               'contract:
               'class-type?
               'value:
               _%klass117754%_)
              (void)))))
    (define immediate-instance-of?
      (lambda (_%klass117750%_ _%obj117751%_)
        (if (let () (declare (not safe)) (##structure? _%obj117751%_))
            (eq? _%klass117750%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj117751%_)))
            '#f)))
    (define __struct-instance?
      (lambda (_%klass117737%_ _%obj117738%_)
        (let* ((_%klass117741%_ _%klass117737%_)
               (__tmp121030
                (let () (declare (not safe)) (##type-id _%klass117741%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj117738%_ __tmp121030))))
    (define struct-instance?
      (lambda (_%klass117722%_ _%obj117723%_)
        (if (class-type? _%klass117722%_)
            (let ((_%klass117727%_ _%klass117722%_))
              (__struct-instance? _%klass117727%_ _%obj117723%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@806.25-806.30"
               'contract:
               'class-type?
               'value:
               _%klass117722%_)
              (void)))))
    (define __class-instance?
      (lambda (_%klass117674%_ _%obj117675%_)
        (let* ((_%klass117678%_ _%klass117674%_)
               (_%type117687%_ (class-of _%obj117675%_))
               (_%maybe-sub-class117689%_ _%type117687%_)
               (_%maybe-super-class117692%_ _%klass117678%_))
          (if (class-type? _%maybe-sub-class117689%_)
              (let ((_%maybe-sub-class117697%_ _%maybe-sub-class117689%_))
                (if (class-type? _%maybe-super-class117692%_)
                    (let ((_%maybe-super-class117712%_
                           _%maybe-super-class117692%_))
                      (__subclass?
                       _%maybe-sub-class117697%_
                       _%maybe-super-class117712%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%maybe-super-class117692%_)
                      (void))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/mop
                 'contract:
                 'class-type?
                 'value:
                 _%maybe-sub-class117689%_)
                (void))))))
    (define class-instance?
      (lambda (_%klass117659%_ _%obj117660%_)
        (if (class-type? _%klass117659%_)
            (let ((_%klass117664%_ _%klass117659%_))
              (__class-instance? _%klass117664%_ _%obj117660%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@811.24-811.29"
               'contract:
               'class-type?
               'value:
               _%klass117659%_)
              (void)))))
    (define __make-object
      (lambda (_%klass117618%_ _%k117619%_)
        (let* ((_%klass117622%_ _%klass117618%_) (_%k117630%_ _%k117619%_))
          (if (let ((_%klass117639%_ _%klass117622%_))
                (if (class-type? _%klass117639%_)
                    (let ((_%klass117644%_ _%klass117639%_))
                      (__class-type-system? _%klass117644%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass117639%_)
                      (void))))
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass117622%_)
                (void))
              (let ((_%obj117657%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass117622%_ _%k117630%_))))
                (__object-fill! _%obj117657%_ '#f))))))
    (define make-object
      (lambda (_%klass117593%_ _%k117594%_)
        (if (class-type? _%klass117593%_)
            (let ((_%klass117598%_ _%klass117593%_))
              (if (fixnum? _%k117594%_)
                  (let ((_%k117608%_ _%k117594%_))
                    (__make-object _%klass117598%_ _%k117608%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@816.37-816.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k117594%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@816.20-816.25"
               'contract:
               'class-type?
               'value:
               _%klass117593%_)
              (void)))))
    (define __object-class
      (lambda (_%obj117581%_)
        (let ((_%obj117584%_ _%obj117581%_))
          (declare (not safe))
          (##structure-type _%obj117584%_))))
    (define object-class
      (lambda (_%obj117567%_)
        (if (object? _%obj117567%_)
            (let ((_%obj117571%_ _%obj117567%_))
              (__object-class _%obj117571%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@836.21-836.24"
               'contract:
               'object?
               'value:
               _%obj117567%_)
              (void)))))
    (define __object-fill!
      (lambda (_%obj117549%_ _%fill117550%_)
        (let ((_%obj117553%_ _%obj117549%_))
          (let _%loop117562%_ ((_%i117564%_
                                (let ((__tmp121031
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj117553%_))))
                                  (declare (not safe))
                                  (##fx- __tmp121031 '1))))
            (if (let () (declare (not safe)) (##fx> _%i117564%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj117553%_
                     _%fill117550%_
                     _%i117564%_
                     '#f
                     '#f))
                  (_%loop117562%_
                   (let () (declare (not safe)) (##fx- _%i117564%_ '1))))
                _%obj117553%_)))))
    (define object-fill!
      (lambda (_%obj117534%_ _%fill117535%_)
        (if (object? _%obj117534%_)
            (let ((_%obj117539%_ _%obj117534%_))
              (__object-fill! _%obj117539%_ _%fill117535%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@841.21-841.24"
               'contract:
               'object?
               'value:
               _%obj117534%_)
              (void)))))
    (define __new-instance
      (lambda (_%klass117490%_)
        (let* ((_%klass117493%_ _%klass117490%_)
               (_%klass117502%_ _%klass117493%_)
               (_%k117505%_
                (let ((__tmp121032 (&class-type-slot-vector _%klass117493%_)))
                  (declare (not safe))
                  (##vector-length __tmp121032))))
          (if (class-type? _%klass117502%_)
              (let ((_%klass117510%_ _%klass117502%_))
                (if (fixnum? _%k117505%_)
                    (let ((_%k117524%_ _%k117505%_))
                      (__make-object _%klass117510%_ _%k117524%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'fixnum?
                       'value:
                       _%k117505%_)
                      (void))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/mop
                 'contract:
                 'class-type?
                 'value:
                 _%klass117502%_)
                (void))))))
    (define new-instance
      (lambda (_%klass117476%_)
        (if (class-type? _%klass117476%_)
            (let ((_%klass117480%_ _%klass117476%_))
              (__new-instance _%klass117480%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.21-852.26"
               'contract:
               'class-type?
               'value:
               _%klass117476%_)
              (void)))))
    (define __make-instance
      (lambda (_%klass117335%_ . _%args117336%_)
        (let* ((_%klass117339%_ _%klass117335%_)
               (_%$e117348%_ (&class-type-constructor _%klass117339%_)))
          (if _%$e117348%_
              ((lambda (_%kons-id117351%_)
                 (let ((_%obj117373%_
                        (let ((_%klass117353%_ _%klass117339%_))
                          (if (class-type? _%klass117353%_)
                              (let ((_%klass117358%_ _%klass117353%_))
                                (__new-instance _%klass117358%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 'gerbil/runtime/mop
                                 'contract:
                                 'class-type?
                                 'value:
                                 _%klass117353%_)
                                (void))))))
                   (___constructor-init!
                    _%klass117339%_
                    _%kons-id117351%_
                    _%obj117373%_
                    _%args117336%_)
                   _%obj117373%_))
               _%$e117348%_)
              (if (let ((_%klass117375%_ _%klass117339%_))
                    (if (class-type? _%klass117375%_)
                        (let ((_%klass117380%_ _%klass117375%_))
                          (__class-type-metaclass? _%klass117380%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass117375%_)
                          (void))))
                  (let ((_%obj117407%_
                         (let ((_%klass117391%_ _%klass117339%_))
                           (if (class-type? _%klass117391%_)
                               (let ((_%klass117396%_ _%klass117391%_))
                                 (__new-instance _%klass117396%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  'class-type?
                                  'value:
                                  _%klass117391%_)
                                 (void))))))
                    (__metaclass-instance-init!
                     _%klass117339%_
                     _%obj117407%_
                     _%args117336%_)
                    _%obj117407%_)
                  (if (not (let ((_%klass117409%_ _%klass117339%_))
                             (if (class-type? _%klass117409%_)
                                 (let ((_%klass117414%_ _%klass117409%_))
                                   (__class-type-struct? _%klass117414%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'class-type?
                                    'value:
                                    _%klass117409%_)
                                   (void)))))
                      (let ((_%obj117441%_
                             (let ((_%klass117425%_ _%klass117339%_))
                               (if (class-type? _%klass117425%_)
                                   (let ((_%klass117430%_ _%klass117425%_))
                                     (__new-instance _%klass117430%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass117425%_)
                                     (void))))))
                        (___class-instance-init!
                         _%klass117339%_
                         _%obj117441%_
                         _%args117336%_)
                        _%obj117441%_)
                      (if (let ((__tmp121034
                                 (let ((_%klass117443%_ _%klass117339%_))
                                   (if (class-type? _%klass117443%_)
                                       (let ((_%klass117448%_ _%klass117443%_))
                                         (__class-type-field-count
                                          _%klass117448%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          'class-type?
                                          'value:
                                          _%klass117443%_)
                                         (void)))))
                                (__tmp121033 (length _%args117336%_)))
                            (declare (not safe))
                            (##fx= __tmp121034 __tmp121033))
                          (apply ##structure _%klass117339%_ _%args117336%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass117339%_
                                   'slots:
                                   (let ((_%klass117460%_ _%klass117339%_))
                                     (if (class-type? _%klass117460%_)
                                         (let ((_%klass117465%_
                                                _%klass117460%_))
                                           (__class-type-slot-list
                                            _%klass117465%_))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/mop
                                            'contract:
                                            'class-type?
                                            'value:
                                            _%klass117460%_)
                                           (void))))
                                   'args:
                                   _%args117336%_)
                            (void)))))))))
    (define make-instance
      (lambda (_%klass117320%_ . _%args117321%_)
        (if (class-type? _%klass117320%_)
            (let ((_%klass117325%_ _%klass117320%_))
              (declare (not safe))
              (##apply __make-instance _%klass117325%_ _%args117321%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@855.22-855.27"
               'contract:
               'class-type?
               'value:
               _%klass117320%_)
              (void)))))
    (define make-class-instance make-instance)
    (define __struct-instance-init!
      (lambda (_%obj117307%_ . _%args117308%_)
        (let ((_%obj117311%_ _%obj117307%_))
          (if (let ((__tmp121036 (length _%args117308%_))
                    (__tmp121035
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj117311%_))))
                (declare (not safe))
                (##fx< __tmp121036 __tmp121035))
              (___struct-instance-init! _%obj117311%_ _%args117308%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj117311%_
                     'args:
                     _%args117308%_))
          (void))))
    (define struct-instance-init!
      (lambda (_%obj117292%_ . _%args117293%_)
        (if (object? _%obj117292%_)
            (let ((_%obj117297%_ _%obj117292%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj117297%_ _%args117293%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@880.30-880.33"
               'contract:
               'object?
               'value:
               _%obj117292%_)
              (void)))))
    (define ___struct-instance-init!
      (lambda (_%obj117251%_ _%args117252%_)
        (let _%lp117254%_ ((_%k117256%_ '1) (_%rest117257%_ _%args117252%_))
          (let* ((_%$%rest117258117266%_ _%rest117257%_)
                 (_%$%E117261117270%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%rest117258117266%_
                           '([hd . rest])
                           'else)
                    (void)))
                 (_%$%else117260117274%_ (lambda () _%obj117251%_))
                 (_%$%K117262117280%_
                  (lambda (_%rest117277%_ _%hd117278%_)
                    (unchecked-field-set!
                     _%obj117251%_
                     _%k117256%_
                     _%hd117278%_)
                    (_%lp117254%_
                     (let () (declare (not safe)) (##fx+ _%k117256%_ '1))
                     _%rest117277%_))))
            (if (pair? _%$%rest117258117266%_)
                (let ((_%$%hd117263117283%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest117258117266%_)))
                      (_%$%tl117264117285%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest117258117266%_))))
                  (let* ((_%hd117288%_ _%$%hd117263117283%_)
                         (_%rest117290%_ _%$%tl117264117285%_))
                    (_%$%K117262117280%_ _%rest117290%_ _%hd117288%_)))
                (_%$%else117260117274%_))))))
    (define __class-instance-init!
      (lambda (_%obj117238%_ . _%args117239%_)
        (let ((_%obj117242%_ _%obj117238%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj117242%_))
           _%obj117242%_
           _%args117239%_)
          (void))))
    (define class-instance-init!
      (lambda (_%obj117223%_ . _%args117224%_)
        (if (object? _%obj117223%_)
            (let ((_%obj117228%_ _%obj117223%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj117228%_ _%args117224%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@920.29-920.32"
               'contract:
               'object?
               'value:
               _%obj117223%_)
              (void)))))
    (define ___class-instance-init!
      (lambda (_%klass117165%_ _%obj117166%_ _%args117167%_)
        (let _%lp117169%_ ((_%rest117171%_ _%args117167%_))
          (let* ((_%$%rest117172117182%_ _%rest117171%_)
                 (_%$%E117175117186%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%rest117172117182%_
                           '([key val . rest])
                           'else)
                    (void)))
                 (_%$%else117174117190%_
                  (lambda ()
                    (if (null? _%rest117171%_)
                        _%obj117166%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass117165%_
                               'rest:
                               _%rest117171%_))))
                 (_%$%K117176117204%_
                  (lambda (_%rest117193%_ _%val117194%_ _%key117195%_)
                    (if (not (keyword? _%key117195%_))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key117195%_)
                        (let ((_%$e117198%_
                               (__class-slot-offset
                                _%klass117165%_
                                _%key117195%_)))
                          (if _%$e117198%_
                              ((lambda (_%off117201%_)
                                 (unchecked-field-set!
                                  _%obj117166%_
                                  _%off117201%_
                                  _%val117194%_)
                                 (_%lp117169%_ _%rest117193%_))
                               _%$e117198%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass117165%_
                                     'slot:
                                     _%key117195%_)))))))
            (if (pair? _%$%rest117172117182%_)
                (let ((_%$%hd117177117207%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest117172117182%_)))
                      (_%$%tl117178117209%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest117172117182%_))))
                  (let ((_%key117212%_ _%$%hd117177117207%_))
                    (if (pair? _%$%tl117178117209%_)
                        (let ((_%$%hd117179117214%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl117178117209%_)))
                              (_%$%tl117180117216%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl117178117209%_))))
                          (let* ((_%val117219%_ _%$%hd117179117214%_)
                                 (_%rest117221%_ _%$%tl117180117216%_))
                            (_%$%K117176117204%_
                             _%rest117221%_
                             _%val117219%_
                             _%key117212%_)))
                        (_%$%else117174117190%_))))
                (_%$%else117174117190%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass117161%_ _%obj117162%_ _%args117163%_)
        (apply call-method
               _%klass117161%_
               'instance-init!
               _%obj117162%_
               _%args117163%_)))
    (define __constructor-init!
      (lambda (_%klass117130%_
               _%kons-id117131%_
               _%obj117132%_
               .
               _%args117133%_)
        (let* ((_%klass117136%_ _%klass117130%_)
               (_%kons-id117144%_ _%kons-id117131%_)
               (_%obj117152%_ _%obj117132%_))
          (___constructor-init!
           _%klass117136%_
           _%kons-id117144%_
           _%obj117152%_
           _%args117133%_)
          (void))))
    (define constructor-init!
      (lambda (_%klass117093%_
               _%kons-id117094%_
               _%obj117095%_
               .
               _%args117096%_)
        (if (class-type? _%klass117093%_)
            (let ((_%klass117100%_ _%klass117093%_))
              (if (symbol? _%kons-id117094%_)
                  (let ((_%kons-id117110%_ _%kons-id117094%_))
                    (if (object? _%obj117095%_)
                        (let ((_%obj117120%_ _%obj117095%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass117100%_
                                   _%kons-id117110%_
                                   _%obj117120%_
                                   _%args117096%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@944.63-944.66"
                           'contract:
                           'object?
                           'value:
                           _%obj117095%_)
                          (void))))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@944.43-944.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id117094%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@944.26-944.31"
               'contract:
               'class-type?
               'value:
               _%klass117093%_)
              (void)))))
    (define ___constructor-init!
      (lambda (_%klass117082%_ _%kons-id117083%_ _%obj117084%_ _%args117085%_)
        (let ((_%$e117087%_
               (__find-method
                _%klass117082%_
                _%obj117084%_
                _%kons-id117083%_)))
          (if _%$e117087%_
              ((lambda (_%kons117090%_)
                 (apply _%kons117090%_ _%obj117084%_ _%args117085%_)
                 _%obj117084%_)
               _%$e117087%_)
              (error '"missing constructor"
                     'class:
                     _%klass117082%_
                     'method:
                     _%kons-id117083%_)))))
    (define __struct-copy
      (lambda (_%struct117070%_)
        (let ((_%struct117073%_ _%struct117070%_))
          (declare (not safe))
          (##structure-copy _%struct117073%_))))
    (define struct-copy
      (lambda (_%struct117056%_)
        (if (object? _%struct117056%_)
            (let ((_%struct117060%_ _%struct117056%_))
              (__struct-copy _%struct117060%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@958.20-958.26"
               'contract:
               'object?
               'value:
               _%struct117056%_)
              (void)))))
    (define __struct->list
      (lambda (_%obj117037%_)
        (let* ((_%obj117040%_ _%obj117037%_)
               (_%len117049%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj117040%_))))
          (let _%recur117051%_ ((_%i117053%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i117053%_ _%len117049%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj117040%_
                         _%i117053%_
                         '#f
                         '#f))
                      (_%recur117051%_
                       (let () (declare (not safe)) (##fx+ _%i117053%_ '1))))
                '())))))
    (define struct->list
      (lambda (_%obj117023%_)
        (if (object? _%obj117023%_)
            (let ((_%obj117027%_ _%obj117023%_))
              (__struct->list _%obj117027%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@961.21-961.24"
               'contract:
               'object?
               'value:
               _%obj117023%_)
              (void)))))
    (define __class->list
      (lambda (_%obj116975%_)
        (let* ((_%obj116978%_ _%obj116975%_)
               (_%klass116987%_
                (let () (declare (not safe)) (##structure-type _%obj116978%_)))
               (_%slot-vector116989%_
                (&class-type-slot-vector _%klass116987%_)))
          (let _%loop116991%_ ((_%index116993%_
                                (let ((__tmp121037
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector116989%_))))
                                  (declare (not safe))
                                  (##fx- __tmp121037 '1)))
                               (_%plist116994%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index116993%_ '1))
                (cons _%klass116987%_ _%plist116994%_)
                (let ((_%slot116997%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector116989%_
                          _%index116993%_))))
                  (_%loop116991%_
                   (let () (declare (not safe)) (##fx- _%index116993%_ '1))
                   (cons* (let ((_%sym116999%_ _%slot116997%_))
                            (if (symbol? _%sym116999%_)
                                (let ((_%sym117004%_ _%sym116999%_))
                                  (__symbol->keyword _%sym117004%_))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   'gerbil/runtime/mop
                                   'contract:
                                   'symbol?
                                   'value:
                                   _%sym116999%_)
                                  (void))))
                          (unchecked-field-ref _%obj116978%_ _%index116993%_)
                          _%plist116994%_))))))))
    (define class->list
      (lambda (_%obj116961%_)
        (if (object? _%obj116961%_)
            (let ((_%obj116965%_ _%obj116961%_)) (__class->list _%obj116965%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@969.20-969.23"
               'contract:
               'object?
               'value:
               _%obj116961%_)
              (void)))))
    (define __call-method
      (lambda (_%obj116911%_ _%id116912%_ . _%args116913%_)
        (let* ((_%id116916%_ _%id116912%_)
               (_%$e116947%_
                (let* ((_%obj116925%_ _%obj116911%_)
                       (_%id116928%_ _%id116916%_))
                  (if (symbol? _%id116928%_)
                      (let ((_%id116933%_ _%id116928%_))
                        (__method-ref _%obj116925%_ _%id116933%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbol?
                         'value:
                         _%id116928%_)
                        (void))))))
          (if _%$e116947%_
              ((lambda (_%method116950%_)
                 (let ((_%method116952%_ _%method116950%_))
                   (apply _%method116952%_ _%obj116911%_ _%args116913%_)))
               _%$e116947%_)
              (error '"cannot find method"
                     'object:
                     _%obj116911%_
                     'method:
                     _%id116916%_)))))
    (define call-method
      (lambda (_%obj116895%_ _%id116896%_ . _%args116897%_)
        (if (symbol? _%id116896%_)
            (let ((_%id116901%_ _%id116896%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj116895%_
                       _%id116901%_
                       _%args116897%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@984.24-984.26"
               'contract:
               'symbol?
               'value:
               _%id116896%_)
              (void)))))
    (define __method-ref
      (lambda (_%obj116846%_ _%id116847%_)
        (let* ((_%id116850%_ _%id116847%_)
               (_%klass116859%_ (class-of _%obj116846%_))
               (_%obj116862%_ _%obj116846%_)
               (_%id116865%_ _%id116850%_))
          (if (class-type? _%klass116859%_)
              (let ((_%klass116870%_ _%klass116859%_))
                (if (symbol? _%id116865%_)
                    (let ((_%id116885%_ _%id116865%_))
                      (__find-method
                       _%klass116870%_
                       _%obj116862%_
                       _%id116885%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'symbol?
                       'value:
                       _%id116865%_)
                      (void))))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/mop
                 'contract:
                 'class-type?
                 'value:
                 _%klass116859%_)
                (void))))))
    (define method-ref
      (lambda (_%obj116831%_ _%id116832%_)
        (if (symbol? _%id116832%_)
            (let ((_%id116836%_ _%id116832%_))
              (__method-ref _%obj116831%_ _%id116836%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1011.23-1011.25"
               'contract:
               'symbol?
               'value:
               _%id116832%_)
              (void)))))
    (define checked-method-ref
      (lambda (_%obj116803%_ _%id116804%_)
        (let ((_%$e116828%_
               (let* ((_%obj116807%_ _%obj116803%_)
                      (_%id116810%_ _%id116804%_))
                 (if (symbol? _%id116810%_)
                     (let ((_%id116815%_ _%id116810%_))
                       (__method-ref _%obj116807%_ _%id116815%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id116810%_)
                       (void))))))
          (if _%$e116828%_
              _%$e116828%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj116803%_
                       'method:
                       _%id116804%_)
                (void))))))
    (define __bound-method-ref
      (lambda (_%obj116752%_ _%id116753%_)
        (let* ((_%id116756%_ _%id116753%_)
               (_%$e116787%_
                (let* ((_%obj116765%_ _%obj116752%_)
                       (_%id116768%_ _%id116756%_))
                  (if (symbol? _%id116768%_)
                      (let ((_%id116773%_ _%id116768%_))
                        (__method-ref _%obj116765%_ _%id116773%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbol?
                         'value:
                         _%id116768%_)
                        (void))))))
          (if _%$e116787%_
              ((lambda (_%method116790%_)
                 (let ((_%method116792%_ _%method116790%_))
                   (lambda _%args116800%_
                     (apply _%method116792%_ _%obj116752%_ _%args116800%_))))
               _%$e116787%_)
              '#f))))
    (define bound-method-ref
      (lambda (_%obj116737%_ _%id116738%_)
        (if (symbol? _%id116738%_)
            (let ((_%id116742%_ _%id116738%_))
              (__bound-method-ref _%obj116737%_ _%id116742%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1019.29-1019.31"
               'contract:
               'symbol?
               'value:
               _%id116738%_)
              (void)))))
    (define __checked-bound-method-ref
      (lambda (_%obj116720%_ _%id116721%_)
        (let* ((_%id116724%_ _%id116721%_)
               (_%method116733%_
                (checked-method-ref _%obj116720%_ _%id116724%_)))
          (lambda _%args116735%_
            (apply _%method116733%_ _%obj116720%_ _%args116735%_)))))
    (define checked-bound-method-ref
      (lambda (_%obj116705%_ _%id116706%_)
        (if (symbol? _%id116706%_)
            (let ((_%id116710%_ _%id116706%_))
              (__checked-bound-method-ref _%obj116705%_ _%id116710%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1028.37-1028.39"
               'contract:
               'symbol?
               'value:
               _%id116706%_)
              (void)))))
    (define __find-method
      (lambda (_%klass116574%_ _%obj116575%_ _%id116576%_)
        (let* ((_%klass116579%_ _%klass116574%_) (_%id116587%_ _%id116576%_))
          (if (let ((_%klass116596%_ _%klass116579%_))
                (if (class-type? _%klass116596%_)
                    (let ((_%klass116601%_ _%klass116596%_))
                      (__class-type-sealed? _%klass116601%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass116596%_)
                      (void))))
              (let ((_%tab116631%_
                     (let ((_%klass116615%_ _%klass116579%_))
                       (if (class-type? _%klass116615%_)
                           (let ((_%klass116620%_ _%klass116615%_))
                             (__specialize-class _%klass116620%_))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass116615%_)
                             (void))))))
                (symbolic-table-ref _%tab116631%_ _%id116587%_ '#f))
              (let ((_%$e116666%_
                     (let* ((_%klass116633%_ _%klass116579%_)
                            (_%obj116636%_ _%obj116575%_)
                            (_%id116639%_ _%id116587%_))
                       (if (class-type? _%klass116633%_)
                           (let ((_%klass116644%_ _%klass116633%_))
                             (if (symbol? _%id116639%_)
                                 (let ((_%id116656%_ _%id116639%_))
                                   (__direct-method-ref
                                    _%klass116644%_
                                    _%obj116636%_
                                    _%id116656%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbol?
                                    'value:
                                    _%id116639%_)
                                   (void))))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass116633%_)
                             (void))))))
                (if _%$e116666%_
                    _%$e116666%_
                    (let* ((_%klass116670%_ _%klass116579%_)
                           (_%obj116673%_ _%obj116575%_)
                           (_%id116676%_ _%id116587%_))
                      (if (class-type? _%klass116670%_)
                          (let ((_%klass116681%_ _%klass116670%_))
                            (if (symbol? _%id116676%_)
                                (let ((_%id116695%_ _%id116676%_))
                                  (__mixin-method-ref
                                   _%klass116681%_
                                   _%obj116673%_
                                   _%id116695%_))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   'gerbil/runtime/mop
                                   'contract:
                                   'symbol?
                                   'value:
                                   _%id116676%_)
                                  (void))))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/mop
                             'contract:
                             'class-type?
                             'value:
                             _%klass116670%_)
                            (void))))))))))
    (define find-method
      (lambda (_%klass116548%_ _%obj116549%_ _%id116550%_)
        (if (class-type? _%klass116548%_)
            (let ((_%klass116554%_ _%klass116548%_))
              (if (symbol? _%id116550%_)
                  (let ((_%id116564%_ _%id116550%_))
                    (__find-method _%klass116554%_ _%obj116549%_ _%id116564%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1033.41-1033.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id116550%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1033.20-1033.25"
               'contract:
               'class-type?
               'value:
               _%klass116548%_)
              (void)))))
    (define __mixin-find-method
      (lambda (_%mixins116493%_ _%obj116494%_ _%id116495%_)
        (let ((_%id116498%_ _%id116495%_))
          (ormap (lambda (_%$%g116506116508%_)
                   (let* ((_%klass116511%_ _%$%g116506116508%_)
                          (_%obj116514%_ _%obj116494%_)
                          (_%id116517%_ _%id116498%_))
                     (if (class-type? _%klass116511%_)
                         (let ((_%klass116522%_ _%klass116511%_))
                           (if (symbol? _%id116517%_)
                               (let ((_%id116538%_ _%id116517%_))
                                 (__direct-method-ref
                                  _%klass116522%_
                                  _%obj116514%_
                                  _%id116538%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  'symbol?
                                  'value:
                                  _%id116517%_)
                                 (void))))
                         (begin
                           (raise-contract-violation-error
                            '"contract violation"
                            'context:
                            'gerbil/runtime/mop
                            'contract:
                            'class-type?
                            'value:
                            _%klass116511%_)
                           (void)))))
                 _%mixins116493%_))))
    (define mixin-find-method
      (lambda (_%mixins116477%_ _%obj116478%_ _%id116479%_)
        (if (symbol? _%id116479%_)
            (let ((_%id116483%_ _%id116479%_))
              (__mixin-find-method
               _%mixins116477%_
               _%obj116478%_
               _%id116483%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1042.37-1042.39"
               'contract:
               'symbol?
               'value:
               _%id116479%_)
              (void)))))
    (define __direct-method-ref
      (lambda (_%klass116370%_ _%obj116371%_ _%id116372%_)
        (let* ((_%klass116375%_ _%klass116370%_) (_%id116383%_ _%id116372%_))
          (letrec ((_%metaclass-resolve-method116392%_
                    (lambda ()
                      (let* ((_%obj116453%_ _%klass116375%_)
                             (_%id116456%_ 'direct-method-ref)
                             (_%args116459%_
                              (list _%obj116371%_ _%id116383%_)))
                        (if (symbol? _%id116456%_)
                            (let ((_%id116464%_ _%id116456%_))
                              (declare (not safe))
                              (##apply __call-method
                                       _%obj116453%_
                                       _%id116464%_
                                       _%args116459%_))
                            (begin
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               'gerbil/runtime/mop
                               'contract:
                               'symbol?
                               'value:
                               _%id116456%_)
                              (void))))))
                   (_%metaclass-resolve-method!116393%_
                    (lambda ()
                      (let ((_%method116450%_
                             (_%metaclass-resolve-method116392%_)))
                        (symbolic-table-set!
                         (&class-type-methods _%klass116375%_)
                         _%id116383%_
                         (if _%method116450%_ 'resolved 'unknown))
                        _%method116450%_))))
            (let ((_%$e116395%_ (&class-type-methods _%klass116375%_)))
              (if _%$e116395%_
                  ((lambda (_%ht116398%_)
                     (let ((_%method116400%_
                            (symbolic-table-ref
                             _%ht116398%_
                             _%id116383%_
                             '#f)))
                       (if (procedure? _%method116400%_)
                           _%method116400%_
                           (if (let ((_%klass116403%_ _%klass116375%_))
                                 (if (class-type? _%klass116403%_)
                                     (let ((_%klass116408%_ _%klass116403%_))
                                       (__class-type-metaclass?
                                        _%klass116408%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/mop
                                        'contract:
                                        'class-type?
                                        'value:
                                        _%klass116403%_)
                                       (void))))
                               (let ((_%$e116426%_ _%method116400%_))
                                 (if (eq? 'resolved _%$e116426%_)
                                     (_%metaclass-resolve-method116392%_)
                                     (if (eq? 'unknown _%$e116426%_)
                                         '#f
                                         (_%metaclass-resolve-method!116393%_))))
                               '#f))))
                   _%$e116395%_)
                  (if (let ((_%klass116430%_ _%klass116375%_))
                        (if (class-type? _%klass116430%_)
                            (let ((_%klass116435%_ _%klass116430%_))
                              (__class-type-metaclass? _%klass116435%_))
                            (begin
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               'gerbil/runtime/mop
                               'contract:
                               'class-type?
                               'value:
                               _%klass116430%_)
                              (void))))
                      (let ((_%tab116446%_ (make-symbolic-table '#f '0)))
                        (&class-type-methods-set!
                         _%klass116375%_
                         _%tab116446%_)
                        (_%metaclass-resolve-method!116393%_))
                      '#f)))))))
    (define direct-method-ref
      (lambda (_%klass116344%_ _%obj116345%_ _%id116346%_)
        (if (class-type? _%klass116344%_)
            (let ((_%klass116350%_ _%klass116344%_))
              (if (symbol? _%id116346%_)
                  (let ((_%id116360%_ _%id116346%_))
                    (__direct-method-ref
                     _%klass116350%_
                     _%obj116345%_
                     _%id116360%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1045.47-1045.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id116346%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1045.26-1045.31"
               'contract:
               'class-type?
               'value:
               _%klass116344%_)
              (void)))))
    (define __mixin-method-ref
      (lambda (_%klass116296%_ _%obj116297%_ _%id116298%_)
        (let* ((_%klass116301%_ _%klass116296%_)
               (_%id116309%_ _%id116298%_)
               (_%mixins116318%_ (class-type-precedence-list _%klass116301%_))
               (_%obj116321%_ _%obj116297%_)
               (_%id116324%_ _%id116309%_))
          (if (symbol? _%id116324%_)
              (let ((_%id116329%_ _%id116324%_))
                (__mixin-find-method
                 _%mixins116318%_
                 _%obj116321%_
                 _%id116329%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/mop
                 'contract:
                 'symbol?
                 'value:
                 _%id116324%_)
                (void))))))
    (define mixin-method-ref
      (lambda (_%klass116270%_ _%obj116271%_ _%id116272%_)
        (if (class-type? _%klass116270%_)
            (let ((_%klass116276%_ _%klass116270%_))
              (if (symbol? _%id116272%_)
                  (let ((_%id116286%_ _%id116272%_))
                    (__mixin-method-ref
                     _%klass116276%_
                     _%obj116271%_
                     _%id116286%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1075.46-1075.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id116272%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1075.25-1075.30"
               'contract:
               'class-type?
               'value:
               _%klass116270%_)
              (void)))))
    (define __bind-method!
      (let ((_%$%opt-lambda116149116256%_
             (lambda (_%klass116151%_
                      _%id116152%_
                      _%proc116153%_
                      _%rebind?116154%_)
               (let* ((_%id116157%_ _%id116152%_)
                      (_%proc116165%_ _%proc116153%_))
                 (letrec ((_%flush-caches!116174%_
                           (lambda (_%klass116228%_)
                             (if (&class-type-specializer _%klass116228%_)
                                 (begin
                                   (&class-type-specializer-set!
                                    _%klass116228%_
                                    '#f)
                                   (if (let ((_%klass116230%_ _%klass116228%_))
                                         (if (class-type? _%klass116230%_)
                                             (let ((_%klass116235%_
                                                    _%klass116230%_))
                                               (__class-type-sealed?
                                                _%klass116235%_))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/mop
                                                'contract:
                                                'class-type?
                                                'value:
                                                _%klass116230%_)
                                               (void))))
                                       (let ((__tmp121038
                                              (let ((__tmp121040
                                                     (let ()
                                                       (declare (not safe))
                                                       (##fxnot class-type-flag-sealed)))
                                                    (__tmp121039
                                                     (let ()
                                                       (declare (not safe))
                                                       (##type-flags
                                                        _%klass116228%_))))
                                                (declare (not safe))
                                                (##fxand __tmp121040
                                                         __tmp121039))))
                                         (declare (not safe))
                                         (##unchecked-structure-set!
                                          _%klass116228%_
                                          __tmp121038
                                          '3
                                          class::t
                                          bind-method!))
                                       '#!void))
                                 '#!void)
                             (if (and _%rebind?116154%_
                                      (&class-type-interface _%klass116228%_))
                                 (&class-type-interface-set!
                                  _%klass116228%_
                                  '#f)
                                 '#!void)
                             (let ((_%$e116246%_
                                    (&class-type-properties _%klass116228%_)))
                               (if _%$e116246%_
                                   ((lambda (_%props116249%_)
                                      (let ((_%$e116251%_
                                             (agetq 'subclasses:
                                                    _%props116249%_)))
                                        (if _%$e116251%_
                                            ((lambda (_%subclasses116254%_)
                                               (for-each
                                                _%flush-caches!116174%_
                                                _%subclasses116254%_))
                                             _%$e116251%_)
                                            '#!void)))
                                    _%$e116246%_)
                                   '#!void))))
                          (_%bind!116175%_
                           (lambda (_%ht116226%_)
                             (if (and (not _%rebind?116154%_)
                                      (symbolic-table-ref
                                       _%ht116226%_
                                       _%id116157%_
                                       '#f))
                                 (error '"method already bound"
                                        'class:
                                        _%klass116151%_
                                        'method:
                                        _%id116157%_)
                                 (begin
                                   (symbolic-table-set!
                                    _%ht116226%_
                                    _%id116157%_
                                    _%proc116165%_)
                                   (_%flush-caches!116174%_ _%klass116151%_)
                                   (void))))))
                   (if (class-type? _%klass116151%_)
                       (let ((_%ht116178%_
                              (&class-type-methods _%klass116151%_)))
                         (if _%ht116178%_
                             (_%bind!116175%_ _%ht116178%_)
                             (let ((_%ht116180%_ (make-symbolic-table '#f '0)))
                               (&class-type-methods-set!
                                _%klass116151%_
                                _%ht116180%_)
                               (_%bind!116175%_ _%ht116180%_))))
                       (if (let ()
                             (declare (not safe))
                             (##type? _%klass116151%_))
                           (let* ((_%klass116183%_
                                   (__shadow-class _%klass116151%_))
                                  (_%id116186%_ _%id116157%_)
                                  (_%proc116189%_ _%proc116165%_)
                                  (_%rebind?116192%_ _%rebind?116154%_))
                             (if (symbol? _%id116186%_)
                                 (let ((_%id116197%_ _%id116186%_))
                                   (if (procedure? _%proc116189%_)
                                       (let ((_%proc116215%_ _%proc116189%_))
                                         (__bind-method!
                                          _%klass116183%_
                                          _%id116197%_
                                          _%proc116215%_
                                          _%rebind?116192%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          'procedure?
                                          'value:
                                          _%proc116189%_)
                                         (void))))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbol?
                                    'value:
                                    _%id116186%_)
                                   (void))))
                           (error '"bad class; expected class or builtin type"
                                  _%klass116151%_))))))))
        (lambda _g121041_
          (let ((_g121042_ (let () (declare (not safe)) (##length _g121041_))))
            (cond ((let () (declare (not safe)) (##fx= _g121042_ 3))
                   (apply (lambda (_%klass116259%_ _%id116260%_ _%proc116261%_)
                            (let ((_%rebind?116263%_ '#f))
                              (_%$%opt-lambda116149116256%_
                               _%klass116259%_
                               _%id116260%_
                               _%proc116261%_
                               _%rebind?116263%_)))
                          _g121041_))
                  ((let () (declare (not safe)) (##fx= _g121042_ 4))
                   (apply _%$%opt-lambda116149116256%_ _g121041_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __bind-method!
                    _g121041_)))))))
    (define bind-method!
      (let ((_%$%opt-lambda116107116136%_
             (lambda (_%klass116109%_
                      _%id116110%_
                      _%proc116111%_
                      _%rebind?116112%_)
               (if (symbol? _%id116110%_)
                   (let ((_%id116116%_ _%id116110%_))
                     (if (procedure? _%proc116111%_)
                         (let ((_%proc116126%_ _%proc116111%_))
                           (__bind-method!
                            _%klass116109%_
                            _%id116116%_
                            _%proc116126%_
                            _%rebind?116112%_))
                         (begin
                           (raise-contract-violation-error
                            '"contract violation"
                            'context:
                            '"\"gerbil/runtime/mop.ss\"@1078.42-1078.46"
                            'contract:
                            'procedure?
                            'value:
                            _%proc116111%_)
                           (void))))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      '"\"gerbil/runtime/mop.ss\"@1078.27-1078.29"
                      'contract:
                      'symbol?
                      'value:
                      _%id116110%_)
                     (void))))))
        (lambda _g121043_
          (let ((_g121044_ (let () (declare (not safe)) (##length _g121043_))))
            (cond ((let () (declare (not safe)) (##fx= _g121044_ 3))
                   (apply (lambda (_%klass116139%_ _%id116140%_ _%proc116141%_)
                            (let ((_%rebind?116143%_ '#f))
                              (_%$%opt-lambda116107116136%_
                               _%klass116139%_
                               _%id116140%_
                               _%proc116141%_
                               _%rebind?116143%_)))
                          _g121043_))
                  ((let () (declare (not safe)) (##fx= _g121044_ 4))
                   (apply _%$%opt-lambda116107116136%_ _g121043_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    bind-method!
                    _g121043_)))))))
    (define make-method-specializer-table
      (let ((_%$%opt-lambda116088116093%_
             (lambda (_%size-hint116090%_ _%seed116091%_)
               (make-raw-table
                _%size-hint116090%_
                procedure-hash
                eq?
                _%seed116091%_))))
        (lambda _g121045_
          (let ((_g121046_ (let () (declare (not safe)) (##length _g121045_))))
            (cond ((let () (declare (not safe)) (##fx= _g121046_ 0))
                   (apply (lambda ()
                            (let* ((_%size-hint116097%_ '#f)
                                   (_%seed116099%_ '0))
                              (_%$%opt-lambda116088116093%_
                               _%size-hint116097%_
                               _%seed116099%_)))
                          _g121045_))
                  ((let () (declare (not safe)) (##fx= _g121046_ 1))
                   (apply (lambda (_%size-hint116101%_)
                            (let ((_%seed116103%_ '0))
                              (_%$%opt-lambda116088116093%_
                               _%size-hint116101%_
                               _%seed116103%_)))
                          _g121045_))
                  ((let () (declare (not safe)) (##fx= _g121046_ 2))
                   (apply _%$%opt-lambda116088116093%_ _g121045_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    make-method-specializer-table
                    _g121045_)))))))
    (define make-method-specializer-table/lock
      (let ((_%$%opt-lambda116068116074%_
             (lambda (_%size-hint116070%_ _%seed116072%_)
               (make-raw-table/lock
                _%size-hint116070%_
                procedure-hash
                eq?
                _%seed116072%_))))
        (lambda _g121047_
          (let ((_g121048_ (let () (declare (not safe)) (##length _g121047_))))
            (cond ((let () (declare (not safe)) (##fx= _g121048_ 0))
                   (apply (lambda ()
                            (let* ((_%size-hint116078%_ '#f)
                                   (_%seed116080%_ '0))
                              (_%$%opt-lambda116068116074%_
                               _%size-hint116078%_
                               _%seed116080%_)))
                          _g121047_))
                  ((let () (declare (not safe)) (##fx= _g121048_ 1))
                   (apply (lambda (_%size-hint116082%_)
                            (let ((_%seed116084%_ '0))
                              (_%$%opt-lambda116068116074%_
                               _%size-hint116082%_
                               _%seed116084%_)))
                          _g121047_))
                  ((let () (declare (not safe)) (##fx= _g121048_ 2))
                   (apply _%$%opt-lambda116068116074%_ _g121047_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    make-method-specializer-table/lock
                    _g121047_)))))))
    (define method-specializer-table-ref
      (lambda (_%tab116023%_ _%key116024%_ _%default116025%_)
        (let ((_%table116027%_ (&raw-table-table _%tab116023%_))
              (_%seed116028%_ (&raw-table-seed _%tab116023%_)))
          (let* ((_%h116030%_
                  (fxxor (procedure-hash _%key116024%_) _%seed116028%_))
                 (_%size116033%_ (vector-length _%table116027%_))
                 (_%entries116036%_ (fxquotient _%size116033%_ '2))
                 (_%start116039%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h116030%_ _%entries116036%_)
                   '1)))
            (let _%loop116043%_ ((_%probe116046%_ _%start116039%_)
                                 (_%i116048%_ '1)
                                 (_%deleted116050%_ '#f))
              (let ((_%k116053%_ (vector-ref _%table116027%_ _%probe116046%_)))
                (if (eq? _%k116053%_ (macro-unused-obj))
                    _%default116025%_
                    (if (eq? _%k116053%_ (macro-deleted-obj))
                        (_%loop116043%_
                         (let ((_%next-probe116058%_
                                (fx+ _%start116039%_
                                     _%i116048%_
                                     (fx* _%i116048%_ _%i116048%_))))
                           (fxmodulo _%next-probe116058%_ _%size116033%_))
                         (fx+ _%i116048%_ '1)
                         (let ((_%$e116061%_ _%deleted116050%_))
                           (if _%$e116061%_ _%$e116061%_ _%probe116046%_)))
                        (if (eq? _%key116024%_ _%k116053%_)
                            (vector-ref
                             _%table116027%_
                             (fx+ _%probe116046%_ '1))
                            (_%loop116043%_
                             (let ((_%next-probe116066%_
                                    (fx+ _%start116039%_
                                         _%i116048%_
                                         (fx* _%i116048%_ _%i116048%_))))
                               (fxmodulo _%next-probe116066%_ _%size116033%_))
                             (fx+ _%i116048%_ '1)
                             _%deleted116050%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab115994%_ _%key115995%_ _%default115996%_)
        (let ((_%lock115998%_ (&raw-table-lock _%tab115994%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again116003%_ ((_%spin116006%_ '0))
              (if (let ((__tmp121049
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock115998%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp121049 '0))
                  (let ((__tmp121050 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock115998%_ '1 __tmp121050))
                  (if (let () (declare (not safe)) (##fx< _%spin116006%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again116003%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin116006%_ '1))))
                      (let ((_%owner116012%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock115998%_ '1))))
                        (if (eq? _%owner116012%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (not (macro-thread-end-condvar
                                      _%owner116012%_))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again116003%_ '0)))))))))
          (let ((_%$r116018%_
                 (method-specializer-table-ref
                  _%tab115994%_
                  _%key115995%_
                  _%default115996%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock115998%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock115998%_ '0 '0 '1))))
            _%$r116018%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab115946%_ _%key115947%_ _%value115948%_)
        (let ((_%table115950%_ (&raw-table-table _%tab115946%_))
              (_%seed115951%_ (&raw-table-seed _%tab115946%_)))
          (let* ((_%h115953%_
                  (fxxor (procedure-hash _%key115947%_) _%seed115951%_))
                 (_%size115956%_ (vector-length _%table115950%_))
                 (_%entries115959%_ (fxquotient _%size115956%_ '2))
                 (_%start115962%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h115953%_ _%entries115959%_)
                   '1)))
            (let _%loop115966%_ ((_%probe115969%_ _%start115962%_)
                                 (_%i115971%_ '1)
                                 (_%deleted115973%_ '#f))
              (let ((_%k115976%_ (vector-ref _%table115950%_ _%probe115969%_)))
                (if (eq? _%k115976%_ (macro-unused-obj))
                    (if _%deleted115973%_
                        (begin
                          (vector-set!
                           _%table115950%_
                           _%deleted115973%_
                           _%key115947%_)
                          (vector-set!
                           _%table115950%_
                           (fx+ _%deleted115973%_ '1)
                           _%value115948%_)
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab115946%_
                              (fx+ (&raw-table-count _%tab115946%_) '1)))))
                        (begin
                          (vector-set!
                           _%table115950%_
                           _%probe115969%_
                           _%key115947%_)
                          (vector-set!
                           _%table115950%_
                           (fx+ _%probe115969%_ '1)
                           _%value115948%_)
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab115946%_
                              (fx- (&raw-table-free _%tab115946%_) '1))
                             (&raw-table-count-set!
                              _%tab115946%_
                              (fx+ (&raw-table-count _%tab115946%_) '1))))))
                    (if (eq? _%k115976%_ (macro-deleted-obj))
                        (_%loop115966%_
                         (let ((_%next-probe115983%_
                                (fx+ _%start115962%_
                                     _%i115971%_
                                     (fx* _%i115971%_ _%i115971%_))))
                           (fxmodulo _%next-probe115983%_ _%size115956%_))
                         (fx+ _%i115971%_ '1)
                         (let ((_%$e115986%_ _%deleted115973%_))
                           (if _%$e115986%_ _%$e115986%_ _%probe115969%_)))
                        (if (eq? _%key115947%_ _%k115976%_)
                            (let ()
                              (vector-set!
                               _%table115950%_
                               _%probe115969%_
                               _%key115947%_)
                              (vector-set!
                               _%table115950%_
                               (fx+ _%probe115969%_ '1)
                               _%value115948%_))
                            (_%loop115966%_
                             (let ((_%next-probe115991%_
                                    (fx+ _%start115962%_
                                         _%i115971%_
                                         (fx* _%i115971%_ _%i115971%_))))
                               (fxmodulo _%next-probe115991%_ _%size115956%_))
                             (fx+ _%i115971%_ '1)
                             _%deleted115973%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab115942%_ _%key115943%_ _%value115944%_)
        (if (fx< (&raw-table-free _%tab115942%_)
                 (fxquotient
                  (vector-length (&raw-table-table _%tab115942%_))
                  '4))
            (__raw-table-rehash! _%tab115942%_)
            '#!void)
        (__method-specializer-table-set!
         _%tab115942%_
         _%key115943%_
         _%value115944%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab115912%_ _%key115913%_ _%value115914%_)
        (let ((_%lock115917%_ (&raw-table-lock _%tab115912%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115922%_ ((_%spin115925%_ '0))
              (if (let ((__tmp121051
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock115917%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp121051 '0))
                  (let ((__tmp121052 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock115917%_ '1 __tmp121052))
                  (if (let () (declare (not safe)) (##fx< _%spin115925%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again115922%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin115925%_ '1))))
                      (let ((_%owner115931%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock115917%_ '1))))
                        (if (eq? _%owner115931%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (not (macro-thread-end-condvar
                                      _%owner115931%_))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again115922%_ '0)))))))))
          (let ((_%$r115937%_
                 (method-specializer-table-set!
                  _%tab115912%_
                  _%key115913%_
                  _%value115914%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock115917%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock115917%_ '0 '0 '1))))
            _%$r115937%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab115863%_
               _%key115864%_
               _%method-specializer-table-update!115865%_
               _%default115866%_)
        (let ((_%table115868%_ (&raw-table-table _%tab115863%_))
              (_%seed115869%_ (&raw-table-seed _%tab115863%_)))
          (let* ((_%h115871%_
                  (fxxor (procedure-hash _%key115864%_) _%seed115869%_))
                 (_%size115874%_ (vector-length _%table115868%_))
                 (_%entries115877%_ (fxquotient _%size115874%_ '2))
                 (_%start115880%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h115871%_ _%entries115877%_)
                   '1)))
            (let _%loop115884%_ ((_%probe115887%_ _%start115880%_)
                                 (_%i115889%_ '1)
                                 (_%deleted115891%_ '#f))
              (let ((_%k115894%_ (vector-ref _%table115868%_ _%probe115887%_)))
                (if (eq? _%k115894%_ (macro-unused-obj))
                    (if _%deleted115891%_
                        (begin
                          (vector-set!
                           _%table115868%_
                           _%deleted115891%_
                           _%key115864%_)
                          (vector-set!
                           _%table115868%_
                           (fx+ _%deleted115891%_ '1)
                           (_%method-specializer-table-update!115865%_
                            _%default115866%_))
                          ((lambda ()
                             (&raw-table-count-set!
                              _%tab115863%_
                              (fx+ (&raw-table-count _%tab115863%_) '1)))))
                        (begin
                          (vector-set!
                           _%table115868%_
                           _%probe115887%_
                           _%key115864%_)
                          (vector-set!
                           _%table115868%_
                           (fx+ _%probe115887%_ '1)
                           (_%method-specializer-table-update!115865%_
                            _%default115866%_))
                          ((lambda ()
                             (&raw-table-free-set!
                              _%tab115863%_
                              (fx- (&raw-table-free _%tab115863%_) '1))
                             (&raw-table-count-set!
                              _%tab115863%_
                              (fx+ (&raw-table-count _%tab115863%_) '1))))))
                    (if (eq? _%k115894%_ (macro-deleted-obj))
                        (_%loop115884%_
                         (let ((_%next-probe115901%_
                                (fx+ _%start115880%_
                                     _%i115889%_
                                     (fx* _%i115889%_ _%i115889%_))))
                           (fxmodulo _%next-probe115901%_ _%size115874%_))
                         (fx+ _%i115889%_ '1)
                         (let ((_%$e115904%_ _%deleted115891%_))
                           (if _%$e115904%_ _%$e115904%_ _%probe115887%_)))
                        (if (eq? _%key115864%_ _%k115894%_)
                            (let ()
                              (vector-set!
                               _%table115868%_
                               _%probe115887%_
                               _%key115864%_)
                              (vector-set!
                               _%table115868%_
                               (fx+ _%probe115887%_ '1)
                               (_%method-specializer-table-update!115865%_
                                (vector-ref
                                 _%table115868%_
                                 (fx+ _%probe115887%_ '1)))))
                            (_%loop115884%_
                             (let ((_%next-probe115909%_
                                    (fx+ _%start115880%_
                                         _%i115889%_
                                         (fx* _%i115889%_ _%i115889%_))))
                               (fxmodulo _%next-probe115909%_ _%size115874%_))
                             (fx+ _%i115889%_ '1)
                             _%deleted115891%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab115858%_
               _%key115859%_
               _%method-specializer-table-update!115860%_
               _%default115861%_)
        (if (fx< (&raw-table-free _%tab115858%_)
                 (fxquotient
                  (vector-length (&raw-table-table _%tab115858%_))
                  '4))
            (__raw-table-rehash! _%tab115858%_)
            '#!void)
        (__method-specializer-table-update!
         _%tab115858%_
         _%key115859%_
         _%method-specializer-table-update!115860%_
         _%default115861%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab115827%_
               _%key115828%_
               _%method-specializer-table-update!115829%_
               _%default115830%_)
        (let ((_%lock115833%_ (&raw-table-lock _%tab115827%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115838%_ ((_%spin115841%_ '0))
              (if (let ((__tmp121053
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock115833%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp121053 '0))
                  (let ((__tmp121054 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock115833%_ '1 __tmp121054))
                  (if (let () (declare (not safe)) (##fx< _%spin115841%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again115838%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin115841%_ '1))))
                      (let ((_%owner115847%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock115833%_ '1))))
                        (if (eq? _%owner115847%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (not (macro-thread-end-condvar
                                      _%owner115847%_))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again115838%_ '0)))))))))
          (let ((_%$r115853%_
                 (_%method-specializer-table-update!115829%_
                  _%tab115827%_
                  _%key115828%_
                  _%method-specializer-table-update!115829%_
                  _%default115830%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock115833%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock115833%_ '0 '0 '1))))
            _%$r115853%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab115784%_ _%key115785%_)
        (let ((_%table115787%_ (&raw-table-table _%tab115784%_))
              (_%seed115789%_ (&raw-table-seed _%tab115784%_)))
          (let* ((_%h115792%_
                  (fxxor (procedure-hash _%key115785%_) _%seed115789%_))
                 (_%size115795%_ (vector-length _%table115787%_))
                 (_%entries115798%_ (fxquotient _%size115795%_ '2))
                 (_%start115801%_
                  (fxarithmetic-shift-left
                   (fxmodulo _%h115792%_ _%entries115798%_)
                   '1)))
            (let _%loop115805%_ ((_%probe115808%_ _%start115801%_)
                                 (_%i115810%_ '1))
              (let ((_%k115813%_ (vector-ref _%table115787%_ _%probe115808%_)))
                (if (eq? _%k115813%_ (macro-unused-obj))
                    (void)
                    (if (eq? _%k115813%_ (macro-deleted-obj))
                        (_%loop115805%_
                         (let ((_%next-probe115818%_
                                (fx+ _%start115801%_
                                     _%i115810%_
                                     (fx* _%i115810%_ _%i115810%_))))
                           (fxmodulo _%next-probe115818%_ _%size115795%_))
                         (fx+ _%i115810%_ '1))
                        (if (eq? _%key115785%_ _%k115813%_)
                            (let ()
                              (vector-set!
                               _%table115787%_
                               _%probe115808%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table115787%_
                               (fx+ _%probe115808%_ '1)
                               (macro-absent-obj))
                              ((lambda ()
                                 (&raw-table-count-set!
                                  _%tab115784%_
                                  (fx- (&raw-table-count _%tab115784%_) '1)))))
                            (_%loop115805%_
                             (let ((_%next-probe115824%_
                                    (fx+ _%start115801%_
                                         _%i115810%_
                                         (fx* _%i115810%_ _%i115810%_))))
                               (fxmodulo _%next-probe115824%_ _%size115795%_))
                             (fx+ _%i115810%_ '1)))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab115754%_ _%key115756%_)
        (let ((_%lock115759%_ (&raw-table-lock _%tab115754%_)))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again115764%_ ((_%spin115767%_ '0))
              (if (let ((__tmp121055
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock115759%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp121055 '0))
                  (let ((__tmp121056 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock115759%_ '1 __tmp121056))
                  (if (let () (declare (not safe)) (##fx< _%spin115767%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again115764%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin115767%_ '1))))
                      (let ((_%owner115773%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock115759%_ '1))))
                        (if (eq? _%owner115773%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (not (macro-thread-end-condvar
                                      _%owner115773%_))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!))
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again115764%_ '0)))))))))
          (let ((_%$r115779%_
                 (method-specializer-table-delete!
                  _%tab115754%_
                  _%key115756%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock115759%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock115759%_ '0 '0 '1))))
            _%$r115779%_))))
    (define __method-specializers (make-method-specializer-table/lock '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc115751%_ _%specializer115752%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc115751%_
         _%specializer115752%_)))
    (define __lookup-method-specializer
      (lambda (_%proc115749%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc115749%_
         '#f)))
    (define __specialize-class
      (lambda (_%klass115731%_)
        (let* ((_%klass115734%_ _%klass115731%_)
               (_%$e115743%_ (&class-type-specializer _%klass115734%_)))
          (if _%$e115743%_
              _%$e115743%_
              (let ((_%method-table115747%_
                     (___specialize-class _%klass115734%_)))
                (&class-type-specializer-set!
                 _%klass115734%_
                 _%method-table115747%_)
                _%method-table115747%_)))))
    (define specialize-class
      (lambda (_%klass115717%_)
        (if (class-type? _%klass115717%_)
            (let ((_%klass115721%_ _%klass115717%_))
              (__specialize-class _%klass115721%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1152.25-1152.30"
               'contract:
               'class-type?
               'value:
               _%klass115717%_)
              (void)))))
    (define __specialize-method
      (lambda (_%klass115701%_
               _%method-table115702%_
               _%method115703%_
               _%proc115704%_)
        (let ((_%$e115706%_
               (symbolic-table-ref
                _%method-table115702%_
                _%method115703%_
                '#f)))
          (if _%$e115706%_
              _%$e115706%_
              (let ((_%$e115709%_
                     (__lookup-method-specializer _%proc115704%_)))
                (if _%$e115709%_
                    ((lambda (_%specialize115712%_)
                       (let ((_%specialized-proc115714%_
                              (_%specialize115712%_
                               _%klass115701%_
                               _%method-table115702%_)))
                         (symbolic-table-set!
                          _%method-table115702%_
                          _%method115703%_
                          _%specialized-proc115714%_)))
                     _%$e115709%_)
                    (symbolic-table-set!
                     _%method-table115702%_
                     _%method115703%_
                     _%proc115704%_)))))))
    (define ___specialize-class
      (lambda (_%klass115568%_)
        (if (not (class-type? _%klass115568%_))
            (if (let () (declare (not safe)) (##type? _%klass115568%_))
                (__specialize-class (__shadow-class _%klass115568%_))
                (error '"bad class; cannot specialize" _%klass115568%_))
            (if (let ((_%klass115571%_ _%klass115568%_))
                  (if (class-type? _%klass115571%_)
                      (let ((_%klass115576%_ _%klass115571%_))
                        (__class-type-metaclass? _%klass115576%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'class-type?
                         'value:
                         _%klass115571%_)
                        (void))))
                (let* ((_%obj115588%_ _%klass115568%_)
                       (_%id115591%_ 'specialize-class)
                       (_%args115594%_ '()))
                  (if (symbol? _%id115591%_)
                      (let ((_%id115599%_ _%id115591%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj115588%_
                                 _%id115599%_
                                 _%args115594%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbol?
                         'value:
                         _%id115591%_)
                        (void))))
                (if (let* ((_%pred115612%_ class-type-metaclass?)
                           (_%lst115615%_
                            (&class-type-precedence-list _%klass115568%_)))
                      (if (procedure? _%pred115612%_)
                          (let ((_%pred115620%_ _%pred115612%_))
                            (__find _%pred115620%_ _%lst115615%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/mop
                             'contract:
                             'procedure?
                             'value:
                             _%pred115612%_)
                            (void))))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass115568%_)
                    (let ((_%method-table115633%_
                           (make-symbolic-table '#f '0)))
                      (let _%loop115635%_ ((_%rest115637%_
                                            (let ((_%klass115684%_
                                                   _%klass115568%_))
                                              (if (class-type? _%klass115684%_)
                                                  (let ((_%klass115689%_
                                                         _%klass115684%_))
                                                    (__class-precedence-list
                                                     _%klass115689%_))
                                                  (begin
                                                    (raise-contract-violation-error
                                                     '"contract violation"
                                                     'context:
                                                     'gerbil/runtime/mop
                                                     'contract:
                                                     'class-type?
                                                     'value:
                                                     _%klass115684%_)
                                                    (void))))))
                        (let* ((_%$%rest115638115646%_ _%rest115637%_)
                               (_%$%E115641115650%_
                                (lambda ()
                                  (error '"No clause matching"
                                         _%$%rest115638115646%_
                                         '([xklass . rest])
                                         'else)
                                  (void)))
                               (_%$%else115640115654%_
                                (lambda () _%method-table115633%_))
                               (_%$%K115642115672%_
                                (lambda (_%rest115657%_ _%xklass115658%_)
                                  (let ((_%$%xmethod-table115659115661%_
                                         (&class-type-methods
                                          _%xklass115658%_)))
                                    (if _%$%xmethod-table115659115661%_
                                        (let ((_%xmethod-table115663%_
                                               _%$%xmethod-table115659115661%_))
                                          (raw-table-for-each
                                           _%xmethod-table115663%_
                                           (lambda (_%$%g115664115667%_
                                                    _%$%g115665115669%_)
                                             (__specialize-method
                                              _%klass115568%_
                                              _%method-table115633%_
                                              _%$%g115664115667%_
                                              _%$%g115665115669%_))))
                                        '#f))
                                  (_%loop115635%_ _%rest115657%_))))
                          (if (pair? _%$%rest115638115646%_)
                              (let ((_%$%hd115643115675%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest115638115646%_)))
                                    (_%$%tl115644115677%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest115638115646%_))))
                                (let* ((_%xklass115680%_ _%$%hd115643115675%_)
                                       (_%rest115682%_ _%$%tl115644115677%_))
                                  (_%$%K115642115672%_
                                   _%rest115682%_
                                   _%xklass115680%_)))
                              (_%$%else115640115654%_))))))))))
    (define __seal-class!
      (lambda (_%klass115431%_)
        (let ((_%klass115434%_ _%klass115431%_))
          (if (let ((_%klass115443%_ _%klass115434%_))
                (if (class-type? _%klass115443%_)
                    (let ((_%klass115448%_ _%klass115443%_))
                      (__class-type-sealed? _%klass115448%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass115443%_)
                      (void))))
              '#!void
              (begin
                (if (let ((_%klass115461%_ _%klass115434%_))
                      (if (class-type? _%klass115461%_)
                          (let ((_%klass115466%_ _%klass115461%_))
                            (__class-type-metaclass? _%klass115466%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             'gerbil/runtime/mop
                             'contract:
                             'class-type?
                             'value:
                             _%klass115461%_)
                            (void))))
                    (let ()
                      (let* ((_%obj115477%_ _%klass115434%_)
                             (_%id115480%_ 'seal-class!)
                             (_%args115483%_ '()))
                        (if (symbol? _%id115480%_)
                            (let ((_%id115488%_ _%id115480%_))
                              (declare (not safe))
                              (##apply __call-method
                                       _%obj115477%_
                                       _%id115488%_
                                       _%args115483%_))
                            (begin
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               'gerbil/runtime/mop
                               'contract:
                               'symbol?
                               'value:
                               _%id115480%_)
                              (void))))
                      (let ((_%klass115501%_ _%klass115434%_))
                        (if (class-type? _%klass115501%_)
                            (let ((_%klass115506%_ _%klass115501%_))
                              (__specialize-class _%klass115506%_))
                            (begin
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               'gerbil/runtime/mop
                               'contract:
                               'class-type?
                               'value:
                               _%klass115501%_)
                              (void)))))
                    (if (let* ((_%pred115516%_ class-type-metaclass?)
                               (_%lst115519%_
                                (&class-type-precedence-list _%klass115434%_)))
                          (if (procedure? _%pred115516%_)
                              (let ((_%pred115524%_ _%pred115516%_))
                                (__find _%pred115524%_ _%lst115519%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 'gerbil/runtime/mop
                                 'contract:
                                 'procedure?
                                 'value:
                                 _%pred115516%_)
                                (void))))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass115434%_)
                        (let ((_%klass115537%_ _%klass115434%_))
                          (if (class-type? _%klass115537%_)
                              (let ((_%klass115542%_ _%klass115537%_))
                                (__specialize-class _%klass115542%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 'gerbil/runtime/mop
                                 'contract:
                                 'class-type?
                                 'value:
                                 _%klass115537%_)
                                (void))))))
                (let ((_%klass115553%_ _%klass115434%_))
                  (if (class-type? _%klass115553%_)
                      (let ((_%klass115558%_ _%klass115553%_))
                        (__class-type-seal! _%klass115558%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'class-type?
                         'value:
                         _%klass115553%_)
                        (void)))))))))
    (define seal-class!
      (lambda (_%klass115417%_)
        (if (class-type? _%klass115417%_)
            (let ((_%klass115421%_ _%klass115417%_))
              (__seal-class! _%klass115421%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1198.20-1198.25"
               'contract:
               'class-type?
               'value:
               _%klass115417%_)
              (void)))))
    (define __next-method
      (lambda (_%subklass115305%_ _%obj115306%_ _%id115307%_)
        (let* ((_%subklass115310%_ _%subklass115305%_)
               (_%id115318%_ _%id115307%_))
          (letrec ((_%find-next-method115327%_
                    (lambda (_%klass115329%_)
                      (let _%lp115331%_ ((_%rest115333%_
                                          (let ((_%klass115402%_
                                                 _%klass115329%_))
                                            (if (class-type? _%klass115402%_)
                                                (let ((_%klass115407%_
                                                       _%klass115402%_))
                                                  (__class-precedence-list
                                                   _%klass115407%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/mop
                                                   'contract:
                                                   'class-type?
                                                   'value:
                                                   _%klass115402%_)
                                                  (void))))))
                        (let* ((_%$%rest115334115342%_ _%rest115333%_)
                               (_%$%E115337115346%_
                                (lambda ()
                                  (error '"No clause matching"
                                         _%$%rest115334115342%_
                                         '([klass . rest])
                                         'else)
                                  (void)))
                               (_%$%else115336115350%_ (lambda () '#f))
                               (_%$%K115338115390%_
                                (lambda (_%rest115353%_ _%klass115354%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass115310%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass115354%_)))
                                      (let* ((_%mixins115356%_ _%rest115353%_)
                                             (_%obj115359%_ _%obj115306%_)
                                             (_%id115362%_ _%id115318%_))
                                        (if (symbol? _%id115362%_)
                                            (let ((_%id115367%_ _%id115362%_))
                                              (__mixin-find-method
                                               _%mixins115356%_
                                               _%obj115359%_
                                               _%id115367%_))
                                            (begin
                                              (raise-contract-violation-error
                                               '"contract violation"
                                               'context:
                                               'gerbil/runtime/mop
                                               'contract:
                                               'symbol?
                                               'value:
                                               _%id115362%_)
                                              (void))))
                                      (_%lp115331%_ _%rest115353%_)))))
                          (if (pair? _%$%rest115334115342%_)
                              (let ((_%$%hd115339115393%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest115334115342%_)))
                                    (_%$%tl115340115395%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest115334115342%_))))
                                (let* ((_%klass115398%_ _%$%hd115339115393%_)
                                       (_%rest115400%_ _%$%tl115340115395%_))
                                  (_%$%K115338115390%_
                                   _%rest115400%_
                                   _%klass115398%_)))
                              (_%$%else115336115350%_)))))))
            (_%find-next-method115327%_ (class-of _%obj115306%_))))))
    (define next-method
      (lambda (_%subklass115279%_ _%obj115280%_ _%id115281%_)
        (if (class-type? _%subklass115279%_)
            (let ((_%subklass115285%_ _%subklass115279%_))
              (if (symbol? _%id115281%_)
                  (let ((_%id115295%_ _%id115281%_))
                    (__next-method
                     _%subklass115285%_
                     _%obj115280%_
                     _%id115295%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1220.44-1220.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id115281%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1220.20-1220.28"
               'contract:
               'class-type?
               'value:
               _%subklass115279%_)
              (void)))))
    (define __call-next-method
      (lambda (_%subklass115214%_ _%obj115215%_ _%id115216%_ . _%args115217%_)
        (let* ((_%subklass115220%_ _%subklass115214%_)
               (_%id115228%_ _%id115216%_)
               (_%$e115273%_
                (let* ((_%subklass115237%_ _%subklass115220%_)
                       (_%obj115240%_ _%obj115215%_)
                       (_%id115243%_ _%id115228%_))
                  (if (class-type? _%subklass115237%_)
                      (let ((_%subklass115248%_ _%subklass115237%_))
                        (if (symbol? _%id115243%_)
                            (let ((_%id115263%_ _%id115243%_))
                              (__next-method
                               _%subklass115248%_
                               _%obj115240%_
                               _%id115263%_))
                            (begin
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               'gerbil/runtime/mop
                               'contract:
                               'symbol?
                               'value:
                               _%id115243%_)
                              (void))))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'class-type?
                         'value:
                         _%subklass115237%_)
                        (void))))))
          (if _%$e115273%_
              ((lambda (_%methodf115276%_)
                 (apply _%methodf115276%_ _%obj115215%_ _%args115217%_))
               _%$e115273%_)
              (error '"cannot find next method"
                     'object:
                     _%obj115215%_
                     'method:
                     _%id115228%_)))))
    (define call-next-method
      (lambda (_%subklass115187%_ _%obj115188%_ _%id115189%_ . _%args115190%_)
        (if (class-type? _%subklass115187%_)
            (let ((_%subklass115194%_ _%subklass115187%_))
              (if (symbol? _%id115189%_)
                  (let ((_%id115204%_ _%id115189%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass115194%_
                             _%obj115188%_
                             _%id115204%_
                             _%args115190%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1231.49-1231.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id115189%_)
                    (void))))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1231.25-1231.33"
               'contract:
               'class-type?
               'value:
               _%subklass115187%_)
              (void)))))
    (define __shadow-classes (make-symbolic-table '#f '0))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class
      (let ((_%$%opt-lambda114964115177%_
             (lambda (_%type114966%_ _%properties114967%_)
               (letrec ((_%shadow-type-id114969%_
                         (lambda (_%type115175%_)
                           (make-symbol
                            (let ()
                              (declare (not safe))
                              (##type-name _%type115175%_))
                            '"::t")))
                        (_%shadow-type-name114970%_
                         (lambda (_%type115173%_)
                           (let ()
                             (declare (not safe))
                             (##type-name _%type115173%_))))
                        (_%make-shadow-class114971%_
                         (lambda (_%type115055%_ _%precedence-list115056%_)
                           (let* ((_%super115058%_
                                   (if (pair? _%precedence-list115056%_)
                                       (cons (car _%precedence-list115056%_)
                                             '())
                                       '()))
                                  (_%klass115170%_
                                   (let* ((_%id115060%_
                                           (_%shadow-type-id114969%_
                                            _%type115055%_))
                                          (_%name115063%_
                                           (_%shadow-type-name114970%_
                                            _%type115055%_))
                                          (_%direct-supers115066%_
                                           _%super115058%_)
                                          (_%direct-slots115069%_ '())
                                          (_%properties115095%_
                                           (cons (cons 'struct: '#t)
                                                 (cons (cons 'system: '#t)
                                                       (cons (cons 'system-type:
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%type115055%_)
                     (foldr cons
                            _%properties114967%_
                            (if (let ((_%type115072%_ _%type115055%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##type? _%type115072%_))
                                      (let ((_%type115077%_ _%type115072%_))
                                        (__type-extensible? _%type115077%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         '##type?
                                         'value:
                                         _%type115072%_)
                                        (void))))
                                '()
                                (cons (cons 'final: '#t) '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%constructor115098%_ '#f))
                                     (if (symbol? _%id115060%_)
                                         (let ((_%id115103%_ _%id115060%_))
                                           (if (symbol? _%name115063%_)
                                               (let ((_%name115114%_
                                                      _%name115063%_))
                                                 (if (list? _%direct-supers115066%_)
                                                     (let ((_%direct-supers115124%_
                                                            _%direct-supers115066%_))
                                                       (if (list? _%direct-slots115069%_)
                                                           (let ((_%direct-slots115134%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%direct-slots115069%_))
                     (if (list? _%properties115095%_)
                         (let ((_%properties115144%_ _%properties115095%_))
                           (if ((lambda (_%$obj115153%_)
                                  (or (not _%$obj115153%_)
                                      (symbol? _%$obj115153%_)))
                                _%constructor115098%_)
                               (let ((_%constructor115160%_
                                      _%constructor115098%_))
                                 (__make-class-type
                                  _%id115103%_
                                  _%name115114%_
                                  _%direct-supers115124%_
                                  _%direct-slots115134%_
                                  _%properties115144%_
                                  _%constructor115160%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  '(? (or not symbol?))
                                  'value:
                                  _%constructor115098%_)
                                 (void))))
                         (begin
                           (raise-contract-violation-error
                            '"contract violation"
                            'context:
                            'gerbil/runtime/mop
                            'contract:
                            'list?
                            'value:
                            _%properties115095%_)
                           (void))))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      'gerbil/runtime/mop
                      'contract:
                      'list?
                      'value:
                      _%direct-slots115069%_)
                     (void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (begin
                                                       (raise-contract-violation-error
                                                        '"contract violation"
                                                        'context:
                                                        'gerbil/runtime/mop
                                                        'contract:
                                                        'list?
                                                        'value:
                                                        _%direct-supers115066%_)
                                                       (void))))
                                               (begin
                                                 (raise-contract-violation-error
                                                  '"contract violation"
                                                  'context:
                                                  'gerbil/runtime/mop
                                                  'contract:
                                                  'symbol?
                                                  'value:
                                                  _%name115063%_)
                                                 (void))))
                                         (begin
                                           (raise-contract-violation-error
                                            '"contract violation"
                                            'context:
                                            'gerbil/runtime/mop
                                            'contract:
                                            'symbol?
                                            'value:
                                            _%id115060%_)
                                           (void))))))
                             (symbolic-table-set!
                              __shadow-classes
                              (let ()
                                (declare (not safe))
                                (##type-id _%type115055%_))
                              _%klass115170%_)
                             _%klass115170%_))))
                 (let ()
                   (declare (not interrupts-enabled))
                   (let _%again114975%_ ((_%spin114978%_ '0))
                     (if (let ((__tmp121057
                                (let ()
                                  (declare (not safe))
                                  (##vector-cas!
                                   __shadow-classes-lock
                                   '0
                                   '1
                                   '0))))
                           (declare (not safe))
                           (##fx= __tmp121057 '0))
                         (let ((__tmp121058 (current-thread)))
                           (declare (not safe))
                           (##vector-set!
                            __shadow-classes-lock
                            '1
                            __tmp121058))
                         (if (let ()
                               (declare (not safe))
                               (##fx< _%spin114978%_ '10))
                             (let ()
                               (let () (declare (not safe)) (##thread-yield!))
                               (_%again114975%_
                                (let ()
                                  (declare (not safe))
                                  (##fx+ _%spin114978%_ '1))))
                             (let ((_%owner114984%_
                                    (let ()
                                      (declare (not safe))
                                      (##vector-ref
                                       __shadow-classes-lock
                                       '1))))
                               (if (eq? _%owner114984%_ (macro-current-thread))
                                   (let ()
                                     (declare (not safe))
                                     (##thread-deadlock-action!))
                                   (if (not (macro-thread-end-condvar
                                             _%owner114984%_))
                                       (let ()
                                         (declare (not safe))
                                         (##thread-deadlock-action!))
                                       (let ()
                                         (let ()
                                           (declare (not safe))
                                           (##thread-yield!))
                                         (_%again114975%_ '0)))))))))
                 (let ((_%$e114990%_
                        (symbolic-table-ref
                         __shadow-classes
                         (let ()
                           (declare (not safe))
                           (##type-id _%type114966%_))
                         '#f)))
                   (if _%$e114990%_
                       ((lambda (_%klass114993%_)
                          (let ()
                            (declare (not interrupts-enabled))
                            (begin
                              (let ()
                                (declare (not safe))
                                (##vector-set! __shadow-classes-lock '1 '#f))
                              (let ()
                                (declare (not safe))
                                (##vector-cas!
                                 __shadow-classes-lock
                                 '0
                                 '0
                                 '1))))
                          _%klass114993%_)
                        _%$e114990%_)
                       (let _%loop114998%_ ((_%super115000%_
                                             (let ()
                                               (declare (not safe))
                                               (##type-super _%type114966%_)))
                                            (_%hierarchy115001%_ '()))
                         (if (not _%super115000%_)
                             (let _%loop115004%_ ((_%rest115006%_
                                                   _%hierarchy115001%_)
                                                  (_%precedence-list115007%_
                                                   '()))
                               (let* ((_%$%rest115008115016%_ _%rest115006%_)
                                      (_%$%E115011115020%_
                                       (lambda ()
                                         (error '"No clause matching"
                                                _%$%rest115008115016%_
                                                '([type . rest])
                                                'else)
                                         (void)))
                                      (_%$%else115010115028%_
                                       (lambda ()
                                         (let ((_%klass115024%_
                                                (_%make-shadow-class114971%_
                                                 _%type114966%_
                                                 _%precedence-list115007%_)))
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
                                           _%klass115024%_)))
                                      (_%$%K115012115042%_
                                       (lambda (_%rest115031%_ _%type115032%_)
                                         (let ((_%$e115034%_
                                                (symbolic-table-ref
                                                 __shadow-classes
                                                 (let ()
                                                   (declare (not safe))
                                                   (##type-id _%type115032%_))
                                                 '#f)))
                                           (if _%$e115034%_
                                               ((lambda (_%klass115037%_)
                                                  (_%loop115004%_
                                                   _%rest115031%_
                                                   (cons _%klass115037%_
                                                         _%precedence-list115007%_)))
                                                _%$e115034%_)
                                               (let ((_%klass115040%_
                                                      (_%make-shadow-class114971%_
                                                       _%type115032%_
                                                       _%precedence-list115007%_)))
                                                 (_%loop115004%_
                                                  _%rest115031%_
                                                  (cons _%klass115040%_
                                                        _%precedence-list115007%_))))))))
                                 (if (pair? _%$%rest115008115016%_)
                                     (let ((_%$%hd115013115045%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%rest115008115016%_)))
                                           (_%$%tl115014115047%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%rest115008115016%_))))
                                       (let* ((_%type115050%_
                                               _%$%hd115013115045%_)
                                              (_%rest115052%_
                                               _%$%tl115014115047%_))
                                         (_%$%K115012115042%_
                                          _%rest115052%_
                                          _%type115050%_)))
                                     (_%$%else115010115028%_))))
                             (_%loop114998%_
                              (let ()
                                (declare (not safe))
                                (##type-super _%super115000%_))
                              (cons _%super115000%_
                                    _%hierarchy115001%_))))))))))
        (lambda _g121059_
          (let ((_g121060_ (let () (declare (not safe)) (##length _g121059_))))
            (cond ((let () (declare (not safe)) (##fx= _g121060_ 1))
                   (apply (lambda (_%type115180%_)
                            (let ((_%properties115182%_ '()))
                              (_%$%opt-lambda114964115177%_
                               _%type115180%_
                               _%properties115182%_)))
                          _g121059_))
                  ((let () (declare (not safe)) (##fx= _g121060_ 2))
                   (apply _%$%opt-lambda114964115177%_ _g121059_))
                  (else
                   (##raise-wrong-number-of-arguments-exception
                    __shadow-class
                    _g121059_)))))))
    (define __type
      (let* ((_%tb114954%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e114956%_ _%tb114954%_))
        (if (eq? '2 _%$e114956%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e114956%_)
                (let ((_%flonum-self-tagging-tags114959%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits114960%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e114962%_ _%flonum-self-tagging-tags114959%_))
                    (if (eq? '0 _%$e114962%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits114960%_ '2))
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
                        (if (eq? '1 _%$e114962%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits114960%_ '2))
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
                            (if (eq? '2 _%$e114962%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e114962%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e114962%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags114959%_))))))))
                (error '"unexpected tag width" _%tb114954%_)))))
    (define __primitive-class (make-vector (vector-length __type) '#f))
    (define __boxvalues-class (make-vector '2 '#f))
    (define __subtype-class (make-vector '32 '#f))
    (define __char-class '#f)
    (define __special-class (make-vector '16 '#f))
    (define __class-of
      (let* ((_%len114844%_ (vector-length __type))
             (_%cv114846%_ (make-vector _%len114844%_ '#f)))
        (let _%loop114849%_ ((_%i114851%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i114851%_ _%len114844%_))
              (let* ((_%t114853%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i114851%_)))
                     (_%f114951%_
                      (if (eq? _%t114853%_ 'undefined)
                          (lambda (_%obj114856%_)
                            (error '"object type is undefined" _%obj114856%_))
                          (if (memq _%t114853%_
                                    '(fixnum flonum
                                             stflonum
                                             haflonum
                                             pair
                                             vector))
                              (lambda (_%obj114859%_)
                                (declare (not interrupts-enabled) (not safe))
                                (let ((_%$e114862%_
                                       (##vector-ref
                                        __primitive-class
                                        _%i114851%_)))
                                  (if _%$e114862%_
                                      _%$e114862%_
                                      (let ((_%klass114866%_
                                             (__system-class _%t114853%_)))
                                        (##vector-set!
                                         __primitive-class
                                         _%i114851%_
                                         _%klass114866%_)
                                        _%klass114866%_))))
                              (if (eq? _%t114853%_ 'subtyped)
                                  (lambda (_%obj114870%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st114873%_
                                           (##subtype _%obj114870%_)))
                                      (if (##fx= _%st114873%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass114876%_
                                                 (##structure-type
                                                  _%obj114870%_)))
                                            (if (class-type? _%klass114876%_)
                                                _%klass114876%_
                                                (__shadow-class
                                                 _%klass114876%_)))
                                          (if (##fx= _%st114873%_
                                                     (macro-subtype-boxvalues))
                                              (if (fx= (##values-length
                                                        _%obj114870%_)
                                                       '1)
                                                  (let ((_%$e114879%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '0)))
                                                    (if _%$e114879%_
                                                        _%$e114879%_
                                                        (let ((_%klass114883%_
                                                               (__system-class
                                                                'box)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '0
                                                           _%klass114883%_)
                                                          _%klass114883%_)))
                                                  (let ((_%$e114886%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '1)))
                                                    (if _%$e114886%_
                                                        _%$e114886%_
                                                        (let ((_%klass114890%_
                                                               (__system-class
                                                                'values)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '1
                                                           _%klass114890%_)
                                                          _%klass114890%_))))
                                              (let ((_%$e114893%_
                                                     (##vector-ref
                                                      __subtype-class
                                                      _%st114873%_)))
                                                (if _%$e114893%_
                                                    _%$e114893%_
                                                    (let ((_%klass114910%_
                                                           (let ((_%$e114897%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##vector-ref __subtype-id _%st114873%_)))
                     (if _%$e114897%_
                         ((lambda (_%subtype-t114900%_)
                            (let ((_%$e114902%_
                                   (##vector-ref
                                    __subtype-class
                                    _%st114873%_)))
                              (if _%$e114902%_
                                  _%$e114902%_
                                  (let ((_%klass114906%_
                                         (__system-class _%subtype-t114900%_)))
                                    (##vector-set!
                                     __subtype-class
                                     _%st114873%_
                                     _%klass114906%_)
                                    _%klass114906%_))))
                          _%$e114897%_)
                         (error '"unknown class"
                                'object:
                                _%obj114870%_
                                'subtype:
                                _%st114873%_)))))
              (##vector-set! __subtype-class _%st114873%_ _%klass114910%_)
              _%klass114910%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (eq? _%t114853%_ 'special)
                                      (lambda (_%obj114914%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (let ((_%x114917%_
                                               (##type-cast _%obj114914%_ '0)))
                                          (if (fx> _%x114917%_ '0)
                                              (let ((_%$e114920%_
                                                     __char-class))
                                                (if _%$e114920%_
                                                    _%$e114920%_
                                                    (let ((_%klass114924%_
                                                           (__system-class
                                                            'char)))
                                                      (set! __char-class
                                                            _%klass114924%_)
                                                      _%klass114924%_)))
                                              (let* ((_%t114927%_
                                                      (fx- _%x114917%_))
                                                     (_%$e114930%_
                                                      (##vector-ref
                                                       __special-class
                                                       _%t114927%_)))
                                                (if _%$e114930%_
                                                    _%$e114930%_
                                                    (let ((_%klass114948%_
                                                           (if (eq? _%obj114914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                       (__system-class 'null)
                       (if (eq? _%obj114914%_ '#f)
                           (__system-class 'false)
                           (if (eq? _%obj114914%_ '#t)
                               (__system-class 'true)
                               (if (eq? _%obj114914%_ '#!void)
                                   (__system-class 'void)
                                   (if (eq? _%obj114914%_ '#!eof)
                                       (__system-class 'eof)
                                       (if (eq? _%obj114914%_ '#!unbound)
                                           (__system-class 'unbound)
                                           (if (eq? _%obj114914%_ '#!unbound2)
                                               (__system-class 'unbound2)
                                               (if (eq? _%obj114914%_
                                                        '#!optional)
                                                   (__system-class 'optional)
                                                   (if (eq? _%obj114914%_
                                                            '#!rest)
                                                       (__system-class 'rest)
                                                       (if (eq? _%obj114914%_
                                                                '#!key)
                                                           (__system-class
                                                            'key)
                                                           (if (eq? _%obj114914%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (macro-unused-obj))
                       (__system-class 'unused)
                       (if (eq? _%obj114914%_ (macro-deleted-obj))
                           (__system-class 'deleted)
                           (if (eq? _%obj114914%_ (macro-absent-obj))
                               (__system-class 'absent)
                               (__system-class 'unknown))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (##vector-set! __special-class _%t114927%_ _%klass114948%_)
              _%klass114948%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t114853%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv114846%_ _%i114851%_ _%f114951%_))
                (_%loop114849%_
                 (let () (declare (not safe)) (##fx+ _%i114851%_ '1))))
              _%cv114846%_))))
    (define type-of
      (lambda (_%obj114840%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj114840%_)))))
    (define class-of
      (lambda (_%obj114831%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t114835%_ (##type _%obj114831%_))
                 (_%f114837%_ (##vector-ref __class-of _%t114835%_)))
            (_%f114837%_ _%obj114831%_)))))
    (define __subtype-id (make-vector '32 '#f))
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
    (define __system-classes (make-symbolic-table '#f '0))
    (define __system-class
      (lambda (_%id114825%_)
        (let ((_%$e114827%_
               (symbolic-table-ref __system-classes _%id114825%_ '#f)))
          (if _%$e114827%_
              _%$e114827%_
              (error '"unknown system class" _%id114825%_)))))
    (define __make-system-class
      (lambda (_%id114727%_ _%super114728%_ _%properties114729%_)
        (let ((_%klass114823%_
               (let* ((_%id114731%_ _%id114727%_)
                      (_%name114734%_ _%id114727%_)
                      (_%direct-supers114737%_ _%super114728%_)
                      (_%direct-slots114740%_ '())
                      (_%properties114743%_
                       (cons (cons 'system: '#t)
                             (foldr cons '() _%properties114729%_)))
                      (_%constructor114746%_ '#f))
                 (if (symbol? _%id114731%_)
                     (let ((_%id114751%_ _%id114731%_))
                       (if (symbol? _%name114734%_)
                           (let ((_%name114767%_ _%name114734%_))
                             (if (list? _%direct-supers114737%_)
                                 (let ((_%direct-supers114777%_
                                        _%direct-supers114737%_))
                                   (if (list? _%direct-slots114740%_)
                                       (let ((_%direct-slots114787%_
                                              _%direct-slots114740%_))
                                         (if (list? _%properties114743%_)
                                             (let ((_%properties114797%_
                                                    _%properties114743%_))
                                               (if ((lambda (_%$obj114806%_)
                                                      (or (not _%$obj114806%_)
                                                          (symbol? _%$obj114806%_)))
                                                    _%constructor114746%_)
                                                   (let ((_%constructor114813%_
                                                          _%constructor114746%_))
                                                     (__make-class-type
                                                      _%id114751%_
                                                      _%name114767%_
                                                      _%direct-supers114777%_
                                                      _%direct-slots114787%_
                                                      _%properties114797%_
                                                      _%constructor114813%_))
                                                   (begin
                                                     (raise-contract-violation-error
                                                      '"contract violation"
                                                      'context:
                                                      'gerbil/runtime/mop
                                                      'contract:
                                                      '(? (or not symbol?))
                                                      'value:
                                                      _%constructor114746%_)
                                                     (void))))
                                             (begin
                                               (raise-contract-violation-error
                                                '"contract violation"
                                                'context:
                                                'gerbil/runtime/mop
                                                'contract:
                                                'list?
                                                'value:
                                                _%properties114743%_)
                                               (void))))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          'list?
                                          'value:
                                          _%direct-slots114740%_)
                                         (void))))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'list?
                                    'value:
                                    _%direct-supers114737%_)
                                   (void))))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'symbol?
                              'value:
                              _%name114734%_)
                             (void))))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id114731%_)
                       (void))))))
          (symbolic-table-set! __system-classes _%id114727%_ _%klass114823%_)
          _%klass114823%_)))))
