(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1712526088)
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
    (define t::t
      (let ((_%flags96659%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties96660%_ '((direct-slots:) (system: . #t)))
            (_%slot-table96661%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags96659%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table96661%_
           _%properties96660%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots96635%_
              '(id name
                   super
                   flags
                   fields
                   precedence-list
                   slot-vector
                   slot-table
                   properties
                   constructor
                   methods))
             (_%slot-vector96637%_ (list->vector (cons '#f _%slots96635%_)))
             (_%slot-table96644%_
              (let ((_%slot-table96639%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp98107
                       (lambda (_%slot96641%_ _%field96642%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table96639%_
                            _%slot96641%_
                            _%field96642%_))
                         (let ((__tmp98108
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot96641%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table96639%_
                            __tmp98108
                            _%field96642%_))))
                      (__tmp98105
                       (let ((__tmp98106
                              (let ()
                                (declare (not safe))
                                (##length _%slots96635%_))))
                         (declare (not safe))
                         (##iota __tmp98106 '1))))
                  (declare (not safe))
                  (##for-each __tmp98107 _%slots96635%_ __tmp98105))
                _%slot-table96639%_))
             (_%flags96646%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields96652%_
              (list->vector
               (let ((__tmp98109
                      (map (lambda (_%g9664796649%_)
                             (list _%g9664796649%_ '5 '#f))
                           (drop _%slots96635%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp98109))))
             (_%properties96654%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots96635%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t96656%_
              (let ((__tmp98110 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags96646%_
                 ##type-type
                 _%fields96652%_
                 __tmp98110
                 _%slot-vector96637%_
                 _%slot-table96644%_
                 _%properties96654%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t96656%_ _%t96656%_))
        _%t96656%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags96631%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties96632%_ '((direct-slots:) (system: . #t)))
            (_%slot-table96633%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp98111 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags96631%_
           '#f
           '#()
           __tmp98111
           '#(#f)
           _%slot-table96633%_
           _%properties96632%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj96629%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj96629%_ 'class))))
    (define class-type=?
      (lambda (_%x96604%_ _%y96605%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%x96604%_ 'class))
              (let ((_%x96609%_ _%x96604%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%y96605%_ 'class))
                    (let ((_%y96619%_ _%y96605%_))
                      (declare (not safe))
                      (__class-type=? _%x96609%_ _%y96619%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                       'contract:
                       'class-type?
                       'value:
                       _%y96605%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
                 'contract:
                 'class-type?
                 'value:
                 _%x96604%_)
                '#!void)))))
    (define __class-type=?
      (lambda (_%x96583%_ _%y96584%_)
        (let ()
          (let* ((_%x96587%_ _%x96583%_) (_%y96595%_ _%y96584%_))
            (eq? (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%x96587%_ '1 '#f '#f))
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%y96595%_ '1 '#f '#f)))))))
    (define type-opaque?
      (lambda (_%type96569%_)
        (let ()
          (if (let () (declare (not safe)) (##type? _%type96569%_))
              (let ((_%type96573%_ _%type96569%_))
                (declare (not safe))
                (__type-opaque? _%type96573%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
                 'contract:
                 '##type?
                 'value:
                 _%type96569%_)
                '#!void)))))
    (define __type-opaque?
      (lambda (_%type96557%_)
        (let ()
          (let* ((_%type96560%_ _%type96557%_)
                 (__tmp98112
                  (let ((__tmp98113
                         (let ()
                           (declare (not safe))
                           (##type-flags _%type96560%_))))
                    (declare (not safe))
                    (##fxand __tmp98113 type-flag-opaque))))
            (declare (not safe))
            (##fx= __tmp98112 type-flag-opaque)))))
    (define type-extensible?
      (lambda (_%type96543%_)
        (let ()
          (if (let () (declare (not safe)) (##type? _%type96543%_))
              (let ((_%type96547%_ _%type96543%_))
                (declare (not safe))
                (__type-extensible? _%type96547%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
                 'contract:
                 '##type?
                 'value:
                 _%type96543%_)
                '#!void)))))
    (define __type-extensible?
      (lambda (_%type96531%_)
        (let ()
          (let* ((_%type96534%_ _%type96531%_)
                 (__tmp98114
                  (let ((__tmp98115
                         (let ()
                           (declare (not safe))
                           (##type-flags _%type96534%_))))
                    (declare (not safe))
                    (##fxand __tmp98115 type-flag-extensible))))
            (declare (not safe))
            (##fx= __tmp98114 type-flag-extensible)))))
    (define class-type-final?
      (lambda (_%type96517%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%type96517%_ 'class))
              (let ((_%type96521%_ _%type96517%_))
                (declare (not safe))
                (__class-type-final? _%type96521%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
                 'contract:
                 'class-type?
                 'value:
                 _%type96517%_)
                '#!void)))))
    (define __class-type-final?
      (lambda (_%type96505%_)
        (let ()
          (let* ((_%type96508%_ _%type96505%_)
                 (__tmp98116
                  (let ((__tmp98117
                         (let ()
                           (declare (not safe))
                           (##type-flags _%type96508%_))))
                    (declare (not safe))
                    (##fxand __tmp98117 type-flag-extensible))))
            (declare (not safe))
            (##fx= __tmp98116 '0)))))
    (define class-type-struct?
      (lambda (_%klass96491%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96491%_ 'class))
              (let ((_%klass96495%_ _%klass96491%_))
                (declare (not safe))
                (__class-type-struct? _%klass96495%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96491%_)
                '#!void)))))
    (define __class-type-struct?
      (lambda (_%klass96479%_)
        (let ()
          (let* ((_%klass96482%_ _%klass96479%_)
                 (__tmp98118
                  (let ((__tmp98119
                         (let ()
                           (declare (not safe))
                           (##type-flags _%klass96482%_))))
                    (declare (not safe))
                    (##fxand __tmp98119 class-type-flag-struct))))
            (declare (not safe))
            (##fx= __tmp98118 class-type-flag-struct)))))
    (define class-type-sealed?
      (lambda (_%klass96465%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96465%_ 'class))
              (let ((_%klass96469%_ _%klass96465%_))
                (declare (not safe))
                (__class-type-sealed? _%klass96469%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96465%_)
                '#!void)))))
    (define __class-type-sealed?
      (lambda (_%klass96453%_)
        (let ()
          (let* ((_%klass96456%_ _%klass96453%_)
                 (__tmp98120
                  (let ((__tmp98121
                         (let ()
                           (declare (not safe))
                           (##type-flags _%klass96456%_))))
                    (declare (not safe))
                    (##fxand __tmp98121 class-type-flag-sealed))))
            (declare (not safe))
            (##fx= __tmp98120 class-type-flag-sealed)))))
    (define class-type-metaclass?
      (lambda (_%klass96439%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96439%_ 'class))
              (let ((_%klass96443%_ _%klass96439%_))
                (declare (not safe))
                (__class-type-metaclass? _%klass96443%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96439%_)
                '#!void)))))
    (define __class-type-metaclass?
      (lambda (_%klass96427%_)
        (let ()
          (let* ((_%klass96430%_ _%klass96427%_)
                 (__tmp98122
                  (let ((__tmp98123
                         (let ()
                           (declare (not safe))
                           (##type-flags _%klass96430%_))))
                    (declare (not safe))
                    (##fxand __tmp98123 class-type-flag-metaclass))))
            (declare (not safe))
            (##fx= __tmp98122 class-type-flag-metaclass)))))
    (define class-type-system?
      (lambda (_%klass96413%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96413%_ 'class))
              (let ((_%klass96417%_ _%klass96413%_))
                (declare (not safe))
                (__class-type-system? _%klass96417%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96413%_)
                '#!void)))))
    (define __class-type-system?
      (lambda (_%klass96401%_)
        (let ()
          (let* ((_%klass96404%_ _%klass96401%_)
                 (__tmp98124
                  (let ((__tmp98125
                         (let ()
                           (declare (not safe))
                           (##type-flags _%klass96404%_))))
                    (declare (not safe))
                    (##fxand __tmp98125 class-type-flag-system))))
            (declare (not safe))
            (##fx= __tmp98124 class-type-flag-system)))))
    (define make-class-type-descriptor
      (lambda (_%type-id96286%_
               _%type-name96287%_
               _%type-super96288%_
               _%precedence-list96289%_
               _%slot-vector96290%_
               _%properties96291%_
               _%constructor96292%_
               _%slot-table96293%_
               _%methods96294%_)
        (let ()
          (letrec ((_%make-props!96297%_
                    (lambda (_%key96370%_)
                      (letrec* ((_%ht96372%_
                                 (let ()
                                   (declare (not safe))
                                   (make-symbolic-table__% '#f '0)))
                                (_%put-slots!96373%_
                                 (lambda (_%ht96394%_ _%slots96395%_)
                                   (for-each
                                    (lambda (_%g9639696398%_)
                                      (let ()
                                        (declare (not safe))
                                        (symbolic-table-set!
                                         _%ht96394%_
                                         _%g9639696398%_
                                         '#t)))
                                    _%slots96395%_)))
                                (_%put-alist!96374%_
                                 (lambda (_%ht96383%_
                                          _%key96384%_
                                          _%alist96385%_)
                                   (let ((_%$e96387%_
                                          (let ()
                                            (declare (not safe))
                                            (agetq__0
                                             _%key96384%_
                                             _%alist96385%_))))
                                     (if _%$e96387%_
                                         ((lambda (_%g9638996391%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%put-slots!96373%_
                                               _%ht96383%_
                                               _%g9638996391%_)))
                                          _%$e96387%_)
                                         '#!void)))))
                        (let ()
                          (declare (not safe))
                          (_%put-alist!96374%_
                           _%ht96372%_
                           _%key96370%_
                           _%properties96291%_))
                        (for-each
                         (lambda (_%mixin96376%_)
                           (let ((_%alist96378%_
                                  (##structure-ref
                                   _%mixin96376%_
                                   '9
                                   class::t
                                   '#f)))
                             (if (or (let ()
                                       (declare (not safe))
                                       (agetq__0 'transparent: _%alist96378%_))
                                     (eq? '#t
                                          (let ()
                                            (declare (not safe))
                                            (agetq__0
                                             _%key96370%_
                                             _%alist96378%_))))
                                 (let ((__tmp98126
                                        (let ()
                                          (declare (not safe))
                                          (class-type-slot-list
                                           _%mixin96376%_))))
                                   (declare (not safe))
                                   (_%put-slots!96373%_
                                    _%ht96372%_
                                    __tmp98126))
                                 (let ()
                                   (declare (not safe))
                                   (_%put-alist!96374%_
                                    _%ht96372%_
                                    _%key96370%_
                                    _%alist96378%_)))))
                         _%precedence-list96289%_)
                        _%ht96372%_))))
            (let* ((_%transparent?96299%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'transparent: _%properties96291%_)))
                   (_%all-slots-printable?96304%_
                    (let ((_%$e96301%_ _%transparent?96299%_))
                      (if _%$e96301%_
                          _%$e96301%_
                          (eq? '#t
                               (let ()
                                 (declare (not safe))
                                 (agetq__0 'print: _%properties96291%_))))))
                   (_%printable96306%_
                    (if (let ()
                          (declare (not safe))
                          (not _%all-slots-printable?96304%_))
                        (let ()
                          (declare (not safe))
                          (_%make-props!96297%_ 'print:))
                        '#f))
                   (_%all-slots-equalable?96311%_
                    (let ((_%$e96308%_ _%transparent?96299%_))
                      (if _%$e96308%_
                          _%$e96308%_
                          (eq? '#t
                               (let ()
                                 (declare (not safe))
                                 (agetq__0 'equal: _%properties96291%_))))))
                   (_%equalable96313%_
                    (if (let ()
                          (declare (not safe))
                          (not _%all-slots-equalable?96311%_))
                        (let ()
                          (declare (not safe))
                          (_%make-props!96297%_ 'equal:))
                        '#f))
                   (_%first-new-field96315%_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _%type-super96288%_
                           'class))
                        (let ((__tmp98127
                               (##structure-ref
                                _%type-super96288%_
                                '7
                                class::t
                                '#f)))
                          (declare (not safe))
                          (##vector-length __tmp98127))
                        '1))
                   (_%field-info-length96317%_
                    (let ((__tmp98128
                           (let ((__tmp98129
                                  (let ()
                                    (declare (not safe))
                                    (##vector-length _%slot-vector96290%_))))
                             (declare (not safe))
                             (##fx- __tmp98129 _%first-new-field96315%_))))
                      (declare (not safe))
                      (##fx* '3 __tmp98128)))
                   (_%field-info96319%_
                    (let ()
                      (declare (not safe))
                      (##make-vector _%field-info-length96317%_ '#f)))
                   (_%struct?96321%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'struct: _%properties96291%_)))
                   (_%final?96323%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'final: _%properties96291%_)))
                   (_%metaclass96331%_
                    (let ((_%metaclass9632496326%_
                           (let ()
                             (declare (not safe))
                             (agetq__0 'metaclass: _%properties96291%_))))
                      (if _%metaclass9632496326%_
                          (let ((_%metaclass96329%_ _%metaclass9632496326%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%metaclass96329%_
                                   'class))
                                '#!void
                                (error '"metaclass is not a class type"
                                       'class:
                                       _%type-id96286%_
                                       'metaclass:
                                       _%metaclass96329%_))
                            _%metaclass96329%_)
                          '#f)))
                   (_%system?96333%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'system: _%properties96291%_)))
                   (_%opaque?96338%_
                    (let ((_%$e96335%_
                           (let ()
                             (declare (not safe))
                             (not _%all-slots-equalable?96311%_))))
                      (if _%$e96335%_
                          _%$e96335%_
                          (if _%type-super96288%_
                              (let ()
                                (declare (not safe))
                                (__type-opaque? _%type-super96288%_))
                              '#f))))
                   (_%type-flags96340%_
                    (let ((__tmp98134
                           (if _%final?96323%_ '0 type-flag-extensible))
                          (__tmp98133
                           (if _%opaque?96338%_ type-flag-opaque '0))
                          (__tmp98132
                           (if _%struct?96321%_ class-type-flag-struct '0))
                          (__tmp98131
                           (if _%metaclass96331%_
                               class-type-flag-metaclass
                               '0))
                          (__tmp98130
                           (if _%system?96333%_ class-type-flag-system '0)))
                      (declare (not safe))
                      (##fxior type-flag-id
                               type-flag-concrete
                               __tmp98134
                               __tmp98133
                               __tmp98132
                               __tmp98131
                               __tmp98130)))
                   (_%precedence-list96348%_
                    (let ((_%$e96342%_ (memq t::t _%precedence-list96289%_)))
                      (if _%$e96342%_
                          ((lambda (_%tail96345%_)
                             (if (let ((__tmp98135 (cdr _%tail96345%_)))
                                   (declare (not safe))
                                   (null? __tmp98135))
                                 _%precedence-list96289%_
                                 (error '"BUG: t::t is not last in the precedence list"
                                        'precedence-list:
                                        _%precedence-list96289%_)))
                           _%$e96342%_)
                          (let ((__tmp98136 (cons t::t '())))
                            (declare (not safe))
                            (##append _%precedence-list96289%_ __tmp98136))))))
              (let _%loop96351%_ ((_%i96353%_ _%first-new-field96315%_)
                                  (_%j96354%_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _%j96354%_ _%field-info-length96317%_))
                    (let* ((_%slot96356%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%slot-vector96290%_ _%i96353%_)))
                           (_%flags96364%_
                            (if _%transparent?96299%_
                                '0
                                (let ((__tmp98138
                                       (if (or _%all-slots-printable?96304%_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%printable96306%_
                                                  _%slot96356%_
                                                  '#f)))
                                           '0
                                           '1))
                                      (__tmp98137
                                       (if (or _%all-slots-equalable?96311%_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%equalable96313%_
                                                  _%slot96356%_
                                                  '#f)))
                                           '0
                                           '4)))
                                  (declare (not safe))
                                  (##fxior __tmp98138 __tmp98137)))))
                      (vector-set!
                       _%field-info96319%_
                       _%j96354%_
                       _%slot96356%_)
                      (vector-set!
                       _%field-info96319%_
                       (let () (declare (not safe)) (##fx+ _%j96354%_ '1))
                       _%flags96364%_)
                      (let ((__tmp98140
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i96353%_ '1)))
                            (__tmp98139
                             (let ()
                               (declare (not safe))
                               (##fx+ _%j96354%_ '3))))
                        (declare (not safe))
                        (_%loop96351%_ __tmp98140 __tmp98139)))
                    '#!void))
              (if _%metaclass96331%_
                  (let ((_%val96367%_
                         (let ()
                           (declare (not safe))
                           (make-instance
                            _%metaclass96331%_
                            _%type-id96286%_
                            _%type-name96287%_
                            _%type-flags96340%_
                            _%type-super96288%_
                            _%field-info96319%_
                            _%precedence-list96348%_
                            _%slot-vector96290%_
                            _%slot-table96293%_
                            _%properties96291%_
                            _%constructor96292%_
                            _%methods96294%_))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%val96367%_ 'class))
                        _%val96367%_
                        (error '"bad cast" class::t _%val96367%_)))
                  (let ()
                    (declare (not safe))
                    (##structure
                     class::t
                     _%type-id96286%_
                     _%type-name96287%_
                     _%type-flags96340%_
                     _%type-super96288%_
                     _%field-info96319%_
                     _%precedence-list96348%_
                     _%slot-vector96290%_
                     _%slot-table96293%_
                     _%properties96291%_
                     _%constructor96292%_
                     _%methods96294%_))))))))
    (define class-type-id
      (lambda (_%klass96284%_)
        (##structure-ref _%klass96284%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass96282%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96282%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass96279%_ _%val96280%_)
        (##structure-set! _%klass96279%_ _%val96280%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass96274%_ _%val96276%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96274%_
           _%val96276%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass96272%_)
        (##structure-ref _%klass96272%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass96270%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96270%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass96267%_ _%val96268%_)
        (##structure-set! _%klass96267%_ _%val96268%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass96262%_ _%val96264%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96262%_
           _%val96264%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass96260%_)
        (##structure-ref _%klass96260%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass96258%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96258%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass96255%_ _%val96256%_)
        (##structure-set! _%klass96255%_ _%val96256%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass96250%_ _%val96252%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96250%_
           _%val96252%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass96248%_)
        (##structure-ref _%klass96248%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass96246%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96246%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass96243%_ _%val96244%_)
        (##structure-set! _%klass96243%_ _%val96244%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass96238%_ _%val96240%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96238%_
           _%val96240%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass96236%_)
        (##structure-ref _%klass96236%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass96234%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96234%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass96231%_ _%val96232%_)
        (##structure-set! _%klass96231%_ _%val96232%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass96226%_ _%val96228%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96226%_
           _%val96228%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass96224%_)
        (##structure-ref _%klass96224%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass96222%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass96222%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass96219%_ _%val96220%_)
        (##structure-set!
         _%klass96219%_
         _%val96220%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass96214%_ _%val96216%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96214%_
           _%val96216%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass96212%_)
        (##structure-ref _%klass96212%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass96210%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass96210%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass96207%_ _%val96208%_)
        (##structure-set!
         _%klass96207%_
         _%val96208%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass96202%_ _%val96204%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96202%_
           _%val96204%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass96200%_)
        (##structure-ref _%klass96200%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass96198%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96198%_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass96195%_ _%val96196%_)
        (##structure-set!
         _%klass96195%_
         _%val96196%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass96190%_ _%val96192%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96190%_
           _%val96192%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass96188%_)
        (##structure-ref _%klass96188%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass96186%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96186%_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_%klass96183%_ _%val96184%_)
        (##structure-set!
         _%klass96183%_
         _%val96184%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass96178%_ _%val96180%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96178%_
           _%val96180%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass96176%_)
        (##structure-ref _%klass96176%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass96174%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass96174%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass96171%_ _%val96172%_)
        (##structure-set!
         _%klass96171%_
         _%val96172%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass96166%_ _%val96168%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96166%_
           _%val96168%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass96164%_)
        (##structure-ref _%klass96164%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass96162%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96162%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass96159%_ _%val96160%_)
        (##structure-set! _%klass96159%_ _%val96160%_ '11 class::t 'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass96154%_ _%val96156%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96154%_
           _%val96156%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass96140%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96140%_ 'class))
              (let ((_%klass96144%_ _%klass96140%_))
                (declare (not safe))
                (__class-type-slot-list _%klass96144%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96140%_)
                '#!void)))))
    (define __class-type-slot-list
      (lambda (_%klass96128%_)
        (let ((_%klass96131%_ _%klass96128%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass96131%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass96114%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96114%_ 'class))
              (let ((_%klass96118%_ _%klass96114%_))
                (declare (not safe))
                (__class-type-field-count _%klass96118%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96114%_)
                '#!void)))))
    (define __class-type-field-count
      (lambda (_%klass96102%_)
        (let ()
          (let* ((_%klass96105%_ _%klass96102%_)
                 (__tmp98141
                  (let ((__tmp98142
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass96105%_
                            '7
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##vector-length __tmp98142))))
            (declare (not safe))
            (##fx- __tmp98141 '1)))))
    (define class-type-seal!
      (lambda (_%klass96088%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96088%_ 'class))
              (let ((_%klass96092%_ _%klass96088%_))
                (declare (not safe))
                (__class-type-seal! _%klass96092%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96088%_)
                '#!void)))))
    (define __class-type-seal!
      (lambda (_%klass96076%_)
        (let ((_%klass96079%_ _%klass96076%_))
          (let ((__tmp98143
                 (let ((__tmp98144
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass96079%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp98144))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass96079%_
             __tmp98143
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct96051%_ _%maybe-super-struct96052%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%maybe-sub-struct96051%_ 'class))
              (let ((_%maybe-sub-struct96056%_ _%maybe-sub-struct96051%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%maybe-super-struct96052%_
                       'class))
                    (let ((_%maybe-super-struct96066%_
                           _%maybe-super-struct96052%_))
                      (declare (not safe))
                      (__substruct?
                       _%maybe-sub-struct96056%_
                       _%maybe-super-struct96066%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                       'contract:
                       'class-type?
                       'value:
                       _%maybe-super-struct96052%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
                 'contract:
                 'class-type?
                 'value:
                 _%maybe-sub-struct96051%_)
                '#!void)))))
    (define __substruct?
      (lambda (_%maybe-sub-struct96020%_ _%maybe-super-struct96021%_)
        (let ((_%maybe-sub-struct96024%_ _%maybe-sub-struct96020%_))
          (let* ((_%maybe-super-struct96032%_ _%maybe-super-struct96021%_)
                 (_%maybe-super-struct-id96041%_
                  (let ()
                    (declare (not safe))
                    (##type-id _%maybe-super-struct96032%_))))
            (let _%lp96043%_ ((_%super-struct96045%_
                               _%maybe-sub-struct96024%_))
              (let ()
                (if (let () (declare (not safe)) (not _%super-struct96045%_))
                    (let () '#f)
                    (if (eq? _%maybe-super-struct-id96041%_
                             (let ()
                               (declare (not safe))
                               (##type-id _%super-struct96045%_)))
                        (let () '#t)
                        (let ((__tmp98145
                               (let ()
                                 (declare (not safe))
                                 (##type-super _%super-struct96045%_))))
                          (declare (not safe))
                          (_%lp96043%_ __tmp98145))))))))))
    (define base-struct/1
      (lambda (_%klass96015%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96015%_ 'class))
            (let ()
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _%klass96015%_))
                  _%klass96015%_
                  (let () (declare (not safe)) (##type-super _%klass96015%_))))
            (if (let () (declare (not safe)) (not _%klass96015%_))
                (let () '#f)
                (let () (error '"not a class or false" _%klass96015%_))))))
    (define base-struct/2
      (lambda (_%klass196000%_ _%klass296001%_)
        (let ((_%s196003%_
               (let () (declare (not safe)) (base-struct/1 _%klass196000%_)))
              (_%s296004%_
               (let () (declare (not safe)) (base-struct/1 _%klass296001%_))))
          (if (or (let () (declare (not safe)) (not _%s196003%_))
                  (and _%s296004%_
                       (let ()
                         (declare (not safe))
                         (substruct? _%s196003%_ _%s296004%_))))
              (let () _%s296004%_)
              (if (or (let () (declare (not safe)) (not _%s296004%_))
                      (and _%s196003%_
                           (let ()
                             (declare (not safe))
                             (substruct? _%s296004%_ _%s196003%_))))
                  (let () _%s196003%_)
                  (let ()
                    (error '"bad mixin: incompatible struct bases"
                           _%klass196000%_
                           _%klass296001%_
                           _%s196003%_
                           _%s296004%_)))))))
    (define base-struct/list
      (lambda (_%all-supers95884%_)
        (let* ((_%all-supers9588595910%_ _%all-supers95884%_)
               (_%E9589095914%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers9588595910%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K9590895997%_ (lambda () '#f))
                (_%K9590595983%_
                 (lambda (_%x95981%_)
                   (let () (declare (not safe)) (base-struct/1 _%x95981%_))))
                (_%K9590095960%_
                 (lambda (_%y95957%_ _%x95958%_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _%x95958%_ _%y95957%_))))
                (_%K9589195921%_
                 (lambda (_%y95918%_ _%x95919%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x95919%_ _%y95918%_)))))
            (let* ((_%__match9809998100%_
                    (lambda (_%hd9589295924%_ _%tl9589395926%_)
                      (let ((_%x95929%_ _%hd9589295924%_))
                        (letrec ((_%splice-rest9589595931%_
                                  (lambda (_%rest9589995938%_ _%y95940%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%rest9589995938%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%K9589195921%_
                                           _%y95940%_
                                           _%x95929%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%E9589095914%_)))))
                                 (_%splice-try9589795933%_
                                  (lambda (_%hd9589895942%_
                                           _%rest9589995944%_
                                           _%y9589495945%_)
                                    (let ((_%y95948%_ _%hd9589895942%_))
                                      (let ((__tmp98147
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%rest9589995944%_)))
                                            (__tmp98146
                                             (cons _%y95948%_
                                                   _%y9589495945%_)))
                                        (declare (not safe))
                                        (_%splice-loop9589695935%_
                                         __tmp98147
                                         __tmp98146)))))
                                 (_%splice-loop9589695935%_
                                  (lambda (_%rest9589995950%_ _%y9589495951%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _%rest9589995950%_))
                                        (let ((__tmp98148
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest9589995950%_))))
                                          (declare (not safe))
                                          (_%splice-try9589795933%_
                                           __tmp98148
                                           _%rest9589995950%_
                                           _%y9589495951%_))
                                        (let ((__tmp98149
                                               (reverse _%y9589495951%_)))
                                          (declare (not safe))
                                          (_%splice-rest9589595931%_
                                           _%rest9589995950%_
                                           __tmp98149))))))
                          (let ()
                            (declare (not safe))
                            (_%splice-loop9589695935%_
                             _%tl9589395926%_
                             '()))))))
                   (_%try-match9588795993%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all-supers9588595910%_))
                          (let ((_%tl9590795988%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers9588595910%_)))
                                (_%hd9590695986%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers9588595910%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl9590795988%_))
                                (let ((_%x95991%_ _%hd9590695986%_))
                                  (declare (not safe))
                                  (base-struct/1 _%x95991%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl9590795988%_))
                                    (let ((_%tl9590495972%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl9590795988%_)))
                                          (_%hd9590395970%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl9590795988%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl9590495972%_))
                                          (let ((_%x95968%_ _%hd9590695986%_)
                                                (_%y95975%_ _%hd9590395970%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K9590095960%_
                                               _%y95975%_
                                               _%x95968%_)))
                                          (_%__match9809998100%_
                                           _%hd9590695986%_
                                           _%tl9590795988%_)))
                                    (_%__match9809998100%_
                                     _%hd9590695986%_
                                     _%tl9590795988%_))))
                          (let () (declare (not safe)) (_%E9589095914%_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _%all-supers9588595910%_))
                  (let () (declare (not safe)) (_%K9590895997%_))
                  (let () (declare (not safe)) (_%try-match9588795993%_))))))))
    (define base-struct
      (lambda _%all-supers95882%_
        (let () (declare (not safe)) (base-struct/list _%all-supers95882%_))))
    (define find-super-constructor
      (lambda (_%super95833%_)
        (let _%lp95835%_ ((_%rest95837%_ _%super95833%_)
                          (_%constructor95838%_ '#f))
          (let* ((_%rest9583995847%_ _%rest95837%_)
                 (_%else9584195855%_ (lambda () _%constructor95838%_))
                 (_%K9584395870%_
                  (lambda (_%rest95858%_ _%hd95859%_)
                    (let ((_%$e95861%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd95859%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e95861%_
                          ((lambda (_%xconstructor95864%_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _%constructor95838%_))
                                     (eq? _%constructor95838%_
                                          _%xconstructor95864%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%lp95835%_
                                    _%rest95858%_
                                    _%xconstructor95864%_))
                                 (error '"conflicting implicit constructors"
                                        _%constructor95838%_
                                        _%xconstructor95864%_)))
                           _%$e95861%_)
                          (let ()
                            (declare (not safe))
                            (_%lp95835%_
                             _%rest95858%_
                             _%constructor95838%_)))))))
            (if (let () (declare (not safe)) (##pair? _%rest9583995847%_))
                (let ((_%hd9584495873%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9583995847%_)))
                      (_%tl9584595875%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9583995847%_))))
                  (let* ((_%hd95878%_ _%hd9584495873%_)
                         (_%rest95880%_ _%tl9584595875%_))
                    (declare (not safe))
                    (_%K9584395870%_ _%rest95880%_ _%hd95878%_)))
                (let () (declare (not safe)) (_%else9584195855%_)))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list95809%_ _%direct-slots95810%_)
        (let* ((_%next-slot95812%_ '1)
               (_%slot-table95814%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots95816%_ '(__class))
               (_%process-slot95820%_
                (lambda (_%slot95818%_)
                  (if (let () (declare (not safe)) (symbol? _%slot95818%_))
                      '#!void
                      (error '"invalid slot name" _%slot95818%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table95814%_
                              _%slot95818%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table95814%_
                           _%slot95818%_
                           _%next-slot95812%_))
                        (let ((__tmp98150
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot95818%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table95814%_
                           __tmp98150
                           _%next-slot95812%_))
                        (set! _%r-slots95816%_
                              (cons _%slot95818%_ _%r-slots95816%_))
                        (set! _%next-slot95812%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot95812%_ '1))))
                      '#!void)))
               (_%process-slots95826%_
                (lambda (_%g9582195823%_)
                  (for-each _%process-slot95820%_ _%g9582195823%_))))
          (let ((__tmp98152
                 (lambda (_%mixin95829%_)
                   (let ((__tmp98153
                          (let ((__tmp98154
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%mixin95829%_
                                    '9
                                    '#f
                                    '#f))))
                            (declare (not safe))
                            (agetq__% 'direct-slots: __tmp98154 '()))))
                     (declare (not safe))
                     (_%process-slots95826%_ __tmp98153))))
                (__tmp98151 (reverse _%class-precedence-list95809%_)))
            (declare (not safe))
            (##for-each __tmp98152 __tmp98151))
          (let ()
            (declare (not safe))
            (_%process-slots95826%_ _%direct-slots95810%_))
          (let ((_%slot-vector95831%_
                 (list->vector
                  (let () (declare (not safe)) (##reverse _%r-slots95816%_)))))
            (values _%slot-vector95831%_ _%slot-table95814%_)))))
    (define make-class-type
      (lambda (_%id95734%_
               _%name95735%_
               _%direct-supers95736%_
               _%direct-slots95737%_
               _%properties95738%_
               _%constructor95739%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id95734%_))
              (let ((_%id95743%_ _%id95734%_))
                (if (let () (declare (not safe)) (symbol? _%name95735%_))
                    (let ((_%name95753%_ _%name95735%_))
                      (if (let ()
                            (declare (not safe))
                            (list? _%direct-supers95736%_))
                          (let ((_%direct-supers95763%_
                                 _%direct-supers95736%_))
                            (if (let ()
                                  (declare (not safe))
                                  (list? _%direct-slots95737%_))
                                (let ((_%direct-slots95773%_
                                       _%direct-slots95737%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (list? _%properties95738%_))
                                      (let ((_%properties95783%_
                                             _%properties95738%_))
                                        (if ((lambda (_%$obj95792%_)
                                               (or (let ()
                                                     (declare (not safe))
                                                     (not _%$obj95792%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (symbol? _%$obj95792%_))))
                                             _%constructor95739%_)
                                            (let ((_%constructor95799%_
                                                   _%constructor95739%_))
                                              (declare (not safe))
                                              (__make-class-type
                                               _%id95743%_
                                               _%name95753%_
                                               _%direct-supers95763%_
                                               _%direct-slots95773%_
                                               _%properties95783%_
                                               _%constructor95799%_))
                                            (begin
                                              (raise-contract-violation-error
                                               '"contract violation"
                                               'context:
                                               '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                               'contract:
                                               '(? (or not symbol?))
                                               'value:
                                               _%constructor95739%_)
                                              '#!void)))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                         'contract:
                                         'list?
                                         'value:
                                         _%properties95738%_)
                                        '#!void)))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                   'contract:
                                   'list?
                                   'value:
                                   _%direct-slots95737%_)
                                  '#!void)))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                             'contract:
                             'list?
                             'value:
                             _%direct-supers95736%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                       'contract:
                       'symbol?
                       'value:
                       _%name95735%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
                 'contract:
                 'symbol?
                 'value:
                 _%id95734%_)
                '#!void)))))
    (define __make-class-type
      (lambda (_%id95603%_
               _%name95604%_
               _%direct-supers95605%_
               _%direct-slots95606%_
               _%properties95607%_
               _%constructor95608%_)
        (let ()
          (let* ((_%id95611%_ _%id95603%_) (_%name95619%_ _%name95604%_))
            (let* ((_%direct-supers95627%_ _%direct-supers95605%_)
                   (_%direct-slots95635%_ _%direct-slots95606%_))
              (let* ((_%properties95643%_ _%properties95607%_)
                     (_%constructor95651%_ _%constructor95608%_))
                (let ((_%$e95663%_
                       (let ((__tmp98155
                              (lambda (_%$obj95660%_)
                                (let ((__tmp98156
                                       (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%$obj95660%_
                                          'class))))
                                  (declare (not safe))
                                  (not __tmp98156)))))
                         (declare (not safe))
                         (__find __tmp98155 _%direct-supers95627%_))))
                  (if _%$e95663%_
                      ((lambda (_%g9566595667%_)
                         (error '"Illegal super class; not a class descriptor"
                                _%g9566595667%_))
                       _%$e95663%_)
                      (let ((_%$e95670%_
                             (let ()
                               (declare (not safe))
                               (__find __class-type-final?
                                       _%direct-supers95627%_))))
                        (if _%$e95670%_
                            ((lambda (_%g9567295674%_)
                               (error '"Cannot extend final class"
                                      _%g9567295674%_))
                             _%$e95670%_)
                            '#!void))))
                (let ((_g98157_
                       (let ()
                         (declare (not safe))
                         (compute-precedence-list _%direct-supers95627%_))))
                  (begin
                    (let ((_g98158_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g98157_)
                                 (##vector-length _g98157_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g98158_ 2)))
                          (error "Context expects 2 values" _g98158_)))
                    (let ((_%precedence-list95677%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g98157_ 0)))
                          (_%struct-super95678%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g98157_ 1))))
                      (let ((_g98159_
                             (let ()
                               (declare (not safe))
                               (compute-class-slots
                                _%precedence-list95677%_
                                _%direct-slots95635%_))))
                        (begin
                          (let ((_g98160_
                                 (let ()
                                   (declare (not safe))
                                   (if (##values? _g98159_)
                                       (##vector-length _g98159_)
                                       1))))
                            (if (not (let ()
                                       (declare (not safe))
                                       (##fx= _g98160_ 2)))
                                (error "Context expects 2 values" _g98160_)))
                          (let ((_%slot-vector95680%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g98159_ 0)))
                                (_%slot-table95681%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref _g98159_ 1))))
                            (let* ((_%properties95683%_
                                    (cons (cons 'direct-slots:
                                                _%direct-slots95635%_)
                                          (cons (cons 'direct-supers:
                                                      _%direct-supers95627%_)
                                                _%properties95643%_)))
                                   (_%constructor*95688%_
                                    (let ((_%$e95685%_ _%constructor95651%_))
                                      (if _%$e95685%_
                                          _%$e95685%_
                                          (let ()
                                            (declare (not safe))
                                            (find-super-constructor
                                             _%direct-supers95627%_)))))
                                   (_%precedence-list95731%_
                                    (if (or (let ()
                                              (declare (not safe))
                                              (agetq__0
                                               'system:
                                               _%properties95683%_))
                                            (memq object::t
                                                  _%precedence-list95677%_))
                                        _%precedence-list95677%_
                                        (let _%loop95693%_ ((_%tail95695%_
                                                             _%precedence-list95677%_)
                                                            (_%head95696%_
                                                             '()))
                                          (let* ((_%tail9569795705%_
                                                  _%tail95695%_)
                                                 (_%else9569995713%_
                                                  (lambda ()
                                                    (let ((__tmp98161
                                                           (cons object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons t::t '()))))
              (declare (not safe))
              (__foldl1 cons __tmp98161 _%head95696%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%K9570195719%_
                                                  (lambda (_%rest95716%_
                                                           _%hd95717%_)
                                                    (if (eq? _%hd95717%_ t::t)
                                                        (let ((__tmp98162
                                                               (cons object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%tail95695%_)))
                  (declare (not safe))
                  (__foldl1 cons __tmp98162 _%head95696%_))
                (let ((__tmp98163 (cons _%hd95717%_ _%head95696%_)))
                  (declare (not safe))
                  (_%loop95693%_ _%rest95716%_ __tmp98163))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##pair? _%tail9569795705%_))
                                                (let ((_%hd9570295722%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%tail9569795705%_)))
                                                      (_%tl9570395724%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%tail9569795705%_))))
                                                  (let* ((_%hd95727%_
                                                          _%hd9570295722%_)
                                                         (_%rest95729%_
                                                          _%tl9570395724%_))
                                                    (declare (not safe))
                                                    (_%K9570195719%_
                                                     _%rest95729%_
                                                     _%hd95727%_)))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%else9569995713%_))))))))
                              (declare (not safe))
                              (make-class-type-descriptor
                               _%id95611%_
                               _%name95619%_
                               _%struct-super95678%_
                               _%precedence-list95731%_
                               _%slot-vector95680%_
                               _%properties95683%_
                               _%constructor*95688%_
                               _%slot-table95681%_
                               '#f))))))))))))))
    (define class-precedence-list
      (lambda (_%klass95589%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95589%_ 'class))
              (let ((_%klass95593%_ _%klass95589%_))
                (declare (not safe))
                (__class-precedence-list _%klass95593%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95589%_)
                '#!void)))))
    (define __class-precedence-list
      (lambda (_%klass95577%_)
        (let ((_%klass95580%_ _%klass95577%_))
          (cons _%klass95580%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass95580%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers95574%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers95574%_))))
    (define make-class-predicate
      (lambda (_%klass95560%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95560%_ 'class))
              (let ((_%klass95564%_ _%klass95560%_))
                (declare (not safe))
                (__make-class-predicate _%klass95564%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95560%_)
                '#!void)))))
    (define __make-class-predicate
      (lambda (_%klass95531%_)
        (let ()
          (let* ((_%klass95534%_ _%klass95531%_)
                 (_%tid95543%_
                  (let () (declare (not safe)) (##type-id _%klass95534%_))))
            (if (let ()
                  (declare (not safe))
                  (__class-type-final? _%klass95534%_))
                (let ()
                  (lambda (_%g9554595547%_)
                    (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       _%g9554595547%_
                       _%tid95543%_))))
                (if (let ()
                      (declare (not safe))
                      (__class-type-struct? _%klass95534%_))
                    (let ()
                      (lambda (_%g9555095552%_)
                        (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _%g9555095552%_
                           _%tid95543%_))))
                    (let ()
                      (lambda (_%g9555595557%_)
                        (let ()
                          (declare (not safe))
                          (__class-instance?
                           _%klass95534%_
                           _%g9555595557%_))))))))))
    (define make-class-slot-accessor
      (lambda (_%klass95506%_ _%slot95507%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95506%_ 'class))
              (let ((_%klass95511%_ _%klass95506%_))
                (if (let () (declare (not safe)) (symbol? _%slot95507%_))
                    (let ((_%slot95521%_ _%slot95507%_))
                      (declare (not safe))
                      (__make-class-slot-accessor
                       _%klass95511%_
                       _%slot95521%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                       'contract:
                       'symbol?
                       'value:
                       _%slot95507%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95506%_)
                '#!void)))))
    (define __make-class-slot-accessor
      (lambda (_%klass95474%_ _%slot95475%_)
        (let ((_%klass95478%_ _%klass95474%_))
          (let* ((_%slot95486%_ _%slot95475%_)
                 (_%field95495%_
                  (let ((__tmp98164
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass95478%_
                            '8
                            '#f
                            '#f))))
                    (declare (not safe))
                    (symbolic-table-ref __tmp98164 _%slot95486%_ '#f))))
            (if (let () (declare (not safe)) (not _%field95495%_))
                (let ()
                  (error '"unknown slot"
                         'class:
                         _%klass95478%_
                         'slot:
                         _%slot95486%_)
                  '#!void)
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass95478%_))
                    (let ()
                      (declare (not safe))
                      (make-final-slot-accessor
                       _%klass95478%_
                       _%slot95486%_
                       _%field95495%_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _%klass95478%_))
                        (let ()
                          (declare (not safe))
                          (make-struct-slot-accessor
                           _%klass95478%_
                           _%slot95486%_
                           _%field95495%_))
                        (if (let ((_%strukt95501%_
                                   (let ()
                                     (declare (not safe))
                                     (base-struct/1 _%klass95478%_))))
                              (and (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%strukt95501%_
                                      'class))
                                   (let ((__tmp98165
                                          (let ((__tmp98166
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%strukt95501%_
                                                    '7
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (##vector-length __tmp98166))))
                                     (declare (not safe))
                                     (##fx< _%field95495%_ __tmp98165))))
                            (let ()
                              (declare (not safe))
                              (make-struct-subclass-slot-accessor
                               _%klass95478%_
                               _%slot95486%_
                               _%field95495%_))
                            (let ()
                              (declare (not safe))
                              (make-class-cached-slot-accessor
                               _%klass95478%_
                               _%slot95486%_
                               _%field95495%_))))))))))
    (define make-class-slot-mutator
      (lambda (_%klass95449%_ _%slot95450%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95449%_ 'class))
              (let ((_%klass95454%_ _%klass95449%_))
                (if (let () (declare (not safe)) (symbol? _%slot95450%_))
                    (let ((_%slot95464%_ _%slot95450%_))
                      (declare (not safe))
                      (__make-class-slot-mutator _%klass95454%_ _%slot95464%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                       'contract:
                       'symbol?
                       'value:
                       _%slot95450%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95449%_)
                '#!void)))))
    (define __make-class-slot-mutator
      (lambda (_%klass95417%_ _%slot95418%_)
        (let ((_%klass95421%_ _%klass95417%_))
          (let* ((_%slot95429%_ _%slot95418%_)
                 (_%field95438%_
                  (let ((__tmp98167
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass95421%_
                            '8
                            '#f
                            '#f))))
                    (declare (not safe))
                    (symbolic-table-ref __tmp98167 _%slot95429%_ '#f))))
            (if (let () (declare (not safe)) (not _%field95438%_))
                (let ()
                  (error '"unknown slot"
                         'class:
                         _%klass95421%_
                         'slot:
                         _%slot95429%_)
                  '#!void)
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass95421%_))
                    (let ()
                      (declare (not safe))
                      (make-final-slot-mutator
                       _%klass95421%_
                       _%slot95429%_
                       _%field95438%_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _%klass95421%_))
                        (let ()
                          (declare (not safe))
                          (make-struct-slot-mutator
                           _%klass95421%_
                           _%slot95429%_
                           _%field95438%_))
                        (if (let ((_%strukt95444%_
                                   (let ()
                                     (declare (not safe))
                                     (base-struct/1 _%klass95421%_))))
                              (and (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%strukt95444%_
                                      'class))
                                   (let ((__tmp98168
                                          (let ((__tmp98169
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%strukt95444%_
                                                    '7
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (##vector-length __tmp98169))))
                                     (declare (not safe))
                                     (##fx< _%field95438%_ __tmp98168))))
                            (let ()
                              (declare (not safe))
                              (make-struct-subclass-slot-mutator
                               _%klass95421%_
                               _%slot95429%_
                               _%field95438%_))
                            (let ()
                              (declare (not safe))
                              (make-class-cached-slot-mutator
                               _%klass95421%_
                               _%slot95429%_
                               _%field95438%_))))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass95392%_ _%slot95393%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95392%_ 'class))
              (let ((_%klass95397%_ _%klass95392%_))
                (if (let () (declare (not safe)) (symbol? _%slot95393%_))
                    (let ((_%slot95407%_ _%slot95393%_))
                      (declare (not safe))
                      (__make-class-slot-unchecked-accessor
                       _%klass95397%_
                       _%slot95407%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                       'contract:
                       'symbol?
                       'value:
                       _%slot95393%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95392%_)
                '#!void)))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass95360%_ _%slot95361%_)
        (let ((_%klass95364%_ _%klass95360%_))
          (let* ((_%slot95372%_ _%slot95361%_)
                 (_%field95381%_
                  (let ((__tmp98170
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass95364%_
                            '8
                            '#f
                            '#f))))
                    (declare (not safe))
                    (symbolic-table-ref __tmp98170 _%slot95372%_ '#f))))
            (if (let () (declare (not safe)) (not _%field95381%_))
                (let ()
                  (error '"unknown slot"
                         'class:
                         _%klass95364%_
                         'slot:
                         _%slot95372%_)
                  '#!void)
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass95364%_))
                    (let ()
                      (declare (not safe))
                      (make-struct-slot-unchecked-accessor
                       _%klass95364%_
                       _%slot95372%_
                       _%field95381%_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _%klass95364%_))
                        (let ()
                          (declare (not safe))
                          (make-struct-slot-unchecked-accessor
                           _%klass95364%_
                           _%slot95372%_
                           _%field95381%_))
                        (if (let ((_%strukt95387%_
                                   (let ()
                                     (declare (not safe))
                                     (base-struct/1 _%klass95364%_))))
                              (and (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%strukt95387%_
                                      'class))
                                   (let ((__tmp98171
                                          (let ((__tmp98172
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%strukt95387%_
                                                    '7
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (##vector-length __tmp98172))))
                                     (declare (not safe))
                                     (##fx< _%field95381%_ __tmp98171))))
                            (let ()
                              (declare (not safe))
                              (make-struct-slot-unchecked-accessor
                               _%klass95364%_
                               _%slot95372%_
                               _%field95381%_))
                            (let ()
                              (declare (not safe))
                              (make-class-cached-slot-unchecked-accessor
                               _%klass95364%_
                               _%slot95372%_
                               _%field95381%_))))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass95335%_ _%slot95336%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95335%_ 'class))
              (let ((_%klass95340%_ _%klass95335%_))
                (if (let () (declare (not safe)) (symbol? _%slot95336%_))
                    (let ((_%slot95350%_ _%slot95336%_))
                      (declare (not safe))
                      (__make-class-slot-unchecked-mutator
                       _%klass95340%_
                       _%slot95350%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                       'contract:
                       'symbol?
                       'value:
                       _%slot95336%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95335%_)
                '#!void)))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass95303%_ _%slot95304%_)
        (let ((_%klass95307%_ _%klass95303%_))
          (let* ((_%slot95315%_ _%slot95304%_)
                 (_%field95324%_
                  (let ((__tmp98173
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass95307%_
                            '8
                            '#f
                            '#f))))
                    (declare (not safe))
                    (symbolic-table-ref __tmp98173 _%slot95315%_ '#f))))
            (if (let () (declare (not safe)) (not _%field95324%_))
                (let ()
                  (error '"unknown slot"
                         'class:
                         _%klass95307%_
                         'slot:
                         _%slot95315%_)
                  '#!void)
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass95307%_))
                    (let ()
                      (declare (not safe))
                      (make-struct-slot-unchecked-mutator
                       _%klass95307%_
                       _%slot95315%_
                       _%field95324%_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _%klass95307%_))
                        (let ()
                          (declare (not safe))
                          (make-struct-slot-unchecked-mutator
                           _%klass95307%_
                           _%slot95315%_
                           _%field95324%_))
                        (if (let ((_%strukt95330%_
                                   (let ()
                                     (declare (not safe))
                                     (base-struct/1 _%klass95307%_))))
                              (and (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%strukt95330%_
                                      'class))
                                   (let ((__tmp98174
                                          (let ((__tmp98175
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%strukt95330%_
                                                    '7
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (##vector-length __tmp98175))))
                                     (declare (not safe))
                                     (##fx< _%field95324%_ __tmp98174))))
                            (let ()
                              (declare (not safe))
                              (make-struct-slot-unchecked-mutator
                               _%klass95307%_
                               _%slot95315%_
                               _%field95324%_))
                            (let ()
                              (declare (not safe))
                              (make-class-cached-slot-unchecked-mutator
                               _%klass95307%_
                               _%slot95315%_
                               _%field95324%_))))))))))
    (define not-an-instance__%
      (lambda (_%object95287%_ _%class95288%_ _%slot95289%_)
        (apply error
               '"not an instance"
               'object:
               _%object95287%_
               'class:
               _%class95288%_
               (if _%slot95289%_ (cons 'slot: (cons _%slot95289%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object95294%_ _%class95295%_)
        (let ((_%slot95297%_ '#f))
          (declare (not safe))
          (not-an-instance__% _%object95294%_ _%class95295%_ _%slot95297%_))))
    (define not-an-instance
      (lambda _g98177_
        (let ((_g98176_ (let () (declare (not safe)) (##length _g98177_))))
          (cond ((let () (declare (not safe)) (##fx= _g98176_ 2))
                 (apply (lambda (_%object95294%_ _%class95295%_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0
                             _%object95294%_
                             _%class95295%_)))
                        _g98177_))
                ((let () (declare (not safe)) (##fx= _g98176_ 3))
                 (apply (lambda (_%object95299%_ _%class95300%_ _%slot95301%_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _%object95299%_
                             _%class95300%_
                             _%slot95301%_)))
                        _g98177_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g98177_))))))
    (define make-final-slot-accessor
      (lambda (_%klass95280%_ _%slot95281%_ _%field95282%_)
        (lambda (_%obj95284%_)
          (##direct-structure-ref
           _%obj95284%_
           _%field95282%_
           _%klass95280%_
           _%slot95281%_))))
    (define make-final-slot-mutator
      (lambda (_%klass95273%_ _%slot95274%_ _%field95275%_)
        (lambda (_%obj95277%_ _%val95278%_)
          (##direct-structure-set!
           _%obj95277%_
           _%val95278%_
           _%field95275%_
           _%klass95273%_
           _%slot95274%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass95267%_ _%slot95268%_ _%field95269%_)
        (lambda (_%obj95271%_)
          (##structure-ref
           _%obj95271%_
           _%field95269%_
           _%klass95267%_
           _%slot95268%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass95260%_ _%slot95261%_ _%field95262%_)
        (lambda (_%obj95264%_ _%val95265%_)
          (##structure-set!
           _%obj95264%_
           _%val95265%_
           _%field95262%_
           _%klass95260%_
           _%slot95261%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass95254%_ _%slot95255%_ _%field95256%_)
        (lambda (_%obj95258%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj95258%_
             _%field95256%_
             _%klass95254%_
             _%slot95255%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass95247%_ _%slot95248%_ _%field95249%_)
        (lambda (_%obj95251%_ _%val95252%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj95251%_
             _%val95252%_
             _%field95249%_
             _%klass95247%_
             _%slot95248%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass95241%_ _%slot95242%_ _%field95243%_)
        (lambda (_%obj95245%_)
          (if (let ()
                (declare (not safe))
                (class-instance? _%klass95241%_ _%obj95245%_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _%obj95245%_ _%field95243%_))
              (let ()
                (declare (not safe))
                (not-an-instance__%
                 _%obj95245%_
                 _%klass95241%_
                 _%slot95242%_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass95234%_ _%slot95235%_ _%field95236%_)
        (lambda (_%obj95238%_ _%val95239%_)
          (if (let ()
                (declare (not safe))
                (class-instance? _%klass95234%_ _%obj95238%_))
              (let ()
                (declare (not safe))
                (unchecked-field-set!
                 _%obj95238%_
                 _%field95236%_
                 _%val95239%_))
              (let ()
                (declare (not safe))
                (not-an-instance__%
                 _%obj95238%_
                 _%klass95234%_
                 _%slot95235%_))))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass95225%_ _%slot95226%_ _%field95227%_)
        (lambda (_%obj95229%_)
          (if (let ((__tmp98178
                     (let () (declare (not safe)) (##type-id _%klass95225%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj95229%_ __tmp98178))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _%obj95229%_ _%field95227%_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _%klass95225%_ _%obj95229%_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _%obj95229%_ _%slot95226%_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _%obj95229%_
                     _%klass95225%_
                     _%slot95226%_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass95215%_ _%slot95216%_ _%field95217%_)
        (lambda (_%obj95219%_ _%val95220%_)
          (if (let ((__tmp98179
                     (let () (declare (not safe)) (##type-id _%klass95215%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj95219%_ __tmp98179))
              (let ()
                (declare (not safe))
                (unchecked-field-set!
                 _%obj95219%_
                 _%field95217%_
                 _%val95220%_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _%klass95215%_ _%obj95219%_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set!
                     _%obj95219%_
                     _%slot95216%_
                     _%val95220%_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _%obj95219%_
                     _%klass95215%_
                     _%slot95216%_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass95209%_ _%slot95210%_ _%field95211%_)
        (lambda (_%obj95213%_)
          (if (let ((__tmp98180
                     (let () (declare (not safe)) (##type-id _%klass95209%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj95213%_ __tmp98180))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _%obj95213%_ _%field95211%_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _%obj95213%_ _%slot95210%_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass95202%_ _%slot95203%_ _%field95204%_)
        (lambda (_%obj95206%_ _%val95207%_)
          (if (let ((__tmp98181
                     (let () (declare (not safe)) (##type-id _%klass95202%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj95206%_ __tmp98181))
              (let ()
                (declare (not safe))
                (unchecked-field-set!
                 _%obj95206%_
                 _%field95204%_
                 _%val95207%_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set!
                 _%obj95206%_
                 _%slot95203%_
                 _%val95207%_))))))
    (define class-slot-offset
      (lambda (_%klass95177%_ _%slot95178%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95177%_ 'class))
              (let ((_%klass95182%_ _%klass95177%_))
                (if (let () (declare (not safe)) (symbolic? _%slot95178%_))
                    (let ((_%slot95192%_ _%slot95178%_))
                      (declare (not safe))
                      (__class-slot-offset _%klass95182%_ _%slot95192%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                       'contract:
                       'symbolic?
                       'value:
                       _%slot95178%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95177%_)
                '#!void)))))
    (define __class-slot-offset
      (lambda (_%klass95156%_ _%slot95157%_)
        (let ((_%klass95160%_ _%klass95156%_))
          (let* ((_%slot95168%_ _%slot95157%_)
                 (__tmp98182
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%klass95160%_ '8 '#f '#f))))
            (declare (not safe))
            (symbolic-table-ref __tmp98182 _%slot95168%_ '#f)))))
    (define class-slot-ref
      (lambda (_%klass95130%_ _%obj95131%_ _%slot95132%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95130%_ 'class))
              (let ((_%klass95136%_ _%klass95130%_))
                (if (let () (declare (not safe)) (symbolic? _%slot95132%_))
                    (let ((_%slot95146%_ _%slot95132%_))
                      (declare (not safe))
                      (__class-slot-ref
                       _%klass95136%_
                       _%obj95131%_
                       _%slot95146%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                       'contract:
                       'symbolic?
                       'value:
                       _%slot95132%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95130%_)
                '#!void)))))
    (define __class-slot-ref
      (lambda (_%klass95106%_ _%obj95107%_ _%slot95108%_)
        (let ()
          (let* ((_%klass95111%_ _%klass95106%_) (_%slot95119%_ _%slot95108%_))
            (if (let ()
                  (declare (not safe))
                  (__class-instance? _%klass95111%_ _%obj95107%_))
                (let ((_%off95128%_
                       (let ((__tmp98183
                              (let ()
                                (declare (not safe))
                                (##structure-type _%obj95107%_))))
                         (declare (not safe))
                         (class-slot-offset __tmp98183 _%slot95119%_))))
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%obj95107%_
                   _%off95128%_
                   _%klass95111%_
                   _%slot95119%_))
                (let ()
                  (declare (not safe))
                  (not-an-instance__0 _%obj95107%_ _%klass95111%_)))))))
    (define class-slot-set!
      (lambda (_%klass95079%_ _%obj95080%_ _%slot95081%_ _%val95082%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95079%_ 'class))
              (let ((_%klass95086%_ _%klass95079%_))
                (if (let () (declare (not safe)) (symbolic? _%slot95081%_))
                    (let ((_%slot95096%_ _%slot95081%_))
                      (declare (not safe))
                      (__class-slot-set!
                       _%klass95086%_
                       _%obj95080%_
                       _%slot95096%_
                       _%val95082%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                       'contract:
                       'symbolic?
                       'value:
                       _%slot95081%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95079%_)
                '#!void)))))
    (define __class-slot-set!
      (lambda (_%klass95054%_ _%obj95055%_ _%slot95056%_ _%val95057%_)
        (let ()
          (let* ((_%klass95060%_ _%klass95054%_) (_%slot95068%_ _%slot95056%_))
            (if (let ()
                  (declare (not safe))
                  (__class-instance? _%klass95060%_ _%obj95055%_))
                (let ((_%off95077%_
                       (let ((__tmp98184
                              (let ()
                                (declare (not safe))
                                (##structure-type _%obj95055%_))))
                         (declare (not safe))
                         (class-slot-offset __tmp98184 _%slot95068%_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%obj95055%_
                   _%val95057%_
                   _%off95077%_
                   _%klass95060%_
                   _%slot95068%_))
                (let ()
                  (declare (not safe))
                  (not-an-instance__0 _%obj95055%_ _%klass95060%_)))))))
    (define unchecked-field-ref
      (lambda (_%obj95051%_ _%off95052%_)
        (let ((__tmp98185
               (let () (declare (not safe)) (##structure-type _%obj95051%_))))
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj95051%_
           _%off95052%_
           __tmp98185
           '#f))))
    (define unchecked-field-set!
      (lambda (_%obj95047%_ _%off95048%_ _%val95049%_)
        (let ((__tmp98186
               (let () (declare (not safe)) (##structure-type _%obj95047%_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj95047%_
           _%val95049%_
           _%off95048%_
           __tmp98186
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj95044%_ _%slot95045%_)
        (let ((__tmp98187
               (let ((__tmp98188
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj95044%_))))
                 (declare (not safe))
                 (__class-slot-offset __tmp98188 _%slot95045%_))))
          (declare (not safe))
          (unchecked-field-ref _%obj95044%_ __tmp98187))))
    (define unchecked-slot-set!
      (lambda (_%obj95040%_ _%slot95041%_ _%val95042%_)
        (let ((__tmp98189
               (let ((__tmp98190
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj95040%_))))
                 (declare (not safe))
                 (__class-slot-offset __tmp98190 _%slot95041%_))))
          (declare (not safe))
          (unchecked-field-set! _%obj95040%_ __tmp98189 _%val95042%_))))
    (define slot-ref__%
      (lambda (_%obj95002%_ _%slot95003%_ _%E95004%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%slot95003%_))
              (let ((_%slot95008%_ _%slot95003%_))
                (if (let () (declare (not safe)) (procedure? _%E95004%_))
                    (let ((_%E95018%_ _%E95004%_))
                      (declare (not safe))
                      (__slot-ref__% _%obj95002%_ _%slot95008%_ _%E95018%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                       'contract:
                       'procedure?
                       'value:
                       _%E95004%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
                 'contract:
                 'symbol?
                 'value:
                 _%slot95003%_)
                '#!void)))))
    (define slot-ref__0
      (lambda (_%obj95031%_ _%slot95032%_)
        (let ((_%E95034%_ __slot-error))
          (declare (not safe))
          (slot-ref__% _%obj95031%_ _%slot95032%_ _%E95034%_))))
    (define slot-ref
      (lambda _g98192_
        (let ((_g98191_ (let () (declare (not safe)) (##length _g98192_))))
          (cond ((let () (declare (not safe)) (##fx= _g98191_ 2))
                 (apply (lambda (_%obj95031%_ _%slot95032%_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%obj95031%_ _%slot95032%_)))
                        _g98192_))
                ((let () (declare (not safe)) (##fx= _g98191_ 3))
                 (apply (lambda (_%obj95036%_ _%slot95037%_ _%E95038%_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__%
                             _%obj95036%_
                             _%slot95037%_
                             _%E95038%_)))
                        _g98192_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g98192_))))))
    (define __slot-ref__%
      (lambda (_%obj94958%_ _%slot94959%_ _%E94960%_)
        (let ()
          (let* ((_%slot94963%_ _%slot94959%_) (_%E94971%_ _%E94960%_))
            (let* ((_%klass94980%_
                    (let () (declare (not safe)) (class-of _%obj94958%_)))
                   (_%$e94983%_
                    (let ()
                      (declare (not safe))
                      (class-slot-offset _%klass94980%_ _%slot94963%_))))
              (if _%$e94983%_
                  ((lambda (_%off94986%_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _%obj94958%_ _%off94986%_)))
                   _%$e94983%_)
                  (let ()
                    (declare (not safe))
                    (_%E94971%_ _%obj94958%_ _%slot94963%_))))))))
    (define __slot-ref__0
      (lambda (_%obj94992%_ _%slot94993%_)
        (let ((_%E94995%_ __slot-error))
          (declare (not safe))
          (__slot-ref__% _%obj94992%_ _%slot94993%_ _%E94995%_))))
    (define __slot-ref
      (lambda _g98194_
        (let ((_g98193_ (let () (declare (not safe)) (##length _g98194_))))
          (cond ((let () (declare (not safe)) (##fx= _g98193_ 2))
                 (apply (lambda (_%obj94992%_ _%slot94993%_)
                          (let ()
                            (declare (not safe))
                            (__slot-ref__0 _%obj94992%_ _%slot94993%_)))
                        _g98194_))
                ((let () (declare (not safe)) (##fx= _g98193_ 3))
                 (apply (lambda (_%obj94997%_ _%slot94998%_ _%E94999%_)
                          (let ()
                            (declare (not safe))
                            (__slot-ref__%
                             _%obj94997%_
                             _%slot94998%_
                             _%E94999%_)))
                        _g98194_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g98194_))))))
    (define slot-set!__%
      (lambda (_%obj94916%_ _%slot94917%_ _%val94918%_ _%E94919%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%slot94917%_))
              (let ((_%slot94923%_ _%slot94917%_))
                (if (let () (declare (not safe)) (procedure? _%E94919%_))
                    (let ((_%E94933%_ _%E94919%_))
                      (declare (not safe))
                      (__slot-set!__%
                       _%obj94916%_
                       _%slot94923%_
                       _%val94918%_
                       _%E94933%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                       'contract:
                       'procedure?
                       'value:
                       _%E94919%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
                 'contract:
                 'symbol?
                 'value:
                 _%slot94917%_)
                '#!void)))))
    (define slot-set!__0
      (lambda (_%obj94946%_ _%slot94947%_ _%val94948%_)
        (let ((_%E94950%_ __slot-error))
          (declare (not safe))
          (slot-set!__% _%obj94946%_ _%slot94947%_ _%val94948%_ _%E94950%_))))
    (define slot-set!
      (lambda _g98196_
        (let ((_g98195_ (let () (declare (not safe)) (##length _g98196_))))
          (cond ((let () (declare (not safe)) (##fx= _g98195_ 3))
                 (apply (lambda (_%obj94946%_ _%slot94947%_ _%val94948%_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0
                             _%obj94946%_
                             _%slot94947%_
                             _%val94948%_)))
                        _g98196_))
                ((let () (declare (not safe)) (##fx= _g98195_ 4))
                 (apply (lambda (_%obj94952%_
                                 _%slot94953%_
                                 _%val94954%_
                                 _%E94955%_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _%obj94952%_
                             _%slot94953%_
                             _%val94954%_
                             _%E94955%_)))
                        _g98196_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g98196_))))))
    (define __slot-set!__%
      (lambda (_%obj94869%_ _%slot94870%_ _%val94871%_ _%E94872%_)
        (let ()
          (let* ((_%slot94875%_ _%slot94870%_) (_%E94883%_ _%E94872%_))
            (let* ((_%klass94892%_
                    (let () (declare (not safe)) (class-of _%obj94869%_)))
                   (_%$e94895%_
                    (let ()
                      (declare (not safe))
                      (class-slot-offset _%klass94892%_ _%slot94875%_))))
              (if _%$e94895%_
                  ((lambda (_%off94898%_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _%obj94869%_
                        _%off94898%_
                        _%val94871%_)))
                   _%$e94895%_)
                  (let ()
                    (declare (not safe))
                    (_%E94883%_ _%obj94869%_ _%slot94875%_))))))))
    (define __slot-set!__0
      (lambda (_%obj94904%_ _%slot94905%_ _%val94906%_)
        (let ((_%E94908%_ __slot-error))
          (declare (not safe))
          (__slot-set!__%
           _%obj94904%_
           _%slot94905%_
           _%val94906%_
           _%E94908%_))))
    (define __slot-set!
      (lambda _g98198_
        (let ((_g98197_ (let () (declare (not safe)) (##length _g98198_))))
          (cond ((let () (declare (not safe)) (##fx= _g98197_ 3))
                 (apply (lambda (_%obj94904%_ _%slot94905%_ _%val94906%_)
                          (let ()
                            (declare (not safe))
                            (__slot-set!__0
                             _%obj94904%_
                             _%slot94905%_
                             _%val94906%_)))
                        _g98198_))
                ((let () (declare (not safe)) (##fx= _g98197_ 4))
                 (apply (lambda (_%obj94910%_
                                 _%slot94911%_
                                 _%val94912%_
                                 _%E94913%_)
                          (let ()
                            (declare (not safe))
                            (__slot-set!__%
                             _%obj94910%_
                             _%slot94911%_
                             _%val94912%_
                             _%E94913%_)))
                        _g98198_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g98198_))))))
    (define __slot-error
      (lambda (_%obj94865%_ _%slot94866%_)
        (error '"Cannot find slot"
               'object:
               _%obj94865%_
               'slot:
               _%slot94866%_)))
    (define subclass?
      (lambda (_%maybe-sub-class94840%_ _%maybe-super-class94841%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%maybe-sub-class94840%_ 'class))
              (let ((_%maybe-sub-class94845%_ _%maybe-sub-class94840%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%maybe-super-class94841%_
                       'class))
                    (let ((_%maybe-super-class94855%_
                           _%maybe-super-class94841%_))
                      (declare (not safe))
                      (__subclass?
                       _%maybe-sub-class94845%_
                       _%maybe-super-class94855%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                       'contract:
                       'class-type?
                       'value:
                       _%maybe-super-class94841%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
                 'contract:
                 'class-type?
                 'value:
                 _%maybe-sub-class94840%_)
                '#!void)))))
    (define __subclass?
      (lambda (_%maybe-sub-class94812%_ _%maybe-super-class94813%_)
        (let ()
          (let* ((_%maybe-sub-class94816%_ _%maybe-sub-class94812%_)
                 (_%maybe-super-class94824%_ _%maybe-super-class94813%_))
            (let* ((_%maybe-super-class-id94833%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%maybe-super-class94824%_)))
                   (_%$e94835%_
                    (eq? _%maybe-super-class-id94833%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%maybe-sub-class94816%_)))))
              (if _%$e94835%_
                  _%$e94835%_
                  (let ((__tmp98200
                         (lambda (_%super-class94838%_)
                           (eq? (let ()
                                  (declare (not safe))
                                  (##type-id _%super-class94838%_))
                                _%maybe-super-class-id94833%_)))
                        (__tmp98199
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%maybe-sub-class94816%_
                            '6
                            '#f
                            '#f))))
                    (declare (not safe))
                    (__ormap1 __tmp98200 __tmp98199))))))))
    (define object?
      (lambda (_%o94809%_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _%o94809%_))
              (let ((__tmp98201
                     (let ()
                       (declare (not safe))
                       (##structure-type _%o94809%_))))
                (declare (not safe))
                (##structure-instance-of? __tmp98201 'class))
              '#f))))
    (define object-type
      (lambda (_%o94804%_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _%o94804%_))
              (let ((_%klass94807%_
                     (let ()
                       (declare (not safe))
                       (##structure-type _%o94804%_))))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass94807%_ 'class))
                    _%klass94807%_
                    (begin
                      (error '"not an object" _%o94804%_ _%klass94807%_)
                      '#!void)))
              (begin (error '"not an object" _%o94804%_) '#!void)))))
    (define direct-instance?
      (lambda (_%klass94789%_ _%obj94790%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94789%_ 'class))
              (let ((_%klass94794%_ _%klass94789%_))
                (declare (not safe))
                (__direct-instance? _%klass94794%_ _%obj94790%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94789%_)
                '#!void)))))
    (define __direct-instance?
      (lambda (_%klass94776%_ _%obj94777%_)
        (let ()
          (let* ((_%klass94780%_ _%klass94776%_)
                 (__tmp98202
                  (let () (declare (not safe)) (##type-id _%klass94780%_))))
            (declare (not safe))
            (##structure-direct-instance-of? _%obj94777%_ __tmp98202)))))
    (define immediate-instance-of?
      (lambda (_%klass94772%_ _%obj94773%_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _%obj94773%_))
              (eq? _%klass94772%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%obj94773%_)))
              '#f))))
    (define struct-instance?
      (lambda (_%klass94757%_ _%obj94758%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94757%_ 'class))
              (let ((_%klass94762%_ _%klass94757%_))
                (declare (not safe))
                (__struct-instance? _%klass94762%_ _%obj94758%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94757%_)
                '#!void)))))
    (define __struct-instance?
      (lambda (_%klass94744%_ _%obj94745%_)
        (let ()
          (let* ((_%klass94748%_ _%klass94744%_)
                 (__tmp98203
                  (let () (declare (not safe)) (##type-id _%klass94748%_))))
            (declare (not safe))
            (##structure-instance-of? _%obj94745%_ __tmp98203)))))
    (define class-instance?
      (lambda (_%klass94729%_ _%obj94730%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94729%_ 'class))
              (let ((_%klass94734%_ _%klass94729%_))
                (declare (not safe))
                (__class-instance? _%klass94734%_ _%obj94730%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94729%_)
                '#!void)))))
    (define __class-instance?
      (lambda (_%klass94714%_ _%obj94715%_)
        (let ()
          (let* ((_%klass94718%_ _%klass94714%_)
                 (_%type94727%_
                  (let () (declare (not safe)) (class-of _%obj94715%_))))
            (declare (not safe))
            (subclass? _%type94727%_ _%klass94718%_)))))
    (define make-object
      (lambda (_%klass94689%_ _%k94690%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94689%_ 'class))
              (let ((_%klass94694%_ _%klass94689%_))
                (if (let () (declare (not safe)) (fixnum? _%k94690%_))
                    (let ((_%k94704%_ _%k94690%_))
                      (declare (not safe))
                      (__make-object _%klass94694%_ _%k94704%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                       'contract:
                       'fixnum?
                       'value:
                       _%k94690%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94689%_)
                '#!void)))))
    (define __make-object
      (lambda (_%klass94666%_ _%k94667%_)
        (let ()
          (let* ((_%klass94670%_ _%klass94666%_) (_%k94678%_ _%k94667%_))
            (if (let ()
                  (declare (not safe))
                  (__class-type-system? _%klass94670%_))
                (begin
                  (error '"cannot instantiate system class"
                         'class:
                         _%klass94670%_)
                  '#!void)
                (let ((_%obj94687%_
                       (let ()
                         (declare (not safe))
                         (##make-structure _%klass94670%_ _%k94678%_))))
                  (declare (not safe))
                  (object-fill! _%obj94687%_ '#f)))))))
    (define object-fill!
      (lambda (_%obj94651%_ _%fill94652%_)
        (let ()
          (if '#t
              (let ((_%obj94656%_ _%obj94651%_))
                (declare (not safe))
                (__object-fill! _%obj94656%_ _%fill94652%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
                 'contract:
                 'true
                 'value:
                 _%obj94651%_)
                '#!void)))))
    (define __object-fill!
      (lambda (_%obj94633%_ _%fill94634%_)
        (let ((_%obj94637%_ _%obj94633%_))
          (let _%loop94646%_ ((_%i94648%_
                               (let ((__tmp98205
                                      (let ()
                                        (declare (not safe))
                                        (##structure-length _%obj94637%_))))
                                 (declare (not safe))
                                 (##fx- __tmp98205 '1))))
            (let ()
              (if (let () (declare (not safe)) (##fx> _%i94648%_ '0))
                  (begin
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%obj94637%_
                       _%fill94634%_
                       _%i94648%_
                       '#f
                       '#f))
                    (let ((__tmp98204
                           (let ()
                             (declare (not safe))
                             (##fx- _%i94648%_ '1))))
                      (declare (not safe))
                      (_%loop94646%_ __tmp98204)))
                  _%obj94637%_))))))
    (define new-instance
      (lambda (_%klass94619%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94619%_ 'class))
              (let ((_%klass94623%_ _%klass94619%_))
                (declare (not safe))
                (__new-instance _%klass94623%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94619%_)
                '#!void)))))
    (define __new-instance
      (lambda (_%klass94607%_)
        (let ()
          (let* ((_%klass94610%_ _%klass94607%_)
                 (__obj98101
                  (let ((__tmp98206
                         (let ((__tmp98207
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass94610%_
                                   '7
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (##vector-length __tmp98207))))
                    (declare (not safe))
                    (##make-structure _%klass94610%_ __tmp98206))))
            (let () (declare (not safe)) (object-fill! __obj98101 '#f))
            __obj98101))))
    (define make-instance
      (lambda (_%klass94592%_ . _%args94593%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94592%_ 'class))
              (let ((_%klass94597%_ _%klass94592%_))
                (declare (not safe))
                (##apply __make-instance _%klass94597%_ _%args94593%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94592%_)
                '#!void)))))
    (define __make-instance
      (lambda (_%klass94564%_ . _%args94565%_)
        (let ()
          (let* ((_%klass94568%_ _%klass94564%_)
                 (_%$e94577%_
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%klass94568%_ '10 '#f '#f))))
            (if _%$e94577%_
                ((lambda (_%kons-id94580%_)
                   (let ((_%obj94582%_
                          (let ()
                            (declare (not safe))
                            (__new-instance _%klass94568%_))))
                     (let ()
                       (declare (not safe))
                       (___constructor-init!
                        _%klass94568%_
                        _%kons-id94580%_
                        _%obj94582%_
                        _%args94565%_))
                     _%obj94582%_))
                 _%$e94577%_)
                (if (let ()
                      (declare (not safe))
                      (__class-type-metaclass? _%klass94568%_))
                    (let ((_%obj94585%_
                           (let ()
                             (declare (not safe))
                             (__new-instance _%klass94568%_))))
                      (let ()
                        (declare (not safe))
                        (__metaclass-instance-init!
                         _%klass94568%_
                         _%obj94585%_
                         _%args94565%_))
                      _%obj94585%_)
                    (if (let ((__tmp98208
                               (let ()
                                 (declare (not safe))
                                 (__class-type-struct? _%klass94568%_))))
                          (declare (not safe))
                          (not __tmp98208))
                        (let ((_%obj94588%_
                               (let ()
                                 (declare (not safe))
                                 (__new-instance _%klass94568%_))))
                          (let ()
                            (declare (not safe))
                            (___class-instance-init!
                             _%klass94568%_
                             _%obj94588%_
                             _%args94565%_))
                          _%obj94588%_)
                        (if (let ((__tmp98210
                                   (let ()
                                     (declare (not safe))
                                     (__class-type-field-count
                                      _%klass94568%_)))
                                  (__tmp98209 (length _%args94565%_)))
                              (declare (not safe))
                              (##fx= __tmp98210 __tmp98209))
                            (let ()
                              (apply ##structure _%klass94568%_ _%args94565%_))
                            (let ()
                              (error '"arguments don't match object size"
                                     'class:
                                     _%klass94568%_
                                     'slots:
                                     (let ()
                                       (declare (not safe))
                                       (__class-type-slot-list _%klass94568%_))
                                     'args:
                                     _%args94565%_)
                              '#!void)))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj94549%_ . _%args94550%_)
        (let ()
          (if '#t
              (let ((_%obj94554%_ _%obj94549%_))
                (declare (not safe))
                (##apply __struct-instance-init! _%obj94554%_ _%args94550%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
                 'contract:
                 'true
                 'value:
                 _%obj94549%_)
                '#!void)))))
    (define __struct-instance-init!
      (lambda (_%obj94536%_ . _%args94537%_)
        (let ((_%obj94540%_ _%obj94536%_))
          (if (let ((__tmp98212 (length _%args94537%_))
                    (__tmp98211
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj94540%_))))
                (declare (not safe))
                (##fx< __tmp98212 __tmp98211))
              (let ()
                (declare (not safe))
                (___struct-instance-init! _%obj94540%_ _%args94537%_))
              (error '"too many arguments for struct"
                     'object:
                     _%obj94540%_
                     'args:
                     _%args94537%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj94495%_ _%args94496%_)
        (let _%lp94498%_ ((_%k94500%_ '1) (_%rest94501%_ _%args94496%_))
          (let* ((_%rest9450294510%_ _%rest94501%_)
                 (_%else9450494518%_ (lambda () _%obj94495%_))
                 (_%K9450694524%_
                  (lambda (_%rest94521%_ _%hd94522%_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set!
                       _%obj94495%_
                       _%k94500%_
                       _%hd94522%_))
                    (let ((__tmp98213
                           (let ()
                             (declare (not safe))
                             (##fx+ _%k94500%_ '1))))
                      (declare (not safe))
                      (_%lp94498%_ __tmp98213 _%rest94521%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest9450294510%_))
                (let ((_%hd9450794527%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9450294510%_)))
                      (_%tl9450894529%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9450294510%_))))
                  (let* ((_%hd94532%_ _%hd9450794527%_)
                         (_%rest94534%_ _%tl9450894529%_))
                    (declare (not safe))
                    (_%K9450694524%_ _%rest94534%_ _%hd94532%_)))
                (let () (declare (not safe)) (_%else9450494518%_)))))))
    (define class-instance-init!
      (lambda (_%obj94480%_ . _%args94481%_)
        (let ()
          (if '#t
              (let ((_%obj94485%_ _%obj94480%_))
                (declare (not safe))
                (##apply __class-instance-init! _%obj94485%_ _%args94481%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
                 'contract:
                 'true
                 'value:
                 _%obj94480%_)
                '#!void)))))
    (define __class-instance-init!
      (lambda (_%obj94467%_ . _%args94468%_)
        (let ((_%obj94471%_ _%obj94467%_))
          (let ((__tmp98214
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj94471%_))))
            (declare (not safe))
            (___class-instance-init! __tmp98214 _%obj94471%_ _%args94468%_))
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass94409%_ _%obj94410%_ _%args94411%_)
        (let _%lp94413%_ ((_%rest94415%_ _%args94411%_))
          (let* ((_%rest9441694426%_ _%rest94415%_)
                 (_%else9441894434%_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _%rest94415%_))
                        _%obj94410%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass94409%_
                               'rest:
                               _%rest94415%_))))
                 (_%K9442094448%_
                  (lambda (_%rest94437%_ _%val94438%_ _%key94439%_)
                    (if (let ((__tmp98215
                               (let ()
                                 (declare (not safe))
                                 (keyword? _%key94439%_))))
                          (declare (not safe))
                          (not __tmp98215))
                        (let ()
                          (error '"non keyword slot initializer"
                                 'slot:
                                 _%key94439%_))
                        (let ((_%$e94442%_
                               (let ()
                                 (declare (not safe))
                                 (__class-slot-offset
                                  _%klass94409%_
                                  _%key94439%_))))
                          (if _%$e94442%_
                              ((lambda (_%off94445%_)
                                 (let ()
                                   (declare (not safe))
                                   (unchecked-field-set!
                                    _%obj94410%_
                                    _%off94445%_
                                    _%val94438%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%lp94413%_ _%rest94437%_)))
                               _%$e94442%_)
                              (let ()
                                (error '"unknown slot"
                                       'class:
                                       _%klass94409%_
                                       'slot:
                                       _%key94439%_))))))))
            (if (let () (declare (not safe)) (##pair? _%rest9441694426%_))
                (let ((_%hd9442194451%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9441694426%_)))
                      (_%tl9442294453%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9441694426%_))))
                  (let ((_%key94456%_ _%hd9442194451%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9442294453%_))
                        (let ((_%hd9442394458%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9442294453%_)))
                              (_%tl9442494460%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9442294453%_))))
                          (let* ((_%val94463%_ _%hd9442394458%_)
                                 (_%rest94465%_ _%tl9442494460%_))
                            (declare (not safe))
                            (_%K9442094448%_
                             _%rest94465%_
                             _%val94463%_
                             _%key94456%_)))
                        (let () (declare (not safe)) (_%else9441894434%_)))))
                (let () (declare (not safe)) (_%else9441894434%_)))))))
    (define __metaclass-instance-init!
      (lambda (_%klass94405%_ _%obj94406%_ _%args94407%_)
        (apply call-method
               _%klass94405%_
               'instance-init!
               _%obj94406%_
               _%args94407%_)))
    (define constructor-init!
      (lambda (_%klass94368%_ _%kons-id94369%_ _%obj94370%_ . _%args94371%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94368%_ 'class))
              (let ((_%klass94375%_ _%klass94368%_))
                (if (let () (declare (not safe)) (symbol? _%kons-id94369%_))
                    (let ((_%kons-id94385%_ _%kons-id94369%_))
                      (if '#t
                          (let ((_%obj94395%_ _%obj94370%_))
                            (declare (not safe))
                            (##apply __constructor-init!
                                     _%klass94375%_
                                     _%kons-id94385%_
                                     _%obj94395%_
                                     _%args94371%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                             'contract:
                             'true
                             'value:
                             _%obj94370%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                       'contract:
                       'symbol?
                       'value:
                       _%kons-id94369%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94368%_)
                '#!void)))))
    (define __constructor-init!
      (lambda (_%klass94337%_ _%kons-id94338%_ _%obj94339%_ . _%args94340%_)
        (let ((_%klass94343%_ _%klass94337%_))
          (let* ((_%kons-id94351%_ _%kons-id94338%_)
                 (_%obj94359%_ _%obj94339%_))
            (let ()
              (declare (not safe))
              (___constructor-init!
               _%klass94343%_
               _%kons-id94351%_
               _%obj94359%_
               _%args94340%_))
            '#!void))))
    (define ___constructor-init!
      (lambda (_%klass94326%_ _%kons-id94327%_ _%obj94328%_ _%args94329%_)
        (let ((_%$e94331%_
               (let ()
                 (declare (not safe))
                 (__find-method
                  _%klass94326%_
                  _%obj94328%_
                  _%kons-id94327%_))))
          (if _%$e94331%_
              ((lambda (_%kons94334%_)
                 (apply _%kons94334%_ _%obj94328%_ _%args94329%_)
                 _%obj94328%_)
               _%$e94331%_)
              (let ()
                (error '"missing constructor"
                       'class:
                       _%klass94326%_
                       'method:
                       _%kons-id94327%_))))))
    (define struct-copy
      (lambda (_%struct94312%_)
        (let ()
          (if '#t
              (let ((_%struct94316%_ _%struct94312%_))
                (declare (not safe))
                (__struct-copy _%struct94316%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
                 'contract:
                 'true
                 'value:
                 _%struct94312%_)
                '#!void)))))
    (define __struct-copy
      (lambda (_%struct94300%_)
        (let ((_%struct94303%_ _%struct94300%_))
          (declare (not safe))
          (##structure-copy _%struct94303%_))))
    (define struct->list
      (lambda (_%obj94286%_)
        (let ()
          (if '#t
              (let ((_%obj94290%_ _%obj94286%_))
                (declare (not safe))
                (__struct->list _%obj94290%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
                 'contract:
                 'true
                 'value:
                 _%obj94286%_)
                '#!void)))))
    (define __struct->list
      (lambda (_%obj94274%_)
        (let ((_%obj94277%_ _%obj94274%_))
          (declare (not safe))
          (##vector->list _%obj94277%_))))
    (define class->list
      (lambda (_%obj94260%_)
        (let ()
          (if '#t
              (let ((_%obj94264%_ _%obj94260%_))
                (declare (not safe))
                (__class->list _%obj94264%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@837.20-837.23"
                 'contract:
                 'true
                 'value:
                 _%obj94260%_)
                '#!void)))))
    (define __class->list
      (lambda (_%obj94236%_)
        (let ((_%obj94239%_ _%obj94236%_))
          (let* ((_%klass94248%_
                  (let ()
                    (declare (not safe))
                    (##structure-type _%obj94239%_)))
                 (_%slot-vector94250%_
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%klass94248%_ '7 '#f '#f))))
            (let _%loop94252%_ ((_%index94254%_
                                 (let ((__tmp98221
                                        (let ()
                                          (declare (not safe))
                                          (##vector-length
                                           _%slot-vector94250%_))))
                                   (declare (not safe))
                                   (##fx- __tmp98221 '1)))
                                (_%plist94255%_ '()))
              (let ()
                (if (let () (declare (not safe)) (##fx< _%index94254%_ '1))
                    (cons _%klass94248%_ _%plist94255%_)
                    (let ((_%slot94258%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref
                              _%slot-vector94250%_
                              _%index94254%_))))
                      (let ((__tmp98220
                             (let ()
                               (declare (not safe))
                               (##fx- _%index94254%_ '1)))
                            (__tmp98216
                             (let ((__tmp98219
                                    (let ()
                                      (declare (not safe))
                                      (symbol->keyword _%slot94258%_)))
                                   (__tmp98217
                                    (let ((__tmp98218
                                           (let ()
                                             (declare (not safe))
                                             (unchecked-field-ref
                                              _%obj94239%_
                                              _%index94254%_))))
                                      (declare (not safe))
                                      (cons __tmp98218 _%plist94255%_))))
                               (declare (not safe))
                               (cons __tmp98219 __tmp98217))))
                        (declare (not safe))
                        (_%loop94252%_ __tmp98220 __tmp98216))))))))))
    (define call-method
      (lambda (_%obj94220%_ _%id94221%_ . _%args94222%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id94221%_))
              (let ((_%id94226%_ _%id94221%_))
                (declare (not safe))
                (##apply __call-method _%obj94220%_ _%id94226%_ _%args94222%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@852.24-852.26"
                 'contract:
                 'symbol?
                 'value:
                 _%id94221%_)
                '#!void)))))
    (define __call-method
      (lambda (_%obj94189%_ _%id94190%_ . _%args94191%_)
        (let ()
          (let* ((_%id94194%_ _%id94190%_)
                 (_%$e94203%_
                  (let ()
                    (declare (not safe))
                    (__method-ref _%obj94189%_ _%id94194%_))))
            (if _%$e94203%_
                ((lambda (_%method94206%_)
                   (let ((_%method94208%_ _%method94206%_))
                     (apply _%method94208%_ _%obj94189%_ _%args94191%_)))
                 _%$e94203%_)
                (let ()
                  (error '"cannot find method"
                         'object:
                         _%obj94189%_
                         'method:
                         _%id94194%_)))))))
    (define method-ref
      (lambda (_%obj94174%_ _%id94175%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id94175%_))
              (let ((_%id94179%_ _%id94175%_))
                (declare (not safe))
                (__method-ref _%obj94174%_ _%id94179%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@876.23-876.25"
                 'contract:
                 'symbol?
                 'value:
                 _%id94175%_)
                '#!void)))))
    (define __method-ref
      (lambda (_%obj94161%_ _%id94162%_)
        (let ()
          (let* ((_%id94165%_ _%id94162%_)
                 (__tmp98222
                  (let () (declare (not safe)) (class-of _%obj94161%_))))
            (declare (not safe))
            (__find-method __tmp98222 _%obj94161%_ _%id94165%_)))))
    (define checked-method-ref
      (lambda (_%obj94154%_ _%id94155%_)
        (let ((_%$e94158%_
               (let ()
                 (declare (not safe))
                 (method-ref _%obj94154%_ _%id94155%_))))
          (if _%$e94158%_
              _%$e94158%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj94154%_
                       'method:
                       _%id94155%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj94139%_ _%id94140%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id94140%_))
              (let ((_%id94144%_ _%id94140%_))
                (declare (not safe))
                (__bound-method-ref _%obj94139%_ _%id94144%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@884.29-884.31"
                 'contract:
                 'symbol?
                 'value:
                 _%id94140%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj94107%_ _%id94108%_)
        (let ()
          (let* ((_%id94111%_ _%id94108%_)
                 (_%$e94120%_
                  (let ()
                    (declare (not safe))
                    (__method-ref _%obj94107%_ _%id94111%_))))
            (if _%$e94120%_
                ((lambda (_%method94123%_)
                   (let ((_%method94125%_ _%method94123%_))
                     (lambda _%args94136%_
                       (apply _%method94125%_ _%obj94107%_ _%args94136%_))))
                 _%$e94120%_)
                (let () '#f))))))
    (define checked-bound-method-ref
      (lambda (_%obj94092%_ _%id94093%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id94093%_))
              (let ((_%id94097%_ _%id94093%_))
                (declare (not safe))
                (__checked-bound-method-ref _%obj94092%_ _%id94097%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@893.37-893.39"
                 'contract:
                 'symbol?
                 'value:
                 _%id94093%_)
                '#!void)))))
    (define __checked-bound-method-ref
      (lambda (_%obj94075%_ _%id94076%_)
        (let ()
          (let* ((_%id94079%_ _%id94076%_)
                 (_%method94088%_
                  (let ()
                    (declare (not safe))
                    (checked-method-ref _%obj94075%_ _%id94079%_))))
            (lambda _%args94090%_
              (apply _%method94088%_ _%obj94075%_ _%args94090%_))))))
    (define find-method
      (lambda (_%klass94049%_ _%obj94050%_ _%id94051%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94049%_ 'class))
              (let ((_%klass94055%_ _%klass94049%_))
                (if (let () (declare (not safe)) (symbol? _%id94051%_))
                    (let ((_%id94065%_ _%id94051%_))
                      (declare (not safe))
                      (__find-method _%klass94055%_ _%obj94050%_ _%id94065%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@898.41-898.43"
                       'contract:
                       'symbol?
                       'value:
                       _%id94051%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@898.20-898.25"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94049%_)
                '#!void)))))
    (define __find-method
      (lambda (_%klass94022%_ _%obj94023%_ _%id94024%_)
        (let ((_%klass94027%_ _%klass94022%_))
          (let* ((_%id94035%_ _%id94024%_)
                 (_%$e94044%_
                  (let ()
                    (declare (not safe))
                    (__direct-method-ref
                     _%klass94027%_
                     _%obj94023%_
                     _%id94035%_))))
            (if _%$e94044%_
                _%$e94044%_
                (if (let ()
                      (declare (not safe))
                      (__class-type-sealed? _%klass94027%_))
                    (let () '#f)
                    (let ()
                      (declare (not safe))
                      (__mixin-method-ref
                       _%klass94027%_
                       _%obj94023%_
                       _%id94035%_))))))))
    (define mixin-find-method
      (lambda (_%mixins94006%_ _%obj94007%_ _%id94008%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id94008%_))
              (let ((_%id94012%_ _%id94008%_))
                (declare (not safe))
                (__mixin-find-method _%mixins94006%_ _%obj94007%_ _%id94012%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@906.37-906.39"
                 'contract:
                 'symbol?
                 'value:
                 _%id94008%_)
                '#!void)))))
    (define __mixin-find-method
      (lambda (_%mixins93988%_ _%obj93989%_ _%id93990%_)
        (let ()
          (let* ((_%id93993%_ _%id93990%_)
                 (__tmp98223
                  (lambda (_%g9400194003%_)
                    (let ()
                      (declare (not safe))
                      (direct-method-ref
                       _%g9400194003%_
                       _%obj93989%_
                       _%id93993%_)))))
            (declare (not safe))
            (__ormap1 __tmp98223 _%mixins93988%_)))))
    (define direct-method-ref
      (lambda (_%klass93962%_ _%obj93963%_ _%id93964%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93962%_ 'class))
              (let ((_%klass93968%_ _%klass93962%_))
                (if (let () (declare (not safe)) (symbol? _%id93964%_))
                    (let ((_%id93978%_ _%id93964%_))
                      (declare (not safe))
                      (__direct-method-ref
                       _%klass93968%_
                       _%obj93963%_
                       _%id93978%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@909.47-909.49"
                       'contract:
                       'symbol?
                       'value:
                       _%id93964%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@909.26-909.31"
                 'contract:
                 'class-type?
                 'value:
                 _%klass93962%_)
                '#!void)))))
    (define __direct-method-ref
      (lambda (_%klass93916%_ _%obj93917%_ _%id93918%_)
        (let ()
          (let* ((_%klass93921%_ _%klass93916%_) (_%id93929%_ _%id93918%_))
            (letrec ((_%metaclass-resolve-method93938%_
                      (lambda ()
                        (let ((__method98102
                               (let ()
                                 (declare (not safe))
                                 (__method-ref
                                  _%klass93921%_
                                  'direct-method-ref))))
                          (if __method98102
                              (__method98102
                               _%klass93921%_
                               _%obj93917%_
                               _%id93929%_)
                              (error '"Missing method"
                                     _%klass93921%_
                                     'direct-method-ref)))))
                     (_%metaclass-resolve-method!93939%_
                      (lambda ()
                        (let ((_%method93959%_
                               (let ()
                                 (declare (not safe))
                                 (_%metaclass-resolve-method93938%_))))
                          (let ((__tmp98225
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass93921%_
                                    '11
                                    '#f
                                    '#f)))
                                (__tmp98224
                                 (if _%method93959%_ 'resolved 'unknown)))
                            (declare (not safe))
                            (symbolic-table-set!
                             __tmp98225
                             _%id93929%_
                             __tmp98224))
                          _%method93959%_))))
              (let ((_%$e93941%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass93921%_
                        '11
                        '#f
                        '#f))))
                (if _%$e93941%_
                    ((lambda (_%ht93944%_)
                       (let ((_%method93946%_
                              (let ()
                                (declare (not safe))
                                (symbolic-table-ref
                                 _%ht93944%_
                                 _%id93929%_
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (procedure? _%method93946%_))
                             (let () _%method93946%_)
                             (if (let ()
                                   (declare (not safe))
                                   (__class-type-metaclass? _%klass93921%_))
                                 (let ((_%$e93950%_ _%method93946%_))
                                   (if (eq? 'resolved _%$e93950%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%metaclass-resolve-method93938%_))
                                       (if (eq? 'unknown _%$e93950%_)
                                           '#f
                                           (let ()
                                             (declare (not safe))
                                             (_%metaclass-resolve-method!93939%_)))))
                                 (let () '#f)))))
                     _%$e93941%_)
                    (if (let ()
                          (declare (not safe))
                          (__class-type-metaclass? _%klass93921%_))
                        (let ((_%tab93955%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0))))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _%klass93921%_
                             _%tab93955%_
                             '11
                             '#f
                             '#f))
                          (let ()
                            (declare (not safe))
                            (_%metaclass-resolve-method!93939%_)))
                        (let () '#f)))))))))
    (define mixin-method-ref
      (lambda (_%klass93890%_ _%obj93891%_ _%id93892%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93890%_ 'class))
              (let ((_%klass93896%_ _%klass93890%_))
                (if (let () (declare (not safe)) (symbol? _%id93892%_))
                    (let ((_%id93906%_ _%id93892%_))
                      (declare (not safe))
                      (__mixin-method-ref
                       _%klass93896%_
                       _%obj93891%_
                       _%id93906%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@939.46-939.48"
                       'contract:
                       'symbol?
                       'value:
                       _%id93892%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@939.25-939.30"
                 'contract:
                 'class-type?
                 'value:
                 _%klass93890%_)
                '#!void)))))
    (define __mixin-method-ref
      (lambda (_%klass93868%_ _%obj93869%_ _%id93870%_)
        (let ((_%klass93873%_ _%klass93868%_))
          (let* ((_%id93881%_ _%id93870%_)
                 (__tmp98226
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%klass93873%_ '6 '#f '#f))))
            (declare (not safe))
            (__mixin-find-method __tmp98226 _%obj93869%_ _%id93881%_)))))
    (define bind-method!__%
      (lambda (_%klass93827%_ _%id93828%_ _%proc93829%_ _%rebind?93830%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93828%_))
              (let ((_%id93834%_ _%id93828%_))
                (if (let () (declare (not safe)) (procedure? _%proc93829%_))
                    (let ((_%proc93844%_ _%proc93829%_))
                      (declare (not safe))
                      (__bind-method!__%
                       _%klass93827%_
                       _%id93834%_
                       _%proc93844%_
                       _%rebind?93830%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@942.42-942.46"
                       'contract:
                       'procedure?
                       'value:
                       _%proc93829%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@942.27-942.29"
                 'contract:
                 'symbol?
                 'value:
                 _%id93828%_)
                '#!void)))))
    (define bind-method!__0
      (lambda (_%klass93857%_ _%id93858%_ _%proc93859%_)
        (let ((_%rebind?93861%_ '#f))
          (declare (not safe))
          (bind-method!__%
           _%klass93857%_
           _%id93858%_
           _%proc93859%_
           _%rebind?93861%_))))
    (define bind-method!
      (lambda _g98228_
        (let ((_g98227_ (let () (declare (not safe)) (##length _g98228_))))
          (cond ((let () (declare (not safe)) (##fx= _g98227_ 3))
                 (apply (lambda (_%klass93857%_ _%id93858%_ _%proc93859%_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _%klass93857%_
                             _%id93858%_
                             _%proc93859%_)))
                        _g98228_))
                ((let () (declare (not safe)) (##fx= _g98227_ 4))
                 (apply (lambda (_%klass93863%_
                                 _%id93864%_
                                 _%proc93865%_
                                 _%rebind?93866%_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _%klass93863%_
                             _%id93864%_
                             _%proc93865%_
                             _%rebind?93866%_)))
                        _g98228_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g98228_))))))
    (define __bind-method!__%
      (lambda (_%klass93778%_ _%id93779%_ _%proc93780%_ _%rebind?93781%_)
        (let ()
          (let* ((_%id93784%_ _%id93779%_) (_%proc93792%_ _%proc93780%_))
            (letrec ((_%bind!93801%_
                      (lambda (_%ht93810%_)
                        (if (and (let ()
                                   (declare (not safe))
                                   (not _%rebind?93781%_))
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%ht93810%_
                                    _%id93784%_
                                    '#f)))
                            (error '"method already bound"
                                   'class:
                                   _%klass93778%_
                                   'method:
                                   _%id93784%_)
                            (begin
                              (let ()
                                (declare (not safe))
                                (symbolic-table-set!
                                 _%ht93810%_
                                 _%id93784%_
                                 _%proc93792%_))
                              '#!void)))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass93778%_ 'class))
                  (let ((_%ht93804%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass93778%_
                            '11
                            '#f
                            '#f))))
                    (if _%ht93804%_
                        (let ()
                          (declare (not safe))
                          (_%bind!93801%_ _%ht93804%_))
                        (let ((_%ht93806%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0))))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _%klass93778%_
                             _%ht93806%_
                             '11
                             '#f
                             '#f))
                          (let ()
                            (declare (not safe))
                            (_%bind!93801%_ _%ht93806%_)))))
                  (if (let () (declare (not safe)) (##type? _%klass93778%_))
                      (let ((__tmp98229
                             (let ()
                               (declare (not safe))
                               (__shadow-class _%klass93778%_))))
                        (declare (not safe))
                        (__bind-method!
                         __tmp98229
                         _%id93784%_
                         _%proc93792%_
                         _%rebind?93781%_))
                      (let ()
                        (error '"bad class; expected class or builtin type"
                               _%klass93778%_)))))))))
    (define __bind-method!__0
      (lambda (_%klass93815%_ _%id93816%_ _%proc93817%_)
        (let ((_%rebind?93819%_ '#f))
          (declare (not safe))
          (__bind-method!__%
           _%klass93815%_
           _%id93816%_
           _%proc93817%_
           _%rebind?93819%_))))
    (define __bind-method!
      (lambda _g98231_
        (let ((_g98230_ (let () (declare (not safe)) (##length _g98231_))))
          (cond ((let () (declare (not safe)) (##fx= _g98230_ 3))
                 (apply (lambda (_%klass93815%_ _%id93816%_ _%proc93817%_)
                          (let ()
                            (declare (not safe))
                            (__bind-method!__0
                             _%klass93815%_
                             _%id93816%_
                             _%proc93817%_)))
                        _g98231_))
                ((let () (declare (not safe)) (##fx= _g98230_ 4))
                 (apply (lambda (_%klass93821%_
                                 _%id93822%_
                                 _%proc93823%_
                                 _%rebind?93824%_)
                          (let ()
                            (declare (not safe))
                            (__bind-method!__%
                             _%klass93821%_
                             _%id93822%_
                             _%proc93823%_
                             _%rebind?93824%_)))
                        _g98231_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g98231_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint93758%_ _%seed93760%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint93758%_
           procedure-hash
           eq?
           _%seed93760%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint93766%_ '#f) (_%seed93768%_ '0))
          (declare (not safe))
          (make-method-specializer-table__%
           _%size-hint93766%_
           _%seed93768%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint93770%_)
        (let ((_%seed93772%_ '0))
          (declare (not safe))
          (make-method-specializer-table__%
           _%size-hint93770%_
           _%seed93772%_))))
    (define make-method-specializer-table
      (lambda _g98233_
        (let ((_g98232_ (let () (declare (not safe)) (##length _g98233_))))
          (cond ((let () (declare (not safe)) (##fx= _g98232_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__0)))
                        _g98233_))
                ((let () (declare (not safe)) (##fx= _g98232_ 1))
                 (apply (lambda (_%size-hint93770%_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__1
                             _%size-hint93770%_)))
                        _g98233_))
                ((let () (declare (not safe)) (##fx= _g98232_ 2))
                 (apply (lambda (_%size-hint93774%_ _%seed93775%_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__%
                             _%size-hint93774%_
                             _%seed93775%_)))
                        _g98233_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g98233_))))))
    (define method-specializer-table-ref
      (lambda (_%tab93711%_ _%key93712%_ _%default93713%_)
        (let ((_%table93715%_
               (let () (declare (not safe)) (&raw-table-table _%tab93711%_)))
              (_%seed93716%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93711%_))))
          (let* ((_%h93718%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93712%_))
                         _%seed93716%_))
                 (_%size93721%_ (vector-length _%table93715%_))
                 (_%entries93724%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93721%_ '2)))
                 (_%start93727%_
                  (let ((__tmp98234
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93718%_ _%entries93724%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98234 '1))))
            (let _%loop93731%_ ((_%probe93734%_ _%start93727%_)
                                (_%i93736%_ '1)
                                (_%deleted93738%_ '#f))
              (let ((_%k93741%_ (vector-ref _%table93715%_ _%probe93734%_)))
                (if (eq? _%k93741%_ (macro-unused-obj))
                    (let () _%default93713%_)
                    (if (eq? _%k93741%_ (macro-deleted-obj))
                        (let ((__tmp98237
                               (let ((_%next-probe93746%_
                                      (fx+ _%start93727%_
                                           _%i93736%_
                                           (fx* _%i93736%_ _%i93736%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93746%_
                                  _%size93721%_)))
                              (__tmp98236
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93736%_ '1)))
                              (__tmp98235
                               (let ((_%$e93749%_ _%deleted93738%_))
                                 (if _%$e93749%_ _%$e93749%_ _%probe93734%_))))
                          (declare (not safe))
                          (_%loop93731%_ __tmp98237 __tmp98236 __tmp98235))
                        (if (eq? _%key93712%_ _%k93741%_)
                            (let ()
                              (vector-ref
                               _%table93715%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93734%_ '1))))
                            (let ((__tmp98239
                                   (let ((_%next-probe93754%_
                                          (fx+ _%start93727%_
                                               _%i93736%_
                                               (fx* _%i93736%_ _%i93736%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93754%_
                                      _%size93721%_)))
                                  (__tmp98238
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93736%_ '1))))
                              (declare (not safe))
                              (_%loop93731%_
                               __tmp98239
                               __tmp98238
                               _%deleted93738%_)))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab93707%_ _%key93708%_ _%value93709%_)
        (if (let ((__tmp98242
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93707%_)))
                  (__tmp98240
                   (let ((__tmp98241
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93707%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp98241 '4))))
              (declare (not safe))
              (##fx< __tmp98242 __tmp98240))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93707%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-set!
           _%tab93707%_
           _%key93708%_
           _%value93709%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab93658%_ _%key93659%_ _%value93660%_)
        (let ((_%table93663%_
               (let () (declare (not safe)) (&raw-table-table _%tab93658%_)))
              (_%seed93664%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93658%_))))
          (let* ((_%h93666%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93659%_))
                         _%seed93664%_))
                 (_%size93669%_ (vector-length _%table93663%_))
                 (_%entries93672%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93669%_ '2)))
                 (_%start93675%_
                  (let ((__tmp98243
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93666%_ _%entries93672%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98243 '1))))
            (let _%loop93679%_ ((_%probe93682%_ _%start93675%_)
                                (_%i93684%_ '1)
                                (_%deleted93686%_ '#f))
              (let ((_%k93689%_ (vector-ref _%table93663%_ _%probe93682%_)))
                (if (eq? _%k93689%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted93686%_
                          (begin
                            (vector-set!
                             _%table93663%_
                             _%deleted93686%_
                             _%key93659%_)
                            (vector-set!
                             _%table93663%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted93686%_ '1))
                             _%value93660%_)
                            ((lambda ()
                               (let ((__tmp98244
                                      (let ((__tmp98245
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93658%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98245 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93658%_
                                  __tmp98244)))))
                          (begin
                            (vector-set!
                             _%table93663%_
                             _%probe93682%_
                             _%key93659%_)
                            (vector-set!
                             _%table93663%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93682%_ '1))
                             _%value93660%_)
                            ((lambda ()
                               (let ((__tmp98246
                                      (let ((__tmp98247
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab93658%_))))
                                        (declare (not safe))
                                        (##fx- __tmp98247 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab93658%_
                                  __tmp98246))
                               (let ((__tmp98248
                                      (let ((__tmp98249
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93658%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98249 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93658%_
                                  __tmp98248)))))))
                    (if (eq? _%k93689%_ (macro-deleted-obj))
                        (let ((__tmp98252
                               (let ((_%next-probe93696%_
                                      (fx+ _%start93675%_
                                           _%i93684%_
                                           (fx* _%i93684%_ _%i93684%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93696%_
                                  _%size93669%_)))
                              (__tmp98251
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93684%_ '1)))
                              (__tmp98250
                               (let ((_%$e93699%_ _%deleted93686%_))
                                 (if _%$e93699%_ _%$e93699%_ _%probe93682%_))))
                          (declare (not safe))
                          (_%loop93679%_ __tmp98252 __tmp98251 __tmp98250))
                        (if (eq? _%key93659%_ _%k93689%_)
                            (let ()
                              (vector-set!
                               _%table93663%_
                               _%probe93682%_
                               _%key93659%_)
                              (vector-set!
                               _%table93663%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93682%_ '1))
                               _%value93660%_))
                            (let ((__tmp98254
                                   (let ((_%next-probe93704%_
                                          (fx+ _%start93675%_
                                               _%i93684%_
                                               (fx* _%i93684%_ _%i93684%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93704%_
                                      _%size93669%_)))
                                  (__tmp98253
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93684%_ '1))))
                              (declare (not safe))
                              (_%loop93679%_
                               __tmp98254
                               __tmp98253
                               _%deleted93686%_)))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab93653%_
               _%key93654%_
               _%method-specializer-table-update!93655%_
               _%default93656%_)
        (if (let ((__tmp98257
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93653%_)))
                  (__tmp98255
                   (let ((__tmp98256
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93653%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp98256 '4))))
              (declare (not safe))
              (##fx< __tmp98257 __tmp98255))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93653%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-update!
           _%tab93653%_
           _%key93654%_
           _%method-specializer-table-update!93655%_
           _%default93656%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab93603%_
               _%key93604%_
               _%method-specializer-table-update!93605%_
               _%default93606%_)
        (let ((_%table93609%_
               (let () (declare (not safe)) (&raw-table-table _%tab93603%_)))
              (_%seed93610%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93603%_))))
          (let* ((_%h93612%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93604%_))
                         _%seed93610%_))
                 (_%size93615%_ (vector-length _%table93609%_))
                 (_%entries93618%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93615%_ '2)))
                 (_%start93621%_
                  (let ((__tmp98258
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93612%_ _%entries93618%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98258 '1))))
            (let _%loop93625%_ ((_%probe93628%_ _%start93621%_)
                                (_%i93630%_ '1)
                                (_%deleted93632%_ '#f))
              (let ((_%k93635%_ (vector-ref _%table93609%_ _%probe93628%_)))
                (if (eq? _%k93635%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted93632%_
                          (begin
                            (vector-set!
                             _%table93609%_
                             _%deleted93632%_
                             _%key93604%_)
                            (vector-set!
                             _%table93609%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted93632%_ '1))
                             (_%method-specializer-table-update!93605%_
                              _%default93606%_))
                            ((lambda ()
                               (let ((__tmp98259
                                      (let ((__tmp98260
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93603%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98260 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93603%_
                                  __tmp98259)))))
                          (begin
                            (vector-set!
                             _%table93609%_
                             _%probe93628%_
                             _%key93604%_)
                            (vector-set!
                             _%table93609%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93628%_ '1))
                             (_%method-specializer-table-update!93605%_
                              _%default93606%_))
                            ((lambda ()
                               (let ((__tmp98261
                                      (let ((__tmp98262
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab93603%_))))
                                        (declare (not safe))
                                        (##fx- __tmp98262 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab93603%_
                                  __tmp98261))
                               (let ((__tmp98263
                                      (let ((__tmp98264
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93603%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98264 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93603%_
                                  __tmp98263)))))))
                    (if (eq? _%k93635%_ (macro-deleted-obj))
                        (let ((__tmp98267
                               (let ((_%next-probe93642%_
                                      (fx+ _%start93621%_
                                           _%i93630%_
                                           (fx* _%i93630%_ _%i93630%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93642%_
                                  _%size93615%_)))
                              (__tmp98266
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93630%_ '1)))
                              (__tmp98265
                               (let ((_%$e93645%_ _%deleted93632%_))
                                 (if _%$e93645%_ _%$e93645%_ _%probe93628%_))))
                          (declare (not safe))
                          (_%loop93625%_ __tmp98267 __tmp98266 __tmp98265))
                        (if (eq? _%key93604%_ _%k93635%_)
                            (let ()
                              (vector-set!
                               _%table93609%_
                               _%probe93628%_
                               _%key93604%_)
                              (vector-set!
                               _%table93609%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93628%_ '1))
                               (_%method-specializer-table-update!93605%_
                                (vector-ref
                                 _%table93609%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe93628%_ '1))))))
                            (let ((__tmp98269
                                   (let ((_%next-probe93650%_
                                          (fx+ _%start93621%_
                                               _%i93630%_
                                               (fx* _%i93630%_ _%i93630%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93650%_
                                      _%size93615%_)))
                                  (__tmp98268
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93630%_ '1))))
                              (declare (not safe))
                              (_%loop93625%_
                               __tmp98269
                               __tmp98268
                               _%deleted93632%_)))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab93558%_ _%key93560%_)
        (let ((_%table93563%_
               (let () (declare (not safe)) (&raw-table-table _%tab93558%_)))
              (_%seed93565%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93558%_))))
          (let* ((_%h93568%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93560%_))
                         _%seed93565%_))
                 (_%size93571%_ (vector-length _%table93563%_))
                 (_%entries93574%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93571%_ '2)))
                 (_%start93577%_
                  (let ((__tmp98270
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93568%_ _%entries93574%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98270 '1))))
            (let _%loop93581%_ ((_%probe93584%_ _%start93577%_)
                                (_%i93586%_ '1))
              (let ((_%k93589%_ (vector-ref _%table93563%_ _%probe93584%_)))
                (if (eq? _%k93589%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k93589%_ (macro-deleted-obj))
                        (let ((__tmp98272
                               (let ((_%next-probe93594%_
                                      (fx+ _%start93577%_
                                           _%i93586%_
                                           (fx* _%i93586%_ _%i93586%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93594%_
                                  _%size93571%_)))
                              (__tmp98271
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93586%_ '1))))
                          (declare (not safe))
                          (_%loop93581%_ __tmp98272 __tmp98271))
                        (if (eq? _%key93560%_ _%k93589%_)
                            (let ()
                              (vector-set!
                               _%table93563%_
                               _%probe93584%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93563%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93584%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp98273
                                        (let ((__tmp98274
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab93558%_))))
                                          (declare (not safe))
                                          (##fx- __tmp98274 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab93558%_
                                    __tmp98273)))))
                            (let ((__tmp98276
                                   (let ((_%next-probe93600%_
                                          (fx+ _%start93577%_
                                               _%i93586%_
                                               (fx* _%i93586%_ _%i93586%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93600%_
                                      _%size93571%_)))
                                  (__tmp98275
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93586%_ '1))))
                              (declare (not safe))
                              (_%loop93581%_ __tmp98276 __tmp98275)))))))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-method-specializer-table__% '#f '0)))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc93549%_ _%specializer93550%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93554%_ ()
            (if (let ((__tmp98277
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp98277 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again93554%_))))))
        (let ()
          (declare (not safe))
          (method-specializer-table-set!
           __method-specializers
           _%method-proc93549%_
           _%specializer93550%_))
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc93539%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93543%_ ()
            (if (let ((__tmp98278
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp98278 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again93543%_))))))
        (let ((_%specializer93547%_
               (let ()
                 (declare (not safe))
                 (method-specializer-table-ref
                  __method-specializers
                  _%proc93539%_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer93547%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass93537%_)
        (let ((__tmp98279
               (let () (declare (not safe)) (##type-id _%klass93537%_))))
          (declare (not safe))
          (symbolic-hash __tmp98279))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint93518%_ _%seed93520%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint93518%_
           __class-specializer-hash-key
           eq?
           _%seed93520%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint93526%_ '#f) (_%seed93528%_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _%size-hint93526%_ _%seed93528%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint93530%_)
        (let ((_%seed93532%_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _%size-hint93530%_ _%seed93532%_))))
    (define make-class-specializer-table
      (lambda _g98281_
        (let ((_g98280_ (let () (declare (not safe)) (##length _g98281_))))
          (cond ((let () (declare (not safe)) (##fx= _g98280_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g98281_))
                ((let () (declare (not safe)) (##fx= _g98280_ 1))
                 (apply (lambda (_%size-hint93530%_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _%size-hint93530%_)))
                        _g98281_))
                ((let () (declare (not safe)) (##fx= _g98280_ 2))
                 (apply (lambda (_%size-hint93534%_ _%seed93535%_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _%size-hint93534%_
                             _%seed93535%_)))
                        _g98281_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g98281_))))))
    (define class-specializer-table-ref
      (lambda (_%tab93471%_ _%key93472%_ _%default93473%_)
        (let ((_%table93475%_
               (let () (declare (not safe)) (&raw-table-table _%tab93471%_)))
              (_%seed93476%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93471%_))))
          (let* ((_%h93478%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key93472%_))
                         _%seed93476%_))
                 (_%size93481%_ (vector-length _%table93475%_))
                 (_%entries93484%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93481%_ '2)))
                 (_%start93487%_
                  (let ((__tmp98282
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93478%_ _%entries93484%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98282 '1))))
            (let _%loop93491%_ ((_%probe93494%_ _%start93487%_)
                                (_%i93496%_ '1)
                                (_%deleted93498%_ '#f))
              (let ((_%k93501%_ (vector-ref _%table93475%_ _%probe93494%_)))
                (if (eq? _%k93501%_ (macro-unused-obj))
                    (let () _%default93473%_)
                    (if (eq? _%k93501%_ (macro-deleted-obj))
                        (let ((__tmp98285
                               (let ((_%next-probe93506%_
                                      (fx+ _%start93487%_
                                           _%i93496%_
                                           (fx* _%i93496%_ _%i93496%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93506%_
                                  _%size93481%_)))
                              (__tmp98284
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93496%_ '1)))
                              (__tmp98283
                               (let ((_%$e93509%_ _%deleted93498%_))
                                 (if _%$e93509%_ _%$e93509%_ _%probe93494%_))))
                          (declare (not safe))
                          (_%loop93491%_ __tmp98285 __tmp98284 __tmp98283))
                        (if (eq? _%key93472%_ _%k93501%_)
                            (let ()
                              (vector-ref
                               _%table93475%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93494%_ '1))))
                            (let ((__tmp98287
                                   (let ((_%next-probe93514%_
                                          (fx+ _%start93487%_
                                               _%i93496%_
                                               (fx* _%i93496%_ _%i93496%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93514%_
                                      _%size93481%_)))
                                  (__tmp98286
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93496%_ '1))))
                              (declare (not safe))
                              (_%loop93491%_
                               __tmp98287
                               __tmp98286
                               _%deleted93498%_)))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab93467%_ _%key93468%_ _%value93469%_)
        (if (let ((__tmp98290
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93467%_)))
                  (__tmp98288
                   (let ((__tmp98289
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93467%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp98289 '4))))
              (declare (not safe))
              (##fx< __tmp98290 __tmp98288))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93467%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-set!
           _%tab93467%_
           _%key93468%_
           _%value93469%_))))
    (define __class-specializer-table-set!
      (lambda (_%tab93418%_ _%key93419%_ _%value93420%_)
        (let ((_%table93423%_
               (let () (declare (not safe)) (&raw-table-table _%tab93418%_)))
              (_%seed93424%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93418%_))))
          (let* ((_%h93426%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key93419%_))
                         _%seed93424%_))
                 (_%size93429%_ (vector-length _%table93423%_))
                 (_%entries93432%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93429%_ '2)))
                 (_%start93435%_
                  (let ((__tmp98291
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93426%_ _%entries93432%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98291 '1))))
            (let _%loop93439%_ ((_%probe93442%_ _%start93435%_)
                                (_%i93444%_ '1)
                                (_%deleted93446%_ '#f))
              (let ((_%k93449%_ (vector-ref _%table93423%_ _%probe93442%_)))
                (if (eq? _%k93449%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted93446%_
                          (begin
                            (vector-set!
                             _%table93423%_
                             _%deleted93446%_
                             _%key93419%_)
                            (vector-set!
                             _%table93423%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted93446%_ '1))
                             _%value93420%_)
                            ((lambda ()
                               (let ((__tmp98292
                                      (let ((__tmp98293
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93418%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98293 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93418%_
                                  __tmp98292)))))
                          (begin
                            (vector-set!
                             _%table93423%_
                             _%probe93442%_
                             _%key93419%_)
                            (vector-set!
                             _%table93423%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93442%_ '1))
                             _%value93420%_)
                            ((lambda ()
                               (let ((__tmp98294
                                      (let ((__tmp98295
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab93418%_))))
                                        (declare (not safe))
                                        (##fx- __tmp98295 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab93418%_
                                  __tmp98294))
                               (let ((__tmp98296
                                      (let ((__tmp98297
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93418%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98297 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93418%_
                                  __tmp98296)))))))
                    (if (eq? _%k93449%_ (macro-deleted-obj))
                        (let ((__tmp98300
                               (let ((_%next-probe93456%_
                                      (fx+ _%start93435%_
                                           _%i93444%_
                                           (fx* _%i93444%_ _%i93444%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93456%_
                                  _%size93429%_)))
                              (__tmp98299
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93444%_ '1)))
                              (__tmp98298
                               (let ((_%$e93459%_ _%deleted93446%_))
                                 (if _%$e93459%_ _%$e93459%_ _%probe93442%_))))
                          (declare (not safe))
                          (_%loop93439%_ __tmp98300 __tmp98299 __tmp98298))
                        (if (eq? _%key93419%_ _%k93449%_)
                            (let ()
                              (vector-set!
                               _%table93423%_
                               _%probe93442%_
                               _%key93419%_)
                              (vector-set!
                               _%table93423%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93442%_ '1))
                               _%value93420%_))
                            (let ((__tmp98302
                                   (let ((_%next-probe93464%_
                                          (fx+ _%start93435%_
                                               _%i93444%_
                                               (fx* _%i93444%_ _%i93444%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93464%_
                                      _%size93429%_)))
                                  (__tmp98301
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93444%_ '1))))
                              (declare (not safe))
                              (_%loop93439%_
                               __tmp98302
                               __tmp98301
                               _%deleted93446%_)))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab93413%_
               _%key93414%_
               _%class-specializer-table-update!93415%_
               _%default93416%_)
        (if (let ((__tmp98305
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93413%_)))
                  (__tmp98303
                   (let ((__tmp98304
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93413%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp98304 '4))))
              (declare (not safe))
              (##fx< __tmp98305 __tmp98303))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93413%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-update!
           _%tab93413%_
           _%key93414%_
           _%class-specializer-table-update!93415%_
           _%default93416%_))))
    (define __class-specializer-table-update!
      (lambda (_%tab93363%_
               _%key93364%_
               _%class-specializer-table-update!93365%_
               _%default93366%_)
        (let ((_%table93369%_
               (let () (declare (not safe)) (&raw-table-table _%tab93363%_)))
              (_%seed93370%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93363%_))))
          (let* ((_%h93372%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key93364%_))
                         _%seed93370%_))
                 (_%size93375%_ (vector-length _%table93369%_))
                 (_%entries93378%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93375%_ '2)))
                 (_%start93381%_
                  (let ((__tmp98306
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93372%_ _%entries93378%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98306 '1))))
            (let _%loop93385%_ ((_%probe93388%_ _%start93381%_)
                                (_%i93390%_ '1)
                                (_%deleted93392%_ '#f))
              (let ((_%k93395%_ (vector-ref _%table93369%_ _%probe93388%_)))
                (if (eq? _%k93395%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted93392%_
                          (begin
                            (vector-set!
                             _%table93369%_
                             _%deleted93392%_
                             _%key93364%_)
                            (vector-set!
                             _%table93369%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted93392%_ '1))
                             (_%class-specializer-table-update!93365%_
                              _%default93366%_))
                            ((lambda ()
                               (let ((__tmp98307
                                      (let ((__tmp98308
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93363%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98308 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93363%_
                                  __tmp98307)))))
                          (begin
                            (vector-set!
                             _%table93369%_
                             _%probe93388%_
                             _%key93364%_)
                            (vector-set!
                             _%table93369%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93388%_ '1))
                             (_%class-specializer-table-update!93365%_
                              _%default93366%_))
                            ((lambda ()
                               (let ((__tmp98309
                                      (let ((__tmp98310
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab93363%_))))
                                        (declare (not safe))
                                        (##fx- __tmp98310 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab93363%_
                                  __tmp98309))
                               (let ((__tmp98311
                                      (let ((__tmp98312
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93363%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98312 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93363%_
                                  __tmp98311)))))))
                    (if (eq? _%k93395%_ (macro-deleted-obj))
                        (let ((__tmp98315
                               (let ((_%next-probe93402%_
                                      (fx+ _%start93381%_
                                           _%i93390%_
                                           (fx* _%i93390%_ _%i93390%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93402%_
                                  _%size93375%_)))
                              (__tmp98314
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93390%_ '1)))
                              (__tmp98313
                               (let ((_%$e93405%_ _%deleted93392%_))
                                 (if _%$e93405%_ _%$e93405%_ _%probe93388%_))))
                          (declare (not safe))
                          (_%loop93385%_ __tmp98315 __tmp98314 __tmp98313))
                        (if (eq? _%key93364%_ _%k93395%_)
                            (let ()
                              (vector-set!
                               _%table93369%_
                               _%probe93388%_
                               _%key93364%_)
                              (vector-set!
                               _%table93369%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93388%_ '1))
                               (_%class-specializer-table-update!93365%_
                                (vector-ref
                                 _%table93369%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe93388%_ '1))))))
                            (let ((__tmp98317
                                   (let ((_%next-probe93410%_
                                          (fx+ _%start93381%_
                                               _%i93390%_
                                               (fx* _%i93390%_ _%i93390%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93410%_
                                      _%size93375%_)))
                                  (__tmp98316
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93390%_ '1))))
                              (declare (not safe))
                              (_%loop93385%_
                               __tmp98317
                               __tmp98316
                               _%deleted93392%_)))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab93318%_ _%key93320%_)
        (let ((_%table93323%_
               (let () (declare (not safe)) (&raw-table-table _%tab93318%_)))
              (_%seed93325%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93318%_))))
          (let* ((_%h93328%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key93320%_))
                         _%seed93325%_))
                 (_%size93331%_ (vector-length _%table93323%_))
                 (_%entries93334%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93331%_ '2)))
                 (_%start93337%_
                  (let ((__tmp98318
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93328%_ _%entries93334%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98318 '1))))
            (let _%loop93341%_ ((_%probe93344%_ _%start93337%_)
                                (_%i93346%_ '1))
              (let ((_%k93349%_ (vector-ref _%table93323%_ _%probe93344%_)))
                (if (eq? _%k93349%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k93349%_ (macro-deleted-obj))
                        (let ((__tmp98320
                               (let ((_%next-probe93354%_
                                      (fx+ _%start93337%_
                                           _%i93346%_
                                           (fx* _%i93346%_ _%i93346%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93354%_
                                  _%size93331%_)))
                              (__tmp98319
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93346%_ '1))))
                          (declare (not safe))
                          (_%loop93341%_ __tmp98320 __tmp98319))
                        (if (eq? _%key93320%_ _%k93349%_)
                            (let ()
                              (vector-set!
                               _%table93323%_
                               _%probe93344%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93323%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93344%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp98321
                                        (let ((__tmp98322
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab93318%_))))
                                          (declare (not safe))
                                          (##fx- __tmp98322 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab93318%_
                                    __tmp98321)))))
                            (let ((__tmp98324
                                   (let ((_%next-probe93360%_
                                          (fx+ _%start93337%_
                                               _%i93346%_
                                               (fx* _%i93346%_ _%i93346%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93360%_
                                      _%size93331%_)))
                                  (__tmp98323
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93346%_ '1))))
                              (declare (not safe))
                              (_%loop93341%_ __tmp98324 __tmp98323)))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers
      (let () (declare (not safe)) (make-class-specializer-table__% '#f '0)))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass93304%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93304%_ 'class))
              (let ((_%klass93308%_ _%klass93304%_))
                (declare (not safe))
                (__specialize-class _%klass93308%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@1017.25-1017.30"
                 'contract:
                 'class-type?
                 'value:
                 _%klass93304%_)
                '#!void)))))
    (define __specialize-class
      (lambda (_%klass93286%_)
        (let ()
          (let* ((_%klass93289%_ _%klass93286%_)
                 (_%$e93298%_
                  (let ()
                    (declare (not safe))
                    (__lookup-class-specializer _%klass93289%_))))
            (if _%$e93298%_
                _%$e93298%_
                (let ((_%method-table93302%_
                       (let ()
                         (declare (not safe))
                         (___specialize-class _%klass93289%_))))
                  (let ()
                    (declare (not safe))
                    (__bind-class-specializer!
                     _%klass93289%_
                     _%method-table93302%_))
                  _%method-table93302%_))))))
    (define __lookup-class-specializer
      (lambda (_%klass93276%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93280%_ ()
            (if (let ((__tmp98325
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp98325 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again93280%_))))))
        (let ((_%method-table93284%_
               (let ()
                 (declare (not safe))
                 (class-specializer-table-ref
                  __class-specializers
                  _%klass93276%_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table93284%_)))
    (define __bind-class-specializer!
      (lambda (_%klass93267%_ _%method-table93268%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93272%_ ()
            (if (let ((__tmp98326
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp98326 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again93272%_))))))
        (let ()
          (declare (not safe))
          (class-specializer-table-set!
           __class-specializers
           _%klass93267%_
           _%method-table93268%_))
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass93251%_
               _%method-table93252%_
               _%method93253%_
               _%proc93254%_)
        (let ((_%$e93256%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table93252%_
                  _%method93253%_
                  '#f))))
          (if _%$e93256%_
              _%$e93256%_
              (let ((_%$e93259%_
                     (let ()
                       (declare (not safe))
                       (__lookup-method-specializer _%proc93254%_))))
                (if _%$e93259%_
                    ((lambda (_%specialize93262%_)
                       (let ((_%specialized-proc93264%_
                              (_%specialize93262%_
                               _%klass93251%_
                               _%method-table93252%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table93252%_
                          _%method93253%_
                          _%specialized-proc93264%_)))
                     _%$e93259%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table93252%_
                       _%method93253%_
                       _%proc93254%_))))))))
    (define ___specialize-class
      (lambda (_%klass93193%_)
        (if (let ((__tmp98327
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of? _%klass93193%_ 'class))))
              (declare (not safe))
              (not __tmp98327))
            (let ()
              (if (let () (declare (not safe)) (##type? _%klass93193%_))
                  (let ((__tmp98328
                         (let ()
                           (declare (not safe))
                           (__shadow-class _%klass93193%_))))
                    (declare (not safe))
                    (__specialize-class __tmp98328))
                  (error '"bad class; cannot specialize" _%klass93193%_)))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _%klass93193%_))
                (let ((__method98103
                       (let ()
                         (declare (not safe))
                         (__method-ref _%klass93193%_ 'specialize-class))))
                  (if __method98103
                      (__method98103 _%klass93193%_)
                      (error '"Missing method"
                             _%klass93193%_
                             'specialize-class)))
                (if (let ((__tmp98329
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass93193%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp98329))
                    (let ()
                      (error '"cannot specialize class that extends metaclass without a metaclass"
                             _%klass93193%_))
                    (let ((_%method-table93199%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop93201%_ ((_%rest93203%_
                                           (let ()
                                             (declare (not safe))
                                             (class-precedence-list
                                              _%klass93193%_))))
                        (let* ((_%rest9320493212%_ _%rest93203%_)
                               (_%else9320693220%_
                                (lambda () _%method-table93199%_))
                               (_%K9320893239%_
                                (lambda (_%rest93223%_ _%xklass93224%_)
                                  (let ((_%xmethod-table9322593227%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass93224%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table9322593227%_
                                        (let* ((_%xmethod-table93230%_
                                                _%xmethod-table9322593227%_)
                                               (__tmp98330
                                                (lambda (_%g9323193234%_
                                                         _%g9323293236%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (__specialize-method
                                                     _%klass93193%_
                                                     _%method-table93199%_
                                                     _%g9323193234%_
                                                     _%g9323293236%_)))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table93230%_
                                           __tmp98330))
                                        '#f))
                                  (let ()
                                    (declare (not safe))
                                    (_%loop93201%_ _%rest93223%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9320493212%_))
                              (let ((_%hd9320993242%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9320493212%_)))
                                    (_%tl9321093244%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9320493212%_))))
                                (let* ((_%xklass93247%_ _%hd9320993242%_)
                                       (_%rest93249%_ _%tl9321093244%_))
                                  (declare (not safe))
                                  (_%K9320893239%_
                                   _%rest93249%_
                                   _%xklass93247%_)))
                              (let ()
                                (declare (not safe))
                                (_%else9320693220%_)))))))))))
    (define seal-class!
      (lambda (_%klass93179%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93179%_ 'class))
              (let ((_%klass93183%_ _%klass93179%_))
                (declare (not safe))
                (__seal-class! _%klass93183%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@1074.20-1074.25"
                 'contract:
                 'class-type?
                 'value:
                 _%klass93179%_)
                '#!void)))))
    (define __seal-class!
      (lambda (_%klass93162%_)
        (let ((_%klass93165%_ _%klass93162%_))
          (if (let ()
                (declare (not safe))
                (__class-type-sealed? _%klass93165%_))
              '#!void
              (begin
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass93165%_))
                    '#!void
                    (error '"cannot seal non-final class" _%klass93165%_))
                (if (let ()
                      (declare (not safe))
                      (__class-type-metaclass? _%klass93165%_))
                    (let ((__method98104
                           (let ()
                             (declare (not safe))
                             (__method-ref _%klass93165%_ 'seal-class!))))
                      (if __method98104
                          (__method98104 _%klass93165%_)
                          (error '"Missing method"
                                 _%klass93165%_
                                 'seal-class!)))
                    (if (let ((__tmp98331
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass93165%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp98331))
                        (let ()
                          (error '"cannot seal class that extends metaclass without a metaclass"
                                 _%klass93165%_))
                        (let ((_%method-table93177%_
                               (let ()
                                 (declare (not safe))
                                 (__specialize-class _%klass93165%_))))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass93165%_
                           _%method-table93177%_
                           '11
                           '#f
                           '#f))))
                (let ()
                  (declare (not safe))
                  (__class-type-seal! _%klass93165%_)))))))
    (define next-method
      (lambda (_%subklass93136%_ _%obj93137%_ _%id93138%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%subklass93136%_ 'class))
              (let ((_%subklass93142%_ _%subklass93136%_))
                (if (let () (declare (not safe)) (symbol? _%id93138%_))
                    (let ((_%id93152%_ _%id93138%_))
                      (declare (not safe))
                      (__next-method
                       _%subklass93142%_
                       _%obj93137%_
                       _%id93152%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@1098.44-1098.46"
                       'contract:
                       'symbol?
                       'value:
                       _%id93138%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@1098.20-1098.28"
                 'contract:
                 'class-type?
                 'value:
                 _%subklass93136%_)
                '#!void)))))
    (define __next-method
      (lambda (_%subklass93073%_ _%obj93074%_ _%id93075%_)
        (let ()
          (let* ((_%subklass93078%_ _%subklass93073%_)
                 (_%id93086%_ _%id93075%_))
            (letrec ((_%find-next-method93095%_
                      (lambda (_%klass93097%_)
                        (let _%lp93099%_ ((_%rest93101%_
                                           (let ()
                                             (declare (not safe))
                                             (class-precedence-list
                                              _%klass93097%_))))
                          (let* ((_%rest9310293110%_ _%rest93101%_)
                                 (_%else9310493118%_ (lambda () '#f))
                                 (_%K9310693124%_
                                  (lambda (_%rest93121%_ _%klass93122%_)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (##type-id _%subklass93078%_))
                                             (let ()
                                               (declare (not safe))
                                               (##type-id _%klass93122%_)))
                                        (let ()
                                          (declare (not safe))
                                          (__mixin-find-method
                                           _%rest93121%_
                                           _%obj93074%_
                                           _%id93086%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%lp93099%_ _%rest93121%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest9310293110%_))
                                (let ((_%hd9310793127%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest9310293110%_)))
                                      (_%tl9310893129%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest9310293110%_))))
                                  (let* ((_%klass93132%_ _%hd9310793127%_)
                                         (_%rest93134%_ _%tl9310893129%_))
                                    (declare (not safe))
                                    (_%K9310693124%_
                                     _%rest93134%_
                                     _%klass93132%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else9310493118%_))))))))
              (let ((__tmp98332
                     (let () (declare (not safe)) (class-of _%obj93074%_))))
                (declare (not safe))
                (_%find-next-method93095%_ __tmp98332)))))))
    (define call-next-method
      (lambda (_%subklass93046%_ _%obj93047%_ _%id93048%_ . _%args93049%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%subklass93046%_ 'class))
              (let ((_%subklass93053%_ _%subklass93046%_))
                (if (let () (declare (not safe)) (symbol? _%id93048%_))
                    (let ((_%id93063%_ _%id93048%_))
                      (declare (not safe))
                      (##apply __call-next-method
                               _%subklass93053%_
                               _%obj93047%_
                               _%id93063%_
                               _%args93049%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@1109.49-1109.51"
                       'contract:
                       'symbol?
                       'value:
                       _%id93048%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@1109.25-1109.33"
                 'contract:
                 'class-type?
                 'value:
                 _%subklass93046%_)
                '#!void)))))
    (define __call-next-method
      (lambda (_%subklass93017%_ _%obj93018%_ _%id93019%_ . _%args93020%_)
        (let ((_%subklass93023%_ _%subklass93017%_))
          (let* ((_%id93031%_ _%id93019%_)
                 (_%$e93040%_
                  (let ()
                    (declare (not safe))
                    (__next-method
                     _%subklass93023%_
                     _%obj93018%_
                     _%id93031%_))))
            (if _%$e93040%_
                ((lambda (_%methodf93043%_)
                   (apply _%methodf93043%_ _%obj93018%_ _%args93020%_))
                 _%$e93040%_)
                (let ()
                  (error '"cannot find next method"
                         'object:
                         _%obj93018%_
                         'method:
                         _%id93031%_)))))))
    (define write-style
      (lambda (_%we93015%_) (macro-writeenv-style _%we93015%_)))
    (define write-object
      (lambda (_%we93006%_ _%obj93007%_)
        (let ((_%$e93009%_
               (let () (declare (not safe)) (__method-ref _%obj93007%_ ':wr))))
          (if _%$e93009%_
              ((lambda (_%method93012%_)
                 (_%method93012%_ _%obj93007%_ _%we93006%_))
               _%$e93009%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we93006%_ _%obj93007%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type92921%_)
        (letrec ((_%shadow-type-id92923%_
                  (lambda (_%type93004%_)
                    (let ((__tmp98333
                           (let ()
                             (declare (not safe))
                             (##type-name _%type93004%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp98333 '"::t"))))
                 (_%shadow-type-name92924%_
                  (lambda (_%type93002%_)
                    (let () (declare (not safe)) (##type-name _%type93002%_))))
                 (_%make-shadow-class92925%_
                  (lambda (_%type92994%_ _%precedence-list92995%_)
                    (let* ((_%super92997%_
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _%precedence-list92995%_))
                                (cons (car _%precedence-list92995%_) '())
                                '()))
                           (_%klass92999%_
                            (let ((__tmp98336
                                   (let ()
                                     (declare (not safe))
                                     (_%shadow-type-id92923%_ _%type92994%_)))
                                  (__tmp98335
                                   (let ()
                                     (declare (not safe))
                                     (##type-name _%type92994%_)))
                                  (__tmp98334
                                   (cons (cons 'struct: '#t)
                                         (cons (cons 'system: '#t)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__type-extensible?
                                                      _%type92994%_))
                                                   '()
                                                   (cons (cons 'final: '#t)
                                                         '()))))))
                              (declare (not safe))
                              (make-class-type
                               __tmp98336
                               __tmp98335
                               _%super92997%_
                               '()
                               __tmp98334
                               '#f))))
                      (let ((__tmp98337
                             (let ()
                               (declare (not safe))
                               (##type-id _%type92994%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp98337
                         _%klass92999%_))
                      _%klass92999%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again92929%_ ()
              (if (let ((__tmp98338
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp98338 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (let () (declare (not safe)) (_%again92929%_))))))
          (let ((_%$e92933%_
                 (let ((__tmp98339
                        (let ()
                          (declare (not safe))
                          (##type-id _%type92921%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp98339 '#f))))
            (if _%$e92933%_
                ((lambda (_%klass92936%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass92936%_)
                 _%$e92933%_)
                (let _%loop92939%_ ((_%super92941%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-super _%type92921%_)))
                                    (_%hierarchy92942%_ '()))
                  (if (let () (declare (not safe)) (not _%super92941%_))
                      (let _%loop92945%_ ((_%rest92947%_ _%hierarchy92942%_)
                                          (_%precedence-list92948%_ '()))
                        (let* ((_%rest9294992957%_ _%rest92947%_)
                               (_%else9295192967%_
                                (lambda ()
                                  (let ((_%klass92965%_
                                         (let ()
                                           (declare (not safe))
                                           (_%make-shadow-class92925%_
                                            _%type92921%_
                                            _%precedence-list92948%_))))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass92965%_)))
                               (_%K9295392981%_
                                (lambda (_%rest92970%_ _%type92971%_)
                                  (let ((_%$e92973%_
                                         (let ((__tmp98340
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type92971%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp98340
                                            '#f))))
                                    (if _%$e92973%_
                                        ((lambda (_%klass92976%_)
                                           (let ((__tmp98341
                                                  (cons _%klass92976%_
                                                        _%precedence-list92948%_)))
                                             (declare (not safe))
                                             (_%loop92945%_
                                              _%rest92970%_
                                              __tmp98341)))
                                         _%$e92973%_)
                                        (let ()
                                          (let* ((_%klass92979%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%make-shadow-class92925%_
                                                     _%type92971%_
                                                     _%precedence-list92948%_)))
                                                 (__tmp98342
                                                  (cons _%klass92979%_
                                                        _%precedence-list92948%_)))
                                            (declare (not safe))
                                            (_%loop92945%_
                                             _%rest92970%_
                                             __tmp98342))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9294992957%_))
                              (let ((_%hd9295492984%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9294992957%_)))
                                    (_%tl9295592986%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9294992957%_))))
                                (let* ((_%type92989%_ _%hd9295492984%_)
                                       (_%rest92991%_ _%tl9295592986%_))
                                  (declare (not safe))
                                  (_%K9295392981%_
                                   _%rest92991%_
                                   _%type92989%_)))
                              (let ()
                                (declare (not safe))
                                (_%else9295192967%_)))))
                      (let ((__tmp98344
                             (let ()
                               (declare (not safe))
                               (##type-super _%super92941%_)))
                            (__tmp98343
                             (cons _%super92941%_ _%hierarchy92942%_)))
                        (declare (not safe))
                        (_%loop92939%_ __tmp98344 __tmp98343)))))))))
    (define class-of
      (lambda (_%obj92894%_)
        (let ()
          (declare (not interrupts-enabled))
          (let ((_%t92898%_
                 (let () (declare (not safe)) (##type _%obj92894%_))))
            (if (fx= _%t92898%_ (macro-type-subtyped))
                (let ((_%st92901%_
                       (let () (declare (not safe)) (##subtype _%obj92894%_))))
                  (if (fx= _%st92901%_ (macro-subtype-structure))
                      (let ((_%klass92904%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj92894%_))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of? _%klass92904%_ 'class))
                            _%klass92904%_
                            (let ()
                              (declare (not safe))
                              (__shadow-class _%klass92904%_))))
                      (if (fx= _%st92901%_ (macro-subtype-boxvalues))
                          (let ()
                            (if (let ((__tmp98345
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length _%obj92894%_))))
                                  (declare (not safe))
                                  (##fx= __tmp98345 '1))
                                (let ()
                                  (declare (not safe))
                                  (__system-class 'box))
                                (let ()
                                  (declare (not safe))
                                  (__system-class 'values))))
                          (let ((_%$e92907%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref __subtype-id _%st92901%_))))
                            (if _%$e92907%_
                                (let ()
                                  (declare (not safe))
                                  (__system-class _%$e92907%_))
                                (let ()
                                  (error '"unknown class"
                                         'subtype:
                                         _%st92901%_
                                         'object:
                                         _%obj92894%_)))))))
                (if (fx= _%t92898%_ (macro-type-mem2))
                    (let () (declare (not safe)) (__system-class 'pair))
                    (if (fx= _%t92898%_ (macro-type-fixnum))
                        (let () (declare (not safe)) (__system-class 'fixnum))
                        (let ()
                          (if (let ()
                                (declare (not safe))
                                (char? _%obj92894%_))
                              (let ()
                                (declare (not safe))
                                (__system-class 'char))
                              (if (eq? _%obj92894%_ '())
                                  (let ()
                                    (declare (not safe))
                                    (__system-class 'null))
                                  (if (eq? _%obj92894%_ '#f)
                                      (let ()
                                        (declare (not safe))
                                        (__system-class 'boolean))
                                      (if (eq? _%obj92894%_ '#t)
                                          (let ()
                                            (declare (not safe))
                                            (__system-class 'boolean))
                                          (if (eq? _%obj92894%_ '#!void)
                                              (let ()
                                                (declare (not safe))
                                                (__system-class 'void))
                                              (if (eq? _%obj92894%_ '#!eof)
                                                  (let ()
                                                    (declare (not safe))
                                                    (__system-class 'eof))
                                                  (let ()
                                                    (declare (not safe))
                                                    (__system-class
                                                     'special))))))))))))))))
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
    (vector-set! __subtype-id (macro-subtype-flonum) 'flonum)
    (vector-set! __subtype-id (macro-subtype-bignum) 'bignum)
    (define __system-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __system-class
      (lambda (_%id92888%_)
        (let ((_%$e92890%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id92888%_ '#f))))
          (if _%$e92890%_
              _%$e92890%_
              (let () (error '"unknown system class" _%id92888%_))))))
    (define __make-system-class
      (lambda (_%id92883%_ _%super92884%_)
        (let ((_%klass92886%_
               (let ()
                 (declare (not safe))
                 (make-class-type
                  _%id92883%_
                  _%id92883%_
                  _%super92884%_
                  '()
                  '((system: . #t))
                  '#f))))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id92883%_ _%klass92886%_))
          _%klass92886%_)))))
