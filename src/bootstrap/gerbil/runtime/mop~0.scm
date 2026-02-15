(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1771178561)
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
      (let ((_%flags135921%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties135922%_ '((direct-slots:) (system: . #t)))
            (_%slot-table135923%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags135921%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table135923%_
           _%properties135922%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots135878%_
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
             (_%slot-vector135880%_ (list->vector (cons '#f _%slots135878%_)))
             (_%slot-table135906%_
              (let ((_%slot-table135882%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp138948
                       (lambda (_%slot135884%_ _%field135885%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table135882%_
                            _%slot135884%_
                            _%field135885%_))
                         (let ((__tmp138949
                                (let ((_%sym135887%_ _%slot135884%_))
                                  (if (symbol? _%sym135887%_)
                                      (let ((_%sym135892%_ _%sym135887%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym135892%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym135887%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table135882%_
                            __tmp138949
                            _%field135885%_))))
                      (__tmp138946
                       (let ((__tmp138947
                              (let ()
                                (declare (not safe))
                                (##length _%slots135878%_))))
                         (declare (not safe))
                         (##iota __tmp138947 '1))))
                  (declare (not safe))
                  (##for-each __tmp138948 _%slots135878%_ __tmp138946))
                _%slot-table135882%_))
             (_%flags135908%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields135914%_
              (list->vector
               (let ((__tmp138950
                      (map (lambda (_%g135909135911%_)
                             (list _%g135909135911%_ '5 '#f))
                           (drop _%slots135878%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp138950))))
             (_%properties135916%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots135878%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t135918%_
              (let ((__tmp138951 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags135908%_
                 ##type-type
                 _%fields135914%_
                 __tmp138951
                 _%slot-vector135880%_
                 _%slot-table135906%_
                 _%properties135916%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t135918%_ _%t135918%_))
        _%t135918%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags135874%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties135875%_ '((direct-slots:) (system: . #t)))
            (_%slot-table135876%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp138952 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags135874%_
           '#f
           '#()
           __tmp138952
           '#(#f)
           _%slot-table135876%_
           _%properties135875%_
           '#f
           '#f
           '#f
           '#f))))
    (define __class-type
      (lambda (_%klass135862%_)
        (let ((_%klass135865%_ _%klass135862%_))
          (declare (not safe))
          (##structure-type _%klass135865%_))))
    (define class-type
      (lambda (_%klass121200%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121200%_ 'class))
            (let ((_%klass121204%_ _%klass121200%_))
              (__class-type _%klass121204%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass121200%_)
              '#!void))))
    (define class-type?
      (lambda (_%obj135860%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj135860%_ 'class))))
    (define __class-type=?
      (lambda (_%x135839%_ _%y135840%_)
        (let* ((_%x135843%_ _%x135839%_) (_%y135851%_ _%y135840%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x135843%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y135851%_ '1 '#f '#f))))))
    (define class-type=?
      (lambda (_%x121334%_ _%y121335%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x121334%_ 'class))
            (let ((_%x121339%_ _%x121334%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y121335%_ 'class))
                  (let ((_%y121349%_ _%y121335%_))
                    (__class-type=? _%x121339%_ _%y121349%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y121335%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x121334%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type135827%_)
        (let* ((_%type135830%_ _%type135827%_)
               (__tmp138953
                (let ((__tmp138954
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type135830%_))))
                  (declare (not safe))
                  (##fxand __tmp138954 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp138953 type-flag-opaque))))
    (define type-opaque?
      (lambda (_%type121781%_)
        (if (let () (declare (not safe)) (##type? _%type121781%_))
            (let ((_%type121785%_ _%type121781%_))
              (__type-opaque? _%type121785%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type121781%_)
              '#!void))))
    (define __class-type-opaque?
      (lambda (_%klass135815%_)
        (let* ((_%klass135818%_ _%klass135815%_)
               (__tmp138955
                (let ((__tmp138956
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass135818%_))))
                  (declare (not safe))
                  (##fxand __tmp138956 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp138955 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass121915%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121915%_ 'class))
            (let ((_%klass121919%_ _%klass121915%_))
              (__class-type-opaque? _%klass121919%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass121915%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type135803%_)
        (let* ((_%type135806%_ _%type135803%_)
               (__tmp138957
                (let ((__tmp138958
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type135806%_))))
                  (declare (not safe))
                  (##fxand __tmp138958 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp138957 type-flag-extensible))))
    (define type-extensible?
      (lambda (_%type122049%_)
        (if (let () (declare (not safe)) (##type? _%type122049%_))
            (let ((_%type122053%_ _%type122049%_))
              (__type-extensible? _%type122053%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type122049%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type135791%_)
        (let* ((_%type135794%_ _%type135791%_)
               (__tmp138959
                (let ((__tmp138960
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type135794%_))))
                  (declare (not safe))
                  (##fxand __tmp138960 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp138959 '0))))
    (define class-type-final?
      (lambda (_%type122183%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type122183%_ 'class))
            (let ((_%type122187%_ _%type122183%_))
              (__class-type-final? _%type122187%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type122183%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass135779%_)
        (let* ((_%klass135782%_ _%klass135779%_)
               (__tmp138961
                (let ((__tmp138962
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass135782%_))))
                  (declare (not safe))
                  (##fxand __tmp138962 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp138961 class-type-flag-struct))))
    (define class-type-struct?
      (lambda (_%klass122317%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122317%_ 'class))
            (let ((_%klass122321%_ _%klass122317%_))
              (__class-type-struct? _%klass122321%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass122317%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass135767%_)
        (let* ((_%klass135770%_ _%klass135767%_)
               (__tmp138963
                (let ((__tmp138964
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass135770%_))))
                  (declare (not safe))
                  (##fxand __tmp138964 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp138963 class-type-flag-sealed))))
    (define class-type-sealed?
      (lambda (_%klass122451%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122451%_ 'class))
            (let ((_%klass122455%_ _%klass122451%_))
              (__class-type-sealed? _%klass122455%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass122451%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass135755%_)
        (let* ((_%klass135758%_ _%klass135755%_)
               (__tmp138965
                (let ((__tmp138966
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass135758%_))))
                  (declare (not safe))
                  (##fxand __tmp138966 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp138965 class-type-flag-metaclass))))
    (define class-type-metaclass?
      (lambda (_%klass122585%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122585%_ 'class))
            (let ((_%klass122589%_ _%klass122585%_))
              (__class-type-metaclass? _%klass122589%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass122585%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass135743%_)
        (let* ((_%klass135746%_ _%klass135743%_)
               (__tmp138967
                (let ((__tmp138968
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass135746%_))))
                  (declare (not safe))
                  (##fxand __tmp138968 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp138967 class-type-flag-system))))
    (define class-type-system?
      (lambda (_%klass122719%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122719%_ 'class))
            (let ((_%klass122723%_ _%klass122719%_))
              (__class-type-system? _%klass122723%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass122719%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass135731%_)
        (let* ((_%klass135734%_ _%klass135731%_)
               (__tmp138969
                (let ((__tmp138970
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass135734%_))))
                  (declare (not safe))
                  (##fxand __tmp138970 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp138969 class-type-flag-acyclic))))
    (define class-type-acyclic?
      (lambda (_%klass122853%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122853%_ 'class))
            (let ((_%klass122857%_ _%klass122853%_))
              (__class-type-acyclic? _%klass122857%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass122853%_)
              '#!void))))
    (define make-class-type-descriptor
      (lambda (_%type-id135538%_
               _%type-name135539%_
               _%type-super135540%_
               _%precedence-list135541%_
               _%slot-vector135542%_
               _%properties135543%_
               _%constructor135544%_
               _%slot-table135545%_
               _%methods135546%_)
        (letrec ((_%make-props!135549%_
                  (lambda (_%key135681%_)
                    (letrec* ((_%ht135683%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!135684%_
                               (lambda (_%ht135724%_ _%slots135725%_)
                                 (for-each
                                  (lambda (_%g135726135728%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht135724%_
                                       _%g135726135728%_
                                       '#t)))
                                  _%slots135725%_)))
                              (_%put-alist!135685%_
                               (lambda (_%ht135713%_
                                        _%key135714%_
                                        _%alist135715%_)
                                 (let ((_%$e135717%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key135714%_
                                           _%alist135715%_))))
                                   (if _%$e135717%_
                                       ((lambda (_%g135719135721%_)
                                          (_%put-slots!135684%_
                                           _%ht135713%_
                                           _%g135719135721%_))
                                        _%$e135717%_)
                                       '#!void)))))
                      (_%put-alist!135685%_
                       _%ht135683%_
                       _%key135681%_
                       _%properties135543%_)
                      (for-each
                       (lambda (_%mixin135687%_)
                         (let ((_%alist135689%_
                                (##structure-ref
                                 _%mixin135687%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist135689%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key135681%_
                                           _%alist135689%_))))
                               (_%put-slots!135684%_
                                _%ht135683%_
                                (let ((_%klass135694%_ _%mixin135687%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass135694%_
                                         'class))
                                      (let ((_%klass135699%_ _%klass135694%_))
                                        (__class-type-slot-list
                                         _%klass135699%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass135694%_)
                                        '#!void))))
                               (_%put-alist!135685%_
                                _%ht135683%_
                                _%key135681%_
                                _%alist135689%_))))
                       _%precedence-list135541%_)
                      _%ht135683%_))))
          (let* ((_%transparent?135551%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties135543%_)))
                 (_%all-slots-printable?135556%_
                  (let ((_%$e135553%_ _%transparent?135551%_))
                    (if _%$e135553%_
                        _%$e135553%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties135543%_))))))
                 (_%printable135558%_
                  (if (not _%all-slots-printable?135556%_)
                      (_%make-props!135549%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?135563%_
                  (let ((_%$e135560%_ _%transparent?135551%_))
                    (if _%$e135560%_
                        _%$e135560%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties135543%_))))))
                 (_%equalable135565%_
                  (if (not _%all-slots-equalable?135563%_)
                      (_%make-props!135549%_ 'equal:)
                      '#f))
                 (_%first-new-field135567%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super135540%_ 'class))
                      (let ((__tmp138971
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super135540%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp138971))
                      '1))
                 (_%field-info-length135569%_
                  (let ((__tmp138972
                         (let ((__tmp138973
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector135542%_))))
                           (declare (not safe))
                           (##fx- __tmp138973 _%first-new-field135567%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp138972)))
                 (_%field-info135571%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length135569%_ '#f)))
                 (_%struct?135573%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties135543%_)))
                 (_%final?135575%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties135543%_)))
                 (_%metaclass135582%_
                  (let ((_%metaclass135576135578%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties135543%_))))
                    (if _%metaclass135576135578%_
                        (let ((_%metaclass135580%_ _%metaclass135576135578%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass135580%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id135538%_
                                     'metaclass:
                                     _%metaclass135580%_))
                          _%metaclass135580%_)
                        '#f)))
                 (_%system?135584%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties135543%_)))
                 (_%opaque?135623%_
                  (if (or _%transparent?135551%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties135543%_)))
                      '#f
                      (let ((_%$e135589%_ (not _%type-super135540%_)))
                        (if _%$e135589%_
                            _%$e135589%_
                            (let ((_%type135592%_ _%type-super135540%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##type? _%type135592%_))
                                  (let ((_%type135597%_ _%type135592%_))
                                    (__type-opaque? _%type135597%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     '##type?
                                     'value:
                                     _%type135592%_)
                                    '#!void)))))))
                 (_%acyclic?135625%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties135543%_)))
                 (_%type-flags135627%_
                  (let ((__tmp138979
                         (if _%final?135575%_ '0 type-flag-extensible))
                        (__tmp138978
                         (if _%opaque?135623%_ type-flag-opaque '0))
                        (__tmp138977
                         (if _%struct?135573%_ class-type-flag-struct '0))
                        (__tmp138976
                         (if _%metaclass135582%_ class-type-flag-metaclass '0))
                        (__tmp138975
                         (if _%system?135584%_ class-type-flag-system '0))
                        (__tmp138974
                         (if _%acyclic?135625%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp138979
                             __tmp138978
                             __tmp138977
                             __tmp138976
                             __tmp138975
                             __tmp138974)))
                 (_%precedence-list135635%_
                  (let ((_%$e135629%_ (memq t::t _%precedence-list135541%_)))
                    (if _%$e135629%_
                        ((lambda (_%tail135632%_)
                           (if (null? (cdr _%tail135632%_))
                               _%precedence-list135541%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list135541%_)))
                         _%$e135629%_)
                        (let ((__tmp138980 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list135541%_ __tmp138980))))))
            (let _%loop135638%_ ((_%i135640%_ _%first-new-field135567%_)
                                 (_%j135641%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j135641%_ _%field-info-length135569%_))
                  (let* ((_%slot135643%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector135542%_ _%i135640%_)))
                         (_%flags135651%_
                          (if _%transparent?135551%_
                              '0
                              (let ((__tmp138982
                                     (if (or _%all-slots-printable?135556%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable135558%_
                                                _%slot135643%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp138981
                                     (if (or _%all-slots-equalable?135563%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable135565%_
                                                _%slot135643%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp138982 __tmp138981)))))
                    (vector-set!
                     _%field-info135571%_
                     _%j135641%_
                     _%slot135643%_)
                    (vector-set!
                     _%field-info135571%_
                     (let () (declare (not safe)) (##fx+ _%j135641%_ '1))
                     _%flags135651%_)
                    (_%loop135638%_
                     (let () (declare (not safe)) (##fx+ _%i135640%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j135641%_ '3))))
                  '#!void))
            (if _%metaclass135582%_
                (let ((_%val135678%_
                       (let* ((_%klass135654%_ _%metaclass135582%_)
                              (_%args135657%_
                               (list _%type-id135538%_
                                     _%type-name135539%_
                                     _%type-flags135627%_
                                     _%type-super135540%_
                                     _%field-info135571%_
                                     _%precedence-list135635%_
                                     _%slot-vector135542%_
                                     _%slot-table135545%_
                                     _%properties135543%_
                                     _%constructor135544%_
                                     _%methods135546%_)))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%klass135654%_
                                'class))
                             (let ((_%klass135662%_ _%klass135654%_))
                               (declare (not safe))
                               (##apply __make-instance
                                        _%klass135662%_
                                        _%args135657%_))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%klass135654%_)
                               '#!void)))))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val135678%_ 'class))
                      _%val135678%_
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         '"\"gerbil/runtime/mop.ss\"@283.10-287.95"
                         'contract:
                         '(class-type? val)
                         'value:
                         _%val135678%_)
                        '#!void)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id135538%_
                   _%type-name135539%_
                   _%type-flags135627%_
                   _%type-super135540%_
                   _%field-info135571%_
                   _%precedence-list135635%_
                   _%slot-vector135542%_
                   _%slot-table135545%_
                   _%properties135543%_
                   _%constructor135544%_
                   _%methods135546%_
                   '#f
                   '#f)))))))
    (define class-type-id
      (lambda (_%klass135536%_)
        (##structure-ref _%klass135536%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass135534%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass135534%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass135531%_ _%val135532%_)
        (##structure-set! _%klass135531%_ _%val135532%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass135526%_ _%val135528%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135526%_
           _%val135528%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass135524%_)
        (##structure-ref _%klass135524%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass135522%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass135522%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass135519%_ _%val135520%_)
        (##structure-set! _%klass135519%_ _%val135520%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass135514%_ _%val135516%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135514%_
           _%val135516%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass135512%_)
        (##structure-ref _%klass135512%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass135510%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass135510%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass135507%_ _%val135508%_)
        (##structure-set! _%klass135507%_ _%val135508%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass135502%_ _%val135504%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135502%_
           _%val135504%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass135500%_)
        (##structure-ref _%klass135500%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass135498%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass135498%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass135495%_ _%val135496%_)
        (##structure-set! _%klass135495%_ _%val135496%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass135490%_ _%val135492%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135490%_
           _%val135492%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass135488%_)
        (##structure-ref _%klass135488%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass135486%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass135486%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass135483%_ _%val135484%_)
        (##structure-set! _%klass135483%_ _%val135484%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass135478%_ _%val135480%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135478%_
           _%val135480%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass135476%_)
        (##structure-ref _%klass135476%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass135474%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass135474%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass135471%_ _%val135472%_)
        (##structure-set!
         _%klass135471%_
         _%val135472%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass135466%_ _%val135468%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135466%_
           _%val135468%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass135464%_)
        (##structure-ref _%klass135464%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass135462%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass135462%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass135459%_ _%val135460%_)
        (##structure-set!
         _%klass135459%_
         _%val135460%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass135454%_ _%val135456%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135454%_
           _%val135456%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass135452%_)
        (##structure-ref _%klass135452%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass135450%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass135450%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass135447%_ _%val135448%_)
        (##structure-set!
         _%klass135447%_
         _%val135448%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass135442%_ _%val135444%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135442%_
           _%val135444%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass135440%_)
        (##structure-ref _%klass135440%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass135438%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass135438%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass135435%_ _%val135436%_)
        (##structure-set!
         _%klass135435%_
         _%val135436%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass135430%_ _%val135432%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135430%_
           _%val135432%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass135428%_)
        (##structure-ref _%klass135428%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass135426%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass135426%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass135423%_ _%val135424%_)
        (##structure-set!
         _%klass135423%_
         _%val135424%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass135418%_ _%val135420%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135418%_
           _%val135420%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass135416%_)
        (##structure-ref _%klass135416%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass135414%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass135414%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass135411%_ _%val135412%_)
        (##structure-set!
         _%klass135411%_
         _%val135412%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass135406%_ _%val135408%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135406%_
           _%val135408%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass135404%_)
        (##structure-ref _%klass135404%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass135402%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass135402%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass135399%_ _%val135400%_)
        (##structure-set!
         _%klass135399%_
         _%val135400%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass135394%_ _%val135396%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135394%_
           _%val135396%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass135392%_)
        (##structure-ref _%klass135392%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass135390%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass135390%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass135387%_ _%val135388%_)
        (##structure-set!
         _%klass135387%_
         _%val135388%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass135382%_ _%val135384%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135382%_
           _%val135384%_
           '13
           class::t
           'interface))))
    (define type-field-list
      (lambda (_%type135146%_)
        (letrec ((_%__fields->list135276%_
                  (lambda (_%fields135340%_)
                    (let* ((_%fields135343%_ _%fields135340%_)
                           (_%fields-len135352%_
                            (let ()
                              (declare (not safe))
                              (##vector-length _%fields135343%_))))
                      (let _%loop135354%_ ((_%i135356%_ '0) (_%r135357%_ '()))
                        (let* ((_%i135360%_ _%i135356%_)
                               (_%r135373%_ _%r135357%_))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i135360%_ _%fields-len135352%_))
                              (_%loop135354%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i135360%_ '3))
                               (cons (vector-ref _%fields135343%_ _%i135360%_)
                                     _%r135373%_))
                              (reverse! _%r135373%_)))))))
                 (_%fields->list135277%_
                  (lambda (_%fields135328%_)
                    (let ((_%fields135331%_ _%fields135328%_))
                      (_%__fields->list135276%_ _%fields135331%_)))))
          (let _%loop135279%_ ((_%type135281%_ _%type135146%_))
            (if (let () (declare (not safe)) (##type? _%type135281%_))
                (if (eq? _%type135281%_ ##type-type)
                    '()
                    (let ((_%$e135286%_
                           (let ()
                             (declare (not safe))
                             (##type-super _%type135281%_))))
                      (if _%$e135286%_
                          ((lambda (_%super135289%_)
                             (let ((__tmp138984
                                    (_%loop135279%_ _%super135289%_))
                                   (__tmp138983
                                    (let* ((_%fields135292%_
                                            (let ()
                                              (declare (not safe))
                                              (##type-fields _%type135281%_)))
                                           (_%fields135296%_ _%fields135292%_))
                                      (_%__fields->list135276%_
                                       _%fields135296%_))))
                               (declare (not safe))
                               (##append __tmp138984 __tmp138983)))
                           _%$e135286%_)
                          (let* ((_%fields135313%_
                                  (let ()
                                    (declare (not safe))
                                    (##type-fields _%type135281%_)))
                                 (_%fields135317%_ _%fields135313%_))
                            (_%__fields->list135276%_ _%fields135317%_)))))
                '())))))
    (define __class-type-slot-list
      (lambda (_%klass135134%_)
        (let ((_%klass135137%_ _%klass135134%_))
          (vector->list
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass135137%_ '7 '#f '#f))
           '1))))
    (define class-type-slot-list
      (lambda (_%klass123377%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123377%_ 'class))
            (let ((_%klass123381%_ _%klass123377%_))
              (__class-type-slot-list _%klass123381%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@369.29-369.34"
               'contract:
               'class-type?
               'value:
               _%klass123377%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass135122%_)
        (let* ((_%klass135125%_ _%klass135122%_)
               (__tmp138985
                (let ((__tmp138986
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass135125%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp138986))))
          (declare (not safe))
          (##fx- __tmp138985 '1))))
    (define class-type-field-count
      (lambda (_%klass123511%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123511%_ 'class))
            (let ((_%klass123515%_ _%klass123511%_))
              (__class-type-field-count _%klass123515%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@371.31-371.36"
               'contract:
               'class-type?
               'value:
               _%klass123511%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass135110%_)
        (let ((_%klass135113%_ _%klass135110%_))
          (let ((__tmp138987
                 (let ((__tmp138988
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass135113%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp138988))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass135113%_
             __tmp138987
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define class-type-seal!
      (lambda (_%klass123645%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123645%_ 'class))
            (let ((_%klass123649%_ _%klass123645%_))
              (__class-type-seal! _%klass123649%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@374.25-374.30"
               'contract:
               'class-type?
               'value:
               _%klass123645%_)
              '#!void))))
    (define __class-type-printable-slots
      (lambda (_%klass135043%_)
        (let ((_%klass135046%_ _%klass135043%_))
          (letrec ((_%get-field-vector135055%_
                    (lambda (_%type135094%_)
                      (let _%loop135096%_ ((_%type135098%_ _%type135094%_))
                        (let* ((_%fields135100%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type135098%_)))
                               (_%$e135102%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type135098%_))))
                          (if _%$e135102%_
                              ((lambda (_%super135105%_)
                                 (let ((_%super-fields135107%_
                                        (_%loop135096%_ _%super135105%_)))
                                   (vector-append
                                    _%super-fields135107%_
                                    _%fields135100%_)))
                               _%$e135102%_)
                              _%fields135100%_)))))
                   (_%get-printable-slot-alist135056%_
                    (lambda (_%type135077%_)
                      (let* ((_%fields135079%_
                              (_%get-field-vector135055%_ _%type135077%_))
                             (_%count135081%_
                              (vector-length _%fields135079%_)))
                        (let _%loop135084%_ ((_%i135086%_ '3)
                                             (_%offset135087%_ '1)
                                             (_%r135088%_ '()))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i135086%_ _%count135081%_))
                              (let ((_%slot-name135090%_
                                     (vector-ref _%fields135079%_ _%i135086%_))
                                    (_%slot-flags135091%_
                                     (vector-ref
                                      _%fields135079%_
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%i135086%_ '1))))
                                    (_%next-i135092%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i135086%_ '2))))
                                (if (let ((__tmp138989
                                           (let ()
                                             (declare (not safe))
                                             (##fxand _%slot-flags135091%_
                                                      '1))))
                                      (declare (not safe))
                                      (##fx= __tmp138989 '0))
                                    (_%loop135084%_
                                     _%next-i135092%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset135087%_ '1))
                                     _%r135088%_)
                                    (_%loop135084%_
                                     _%next-i135092%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset135087%_ '1))
                                     (cons (cons _%slot-name135090%_
                                                 _%offset135087%_)
                                           _%r135088%_))))
                              (reverse! _%r135088%_))))))
                   (_%get-printable-slots!135057%_
                    (lambda (_%klass135072%_ _%type135073%_)
                      (let ((_%printable135075%_
                             (_%get-printable-slot-alist135056%_
                              _%type135073%_)))
                        (##structure-set!
                         _%klass135072%_
                         (cons (cons 'printable-slots: _%printable135075%_)
                               (##structure-ref
                                _%klass135072%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%printable135075%_))))
            (let* ((_%props135059%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass135046%_ '9 '#f '#f)))
                   (_%$e135061%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'printable-slots: _%props135059%_))))
              (if _%$e135061%_
                  _%$e135061%_
                  (let ((_%$e135064%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props135059%_))))
                    (if _%$e135064%_
                        ((lambda (_%g135066135068%_)
                           (_%get-printable-slots!135057%_
                            _%klass135046%_
                            _%g135066135068%_))
                         _%$e135064%_)
                        (_%get-printable-slots!135057%_
                         _%klass135046%_
                         _%klass135046%_)))))))))
    (define class-type-printable-slots
      (lambda (_%klass123779%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123779%_ 'class))
            (let ((_%klass123783%_ _%klass123779%_))
              (__class-type-printable-slots _%klass123783%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@381.35-381.40"
               'contract:
               'class-type?
               'value:
               _%klass123779%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct135012%_ _%maybe-super-struct135013%_)
        (let* ((_%maybe-sub-struct135016%_ _%maybe-sub-struct135012%_)
               (_%maybe-super-struct135024%_ _%maybe-super-struct135013%_)
               (_%maybe-super-struct-id135033%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct135024%_))))
          (let _%lp135035%_ ((_%super-struct135037%_
                              _%maybe-sub-struct135016%_))
            (if (not _%super-struct135037%_)
                '#f
                (if (eq? _%maybe-super-struct-id135033%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct135037%_)))
                    '#t
                    (_%lp135035%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct135037%_)))))))))
    (define substruct?
      (lambda (_%maybe-sub-struct123913%_ _%maybe-super-struct123914%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct123913%_ 'class))
            (let ((_%maybe-sub-struct123918%_ _%maybe-sub-struct123913%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct123914%_
                     'class))
                  (let ((_%maybe-super-struct123928%_
                         _%maybe-super-struct123914%_))
                    (__substruct?
                     _%maybe-sub-struct123918%_
                     _%maybe-super-struct123928%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@427.47-427.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct123914%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@427.19-427.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct123913%_)
              '#!void))))
    (define base-struct/1
      (lambda (_%klass134990%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134990%_ 'class))
            (if (let* ((_%klass134993%_ _%klass134990%_)
                       (_%klass134998%_ _%klass134993%_))
                  (__class-type-struct? _%klass134998%_))
                _%klass134990%_
                (let () (declare (not safe)) (##type-super _%klass134990%_)))
            (if (not _%klass134990%_)
                '#f
                (error '"not a class or false" _%klass134990%_)))))
    (define base-struct/2
      (lambda (_%klass1134913%_ _%klass2134914%_)
        (let ((_%s1134916%_ (base-struct/1 _%klass1134913%_))
              (_%s2134917%_ (base-struct/1 _%klass2134914%_)))
          (if (or (not _%s1134916%_)
                  (and _%s2134917%_
                       (let* ((_%maybe-sub-struct134922%_ _%s1134916%_)
                              (_%maybe-super-struct134925%_ _%s2134917%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%maybe-sub-struct134922%_
                                'class))
                             (let ((_%maybe-sub-struct134930%_
                                    _%maybe-sub-struct134922%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%maybe-super-struct134925%_
                                      'class))
                                   (let ((_%maybe-super-struct134944%_
                                          _%maybe-super-struct134925%_))
                                     (__substruct?
                                      _%maybe-sub-struct134930%_
                                      _%maybe-super-struct134944%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%maybe-super-struct134925%_)
                                     '#!void)))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%maybe-sub-struct134922%_)
                               '#!void)))))
              _%s2134917%_
              (if (or (not _%s2134917%_)
                      (and _%s1134916%_
                           (let* ((_%maybe-sub-struct134958%_ _%s2134917%_)
                                  (_%maybe-super-struct134961%_ _%s1134916%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%maybe-sub-struct134958%_
                                    'class))
                                 (let ((_%maybe-sub-struct134966%_
                                        _%maybe-sub-struct134958%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%maybe-super-struct134961%_
                                          'class))
                                       (let ((_%maybe-super-struct134978%_
                                              _%maybe-super-struct134961%_))
                                         (__substruct?
                                          _%maybe-sub-struct134966%_
                                          _%maybe-super-struct134978%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          'class-type?
                                          'value:
                                          _%maybe-super-struct134961%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'class-type?
                                    'value:
                                    _%maybe-sub-struct134958%_)
                                   '#!void)))))
                  _%s1134916%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1134913%_
                         _%klass2134914%_
                         _%s1134916%_
                         _%s2134917%_))))))
    (define base-struct/list
      (lambda (_%all-supers134798%_)
        (let* ((_%all-supers134799134824%_ _%all-supers134798%_)
               (_%E134804134828%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers134799134824%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K134822134910%_ (lambda () '#f))
                (_%K134819134896%_
                 (lambda (_%x134894%_) (base-struct/1 _%x134894%_)))
                (_%K134814134873%_
                 (lambda (_%y134870%_ _%x134871%_)
                   (base-struct/2 _%x134871%_ _%y134870%_)))
                (_%K134805134835%_
                 (lambda (_%y134832%_ _%x134833%_)
                   (let ()
                     (declare (not safe))
                     (foldr__0 base-struct/2 _%x134833%_ _%y134832%_)))))
            (let* ((_%__match137760137761%_
                    (lambda (_%hd134806134838%_ _%tl134807134840%_)
                      (let ((_%x134843%_ _%hd134806134838%_))
                        (letrec ((_%splice-rest134809134845%_
                                  (lambda (_%rest134813134852%_ _%y134854%_)
                                    (if (null? _%rest134813134852%_)
                                        (_%K134805134835%_
                                         _%y134854%_
                                         _%x134843%_)
                                        (_%E134804134828%_))))
                                 (_%splice-try134811134847%_
                                  (lambda (_%hd134812134856%_
                                           _%rest134813134858%_
                                           _%y134808134859%_)
                                    (let ((_%y134861%_ _%hd134812134856%_))
                                      (_%splice-loop134810134849%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest134813134858%_))
                                       (cons _%y134861%_ _%y134808134859%_)))))
                                 (_%splice-loop134810134849%_
                                  (lambda (_%rest134813134863%_
                                           _%y134808134864%_)
                                    (if (pair? _%rest134813134863%_)
                                        (_%splice-try134811134847%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest134813134863%_))
                                         _%rest134813134863%_
                                         _%y134808134864%_)
                                        (_%splice-rest134809134845%_
                                         _%rest134813134863%_
                                         (reverse _%y134808134864%_))))))
                          (_%splice-loop134810134849%_
                           _%tl134807134840%_
                           '())))))
                   (_%try-match134801134906%_
                    (lambda ()
                      (if (pair? _%all-supers134799134824%_)
                          (let ((_%tl134821134901%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers134799134824%_)))
                                (_%hd134820134899%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers134799134824%_))))
                            (if (null? _%tl134821134901%_)
                                (let ((_%x134904%_ _%hd134820134899%_))
                                  (base-struct/1 _%x134904%_))
                                (if (pair? _%tl134821134901%_)
                                    (let ((_%tl134818134885%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl134821134901%_)))
                                          (_%hd134817134883%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl134821134901%_))))
                                      (if (null? _%tl134818134885%_)
                                          (let ((_%x134881%_
                                                 _%hd134820134899%_)
                                                (_%y134888%_
                                                 _%hd134817134883%_))
                                            (_%K134814134873%_
                                             _%y134888%_
                                             _%x134881%_))
                                          (_%__match137760137761%_
                                           _%hd134820134899%_
                                           _%tl134821134901%_)))
                                    (_%__match137760137761%_
                                     _%hd134820134899%_
                                     _%tl134821134901%_))))
                          (_%E134804134828%_)))))
              (if (null? _%all-supers134799134824%_)
                  (_%K134822134910%_)
                  (_%try-match134801134906%_)))))))
    (define base-struct
      (lambda _%all-supers134796%_ (base-struct/list _%all-supers134796%_)))
    (define find-super-constructor
      (lambda (_%super134747%_)
        (let _%lp134749%_ ((_%rest134751%_ _%super134747%_)
                           (_%constructor134752%_ '#f))
          (let* ((_%rest134753134761%_ _%rest134751%_)
                 (_%else134755134769%_ (lambda () _%constructor134752%_))
                 (_%K134757134784%_
                  (lambda (_%rest134772%_ _%hd134773%_)
                    (let ((_%$e134775%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd134773%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e134775%_
                          ((lambda (_%xconstructor134778%_)
                             (if (or (not _%constructor134752%_)
                                     (eq? _%constructor134752%_
                                          _%xconstructor134778%_))
                                 (_%lp134749%_
                                  _%rest134772%_
                                  _%xconstructor134778%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor134752%_
                                        _%xconstructor134778%_)))
                           _%$e134775%_)
                          (_%lp134749%_
                           _%rest134772%_
                           _%constructor134752%_))))))
            (if (pair? _%rest134753134761%_)
                (let ((_%hd134758134787%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest134753134761%_)))
                      (_%tl134759134789%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest134753134761%_))))
                  (let* ((_%hd134792%_ _%hd134758134787%_)
                         (_%rest134794%_ _%tl134759134789%_))
                    (_%K134757134784%_ _%rest134794%_ _%hd134792%_)))
                (_%else134755134769%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list134703%_ _%direct-slots134704%_)
        (let* ((_%next-slot134706%_ '1)
               (_%slot-table134708%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots134710%_ '(__class))
               (_%process-slot134734%_
                (lambda (_%slot134712%_)
                  (if (symbol? _%slot134712%_)
                      '#!void
                      (error '"invalid slot name" _%slot134712%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table134708%_
                              _%slot134712%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table134708%_
                           _%slot134712%_
                           _%next-slot134706%_))
                        (let ((__tmp138990
                               (let ((_%sym134714%_ _%slot134712%_))
                                 (if (symbol? _%sym134714%_)
                                     (let ((_%sym134719%_ _%sym134714%_))
                                       (declare (not safe))
                                       (__symbol->keyword _%sym134719%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/mop
                                        'contract:
                                        'symbol?
                                        'value:
                                        _%sym134714%_)
                                       '#!void)))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table134708%_
                           __tmp138990
                           _%next-slot134706%_))
                        (set! _%r-slots134710%_
                              (cons _%slot134712%_ _%r-slots134710%_))
                        (set! _%next-slot134706%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot134706%_ '1))))
                      '#!void)))
               (_%process-slots134740%_
                (lambda (_%g134735134737%_)
                  (for-each _%process-slot134734%_ _%g134735134737%_))))
          (let ((__tmp138992
                 (lambda (_%mixin134743%_)
                   (_%process-slots134740%_
                    (let ((__tmp138993
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin134743%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp138993 '())))))
                (__tmp138991 (reverse _%class-precedence-list134703%_)))
            (declare (not safe))
            (##for-each __tmp138992 __tmp138991))
          (_%process-slots134740%_ _%direct-slots134704%_)
          (let ((_%slot-vector134745%_
                 (list->vector
                  (let ()
                    (declare (not safe))
                    (##reverse _%r-slots134710%_)))))
            (values _%slot-vector134745%_ _%slot-table134708%_)))))
    (define __make-class-type
      (lambda (_%id134530%_
               _%name134531%_
               _%direct-supers134532%_
               _%direct-slots134533%_
               _%properties134534%_
               _%constructor134535%_)
        (let* ((_%id134538%_ _%id134530%_)
               (_%name134546%_ _%name134531%_)
               (_%direct-supers134554%_ _%direct-supers134532%_)
               (_%direct-slots134562%_ _%direct-slots134533%_)
               (_%properties134570%_ _%properties134534%_)
               (_%constructor134578%_ _%constructor134535%_))
          (let ((_%$e134612%_
                 (let* ((_%pred134590%_
                         (lambda (_%$obj134587%_)
                           (not (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%$obj134587%_
                                   'class)))))
                        (_%lst134593%_ _%direct-supers134554%_)
                        (_%pred134598%_ _%pred134590%_))
                   (declare (not safe))
                   (__find _%pred134598%_ _%lst134593%_))))
            (if _%$e134612%_
                ((lambda (_%g134614134616%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g134614134616%_))
                 _%$e134612%_)
                (let ((_%$e134639%_
                       (let* ((_%pred134619%_ __class-type-final?)
                              (_%lst134622%_ _%direct-supers134554%_)
                              (_%pred134627%_ _%pred134619%_))
                         (declare (not safe))
                         (__find _%pred134627%_ _%lst134622%_))))
                  (if _%$e134639%_
                      ((lambda (_%g134641134643%_)
                         (error '"Cannot extend final class"
                                _%g134641134643%_))
                       _%$e134639%_)
                      '#!void))))
          (let ((_g138994_ (compute-precedence-list _%direct-supers134554%_)))
            (begin
              (let ((_g138995_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g138994_)
                           (##values-length _g138994_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g138995_ 2)))
                    (error "Context expects 2 values" _g138995_)))
              (let ((_%precedence-list134646%_
                     (let () (declare (not safe)) (##values-ref _g138994_ 0)))
                    (_%struct-super134647%_
                     (let () (declare (not safe)) (##values-ref _g138994_ 1))))
                (let ((_g138996_
                       (compute-class-slots
                        _%precedence-list134646%_
                        _%direct-slots134562%_)))
                  (begin
                    (let ((_g138997_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g138996_)
                                 (##values-length _g138996_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g138997_ 2)))
                          (error "Context expects 2 values" _g138997_)))
                    (let ((_%slot-vector134649%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g138996_ 0)))
                          (_%slot-table134650%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g138996_ 1))))
                      (let* ((_%properties134652%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots134562%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers134554%_)
                                          _%properties134570%_)))
                             (_%constructor*134657%_
                              (let ((_%$e134654%_ _%constructor134578%_))
                                (if _%$e134654%_
                                    _%$e134654%_
                                    (find-super-constructor
                                     _%direct-supers134554%_))))
                             (_%precedence-list134700%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties134652%_))
                                      (memq object::t
                                            _%precedence-list134646%_))
                                  _%precedence-list134646%_
                                  (let _%loop134662%_ ((_%tail134664%_
                                                        _%precedence-list134646%_)
                                                       (_%head134665%_ '()))
                                    (let* ((_%tail134666134674%_
                                            _%tail134664%_)
                                           (_%else134668134682%_
                                            (lambda ()
                                              (let ((__tmp138998
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp138998
                                                 _%head134665%_))))
                                           (_%K134670134688%_
                                            (lambda (_%rest134685%_
                                                     _%hd134686%_)
                                              (if (eq? _%hd134686%_ t::t)
                                                  (let ((__tmp138999
                                                         (cons object::t
                                                               _%tail134664%_)))
                                                    (declare (not safe))
                                                    (foldl__0
                                                     cons
                                                     __tmp138999
                                                     _%head134665%_))
                                                  (_%loop134662%_
                                                   _%rest134685%_
                                                   (cons _%hd134686%_
                                                         _%head134665%_))))))
                                      (if (pair? _%tail134666134674%_)
                                          (let ((_%hd134671134691%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail134666134674%_)))
                                                (_%tl134672134693%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail134666134674%_))))
                                            (let* ((_%hd134696%_
                                                    _%hd134671134691%_)
                                                   (_%rest134698%_
                                                    _%tl134672134693%_))
                                              (_%K134670134688%_
                                               _%rest134698%_
                                               _%hd134696%_)))
                                          (_%else134668134682%_)))))))
                        (make-class-type-descriptor
                         _%id134538%_
                         _%name134546%_
                         _%struct-super134647%_
                         _%precedence-list134700%_
                         _%slot-vector134649%_
                         _%properties134652%_
                         _%constructor*134657%_
                         _%slot-table134650%_
                         '#f)))))))))))
    (define make-class-type
      (lambda (_%id124058%_
               _%name124059%_
               _%direct-supers124060%_
               _%direct-slots124061%_
               _%properties124062%_
               _%constructor124063%_)
        (if (symbol? _%id124058%_)
            (let ((_%id124067%_ _%id124058%_))
              (if (symbol? _%name124059%_)
                  (let ((_%name124077%_ _%name124059%_))
                    (if (list? _%direct-supers124060%_)
                        (let ((_%direct-supers124087%_
                               _%direct-supers124060%_))
                          (if (list? _%direct-slots124061%_)
                              (let ((_%direct-slots124097%_
                                     _%direct-slots124061%_))
                                (if (list? _%properties124062%_)
                                    (let ((_%properties124107%_
                                           _%properties124062%_))
                                      (if ((lambda (_%$obj124116%_)
                                             (or (not _%$obj124116%_)
                                                 (symbol? _%$obj124116%_)))
                                           _%constructor124063%_)
                                          (let ((_%constructor124123%_
                                                 _%constructor124063%_))
                                            (__make-class-type
                                             _%id124067%_
                                             _%name124077%_
                                             _%direct-supers124087%_
                                             _%direct-slots124097%_
                                             _%properties124107%_
                                             _%constructor124123%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@524.24-524.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor124063%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@523.24-523.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties124062%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@522.24-522.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots124061%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@521.24-521.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers124060%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@520.24-520.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name124059%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.24-519.26"
               'contract:
               'symbol?
               'value:
               _%id124058%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass134518%_)
        (let ((_%klass134521%_ _%klass134518%_))
          (cons _%klass134521%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass134521%_ '6 '#f '#f))))))
    (define class-precedence-list
      (lambda (_%klass124253%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124253%_ 'class))
            (let ((_%klass124257%_ _%klass124253%_))
              (__class-precedence-list _%klass124257%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@557.30-557.35"
               'contract:
               'class-type?
               'value:
               _%klass124253%_)
              '#!void))))
    (define compute-precedence-list
      (lambda (_%direct-supers134515%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers134515%_))))
    (define __make-class-predicate
      (lambda (_%klass134431%_)
        (let* ((_%klass134434%_ _%klass134431%_)
               (_%tid134443%_
                (let () (declare (not safe)) (##type-id _%klass134434%_))))
          (if (let* ((_%type134445%_ _%klass134434%_)
                     (_%type134450%_ _%type134445%_))
                (__class-type-final? _%type134450%_))
              (lambda (_%g134464134466%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g134464134466%_
                   _%tid134443%_)))
              (if (let* ((_%klass134469%_ _%klass134434%_)
                         (_%klass134474%_ _%klass134469%_))
                    (__class-type-struct? _%klass134474%_))
                  (lambda (_%g134484134486%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%g134484134486%_
                       _%tid134443%_)))
                  (lambda (_%g134489134491%_)
                    (let* ((_%klass134494%_ _%klass134434%_)
                           (_%obj134497%_ _%g134489134491%_)
                           (_%klass134502%_ _%klass134494%_))
                      (__class-instance? _%klass134502%_ _%obj134497%_))))))))
    (define make-class-predicate
      (lambda (_%klass124387%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124387%_ 'class))
            (let ((_%klass124391%_ _%klass124387%_))
              (__make-class-predicate _%klass124391%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@569.29-569.34"
               'contract:
               'class-type?
               'value:
               _%klass124387%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass134365%_ _%slot134366%_)
        (let* ((_%klass134369%_ _%klass134365%_)
               (_%slot134377%_ _%slot134366%_)
               (_%field134386%_
                (let ((__tmp139000
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass134369%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp139000 _%slot134377%_ '#f))))
          (if (not _%field134386%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass134369%_
                       'slot:
                       _%slot134377%_)
                '#!void)
              (if (let* ((_%type134390%_ _%klass134369%_)
                         (_%type134395%_ _%type134390%_))
                    (__class-type-final? _%type134395%_))
                  (make-final-slot-accessor
                   _%klass134369%_
                   _%slot134377%_
                   _%field134386%_)
                  (if (let* ((_%klass134410%_ _%klass134369%_)
                             (_%klass134415%_ _%klass134410%_))
                        (__class-type-struct? _%klass134415%_))
                      (make-struct-slot-accessor
                       _%klass134369%_
                       _%slot134377%_
                       _%field134386%_)
                      (if (let ((_%strukt134426%_
                                 (base-struct/1 _%klass134369%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt134426%_
                                    'class))
                                 (let ((__tmp139001
                                        (let ((__tmp139002
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt134426%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp139002))))
                                   (declare (not safe))
                                   (##fx< _%field134386%_ __tmp139001))))
                          (make-struct-subclass-slot-accessor
                           _%klass134369%_
                           _%slot134377%_
                           _%field134386%_)
                          (make-class-cached-slot-accessor
                           _%klass134369%_
                           _%slot134377%_
                           _%field134386%_))))))))
    (define make-class-slot-accessor
      (lambda (_%klass124674%_ _%slot124675%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124674%_ 'class))
            (let ((_%klass124679%_ _%klass124674%_))
              (if (symbol? _%slot124675%_)
                  (let ((_%slot124689%_ _%slot124675%_))
                    (__make-class-slot-accessor
                     _%klass124679%_
                     _%slot124689%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@600.50-600.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot124675%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@600.33-600.38"
               'contract:
               'class-type?
               'value:
               _%klass124674%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass134299%_ _%slot134300%_)
        (let* ((_%klass134303%_ _%klass134299%_)
               (_%slot134311%_ _%slot134300%_)
               (_%field134320%_
                (let ((__tmp139003
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass134303%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp139003 _%slot134311%_ '#f))))
          (if (not _%field134320%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass134303%_
                       'slot:
                       _%slot134311%_)
                '#!void)
              (if (let* ((_%type134324%_ _%klass134303%_)
                         (_%type134329%_ _%type134324%_))
                    (__class-type-final? _%type134329%_))
                  (make-final-slot-mutator
                   _%klass134303%_
                   _%slot134311%_
                   _%field134320%_)
                  (if (let* ((_%klass134344%_ _%klass134303%_)
                             (_%klass134349%_ _%klass134344%_))
                        (__class-type-struct? _%klass134349%_))
                      (make-struct-slot-mutator
                       _%klass134303%_
                       _%slot134311%_
                       _%field134320%_)
                      (if (let ((_%strukt134360%_
                                 (base-struct/1 _%klass134303%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt134360%_
                                    'class))
                                 (let ((__tmp139004
                                        (let ((__tmp139005
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt134360%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp139005))))
                                   (declare (not safe))
                                   (##fx< _%field134320%_ __tmp139004))))
                          (make-struct-subclass-slot-mutator
                           _%klass134303%_
                           _%slot134311%_
                           _%field134320%_)
                          (make-class-cached-slot-mutator
                           _%klass134303%_
                           _%slot134311%_
                           _%field134320%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass124819%_ _%slot124820%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124819%_ 'class))
            (let ((_%klass124824%_ _%klass124819%_))
              (if (symbol? _%slot124820%_)
                  (let ((_%slot124834%_ _%slot124820%_))
                    (__make-class-slot-mutator _%klass124824%_ _%slot124834%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@608.49-608.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot124820%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@608.32-608.37"
               'contract:
               'class-type?
               'value:
               _%klass124819%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass134233%_ _%slot134234%_)
        (let* ((_%klass134237%_ _%klass134233%_)
               (_%slot134245%_ _%slot134234%_)
               (_%field134254%_
                (let ((__tmp139006
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass134237%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp139006 _%slot134245%_ '#f))))
          (if (not _%field134254%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass134237%_
                       'slot:
                       _%slot134245%_)
                '#!void)
              (if (let* ((_%type134258%_ _%klass134237%_)
                         (_%type134263%_ _%type134258%_))
                    (__class-type-final? _%type134263%_))
                  (make-struct-slot-unchecked-accessor
                   _%klass134237%_
                   _%slot134245%_
                   _%field134254%_)
                  (if (let* ((_%klass134278%_ _%klass134237%_)
                             (_%klass134283%_ _%klass134278%_))
                        (__class-type-struct? _%klass134283%_))
                      (make-struct-slot-unchecked-accessor
                       _%klass134237%_
                       _%slot134245%_
                       _%field134254%_)
                      (if (let ((_%strukt134294%_
                                 (base-struct/1 _%klass134237%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt134294%_
                                    'class))
                                 (let ((__tmp139007
                                        (let ((__tmp139008
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt134294%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp139008))))
                                   (declare (not safe))
                                   (##fx< _%field134254%_ __tmp139007))))
                          (make-struct-slot-unchecked-accessor
                           _%klass134237%_
                           _%slot134245%_
                           _%field134254%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass134237%_
                           _%slot134245%_
                           _%field134254%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass124964%_ _%slot124965%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124964%_ 'class))
            (let ((_%klass124969%_ _%klass124964%_))
              (if (symbol? _%slot124965%_)
                  (let ((_%slot124979%_ _%slot124965%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass124969%_
                     _%slot124979%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@616.60-616.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot124965%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@616.43-616.48"
               'contract:
               'class-type?
               'value:
               _%klass124964%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass134167%_ _%slot134168%_)
        (let* ((_%klass134171%_ _%klass134167%_)
               (_%slot134179%_ _%slot134168%_)
               (_%field134188%_
                (let ((__tmp139009
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass134171%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp139009 _%slot134179%_ '#f))))
          (if (not _%field134188%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass134171%_
                       'slot:
                       _%slot134179%_)
                '#!void)
              (if (let* ((_%type134192%_ _%klass134171%_)
                         (_%type134197%_ _%type134192%_))
                    (__class-type-final? _%type134197%_))
                  (make-struct-slot-unchecked-mutator
                   _%klass134171%_
                   _%slot134179%_
                   _%field134188%_)
                  (if (let* ((_%klass134212%_ _%klass134171%_)
                             (_%klass134217%_ _%klass134212%_))
                        (__class-type-struct? _%klass134217%_))
                      (make-struct-slot-unchecked-mutator
                       _%klass134171%_
                       _%slot134179%_
                       _%field134188%_)
                      (if (let ((_%strukt134228%_
                                 (base-struct/1 _%klass134171%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt134228%_
                                    'class))
                                 (let ((__tmp139010
                                        (let ((__tmp139011
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt134228%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp139011))))
                                   (declare (not safe))
                                   (##fx< _%field134188%_ __tmp139010))))
                          (make-struct-slot-unchecked-mutator
                           _%klass134171%_
                           _%slot134179%_
                           _%field134188%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass134171%_
                           _%slot134179%_
                           _%field134188%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass125109%_ _%slot125110%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125109%_ 'class))
            (let ((_%klass125114%_ _%klass125109%_))
              (if (symbol? _%slot125110%_)
                  (let ((_%slot125124%_ _%slot125110%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass125114%_
                     _%slot125124%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@624.59-624.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot125110%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@624.42-624.47"
               'contract:
               'class-type?
               'value:
               _%klass125109%_)
              '#!void))))
    (define not-an-instance__%
      (lambda (_%object134151%_ _%class134152%_ _%slot134153%_)
        (apply error
               '"not an instance"
               'object:
               _%object134151%_
               'class:
               _%class134152%_
               (if _%slot134153%_
                   (cons 'slot: (cons _%slot134153%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object134158%_ _%class134159%_)
        (let ((_%slot134161%_ '#f))
          (not-an-instance__%
           _%object134158%_
           _%class134159%_
           _%slot134161%_))))
    (define not-an-instance
      (lambda _g139012_
        (let ((_g139013_ (let () (declare (not safe)) (##length _g139012_))))
          (cond ((let () (declare (not safe)) (##fx= _g139013_ 2))
                 (apply not-an-instance__0 _g139012_))
                ((let () (declare (not safe)) (##fx= _g139013_ 3))
                 (apply not-an-instance__% _g139012_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g139012_))))))
    (define make-final-slot-accessor
      (lambda (_%klass134144%_ _%slot134145%_ _%field134146%_)
        (lambda (_%obj134148%_)
          (##direct-structure-ref
           _%obj134148%_
           _%field134146%_
           _%klass134144%_
           _%slot134145%_))))
    (define make-final-slot-mutator
      (lambda (_%klass134137%_ _%slot134138%_ _%field134139%_)
        (lambda (_%obj134141%_ _%val134142%_)
          (##direct-structure-set!
           _%obj134141%_
           _%val134142%_
           _%field134139%_
           _%klass134137%_
           _%slot134138%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass134131%_ _%slot134132%_ _%field134133%_)
        (lambda (_%obj134135%_)
          (##structure-ref
           _%obj134135%_
           _%field134133%_
           _%klass134131%_
           _%slot134132%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass134124%_ _%slot134125%_ _%field134126%_)
        (lambda (_%obj134128%_ _%val134129%_)
          (##structure-set!
           _%obj134128%_
           _%val134129%_
           _%field134126%_
           _%klass134124%_
           _%slot134125%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass134118%_ _%slot134119%_ _%field134120%_)
        (lambda (_%obj134122%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj134122%_
             _%field134120%_
             _%klass134118%_
             _%slot134119%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass134111%_ _%slot134112%_ _%field134113%_)
        (lambda (_%obj134115%_ _%val134116%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj134115%_
             _%val134116%_
             _%field134113%_
             _%klass134111%_
             _%slot134112%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass134084%_ _%slot134085%_ _%field134086%_)
        (lambda (_%obj134088%_)
          (if (let* ((_%klass134090%_ _%klass134084%_)
                     (_%obj134093%_ _%obj134088%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134090%_ 'class))
                    (let ((_%klass134098%_ _%klass134090%_))
                      (__class-instance? _%klass134098%_ _%obj134093%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134090%_)
                      '#!void)))
              (unchecked-slot-ref _%obj134088%_ _%field134086%_)
              (not-an-instance__%
               _%obj134088%_
               _%klass134084%_
               _%slot134085%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass134056%_ _%slot134057%_ _%field134058%_)
        (lambda (_%obj134060%_ _%val134061%_)
          (if (let* ((_%klass134063%_ _%klass134056%_)
                     (_%obj134066%_ _%obj134060%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134063%_ 'class))
                    (let ((_%klass134071%_ _%klass134063%_))
                      (__class-instance? _%klass134071%_ _%obj134066%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134063%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj134060%_
               _%field134058%_
               _%val134061%_)
              (not-an-instance__%
               _%obj134060%_
               _%klass134056%_
               _%slot134057%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass134007%_ _%slot134008%_ _%field134009%_)
        (lambda (_%obj134011%_)
          (if (let* ((_%klass134013%_ _%klass134007%_)
                     (_%obj134016%_ _%obj134011%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134013%_ 'class))
                    (let ((_%klass134021%_ _%klass134013%_))
                      (__direct-instance? _%klass134021%_ _%obj134016%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134013%_)
                      '#!void)))
              (unchecked-field-ref _%obj134011%_ _%field134009%_)
              (if (let* ((_%klass134035%_ _%klass134007%_)
                         (_%obj134038%_ _%obj134011%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass134035%_ 'class))
                        (let ((_%klass134043%_ _%klass134035%_))
                          (__class-instance? _%klass134043%_ _%obj134038%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass134035%_)
                          '#!void)))
                  (unchecked-slot-ref _%obj134011%_ _%slot134008%_)
                  (not-an-instance__%
                   _%obj134011%_
                   _%klass134007%_
                   _%slot134008%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass133957%_ _%slot133958%_ _%field133959%_)
        (lambda (_%obj133961%_ _%val133962%_)
          (if (let* ((_%klass133964%_ _%klass133957%_)
                     (_%obj133967%_ _%obj133961%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass133964%_ 'class))
                    (let ((_%klass133972%_ _%klass133964%_))
                      (__direct-instance? _%klass133972%_ _%obj133967%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass133964%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj133961%_
               _%field133959%_
               _%val133962%_)
              (if (let* ((_%klass133986%_ _%klass133957%_)
                         (_%obj133989%_ _%obj133961%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass133986%_ 'class))
                        (let ((_%klass133994%_ _%klass133986%_))
                          (__class-instance? _%klass133994%_ _%obj133989%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass133986%_)
                          '#!void)))
                  (unchecked-slot-set!
                   _%obj133961%_
                   _%slot133958%_
                   _%val133962%_)
                  (not-an-instance__%
                   _%obj133961%_
                   _%klass133957%_
                   _%slot133958%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass133930%_ _%slot133931%_ _%field133932%_)
        (lambda (_%obj133934%_)
          (if (let* ((_%klass133936%_ _%klass133930%_)
                     (_%obj133939%_ _%obj133934%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass133936%_ 'class))
                    (let ((_%klass133944%_ _%klass133936%_))
                      (__direct-instance? _%klass133944%_ _%obj133939%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass133936%_)
                      '#!void)))
              (unchecked-field-ref _%obj133934%_ _%field133932%_)
              (unchecked-slot-ref _%obj133934%_ _%slot133931%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass133902%_ _%slot133903%_ _%field133904%_)
        (lambda (_%obj133906%_ _%val133907%_)
          (if (let* ((_%klass133909%_ _%klass133902%_)
                     (_%obj133912%_ _%obj133906%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass133909%_ 'class))
                    (let ((_%klass133917%_ _%klass133909%_))
                      (__direct-instance? _%klass133917%_ _%obj133912%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass133909%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj133906%_
               _%field133904%_
               _%val133907%_)
              (unchecked-slot-set!
               _%obj133906%_
               _%slot133903%_
               _%val133907%_)))))
    (define __class-slot-offset
      (lambda (_%klass133881%_ _%slot133882%_)
        (let* ((_%klass133885%_ _%klass133881%_)
               (_%slot133893%_ _%slot133882%_)
               (__tmp139014
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass133885%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp139014 _%slot133893%_ '#f))))
    (define class-slot-offset
      (lambda (_%klass125254%_ _%slot125255%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125254%_ 'class))
            (let ((_%klass125259%_ _%klass125254%_))
              (if (let () (declare (not safe)) (symbolic? _%slot125255%_))
                  (let ((_%slot125269%_ _%slot125255%_))
                    (__class-slot-offset _%klass125259%_ _%slot125269%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@686.43-686.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot125255%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@686.26-686.31"
               'contract:
               'class-type?
               'value:
               _%klass125254%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass133806%_ _%obj133807%_ _%slot133808%_)
        (let* ((_%klass133811%_ _%klass133806%_)
               (_%slot133819%_ _%slot133808%_))
          (if (let* ((_%klass133828%_ _%klass133811%_)
                     (_%obj133831%_ _%obj133807%_)
                     (_%klass133836%_ _%klass133828%_))
                (__class-instance? _%klass133836%_ _%obj133831%_))
              (let ((_%off133879%_
                     (let* ((_%klass133850%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj133807%_)))
                            (_%slot133853%_ _%slot133819%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass133850%_ 'class))
                           (let ((_%klass133858%_ _%klass133850%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot133853%_))
                                 (let ((_%slot133869%_ _%slot133853%_))
                                   (__class-slot-offset
                                    _%klass133858%_
                                    _%slot133869%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot133853%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass133850%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj133807%_
                 _%off133879%_
                 _%klass133811%_
                 _%slot133819%_))
              (not-an-instance__0 _%obj133807%_ _%klass133811%_)))))
    (define class-slot-ref
      (lambda (_%klass125399%_ _%obj125400%_ _%slot125401%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125399%_ 'class))
            (let ((_%klass125405%_ _%klass125399%_))
              (if (let () (declare (not safe)) (symbolic? _%slot125401%_))
                  (let ((_%slot125415%_ _%slot125401%_))
                    (__class-slot-ref
                     _%klass125405%_
                     _%obj125400%_
                     _%slot125415%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@689.44-689.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot125401%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.23-689.28"
               'contract:
               'class-type?
               'value:
               _%klass125399%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass133730%_ _%obj133731%_ _%slot133732%_ _%val133733%_)
        (let* ((_%klass133736%_ _%klass133730%_)
               (_%slot133744%_ _%slot133732%_))
          (if (let* ((_%klass133753%_ _%klass133736%_)
                     (_%obj133756%_ _%obj133731%_)
                     (_%klass133761%_ _%klass133753%_))
                (__class-instance? _%klass133761%_ _%obj133756%_))
              (let ((_%off133804%_
                     (let* ((_%klass133775%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj133731%_)))
                            (_%slot133778%_ _%slot133744%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass133775%_ 'class))
                           (let ((_%klass133783%_ _%klass133775%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot133778%_))
                                 (let ((_%slot133794%_ _%slot133778%_))
                                   (__class-slot-offset
                                    _%klass133783%_
                                    _%slot133794%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot133778%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass133775%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj133731%_
                 _%val133733%_
                 _%off133804%_
                 _%klass133736%_
                 _%slot133744%_))
              (not-an-instance__0 _%obj133731%_ _%klass133736%_)))))
    (define class-slot-set!
      (lambda (_%klass125545%_ _%obj125546%_ _%slot125547%_ _%val125548%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125545%_ 'class))
            (let ((_%klass125552%_ _%klass125545%_))
              (if (let () (declare (not safe)) (symbolic? _%slot125547%_))
                  (let ((_%slot125562%_ _%slot125547%_))
                    (__class-slot-set!
                     _%klass125552%_
                     _%obj125546%_
                     _%slot125562%_
                     _%val125548%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@695.45-695.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot125547%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@695.24-695.29"
               'contract:
               'class-type?
               'value:
               _%klass125545%_)
              '#!void))))
    (define unchecked-field-ref
      (lambda (_%obj133727%_ _%off133728%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj133727%_ _%off133728%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj133723%_ _%off133724%_ _%val133725%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj133723%_
           _%val133725%_
           _%off133724%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj133720%_ _%slot133721%_)
        (unchecked-field-ref
         _%obj133720%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj133720%_))
          _%slot133721%_))))
    (define unchecked-slot-set!
      (lambda (_%obj133716%_ _%slot133717%_ _%val133718%_)
        (unchecked-field-set!
         _%obj133716%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj133716%_))
          _%slot133717%_)
         _%val133718%_)))
    (define __slot-error
      (lambda (_%obj133713%_ _%slot133714%_)
        (error '"Cannot find slot"
               'object:
               _%obj133713%_
               'slot:
               _%slot133714%_)))
    (define __slot-ref__%
      (lambda (_%obj133637%_ _%slot133638%_ _%E133639%_)
        (let* ((_%slot133642%_ _%slot133638%_)
               (_%E133650%_ _%E133639%_)
               (_%klass133659%_ (class-of _%obj133637%_))
               (_%$e133695%_
                (let* ((_%klass133662%_ _%klass133659%_)
                       (_%slot133665%_ _%slot133642%_)
                       (_%klass133670%_ _%klass133662%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot133665%_))
                      (let ((_%slot133685%_ _%slot133665%_))
                        (__class-slot-offset _%klass133670%_ _%slot133685%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot133665%_)
                        '#!void)))))
          (if _%$e133695%_
              ((lambda (_%off133698%_)
                 (unchecked-field-ref _%obj133637%_ _%off133698%_))
               _%$e133695%_)
              (let ()
                (declare (not safe))
                (_%E133650%_ _%obj133637%_ _%slot133642%_))))))
    (define __slot-ref__0
      (lambda (_%obj133704%_ _%slot133705%_)
        (let ((_%E133707%_ __slot-error))
          (__slot-ref__% _%obj133704%_ _%slot133705%_ _%E133707%_))))
    (define __slot-ref
      (lambda _g139015_
        (let ((_g139016_ (let () (declare (not safe)) (##length _g139015_))))
          (cond ((let () (declare (not safe)) (##fx= _g139016_ 2))
                 (apply __slot-ref__0 _g139015_))
                ((let () (declare (not safe)) (##fx= _g139016_ 3))
                 (apply __slot-ref__% _g139015_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g139015_))))))
    (define slot-ref__%
      (lambda (_%obj125810%_ _%slot125811%_ _%E125812%_)
        (if (symbol? _%slot125811%_)
            (let ((_%slot125816%_ _%slot125811%_))
              (if (procedure? _%E125812%_)
                  (let ((_%E125826%_ _%E125812%_))
                    (__slot-ref__% _%obj125810%_ _%slot125816%_ _%E125826%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@721.38-721.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E125812%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@721.21-721.25"
               'contract:
               'symbol?
               'value:
               _%slot125811%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj125839%_ _%slot125840%_)
        (let ((_%E125842%_ __slot-error))
          (slot-ref__% _%obj125839%_ _%slot125840%_ _%E125842%_))))
    (define slot-ref
      (lambda _g139017_
        (let ((_g139018_ (let () (declare (not safe)) (##length _g139017_))))
          (cond ((let () (declare (not safe)) (##fx= _g139018_ 2))
                 (apply slot-ref__0 _g139017_))
                ((let () (declare (not safe)) (##fx= _g139018_ 3))
                 (apply slot-ref__% _g139017_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g139017_))))))
    (define __slot-set!__%
      (lambda (_%obj133557%_ _%slot133558%_ _%val133559%_ _%E133560%_)
        (let* ((_%slot133563%_ _%slot133558%_)
               (_%E133571%_ _%E133560%_)
               (_%klass133580%_ (class-of _%obj133557%_))
               (_%$e133616%_
                (let* ((_%klass133583%_ _%klass133580%_)
                       (_%slot133586%_ _%slot133563%_)
                       (_%klass133591%_ _%klass133583%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot133586%_))
                      (let ((_%slot133606%_ _%slot133586%_))
                        (__class-slot-offset _%klass133591%_ _%slot133606%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot133586%_)
                        '#!void)))))
          (if _%$e133616%_
              ((lambda (_%off133619%_)
                 (unchecked-field-set!
                  _%obj133557%_
                  _%off133619%_
                  _%val133559%_))
               _%$e133616%_)
              (let ()
                (declare (not safe))
                (_%E133571%_ _%obj133557%_ _%slot133563%_))))))
    (define __slot-set!__0
      (lambda (_%obj133625%_ _%slot133626%_ _%val133627%_)
        (let ((_%E133629%_ __slot-error))
          (__slot-set!__%
           _%obj133625%_
           _%slot133626%_
           _%val133627%_
           _%E133629%_))))
    (define __slot-set!
      (lambda _g139019_
        (let ((_g139020_ (let () (declare (not safe)) (##length _g139019_))))
          (cond ((let () (declare (not safe)) (##fx= _g139020_ 3))
                 (apply __slot-set!__0 _g139019_))
                ((let () (declare (not safe)) (##fx= _g139020_ 4))
                 (apply __slot-set!__% _g139019_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g139019_))))))
    (define slot-set!__%
      (lambda (_%obj125969%_ _%slot125970%_ _%val125971%_ _%E125972%_)
        (if (symbol? _%slot125970%_)
            (let ((_%slot125976%_ _%slot125970%_))
              (if (procedure? _%E125972%_)
                  (let ((_%E125986%_ _%E125972%_))
                    (__slot-set!__%
                     _%obj125969%_
                     _%slot125976%_
                     _%val125971%_
                     _%E125986%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@723.43-723.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E125972%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@723.22-723.26"
               'contract:
               'symbol?
               'value:
               _%slot125970%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj125999%_ _%slot126000%_ _%val126001%_)
        (let ((_%E126003%_ __slot-error))
          (slot-set!__%
           _%obj125999%_
           _%slot126000%_
           _%val126001%_
           _%E126003%_))))
    (define slot-set!
      (lambda _g139021_
        (let ((_g139022_ (let () (declare (not safe)) (##length _g139021_))))
          (cond ((let () (declare (not safe)) (##fx= _g139022_ 3))
                 (apply slot-set!__0 _g139021_))
                ((let () (declare (not safe)) (##fx= _g139022_ 4))
                 (apply slot-set!__% _g139021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g139021_))))))
    (define __subclass?
      (lambda (_%maybe-sub-class133528%_ _%maybe-super-class133529%_)
        (let* ((_%maybe-sub-class133532%_ _%maybe-sub-class133528%_)
               (_%maybe-super-class133540%_ _%maybe-super-class133529%_)
               (_%maybe-super-class-id133549%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class133540%_)))
               (_%$e133551%_
                (eq? _%maybe-super-class-id133549%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class133532%_)))))
          (if _%$e133551%_
              _%$e133551%_
              (let ((__tmp139024
                     (lambda (_%super-class133554%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class133554%_))
                            _%maybe-super-class-id133549%_)))
                    (__tmp139023
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class133532%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (ormap__0 __tmp139024 __tmp139023))))))
    (define subclass?
      (lambda (_%maybe-sub-class126130%_ _%maybe-super-class126131%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class126130%_ 'class))
            (let ((_%maybe-sub-class126135%_ _%maybe-sub-class126130%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class126131%_
                     'class))
                  (let ((_%maybe-super-class126145%_
                         _%maybe-super-class126131%_))
                    (__subclass?
                     _%maybe-sub-class126135%_
                     _%maybe-super-class126145%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@729.45-729.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class126131%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@729.18-729.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class126130%_)
              '#!void))))
    (define object?
      (lambda (_%o133525%_)
        (if (let () (declare (not safe)) (##structure? _%o133525%_))
            (let ((__tmp139025
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o133525%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp139025 'class))
            '#f)))
    (define __direct-instance?
      (lambda (_%klass133512%_ _%obj133513%_)
        (let* ((_%klass133516%_ _%klass133512%_)
               (__tmp139026
                (let () (declare (not safe)) (##type-id _%klass133516%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj133513%_ __tmp139026))))
    (define direct-instance?
      (lambda (_%klass126275%_ _%obj126276%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126275%_ 'class))
            (let ((_%klass126280%_ _%klass126275%_))
              (__direct-instance? _%klass126280%_ _%obj126276%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@743.25-743.30"
               'contract:
               'class-type?
               'value:
               _%klass126275%_)
              '#!void))))
    (define immediate-instance-of?
      (lambda (_%klass133508%_ _%obj133509%_)
        (if (let () (declare (not safe)) (##structure? _%obj133509%_))
            (eq? _%klass133508%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj133509%_)))
            '#f)))
    (define __struct-instance?
      (lambda (_%klass133495%_ _%obj133496%_)
        (let* ((_%klass133499%_ _%klass133495%_)
               (__tmp139027
                (let () (declare (not safe)) (##type-id _%klass133499%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj133496%_ __tmp139027))))
    (define struct-instance?
      (lambda (_%klass126410%_ _%obj126411%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126410%_ 'class))
            (let ((_%klass126415%_ _%klass126410%_))
              (__struct-instance? _%klass126415%_ _%obj126411%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@772.25-772.30"
               'contract:
               'class-type?
               'value:
               _%klass126410%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass133447%_ _%obj133448%_)
        (let* ((_%klass133451%_ _%klass133447%_)
               (_%type133460%_ (class-of _%obj133448%_))
               (_%maybe-sub-class133462%_ _%type133460%_)
               (_%maybe-super-class133465%_ _%klass133451%_)
               (_%maybe-sub-class133470%_ _%maybe-sub-class133462%_)
               (_%maybe-super-class133485%_ _%maybe-super-class133465%_))
          (__subclass?
           _%maybe-sub-class133470%_
           _%maybe-super-class133485%_))))
    (define class-instance?
      (lambda (_%klass126545%_ _%obj126546%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126545%_ 'class))
            (let ((_%klass126550%_ _%klass126545%_))
              (__class-instance? _%klass126550%_ _%obj126546%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@777.24-777.29"
               'contract:
               'class-type?
               'value:
               _%klass126545%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass133406%_ _%k133407%_)
        (let* ((_%klass133410%_ _%klass133406%_) (_%k133418%_ _%k133407%_))
          (if (let* ((_%klass133427%_ _%klass133410%_)
                     (_%klass133432%_ _%klass133427%_))
                (__class-type-system? _%klass133432%_))
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass133410%_)
                '#!void)
              (let ((_%obj133445%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass133410%_ _%k133418%_))))
                (__object-fill! _%obj133445%_ '#f))))))
    (define make-object
      (lambda (_%klass126680%_ _%k126681%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126680%_ 'class))
            (let ((_%klass126685%_ _%klass126680%_))
              (if (fixnum? _%k126681%_)
                  (let ((_%k126695%_ _%k126681%_))
                    (__make-object _%klass126685%_ _%k126695%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@782.37-782.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k126681%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@782.20-782.25"
               'contract:
               'class-type?
               'value:
               _%klass126680%_)
              '#!void))))
    (define __object-class
      (lambda (_%obj133394%_)
        (let ((_%obj133397%_ _%obj133394%_))
          (declare (not safe))
          (##structure-type _%obj133397%_))))
    (define object-class
      (lambda (_%obj126825%_)
        (if (object? _%obj126825%_)
            (let ((_%obj126829%_ _%obj126825%_))
              (__object-class _%obj126829%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@802.21-802.24"
               'contract:
               'object?
               'value:
               _%obj126825%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj133376%_ _%fill133377%_)
        (let ((_%obj133380%_ _%obj133376%_))
          (let _%loop133389%_ ((_%i133391%_
                                (let ((__tmp139028
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj133380%_))))
                                  (declare (not safe))
                                  (##fx- __tmp139028 '1))))
            (if (let () (declare (not safe)) (##fx> _%i133391%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj133380%_
                     _%fill133377%_
                     _%i133391%_
                     '#f
                     '#f))
                  (_%loop133389%_
                   (let () (declare (not safe)) (##fx- _%i133391%_ '1))))
                _%obj133380%_)))))
    (define object-fill!
      (lambda (_%obj126959%_ _%fill126960%_)
        (if (object? _%obj126959%_)
            (let ((_%obj126964%_ _%obj126959%_))
              (__object-fill! _%obj126964%_ _%fill126960%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@807.21-807.24"
               'contract:
               'object?
               'value:
               _%obj126959%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass133332%_)
        (let* ((_%klass133335%_ _%klass133332%_)
               (_%klass133344%_ _%klass133335%_)
               (_%k133347%_
                (let ((__tmp139029
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass133335%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp139029)))
               (_%klass133352%_ _%klass133344%_)
               (_%k133366%_ _%k133347%_))
          (__make-object _%klass133352%_ _%k133366%_))))
    (define new-instance
      (lambda (_%klass127094%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127094%_ 'class))
            (let ((_%klass127098%_ _%klass127094%_))
              (__new-instance _%klass127098%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@818.21-818.26"
               'contract:
               'class-type?
               'value:
               _%klass127094%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass133191%_ . _%args133192%_)
        (let* ((_%klass133195%_ _%klass133191%_)
               (_%$e133204%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass133195%_ '10 '#f '#f))))
          (if _%$e133204%_
              ((lambda (_%kons-id133207%_)
                 (let ((_%obj133229%_
                        (let* ((_%klass133209%_ _%klass133195%_)
                               (_%klass133214%_ _%klass133209%_))
                          (__new-instance _%klass133214%_))))
                   (___constructor-init!
                    _%klass133195%_
                    _%kons-id133207%_
                    _%obj133229%_
                    _%args133192%_)
                   _%obj133229%_))
               _%$e133204%_)
              (if (let* ((_%klass133231%_ _%klass133195%_)
                         (_%klass133236%_ _%klass133231%_))
                    (__class-type-metaclass? _%klass133236%_))
                  (let ((_%obj133263%_
                         (let* ((_%klass133247%_ _%klass133195%_)
                                (_%klass133252%_ _%klass133247%_))
                           (__new-instance _%klass133252%_))))
                    (__metaclass-instance-init!
                     _%klass133195%_
                     _%obj133263%_
                     _%args133192%_)
                    _%obj133263%_)
                  (if (let* ((_%klass133265%_ _%klass133195%_)
                             (_%klass133270%_ _%klass133265%_))
                        (__class-type-struct? _%klass133270%_))
                      (if (let ((__tmp139031
                                 (let* ((_%klass133299%_ _%klass133195%_)
                                        (_%klass133304%_ _%klass133299%_))
                                   (__class-type-field-count _%klass133304%_)))
                                (__tmp139030
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args133192%_))))
                            (declare (not safe))
                            (##fx= __tmp139031 __tmp139030))
                          (apply ##structure _%klass133195%_ _%args133192%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass133195%_
                                   'slots:
                                   (let* ((_%klass133316%_ _%klass133195%_)
                                          (_%klass133321%_ _%klass133316%_))
                                     (__class-type-slot-list _%klass133321%_))
                                   'args:
                                   _%args133192%_)
                            '#!void))
                      (let ((_%obj133297%_
                             (let* ((_%klass133281%_ _%klass133195%_)
                                    (_%klass133286%_ _%klass133281%_))
                               (__new-instance _%klass133286%_))))
                        (___class-instance-init!
                         _%klass133195%_
                         _%obj133297%_
                         _%args133192%_)
                        _%obj133297%_)))))))
    (define make-instance
      (lambda (_%klass127228%_ . _%args127229%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127228%_ 'class))
            (let ((_%klass127233%_ _%klass127228%_))
              (declare (not safe))
              (##apply __make-instance _%klass127233%_ _%args127229%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@821.22-821.27"
               'contract:
               'class-type?
               'value:
               _%klass127228%_)
              '#!void))))
    (define make-class-instance make-instance)
    (define __struct-instance-init!
      (lambda (_%obj133178%_ . _%args133179%_)
        (let ((_%obj133182%_ _%obj133178%_))
          (if (let ((__tmp139033
                     (let () (declare (not safe)) (##length _%args133179%_)))
                    (__tmp139032
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj133182%_))))
                (declare (not safe))
                (##fx< __tmp139033 __tmp139032))
              (___struct-instance-init! _%obj133182%_ _%args133179%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj133182%_
                     'args:
                     _%args133179%_))
          '#!void)))
    (define struct-instance-init!
      (lambda (_%obj127363%_ . _%args127364%_)
        (if (object? _%obj127363%_)
            (let ((_%obj127368%_ _%obj127363%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj127368%_ _%args127364%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@846.30-846.33"
               'contract:
               'object?
               'value:
               _%obj127363%_)
              '#!void))))
    (define ___struct-instance-init!
      (lambda (_%obj133137%_ _%args133138%_)
        (let _%lp133140%_ ((_%k133142%_ '1) (_%rest133143%_ _%args133138%_))
          (let* ((_%rest133144133152%_ _%rest133143%_)
                 (_%else133146133160%_ (lambda () _%obj133137%_))
                 (_%K133148133166%_
                  (lambda (_%rest133163%_ _%hd133164%_)
                    (unchecked-field-set!
                     _%obj133137%_
                     _%k133142%_
                     _%hd133164%_)
                    (_%lp133140%_
                     (let () (declare (not safe)) (##fx+ _%k133142%_ '1))
                     _%rest133163%_))))
            (if (pair? _%rest133144133152%_)
                (let ((_%hd133149133169%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest133144133152%_)))
                      (_%tl133150133171%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest133144133152%_))))
                  (let* ((_%hd133174%_ _%hd133149133169%_)
                         (_%rest133176%_ _%tl133150133171%_))
                    (_%K133148133166%_ _%rest133176%_ _%hd133174%_)))
                (_%else133146133160%_))))))
    (define __class-instance-init!
      (lambda (_%obj133124%_ . _%args133125%_)
        (let ((_%obj133128%_ _%obj133124%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj133128%_))
           _%obj133128%_
           _%args133125%_)
          '#!void)))
    (define class-instance-init!
      (lambda (_%obj127498%_ . _%args127499%_)
        (if (object? _%obj127498%_)
            (let ((_%obj127503%_ _%obj127498%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj127503%_ _%args127499%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@886.29-886.32"
               'contract:
               'object?
               'value:
               _%obj127498%_)
              '#!void))))
    (define ___class-instance-init!
      (lambda (_%klass133066%_ _%obj133067%_ _%args133068%_)
        (let _%lp133070%_ ((_%rest133072%_ _%args133068%_))
          (let* ((_%rest133073133083%_ _%rest133072%_)
                 (_%else133075133091%_
                  (lambda ()
                    (if (null? _%rest133072%_)
                        _%obj133067%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass133066%_
                               'rest:
                               _%rest133072%_))))
                 (_%K133077133105%_
                  (lambda (_%rest133094%_ _%val133095%_ _%key133096%_)
                    (if (keyword? _%key133096%_)
                        (let ((_%$e133099%_
                               (__class-slot-offset
                                _%klass133066%_
                                _%key133096%_)))
                          (if _%$e133099%_
                              ((lambda (_%off133102%_)
                                 (unchecked-field-set!
                                  _%obj133067%_
                                  _%off133102%_
                                  _%val133095%_)
                                 (_%lp133070%_ _%rest133094%_))
                               _%$e133099%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass133066%_
                                     'slot:
                                     _%key133096%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key133096%_)))))
            (if (pair? _%rest133073133083%_)
                (let ((_%hd133078133108%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest133073133083%_)))
                      (_%tl133079133110%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest133073133083%_))))
                  (let ((_%key133113%_ _%hd133078133108%_))
                    (if (pair? _%tl133079133110%_)
                        (let ((_%hd133080133115%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl133079133110%_)))
                              (_%tl133081133117%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl133079133110%_))))
                          (let* ((_%val133120%_ _%hd133080133115%_)
                                 (_%rest133122%_ _%tl133081133117%_))
                            (_%K133077133105%_
                             _%rest133122%_
                             _%val133120%_
                             _%key133113%_)))
                        (_%else133075133091%_))))
                (_%else133075133091%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass133062%_ _%obj133063%_ _%args133064%_)
        (apply call-method
               _%klass133062%_
               'instance-init!
               _%obj133063%_
               _%args133064%_)))
    (define __constructor-init!
      (lambda (_%klass133031%_
               _%kons-id133032%_
               _%obj133033%_
               .
               _%args133034%_)
        (let* ((_%klass133037%_ _%klass133031%_)
               (_%kons-id133045%_ _%kons-id133032%_)
               (_%obj133053%_ _%obj133033%_))
          (___constructor-init!
           _%klass133037%_
           _%kons-id133045%_
           _%obj133053%_
           _%args133034%_)
          '#!void)))
    (define constructor-init!
      (lambda (_%klass127633%_
               _%kons-id127634%_
               _%obj127635%_
               .
               _%args127636%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127633%_ 'class))
            (let ((_%klass127640%_ _%klass127633%_))
              (if (symbol? _%kons-id127634%_)
                  (let ((_%kons-id127650%_ _%kons-id127634%_))
                    (if (object? _%obj127635%_)
                        (let ((_%obj127660%_ _%obj127635%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass127640%_
                                   _%kons-id127650%_
                                   _%obj127660%_
                                   _%args127636%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@910.63-910.66"
                           'contract:
                           'object?
                           'value:
                           _%obj127635%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@910.43-910.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id127634%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@910.26-910.31"
               'contract:
               'class-type?
               'value:
               _%klass127633%_)
              '#!void))))
    (define ___constructor-init!
      (lambda (_%klass133020%_ _%kons-id133021%_ _%obj133022%_ _%args133023%_)
        (let ((_%$e133025%_
               (__find-method
                _%klass133020%_
                _%obj133022%_
                _%kons-id133021%_)))
          (if _%$e133025%_
              ((lambda (_%kons133028%_)
                 (apply _%kons133028%_ _%obj133022%_ _%args133023%_)
                 _%obj133022%_)
               _%$e133025%_)
              (error '"missing constructor"
                     'class:
                     _%klass133020%_
                     'method:
                     _%kons-id133021%_)))))
    (define __struct-copy
      (lambda (_%struct133008%_)
        (let ((_%struct133011%_ _%struct133008%_))
          (declare (not safe))
          (##structure-copy _%struct133011%_))))
    (define struct-copy
      (lambda (_%struct127790%_)
        (if (object? _%struct127790%_)
            (let ((_%struct127794%_ _%struct127790%_))
              (__struct-copy _%struct127794%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@924.20-924.26"
               'contract:
               'object?
               'value:
               _%struct127790%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj132989%_)
        (let* ((_%obj132992%_ _%obj132989%_)
               (_%len133001%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj132992%_))))
          (let _%recur133003%_ ((_%i133005%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i133005%_ _%len133001%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj132992%_
                         _%i133005%_
                         '#f
                         '#f))
                      (_%recur133003%_
                       (let () (declare (not safe)) (##fx+ _%i133005%_ '1))))
                '())))))
    (define struct->list
      (lambda (_%obj127924%_)
        (if (object? _%obj127924%_)
            (let ((_%obj127928%_ _%obj127924%_))
              (__struct->list _%obj127928%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@927.21-927.24"
               'contract:
               'object?
               'value:
               _%obj127924%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj132941%_)
        (let* ((_%obj132944%_ _%obj132941%_)
               (_%klass132953%_
                (let () (declare (not safe)) (##structure-type _%obj132944%_)))
               (_%slot-vector132955%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass132953%_ '7 '#f '#f))))
          (let _%loop132957%_ ((_%index132959%_
                                (let ((__tmp139034
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector132955%_))))
                                  (declare (not safe))
                                  (##fx- __tmp139034 '1)))
                               (_%plist132960%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index132959%_ '1))
                (cons _%klass132953%_ _%plist132960%_)
                (let ((_%slot132963%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector132955%_
                          _%index132959%_))))
                  (_%loop132957%_
                   (let () (declare (not safe)) (##fx- _%index132959%_ '1))
                   (cons (let ((_%sym132965%_ _%slot132963%_))
                           (if (symbol? _%sym132965%_)
                               (let ((_%sym132970%_ _%sym132965%_))
                                 (declare (not safe))
                                 (__symbol->keyword _%sym132970%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  'symbol?
                                  'value:
                                  _%sym132965%_)
                                 '#!void)))
                         (cons (unchecked-field-ref
                                _%obj132944%_
                                _%index132959%_)
                               _%plist132960%_)))))))))
    (define class->list
      (lambda (_%obj128058%_)
        (if (object? _%obj128058%_)
            (let ((_%obj128062%_ _%obj128058%_)) (__class->list _%obj128062%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@935.20-935.23"
               'contract:
               'object?
               'value:
               _%obj128058%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj132891%_ _%id132892%_ . _%args132893%_)
        (let* ((_%id132896%_ _%id132892%_)
               (_%$e132927%_
                (let* ((_%obj132905%_ _%obj132891%_)
                       (_%id132908%_ _%id132896%_)
                       (_%id132913%_ _%id132908%_))
                  (__method-ref _%obj132905%_ _%id132913%_))))
          (if _%$e132927%_
              ((lambda (_%method132930%_)
                 (let ((_%method132932%_ _%method132930%_))
                   (apply _%method132932%_ _%obj132891%_ _%args132893%_)))
               _%$e132927%_)
              (error '"cannot find method"
                     'object:
                     _%obj132891%_
                     'method:
                     _%id132896%_)))))
    (define call-method
      (lambda (_%obj128192%_ _%id128193%_ . _%args128194%_)
        (if (symbol? _%id128193%_)
            (let ((_%id128198%_ _%id128193%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj128192%_
                       _%id128198%_
                       _%args128194%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@950.24-950.26"
               'contract:
               'symbol?
               'value:
               _%id128193%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj132842%_ _%id132843%_)
        (let* ((_%id132846%_ _%id132843%_)
               (_%klass132855%_ (class-of _%obj132842%_))
               (_%obj132858%_ _%obj132842%_)
               (_%id132861%_ _%id132846%_)
               (_%klass132866%_ _%klass132855%_)
               (_%id132881%_ _%id132861%_))
          (__find-method _%klass132866%_ _%obj132858%_ _%id132881%_))))
    (define method-ref
      (lambda (_%obj128328%_ _%id128329%_)
        (if (symbol? _%id128329%_)
            (let ((_%id128333%_ _%id128329%_))
              (__method-ref _%obj128328%_ _%id128333%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@977.23-977.25"
               'contract:
               'symbol?
               'value:
               _%id128329%_)
              '#!void))))
    (define checked-method-ref
      (lambda (_%obj132814%_ _%id132815%_)
        (let ((_%$e132839%_
               (let* ((_%obj132818%_ _%obj132814%_)
                      (_%id132821%_ _%id132815%_))
                 (if (symbol? _%id132821%_)
                     (let ((_%id132826%_ _%id132821%_))
                       (__method-ref _%obj132818%_ _%id132826%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id132821%_)
                       '#!void)))))
          (if _%$e132839%_
              _%$e132839%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj132814%_
                       'method:
                       _%id132815%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj132763%_ _%id132764%_)
        (let* ((_%id132767%_ _%id132764%_)
               (_%$e132798%_
                (let* ((_%obj132776%_ _%obj132763%_)
                       (_%id132779%_ _%id132767%_)
                       (_%id132784%_ _%id132779%_))
                  (__method-ref _%obj132776%_ _%id132784%_))))
          (if _%$e132798%_
              ((lambda (_%method132801%_)
                 (let ((_%method132803%_ _%method132801%_))
                   (lambda _%args132811%_
                     (apply _%method132803%_ _%obj132763%_ _%args132811%_))))
               _%$e132798%_)
              '#f))))
    (define bound-method-ref
      (lambda (_%obj128463%_ _%id128464%_)
        (if (symbol? _%id128464%_)
            (let ((_%id128468%_ _%id128464%_))
              (__bound-method-ref _%obj128463%_ _%id128468%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@985.29-985.31"
               'contract:
               'symbol?
               'value:
               _%id128464%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj132746%_ _%id132747%_)
        (let* ((_%id132750%_ _%id132747%_)
               (_%method132759%_
                (checked-method-ref _%obj132746%_ _%id132750%_)))
          (lambda _%args132761%_
            (apply _%method132759%_ _%obj132746%_ _%args132761%_)))))
    (define checked-bound-method-ref
      (lambda (_%obj128598%_ _%id128599%_)
        (if (symbol? _%id128599%_)
            (let ((_%id128603%_ _%id128599%_))
              (__checked-bound-method-ref _%obj128598%_ _%id128603%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@994.37-994.39"
               'contract:
               'symbol?
               'value:
               _%id128599%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass132615%_ _%obj132616%_ _%id132617%_)
        (let* ((_%klass132620%_ _%klass132615%_) (_%id132628%_ _%id132617%_))
          (if (let* ((_%klass132637%_ _%klass132620%_)
                     (_%klass132642%_ _%klass132637%_))
                (__class-type-sealed? _%klass132642%_))
              (let ((_%tab132672%_
                     (let* ((_%klass132656%_ _%klass132620%_)
                            (_%klass132661%_ _%klass132656%_))
                       (__specialize-class _%klass132661%_))))
                (declare (not safe))
                (symbolic-table-ref _%tab132672%_ _%id132628%_ '#f))
              (let ((_%$e132707%_
                     (let* ((_%klass132674%_ _%klass132620%_)
                            (_%obj132677%_ _%obj132616%_)
                            (_%id132680%_ _%id132628%_)
                            (_%klass132685%_ _%klass132674%_)
                            (_%id132697%_ _%id132680%_))
                       (__direct-method-ref
                        _%klass132685%_
                        _%obj132677%_
                        _%id132697%_))))
                (if _%$e132707%_
                    _%$e132707%_
                    (let* ((_%klass132711%_ _%klass132620%_)
                           (_%obj132714%_ _%obj132616%_)
                           (_%id132717%_ _%id132628%_)
                           (_%klass132722%_ _%klass132711%_)
                           (_%id132736%_ _%id132717%_))
                      (__mixin-method-ref
                       _%klass132722%_
                       _%obj132714%_
                       _%id132736%_))))))))
    (define find-method
      (lambda (_%klass128733%_ _%obj128734%_ _%id128735%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass128733%_ 'class))
            (let ((_%klass128739%_ _%klass128733%_))
              (if (symbol? _%id128735%_)
                  (let ((_%id128749%_ _%id128735%_))
                    (__find-method _%klass128739%_ _%obj128734%_ _%id128749%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@999.41-999.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id128735%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@999.20-999.25"
               'contract:
               'class-type?
               'value:
               _%klass128733%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins132560%_ _%obj132561%_ _%id132562%_)
        (let* ((_%id132565%_ _%id132562%_)
               (__tmp139035
                (lambda (_%g132573132575%_)
                  (let* ((_%klass132578%_ _%g132573132575%_)
                         (_%obj132581%_ _%obj132561%_)
                         (_%id132584%_ _%id132565%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass132578%_ 'class))
                        (let* ((_%klass132589%_ _%klass132578%_)
                               (_%id132605%_ _%id132584%_))
                          (__direct-method-ref
                           _%klass132589%_
                           _%obj132581%_
                           _%id132605%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass132578%_)
                          '#!void))))))
          (declare (not safe))
          (ormap__0 __tmp139035 _%mixins132560%_))))
    (define mixin-find-method
      (lambda (_%mixins128879%_ _%obj128880%_ _%id128881%_)
        (if (symbol? _%id128881%_)
            (let ((_%id128885%_ _%id128881%_))
              (__mixin-find-method
               _%mixins128879%_
               _%obj128880%_
               _%id128885%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1008.37-1008.39"
               'contract:
               'symbol?
               'value:
               _%id128881%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass132453%_ _%obj132454%_ _%id132455%_)
        (let* ((_%klass132458%_ _%klass132453%_) (_%id132466%_ _%id132455%_))
          (letrec ((_%metaclass-resolve-method132475%_
                    (lambda ()
                      (let* ((_%obj132536%_ _%klass132458%_)
                             (_%id132539%_ 'direct-method-ref)
                             (_%args132542%_ (list _%obj132454%_ _%id132466%_))
                             (_%id132547%_ _%id132539%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj132536%_
                                 _%id132547%_
                                 _%args132542%_))))
                   (_%metaclass-resolve-method!132476%_
                    (lambda ()
                      (let ((_%method132533%_
                             (_%metaclass-resolve-method132475%_)))
                        (let ((__tmp139037
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass132458%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp139036
                               (if _%method132533%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp139037
                           _%id132466%_
                           __tmp139036))
                        _%method132533%_))))
            (let ((_%$e132478%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass132458%_ '11 '#f '#f))))
              (if _%$e132478%_
                  ((lambda (_%ht132481%_)
                     (let ((_%method132483%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht132481%_
                               _%id132466%_
                               '#f))))
                       (if (procedure? _%method132483%_)
                           _%method132483%_
                           (if (let* ((_%klass132486%_ _%klass132458%_)
                                      (_%klass132491%_ _%klass132486%_))
                                 (__class-type-metaclass? _%klass132491%_))
                               (let ((_%$e132509%_ _%method132483%_))
                                 (if (eq? 'resolved _%$e132509%_)
                                     (_%metaclass-resolve-method132475%_)
                                     (if (eq? 'unknown _%$e132509%_)
                                         '#f
                                         (_%metaclass-resolve-method!132476%_))))
                               '#f))))
                   _%$e132478%_)
                  (if (let* ((_%klass132513%_ _%klass132458%_)
                             (_%klass132518%_ _%klass132513%_))
                        (__class-type-metaclass? _%klass132518%_))
                      (let ((_%tab132529%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass132458%_
                           _%tab132529%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!132476%_))
                      '#f)))))))
    (define direct-method-ref
      (lambda (_%klass129015%_ _%obj129016%_ _%id129017%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass129015%_ 'class))
            (let ((_%klass129021%_ _%klass129015%_))
              (if (symbol? _%id129017%_)
                  (let ((_%id129031%_ _%id129017%_))
                    (__direct-method-ref
                     _%klass129021%_
                     _%obj129016%_
                     _%id129031%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1011.47-1011.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id129017%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1011.26-1011.31"
               'contract:
               'class-type?
               'value:
               _%klass129015%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass132405%_ _%obj132406%_ _%id132407%_)
        (let* ((_%klass132410%_ _%klass132405%_)
               (_%id132418%_ _%id132407%_)
               (_%mixins132427%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass132410%_ '6 '#f '#f)))
               (_%obj132430%_ _%obj132406%_)
               (_%id132433%_ _%id132418%_)
               (_%id132438%_ _%id132433%_))
          (__mixin-find-method _%mixins132427%_ _%obj132430%_ _%id132438%_))))
    (define mixin-method-ref
      (lambda (_%klass129161%_ _%obj129162%_ _%id129163%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass129161%_ 'class))
            (let ((_%klass129167%_ _%klass129161%_))
              (if (symbol? _%id129163%_)
                  (let ((_%id129177%_ _%id129163%_))
                    (__mixin-method-ref
                     _%klass129167%_
                     _%obj129162%_
                     _%id129177%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1041.46-1041.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id129163%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1041.25-1041.30"
               'contract:
               'class-type?
               'value:
               _%klass129161%_)
              '#!void))))
    (define __bind-method!__%
      (lambda (_%klass132315%_ _%id132316%_ _%proc132317%_ _%rebind?132318%_)
        (let* ((_%id132321%_ _%id132316%_) (_%proc132329%_ _%proc132317%_))
          (letrec ((_%bind!132338%_
                    (lambda (_%ht132389%_)
                      (if (and (not _%rebind?132318%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht132389%_
                                  _%id132321%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass132315%_
                                 'method:
                                 _%id132321%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht132389%_
                               _%id132321%_
                               _%proc132329%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass132315%_ 'class))
                (let ((_%ht132341%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass132315%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht132341%_
                      (_%bind!132338%_ _%ht132341%_)
                      (let ((_%ht132343%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass132315%_
                           _%ht132343%_
                           '11
                           '#f
                           '#f))
                        (_%bind!132338%_ _%ht132343%_))))
                (if (let () (declare (not safe)) (##type? _%klass132315%_))
                    (let* ((_%klass132346%_
                            (__shadow-class__0 _%klass132315%_))
                           (_%id132349%_ _%id132321%_)
                           (_%proc132352%_ _%proc132329%_)
                           (_%rebind?132355%_ _%rebind?132318%_)
                           (_%id132360%_ _%id132349%_)
                           (_%proc132378%_ _%proc132352%_))
                      (__bind-method!__%
                       _%klass132346%_
                       _%id132360%_
                       _%proc132378%_
                       _%rebind?132355%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass132315%_)))))))
    (define __bind-method!__0
      (lambda (_%klass132394%_ _%id132395%_ _%proc132396%_)
        (let ((_%rebind?132398%_ '#f))
          (__bind-method!__%
           _%klass132394%_
           _%id132395%_
           _%proc132396%_
           _%rebind?132398%_))))
    (define __bind-method!
      (lambda _g139038_
        (let ((_g139039_ (let () (declare (not safe)) (##length _g139038_))))
          (cond ((let () (declare (not safe)) (##fx= _g139039_ 3))
                 (apply __bind-method!__0 _g139038_))
                ((let () (declare (not safe)) (##fx= _g139039_ 4))
                 (apply __bind-method!__% _g139038_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g139038_))))))
    (define bind-method!__%
      (lambda (_%klass129308%_ _%id129309%_ _%proc129310%_ _%rebind?129311%_)
        (if (symbol? _%id129309%_)
            (let ((_%id129315%_ _%id129309%_))
              (if (procedure? _%proc129310%_)
                  (let ((_%proc129325%_ _%proc129310%_))
                    (__bind-method!__%
                     _%klass129308%_
                     _%id129315%_
                     _%proc129325%_
                     _%rebind?129311%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1044.42-1044.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc129310%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1044.27-1044.29"
               'contract:
               'symbol?
               'value:
               _%id129309%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass129338%_ _%id129339%_ _%proc129340%_)
        (let ((_%rebind?129342%_ '#f))
          (bind-method!__%
           _%klass129338%_
           _%id129339%_
           _%proc129340%_
           _%rebind?129342%_))))
    (define bind-method!
      (lambda _g139040_
        (let ((_g139041_ (let () (declare (not safe)) (##length _g139040_))))
          (cond ((let () (declare (not safe)) (##fx= _g139041_ 3))
                 (apply bind-method!__0 _g139040_))
                ((let () (declare (not safe)) (##fx= _g139041_ 4))
                 (apply bind-method!__% _g139040_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g139040_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint132296%_ _%seed132297%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint132296%_
           procedure-hash
           eq?
           _%seed132297%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint132303%_ '#f) (_%seed132305%_ '0))
          (make-method-specializer-table__%
           _%size-hint132303%_
           _%seed132305%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint132307%_)
        (let ((_%seed132309%_ '0))
          (make-method-specializer-table__%
           _%size-hint132307%_
           _%seed132309%_))))
    (define make-method-specializer-table
      (lambda _g139042_
        (let ((_g139043_ (let () (declare (not safe)) (##length _g139042_))))
          (cond ((let () (declare (not safe)) (##fx= _g139043_ 0))
                 (apply make-method-specializer-table__0 _g139042_))
                ((let () (declare (not safe)) (##fx= _g139043_ 1))
                 (apply make-method-specializer-table__1 _g139042_))
                ((let () (declare (not safe)) (##fx= _g139043_ 2))
                 (apply make-method-specializer-table__% _g139042_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g139042_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint132276%_ _%seed132278%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint132276%_
           procedure-hash
           eq?
           _%seed132278%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint132284%_ '#f) (_%seed132286%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint132284%_
           _%seed132286%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint132288%_)
        (let ((_%seed132290%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint132288%_
           _%seed132290%_))))
    (define make-method-specializer-table/lock
      (lambda _g139044_
        (let ((_g139045_ (let () (declare (not safe)) (##length _g139044_))))
          (cond ((let () (declare (not safe)) (##fx= _g139045_ 0))
                 (apply make-method-specializer-table/lock__0 _g139044_))
                ((let () (declare (not safe)) (##fx= _g139045_ 1))
                 (apply make-method-specializer-table/lock__1 _g139044_))
                ((let () (declare (not safe)) (##fx= _g139045_ 2))
                 (apply make-method-specializer-table/lock__% _g139044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g139044_))))))
    (define method-specializer-table-ref
      (lambda (_%tab132229%_ _%key132230%_ _%default132231%_)
        (let ((_%table132233%_
               (let () (declare (not safe)) (&raw-table-table _%tab132229%_)))
              (_%seed132234%_
               (let () (declare (not safe)) (&raw-table-seed _%tab132229%_))))
          (let* ((_%h132236%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key132230%_))
                         _%seed132234%_))
                 (_%size132239%_ (vector-length _%table132233%_))
                 (_%entries132242%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size132239%_ '2)))
                 (_%start132245%_
                  (let ((__tmp139046
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h132236%_ _%entries132242%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp139046 '1))))
            (let _%loop132249%_ ((_%probe132252%_ _%start132245%_)
                                 (_%i132254%_ '1)
                                 (_%deleted132256%_ '#f))
              (let ((_%k132259%_ (vector-ref _%table132233%_ _%probe132252%_)))
                (if (eq? _%k132259%_ (macro-unused-obj))
                    _%default132231%_
                    (if (eq? _%k132259%_ (macro-deleted-obj))
                        (_%loop132249%_
                         (let ((_%next-probe132264%_
                                (fx+ _%start132245%_
                                     _%i132254%_
                                     (fx* _%i132254%_ _%i132254%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe132264%_ _%size132239%_))
                         (let () (declare (not safe)) (##fx+ _%i132254%_ '1))
                         (let ((_%$e132267%_ _%deleted132256%_))
                           (if _%$e132267%_ _%$e132267%_ _%probe132252%_)))
                        (if (eq? _%key132230%_ _%k132259%_)
                            (vector-ref
                             _%table132233%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe132252%_ '1)))
                            (_%loop132249%_
                             (let ((_%next-probe132272%_
                                    (fx+ _%start132245%_
                                         _%i132254%_
                                         (fx* _%i132254%_ _%i132254%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe132272%_
                                _%size132239%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i132254%_ '1))
                             _%deleted132256%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab132200%_ _%key132201%_ _%default132202%_)
        (let ((_%lock132204%_
               (let () (declare (not safe)) (&raw-table-lock _%tab132200%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again132209%_ ((_%spin132212%_ '0))
              (if (let ((__tmp139047
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock132204%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp139047 '0))
                  (let ((__tmp139048 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock132204%_ '1 __tmp139048))
                  (if (let () (declare (not safe)) (##fx< _%spin132212%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again132209%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin132212%_ '1))))
                      (let ((_%owner132218%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock132204%_ '1))))
                        (if (eq? _%owner132218%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner132218%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again132209%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r132224%_
                 (method-specializer-table-ref
                  _%tab132200%_
                  _%key132201%_
                  _%default132202%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock132204%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock132204%_ '0 '0 '1))))
            _%$r132224%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab132152%_ _%key132153%_ _%value132154%_)
        (let ((_%table132156%_
               (let () (declare (not safe)) (&raw-table-table _%tab132152%_)))
              (_%seed132157%_
               (let () (declare (not safe)) (&raw-table-seed _%tab132152%_))))
          (let* ((_%h132159%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key132153%_))
                         _%seed132157%_))
                 (_%size132162%_ (vector-length _%table132156%_))
                 (_%entries132165%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size132162%_ '2)))
                 (_%start132168%_
                  (let ((__tmp139049
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h132159%_ _%entries132165%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp139049 '1))))
            (let _%loop132172%_ ((_%probe132175%_ _%start132168%_)
                                 (_%i132177%_ '1)
                                 (_%deleted132179%_ '#f))
              (let ((_%k132182%_ (vector-ref _%table132156%_ _%probe132175%_)))
                (if (eq? _%k132182%_ (macro-unused-obj))
                    (if _%deleted132179%_
                        (begin
                          (vector-set!
                           _%table132156%_
                           _%deleted132179%_
                           _%key132153%_)
                          (vector-set!
                           _%table132156%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted132179%_ '1))
                           _%value132154%_)
                          ((lambda ()
                             (let ((__tmp139050
                                    (let ((__tmp139051
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab132152%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp139051 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab132152%_
                                __tmp139050)))))
                        (begin
                          (vector-set!
                           _%table132156%_
                           _%probe132175%_
                           _%key132153%_)
                          (vector-set!
                           _%table132156%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe132175%_ '1))
                           _%value132154%_)
                          ((lambda ()
                             (let ((__tmp139052
                                    (let ((__tmp139053
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab132152%_))))
                                      (declare (not safe))
                                      (##fx- __tmp139053 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab132152%_
                                __tmp139052))
                             (let ((__tmp139054
                                    (let ((__tmp139055
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab132152%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp139055 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab132152%_
                                __tmp139054))))))
                    (if (eq? _%k132182%_ (macro-deleted-obj))
                        (_%loop132172%_
                         (let ((_%next-probe132189%_
                                (fx+ _%start132168%_
                                     _%i132177%_
                                     (fx* _%i132177%_ _%i132177%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe132189%_ _%size132162%_))
                         (let () (declare (not safe)) (##fx+ _%i132177%_ '1))
                         (let ((_%$e132192%_ _%deleted132179%_))
                           (if _%$e132192%_ _%$e132192%_ _%probe132175%_)))
                        (if (eq? _%key132153%_ _%k132182%_)
                            (let ()
                              (vector-set!
                               _%table132156%_
                               _%probe132175%_
                               _%key132153%_)
                              (vector-set!
                               _%table132156%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe132175%_ '1))
                               _%value132154%_))
                            (_%loop132172%_
                             (let ((_%next-probe132197%_
                                    (fx+ _%start132168%_
                                         _%i132177%_
                                         (fx* _%i132177%_ _%i132177%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe132197%_
                                _%size132162%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i132177%_ '1))
                             _%deleted132179%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab132148%_ _%key132149%_ _%value132150%_)
        (if (let ((__tmp139058
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab132148%_)))
                  (__tmp139056
                   (let ((__tmp139057
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab132148%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp139057 '4))))
              (declare (not safe))
              (##fx< __tmp139058 __tmp139056))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab132148%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab132148%_
         _%key132149%_
         _%value132150%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab132118%_ _%key132119%_ _%value132120%_)
        (let ((_%lock132123%_
               (let () (declare (not safe)) (&raw-table-lock _%tab132118%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again132128%_ ((_%spin132131%_ '0))
              (if (let ((__tmp139059
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock132123%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp139059 '0))
                  (let ((__tmp139060 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock132123%_ '1 __tmp139060))
                  (if (let () (declare (not safe)) (##fx< _%spin132131%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again132128%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin132131%_ '1))))
                      (let ((_%owner132137%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock132123%_ '1))))
                        (if (eq? _%owner132137%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner132137%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again132128%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r132143%_
                 (method-specializer-table-set!
                  _%tab132118%_
                  _%key132119%_
                  _%value132120%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock132123%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock132123%_ '0 '0 '1))))
            _%$r132143%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab132069%_
               _%key132070%_
               _%method-specializer-table-update!132071%_
               _%default132072%_)
        (let ((_%table132074%_
               (let () (declare (not safe)) (&raw-table-table _%tab132069%_)))
              (_%seed132075%_
               (let () (declare (not safe)) (&raw-table-seed _%tab132069%_))))
          (let* ((_%h132077%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key132070%_))
                         _%seed132075%_))
                 (_%size132080%_ (vector-length _%table132074%_))
                 (_%entries132083%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size132080%_ '2)))
                 (_%start132086%_
                  (let ((__tmp139061
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h132077%_ _%entries132083%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp139061 '1))))
            (let _%loop132090%_ ((_%probe132093%_ _%start132086%_)
                                 (_%i132095%_ '1)
                                 (_%deleted132097%_ '#f))
              (let ((_%k132100%_ (vector-ref _%table132074%_ _%probe132093%_)))
                (if (eq? _%k132100%_ (macro-unused-obj))
                    (if _%deleted132097%_
                        (begin
                          (vector-set!
                           _%table132074%_
                           _%deleted132097%_
                           _%key132070%_)
                          (vector-set!
                           _%table132074%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted132097%_ '1))
                           (_%method-specializer-table-update!132071%_
                            _%default132072%_))
                          ((lambda ()
                             (let ((__tmp139062
                                    (let ((__tmp139063
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab132069%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp139063 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab132069%_
                                __tmp139062)))))
                        (begin
                          (vector-set!
                           _%table132074%_
                           _%probe132093%_
                           _%key132070%_)
                          (vector-set!
                           _%table132074%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe132093%_ '1))
                           (_%method-specializer-table-update!132071%_
                            _%default132072%_))
                          ((lambda ()
                             (let ((__tmp139064
                                    (let ((__tmp139065
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab132069%_))))
                                      (declare (not safe))
                                      (##fx- __tmp139065 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab132069%_
                                __tmp139064))
                             (let ((__tmp139066
                                    (let ((__tmp139067
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab132069%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp139067 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab132069%_
                                __tmp139066))))))
                    (if (eq? _%k132100%_ (macro-deleted-obj))
                        (_%loop132090%_
                         (let ((_%next-probe132107%_
                                (fx+ _%start132086%_
                                     _%i132095%_
                                     (fx* _%i132095%_ _%i132095%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe132107%_ _%size132080%_))
                         (let () (declare (not safe)) (##fx+ _%i132095%_ '1))
                         (let ((_%$e132110%_ _%deleted132097%_))
                           (if _%$e132110%_ _%$e132110%_ _%probe132093%_)))
                        (if (eq? _%key132070%_ _%k132100%_)
                            (let ()
                              (vector-set!
                               _%table132074%_
                               _%probe132093%_
                               _%key132070%_)
                              (vector-set!
                               _%table132074%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe132093%_ '1))
                               (_%method-specializer-table-update!132071%_
                                (vector-ref
                                 _%table132074%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe132093%_ '1))))))
                            (_%loop132090%_
                             (let ((_%next-probe132115%_
                                    (fx+ _%start132086%_
                                         _%i132095%_
                                         (fx* _%i132095%_ _%i132095%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe132115%_
                                _%size132080%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i132095%_ '1))
                             _%deleted132097%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab132064%_
               _%key132065%_
               _%method-specializer-table-update!132066%_
               _%default132067%_)
        (if (let ((__tmp139070
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab132064%_)))
                  (__tmp139068
                   (let ((__tmp139069
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab132064%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp139069 '4))))
              (declare (not safe))
              (##fx< __tmp139070 __tmp139068))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab132064%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab132064%_
         _%key132065%_
         _%method-specializer-table-update!132066%_
         _%default132067%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab132033%_
               _%key132034%_
               _%method-specializer-table-update!132035%_
               _%default132036%_)
        (let ((_%lock132039%_
               (let () (declare (not safe)) (&raw-table-lock _%tab132033%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again132044%_ ((_%spin132047%_ '0))
              (if (let ((__tmp139071
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock132039%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp139071 '0))
                  (let ((__tmp139072 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock132039%_ '1 __tmp139072))
                  (if (let () (declare (not safe)) (##fx< _%spin132047%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again132044%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin132047%_ '1))))
                      (let ((_%owner132053%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock132039%_ '1))))
                        (if (eq? _%owner132053%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner132053%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again132044%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r132059%_
                 (_%method-specializer-table-update!132035%_
                  _%tab132033%_
                  _%key132034%_
                  _%method-specializer-table-update!132035%_
                  _%default132036%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock132039%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock132039%_ '0 '0 '1))))
            _%$r132059%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab131990%_ _%key131991%_)
        (let ((_%table131993%_
               (let () (declare (not safe)) (&raw-table-table _%tab131990%_)))
              (_%seed131995%_
               (let () (declare (not safe)) (&raw-table-seed _%tab131990%_))))
          (let* ((_%h131998%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key131991%_))
                         _%seed131995%_))
                 (_%size132001%_ (vector-length _%table131993%_))
                 (_%entries132004%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size132001%_ '2)))
                 (_%start132007%_
                  (let ((__tmp139073
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h131998%_ _%entries132004%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp139073 '1))))
            (let _%loop132011%_ ((_%probe132014%_ _%start132007%_)
                                 (_%i132016%_ '1))
              (let ((_%k132019%_ (vector-ref _%table131993%_ _%probe132014%_)))
                (if (eq? _%k132019%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k132019%_ (macro-deleted-obj))
                        (_%loop132011%_
                         (let ((_%next-probe132024%_
                                (fx+ _%start132007%_
                                     _%i132016%_
                                     (fx* _%i132016%_ _%i132016%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe132024%_ _%size132001%_))
                         (let () (declare (not safe)) (##fx+ _%i132016%_ '1)))
                        (if (eq? _%key131991%_ _%k132019%_)
                            (let ()
                              (vector-set!
                               _%table131993%_
                               _%probe132014%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table131993%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe132014%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp139074
                                        (let ((__tmp139075
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab131990%_))))
                                          (declare (not safe))
                                          (##fx- __tmp139075 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab131990%_
                                    __tmp139074)))))
                            (_%loop132011%_
                             (let ((_%next-probe132030%_
                                    (fx+ _%start132007%_
                                         _%i132016%_
                                         (fx* _%i132016%_ _%i132016%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe132030%_
                                _%size132001%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i132016%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab131960%_ _%key131962%_)
        (let ((_%lock131965%_
               (let () (declare (not safe)) (&raw-table-lock _%tab131960%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again131970%_ ((_%spin131973%_ '0))
              (if (let ((__tmp139076
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock131965%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp139076 '0))
                  (let ((__tmp139077 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock131965%_ '1 __tmp139077))
                  (if (let () (declare (not safe)) (##fx< _%spin131973%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again131970%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin131973%_ '1))))
                      (let ((_%owner131979%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock131965%_ '1))))
                        (if (eq? _%owner131979%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner131979%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again131970%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r131985%_
                 (method-specializer-table-delete!
                  _%tab131960%_
                  _%key131962%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock131965%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock131965%_ '0 '0 '1))))
            _%$r131985%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc131957%_ _%specializer131958%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc131957%_
         _%specializer131958%_)))
    (define __lookup-method-specializer
      (lambda (_%proc131955%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc131955%_
         '#f)))
    (define __specialize-class
      (lambda (_%klass131937%_)
        (let* ((_%klass131940%_ _%klass131937%_)
               (_%$e131949%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass131940%_ '12 '#f '#f))))
          (if _%$e131949%_
              _%$e131949%_
              (let ((_%method-table131953%_
                     (___specialize-class _%klass131940%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass131940%_
                   _%method-table131953%_
                   '12
                   '#f
                   '#f))
                _%method-table131953%_)))))
    (define specialize-class
      (lambda (_%klass129469%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass129469%_ 'class))
            (let ((_%klass129473%_ _%klass129469%_))
              (__specialize-class _%klass129473%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1094.25-1094.30"
               'contract:
               'class-type?
               'value:
               _%klass129469%_)
              '#!void))))
    (define __specialize-method
      (lambda (_%klass131921%_
               _%method-table131922%_
               _%method131923%_
               _%proc131924%_)
        (let ((_%$e131926%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table131922%_
                  _%method131923%_
                  '#f))))
          (if _%$e131926%_
              _%$e131926%_
              (let ((_%$e131929%_
                     (__lookup-method-specializer _%proc131924%_)))
                (if _%$e131929%_
                    ((lambda (_%specialize131932%_)
                       (let ((_%specialized-proc131934%_
                              (_%specialize131932%_
                               _%klass131921%_
                               _%method-table131922%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table131922%_
                          _%method131923%_
                          _%specialized-proc131934%_)))
                     _%$e131929%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table131922%_
                       _%method131923%_
                       _%proc131924%_))))))))
    (define ___specialize-class
      (lambda (_%klass131788%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass131788%_ 'class))
            (if (let* ((_%klass131791%_ _%klass131788%_)
                       (_%klass131796%_ _%klass131791%_))
                  (__class-type-metaclass? _%klass131796%_))
                (let* ((_%obj131808%_ _%klass131788%_)
                       (_%id131811%_ 'specialize-class)
                       (_%args131814%_ '())
                       (_%id131819%_ _%id131811%_))
                  (declare (not safe))
                  (##apply __call-method
                           _%obj131808%_
                           _%id131819%_
                           _%args131814%_))
                (if (let* ((_%pred131832%_ class-type-metaclass?)
                           (_%lst131835%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass131788%_
                               '6
                               '#f
                               '#f)))
                           (_%pred131840%_ _%pred131832%_))
                      (declare (not safe))
                      (__find _%pred131840%_ _%lst131835%_))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass131788%_)
                    (let ((_%method-table131853%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop131855%_ ((_%rest131857%_
                                            (let* ((_%klass131904%_
                                                    _%klass131788%_)
                                                   (_%klass131909%_
                                                    _%klass131904%_))
                                              (__class-precedence-list
                                               _%klass131909%_))))
                        (let* ((_%rest131858131866%_ _%rest131857%_)
                               (_%else131860131874%_
                                (lambda () _%method-table131853%_))
                               (_%K131862131892%_
                                (lambda (_%rest131877%_ _%xklass131878%_)
                                  (let ((_%xmethod-table131879131881%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass131878%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table131879131881%_
                                        (let* ((_%xmethod-table131883%_
                                                _%xmethod-table131879131881%_)
                                               (__tmp139078
                                                (lambda (_%g131884131887%_
                                                         _%g131885131889%_)
                                                  (__specialize-method
                                                   _%klass131788%_
                                                   _%method-table131853%_
                                                   _%g131884131887%_
                                                   _%g131885131889%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table131883%_
                                           __tmp139078))
                                        '#f))
                                  (_%loop131855%_ _%rest131877%_))))
                          (if (pair? _%rest131858131866%_)
                              (let ((_%hd131863131895%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest131858131866%_)))
                                    (_%tl131864131897%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest131858131866%_))))
                                (let* ((_%xklass131900%_ _%hd131863131895%_)
                                       (_%rest131902%_ _%tl131864131897%_))
                                  (_%K131862131892%_
                                   _%rest131902%_
                                   _%xklass131900%_)))
                              (_%else131860131874%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass131788%_))
                (__specialize-class (__shadow-class__0 _%klass131788%_))
                (error '"bad class; cannot specialize" _%klass131788%_)))))
    (define __seal-class!
      (lambda (_%klass131651%_)
        (let ((_%klass131654%_ _%klass131651%_))
          (if (let* ((_%klass131663%_ _%klass131654%_)
                     (_%klass131668%_ _%klass131663%_))
                (__class-type-sealed? _%klass131668%_))
              '#!void
              (begin
                (if (let* ((_%klass131681%_ _%klass131654%_)
                           (_%klass131686%_ _%klass131681%_))
                      (__class-type-metaclass? _%klass131686%_))
                    (let ()
                      (let* ((_%obj131697%_ _%klass131654%_)
                             (_%id131700%_ 'seal-class!)
                             (_%args131703%_ '())
                             (_%id131708%_ _%id131700%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj131697%_
                                 _%id131708%_
                                 _%args131703%_))
                      (let* ((_%klass131721%_ _%klass131654%_)
                             (_%klass131726%_ _%klass131721%_))
                        (__specialize-class _%klass131726%_)))
                    (if (let* ((_%pred131736%_ class-type-metaclass?)
                               (_%lst131739%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass131654%_
                                   '6
                                   '#f
                                   '#f)))
                               (_%pred131744%_ _%pred131736%_))
                          (declare (not safe))
                          (__find _%pred131744%_ _%lst131739%_))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass131654%_)
                        (let* ((_%klass131757%_ _%klass131654%_)
                               (_%klass131762%_ _%klass131757%_))
                          (__specialize-class _%klass131762%_))))
                (let* ((_%klass131773%_ _%klass131654%_)
                       (_%klass131778%_ _%klass131773%_))
                  (__class-type-seal! _%klass131778%_)))))))
    (define seal-class!
      (lambda (_%klass129603%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass129603%_ 'class))
            (let ((_%klass129607%_ _%klass129603%_))
              (__seal-class! _%klass129607%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1140.20-1140.25"
               'contract:
               'class-type?
               'value:
               _%klass129603%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass131539%_ _%obj131540%_ _%id131541%_)
        (let* ((_%subklass131544%_ _%subklass131539%_)
               (_%id131552%_ _%id131541%_))
          (letrec ((_%find-next-method131561%_
                    (lambda (_%klass131563%_)
                      (let _%lp131565%_ ((_%rest131567%_
                                          (let ((_%klass131636%_
                                                 _%klass131563%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%klass131636%_
                                                   'class))
                                                (let ((_%klass131641%_
                                                       _%klass131636%_))
                                                  (__class-precedence-list
                                                   _%klass131641%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/mop
                                                   'contract:
                                                   'class-type?
                                                   'value:
                                                   _%klass131636%_)
                                                  '#!void)))))
                        (let* ((_%rest131568131576%_ _%rest131567%_)
                               (_%else131570131584%_ (lambda () '#f))
                               (_%K131572131624%_
                                (lambda (_%rest131587%_ _%klass131588%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass131544%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass131588%_)))
                                      (let* ((_%mixins131590%_ _%rest131587%_)
                                             (_%obj131593%_ _%obj131540%_)
                                             (_%id131596%_ _%id131552%_)
                                             (_%id131601%_ _%id131596%_))
                                        (__mixin-find-method
                                         _%mixins131590%_
                                         _%obj131593%_
                                         _%id131601%_))
                                      (_%lp131565%_ _%rest131587%_)))))
                          (if (pair? _%rest131568131576%_)
                              (let ((_%hd131573131627%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest131568131576%_)))
                                    (_%tl131574131629%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest131568131576%_))))
                                (let* ((_%klass131632%_ _%hd131573131627%_)
                                       (_%rest131634%_ _%tl131574131629%_))
                                  (_%K131572131624%_
                                   _%rest131634%_
                                   _%klass131632%_)))
                              (_%else131570131584%_)))))))
            (_%find-next-method131561%_ (class-of _%obj131540%_))))))
    (define next-method
      (lambda (_%subklass129737%_ _%obj129738%_ _%id129739%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass129737%_ 'class))
            (let ((_%subklass129743%_ _%subklass129737%_))
              (if (symbol? _%id129739%_)
                  (let ((_%id129753%_ _%id129739%_))
                    (__next-method
                     _%subklass129743%_
                     _%obj129738%_
                     _%id129753%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1162.44-1162.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id129739%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1162.20-1162.28"
               'contract:
               'class-type?
               'value:
               _%subklass129737%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass131474%_ _%obj131475%_ _%id131476%_ . _%args131477%_)
        (let* ((_%subklass131480%_ _%subklass131474%_)
               (_%id131488%_ _%id131476%_)
               (_%$e131533%_
                (let* ((_%subklass131497%_ _%subklass131480%_)
                       (_%obj131500%_ _%obj131475%_)
                       (_%id131503%_ _%id131488%_)
                       (_%subklass131508%_ _%subklass131497%_)
                       (_%id131523%_ _%id131503%_))
                  (__next-method
                   _%subklass131508%_
                   _%obj131500%_
                   _%id131523%_))))
          (if _%$e131533%_
              ((lambda (_%methodf131536%_)
                 (apply _%methodf131536%_ _%obj131475%_ _%args131477%_))
               _%$e131533%_)
              (error '"cannot find next method"
                     'object:
                     _%obj131475%_
                     'method:
                     _%id131488%_)))))
    (define call-next-method
      (lambda (_%subklass129883%_ _%obj129884%_ _%id129885%_ . _%args129886%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass129883%_ 'class))
            (let ((_%subklass129890%_ _%subklass129883%_))
              (if (symbol? _%id129885%_)
                  (let ((_%id129900%_ _%id129885%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass129890%_
                             _%obj129884%_
                             _%id129900%_
                             _%args129886%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1173.49-1173.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id129885%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1173.25-1173.33"
               'contract:
               'class-type?
               'value:
               _%subklass129883%_)
              '#!void))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type131253%_ _%properties131254%_)
        (letrec ((_%shadow-type-id131256%_
                  (lambda (_%type131462%_)
                    (let ((__tmp139079
                           (let ()
                             (declare (not safe))
                             (##type-name _%type131462%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp139079 '"::t"))))
                 (_%shadow-type-name131257%_
                  (lambda (_%type131460%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type131460%_))))
                 (_%make-shadow-class131258%_
                  (lambda (_%type131342%_ _%precedence-list131343%_)
                    (let* ((_%super131345%_
                            (if (pair? _%precedence-list131343%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list131343%_))
                                      '())
                                '()))
                           (_%klass131457%_
                            (let* ((_%id131347%_
                                    (_%shadow-type-id131256%_ _%type131342%_))
                                   (_%name131350%_
                                    (let ()
                                      (declare (not safe))
                                      (##type-name _%type131342%_)))
                                   (_%direct-supers131353%_ _%super131345%_)
                                   (_%direct-slots131356%_ '())
                                   (_%properties131382%_
                                    (cons (cons 'struct: '#t)
                                          (cons (cons 'system: '#t)
                                                (cons (cons 'system-type:
                                                            _%type131342%_)
                                                      (let ((__tmp139080
                                                             (if (let ((_%type131359%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%type131342%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##type? _%type131359%_))
                               (let ((_%type131364%_ _%type131359%_))
                                 (__type-extensible? _%type131364%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  '##type?
                                  'value:
                                  _%type131359%_)
                                 '#!void)))
                         '()
                         (cons (cons 'final: '#t) '()))))
                (declare (not safe))
                (foldr__0 cons _%properties131254%_ __tmp139080))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%constructor131385%_ '#f)
                                   (_%id131390%_ _%id131347%_))
                              (if (symbol? _%name131350%_)
                                  (let* ((_%name131401%_ _%name131350%_)
                                         (_%direct-supers131411%_
                                          _%direct-supers131353%_)
                                         (_%direct-slots131421%_
                                          _%direct-slots131356%_)
                                         (_%properties131431%_
                                          _%properties131382%_))
                                    (if ((lambda (_%$obj131440%_)
                                           (or (not _%$obj131440%_)
                                               (symbol? _%$obj131440%_)))
                                         _%constructor131385%_)
                                        (let ((_%constructor131447%_
                                               _%constructor131385%_))
                                          (__make-class-type
                                           _%id131390%_
                                           _%name131401%_
                                           _%direct-supers131411%_
                                           _%direct-slots131421%_
                                           _%properties131431%_
                                           _%constructor131447%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '(? (or not symbol?))
                                           'value:
                                           _%constructor131385%_)
                                          '#!void)))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     'symbol?
                                     'value:
                                     _%name131350%_)
                                    '#!void)))))
                      (let ((__tmp139081
                             (let ()
                               (declare (not safe))
                               (##type-id _%type131342%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp139081
                         _%klass131457%_))
                      _%klass131457%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again131262%_ ((_%spin131265%_ '0))
              (if (let ((__tmp139082
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp139082 '0))
                  (let ((__tmp139083 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp139083))
                  (if (let () (declare (not safe)) (##fx< _%spin131265%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again131262%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin131265%_ '1))))
                      (let ((_%owner131271%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner131271%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner131271%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again131262%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e131277%_
                 (let ((__tmp139084
                        (let ()
                          (declare (not safe))
                          (##type-id _%type131253%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp139084 '#f))))
            (if _%$e131277%_
                ((lambda (_%klass131280%_)
                   (let ()
                     (declare (not interrupts-enabled))
                     (begin
                       (let ()
                         (declare (not safe))
                         (##vector-set! __shadow-classes-lock '1 '#f))
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __shadow-classes-lock '0 '0 '1))))
                   _%klass131280%_)
                 _%$e131277%_)
                (let _%loop131285%_ ((_%super131287%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type131253%_)))
                                     (_%hierarchy131288%_ '()))
                  (if (not _%super131287%_)
                      (let _%loop131291%_ ((_%rest131293%_ _%hierarchy131288%_)
                                           (_%precedence-list131294%_ '()))
                        (let* ((_%rest131295131303%_ _%rest131293%_)
                               (_%else131297131315%_
                                (lambda ()
                                  (let ((_%klass131311%_
                                         (_%make-shadow-class131258%_
                                          _%type131253%_
                                          _%precedence-list131294%_)))
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
                                    _%klass131311%_)))
                               (_%K131299131329%_
                                (lambda (_%rest131318%_ _%type131319%_)
                                  (let ((_%$e131321%_
                                         (let ((__tmp139085
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type131319%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp139085
                                            '#f))))
                                    (if _%$e131321%_
                                        ((lambda (_%klass131324%_)
                                           (_%loop131291%_
                                            _%rest131318%_
                                            (cons _%klass131324%_
                                                  _%precedence-list131294%_)))
                                         _%$e131321%_)
                                        (let ((_%klass131327%_
                                               (_%make-shadow-class131258%_
                                                _%type131319%_
                                                _%precedence-list131294%_)))
                                          (_%loop131291%_
                                           _%rest131318%_
                                           (cons _%klass131327%_
                                                 _%precedence-list131294%_))))))))
                          (if (pair? _%rest131295131303%_)
                              (let ((_%hd131300131332%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest131295131303%_)))
                                    (_%tl131301131334%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest131295131303%_))))
                                (let* ((_%type131337%_ _%hd131300131332%_)
                                       (_%rest131339%_ _%tl131301131334%_))
                                  (_%K131299131329%_
                                   _%rest131339%_
                                   _%type131337%_)))
                              (_%else131297131315%_))))
                      (_%loop131285%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super131287%_))
                       (cons _%super131287%_ _%hierarchy131288%_)))))))))
    (define __shadow-class__0
      (lambda (_%type131467%_)
        (let ((_%properties131469%_ '()))
          (__shadow-class__% _%type131467%_ _%properties131469%_))))
    (define __shadow-class
      (lambda _g139086_
        (let ((_g139087_ (let () (declare (not safe)) (##length _g139086_))))
          (cond ((let () (declare (not safe)) (##fx= _g139087_ 1))
                 (apply __shadow-class__0 _g139086_))
                ((let () (declare (not safe)) (##fx= _g139087_ 2))
                 (apply __shadow-class__% _g139086_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g139086_))))))
    (define __type
      (let* ((_%tb131241%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e131243%_ _%tb131241%_))
        (if (eq? '2 _%$e131243%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e131243%_)
                (let ((_%flonum-self-tagging-tags131246%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits131247%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e131249%_ _%flonum-self-tagging-tags131246%_))
                    (if (eq? '0 _%$e131249%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits131247%_ '2))
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
                        (if (eq? '1 _%$e131249%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits131247%_ '2))
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
                            (if (eq? '2 _%$e131249%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e131249%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e131249%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags131246%_))))))))
                (error '"unexpected tag width" _%tb131241%_)))))
    (define __primitive-class
      (let ((__tmp139088 (vector-length __type)))
        (declare (not safe))
        (##make-vector __tmp139088 '#f)))
    (define __boxvalues-class
      (let () (declare (not safe)) (##make-vector '2 '#f)))
    (define __subtype-class
      (let () (declare (not safe)) (##make-vector '32 '#f)))
    (define __char-class '#f)
    (define __special-class
      (let () (declare (not safe)) (##make-vector '16 '#f)))
    (define __class-of
      (let* ((_%len131131%_ (vector-length __type))
             (_%cv131133%_
              (let () (declare (not safe)) (##make-vector _%len131131%_ '#f))))
        (let _%loop131136%_ ((_%i131138%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i131138%_ _%len131131%_))
              (let* ((_%t131140%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i131138%_)))
                     (_%f131238%_
                      (if (eq? _%t131140%_ 'undefined)
                          (lambda (_%obj131143%_)
                            (error '"object type is undefined" _%obj131143%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t131140%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj131146%_)
                                (declare (not interrupts-enabled) (not safe))
                                (let ((_%$e131149%_
                                       (##vector-ref
                                        __primitive-class
                                        _%i131138%_)))
                                  (if _%$e131149%_
                                      _%$e131149%_
                                      (let ((_%klass131153%_
                                             (__system-class _%t131140%_)))
                                        (##vector-set!
                                         __primitive-class
                                         _%i131138%_
                                         _%klass131153%_)
                                        _%klass131153%_))))
                              (if (eq? _%t131140%_ 'subtyped)
                                  (lambda (_%obj131157%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st131160%_
                                           (##subtype _%obj131157%_)))
                                      (if (##fx= _%st131160%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass131163%_
                                                 (##structure-type
                                                  _%obj131157%_)))
                                            (if (##structure-instance-of?
                                                 _%klass131163%_
                                                 'class)
                                                _%klass131163%_
                                                (__shadow-class__0
                                                 _%klass131163%_)))
                                          (if (##fx= _%st131160%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj131157%_)
                                                         '1)
                                                  (let ((_%$e131166%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '0)))
                                                    (if _%$e131166%_
                                                        _%$e131166%_
                                                        (let ((_%klass131170%_
                                                               (__system-class
                                                                'box)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '0
                                                           _%klass131170%_)
                                                          _%klass131170%_)))
                                                  (let ((_%$e131173%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '1)))
                                                    (if _%$e131173%_
                                                        _%$e131173%_
                                                        (let ((_%klass131177%_
                                                               (__system-class
                                                                'values)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '1
                                                           _%klass131177%_)
                                                          _%klass131177%_))))
                                              (let ((_%$e131180%_
                                                     (##vector-ref
                                                      __subtype-class
                                                      _%st131160%_)))
                                                (if _%$e131180%_
                                                    _%$e131180%_
                                                    (let ((_%klass131197%_
                                                           (let ((_%$e131184%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##vector-ref __subtype-id _%st131160%_)))
                     (if _%$e131184%_
                         ((lambda (_%subtype-t131187%_)
                            (let ((_%$e131189%_
                                   (##vector-ref
                                    __subtype-class
                                    _%st131160%_)))
                              (if _%$e131189%_
                                  _%$e131189%_
                                  (let ((_%klass131193%_
                                         (__system-class _%subtype-t131187%_)))
                                    (##vector-set!
                                     __subtype-class
                                     _%st131160%_
                                     _%klass131193%_)
                                    _%klass131193%_))))
                          _%$e131184%_)
                         (error '"unknown class"
                                'object:
                                _%obj131157%_
                                'subtype:
                                _%st131160%_)))))
              (##vector-set! __subtype-class _%st131160%_ _%klass131197%_)
              _%klass131197%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (eq? _%t131140%_ 'special)
                                      (lambda (_%obj131201%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (let ((_%x131204%_
                                               (##type-cast _%obj131201%_ '0)))
                                          (if (##fx> _%x131204%_ '0)
                                              (let ((_%$e131207%_
                                                     __char-class))
                                                (if _%$e131207%_
                                                    _%$e131207%_
                                                    (let ((_%klass131211%_
                                                           (__system-class
                                                            'char)))
                                                      (set! __char-class
                                                            _%klass131211%_)
                                                      _%klass131211%_)))
                                              (let* ((_%t131214%_
                                                      (##fx- _%x131204%_))
                                                     (_%$e131217%_
                                                      (##vector-ref
                                                       __special-class
                                                       _%t131214%_)))
                                                (if _%$e131217%_
                                                    _%$e131217%_
                                                    (let ((_%klass131235%_
                                                           (if (eq? _%obj131201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                       (__system-class 'null)
                       (if (eq? _%obj131201%_ '#f)
                           (__system-class 'false)
                           (if (eq? _%obj131201%_ '#t)
                               (__system-class 'true)
                               (if (eq? _%obj131201%_ '#!void)
                                   (__system-class 'void)
                                   (if (eq? _%obj131201%_ '#!eof)
                                       (__system-class 'eof)
                                       (if (eq? _%obj131201%_ '#!unbound)
                                           (__system-class 'unbound)
                                           (if (eq? _%obj131201%_ '#!unbound2)
                                               (__system-class 'unbound2)
                                               (if (eq? _%obj131201%_
                                                        '#!optional)
                                                   (__system-class 'optional)
                                                   (if (eq? _%obj131201%_
                                                            '#!rest)
                                                       (__system-class 'rest)
                                                       (if (eq? _%obj131201%_
                                                                '#!key)
                                                           (__system-class
                                                            'key)
                                                           (if (eq? _%obj131201%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (macro-unused-obj))
                       (__system-class 'unused)
                       (if (eq? _%obj131201%_ (macro-deleted-obj))
                           (__system-class 'deleted)
                           (if (eq? _%obj131201%_ (macro-absent-obj))
                               (__system-class 'absent)
                               (__system-class 'unknown))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (##vector-set! __special-class _%t131214%_ _%klass131235%_)
              _%klass131235%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t131140%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv131133%_ _%i131138%_ _%f131238%_))
                (_%loop131136%_
                 (let () (declare (not safe)) (##fx+ _%i131138%_ '1))))
              _%cv131133%_))))
    (define type-of
      (lambda (_%obj131127%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj131127%_)))))
    (define class-of
      (lambda (_%obj131118%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t131122%_ (##type _%obj131118%_))
                 (_%f131124%_ (##vector-ref __class-of _%t131122%_)))
            (_%f131124%_ _%obj131118%_)))))
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
      (lambda (_%id131112%_)
        (let ((_%$e131114%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id131112%_ '#f))))
          (if _%$e131114%_
              _%$e131114%_
              (error '"unknown system class" _%id131112%_)))))
    (define __make-system-class
      (lambda (_%id131014%_ _%super131015%_ _%properties131016%_)
        (let ((_%klass131110%_
               (let* ((_%id131018%_ _%id131014%_)
                      (_%name131021%_ _%id131014%_)
                      (_%direct-supers131024%_ _%super131015%_)
                      (_%direct-slots131027%_ '())
                      (_%properties131030%_
                       (cons (cons 'system: '#t)
                             (let ()
                               (declare (not safe))
                               (foldr__0 cons '() _%properties131016%_))))
                      (_%constructor131033%_ '#f))
                 (if (symbol? _%id131018%_)
                     (let ((_%id131038%_ _%id131018%_))
                       (if (symbol? _%name131021%_)
                           (let ((_%name131054%_ _%name131021%_))
                             (if (list? _%direct-supers131024%_)
                                 (let* ((_%direct-supers131064%_
                                         _%direct-supers131024%_)
                                        (_%direct-slots131074%_
                                         _%direct-slots131027%_)
                                        (_%properties131084%_
                                         _%properties131030%_))
                                   (if ((lambda (_%$obj131093%_)
                                          (or (not _%$obj131093%_)
                                              (symbol? _%$obj131093%_)))
                                        _%constructor131033%_)
                                       (let ((_%constructor131100%_
                                              _%constructor131033%_))
                                         (__make-class-type
                                          _%id131038%_
                                          _%name131054%_
                                          _%direct-supers131064%_
                                          _%direct-slots131074%_
                                          _%properties131084%_
                                          _%constructor131100%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          '(? (or not symbol?))
                                          'value:
                                          _%constructor131033%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'list?
                                    'value:
                                    _%direct-supers131024%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'symbol?
                              'value:
                              _%name131021%_)
                             '#!void)))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id131018%_)
                       '#!void)))))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id131014%_
             _%klass131110%_))
          _%klass131110%_)))))
