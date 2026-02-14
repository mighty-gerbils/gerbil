(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1771101395)
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
      (let ((_%flags135955%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties135956%_ '((direct-slots:) (system: . #t)))
            (_%slot-table135957%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags135955%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table135957%_
           _%properties135956%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots135912%_
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
             (_%slot-vector135914%_ (list->vector (cons '#f _%slots135912%_)))
             (_%slot-table135940%_
              (let ((_%slot-table135916%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp138982
                       (lambda (_%slot135918%_ _%field135919%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table135916%_
                            _%slot135918%_
                            _%field135919%_))
                         (let ((__tmp138983
                                (let ((_%sym135921%_ _%slot135918%_))
                                  (if (symbol? _%sym135921%_)
                                      (let ((_%sym135926%_ _%sym135921%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym135926%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym135921%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table135916%_
                            __tmp138983
                            _%field135919%_))))
                      (__tmp138980
                       (let ((__tmp138981
                              (let ()
                                (declare (not safe))
                                (##length _%slots135912%_))))
                         (declare (not safe))
                         (##iota __tmp138981 '1))))
                  (declare (not safe))
                  (##for-each __tmp138982 _%slots135912%_ __tmp138980))
                _%slot-table135916%_))
             (_%flags135942%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields135948%_
              (list->vector
               (let ((__tmp138984
                      (map (lambda (_%g135943135945%_)
                             (list _%g135943135945%_ '5 '#f))
                           (drop _%slots135912%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp138984))))
             (_%properties135950%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots135912%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t135952%_
              (let ((__tmp138985 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags135942%_
                 ##type-type
                 _%fields135948%_
                 __tmp138985
                 _%slot-vector135914%_
                 _%slot-table135940%_
                 _%properties135950%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t135952%_ _%t135952%_))
        _%t135952%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags135908%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties135909%_ '((direct-slots:) (system: . #t)))
            (_%slot-table135910%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp138986 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags135908%_
           '#f
           '#()
           __tmp138986
           '#(#f)
           _%slot-table135910%_
           _%properties135909%_
           '#f
           '#f
           '#f
           '#f))))
    (define __class-type
      (lambda (_%klass135896%_)
        (let ((_%klass135899%_ _%klass135896%_))
          (declare (not safe))
          (##structure-type _%klass135899%_))))
    (define class-type
      (lambda (_%klass121181%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121181%_ 'class))
            (let ((_%klass121185%_ _%klass121181%_))
              (__class-type _%klass121185%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass121181%_)
              '#!void))))
    (define class-type?
      (lambda (_%obj135894%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj135894%_ 'class))))
    (define __class-type=?
      (lambda (_%x135873%_ _%y135874%_)
        (let* ((_%x135877%_ _%x135873%_) (_%y135885%_ _%y135874%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x135877%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y135885%_ '1 '#f '#f))))))
    (define class-type=?
      (lambda (_%x121315%_ _%y121316%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x121315%_ 'class))
            (let ((_%x121320%_ _%x121315%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y121316%_ 'class))
                  (let ((_%y121330%_ _%y121316%_))
                    (__class-type=? _%x121320%_ _%y121330%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y121316%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x121315%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type135861%_)
        (let* ((_%type135864%_ _%type135861%_)
               (__tmp138987
                (let ((__tmp138988
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type135864%_))))
                  (declare (not safe))
                  (##fxand __tmp138988 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp138987 type-flag-opaque))))
    (define type-opaque?
      (lambda (_%type121762%_)
        (if (let () (declare (not safe)) (##type? _%type121762%_))
            (let ((_%type121766%_ _%type121762%_))
              (__type-opaque? _%type121766%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type121762%_)
              '#!void))))
    (define __class-type-opaque?
      (lambda (_%klass135849%_)
        (let* ((_%klass135852%_ _%klass135849%_)
               (__tmp138989
                (let ((__tmp138990
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass135852%_))))
                  (declare (not safe))
                  (##fxand __tmp138990 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp138989 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass121896%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121896%_ 'class))
            (let ((_%klass121900%_ _%klass121896%_))
              (__class-type-opaque? _%klass121900%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass121896%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type135837%_)
        (let* ((_%type135840%_ _%type135837%_)
               (__tmp138991
                (let ((__tmp138992
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type135840%_))))
                  (declare (not safe))
                  (##fxand __tmp138992 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp138991 type-flag-extensible))))
    (define type-extensible?
      (lambda (_%type122030%_)
        (if (let () (declare (not safe)) (##type? _%type122030%_))
            (let ((_%type122034%_ _%type122030%_))
              (__type-extensible? _%type122034%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type122030%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type135825%_)
        (let* ((_%type135828%_ _%type135825%_)
               (__tmp138993
                (let ((__tmp138994
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type135828%_))))
                  (declare (not safe))
                  (##fxand __tmp138994 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp138993 '0))))
    (define class-type-final?
      (lambda (_%type122164%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type122164%_ 'class))
            (let ((_%type122168%_ _%type122164%_))
              (__class-type-final? _%type122168%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type122164%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass135813%_)
        (let* ((_%klass135816%_ _%klass135813%_)
               (__tmp138995
                (let ((__tmp138996
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass135816%_))))
                  (declare (not safe))
                  (##fxand __tmp138996 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp138995 class-type-flag-struct))))
    (define class-type-struct?
      (lambda (_%klass122298%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122298%_ 'class))
            (let ((_%klass122302%_ _%klass122298%_))
              (__class-type-struct? _%klass122302%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass122298%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass135801%_)
        (let* ((_%klass135804%_ _%klass135801%_)
               (__tmp138997
                (let ((__tmp138998
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass135804%_))))
                  (declare (not safe))
                  (##fxand __tmp138998 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp138997 class-type-flag-sealed))))
    (define class-type-sealed?
      (lambda (_%klass122432%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122432%_ 'class))
            (let ((_%klass122436%_ _%klass122432%_))
              (__class-type-sealed? _%klass122436%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass122432%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass135789%_)
        (let* ((_%klass135792%_ _%klass135789%_)
               (__tmp138999
                (let ((__tmp139000
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass135792%_))))
                  (declare (not safe))
                  (##fxand __tmp139000 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp138999 class-type-flag-metaclass))))
    (define class-type-metaclass?
      (lambda (_%klass122566%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122566%_ 'class))
            (let ((_%klass122570%_ _%klass122566%_))
              (__class-type-metaclass? _%klass122570%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass122566%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass135777%_)
        (let* ((_%klass135780%_ _%klass135777%_)
               (__tmp139001
                (let ((__tmp139002
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass135780%_))))
                  (declare (not safe))
                  (##fxand __tmp139002 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp139001 class-type-flag-system))))
    (define class-type-system?
      (lambda (_%klass122700%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122700%_ 'class))
            (let ((_%klass122704%_ _%klass122700%_))
              (__class-type-system? _%klass122704%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass122700%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass135765%_)
        (let* ((_%klass135768%_ _%klass135765%_)
               (__tmp139003
                (let ((__tmp139004
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass135768%_))))
                  (declare (not safe))
                  (##fxand __tmp139004 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp139003 class-type-flag-acyclic))))
    (define class-type-acyclic?
      (lambda (_%klass122834%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122834%_ 'class))
            (let ((_%klass122838%_ _%klass122834%_))
              (__class-type-acyclic? _%klass122838%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass122834%_)
              '#!void))))
    (define make-class-type-descriptor
      (lambda (_%type-id135572%_
               _%type-name135573%_
               _%type-super135574%_
               _%precedence-list135575%_
               _%slot-vector135576%_
               _%properties135577%_
               _%constructor135578%_
               _%slot-table135579%_
               _%methods135580%_)
        (letrec ((_%make-props!135583%_
                  (lambda (_%key135715%_)
                    (letrec* ((_%ht135717%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!135718%_
                               (lambda (_%ht135758%_ _%slots135759%_)
                                 (for-each
                                  (lambda (_%g135760135762%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht135758%_
                                       _%g135760135762%_
                                       '#t)))
                                  _%slots135759%_)))
                              (_%put-alist!135719%_
                               (lambda (_%ht135747%_
                                        _%key135748%_
                                        _%alist135749%_)
                                 (let ((_%$e135751%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key135748%_
                                           _%alist135749%_))))
                                   (if _%$e135751%_
                                       ((lambda (_%g135753135755%_)
                                          (_%put-slots!135718%_
                                           _%ht135747%_
                                           _%g135753135755%_))
                                        _%$e135751%_)
                                       '#!void)))))
                      (_%put-alist!135719%_
                       _%ht135717%_
                       _%key135715%_
                       _%properties135577%_)
                      (for-each
                       (lambda (_%mixin135721%_)
                         (let ((_%alist135723%_
                                (##structure-ref
                                 _%mixin135721%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist135723%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key135715%_
                                           _%alist135723%_))))
                               (_%put-slots!135718%_
                                _%ht135717%_
                                (let ((_%klass135728%_ _%mixin135721%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass135728%_
                                         'class))
                                      (let ((_%klass135733%_ _%klass135728%_))
                                        (__class-type-slot-list
                                         _%klass135733%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass135728%_)
                                        '#!void))))
                               (_%put-alist!135719%_
                                _%ht135717%_
                                _%key135715%_
                                _%alist135723%_))))
                       _%precedence-list135575%_)
                      _%ht135717%_))))
          (let* ((_%transparent?135585%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties135577%_)))
                 (_%all-slots-printable?135590%_
                  (let ((_%$e135587%_ _%transparent?135585%_))
                    (if _%$e135587%_
                        _%$e135587%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties135577%_))))))
                 (_%printable135592%_
                  (if (not _%all-slots-printable?135590%_)
                      (_%make-props!135583%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?135597%_
                  (let ((_%$e135594%_ _%transparent?135585%_))
                    (if _%$e135594%_
                        _%$e135594%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties135577%_))))))
                 (_%equalable135599%_
                  (if (not _%all-slots-equalable?135597%_)
                      (_%make-props!135583%_ 'equal:)
                      '#f))
                 (_%first-new-field135601%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super135574%_ 'class))
                      (let ((__tmp139005
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super135574%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp139005))
                      '1))
                 (_%field-info-length135603%_
                  (let ((__tmp139006
                         (let ((__tmp139007
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector135576%_))))
                           (declare (not safe))
                           (##fx- __tmp139007 _%first-new-field135601%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp139006)))
                 (_%field-info135605%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length135603%_ '#f)))
                 (_%struct?135607%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties135577%_)))
                 (_%final?135609%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties135577%_)))
                 (_%metaclass135616%_
                  (let ((_%metaclass135610135612%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties135577%_))))
                    (if _%metaclass135610135612%_
                        (let ((_%metaclass135614%_ _%metaclass135610135612%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass135614%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id135572%_
                                     'metaclass:
                                     _%metaclass135614%_))
                          _%metaclass135614%_)
                        '#f)))
                 (_%system?135618%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties135577%_)))
                 (_%opaque?135657%_
                  (if (or _%transparent?135585%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties135577%_)))
                      '#f
                      (let ((_%$e135623%_ (not _%type-super135574%_)))
                        (if _%$e135623%_
                            _%$e135623%_
                            (let ((_%type135626%_ _%type-super135574%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##type? _%type135626%_))
                                  (let ((_%type135631%_ _%type135626%_))
                                    (__type-opaque? _%type135631%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     '##type?
                                     'value:
                                     _%type135626%_)
                                    '#!void)))))))
                 (_%acyclic?135659%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties135577%_)))
                 (_%type-flags135661%_
                  (let ((__tmp139013
                         (if _%final?135609%_ '0 type-flag-extensible))
                        (__tmp139012
                         (if _%opaque?135657%_ type-flag-opaque '0))
                        (__tmp139011
                         (if _%struct?135607%_ class-type-flag-struct '0))
                        (__tmp139010
                         (if _%metaclass135616%_ class-type-flag-metaclass '0))
                        (__tmp139009
                         (if _%system?135618%_ class-type-flag-system '0))
                        (__tmp139008
                         (if _%acyclic?135659%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp139013
                             __tmp139012
                             __tmp139011
                             __tmp139010
                             __tmp139009
                             __tmp139008)))
                 (_%precedence-list135669%_
                  (let ((_%$e135663%_ (memq t::t _%precedence-list135575%_)))
                    (if _%$e135663%_
                        ((lambda (_%tail135666%_)
                           (if (null? (cdr _%tail135666%_))
                               _%precedence-list135575%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list135575%_)))
                         _%$e135663%_)
                        (let ((__tmp139014 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list135575%_ __tmp139014))))))
            (let _%loop135672%_ ((_%i135674%_ _%first-new-field135601%_)
                                 (_%j135675%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j135675%_ _%field-info-length135603%_))
                  (let* ((_%slot135677%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector135576%_ _%i135674%_)))
                         (_%flags135685%_
                          (if _%transparent?135585%_
                              '0
                              (let ((__tmp139016
                                     (if (or _%all-slots-printable?135590%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable135592%_
                                                _%slot135677%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp139015
                                     (if (or _%all-slots-equalable?135597%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable135599%_
                                                _%slot135677%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp139016 __tmp139015)))))
                    (vector-set!
                     _%field-info135605%_
                     _%j135675%_
                     _%slot135677%_)
                    (vector-set!
                     _%field-info135605%_
                     (let () (declare (not safe)) (##fx+ _%j135675%_ '1))
                     _%flags135685%_)
                    (_%loop135672%_
                     (let () (declare (not safe)) (##fx+ _%i135674%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j135675%_ '3))))
                  '#!void))
            (if _%metaclass135616%_
                (let ((_%val135712%_
                       (let* ((_%klass135688%_ _%metaclass135616%_)
                              (_%args135691%_
                               (list _%type-id135572%_
                                     _%type-name135573%_
                                     _%type-flags135661%_
                                     _%type-super135574%_
                                     _%field-info135605%_
                                     _%precedence-list135669%_
                                     _%slot-vector135576%_
                                     _%slot-table135579%_
                                     _%properties135577%_
                                     _%constructor135578%_
                                     _%methods135580%_)))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%klass135688%_
                                'class))
                             (let ((_%klass135696%_ _%klass135688%_))
                               (declare (not safe))
                               (##apply __make-instance
                                        _%klass135696%_
                                        _%args135691%_))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%klass135688%_)
                               '#!void)))))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val135712%_ 'class))
                      _%val135712%_
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         '"\"gerbil/runtime/mop.ss\"@283.10-287.95"
                         'contract:
                         '(class-type? val)
                         'value:
                         _%val135712%_)
                        '#!void)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id135572%_
                   _%type-name135573%_
                   _%type-flags135661%_
                   _%type-super135574%_
                   _%field-info135605%_
                   _%precedence-list135669%_
                   _%slot-vector135576%_
                   _%slot-table135579%_
                   _%properties135577%_
                   _%constructor135578%_
                   _%methods135580%_
                   '#f
                   '#f)))))))
    (define class-type-id
      (lambda (_%klass135570%_)
        (##structure-ref _%klass135570%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass135568%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass135568%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass135565%_ _%val135566%_)
        (##structure-set! _%klass135565%_ _%val135566%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass135560%_ _%val135562%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135560%_
           _%val135562%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass135558%_)
        (##structure-ref _%klass135558%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass135556%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass135556%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass135553%_ _%val135554%_)
        (##structure-set! _%klass135553%_ _%val135554%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass135548%_ _%val135550%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135548%_
           _%val135550%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass135546%_)
        (##structure-ref _%klass135546%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass135544%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass135544%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass135541%_ _%val135542%_)
        (##structure-set! _%klass135541%_ _%val135542%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass135536%_ _%val135538%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135536%_
           _%val135538%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass135534%_)
        (##structure-ref _%klass135534%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass135532%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass135532%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass135529%_ _%val135530%_)
        (##structure-set! _%klass135529%_ _%val135530%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass135524%_ _%val135526%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135524%_
           _%val135526%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass135522%_)
        (##structure-ref _%klass135522%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass135520%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass135520%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass135517%_ _%val135518%_)
        (##structure-set! _%klass135517%_ _%val135518%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass135512%_ _%val135514%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135512%_
           _%val135514%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass135510%_)
        (##structure-ref _%klass135510%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass135508%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass135508%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass135505%_ _%val135506%_)
        (##structure-set!
         _%klass135505%_
         _%val135506%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass135500%_ _%val135502%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135500%_
           _%val135502%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass135498%_)
        (##structure-ref _%klass135498%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass135496%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass135496%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass135493%_ _%val135494%_)
        (##structure-set!
         _%klass135493%_
         _%val135494%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass135488%_ _%val135490%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135488%_
           _%val135490%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass135486%_)
        (##structure-ref _%klass135486%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass135484%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass135484%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass135481%_ _%val135482%_)
        (##structure-set!
         _%klass135481%_
         _%val135482%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass135476%_ _%val135478%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135476%_
           _%val135478%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass135474%_)
        (##structure-ref _%klass135474%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass135472%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass135472%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass135469%_ _%val135470%_)
        (##structure-set!
         _%klass135469%_
         _%val135470%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass135464%_ _%val135466%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135464%_
           _%val135466%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass135462%_)
        (##structure-ref _%klass135462%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass135460%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass135460%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass135457%_ _%val135458%_)
        (##structure-set!
         _%klass135457%_
         _%val135458%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass135452%_ _%val135454%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135452%_
           _%val135454%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass135450%_)
        (##structure-ref _%klass135450%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass135448%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass135448%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass135445%_ _%val135446%_)
        (##structure-set!
         _%klass135445%_
         _%val135446%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass135440%_ _%val135442%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135440%_
           _%val135442%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass135438%_)
        (##structure-ref _%klass135438%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass135436%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass135436%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass135433%_ _%val135434%_)
        (##structure-set!
         _%klass135433%_
         _%val135434%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass135428%_ _%val135430%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135428%_
           _%val135430%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass135426%_)
        (##structure-ref _%klass135426%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass135424%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass135424%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass135421%_ _%val135422%_)
        (##structure-set!
         _%klass135421%_
         _%val135422%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass135416%_ _%val135418%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass135416%_
           _%val135418%_
           '13
           class::t
           'interface))))
    (define type-field-list
      (lambda (_%type135127%_)
        (letrec ((_%__fields->list135257%_
                  (lambda (_%fields135365%_ _%r135366%_)
                    (let* ((_%fields135369%_ _%fields135365%_)
                           (_%r135377%_ _%r135366%_)
                           (_%fields-len135386%_
                            (let ()
                              (declare (not safe))
                              (##vector-length _%fields135369%_))))
                      (let _%loop135388%_ ((_%i135390%_ '0)
                                           (_%r135391%_ _%r135377%_))
                        (let* ((_%i135394%_ _%i135390%_)
                               (_%r135407%_ _%r135391%_))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i135394%_ _%fields-len135386%_))
                              (_%loop135388%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i135394%_ '3))
                               (cons (vector-ref _%fields135369%_ _%i135394%_)
                                     _%r135407%_))
                              _%r135407%_))))))
                 (_%fields->list135258%_
                  (lambda (_%fields135344%_ _%r135345%_)
                    (let* ((_%fields135348%_ _%fields135344%_)
                           (_%r135356%_ _%r135345%_))
                      (_%__fields->list135257%_
                       _%fields135348%_
                       _%r135356%_)))))
          (let _%loop135260%_ ((_%type135262%_ _%type135127%_)
                               (_%r135263%_ '()))
            (let ((_%r135266%_ _%r135263%_))
              (if (let () (declare (not safe)) (##type? _%type135262%_))
                  (if (eq? _%type135262%_ ##type-type)
                      (reverse! _%r135266%_)
                      (let ((_%$e135278%_
                             (let ()
                               (declare (not safe))
                               (##type-super _%type135262%_))))
                        (if _%$e135278%_
                            ((lambda (_%super135281%_)
                               (_%loop135260%_
                                _%super135281%_
                                (let* ((_%fields135284%_
                                        (let ()
                                          (declare (not safe))
                                          (##type-fields _%type135262%_)))
                                       (_%r135287%_ _%r135266%_)
                                       (_%fields135291%_ _%fields135284%_)
                                       (_%r135307%_ _%r135287%_))
                                  (_%__fields->list135257%_
                                   _%fields135291%_
                                   _%r135307%_))))
                             _%$e135278%_)
                            (reverse!
                             (let* ((_%fields135317%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-fields _%type135262%_)))
                                    (_%r135320%_ _%r135266%_)
                                    (_%fields135324%_ _%fields135317%_)
                                    (_%r135334%_ _%r135320%_))
                               (_%__fields->list135257%_
                                _%fields135324%_
                                _%r135334%_))))))
                  (reverse! _%r135266%_)))))))
    (define __class-type-slot-list
      (lambda (_%klass135115%_)
        (let ((_%klass135118%_ _%klass135115%_))
          (vector->list
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass135118%_ '7 '#f '#f))
           '1))))
    (define class-type-slot-list
      (lambda (_%klass123358%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123358%_ 'class))
            (let ((_%klass123362%_ _%klass123358%_))
              (__class-type-slot-list _%klass123362%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@370.29-370.34"
               'contract:
               'class-type?
               'value:
               _%klass123358%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass135103%_)
        (let* ((_%klass135106%_ _%klass135103%_)
               (__tmp139017
                (let ((__tmp139018
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass135106%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp139018))))
          (declare (not safe))
          (##fx- __tmp139017 '1))))
    (define class-type-field-count
      (lambda (_%klass123492%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123492%_ 'class))
            (let ((_%klass123496%_ _%klass123492%_))
              (__class-type-field-count _%klass123496%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@372.31-372.36"
               'contract:
               'class-type?
               'value:
               _%klass123492%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass135091%_)
        (let ((_%klass135094%_ _%klass135091%_))
          (let ((__tmp139019
                 (let ((__tmp139020
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass135094%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp139020))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass135094%_
             __tmp139019
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define class-type-seal!
      (lambda (_%klass123626%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123626%_ 'class))
            (let ((_%klass123630%_ _%klass123626%_))
              (__class-type-seal! _%klass123630%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@375.25-375.30"
               'contract:
               'class-type?
               'value:
               _%klass123626%_)
              '#!void))))
    (define __class-type-printable-slots
      (lambda (_%klass135024%_)
        (let ((_%klass135027%_ _%klass135024%_))
          (letrec ((_%get-field-vector135036%_
                    (lambda (_%type135075%_)
                      (let _%loop135077%_ ((_%type135079%_ _%type135075%_))
                        (let* ((_%fields135081%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type135079%_)))
                               (_%$e135083%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type135079%_))))
                          (if _%$e135083%_
                              ((lambda (_%super135086%_)
                                 (let ((_%super-fields135088%_
                                        (_%loop135077%_ _%super135086%_)))
                                   (vector-append
                                    _%super-fields135088%_
                                    _%fields135081%_)))
                               _%$e135083%_)
                              _%fields135081%_)))))
                   (_%get-printable-slot-alist135037%_
                    (lambda (_%type135058%_)
                      (let* ((_%fields135060%_
                              (_%get-field-vector135036%_ _%type135058%_))
                             (_%count135062%_
                              (vector-length _%fields135060%_)))
                        (let _%loop135065%_ ((_%i135067%_ '3)
                                             (_%offset135068%_ '1)
                                             (_%r135069%_ '()))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i135067%_ _%count135062%_))
                              (let ((_%slot-name135071%_
                                     (vector-ref _%fields135060%_ _%i135067%_))
                                    (_%slot-flags135072%_
                                     (vector-ref
                                      _%fields135060%_
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%i135067%_ '1))))
                                    (_%next-i135073%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i135067%_ '2))))
                                (if (let ((__tmp139021
                                           (let ()
                                             (declare (not safe))
                                             (##fxand _%slot-flags135072%_
                                                      '1))))
                                      (declare (not safe))
                                      (##fx= __tmp139021 '0))
                                    (_%loop135065%_
                                     _%next-i135073%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset135068%_ '1))
                                     _%r135069%_)
                                    (_%loop135065%_
                                     _%next-i135073%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset135068%_ '1))
                                     (cons (cons _%slot-name135071%_
                                                 _%offset135068%_)
                                           _%r135069%_))))
                              (reverse! _%r135069%_))))))
                   (_%get-printable-slots!135038%_
                    (lambda (_%klass135053%_ _%type135054%_)
                      (let ((_%printable135056%_
                             (_%get-printable-slot-alist135037%_
                              _%type135054%_)))
                        (##structure-set!
                         _%klass135053%_
                         (cons (cons 'printable-slots: _%printable135056%_)
                               (##structure-ref
                                _%klass135053%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%printable135056%_))))
            (let* ((_%props135040%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass135027%_ '9 '#f '#f)))
                   (_%$e135042%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'printable-slots: _%props135040%_))))
              (if _%$e135042%_
                  _%$e135042%_
                  (let ((_%$e135045%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props135040%_))))
                    (if _%$e135045%_
                        ((lambda (_%g135047135049%_)
                           (_%get-printable-slots!135038%_
                            _%klass135027%_
                            _%g135047135049%_))
                         _%$e135045%_)
                        (_%get-printable-slots!135038%_
                         _%klass135027%_
                         _%klass135027%_)))))))))
    (define class-type-printable-slots
      (lambda (_%klass123760%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123760%_ 'class))
            (let ((_%klass123764%_ _%klass123760%_))
              (__class-type-printable-slots _%klass123764%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@382.35-382.40"
               'contract:
               'class-type?
               'value:
               _%klass123760%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct134993%_ _%maybe-super-struct134994%_)
        (let* ((_%maybe-sub-struct134997%_ _%maybe-sub-struct134993%_)
               (_%maybe-super-struct135005%_ _%maybe-super-struct134994%_)
               (_%maybe-super-struct-id135014%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct135005%_))))
          (let _%lp135016%_ ((_%super-struct135018%_
                              _%maybe-sub-struct134997%_))
            (if (not _%super-struct135018%_)
                '#f
                (if (eq? _%maybe-super-struct-id135014%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct135018%_)))
                    '#t
                    (_%lp135016%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct135018%_)))))))))
    (define substruct?
      (lambda (_%maybe-sub-struct123894%_ _%maybe-super-struct123895%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct123894%_ 'class))
            (let ((_%maybe-sub-struct123899%_ _%maybe-sub-struct123894%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct123895%_
                     'class))
                  (let ((_%maybe-super-struct123909%_
                         _%maybe-super-struct123895%_))
                    (__substruct?
                     _%maybe-sub-struct123899%_
                     _%maybe-super-struct123909%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@428.47-428.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct123895%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@428.19-428.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct123894%_)
              '#!void))))
    (define base-struct/1
      (lambda (_%klass134971%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134971%_ 'class))
            (if (let* ((_%klass134974%_ _%klass134971%_)
                       (_%klass134979%_ _%klass134974%_))
                  (__class-type-struct? _%klass134979%_))
                _%klass134971%_
                (let () (declare (not safe)) (##type-super _%klass134971%_)))
            (if (not _%klass134971%_)
                '#f
                (error '"not a class or false" _%klass134971%_)))))
    (define base-struct/2
      (lambda (_%klass1134894%_ _%klass2134895%_)
        (let ((_%s1134897%_ (base-struct/1 _%klass1134894%_))
              (_%s2134898%_ (base-struct/1 _%klass2134895%_)))
          (if (or (not _%s1134897%_)
                  (and _%s2134898%_
                       (let* ((_%maybe-sub-struct134903%_ _%s1134897%_)
                              (_%maybe-super-struct134906%_ _%s2134898%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%maybe-sub-struct134903%_
                                'class))
                             (let ((_%maybe-sub-struct134911%_
                                    _%maybe-sub-struct134903%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%maybe-super-struct134906%_
                                      'class))
                                   (let ((_%maybe-super-struct134925%_
                                          _%maybe-super-struct134906%_))
                                     (__substruct?
                                      _%maybe-sub-struct134911%_
                                      _%maybe-super-struct134925%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%maybe-super-struct134906%_)
                                     '#!void)))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%maybe-sub-struct134903%_)
                               '#!void)))))
              _%s2134898%_
              (if (or (not _%s2134898%_)
                      (and _%s1134897%_
                           (let* ((_%maybe-sub-struct134939%_ _%s2134898%_)
                                  (_%maybe-super-struct134942%_ _%s1134897%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%maybe-sub-struct134939%_
                                    'class))
                                 (let ((_%maybe-sub-struct134947%_
                                        _%maybe-sub-struct134939%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%maybe-super-struct134942%_
                                          'class))
                                       (let ((_%maybe-super-struct134959%_
                                              _%maybe-super-struct134942%_))
                                         (__substruct?
                                          _%maybe-sub-struct134947%_
                                          _%maybe-super-struct134959%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          'class-type?
                                          'value:
                                          _%maybe-super-struct134942%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'class-type?
                                    'value:
                                    _%maybe-sub-struct134939%_)
                                   '#!void)))))
                  _%s1134897%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1134894%_
                         _%klass2134895%_
                         _%s1134897%_
                         _%s2134898%_))))))
    (define base-struct/list
      (lambda (_%all-supers134779%_)
        (let* ((_%all-supers134780134805%_ _%all-supers134779%_)
               (_%E134785134809%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers134780134805%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K134803134891%_ (lambda () '#f))
                (_%K134800134877%_
                 (lambda (_%x134875%_) (base-struct/1 _%x134875%_)))
                (_%K134795134854%_
                 (lambda (_%y134851%_ _%x134852%_)
                   (base-struct/2 _%x134852%_ _%y134851%_)))
                (_%K134786134816%_
                 (lambda (_%y134813%_ _%x134814%_)
                   (let ()
                     (declare (not safe))
                     (foldr__0 base-struct/2 _%x134814%_ _%y134813%_)))))
            (let* ((_%__match137794137795%_
                    (lambda (_%hd134787134819%_ _%tl134788134821%_)
                      (let ((_%x134824%_ _%hd134787134819%_))
                        (letrec ((_%splice-rest134790134826%_
                                  (lambda (_%rest134794134833%_ _%y134835%_)
                                    (if (null? _%rest134794134833%_)
                                        (_%K134786134816%_
                                         _%y134835%_
                                         _%x134824%_)
                                        (_%E134785134809%_))))
                                 (_%splice-try134792134828%_
                                  (lambda (_%hd134793134837%_
                                           _%rest134794134839%_
                                           _%y134789134840%_)
                                    (let ((_%y134842%_ _%hd134793134837%_))
                                      (_%splice-loop134791134830%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest134794134839%_))
                                       (cons _%y134842%_ _%y134789134840%_)))))
                                 (_%splice-loop134791134830%_
                                  (lambda (_%rest134794134844%_
                                           _%y134789134845%_)
                                    (if (pair? _%rest134794134844%_)
                                        (_%splice-try134792134828%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest134794134844%_))
                                         _%rest134794134844%_
                                         _%y134789134845%_)
                                        (_%splice-rest134790134826%_
                                         _%rest134794134844%_
                                         (reverse _%y134789134845%_))))))
                          (_%splice-loop134791134830%_
                           _%tl134788134821%_
                           '())))))
                   (_%try-match134782134887%_
                    (lambda ()
                      (if (pair? _%all-supers134780134805%_)
                          (let ((_%tl134802134882%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers134780134805%_)))
                                (_%hd134801134880%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers134780134805%_))))
                            (if (null? _%tl134802134882%_)
                                (let ((_%x134885%_ _%hd134801134880%_))
                                  (base-struct/1 _%x134885%_))
                                (if (pair? _%tl134802134882%_)
                                    (let ((_%tl134799134866%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl134802134882%_)))
                                          (_%hd134798134864%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl134802134882%_))))
                                      (if (null? _%tl134799134866%_)
                                          (let ((_%x134862%_
                                                 _%hd134801134880%_)
                                                (_%y134869%_
                                                 _%hd134798134864%_))
                                            (_%K134795134854%_
                                             _%y134869%_
                                             _%x134862%_))
                                          (_%__match137794137795%_
                                           _%hd134801134880%_
                                           _%tl134802134882%_)))
                                    (_%__match137794137795%_
                                     _%hd134801134880%_
                                     _%tl134802134882%_))))
                          (_%E134785134809%_)))))
              (if (null? _%all-supers134780134805%_)
                  (_%K134803134891%_)
                  (_%try-match134782134887%_)))))))
    (define base-struct
      (lambda _%all-supers134777%_ (base-struct/list _%all-supers134777%_)))
    (define find-super-constructor
      (lambda (_%super134728%_)
        (let _%lp134730%_ ((_%rest134732%_ _%super134728%_)
                           (_%constructor134733%_ '#f))
          (let* ((_%rest134734134742%_ _%rest134732%_)
                 (_%else134736134750%_ (lambda () _%constructor134733%_))
                 (_%K134738134765%_
                  (lambda (_%rest134753%_ _%hd134754%_)
                    (let ((_%$e134756%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd134754%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e134756%_
                          ((lambda (_%xconstructor134759%_)
                             (if (or (not _%constructor134733%_)
                                     (eq? _%constructor134733%_
                                          _%xconstructor134759%_))
                                 (_%lp134730%_
                                  _%rest134753%_
                                  _%xconstructor134759%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor134733%_
                                        _%xconstructor134759%_)))
                           _%$e134756%_)
                          (_%lp134730%_
                           _%rest134753%_
                           _%constructor134733%_))))))
            (if (pair? _%rest134734134742%_)
                (let ((_%hd134739134768%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest134734134742%_)))
                      (_%tl134740134770%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest134734134742%_))))
                  (let* ((_%hd134773%_ _%hd134739134768%_)
                         (_%rest134775%_ _%tl134740134770%_))
                    (_%K134738134765%_ _%rest134775%_ _%hd134773%_)))
                (_%else134736134750%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list134684%_ _%direct-slots134685%_)
        (let* ((_%next-slot134687%_ '1)
               (_%slot-table134689%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots134691%_ '(__class))
               (_%process-slot134715%_
                (lambda (_%slot134693%_)
                  (if (symbol? _%slot134693%_)
                      '#!void
                      (error '"invalid slot name" _%slot134693%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table134689%_
                              _%slot134693%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table134689%_
                           _%slot134693%_
                           _%next-slot134687%_))
                        (let ((__tmp139022
                               (let ((_%sym134695%_ _%slot134693%_))
                                 (if (symbol? _%sym134695%_)
                                     (let ((_%sym134700%_ _%sym134695%_))
                                       (declare (not safe))
                                       (__symbol->keyword _%sym134700%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/mop
                                        'contract:
                                        'symbol?
                                        'value:
                                        _%sym134695%_)
                                       '#!void)))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table134689%_
                           __tmp139022
                           _%next-slot134687%_))
                        (set! _%r-slots134691%_
                              (cons _%slot134693%_ _%r-slots134691%_))
                        (set! _%next-slot134687%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot134687%_ '1))))
                      '#!void)))
               (_%process-slots134721%_
                (lambda (_%g134716134718%_)
                  (for-each _%process-slot134715%_ _%g134716134718%_))))
          (let ((__tmp139024
                 (lambda (_%mixin134724%_)
                   (_%process-slots134721%_
                    (let ((__tmp139025
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin134724%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp139025 '())))))
                (__tmp139023 (reverse _%class-precedence-list134684%_)))
            (declare (not safe))
            (##for-each __tmp139024 __tmp139023))
          (_%process-slots134721%_ _%direct-slots134685%_)
          (let ((_%slot-vector134726%_
                 (list->vector
                  (let ()
                    (declare (not safe))
                    (##reverse _%r-slots134691%_)))))
            (values _%slot-vector134726%_ _%slot-table134689%_)))))
    (define __make-class-type
      (lambda (_%id134511%_
               _%name134512%_
               _%direct-supers134513%_
               _%direct-slots134514%_
               _%properties134515%_
               _%constructor134516%_)
        (let* ((_%id134519%_ _%id134511%_)
               (_%name134527%_ _%name134512%_)
               (_%direct-supers134535%_ _%direct-supers134513%_)
               (_%direct-slots134543%_ _%direct-slots134514%_)
               (_%properties134551%_ _%properties134515%_)
               (_%constructor134559%_ _%constructor134516%_))
          (let ((_%$e134593%_
                 (let* ((_%pred134571%_
                         (lambda (_%$obj134568%_)
                           (not (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%$obj134568%_
                                   'class)))))
                        (_%lst134574%_ _%direct-supers134535%_)
                        (_%pred134579%_ _%pred134571%_))
                   (declare (not safe))
                   (__find _%pred134579%_ _%lst134574%_))))
            (if _%$e134593%_
                ((lambda (_%g134595134597%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g134595134597%_))
                 _%$e134593%_)
                (let ((_%$e134620%_
                       (let* ((_%pred134600%_ __class-type-final?)
                              (_%lst134603%_ _%direct-supers134535%_)
                              (_%pred134608%_ _%pred134600%_))
                         (declare (not safe))
                         (__find _%pred134608%_ _%lst134603%_))))
                  (if _%$e134620%_
                      ((lambda (_%g134622134624%_)
                         (error '"Cannot extend final class"
                                _%g134622134624%_))
                       _%$e134620%_)
                      '#!void))))
          (let ((_g139026_ (compute-precedence-list _%direct-supers134535%_)))
            (begin
              (let ((_g139027_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g139026_)
                           (##values-length _g139026_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g139027_ 2)))
                    (error "Context expects 2 values" _g139027_)))
              (let ((_%precedence-list134627%_
                     (let () (declare (not safe)) (##values-ref _g139026_ 0)))
                    (_%struct-super134628%_
                     (let () (declare (not safe)) (##values-ref _g139026_ 1))))
                (let ((_g139028_
                       (compute-class-slots
                        _%precedence-list134627%_
                        _%direct-slots134543%_)))
                  (begin
                    (let ((_g139029_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g139028_)
                                 (##values-length _g139028_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g139029_ 2)))
                          (error "Context expects 2 values" _g139029_)))
                    (let ((_%slot-vector134630%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g139028_ 0)))
                          (_%slot-table134631%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g139028_ 1))))
                      (let* ((_%properties134633%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots134543%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers134535%_)
                                          _%properties134551%_)))
                             (_%constructor*134638%_
                              (let ((_%$e134635%_ _%constructor134559%_))
                                (if _%$e134635%_
                                    _%$e134635%_
                                    (find-super-constructor
                                     _%direct-supers134535%_))))
                             (_%precedence-list134681%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties134633%_))
                                      (memq object::t
                                            _%precedence-list134627%_))
                                  _%precedence-list134627%_
                                  (let _%loop134643%_ ((_%tail134645%_
                                                        _%precedence-list134627%_)
                                                       (_%head134646%_ '()))
                                    (let* ((_%tail134647134655%_
                                            _%tail134645%_)
                                           (_%else134649134663%_
                                            (lambda ()
                                              (let ((__tmp139030
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp139030
                                                 _%head134646%_))))
                                           (_%K134651134669%_
                                            (lambda (_%rest134666%_
                                                     _%hd134667%_)
                                              (if (eq? _%hd134667%_ t::t)
                                                  (let ((__tmp139031
                                                         (cons object::t
                                                               _%tail134645%_)))
                                                    (declare (not safe))
                                                    (foldl__0
                                                     cons
                                                     __tmp139031
                                                     _%head134646%_))
                                                  (_%loop134643%_
                                                   _%rest134666%_
                                                   (cons _%hd134667%_
                                                         _%head134646%_))))))
                                      (if (pair? _%tail134647134655%_)
                                          (let ((_%hd134652134672%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail134647134655%_)))
                                                (_%tl134653134674%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail134647134655%_))))
                                            (let* ((_%hd134677%_
                                                    _%hd134652134672%_)
                                                   (_%rest134679%_
                                                    _%tl134653134674%_))
                                              (_%K134651134669%_
                                               _%rest134679%_
                                               _%hd134677%_)))
                                          (_%else134649134663%_)))))))
                        (make-class-type-descriptor
                         _%id134519%_
                         _%name134527%_
                         _%struct-super134628%_
                         _%precedence-list134681%_
                         _%slot-vector134630%_
                         _%properties134633%_
                         _%constructor*134638%_
                         _%slot-table134631%_
                         '#f)))))))))))
    (define make-class-type
      (lambda (_%id124039%_
               _%name124040%_
               _%direct-supers124041%_
               _%direct-slots124042%_
               _%properties124043%_
               _%constructor124044%_)
        (if (symbol? _%id124039%_)
            (let ((_%id124048%_ _%id124039%_))
              (if (symbol? _%name124040%_)
                  (let ((_%name124058%_ _%name124040%_))
                    (if (list? _%direct-supers124041%_)
                        (let ((_%direct-supers124068%_
                               _%direct-supers124041%_))
                          (if (list? _%direct-slots124042%_)
                              (let ((_%direct-slots124078%_
                                     _%direct-slots124042%_))
                                (if (list? _%properties124043%_)
                                    (let ((_%properties124088%_
                                           _%properties124043%_))
                                      (if ((lambda (_%$obj124097%_)
                                             (or (not _%$obj124097%_)
                                                 (symbol? _%$obj124097%_)))
                                           _%constructor124044%_)
                                          (let ((_%constructor124104%_
                                                 _%constructor124044%_))
                                            (__make-class-type
                                             _%id124048%_
                                             _%name124058%_
                                             _%direct-supers124068%_
                                             _%direct-slots124078%_
                                             _%properties124088%_
                                             _%constructor124104%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@525.24-525.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor124044%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@524.24-524.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties124043%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@523.24-523.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots124042%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@522.24-522.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers124041%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@521.24-521.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name124040%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@520.24-520.26"
               'contract:
               'symbol?
               'value:
               _%id124039%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass134499%_)
        (let ((_%klass134502%_ _%klass134499%_))
          (cons _%klass134502%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass134502%_ '6 '#f '#f))))))
    (define class-precedence-list
      (lambda (_%klass124234%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124234%_ 'class))
            (let ((_%klass124238%_ _%klass124234%_))
              (__class-precedence-list _%klass124238%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@558.30-558.35"
               'contract:
               'class-type?
               'value:
               _%klass124234%_)
              '#!void))))
    (define compute-precedence-list
      (lambda (_%direct-supers134496%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers134496%_))))
    (define __make-class-predicate
      (lambda (_%klass134412%_)
        (let* ((_%klass134415%_ _%klass134412%_)
               (_%tid134424%_
                (let () (declare (not safe)) (##type-id _%klass134415%_))))
          (if (let* ((_%type134426%_ _%klass134415%_)
                     (_%type134431%_ _%type134426%_))
                (__class-type-final? _%type134431%_))
              (lambda (_%g134445134447%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g134445134447%_
                   _%tid134424%_)))
              (if (let* ((_%klass134450%_ _%klass134415%_)
                         (_%klass134455%_ _%klass134450%_))
                    (__class-type-struct? _%klass134455%_))
                  (lambda (_%g134465134467%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%g134465134467%_
                       _%tid134424%_)))
                  (lambda (_%g134470134472%_)
                    (let* ((_%klass134475%_ _%klass134415%_)
                           (_%obj134478%_ _%g134470134472%_)
                           (_%klass134483%_ _%klass134475%_))
                      (__class-instance? _%klass134483%_ _%obj134478%_))))))))
    (define make-class-predicate
      (lambda (_%klass124368%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124368%_ 'class))
            (let ((_%klass124372%_ _%klass124368%_))
              (__make-class-predicate _%klass124372%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@570.29-570.34"
               'contract:
               'class-type?
               'value:
               _%klass124368%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass134346%_ _%slot134347%_)
        (let* ((_%klass134350%_ _%klass134346%_)
               (_%slot134358%_ _%slot134347%_)
               (_%field134367%_
                (let ((__tmp139032
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass134350%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp139032 _%slot134358%_ '#f))))
          (if (not _%field134367%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass134350%_
                       'slot:
                       _%slot134358%_)
                '#!void)
              (if (let* ((_%type134371%_ _%klass134350%_)
                         (_%type134376%_ _%type134371%_))
                    (__class-type-final? _%type134376%_))
                  (make-final-slot-accessor
                   _%klass134350%_
                   _%slot134358%_
                   _%field134367%_)
                  (if (let* ((_%klass134391%_ _%klass134350%_)
                             (_%klass134396%_ _%klass134391%_))
                        (__class-type-struct? _%klass134396%_))
                      (make-struct-slot-accessor
                       _%klass134350%_
                       _%slot134358%_
                       _%field134367%_)
                      (if (let ((_%strukt134407%_
                                 (base-struct/1 _%klass134350%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt134407%_
                                    'class))
                                 (let ((__tmp139033
                                        (let ((__tmp139034
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt134407%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp139034))))
                                   (declare (not safe))
                                   (##fx< _%field134367%_ __tmp139033))))
                          (make-struct-subclass-slot-accessor
                           _%klass134350%_
                           _%slot134358%_
                           _%field134367%_)
                          (make-class-cached-slot-accessor
                           _%klass134350%_
                           _%slot134358%_
                           _%field134367%_))))))))
    (define make-class-slot-accessor
      (lambda (_%klass124655%_ _%slot124656%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124655%_ 'class))
            (let ((_%klass124660%_ _%klass124655%_))
              (if (symbol? _%slot124656%_)
                  (let ((_%slot124670%_ _%slot124656%_))
                    (__make-class-slot-accessor
                     _%klass124660%_
                     _%slot124670%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@601.50-601.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot124656%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@601.33-601.38"
               'contract:
               'class-type?
               'value:
               _%klass124655%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass134280%_ _%slot134281%_)
        (let* ((_%klass134284%_ _%klass134280%_)
               (_%slot134292%_ _%slot134281%_)
               (_%field134301%_
                (let ((__tmp139035
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass134284%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp139035 _%slot134292%_ '#f))))
          (if (not _%field134301%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass134284%_
                       'slot:
                       _%slot134292%_)
                '#!void)
              (if (let* ((_%type134305%_ _%klass134284%_)
                         (_%type134310%_ _%type134305%_))
                    (__class-type-final? _%type134310%_))
                  (make-final-slot-mutator
                   _%klass134284%_
                   _%slot134292%_
                   _%field134301%_)
                  (if (let* ((_%klass134325%_ _%klass134284%_)
                             (_%klass134330%_ _%klass134325%_))
                        (__class-type-struct? _%klass134330%_))
                      (make-struct-slot-mutator
                       _%klass134284%_
                       _%slot134292%_
                       _%field134301%_)
                      (if (let ((_%strukt134341%_
                                 (base-struct/1 _%klass134284%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt134341%_
                                    'class))
                                 (let ((__tmp139036
                                        (let ((__tmp139037
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt134341%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp139037))))
                                   (declare (not safe))
                                   (##fx< _%field134301%_ __tmp139036))))
                          (make-struct-subclass-slot-mutator
                           _%klass134284%_
                           _%slot134292%_
                           _%field134301%_)
                          (make-class-cached-slot-mutator
                           _%klass134284%_
                           _%slot134292%_
                           _%field134301%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass124800%_ _%slot124801%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124800%_ 'class))
            (let ((_%klass124805%_ _%klass124800%_))
              (if (symbol? _%slot124801%_)
                  (let ((_%slot124815%_ _%slot124801%_))
                    (__make-class-slot-mutator _%klass124805%_ _%slot124815%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@609.49-609.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot124801%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@609.32-609.37"
               'contract:
               'class-type?
               'value:
               _%klass124800%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass134214%_ _%slot134215%_)
        (let* ((_%klass134218%_ _%klass134214%_)
               (_%slot134226%_ _%slot134215%_)
               (_%field134235%_
                (let ((__tmp139038
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass134218%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp139038 _%slot134226%_ '#f))))
          (if (not _%field134235%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass134218%_
                       'slot:
                       _%slot134226%_)
                '#!void)
              (if (let* ((_%type134239%_ _%klass134218%_)
                         (_%type134244%_ _%type134239%_))
                    (__class-type-final? _%type134244%_))
                  (make-struct-slot-unchecked-accessor
                   _%klass134218%_
                   _%slot134226%_
                   _%field134235%_)
                  (if (let* ((_%klass134259%_ _%klass134218%_)
                             (_%klass134264%_ _%klass134259%_))
                        (__class-type-struct? _%klass134264%_))
                      (make-struct-slot-unchecked-accessor
                       _%klass134218%_
                       _%slot134226%_
                       _%field134235%_)
                      (if (let ((_%strukt134275%_
                                 (base-struct/1 _%klass134218%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt134275%_
                                    'class))
                                 (let ((__tmp139039
                                        (let ((__tmp139040
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt134275%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp139040))))
                                   (declare (not safe))
                                   (##fx< _%field134235%_ __tmp139039))))
                          (make-struct-slot-unchecked-accessor
                           _%klass134218%_
                           _%slot134226%_
                           _%field134235%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass134218%_
                           _%slot134226%_
                           _%field134235%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass124945%_ _%slot124946%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124945%_ 'class))
            (let ((_%klass124950%_ _%klass124945%_))
              (if (symbol? _%slot124946%_)
                  (let ((_%slot124960%_ _%slot124946%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass124950%_
                     _%slot124960%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@617.60-617.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot124946%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@617.43-617.48"
               'contract:
               'class-type?
               'value:
               _%klass124945%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass134148%_ _%slot134149%_)
        (let* ((_%klass134152%_ _%klass134148%_)
               (_%slot134160%_ _%slot134149%_)
               (_%field134169%_
                (let ((__tmp139041
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass134152%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp139041 _%slot134160%_ '#f))))
          (if (not _%field134169%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass134152%_
                       'slot:
                       _%slot134160%_)
                '#!void)
              (if (let* ((_%type134173%_ _%klass134152%_)
                         (_%type134178%_ _%type134173%_))
                    (__class-type-final? _%type134178%_))
                  (make-struct-slot-unchecked-mutator
                   _%klass134152%_
                   _%slot134160%_
                   _%field134169%_)
                  (if (let* ((_%klass134193%_ _%klass134152%_)
                             (_%klass134198%_ _%klass134193%_))
                        (__class-type-struct? _%klass134198%_))
                      (make-struct-slot-unchecked-mutator
                       _%klass134152%_
                       _%slot134160%_
                       _%field134169%_)
                      (if (let ((_%strukt134209%_
                                 (base-struct/1 _%klass134152%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt134209%_
                                    'class))
                                 (let ((__tmp139042
                                        (let ((__tmp139043
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt134209%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp139043))))
                                   (declare (not safe))
                                   (##fx< _%field134169%_ __tmp139042))))
                          (make-struct-slot-unchecked-mutator
                           _%klass134152%_
                           _%slot134160%_
                           _%field134169%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass134152%_
                           _%slot134160%_
                           _%field134169%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass125090%_ _%slot125091%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125090%_ 'class))
            (let ((_%klass125095%_ _%klass125090%_))
              (if (symbol? _%slot125091%_)
                  (let ((_%slot125105%_ _%slot125091%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass125095%_
                     _%slot125105%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@625.59-625.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot125091%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@625.42-625.47"
               'contract:
               'class-type?
               'value:
               _%klass125090%_)
              '#!void))))
    (define not-an-instance__%
      (lambda (_%object134132%_ _%class134133%_ _%slot134134%_)
        (apply error
               '"not an instance"
               'object:
               _%object134132%_
               'class:
               _%class134133%_
               (if _%slot134134%_
                   (cons 'slot: (cons _%slot134134%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object134139%_ _%class134140%_)
        (let ((_%slot134142%_ '#f))
          (not-an-instance__%
           _%object134139%_
           _%class134140%_
           _%slot134142%_))))
    (define not-an-instance
      (lambda _g139044_
        (let ((_g139045_ (let () (declare (not safe)) (##length _g139044_))))
          (cond ((let () (declare (not safe)) (##fx= _g139045_ 2))
                 (apply not-an-instance__0 _g139044_))
                ((let () (declare (not safe)) (##fx= _g139045_ 3))
                 (apply not-an-instance__% _g139044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g139044_))))))
    (define make-final-slot-accessor
      (lambda (_%klass134125%_ _%slot134126%_ _%field134127%_)
        (lambda (_%obj134129%_)
          (##direct-structure-ref
           _%obj134129%_
           _%field134127%_
           _%klass134125%_
           _%slot134126%_))))
    (define make-final-slot-mutator
      (lambda (_%klass134118%_ _%slot134119%_ _%field134120%_)
        (lambda (_%obj134122%_ _%val134123%_)
          (##direct-structure-set!
           _%obj134122%_
           _%val134123%_
           _%field134120%_
           _%klass134118%_
           _%slot134119%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass134112%_ _%slot134113%_ _%field134114%_)
        (lambda (_%obj134116%_)
          (##structure-ref
           _%obj134116%_
           _%field134114%_
           _%klass134112%_
           _%slot134113%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass134105%_ _%slot134106%_ _%field134107%_)
        (lambda (_%obj134109%_ _%val134110%_)
          (##structure-set!
           _%obj134109%_
           _%val134110%_
           _%field134107%_
           _%klass134105%_
           _%slot134106%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass134099%_ _%slot134100%_ _%field134101%_)
        (lambda (_%obj134103%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj134103%_
             _%field134101%_
             _%klass134099%_
             _%slot134100%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass134092%_ _%slot134093%_ _%field134094%_)
        (lambda (_%obj134096%_ _%val134097%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj134096%_
             _%val134097%_
             _%field134094%_
             _%klass134092%_
             _%slot134093%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass134065%_ _%slot134066%_ _%field134067%_)
        (lambda (_%obj134069%_)
          (if (let* ((_%klass134071%_ _%klass134065%_)
                     (_%obj134074%_ _%obj134069%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134071%_ 'class))
                    (let ((_%klass134079%_ _%klass134071%_))
                      (__class-instance? _%klass134079%_ _%obj134074%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134071%_)
                      '#!void)))
              (unchecked-slot-ref _%obj134069%_ _%field134067%_)
              (not-an-instance__%
               _%obj134069%_
               _%klass134065%_
               _%slot134066%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass134037%_ _%slot134038%_ _%field134039%_)
        (lambda (_%obj134041%_ _%val134042%_)
          (if (let* ((_%klass134044%_ _%klass134037%_)
                     (_%obj134047%_ _%obj134041%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134044%_ 'class))
                    (let ((_%klass134052%_ _%klass134044%_))
                      (__class-instance? _%klass134052%_ _%obj134047%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134044%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj134041%_
               _%field134039%_
               _%val134042%_)
              (not-an-instance__%
               _%obj134041%_
               _%klass134037%_
               _%slot134038%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass133988%_ _%slot133989%_ _%field133990%_)
        (lambda (_%obj133992%_)
          (if (let* ((_%klass133994%_ _%klass133988%_)
                     (_%obj133997%_ _%obj133992%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass133994%_ 'class))
                    (let ((_%klass134002%_ _%klass133994%_))
                      (__direct-instance? _%klass134002%_ _%obj133997%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass133994%_)
                      '#!void)))
              (unchecked-field-ref _%obj133992%_ _%field133990%_)
              (if (let* ((_%klass134016%_ _%klass133988%_)
                         (_%obj134019%_ _%obj133992%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass134016%_ 'class))
                        (let ((_%klass134024%_ _%klass134016%_))
                          (__class-instance? _%klass134024%_ _%obj134019%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass134016%_)
                          '#!void)))
                  (unchecked-slot-ref _%obj133992%_ _%slot133989%_)
                  (not-an-instance__%
                   _%obj133992%_
                   _%klass133988%_
                   _%slot133989%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass133938%_ _%slot133939%_ _%field133940%_)
        (lambda (_%obj133942%_ _%val133943%_)
          (if (let* ((_%klass133945%_ _%klass133938%_)
                     (_%obj133948%_ _%obj133942%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass133945%_ 'class))
                    (let ((_%klass133953%_ _%klass133945%_))
                      (__direct-instance? _%klass133953%_ _%obj133948%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass133945%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj133942%_
               _%field133940%_
               _%val133943%_)
              (if (let* ((_%klass133967%_ _%klass133938%_)
                         (_%obj133970%_ _%obj133942%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass133967%_ 'class))
                        (let ((_%klass133975%_ _%klass133967%_))
                          (__class-instance? _%klass133975%_ _%obj133970%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass133967%_)
                          '#!void)))
                  (unchecked-slot-set!
                   _%obj133942%_
                   _%slot133939%_
                   _%val133943%_)
                  (not-an-instance__%
                   _%obj133942%_
                   _%klass133938%_
                   _%slot133939%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass133911%_ _%slot133912%_ _%field133913%_)
        (lambda (_%obj133915%_)
          (if (let* ((_%klass133917%_ _%klass133911%_)
                     (_%obj133920%_ _%obj133915%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass133917%_ 'class))
                    (let ((_%klass133925%_ _%klass133917%_))
                      (__direct-instance? _%klass133925%_ _%obj133920%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass133917%_)
                      '#!void)))
              (unchecked-field-ref _%obj133915%_ _%field133913%_)
              (unchecked-slot-ref _%obj133915%_ _%slot133912%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass133883%_ _%slot133884%_ _%field133885%_)
        (lambda (_%obj133887%_ _%val133888%_)
          (if (let* ((_%klass133890%_ _%klass133883%_)
                     (_%obj133893%_ _%obj133887%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass133890%_ 'class))
                    (let ((_%klass133898%_ _%klass133890%_))
                      (__direct-instance? _%klass133898%_ _%obj133893%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass133890%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj133887%_
               _%field133885%_
               _%val133888%_)
              (unchecked-slot-set!
               _%obj133887%_
               _%slot133884%_
               _%val133888%_)))))
    (define __class-slot-offset
      (lambda (_%klass133862%_ _%slot133863%_)
        (let* ((_%klass133866%_ _%klass133862%_)
               (_%slot133874%_ _%slot133863%_)
               (__tmp139046
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass133866%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp139046 _%slot133874%_ '#f))))
    (define class-slot-offset
      (lambda (_%klass125235%_ _%slot125236%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125235%_ 'class))
            (let ((_%klass125240%_ _%klass125235%_))
              (if (let () (declare (not safe)) (symbolic? _%slot125236%_))
                  (let ((_%slot125250%_ _%slot125236%_))
                    (__class-slot-offset _%klass125240%_ _%slot125250%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@687.43-687.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot125236%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@687.26-687.31"
               'contract:
               'class-type?
               'value:
               _%klass125235%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass133787%_ _%obj133788%_ _%slot133789%_)
        (let* ((_%klass133792%_ _%klass133787%_)
               (_%slot133800%_ _%slot133789%_))
          (if (let* ((_%klass133809%_ _%klass133792%_)
                     (_%obj133812%_ _%obj133788%_)
                     (_%klass133817%_ _%klass133809%_))
                (__class-instance? _%klass133817%_ _%obj133812%_))
              (let ((_%off133860%_
                     (let* ((_%klass133831%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj133788%_)))
                            (_%slot133834%_ _%slot133800%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass133831%_ 'class))
                           (let ((_%klass133839%_ _%klass133831%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot133834%_))
                                 (let ((_%slot133850%_ _%slot133834%_))
                                   (__class-slot-offset
                                    _%klass133839%_
                                    _%slot133850%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot133834%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass133831%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj133788%_
                 _%off133860%_
                 _%klass133792%_
                 _%slot133800%_))
              (not-an-instance__0 _%obj133788%_ _%klass133792%_)))))
    (define class-slot-ref
      (lambda (_%klass125380%_ _%obj125381%_ _%slot125382%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125380%_ 'class))
            (let ((_%klass125386%_ _%klass125380%_))
              (if (let () (declare (not safe)) (symbolic? _%slot125382%_))
                  (let ((_%slot125396%_ _%slot125382%_))
                    (__class-slot-ref
                     _%klass125386%_
                     _%obj125381%_
                     _%slot125396%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@690.44-690.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot125382%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@690.23-690.28"
               'contract:
               'class-type?
               'value:
               _%klass125380%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass133711%_ _%obj133712%_ _%slot133713%_ _%val133714%_)
        (let* ((_%klass133717%_ _%klass133711%_)
               (_%slot133725%_ _%slot133713%_))
          (if (let* ((_%klass133734%_ _%klass133717%_)
                     (_%obj133737%_ _%obj133712%_)
                     (_%klass133742%_ _%klass133734%_))
                (__class-instance? _%klass133742%_ _%obj133737%_))
              (let ((_%off133785%_
                     (let* ((_%klass133756%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj133712%_)))
                            (_%slot133759%_ _%slot133725%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass133756%_ 'class))
                           (let ((_%klass133764%_ _%klass133756%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot133759%_))
                                 (let ((_%slot133775%_ _%slot133759%_))
                                   (__class-slot-offset
                                    _%klass133764%_
                                    _%slot133775%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot133759%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass133756%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj133712%_
                 _%val133714%_
                 _%off133785%_
                 _%klass133717%_
                 _%slot133725%_))
              (not-an-instance__0 _%obj133712%_ _%klass133717%_)))))
    (define class-slot-set!
      (lambda (_%klass125526%_ _%obj125527%_ _%slot125528%_ _%val125529%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125526%_ 'class))
            (let ((_%klass125533%_ _%klass125526%_))
              (if (let () (declare (not safe)) (symbolic? _%slot125528%_))
                  (let ((_%slot125543%_ _%slot125528%_))
                    (__class-slot-set!
                     _%klass125533%_
                     _%obj125527%_
                     _%slot125543%_
                     _%val125529%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@696.45-696.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot125528%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@696.24-696.29"
               'contract:
               'class-type?
               'value:
               _%klass125526%_)
              '#!void))))
    (define unchecked-field-ref
      (lambda (_%obj133708%_ _%off133709%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj133708%_ _%off133709%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj133704%_ _%off133705%_ _%val133706%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj133704%_
           _%val133706%_
           _%off133705%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj133701%_ _%slot133702%_)
        (unchecked-field-ref
         _%obj133701%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj133701%_))
          _%slot133702%_))))
    (define unchecked-slot-set!
      (lambda (_%obj133697%_ _%slot133698%_ _%val133699%_)
        (unchecked-field-set!
         _%obj133697%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj133697%_))
          _%slot133698%_)
         _%val133699%_)))
    (define __slot-error
      (lambda (_%obj133694%_ _%slot133695%_)
        (error '"Cannot find slot"
               'object:
               _%obj133694%_
               'slot:
               _%slot133695%_)))
    (define __slot-ref__%
      (lambda (_%obj133618%_ _%slot133619%_ _%E133620%_)
        (let* ((_%slot133623%_ _%slot133619%_)
               (_%E133631%_ _%E133620%_)
               (_%klass133640%_ (class-of _%obj133618%_))
               (_%$e133676%_
                (let* ((_%klass133643%_ _%klass133640%_)
                       (_%slot133646%_ _%slot133623%_)
                       (_%klass133651%_ _%klass133643%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot133646%_))
                      (let ((_%slot133666%_ _%slot133646%_))
                        (__class-slot-offset _%klass133651%_ _%slot133666%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot133646%_)
                        '#!void)))))
          (if _%$e133676%_
              ((lambda (_%off133679%_)
                 (unchecked-field-ref _%obj133618%_ _%off133679%_))
               _%$e133676%_)
              (let ()
                (declare (not safe))
                (_%E133631%_ _%obj133618%_ _%slot133623%_))))))
    (define __slot-ref__0
      (lambda (_%obj133685%_ _%slot133686%_)
        (let ((_%E133688%_ __slot-error))
          (__slot-ref__% _%obj133685%_ _%slot133686%_ _%E133688%_))))
    (define __slot-ref
      (lambda _g139047_
        (let ((_g139048_ (let () (declare (not safe)) (##length _g139047_))))
          (cond ((let () (declare (not safe)) (##fx= _g139048_ 2))
                 (apply __slot-ref__0 _g139047_))
                ((let () (declare (not safe)) (##fx= _g139048_ 3))
                 (apply __slot-ref__% _g139047_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g139047_))))))
    (define slot-ref__%
      (lambda (_%obj125791%_ _%slot125792%_ _%E125793%_)
        (if (symbol? _%slot125792%_)
            (let ((_%slot125797%_ _%slot125792%_))
              (if (procedure? _%E125793%_)
                  (let ((_%E125807%_ _%E125793%_))
                    (__slot-ref__% _%obj125791%_ _%slot125797%_ _%E125807%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@722.38-722.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E125793%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@722.21-722.25"
               'contract:
               'symbol?
               'value:
               _%slot125792%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj125820%_ _%slot125821%_)
        (let ((_%E125823%_ __slot-error))
          (slot-ref__% _%obj125820%_ _%slot125821%_ _%E125823%_))))
    (define slot-ref
      (lambda _g139049_
        (let ((_g139050_ (let () (declare (not safe)) (##length _g139049_))))
          (cond ((let () (declare (not safe)) (##fx= _g139050_ 2))
                 (apply slot-ref__0 _g139049_))
                ((let () (declare (not safe)) (##fx= _g139050_ 3))
                 (apply slot-ref__% _g139049_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g139049_))))))
    (define __slot-set!__%
      (lambda (_%obj133538%_ _%slot133539%_ _%val133540%_ _%E133541%_)
        (let* ((_%slot133544%_ _%slot133539%_)
               (_%E133552%_ _%E133541%_)
               (_%klass133561%_ (class-of _%obj133538%_))
               (_%$e133597%_
                (let* ((_%klass133564%_ _%klass133561%_)
                       (_%slot133567%_ _%slot133544%_)
                       (_%klass133572%_ _%klass133564%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot133567%_))
                      (let ((_%slot133587%_ _%slot133567%_))
                        (__class-slot-offset _%klass133572%_ _%slot133587%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot133567%_)
                        '#!void)))))
          (if _%$e133597%_
              ((lambda (_%off133600%_)
                 (unchecked-field-set!
                  _%obj133538%_
                  _%off133600%_
                  _%val133540%_))
               _%$e133597%_)
              (let ()
                (declare (not safe))
                (_%E133552%_ _%obj133538%_ _%slot133544%_))))))
    (define __slot-set!__0
      (lambda (_%obj133606%_ _%slot133607%_ _%val133608%_)
        (let ((_%E133610%_ __slot-error))
          (__slot-set!__%
           _%obj133606%_
           _%slot133607%_
           _%val133608%_
           _%E133610%_))))
    (define __slot-set!
      (lambda _g139051_
        (let ((_g139052_ (let () (declare (not safe)) (##length _g139051_))))
          (cond ((let () (declare (not safe)) (##fx= _g139052_ 3))
                 (apply __slot-set!__0 _g139051_))
                ((let () (declare (not safe)) (##fx= _g139052_ 4))
                 (apply __slot-set!__% _g139051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g139051_))))))
    (define slot-set!__%
      (lambda (_%obj125950%_ _%slot125951%_ _%val125952%_ _%E125953%_)
        (if (symbol? _%slot125951%_)
            (let ((_%slot125957%_ _%slot125951%_))
              (if (procedure? _%E125953%_)
                  (let ((_%E125967%_ _%E125953%_))
                    (__slot-set!__%
                     _%obj125950%_
                     _%slot125957%_
                     _%val125952%_
                     _%E125967%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@724.43-724.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E125953%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@724.22-724.26"
               'contract:
               'symbol?
               'value:
               _%slot125951%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj125980%_ _%slot125981%_ _%val125982%_)
        (let ((_%E125984%_ __slot-error))
          (slot-set!__%
           _%obj125980%_
           _%slot125981%_
           _%val125982%_
           _%E125984%_))))
    (define slot-set!
      (lambda _g139053_
        (let ((_g139054_ (let () (declare (not safe)) (##length _g139053_))))
          (cond ((let () (declare (not safe)) (##fx= _g139054_ 3))
                 (apply slot-set!__0 _g139053_))
                ((let () (declare (not safe)) (##fx= _g139054_ 4))
                 (apply slot-set!__% _g139053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g139053_))))))
    (define __subclass?
      (lambda (_%maybe-sub-class133509%_ _%maybe-super-class133510%_)
        (let* ((_%maybe-sub-class133513%_ _%maybe-sub-class133509%_)
               (_%maybe-super-class133521%_ _%maybe-super-class133510%_)
               (_%maybe-super-class-id133530%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class133521%_)))
               (_%$e133532%_
                (eq? _%maybe-super-class-id133530%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class133513%_)))))
          (if _%$e133532%_
              _%$e133532%_
              (let ((__tmp139056
                     (lambda (_%super-class133535%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class133535%_))
                            _%maybe-super-class-id133530%_)))
                    (__tmp139055
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class133513%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (ormap__0 __tmp139056 __tmp139055))))))
    (define subclass?
      (lambda (_%maybe-sub-class126111%_ _%maybe-super-class126112%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class126111%_ 'class))
            (let ((_%maybe-sub-class126116%_ _%maybe-sub-class126111%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class126112%_
                     'class))
                  (let ((_%maybe-super-class126126%_
                         _%maybe-super-class126112%_))
                    (__subclass?
                     _%maybe-sub-class126116%_
                     _%maybe-super-class126126%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@730.45-730.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class126112%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@730.18-730.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class126111%_)
              '#!void))))
    (define object?
      (lambda (_%o133506%_)
        (if (let () (declare (not safe)) (##structure? _%o133506%_))
            (let ((__tmp139057
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o133506%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp139057 'class))
            '#f)))
    (define __direct-instance?
      (lambda (_%klass133493%_ _%obj133494%_)
        (let* ((_%klass133497%_ _%klass133493%_)
               (__tmp139058
                (let () (declare (not safe)) (##type-id _%klass133497%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj133494%_ __tmp139058))))
    (define direct-instance?
      (lambda (_%klass126256%_ _%obj126257%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126256%_ 'class))
            (let ((_%klass126261%_ _%klass126256%_))
              (__direct-instance? _%klass126261%_ _%obj126257%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@744.25-744.30"
               'contract:
               'class-type?
               'value:
               _%klass126256%_)
              '#!void))))
    (define immediate-instance-of?
      (lambda (_%klass133489%_ _%obj133490%_)
        (if (let () (declare (not safe)) (##structure? _%obj133490%_))
            (eq? _%klass133489%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj133490%_)))
            '#f)))
    (define __struct-instance?
      (lambda (_%klass133476%_ _%obj133477%_)
        (let* ((_%klass133480%_ _%klass133476%_)
               (__tmp139059
                (let () (declare (not safe)) (##type-id _%klass133480%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj133477%_ __tmp139059))))
    (define struct-instance?
      (lambda (_%klass126391%_ _%obj126392%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126391%_ 'class))
            (let ((_%klass126396%_ _%klass126391%_))
              (__struct-instance? _%klass126396%_ _%obj126392%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@773.25-773.30"
               'contract:
               'class-type?
               'value:
               _%klass126391%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass133428%_ _%obj133429%_)
        (let* ((_%klass133432%_ _%klass133428%_)
               (_%type133441%_ (class-of _%obj133429%_))
               (_%maybe-sub-class133443%_ _%type133441%_)
               (_%maybe-super-class133446%_ _%klass133432%_)
               (_%maybe-sub-class133451%_ _%maybe-sub-class133443%_)
               (_%maybe-super-class133466%_ _%maybe-super-class133446%_))
          (__subclass?
           _%maybe-sub-class133451%_
           _%maybe-super-class133466%_))))
    (define class-instance?
      (lambda (_%klass126526%_ _%obj126527%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126526%_ 'class))
            (let ((_%klass126531%_ _%klass126526%_))
              (__class-instance? _%klass126531%_ _%obj126527%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@778.24-778.29"
               'contract:
               'class-type?
               'value:
               _%klass126526%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass133387%_ _%k133388%_)
        (let* ((_%klass133391%_ _%klass133387%_) (_%k133399%_ _%k133388%_))
          (if (let* ((_%klass133408%_ _%klass133391%_)
                     (_%klass133413%_ _%klass133408%_))
                (__class-type-system? _%klass133413%_))
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass133391%_)
                '#!void)
              (let ((_%obj133426%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass133391%_ _%k133399%_))))
                (__object-fill! _%obj133426%_ '#f))))))
    (define make-object
      (lambda (_%klass126661%_ _%k126662%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126661%_ 'class))
            (let ((_%klass126666%_ _%klass126661%_))
              (if (fixnum? _%k126662%_)
                  (let ((_%k126676%_ _%k126662%_))
                    (__make-object _%klass126666%_ _%k126676%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@783.37-783.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k126662%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@783.20-783.25"
               'contract:
               'class-type?
               'value:
               _%klass126661%_)
              '#!void))))
    (define __object-class
      (lambda (_%obj133375%_)
        (let ((_%obj133378%_ _%obj133375%_))
          (declare (not safe))
          (##structure-type _%obj133378%_))))
    (define object-class
      (lambda (_%obj126806%_)
        (if (object? _%obj126806%_)
            (let ((_%obj126810%_ _%obj126806%_))
              (__object-class _%obj126810%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@803.21-803.24"
               'contract:
               'object?
               'value:
               _%obj126806%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj133357%_ _%fill133358%_)
        (let ((_%obj133361%_ _%obj133357%_))
          (let _%loop133370%_ ((_%i133372%_
                                (let ((__tmp139060
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj133361%_))))
                                  (declare (not safe))
                                  (##fx- __tmp139060 '1))))
            (if (let () (declare (not safe)) (##fx> _%i133372%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj133361%_
                     _%fill133358%_
                     _%i133372%_
                     '#f
                     '#f))
                  (_%loop133370%_
                   (let () (declare (not safe)) (##fx- _%i133372%_ '1))))
                _%obj133361%_)))))
    (define object-fill!
      (lambda (_%obj126940%_ _%fill126941%_)
        (if (object? _%obj126940%_)
            (let ((_%obj126945%_ _%obj126940%_))
              (__object-fill! _%obj126945%_ _%fill126941%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@808.21-808.24"
               'contract:
               'object?
               'value:
               _%obj126940%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass133313%_)
        (let* ((_%klass133316%_ _%klass133313%_)
               (_%klass133325%_ _%klass133316%_)
               (_%k133328%_
                (let ((__tmp139061
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass133316%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp139061)))
               (_%klass133333%_ _%klass133325%_)
               (_%k133347%_ _%k133328%_))
          (__make-object _%klass133333%_ _%k133347%_))))
    (define new-instance
      (lambda (_%klass127075%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127075%_ 'class))
            (let ((_%klass127079%_ _%klass127075%_))
              (__new-instance _%klass127079%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@819.21-819.26"
               'contract:
               'class-type?
               'value:
               _%klass127075%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass133172%_ . _%args133173%_)
        (let* ((_%klass133176%_ _%klass133172%_)
               (_%$e133185%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass133176%_ '10 '#f '#f))))
          (if _%$e133185%_
              ((lambda (_%kons-id133188%_)
                 (let ((_%obj133210%_
                        (let* ((_%klass133190%_ _%klass133176%_)
                               (_%klass133195%_ _%klass133190%_))
                          (__new-instance _%klass133195%_))))
                   (___constructor-init!
                    _%klass133176%_
                    _%kons-id133188%_
                    _%obj133210%_
                    _%args133173%_)
                   _%obj133210%_))
               _%$e133185%_)
              (if (let* ((_%klass133212%_ _%klass133176%_)
                         (_%klass133217%_ _%klass133212%_))
                    (__class-type-metaclass? _%klass133217%_))
                  (let ((_%obj133244%_
                         (let* ((_%klass133228%_ _%klass133176%_)
                                (_%klass133233%_ _%klass133228%_))
                           (__new-instance _%klass133233%_))))
                    (__metaclass-instance-init!
                     _%klass133176%_
                     _%obj133244%_
                     _%args133173%_)
                    _%obj133244%_)
                  (if (let* ((_%klass133246%_ _%klass133176%_)
                             (_%klass133251%_ _%klass133246%_))
                        (__class-type-struct? _%klass133251%_))
                      (if (let ((__tmp139063
                                 (let* ((_%klass133280%_ _%klass133176%_)
                                        (_%klass133285%_ _%klass133280%_))
                                   (__class-type-field-count _%klass133285%_)))
                                (__tmp139062
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args133173%_))))
                            (declare (not safe))
                            (##fx= __tmp139063 __tmp139062))
                          (apply ##structure _%klass133176%_ _%args133173%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass133176%_
                                   'slots:
                                   (let* ((_%klass133297%_ _%klass133176%_)
                                          (_%klass133302%_ _%klass133297%_))
                                     (__class-type-slot-list _%klass133302%_))
                                   'args:
                                   _%args133173%_)
                            '#!void))
                      (let ((_%obj133278%_
                             (let* ((_%klass133262%_ _%klass133176%_)
                                    (_%klass133267%_ _%klass133262%_))
                               (__new-instance _%klass133267%_))))
                        (___class-instance-init!
                         _%klass133176%_
                         _%obj133278%_
                         _%args133173%_)
                        _%obj133278%_)))))))
    (define make-instance
      (lambda (_%klass127209%_ . _%args127210%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127209%_ 'class))
            (let ((_%klass127214%_ _%klass127209%_))
              (declare (not safe))
              (##apply __make-instance _%klass127214%_ _%args127210%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@822.22-822.27"
               'contract:
               'class-type?
               'value:
               _%klass127209%_)
              '#!void))))
    (define make-class-instance make-instance)
    (define __struct-instance-init!
      (lambda (_%obj133159%_ . _%args133160%_)
        (let ((_%obj133163%_ _%obj133159%_))
          (if (let ((__tmp139065
                     (let () (declare (not safe)) (##length _%args133160%_)))
                    (__tmp139064
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj133163%_))))
                (declare (not safe))
                (##fx< __tmp139065 __tmp139064))
              (___struct-instance-init! _%obj133163%_ _%args133160%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj133163%_
                     'args:
                     _%args133160%_))
          '#!void)))
    (define struct-instance-init!
      (lambda (_%obj127344%_ . _%args127345%_)
        (if (object? _%obj127344%_)
            (let ((_%obj127349%_ _%obj127344%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj127349%_ _%args127345%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@847.30-847.33"
               'contract:
               'object?
               'value:
               _%obj127344%_)
              '#!void))))
    (define ___struct-instance-init!
      (lambda (_%obj133118%_ _%args133119%_)
        (let _%lp133121%_ ((_%k133123%_ '1) (_%rest133124%_ _%args133119%_))
          (let* ((_%rest133125133133%_ _%rest133124%_)
                 (_%else133127133141%_ (lambda () _%obj133118%_))
                 (_%K133129133147%_
                  (lambda (_%rest133144%_ _%hd133145%_)
                    (unchecked-field-set!
                     _%obj133118%_
                     _%k133123%_
                     _%hd133145%_)
                    (_%lp133121%_
                     (let () (declare (not safe)) (##fx+ _%k133123%_ '1))
                     _%rest133144%_))))
            (if (pair? _%rest133125133133%_)
                (let ((_%hd133130133150%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest133125133133%_)))
                      (_%tl133131133152%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest133125133133%_))))
                  (let* ((_%hd133155%_ _%hd133130133150%_)
                         (_%rest133157%_ _%tl133131133152%_))
                    (_%K133129133147%_ _%rest133157%_ _%hd133155%_)))
                (_%else133127133141%_))))))
    (define __class-instance-init!
      (lambda (_%obj133105%_ . _%args133106%_)
        (let ((_%obj133109%_ _%obj133105%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj133109%_))
           _%obj133109%_
           _%args133106%_)
          '#!void)))
    (define class-instance-init!
      (lambda (_%obj127479%_ . _%args127480%_)
        (if (object? _%obj127479%_)
            (let ((_%obj127484%_ _%obj127479%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj127484%_ _%args127480%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@887.29-887.32"
               'contract:
               'object?
               'value:
               _%obj127479%_)
              '#!void))))
    (define ___class-instance-init!
      (lambda (_%klass133047%_ _%obj133048%_ _%args133049%_)
        (let _%lp133051%_ ((_%rest133053%_ _%args133049%_))
          (let* ((_%rest133054133064%_ _%rest133053%_)
                 (_%else133056133072%_
                  (lambda ()
                    (if (null? _%rest133053%_)
                        _%obj133048%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass133047%_
                               'rest:
                               _%rest133053%_))))
                 (_%K133058133086%_
                  (lambda (_%rest133075%_ _%val133076%_ _%key133077%_)
                    (if (keyword? _%key133077%_)
                        (let ((_%$e133080%_
                               (__class-slot-offset
                                _%klass133047%_
                                _%key133077%_)))
                          (if _%$e133080%_
                              ((lambda (_%off133083%_)
                                 (unchecked-field-set!
                                  _%obj133048%_
                                  _%off133083%_
                                  _%val133076%_)
                                 (_%lp133051%_ _%rest133075%_))
                               _%$e133080%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass133047%_
                                     'slot:
                                     _%key133077%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key133077%_)))))
            (if (pair? _%rest133054133064%_)
                (let ((_%hd133059133089%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest133054133064%_)))
                      (_%tl133060133091%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest133054133064%_))))
                  (let ((_%key133094%_ _%hd133059133089%_))
                    (if (pair? _%tl133060133091%_)
                        (let ((_%hd133061133096%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl133060133091%_)))
                              (_%tl133062133098%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl133060133091%_))))
                          (let* ((_%val133101%_ _%hd133061133096%_)
                                 (_%rest133103%_ _%tl133062133098%_))
                            (_%K133058133086%_
                             _%rest133103%_
                             _%val133101%_
                             _%key133094%_)))
                        (_%else133056133072%_))))
                (_%else133056133072%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass133043%_ _%obj133044%_ _%args133045%_)
        (apply call-method
               _%klass133043%_
               'instance-init!
               _%obj133044%_
               _%args133045%_)))
    (define __constructor-init!
      (lambda (_%klass133012%_
               _%kons-id133013%_
               _%obj133014%_
               .
               _%args133015%_)
        (let* ((_%klass133018%_ _%klass133012%_)
               (_%kons-id133026%_ _%kons-id133013%_)
               (_%obj133034%_ _%obj133014%_))
          (___constructor-init!
           _%klass133018%_
           _%kons-id133026%_
           _%obj133034%_
           _%args133015%_)
          '#!void)))
    (define constructor-init!
      (lambda (_%klass127614%_
               _%kons-id127615%_
               _%obj127616%_
               .
               _%args127617%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127614%_ 'class))
            (let ((_%klass127621%_ _%klass127614%_))
              (if (symbol? _%kons-id127615%_)
                  (let ((_%kons-id127631%_ _%kons-id127615%_))
                    (if (object? _%obj127616%_)
                        (let ((_%obj127641%_ _%obj127616%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass127621%_
                                   _%kons-id127631%_
                                   _%obj127641%_
                                   _%args127617%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@911.63-911.66"
                           'contract:
                           'object?
                           'value:
                           _%obj127616%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@911.43-911.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id127615%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@911.26-911.31"
               'contract:
               'class-type?
               'value:
               _%klass127614%_)
              '#!void))))
    (define ___constructor-init!
      (lambda (_%klass133001%_ _%kons-id133002%_ _%obj133003%_ _%args133004%_)
        (let ((_%$e133006%_
               (__find-method
                _%klass133001%_
                _%obj133003%_
                _%kons-id133002%_)))
          (if _%$e133006%_
              ((lambda (_%kons133009%_)
                 (apply _%kons133009%_ _%obj133003%_ _%args133004%_)
                 _%obj133003%_)
               _%$e133006%_)
              (error '"missing constructor"
                     'class:
                     _%klass133001%_
                     'method:
                     _%kons-id133002%_)))))
    (define __struct-copy
      (lambda (_%struct132989%_)
        (let ((_%struct132992%_ _%struct132989%_))
          (declare (not safe))
          (##structure-copy _%struct132992%_))))
    (define struct-copy
      (lambda (_%struct127771%_)
        (if (object? _%struct127771%_)
            (let ((_%struct127775%_ _%struct127771%_))
              (__struct-copy _%struct127775%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@925.20-925.26"
               'contract:
               'object?
               'value:
               _%struct127771%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj132970%_)
        (let* ((_%obj132973%_ _%obj132970%_)
               (_%len132982%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj132973%_))))
          (let _%recur132984%_ ((_%i132986%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i132986%_ _%len132982%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj132973%_
                         _%i132986%_
                         '#f
                         '#f))
                      (_%recur132984%_
                       (let () (declare (not safe)) (##fx+ _%i132986%_ '1))))
                '())))))
    (define struct->list
      (lambda (_%obj127905%_)
        (if (object? _%obj127905%_)
            (let ((_%obj127909%_ _%obj127905%_))
              (__struct->list _%obj127909%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@928.21-928.24"
               'contract:
               'object?
               'value:
               _%obj127905%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj132922%_)
        (let* ((_%obj132925%_ _%obj132922%_)
               (_%klass132934%_
                (let () (declare (not safe)) (##structure-type _%obj132925%_)))
               (_%slot-vector132936%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass132934%_ '7 '#f '#f))))
          (let _%loop132938%_ ((_%index132940%_
                                (let ((__tmp139066
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector132936%_))))
                                  (declare (not safe))
                                  (##fx- __tmp139066 '1)))
                               (_%plist132941%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index132940%_ '1))
                (cons _%klass132934%_ _%plist132941%_)
                (let ((_%slot132944%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector132936%_
                          _%index132940%_))))
                  (_%loop132938%_
                   (let () (declare (not safe)) (##fx- _%index132940%_ '1))
                   (cons (let ((_%sym132946%_ _%slot132944%_))
                           (if (symbol? _%sym132946%_)
                               (let ((_%sym132951%_ _%sym132946%_))
                                 (declare (not safe))
                                 (__symbol->keyword _%sym132951%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  'symbol?
                                  'value:
                                  _%sym132946%_)
                                 '#!void)))
                         (cons (unchecked-field-ref
                                _%obj132925%_
                                _%index132940%_)
                               _%plist132941%_)))))))))
    (define class->list
      (lambda (_%obj128039%_)
        (if (object? _%obj128039%_)
            (let ((_%obj128043%_ _%obj128039%_)) (__class->list _%obj128043%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@936.20-936.23"
               'contract:
               'object?
               'value:
               _%obj128039%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj132872%_ _%id132873%_ . _%args132874%_)
        (let* ((_%id132877%_ _%id132873%_)
               (_%$e132908%_
                (let* ((_%obj132886%_ _%obj132872%_)
                       (_%id132889%_ _%id132877%_)
                       (_%id132894%_ _%id132889%_))
                  (__method-ref _%obj132886%_ _%id132894%_))))
          (if _%$e132908%_
              ((lambda (_%method132911%_)
                 (let ((_%method132913%_ _%method132911%_))
                   (apply _%method132913%_ _%obj132872%_ _%args132874%_)))
               _%$e132908%_)
              (error '"cannot find method"
                     'object:
                     _%obj132872%_
                     'method:
                     _%id132877%_)))))
    (define call-method
      (lambda (_%obj128173%_ _%id128174%_ . _%args128175%_)
        (if (symbol? _%id128174%_)
            (let ((_%id128179%_ _%id128174%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj128173%_
                       _%id128179%_
                       _%args128175%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@951.24-951.26"
               'contract:
               'symbol?
               'value:
               _%id128174%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj132823%_ _%id132824%_)
        (let* ((_%id132827%_ _%id132824%_)
               (_%klass132836%_ (class-of _%obj132823%_))
               (_%obj132839%_ _%obj132823%_)
               (_%id132842%_ _%id132827%_)
               (_%klass132847%_ _%klass132836%_)
               (_%id132862%_ _%id132842%_))
          (__find-method _%klass132847%_ _%obj132839%_ _%id132862%_))))
    (define method-ref
      (lambda (_%obj128309%_ _%id128310%_)
        (if (symbol? _%id128310%_)
            (let ((_%id128314%_ _%id128310%_))
              (__method-ref _%obj128309%_ _%id128314%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@978.23-978.25"
               'contract:
               'symbol?
               'value:
               _%id128310%_)
              '#!void))))
    (define checked-method-ref
      (lambda (_%obj132795%_ _%id132796%_)
        (let ((_%$e132820%_
               (let* ((_%obj132799%_ _%obj132795%_)
                      (_%id132802%_ _%id132796%_))
                 (if (symbol? _%id132802%_)
                     (let ((_%id132807%_ _%id132802%_))
                       (__method-ref _%obj132799%_ _%id132807%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id132802%_)
                       '#!void)))))
          (if _%$e132820%_
              _%$e132820%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj132795%_
                       'method:
                       _%id132796%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj132744%_ _%id132745%_)
        (let* ((_%id132748%_ _%id132745%_)
               (_%$e132779%_
                (let* ((_%obj132757%_ _%obj132744%_)
                       (_%id132760%_ _%id132748%_)
                       (_%id132765%_ _%id132760%_))
                  (__method-ref _%obj132757%_ _%id132765%_))))
          (if _%$e132779%_
              ((lambda (_%method132782%_)
                 (let ((_%method132784%_ _%method132782%_))
                   (lambda _%args132792%_
                     (apply _%method132784%_ _%obj132744%_ _%args132792%_))))
               _%$e132779%_)
              '#f))))
    (define bound-method-ref
      (lambda (_%obj128444%_ _%id128445%_)
        (if (symbol? _%id128445%_)
            (let ((_%id128449%_ _%id128445%_))
              (__bound-method-ref _%obj128444%_ _%id128449%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@986.29-986.31"
               'contract:
               'symbol?
               'value:
               _%id128445%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj132727%_ _%id132728%_)
        (let* ((_%id132731%_ _%id132728%_)
               (_%method132740%_
                (checked-method-ref _%obj132727%_ _%id132731%_)))
          (lambda _%args132742%_
            (apply _%method132740%_ _%obj132727%_ _%args132742%_)))))
    (define checked-bound-method-ref
      (lambda (_%obj128579%_ _%id128580%_)
        (if (symbol? _%id128580%_)
            (let ((_%id128584%_ _%id128580%_))
              (__checked-bound-method-ref _%obj128579%_ _%id128584%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@995.37-995.39"
               'contract:
               'symbol?
               'value:
               _%id128580%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass132596%_ _%obj132597%_ _%id132598%_)
        (let* ((_%klass132601%_ _%klass132596%_) (_%id132609%_ _%id132598%_))
          (if (let* ((_%klass132618%_ _%klass132601%_)
                     (_%klass132623%_ _%klass132618%_))
                (__class-type-sealed? _%klass132623%_))
              (let ((_%tab132653%_
                     (let* ((_%klass132637%_ _%klass132601%_)
                            (_%klass132642%_ _%klass132637%_))
                       (__specialize-class _%klass132642%_))))
                (declare (not safe))
                (symbolic-table-ref _%tab132653%_ _%id132609%_ '#f))
              (let ((_%$e132688%_
                     (let* ((_%klass132655%_ _%klass132601%_)
                            (_%obj132658%_ _%obj132597%_)
                            (_%id132661%_ _%id132609%_)
                            (_%klass132666%_ _%klass132655%_)
                            (_%id132678%_ _%id132661%_))
                       (__direct-method-ref
                        _%klass132666%_
                        _%obj132658%_
                        _%id132678%_))))
                (if _%$e132688%_
                    _%$e132688%_
                    (let* ((_%klass132692%_ _%klass132601%_)
                           (_%obj132695%_ _%obj132597%_)
                           (_%id132698%_ _%id132609%_)
                           (_%klass132703%_ _%klass132692%_)
                           (_%id132717%_ _%id132698%_))
                      (__mixin-method-ref
                       _%klass132703%_
                       _%obj132695%_
                       _%id132717%_))))))))
    (define find-method
      (lambda (_%klass128714%_ _%obj128715%_ _%id128716%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass128714%_ 'class))
            (let ((_%klass128720%_ _%klass128714%_))
              (if (symbol? _%id128716%_)
                  (let ((_%id128730%_ _%id128716%_))
                    (__find-method _%klass128720%_ _%obj128715%_ _%id128730%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1000.41-1000.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id128716%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1000.20-1000.25"
               'contract:
               'class-type?
               'value:
               _%klass128714%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins132541%_ _%obj132542%_ _%id132543%_)
        (let* ((_%id132546%_ _%id132543%_)
               (__tmp139067
                (lambda (_%g132554132556%_)
                  (let* ((_%klass132559%_ _%g132554132556%_)
                         (_%obj132562%_ _%obj132542%_)
                         (_%id132565%_ _%id132546%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass132559%_ 'class))
                        (let* ((_%klass132570%_ _%klass132559%_)
                               (_%id132586%_ _%id132565%_))
                          (__direct-method-ref
                           _%klass132570%_
                           _%obj132562%_
                           _%id132586%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass132559%_)
                          '#!void))))))
          (declare (not safe))
          (ormap__0 __tmp139067 _%mixins132541%_))))
    (define mixin-find-method
      (lambda (_%mixins128860%_ _%obj128861%_ _%id128862%_)
        (if (symbol? _%id128862%_)
            (let ((_%id128866%_ _%id128862%_))
              (__mixin-find-method
               _%mixins128860%_
               _%obj128861%_
               _%id128866%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1009.37-1009.39"
               'contract:
               'symbol?
               'value:
               _%id128862%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass132434%_ _%obj132435%_ _%id132436%_)
        (let* ((_%klass132439%_ _%klass132434%_) (_%id132447%_ _%id132436%_))
          (letrec ((_%metaclass-resolve-method132456%_
                    (lambda ()
                      (let* ((_%obj132517%_ _%klass132439%_)
                             (_%id132520%_ 'direct-method-ref)
                             (_%args132523%_ (list _%obj132435%_ _%id132447%_))
                             (_%id132528%_ _%id132520%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj132517%_
                                 _%id132528%_
                                 _%args132523%_))))
                   (_%metaclass-resolve-method!132457%_
                    (lambda ()
                      (let ((_%method132514%_
                             (_%metaclass-resolve-method132456%_)))
                        (let ((__tmp139069
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass132439%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp139068
                               (if _%method132514%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp139069
                           _%id132447%_
                           __tmp139068))
                        _%method132514%_))))
            (let ((_%$e132459%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass132439%_ '11 '#f '#f))))
              (if _%$e132459%_
                  ((lambda (_%ht132462%_)
                     (let ((_%method132464%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht132462%_
                               _%id132447%_
                               '#f))))
                       (if (procedure? _%method132464%_)
                           _%method132464%_
                           (if (let* ((_%klass132467%_ _%klass132439%_)
                                      (_%klass132472%_ _%klass132467%_))
                                 (__class-type-metaclass? _%klass132472%_))
                               (let ((_%$e132490%_ _%method132464%_))
                                 (if (eq? 'resolved _%$e132490%_)
                                     (_%metaclass-resolve-method132456%_)
                                     (if (eq? 'unknown _%$e132490%_)
                                         '#f
                                         (_%metaclass-resolve-method!132457%_))))
                               '#f))))
                   _%$e132459%_)
                  (if (let* ((_%klass132494%_ _%klass132439%_)
                             (_%klass132499%_ _%klass132494%_))
                        (__class-type-metaclass? _%klass132499%_))
                      (let ((_%tab132510%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass132439%_
                           _%tab132510%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!132457%_))
                      '#f)))))))
    (define direct-method-ref
      (lambda (_%klass128996%_ _%obj128997%_ _%id128998%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass128996%_ 'class))
            (let ((_%klass129002%_ _%klass128996%_))
              (if (symbol? _%id128998%_)
                  (let ((_%id129012%_ _%id128998%_))
                    (__direct-method-ref
                     _%klass129002%_
                     _%obj128997%_
                     _%id129012%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1012.47-1012.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id128998%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1012.26-1012.31"
               'contract:
               'class-type?
               'value:
               _%klass128996%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass132386%_ _%obj132387%_ _%id132388%_)
        (let* ((_%klass132391%_ _%klass132386%_)
               (_%id132399%_ _%id132388%_)
               (_%mixins132408%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass132391%_ '6 '#f '#f)))
               (_%obj132411%_ _%obj132387%_)
               (_%id132414%_ _%id132399%_)
               (_%id132419%_ _%id132414%_))
          (__mixin-find-method _%mixins132408%_ _%obj132411%_ _%id132419%_))))
    (define mixin-method-ref
      (lambda (_%klass129142%_ _%obj129143%_ _%id129144%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass129142%_ 'class))
            (let ((_%klass129148%_ _%klass129142%_))
              (if (symbol? _%id129144%_)
                  (let ((_%id129158%_ _%id129144%_))
                    (__mixin-method-ref
                     _%klass129148%_
                     _%obj129143%_
                     _%id129158%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1042.46-1042.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id129144%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1042.25-1042.30"
               'contract:
               'class-type?
               'value:
               _%klass129142%_)
              '#!void))))
    (define __bind-method!__%
      (lambda (_%klass132296%_ _%id132297%_ _%proc132298%_ _%rebind?132299%_)
        (let* ((_%id132302%_ _%id132297%_) (_%proc132310%_ _%proc132298%_))
          (letrec ((_%bind!132319%_
                    (lambda (_%ht132370%_)
                      (if (and (not _%rebind?132299%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht132370%_
                                  _%id132302%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass132296%_
                                 'method:
                                 _%id132302%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht132370%_
                               _%id132302%_
                               _%proc132310%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass132296%_ 'class))
                (let ((_%ht132322%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass132296%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht132322%_
                      (_%bind!132319%_ _%ht132322%_)
                      (let ((_%ht132324%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass132296%_
                           _%ht132324%_
                           '11
                           '#f
                           '#f))
                        (_%bind!132319%_ _%ht132324%_))))
                (if (let () (declare (not safe)) (##type? _%klass132296%_))
                    (let* ((_%klass132327%_
                            (__shadow-class__0 _%klass132296%_))
                           (_%id132330%_ _%id132302%_)
                           (_%proc132333%_ _%proc132310%_)
                           (_%rebind?132336%_ _%rebind?132299%_)
                           (_%id132341%_ _%id132330%_)
                           (_%proc132359%_ _%proc132333%_))
                      (__bind-method!__%
                       _%klass132327%_
                       _%id132341%_
                       _%proc132359%_
                       _%rebind?132336%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass132296%_)))))))
    (define __bind-method!__0
      (lambda (_%klass132375%_ _%id132376%_ _%proc132377%_)
        (let ((_%rebind?132379%_ '#f))
          (__bind-method!__%
           _%klass132375%_
           _%id132376%_
           _%proc132377%_
           _%rebind?132379%_))))
    (define __bind-method!
      (lambda _g139070_
        (let ((_g139071_ (let () (declare (not safe)) (##length _g139070_))))
          (cond ((let () (declare (not safe)) (##fx= _g139071_ 3))
                 (apply __bind-method!__0 _g139070_))
                ((let () (declare (not safe)) (##fx= _g139071_ 4))
                 (apply __bind-method!__% _g139070_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g139070_))))))
    (define bind-method!__%
      (lambda (_%klass129289%_ _%id129290%_ _%proc129291%_ _%rebind?129292%_)
        (if (symbol? _%id129290%_)
            (let ((_%id129296%_ _%id129290%_))
              (if (procedure? _%proc129291%_)
                  (let ((_%proc129306%_ _%proc129291%_))
                    (__bind-method!__%
                     _%klass129289%_
                     _%id129296%_
                     _%proc129306%_
                     _%rebind?129292%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1045.42-1045.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc129291%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1045.27-1045.29"
               'contract:
               'symbol?
               'value:
               _%id129290%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass129319%_ _%id129320%_ _%proc129321%_)
        (let ((_%rebind?129323%_ '#f))
          (bind-method!__%
           _%klass129319%_
           _%id129320%_
           _%proc129321%_
           _%rebind?129323%_))))
    (define bind-method!
      (lambda _g139072_
        (let ((_g139073_ (let () (declare (not safe)) (##length _g139072_))))
          (cond ((let () (declare (not safe)) (##fx= _g139073_ 3))
                 (apply bind-method!__0 _g139072_))
                ((let () (declare (not safe)) (##fx= _g139073_ 4))
                 (apply bind-method!__% _g139072_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g139072_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint132277%_ _%seed132278%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint132277%_
           procedure-hash
           eq?
           _%seed132278%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint132284%_ '#f) (_%seed132286%_ '0))
          (make-method-specializer-table__%
           _%size-hint132284%_
           _%seed132286%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint132288%_)
        (let ((_%seed132290%_ '0))
          (make-method-specializer-table__%
           _%size-hint132288%_
           _%seed132290%_))))
    (define make-method-specializer-table
      (lambda _g139074_
        (let ((_g139075_ (let () (declare (not safe)) (##length _g139074_))))
          (cond ((let () (declare (not safe)) (##fx= _g139075_ 0))
                 (apply make-method-specializer-table__0 _g139074_))
                ((let () (declare (not safe)) (##fx= _g139075_ 1))
                 (apply make-method-specializer-table__1 _g139074_))
                ((let () (declare (not safe)) (##fx= _g139075_ 2))
                 (apply make-method-specializer-table__% _g139074_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g139074_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint132257%_ _%seed132259%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint132257%_
           procedure-hash
           eq?
           _%seed132259%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint132265%_ '#f) (_%seed132267%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint132265%_
           _%seed132267%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint132269%_)
        (let ((_%seed132271%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint132269%_
           _%seed132271%_))))
    (define make-method-specializer-table/lock
      (lambda _g139076_
        (let ((_g139077_ (let () (declare (not safe)) (##length _g139076_))))
          (cond ((let () (declare (not safe)) (##fx= _g139077_ 0))
                 (apply make-method-specializer-table/lock__0 _g139076_))
                ((let () (declare (not safe)) (##fx= _g139077_ 1))
                 (apply make-method-specializer-table/lock__1 _g139076_))
                ((let () (declare (not safe)) (##fx= _g139077_ 2))
                 (apply make-method-specializer-table/lock__% _g139076_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g139076_))))))
    (define method-specializer-table-ref
      (lambda (_%tab132210%_ _%key132211%_ _%default132212%_)
        (let ((_%table132214%_
               (let () (declare (not safe)) (&raw-table-table _%tab132210%_)))
              (_%seed132215%_
               (let () (declare (not safe)) (&raw-table-seed _%tab132210%_))))
          (let* ((_%h132217%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key132211%_))
                         _%seed132215%_))
                 (_%size132220%_ (vector-length _%table132214%_))
                 (_%entries132223%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size132220%_ '2)))
                 (_%start132226%_
                  (let ((__tmp139078
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h132217%_ _%entries132223%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp139078 '1))))
            (let _%loop132230%_ ((_%probe132233%_ _%start132226%_)
                                 (_%i132235%_ '1)
                                 (_%deleted132237%_ '#f))
              (let ((_%k132240%_ (vector-ref _%table132214%_ _%probe132233%_)))
                (if (eq? _%k132240%_ (macro-unused-obj))
                    _%default132212%_
                    (if (eq? _%k132240%_ (macro-deleted-obj))
                        (_%loop132230%_
                         (let ((_%next-probe132245%_
                                (fx+ _%start132226%_
                                     _%i132235%_
                                     (fx* _%i132235%_ _%i132235%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe132245%_ _%size132220%_))
                         (let () (declare (not safe)) (##fx+ _%i132235%_ '1))
                         (let ((_%$e132248%_ _%deleted132237%_))
                           (if _%$e132248%_ _%$e132248%_ _%probe132233%_)))
                        (if (eq? _%key132211%_ _%k132240%_)
                            (vector-ref
                             _%table132214%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe132233%_ '1)))
                            (_%loop132230%_
                             (let ((_%next-probe132253%_
                                    (fx+ _%start132226%_
                                         _%i132235%_
                                         (fx* _%i132235%_ _%i132235%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe132253%_
                                _%size132220%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i132235%_ '1))
                             _%deleted132237%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab132181%_ _%key132182%_ _%default132183%_)
        (let ((_%lock132185%_
               (let () (declare (not safe)) (&raw-table-lock _%tab132181%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again132190%_ ((_%spin132193%_ '0))
              (if (let ((__tmp139079
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock132185%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp139079 '0))
                  (let ((__tmp139080 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock132185%_ '1 __tmp139080))
                  (if (let () (declare (not safe)) (##fx< _%spin132193%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again132190%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin132193%_ '1))))
                      (let ((_%owner132199%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock132185%_ '1))))
                        (if (eq? _%owner132199%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner132199%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again132190%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r132205%_
                 (method-specializer-table-ref
                  _%tab132181%_
                  _%key132182%_
                  _%default132183%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock132185%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock132185%_ '0 '0 '1))))
            _%$r132205%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab132133%_ _%key132134%_ _%value132135%_)
        (let ((_%table132137%_
               (let () (declare (not safe)) (&raw-table-table _%tab132133%_)))
              (_%seed132138%_
               (let () (declare (not safe)) (&raw-table-seed _%tab132133%_))))
          (let* ((_%h132140%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key132134%_))
                         _%seed132138%_))
                 (_%size132143%_ (vector-length _%table132137%_))
                 (_%entries132146%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size132143%_ '2)))
                 (_%start132149%_
                  (let ((__tmp139081
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h132140%_ _%entries132146%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp139081 '1))))
            (let _%loop132153%_ ((_%probe132156%_ _%start132149%_)
                                 (_%i132158%_ '1)
                                 (_%deleted132160%_ '#f))
              (let ((_%k132163%_ (vector-ref _%table132137%_ _%probe132156%_)))
                (if (eq? _%k132163%_ (macro-unused-obj))
                    (if _%deleted132160%_
                        (begin
                          (vector-set!
                           _%table132137%_
                           _%deleted132160%_
                           _%key132134%_)
                          (vector-set!
                           _%table132137%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted132160%_ '1))
                           _%value132135%_)
                          ((lambda ()
                             (let ((__tmp139082
                                    (let ((__tmp139083
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab132133%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp139083 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab132133%_
                                __tmp139082)))))
                        (begin
                          (vector-set!
                           _%table132137%_
                           _%probe132156%_
                           _%key132134%_)
                          (vector-set!
                           _%table132137%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe132156%_ '1))
                           _%value132135%_)
                          ((lambda ()
                             (let ((__tmp139084
                                    (let ((__tmp139085
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab132133%_))))
                                      (declare (not safe))
                                      (##fx- __tmp139085 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab132133%_
                                __tmp139084))
                             (let ((__tmp139086
                                    (let ((__tmp139087
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab132133%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp139087 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab132133%_
                                __tmp139086))))))
                    (if (eq? _%k132163%_ (macro-deleted-obj))
                        (_%loop132153%_
                         (let ((_%next-probe132170%_
                                (fx+ _%start132149%_
                                     _%i132158%_
                                     (fx* _%i132158%_ _%i132158%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe132170%_ _%size132143%_))
                         (let () (declare (not safe)) (##fx+ _%i132158%_ '1))
                         (let ((_%$e132173%_ _%deleted132160%_))
                           (if _%$e132173%_ _%$e132173%_ _%probe132156%_)))
                        (if (eq? _%key132134%_ _%k132163%_)
                            (let ()
                              (vector-set!
                               _%table132137%_
                               _%probe132156%_
                               _%key132134%_)
                              (vector-set!
                               _%table132137%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe132156%_ '1))
                               _%value132135%_))
                            (_%loop132153%_
                             (let ((_%next-probe132178%_
                                    (fx+ _%start132149%_
                                         _%i132158%_
                                         (fx* _%i132158%_ _%i132158%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe132178%_
                                _%size132143%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i132158%_ '1))
                             _%deleted132160%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab132129%_ _%key132130%_ _%value132131%_)
        (if (let ((__tmp139090
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab132129%_)))
                  (__tmp139088
                   (let ((__tmp139089
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab132129%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp139089 '4))))
              (declare (not safe))
              (##fx< __tmp139090 __tmp139088))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab132129%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab132129%_
         _%key132130%_
         _%value132131%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab132099%_ _%key132100%_ _%value132101%_)
        (let ((_%lock132104%_
               (let () (declare (not safe)) (&raw-table-lock _%tab132099%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again132109%_ ((_%spin132112%_ '0))
              (if (let ((__tmp139091
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock132104%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp139091 '0))
                  (let ((__tmp139092 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock132104%_ '1 __tmp139092))
                  (if (let () (declare (not safe)) (##fx< _%spin132112%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again132109%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin132112%_ '1))))
                      (let ((_%owner132118%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock132104%_ '1))))
                        (if (eq? _%owner132118%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner132118%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again132109%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r132124%_
                 (method-specializer-table-set!
                  _%tab132099%_
                  _%key132100%_
                  _%value132101%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock132104%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock132104%_ '0 '0 '1))))
            _%$r132124%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab132050%_
               _%key132051%_
               _%method-specializer-table-update!132052%_
               _%default132053%_)
        (let ((_%table132055%_
               (let () (declare (not safe)) (&raw-table-table _%tab132050%_)))
              (_%seed132056%_
               (let () (declare (not safe)) (&raw-table-seed _%tab132050%_))))
          (let* ((_%h132058%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key132051%_))
                         _%seed132056%_))
                 (_%size132061%_ (vector-length _%table132055%_))
                 (_%entries132064%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size132061%_ '2)))
                 (_%start132067%_
                  (let ((__tmp139093
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h132058%_ _%entries132064%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp139093 '1))))
            (let _%loop132071%_ ((_%probe132074%_ _%start132067%_)
                                 (_%i132076%_ '1)
                                 (_%deleted132078%_ '#f))
              (let ((_%k132081%_ (vector-ref _%table132055%_ _%probe132074%_)))
                (if (eq? _%k132081%_ (macro-unused-obj))
                    (if _%deleted132078%_
                        (begin
                          (vector-set!
                           _%table132055%_
                           _%deleted132078%_
                           _%key132051%_)
                          (vector-set!
                           _%table132055%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted132078%_ '1))
                           (_%method-specializer-table-update!132052%_
                            _%default132053%_))
                          ((lambda ()
                             (let ((__tmp139094
                                    (let ((__tmp139095
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab132050%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp139095 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab132050%_
                                __tmp139094)))))
                        (begin
                          (vector-set!
                           _%table132055%_
                           _%probe132074%_
                           _%key132051%_)
                          (vector-set!
                           _%table132055%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe132074%_ '1))
                           (_%method-specializer-table-update!132052%_
                            _%default132053%_))
                          ((lambda ()
                             (let ((__tmp139096
                                    (let ((__tmp139097
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab132050%_))))
                                      (declare (not safe))
                                      (##fx- __tmp139097 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab132050%_
                                __tmp139096))
                             (let ((__tmp139098
                                    (let ((__tmp139099
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab132050%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp139099 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab132050%_
                                __tmp139098))))))
                    (if (eq? _%k132081%_ (macro-deleted-obj))
                        (_%loop132071%_
                         (let ((_%next-probe132088%_
                                (fx+ _%start132067%_
                                     _%i132076%_
                                     (fx* _%i132076%_ _%i132076%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe132088%_ _%size132061%_))
                         (let () (declare (not safe)) (##fx+ _%i132076%_ '1))
                         (let ((_%$e132091%_ _%deleted132078%_))
                           (if _%$e132091%_ _%$e132091%_ _%probe132074%_)))
                        (if (eq? _%key132051%_ _%k132081%_)
                            (let ()
                              (vector-set!
                               _%table132055%_
                               _%probe132074%_
                               _%key132051%_)
                              (vector-set!
                               _%table132055%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe132074%_ '1))
                               (_%method-specializer-table-update!132052%_
                                (vector-ref
                                 _%table132055%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe132074%_ '1))))))
                            (_%loop132071%_
                             (let ((_%next-probe132096%_
                                    (fx+ _%start132067%_
                                         _%i132076%_
                                         (fx* _%i132076%_ _%i132076%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe132096%_
                                _%size132061%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i132076%_ '1))
                             _%deleted132078%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab132045%_
               _%key132046%_
               _%method-specializer-table-update!132047%_
               _%default132048%_)
        (if (let ((__tmp139102
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab132045%_)))
                  (__tmp139100
                   (let ((__tmp139101
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab132045%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp139101 '4))))
              (declare (not safe))
              (##fx< __tmp139102 __tmp139100))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab132045%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab132045%_
         _%key132046%_
         _%method-specializer-table-update!132047%_
         _%default132048%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab132014%_
               _%key132015%_
               _%method-specializer-table-update!132016%_
               _%default132017%_)
        (let ((_%lock132020%_
               (let () (declare (not safe)) (&raw-table-lock _%tab132014%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again132025%_ ((_%spin132028%_ '0))
              (if (let ((__tmp139103
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock132020%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp139103 '0))
                  (let ((__tmp139104 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock132020%_ '1 __tmp139104))
                  (if (let () (declare (not safe)) (##fx< _%spin132028%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again132025%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin132028%_ '1))))
                      (let ((_%owner132034%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock132020%_ '1))))
                        (if (eq? _%owner132034%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner132034%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again132025%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r132040%_
                 (_%method-specializer-table-update!132016%_
                  _%tab132014%_
                  _%key132015%_
                  _%method-specializer-table-update!132016%_
                  _%default132017%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock132020%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock132020%_ '0 '0 '1))))
            _%$r132040%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab131971%_ _%key131972%_)
        (let ((_%table131974%_
               (let () (declare (not safe)) (&raw-table-table _%tab131971%_)))
              (_%seed131976%_
               (let () (declare (not safe)) (&raw-table-seed _%tab131971%_))))
          (let* ((_%h131979%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key131972%_))
                         _%seed131976%_))
                 (_%size131982%_ (vector-length _%table131974%_))
                 (_%entries131985%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size131982%_ '2)))
                 (_%start131988%_
                  (let ((__tmp139105
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h131979%_ _%entries131985%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp139105 '1))))
            (let _%loop131992%_ ((_%probe131995%_ _%start131988%_)
                                 (_%i131997%_ '1))
              (let ((_%k132000%_ (vector-ref _%table131974%_ _%probe131995%_)))
                (if (eq? _%k132000%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k132000%_ (macro-deleted-obj))
                        (_%loop131992%_
                         (let ((_%next-probe132005%_
                                (fx+ _%start131988%_
                                     _%i131997%_
                                     (fx* _%i131997%_ _%i131997%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe132005%_ _%size131982%_))
                         (let () (declare (not safe)) (##fx+ _%i131997%_ '1)))
                        (if (eq? _%key131972%_ _%k132000%_)
                            (let ()
                              (vector-set!
                               _%table131974%_
                               _%probe131995%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table131974%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe131995%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp139106
                                        (let ((__tmp139107
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab131971%_))))
                                          (declare (not safe))
                                          (##fx- __tmp139107 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab131971%_
                                    __tmp139106)))))
                            (_%loop131992%_
                             (let ((_%next-probe132011%_
                                    (fx+ _%start131988%_
                                         _%i131997%_
                                         (fx* _%i131997%_ _%i131997%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe132011%_
                                _%size131982%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i131997%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab131941%_ _%key131943%_)
        (let ((_%lock131946%_
               (let () (declare (not safe)) (&raw-table-lock _%tab131941%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again131951%_ ((_%spin131954%_ '0))
              (if (let ((__tmp139108
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock131946%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp139108 '0))
                  (let ((__tmp139109 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock131946%_ '1 __tmp139109))
                  (if (let () (declare (not safe)) (##fx< _%spin131954%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again131951%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin131954%_ '1))))
                      (let ((_%owner131960%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock131946%_ '1))))
                        (if (eq? _%owner131960%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner131960%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again131951%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r131966%_
                 (method-specializer-table-delete!
                  _%tab131941%_
                  _%key131943%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock131946%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock131946%_ '0 '0 '1))))
            _%$r131966%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc131938%_ _%specializer131939%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc131938%_
         _%specializer131939%_)))
    (define __lookup-method-specializer
      (lambda (_%proc131936%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc131936%_
         '#f)))
    (define __specialize-class
      (lambda (_%klass131918%_)
        (let* ((_%klass131921%_ _%klass131918%_)
               (_%$e131930%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass131921%_ '12 '#f '#f))))
          (if _%$e131930%_
              _%$e131930%_
              (let ((_%method-table131934%_
                     (___specialize-class _%klass131921%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass131921%_
                   _%method-table131934%_
                   '12
                   '#f
                   '#f))
                _%method-table131934%_)))))
    (define specialize-class
      (lambda (_%klass129450%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass129450%_ 'class))
            (let ((_%klass129454%_ _%klass129450%_))
              (__specialize-class _%klass129454%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1095.25-1095.30"
               'contract:
               'class-type?
               'value:
               _%klass129450%_)
              '#!void))))
    (define __specialize-method
      (lambda (_%klass131902%_
               _%method-table131903%_
               _%method131904%_
               _%proc131905%_)
        (let ((_%$e131907%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table131903%_
                  _%method131904%_
                  '#f))))
          (if _%$e131907%_
              _%$e131907%_
              (let ((_%$e131910%_
                     (__lookup-method-specializer _%proc131905%_)))
                (if _%$e131910%_
                    ((lambda (_%specialize131913%_)
                       (let ((_%specialized-proc131915%_
                              (_%specialize131913%_
                               _%klass131902%_
                               _%method-table131903%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table131903%_
                          _%method131904%_
                          _%specialized-proc131915%_)))
                     _%$e131910%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table131903%_
                       _%method131904%_
                       _%proc131905%_))))))))
    (define ___specialize-class
      (lambda (_%klass131769%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass131769%_ 'class))
            (if (let* ((_%klass131772%_ _%klass131769%_)
                       (_%klass131777%_ _%klass131772%_))
                  (__class-type-metaclass? _%klass131777%_))
                (let* ((_%obj131789%_ _%klass131769%_)
                       (_%id131792%_ 'specialize-class)
                       (_%args131795%_ '())
                       (_%id131800%_ _%id131792%_))
                  (declare (not safe))
                  (##apply __call-method
                           _%obj131789%_
                           _%id131800%_
                           _%args131795%_))
                (if (let* ((_%pred131813%_ class-type-metaclass?)
                           (_%lst131816%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass131769%_
                               '6
                               '#f
                               '#f)))
                           (_%pred131821%_ _%pred131813%_))
                      (declare (not safe))
                      (__find _%pred131821%_ _%lst131816%_))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass131769%_)
                    (let ((_%method-table131834%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop131836%_ ((_%rest131838%_
                                            (let* ((_%klass131885%_
                                                    _%klass131769%_)
                                                   (_%klass131890%_
                                                    _%klass131885%_))
                                              (__class-precedence-list
                                               _%klass131890%_))))
                        (let* ((_%rest131839131847%_ _%rest131838%_)
                               (_%else131841131855%_
                                (lambda () _%method-table131834%_))
                               (_%K131843131873%_
                                (lambda (_%rest131858%_ _%xklass131859%_)
                                  (let ((_%xmethod-table131860131862%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass131859%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table131860131862%_
                                        (let* ((_%xmethod-table131864%_
                                                _%xmethod-table131860131862%_)
                                               (__tmp139110
                                                (lambda (_%g131865131868%_
                                                         _%g131866131870%_)
                                                  (__specialize-method
                                                   _%klass131769%_
                                                   _%method-table131834%_
                                                   _%g131865131868%_
                                                   _%g131866131870%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table131864%_
                                           __tmp139110))
                                        '#f))
                                  (_%loop131836%_ _%rest131858%_))))
                          (if (pair? _%rest131839131847%_)
                              (let ((_%hd131844131876%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest131839131847%_)))
                                    (_%tl131845131878%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest131839131847%_))))
                                (let* ((_%xklass131881%_ _%hd131844131876%_)
                                       (_%rest131883%_ _%tl131845131878%_))
                                  (_%K131843131873%_
                                   _%rest131883%_
                                   _%xklass131881%_)))
                              (_%else131841131855%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass131769%_))
                (__specialize-class (__shadow-class__0 _%klass131769%_))
                (error '"bad class; cannot specialize" _%klass131769%_)))))
    (define __seal-class!
      (lambda (_%klass131632%_)
        (let ((_%klass131635%_ _%klass131632%_))
          (if (let* ((_%klass131644%_ _%klass131635%_)
                     (_%klass131649%_ _%klass131644%_))
                (__class-type-sealed? _%klass131649%_))
              '#!void
              (begin
                (if (let* ((_%klass131662%_ _%klass131635%_)
                           (_%klass131667%_ _%klass131662%_))
                      (__class-type-metaclass? _%klass131667%_))
                    (let ()
                      (let* ((_%obj131678%_ _%klass131635%_)
                             (_%id131681%_ 'seal-class!)
                             (_%args131684%_ '())
                             (_%id131689%_ _%id131681%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj131678%_
                                 _%id131689%_
                                 _%args131684%_))
                      (let* ((_%klass131702%_ _%klass131635%_)
                             (_%klass131707%_ _%klass131702%_))
                        (__specialize-class _%klass131707%_)))
                    (if (let* ((_%pred131717%_ class-type-metaclass?)
                               (_%lst131720%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass131635%_
                                   '6
                                   '#f
                                   '#f)))
                               (_%pred131725%_ _%pred131717%_))
                          (declare (not safe))
                          (__find _%pred131725%_ _%lst131720%_))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass131635%_)
                        (let* ((_%klass131738%_ _%klass131635%_)
                               (_%klass131743%_ _%klass131738%_))
                          (__specialize-class _%klass131743%_))))
                (let* ((_%klass131754%_ _%klass131635%_)
                       (_%klass131759%_ _%klass131754%_))
                  (__class-type-seal! _%klass131759%_)))))))
    (define seal-class!
      (lambda (_%klass129584%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass129584%_ 'class))
            (let ((_%klass129588%_ _%klass129584%_))
              (__seal-class! _%klass129588%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1141.20-1141.25"
               'contract:
               'class-type?
               'value:
               _%klass129584%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass131520%_ _%obj131521%_ _%id131522%_)
        (let* ((_%subklass131525%_ _%subklass131520%_)
               (_%id131533%_ _%id131522%_))
          (letrec ((_%find-next-method131542%_
                    (lambda (_%klass131544%_)
                      (let _%lp131546%_ ((_%rest131548%_
                                          (let ((_%klass131617%_
                                                 _%klass131544%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%klass131617%_
                                                   'class))
                                                (let ((_%klass131622%_
                                                       _%klass131617%_))
                                                  (__class-precedence-list
                                                   _%klass131622%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/mop
                                                   'contract:
                                                   'class-type?
                                                   'value:
                                                   _%klass131617%_)
                                                  '#!void)))))
                        (let* ((_%rest131549131557%_ _%rest131548%_)
                               (_%else131551131565%_ (lambda () '#f))
                               (_%K131553131605%_
                                (lambda (_%rest131568%_ _%klass131569%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass131525%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass131569%_)))
                                      (let* ((_%mixins131571%_ _%rest131568%_)
                                             (_%obj131574%_ _%obj131521%_)
                                             (_%id131577%_ _%id131533%_)
                                             (_%id131582%_ _%id131577%_))
                                        (__mixin-find-method
                                         _%mixins131571%_
                                         _%obj131574%_
                                         _%id131582%_))
                                      (_%lp131546%_ _%rest131568%_)))))
                          (if (pair? _%rest131549131557%_)
                              (let ((_%hd131554131608%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest131549131557%_)))
                                    (_%tl131555131610%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest131549131557%_))))
                                (let* ((_%klass131613%_ _%hd131554131608%_)
                                       (_%rest131615%_ _%tl131555131610%_))
                                  (_%K131553131605%_
                                   _%rest131615%_
                                   _%klass131613%_)))
                              (_%else131551131565%_)))))))
            (_%find-next-method131542%_ (class-of _%obj131521%_))))))
    (define next-method
      (lambda (_%subklass129718%_ _%obj129719%_ _%id129720%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass129718%_ 'class))
            (let ((_%subklass129724%_ _%subklass129718%_))
              (if (symbol? _%id129720%_)
                  (let ((_%id129734%_ _%id129720%_))
                    (__next-method
                     _%subklass129724%_
                     _%obj129719%_
                     _%id129734%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1163.44-1163.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id129720%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1163.20-1163.28"
               'contract:
               'class-type?
               'value:
               _%subklass129718%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass131455%_ _%obj131456%_ _%id131457%_ . _%args131458%_)
        (let* ((_%subklass131461%_ _%subklass131455%_)
               (_%id131469%_ _%id131457%_)
               (_%$e131514%_
                (let* ((_%subklass131478%_ _%subklass131461%_)
                       (_%obj131481%_ _%obj131456%_)
                       (_%id131484%_ _%id131469%_)
                       (_%subklass131489%_ _%subklass131478%_)
                       (_%id131504%_ _%id131484%_))
                  (__next-method
                   _%subklass131489%_
                   _%obj131481%_
                   _%id131504%_))))
          (if _%$e131514%_
              ((lambda (_%methodf131517%_)
                 (apply _%methodf131517%_ _%obj131456%_ _%args131458%_))
               _%$e131514%_)
              (error '"cannot find next method"
                     'object:
                     _%obj131456%_
                     'method:
                     _%id131469%_)))))
    (define call-next-method
      (lambda (_%subklass129864%_ _%obj129865%_ _%id129866%_ . _%args129867%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass129864%_ 'class))
            (let ((_%subklass129871%_ _%subklass129864%_))
              (if (symbol? _%id129866%_)
                  (let ((_%id129881%_ _%id129866%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass129871%_
                             _%obj129865%_
                             _%id129881%_
                             _%args129867%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1174.49-1174.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id129866%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1174.25-1174.33"
               'contract:
               'class-type?
               'value:
               _%subklass129864%_)
              '#!void))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type131234%_ _%properties131235%_)
        (letrec ((_%shadow-type-id131237%_
                  (lambda (_%type131443%_)
                    (let ((__tmp139111
                           (let ()
                             (declare (not safe))
                             (##type-name _%type131443%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp139111 '"::t"))))
                 (_%shadow-type-name131238%_
                  (lambda (_%type131441%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type131441%_))))
                 (_%make-shadow-class131239%_
                  (lambda (_%type131323%_ _%precedence-list131324%_)
                    (let* ((_%super131326%_
                            (if (pair? _%precedence-list131324%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list131324%_))
                                      '())
                                '()))
                           (_%klass131438%_
                            (let* ((_%id131328%_
                                    (_%shadow-type-id131237%_ _%type131323%_))
                                   (_%name131331%_
                                    (let ()
                                      (declare (not safe))
                                      (##type-name _%type131323%_)))
                                   (_%direct-supers131334%_ _%super131326%_)
                                   (_%direct-slots131337%_ '())
                                   (_%properties131363%_
                                    (cons (cons 'struct: '#t)
                                          (cons (cons 'system: '#t)
                                                (cons (cons 'system-type:
                                                            _%type131323%_)
                                                      (let ((__tmp139112
                                                             (if (let ((_%type131340%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%type131323%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##type? _%type131340%_))
                               (let ((_%type131345%_ _%type131340%_))
                                 (__type-extensible? _%type131345%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  '##type?
                                  'value:
                                  _%type131340%_)
                                 '#!void)))
                         '()
                         (cons (cons 'final: '#t) '()))))
                (declare (not safe))
                (foldr__0 cons _%properties131235%_ __tmp139112))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%constructor131366%_ '#f)
                                   (_%id131371%_ _%id131328%_))
                              (if (symbol? _%name131331%_)
                                  (let* ((_%name131382%_ _%name131331%_)
                                         (_%direct-supers131392%_
                                          _%direct-supers131334%_)
                                         (_%direct-slots131402%_
                                          _%direct-slots131337%_)
                                         (_%properties131412%_
                                          _%properties131363%_))
                                    (if ((lambda (_%$obj131421%_)
                                           (or (not _%$obj131421%_)
                                               (symbol? _%$obj131421%_)))
                                         _%constructor131366%_)
                                        (let ((_%constructor131428%_
                                               _%constructor131366%_))
                                          (__make-class-type
                                           _%id131371%_
                                           _%name131382%_
                                           _%direct-supers131392%_
                                           _%direct-slots131402%_
                                           _%properties131412%_
                                           _%constructor131428%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '(? (or not symbol?))
                                           'value:
                                           _%constructor131366%_)
                                          '#!void)))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     'symbol?
                                     'value:
                                     _%name131331%_)
                                    '#!void)))))
                      (let ((__tmp139113
                             (let ()
                               (declare (not safe))
                               (##type-id _%type131323%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp139113
                         _%klass131438%_))
                      _%klass131438%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again131243%_ ((_%spin131246%_ '0))
              (if (let ((__tmp139114
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp139114 '0))
                  (let ((__tmp139115 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp139115))
                  (if (let () (declare (not safe)) (##fx< _%spin131246%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again131243%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin131246%_ '1))))
                      (let ((_%owner131252%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner131252%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner131252%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again131243%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e131258%_
                 (let ((__tmp139116
                        (let ()
                          (declare (not safe))
                          (##type-id _%type131234%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp139116 '#f))))
            (if _%$e131258%_
                ((lambda (_%klass131261%_)
                   (let ()
                     (declare (not interrupts-enabled))
                     (begin
                       (let ()
                         (declare (not safe))
                         (##vector-set! __shadow-classes-lock '1 '#f))
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __shadow-classes-lock '0 '0 '1))))
                   _%klass131261%_)
                 _%$e131258%_)
                (let _%loop131266%_ ((_%super131268%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type131234%_)))
                                     (_%hierarchy131269%_ '()))
                  (if (not _%super131268%_)
                      (let _%loop131272%_ ((_%rest131274%_ _%hierarchy131269%_)
                                           (_%precedence-list131275%_ '()))
                        (let* ((_%rest131276131284%_ _%rest131274%_)
                               (_%else131278131296%_
                                (lambda ()
                                  (let ((_%klass131292%_
                                         (_%make-shadow-class131239%_
                                          _%type131234%_
                                          _%precedence-list131275%_)))
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
                                    _%klass131292%_)))
                               (_%K131280131310%_
                                (lambda (_%rest131299%_ _%type131300%_)
                                  (let ((_%$e131302%_
                                         (let ((__tmp139117
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type131300%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp139117
                                            '#f))))
                                    (if _%$e131302%_
                                        ((lambda (_%klass131305%_)
                                           (_%loop131272%_
                                            _%rest131299%_
                                            (cons _%klass131305%_
                                                  _%precedence-list131275%_)))
                                         _%$e131302%_)
                                        (let ((_%klass131308%_
                                               (_%make-shadow-class131239%_
                                                _%type131300%_
                                                _%precedence-list131275%_)))
                                          (_%loop131272%_
                                           _%rest131299%_
                                           (cons _%klass131308%_
                                                 _%precedence-list131275%_))))))))
                          (if (pair? _%rest131276131284%_)
                              (let ((_%hd131281131313%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest131276131284%_)))
                                    (_%tl131282131315%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest131276131284%_))))
                                (let* ((_%type131318%_ _%hd131281131313%_)
                                       (_%rest131320%_ _%tl131282131315%_))
                                  (_%K131280131310%_
                                   _%rest131320%_
                                   _%type131318%_)))
                              (_%else131278131296%_))))
                      (_%loop131266%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super131268%_))
                       (cons _%super131268%_ _%hierarchy131269%_)))))))))
    (define __shadow-class__0
      (lambda (_%type131448%_)
        (let ((_%properties131450%_ '()))
          (__shadow-class__% _%type131448%_ _%properties131450%_))))
    (define __shadow-class
      (lambda _g139118_
        (let ((_g139119_ (let () (declare (not safe)) (##length _g139118_))))
          (cond ((let () (declare (not safe)) (##fx= _g139119_ 1))
                 (apply __shadow-class__0 _g139118_))
                ((let () (declare (not safe)) (##fx= _g139119_ 2))
                 (apply __shadow-class__% _g139118_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g139118_))))))
    (define __type
      (let* ((_%tb131222%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e131224%_ _%tb131222%_))
        (if (eq? '2 _%$e131224%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e131224%_)
                (let ((_%flonum-self-tagging-tags131227%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits131228%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e131230%_ _%flonum-self-tagging-tags131227%_))
                    (if (eq? '0 _%$e131230%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits131228%_ '2))
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
                        (if (eq? '1 _%$e131230%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits131228%_ '2))
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
                            (if (eq? '2 _%$e131230%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e131230%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e131230%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags131227%_))))))))
                (error '"unexpected tag width" _%tb131222%_)))))
    (define __primitive-class
      (let ((__tmp139120 (vector-length __type)))
        (declare (not safe))
        (##make-vector __tmp139120 '#f)))
    (define __boxvalues-class
      (let () (declare (not safe)) (##make-vector '2 '#f)))
    (define __subtype-class
      (let () (declare (not safe)) (##make-vector '32 '#f)))
    (define __char-class '#f)
    (define __special-class
      (let () (declare (not safe)) (##make-vector '16 '#f)))
    (define __class-of
      (let* ((_%len131112%_ (vector-length __type))
             (_%cv131114%_
              (let () (declare (not safe)) (##make-vector _%len131112%_ '#f))))
        (let _%loop131117%_ ((_%i131119%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i131119%_ _%len131112%_))
              (let* ((_%t131121%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i131119%_)))
                     (_%f131219%_
                      (if (eq? _%t131121%_ 'undefined)
                          (lambda (_%obj131124%_)
                            (error '"object type is undefined" _%obj131124%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t131121%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj131127%_)
                                (declare (not interrupts-enabled) (not safe))
                                (let ((_%$e131130%_
                                       (##vector-ref
                                        __primitive-class
                                        _%i131119%_)))
                                  (if _%$e131130%_
                                      _%$e131130%_
                                      (let ((_%klass131134%_
                                             (__system-class _%t131121%_)))
                                        (##vector-set!
                                         __primitive-class
                                         _%i131119%_
                                         _%klass131134%_)
                                        _%klass131134%_))))
                              (if (eq? _%t131121%_ 'subtyped)
                                  (lambda (_%obj131138%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st131141%_
                                           (##subtype _%obj131138%_)))
                                      (if (##fx= _%st131141%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass131144%_
                                                 (##structure-type
                                                  _%obj131138%_)))
                                            (if (##structure-instance-of?
                                                 _%klass131144%_
                                                 'class)
                                                _%klass131144%_
                                                (__shadow-class__0
                                                 _%klass131144%_)))
                                          (if (##fx= _%st131141%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj131138%_)
                                                         '1)
                                                  (let ((_%$e131147%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '0)))
                                                    (if _%$e131147%_
                                                        _%$e131147%_
                                                        (let ((_%klass131151%_
                                                               (__system-class
                                                                'box)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '0
                                                           _%klass131151%_)
                                                          _%klass131151%_)))
                                                  (let ((_%$e131154%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '1)))
                                                    (if _%$e131154%_
                                                        _%$e131154%_
                                                        (let ((_%klass131158%_
                                                               (__system-class
                                                                'values)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '1
                                                           _%klass131158%_)
                                                          _%klass131158%_))))
                                              (let ((_%$e131161%_
                                                     (##vector-ref
                                                      __subtype-class
                                                      _%st131141%_)))
                                                (if _%$e131161%_
                                                    _%$e131161%_
                                                    (let ((_%klass131178%_
                                                           (let ((_%$e131165%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##vector-ref __subtype-id _%st131141%_)))
                     (if _%$e131165%_
                         ((lambda (_%subtype-t131168%_)
                            (let ((_%$e131170%_
                                   (##vector-ref
                                    __subtype-class
                                    _%st131141%_)))
                              (if _%$e131170%_
                                  _%$e131170%_
                                  (let ((_%klass131174%_
                                         (__system-class _%subtype-t131168%_)))
                                    (##vector-set!
                                     __subtype-class
                                     _%st131141%_
                                     _%klass131174%_)
                                    _%klass131174%_))))
                          _%$e131165%_)
                         (error '"unknown class"
                                'object:
                                _%obj131138%_
                                'subtype:
                                _%st131141%_)))))
              (##vector-set! __subtype-class _%st131141%_ _%klass131178%_)
              _%klass131178%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (eq? _%t131121%_ 'special)
                                      (lambda (_%obj131182%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (let ((_%x131185%_
                                               (##type-cast _%obj131182%_ '0)))
                                          (if (##fx> _%x131185%_ '0)
                                              (let ((_%$e131188%_
                                                     __char-class))
                                                (if _%$e131188%_
                                                    _%$e131188%_
                                                    (let ((_%klass131192%_
                                                           (__system-class
                                                            'char)))
                                                      (set! __char-class
                                                            _%klass131192%_)
                                                      _%klass131192%_)))
                                              (let* ((_%t131195%_
                                                      (##fx- _%x131185%_))
                                                     (_%$e131198%_
                                                      (##vector-ref
                                                       __special-class
                                                       _%t131195%_)))
                                                (if _%$e131198%_
                                                    _%$e131198%_
                                                    (let ((_%klass131216%_
                                                           (if (eq? _%obj131182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                       (__system-class 'null)
                       (if (eq? _%obj131182%_ '#f)
                           (__system-class 'false)
                           (if (eq? _%obj131182%_ '#t)
                               (__system-class 'true)
                               (if (eq? _%obj131182%_ '#!void)
                                   (__system-class 'void)
                                   (if (eq? _%obj131182%_ '#!eof)
                                       (__system-class 'eof)
                                       (if (eq? _%obj131182%_ '#!unbound)
                                           (__system-class 'unbound)
                                           (if (eq? _%obj131182%_ '#!unbound2)
                                               (__system-class 'unbound2)
                                               (if (eq? _%obj131182%_
                                                        '#!optional)
                                                   (__system-class 'optional)
                                                   (if (eq? _%obj131182%_
                                                            '#!rest)
                                                       (__system-class 'rest)
                                                       (if (eq? _%obj131182%_
                                                                '#!key)
                                                           (__system-class
                                                            'key)
                                                           (if (eq? _%obj131182%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (macro-unused-obj))
                       (__system-class 'unused)
                       (if (eq? _%obj131182%_ (macro-deleted-obj))
                           (__system-class 'deleted)
                           (if (eq? _%obj131182%_ (macro-absent-obj))
                               (__system-class 'absent)
                               (__system-class 'unknown))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (##vector-set! __special-class _%t131195%_ _%klass131216%_)
              _%klass131216%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t131121%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv131114%_ _%i131119%_ _%f131219%_))
                (_%loop131117%_
                 (let () (declare (not safe)) (##fx+ _%i131119%_ '1))))
              _%cv131114%_))))
    (define type-of
      (lambda (_%obj131108%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj131108%_)))))
    (define class-of
      (lambda (_%obj131099%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t131103%_ (##type _%obj131099%_))
                 (_%f131105%_ (##vector-ref __class-of _%t131103%_)))
            (_%f131105%_ _%obj131099%_)))))
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
      (lambda (_%id131093%_)
        (let ((_%$e131095%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id131093%_ '#f))))
          (if _%$e131095%_
              _%$e131095%_
              (error '"unknown system class" _%id131093%_)))))
    (define __make-system-class
      (lambda (_%id130995%_ _%super130996%_ _%properties130997%_)
        (let ((_%klass131091%_
               (let* ((_%id130999%_ _%id130995%_)
                      (_%name131002%_ _%id130995%_)
                      (_%direct-supers131005%_ _%super130996%_)
                      (_%direct-slots131008%_ '())
                      (_%properties131011%_
                       (cons (cons 'system: '#t)
                             (let ()
                               (declare (not safe))
                               (foldr__0 cons '() _%properties130997%_))))
                      (_%constructor131014%_ '#f))
                 (if (symbol? _%id130999%_)
                     (let ((_%id131019%_ _%id130999%_))
                       (if (symbol? _%name131002%_)
                           (let ((_%name131035%_ _%name131002%_))
                             (if (list? _%direct-supers131005%_)
                                 (let* ((_%direct-supers131045%_
                                         _%direct-supers131005%_)
                                        (_%direct-slots131055%_
                                         _%direct-slots131008%_)
                                        (_%properties131065%_
                                         _%properties131011%_))
                                   (if ((lambda (_%$obj131074%_)
                                          (or (not _%$obj131074%_)
                                              (symbol? _%$obj131074%_)))
                                        _%constructor131014%_)
                                       (let ((_%constructor131081%_
                                              _%constructor131014%_))
                                         (__make-class-type
                                          _%id131019%_
                                          _%name131035%_
                                          _%direct-supers131045%_
                                          _%direct-slots131055%_
                                          _%properties131065%_
                                          _%constructor131081%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          '(? (or not symbol?))
                                          'value:
                                          _%constructor131014%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'list?
                                    'value:
                                    _%direct-supers131005%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'symbol?
                              'value:
                              _%name131002%_)
                             '#!void)))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id130999%_)
                       '#!void)))))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id130995%_
             _%klass131091%_))
          _%klass131091%_)))))
