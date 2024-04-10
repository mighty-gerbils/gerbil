(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1712757953)
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
      (let ((_%flags96800%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties96801%_ '((direct-slots:) (system: . #t)))
            (_%slot-table96802%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags96800%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table96802%_
           _%properties96801%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots96776%_
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
             (_%slot-vector96778%_ (list->vector (cons '#f _%slots96776%_)))
             (_%slot-table96785%_
              (let ((_%slot-table96780%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp98248
                       (lambda (_%slot96782%_ _%field96783%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table96780%_
                            _%slot96782%_
                            _%field96783%_))
                         (let ((__tmp98249
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot96782%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table96780%_
                            __tmp98249
                            _%field96783%_))))
                      (__tmp98246
                       (let ((__tmp98247
                              (let ()
                                (declare (not safe))
                                (##length _%slots96776%_))))
                         (declare (not safe))
                         (##iota __tmp98247 '1))))
                  (declare (not safe))
                  (##for-each __tmp98248 _%slots96776%_ __tmp98246))
                _%slot-table96780%_))
             (_%flags96787%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields96793%_
              (list->vector
               (let ((__tmp98250
                      (map (lambda (_%g9678896790%_)
                             (list _%g9678896790%_ '5 '#f))
                           (drop _%slots96776%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp98250))))
             (_%properties96795%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots96776%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t96797%_
              (let ((__tmp98251 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags96787%_
                 ##type-type
                 _%fields96793%_
                 __tmp98251
                 _%slot-vector96778%_
                 _%slot-table96785%_
                 _%properties96795%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t96797%_ _%t96797%_))
        _%t96797%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags96772%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties96773%_ '((direct-slots:) (system: . #t)))
            (_%slot-table96774%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp98252 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags96772%_
           '#f
           '#()
           __tmp98252
           '#(#f)
           _%slot-table96774%_
           _%properties96773%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj96770%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj96770%_ 'class))))
    (define class-type=?
      (lambda (_%x96745%_ _%y96746%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x96745%_ 'class))
            (let ((_%x96750%_ _%x96745%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y96746%_ 'class))
                  (let ((_%y96760%_ _%y96746%_))
                    (__class-type=? _%x96750%_ _%y96760%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y96746%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x96745%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x96724%_ _%y96725%_)
        (let* ((_%x96728%_ _%x96724%_) (_%y96736%_ _%y96725%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x96728%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y96736%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type96710%_)
        (if (let () (declare (not safe)) (##type? _%type96710%_))
            (let ((_%type96714%_ _%type96710%_))
              (__type-opaque? _%type96714%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type96710%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type96698%_)
        (let* ((_%type96701%_ _%type96698%_)
               (__tmp98253
                (let ((__tmp98254
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type96701%_))))
                  (declare (not safe))
                  (##fxand __tmp98254 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp98253 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type96684%_)
        (if (let () (declare (not safe)) (##type? _%type96684%_))
            (let ((_%type96688%_ _%type96684%_))
              (__type-extensible? _%type96688%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type96684%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type96672%_)
        (let* ((_%type96675%_ _%type96672%_)
               (__tmp98255
                (let ((__tmp98256
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type96675%_))))
                  (declare (not safe))
                  (##fxand __tmp98256 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp98255 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type96658%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type96658%_ 'class))
            (let ((_%type96662%_ _%type96658%_))
              (__class-type-final? _%type96662%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type96658%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type96646%_)
        (let* ((_%type96649%_ _%type96646%_)
               (__tmp98257
                (let ((__tmp98258
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type96649%_))))
                  (declare (not safe))
                  (##fxand __tmp98258 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp98257 '0))))
    (define class-type-struct?
      (lambda (_%klass96632%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96632%_ 'class))
            (let ((_%klass96636%_ _%klass96632%_))
              (__class-type-struct? _%klass96636%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass96632%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass96620%_)
        (let* ((_%klass96623%_ _%klass96620%_)
               (__tmp98259
                (let ((__tmp98260
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass96623%_))))
                  (declare (not safe))
                  (##fxand __tmp98260 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp98259 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass96606%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96606%_ 'class))
            (let ((_%klass96610%_ _%klass96606%_))
              (__class-type-sealed? _%klass96610%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass96606%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass96594%_)
        (let* ((_%klass96597%_ _%klass96594%_)
               (__tmp98261
                (let ((__tmp98262
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass96597%_))))
                  (declare (not safe))
                  (##fxand __tmp98262 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp98261 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass96580%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96580%_ 'class))
            (let ((_%klass96584%_ _%klass96580%_))
              (__class-type-metaclass? _%klass96584%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass96580%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass96568%_)
        (let* ((_%klass96571%_ _%klass96568%_)
               (__tmp98263
                (let ((__tmp98264
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass96571%_))))
                  (declare (not safe))
                  (##fxand __tmp98264 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp98263 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass96554%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96554%_ 'class))
            (let ((_%klass96558%_ _%klass96554%_))
              (__class-type-system? _%klass96558%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass96554%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass96542%_)
        (let* ((_%klass96545%_ _%klass96542%_)
               (__tmp98265
                (let ((__tmp98266
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass96545%_))))
                  (declare (not safe))
                  (##fxand __tmp98266 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp98265 class-type-flag-system))))
    (define make-class-type-descriptor
      (lambda (_%type-id96427%_
               _%type-name96428%_
               _%type-super96429%_
               _%precedence-list96430%_
               _%slot-vector96431%_
               _%properties96432%_
               _%constructor96433%_
               _%slot-table96434%_
               _%methods96435%_)
        (letrec ((_%make-props!96438%_
                  (lambda (_%key96511%_)
                    (letrec* ((_%ht96513%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!96514%_
                               (lambda (_%ht96535%_ _%slots96536%_)
                                 (for-each
                                  (lambda (_%g9653796539%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht96535%_
                                       _%g9653796539%_
                                       '#t)))
                                  _%slots96536%_)))
                              (_%put-alist!96515%_
                               (lambda (_%ht96524%_
                                        _%key96525%_
                                        _%alist96526%_)
                                 (let ((_%$e96528%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key96525%_
                                           _%alist96526%_))))
                                   (if _%$e96528%_
                                       ((lambda (_%g9653096532%_)
                                          (_%put-slots!96514%_
                                           _%ht96524%_
                                           _%g9653096532%_))
                                        _%$e96528%_)
                                       '#!void)))))
                      (_%put-alist!96515%_
                       _%ht96513%_
                       _%key96511%_
                       _%properties96432%_)
                      (for-each
                       (lambda (_%mixin96517%_)
                         (let ((_%alist96519%_
                                (##structure-ref
                                 _%mixin96517%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist96519%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key96511%_
                                           _%alist96519%_))))
                               (_%put-slots!96514%_
                                _%ht96513%_
                                (class-type-slot-list _%mixin96517%_))
                               (_%put-alist!96515%_
                                _%ht96513%_
                                _%key96511%_
                                _%alist96519%_))))
                       _%precedence-list96430%_)
                      _%ht96513%_))))
          (let* ((_%transparent?96440%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties96432%_)))
                 (_%all-slots-printable?96445%_
                  (let ((_%$e96442%_ _%transparent?96440%_))
                    (if _%$e96442%_
                        _%$e96442%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties96432%_))))))
                 (_%printable96447%_
                  (if (not _%all-slots-printable?96445%_)
                      (_%make-props!96438%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?96452%_
                  (let ((_%$e96449%_ _%transparent?96440%_))
                    (if _%$e96449%_
                        _%$e96449%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties96432%_))))))
                 (_%equalable96454%_
                  (if (not _%all-slots-equalable?96452%_)
                      (_%make-props!96438%_ 'equal:)
                      '#f))
                 (_%first-new-field96456%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super96429%_ 'class))
                      (let ((__tmp98267
                             (##structure-ref
                              _%type-super96429%_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp98267))
                      '1))
                 (_%field-info-length96458%_
                  (let ((__tmp98268
                         (let ((__tmp98269
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector96431%_))))
                           (declare (not safe))
                           (##fx- __tmp98269 _%first-new-field96456%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp98268)))
                 (_%field-info96460%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length96458%_ '#f)))
                 (_%struct?96462%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties96432%_)))
                 (_%final?96464%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties96432%_)))
                 (_%metaclass96472%_
                  (let ((_%metaclass9646596467%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties96432%_))))
                    (if _%metaclass9646596467%_
                        (let ((_%metaclass96470%_ _%metaclass9646596467%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass96470%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id96427%_
                                     'metaclass:
                                     _%metaclass96470%_))
                          _%metaclass96470%_)
                        '#f)))
                 (_%system?96474%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties96432%_)))
                 (_%opaque?96479%_
                  (let ((_%$e96476%_ (not _%all-slots-equalable?96452%_)))
                    (if _%$e96476%_
                        _%$e96476%_
                        (if _%type-super96429%_
                            (__type-opaque? _%type-super96429%_)
                            '#f))))
                 (_%type-flags96481%_
                  (let ((__tmp98274
                         (if _%final?96464%_ '0 type-flag-extensible))
                        (__tmp98273 (if _%opaque?96479%_ type-flag-opaque '0))
                        (__tmp98272
                         (if _%struct?96462%_ class-type-flag-struct '0))
                        (__tmp98271
                         (if _%metaclass96472%_ class-type-flag-metaclass '0))
                        (__tmp98270
                         (if _%system?96474%_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp98274
                             __tmp98273
                             __tmp98272
                             __tmp98271
                             __tmp98270)))
                 (_%precedence-list96489%_
                  (let ((_%$e96483%_ (memq t::t _%precedence-list96430%_)))
                    (if _%$e96483%_
                        ((lambda (_%tail96486%_)
                           (if (null? (cdr _%tail96486%_))
                               _%precedence-list96430%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list96430%_)))
                         _%$e96483%_)
                        (let ((__tmp98275 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list96430%_ __tmp98275))))))
            (let _%loop96492%_ ((_%i96494%_ _%first-new-field96456%_)
                                (_%j96495%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j96495%_ _%field-info-length96458%_))
                  (let* ((_%slot96497%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector96431%_ _%i96494%_)))
                         (_%flags96505%_
                          (if _%transparent?96440%_
                              '0
                              (let ((__tmp98277
                                     (if (or _%all-slots-printable?96445%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable96447%_
                                                _%slot96497%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp98276
                                     (if (or _%all-slots-equalable?96452%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable96454%_
                                                _%slot96497%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp98277 __tmp98276)))))
                    (vector-set! _%field-info96460%_ _%j96495%_ _%slot96497%_)
                    (vector-set!
                     _%field-info96460%_
                     (let () (declare (not safe)) (##fx+ _%j96495%_ '1))
                     _%flags96505%_)
                    (_%loop96492%_
                     (let () (declare (not safe)) (##fx+ _%i96494%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j96495%_ '3))))
                  '#!void))
            (if _%metaclass96472%_
                (let ((_%val96508%_
                       (make-instance
                        _%metaclass96472%_
                        _%type-id96427%_
                        _%type-name96428%_
                        _%type-flags96481%_
                        _%type-super96429%_
                        _%field-info96460%_
                        _%precedence-list96489%_
                        _%slot-vector96431%_
                        _%slot-table96434%_
                        _%properties96432%_
                        _%constructor96433%_
                        _%methods96435%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val96508%_ 'class))
                      _%val96508%_
                      (error '"bad cast" class::t _%val96508%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id96427%_
                   _%type-name96428%_
                   _%type-flags96481%_
                   _%type-super96429%_
                   _%field-info96460%_
                   _%precedence-list96489%_
                   _%slot-vector96431%_
                   _%slot-table96434%_
                   _%properties96432%_
                   _%constructor96433%_
                   _%methods96435%_)))))))
    (define class-type-id
      (lambda (_%klass96425%_)
        (##structure-ref _%klass96425%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass96423%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96423%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass96420%_ _%val96421%_)
        (##structure-set! _%klass96420%_ _%val96421%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass96415%_ _%val96417%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96415%_
           _%val96417%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass96413%_)
        (##structure-ref _%klass96413%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass96411%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96411%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass96408%_ _%val96409%_)
        (##structure-set! _%klass96408%_ _%val96409%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass96403%_ _%val96405%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96403%_
           _%val96405%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass96401%_)
        (##structure-ref _%klass96401%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass96399%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96399%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass96396%_ _%val96397%_)
        (##structure-set! _%klass96396%_ _%val96397%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass96391%_ _%val96393%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96391%_
           _%val96393%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass96389%_)
        (##structure-ref _%klass96389%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass96387%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96387%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass96384%_ _%val96385%_)
        (##structure-set! _%klass96384%_ _%val96385%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass96379%_ _%val96381%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96379%_
           _%val96381%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass96377%_)
        (##structure-ref _%klass96377%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass96375%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96375%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass96372%_ _%val96373%_)
        (##structure-set! _%klass96372%_ _%val96373%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass96367%_ _%val96369%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96367%_
           _%val96369%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass96365%_)
        (##structure-ref _%klass96365%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass96363%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass96363%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass96360%_ _%val96361%_)
        (##structure-set!
         _%klass96360%_
         _%val96361%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass96355%_ _%val96357%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96355%_
           _%val96357%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass96353%_)
        (##structure-ref _%klass96353%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass96351%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass96351%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass96348%_ _%val96349%_)
        (##structure-set!
         _%klass96348%_
         _%val96349%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass96343%_ _%val96345%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96343%_
           _%val96345%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass96341%_)
        (##structure-ref _%klass96341%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass96339%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96339%_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass96336%_ _%val96337%_)
        (##structure-set!
         _%klass96336%_
         _%val96337%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass96331%_ _%val96333%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96331%_
           _%val96333%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass96329%_)
        (##structure-ref _%klass96329%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass96327%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96327%_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_%klass96324%_ _%val96325%_)
        (##structure-set!
         _%klass96324%_
         _%val96325%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass96319%_ _%val96321%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96319%_
           _%val96321%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass96317%_)
        (##structure-ref _%klass96317%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass96315%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass96315%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass96312%_ _%val96313%_)
        (##structure-set!
         _%klass96312%_
         _%val96313%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass96307%_ _%val96309%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96307%_
           _%val96309%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass96305%_)
        (##structure-ref _%klass96305%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass96303%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96303%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass96300%_ _%val96301%_)
        (##structure-set! _%klass96300%_ _%val96301%_ '11 class::t 'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass96295%_ _%val96297%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96295%_
           _%val96297%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass96281%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96281%_ 'class))
            (let ((_%klass96285%_ _%klass96281%_))
              (__class-type-slot-list _%klass96285%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass96281%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass96269%_)
        (let ((_%klass96272%_ _%klass96269%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass96272%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass96255%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96255%_ 'class))
            (let ((_%klass96259%_ _%klass96255%_))
              (__class-type-field-count _%klass96259%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass96255%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass96243%_)
        (let* ((_%klass96246%_ _%klass96243%_)
               (__tmp98278
                (let ((__tmp98279
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass96246%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp98279))))
          (declare (not safe))
          (##fx- __tmp98278 '1))))
    (define class-type-seal!
      (lambda (_%klass96229%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96229%_ 'class))
            (let ((_%klass96233%_ _%klass96229%_))
              (__class-type-seal! _%klass96233%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass96229%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass96217%_)
        (let ((_%klass96220%_ _%klass96217%_))
          (let ((__tmp98280
                 (let ((__tmp98281
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass96220%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp98281))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass96220%_
             __tmp98280
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct96192%_ _%maybe-super-struct96193%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct96192%_ 'class))
            (let ((_%maybe-sub-struct96197%_ _%maybe-sub-struct96192%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct96193%_
                     'class))
                  (let ((_%maybe-super-struct96207%_
                         _%maybe-super-struct96193%_))
                    (__substruct?
                     _%maybe-sub-struct96197%_
                     _%maybe-super-struct96207%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct96193%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct96192%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct96161%_ _%maybe-super-struct96162%_)
        (let* ((_%maybe-sub-struct96165%_ _%maybe-sub-struct96161%_)
               (_%maybe-super-struct96173%_ _%maybe-super-struct96162%_)
               (_%maybe-super-struct-id96182%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct96173%_))))
          (let _%lp96184%_ ((_%super-struct96186%_ _%maybe-sub-struct96165%_))
            (if (not _%super-struct96186%_)
                '#f
                (if (eq? _%maybe-super-struct-id96182%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct96186%_)))
                    '#t
                    (_%lp96184%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct96186%_)))))))))
    (define base-struct/1
      (lambda (_%klass96156%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96156%_ 'class))
            (if (class-type-struct? _%klass96156%_)
                _%klass96156%_
                (let () (declare (not safe)) (##type-super _%klass96156%_)))
            (if (not _%klass96156%_)
                '#f
                (error '"not a class or false" _%klass96156%_)))))
    (define base-struct/2
      (lambda (_%klass196141%_ _%klass296142%_)
        (let ((_%s196144%_ (base-struct/1 _%klass196141%_))
              (_%s296145%_ (base-struct/1 _%klass296142%_)))
          (if (or (not _%s196144%_)
                  (and _%s296145%_ (substruct? _%s196144%_ _%s296145%_)))
              _%s296145%_
              (if (or (not _%s296145%_)
                      (and _%s196144%_ (substruct? _%s296145%_ _%s196144%_)))
                  _%s196144%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass196141%_
                         _%klass296142%_
                         _%s196144%_
                         _%s296145%_))))))
    (define base-struct/list
      (lambda (_%all-supers96025%_)
        (let* ((_%all-supers9602696051%_ _%all-supers96025%_)
               (_%E9603196055%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers9602696051%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K9604996138%_ (lambda () '#f))
                (_%K9604696124%_
                 (lambda (_%x96122%_) (base-struct/1 _%x96122%_)))
                (_%K9604196101%_
                 (lambda (_%y96098%_ _%x96099%_)
                   (base-struct/2 _%x96099%_ _%y96098%_)))
                (_%K9603296062%_
                 (lambda (_%y96059%_ _%x96060%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x96060%_ _%y96059%_)))))
            (let* ((_%__match9824098241%_
                    (lambda (_%hd9603396065%_ _%tl9603496067%_)
                      (let ((_%x96070%_ _%hd9603396065%_))
                        (letrec ((_%splice-rest9603696072%_
                                  (lambda (_%rest9604096079%_ _%y96081%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%rest9604096079%_))
                                        (_%K9603296062%_ _%y96081%_ _%x96070%_)
                                        (_%E9603196055%_))))
                                 (_%splice-try9603896074%_
                                  (lambda (_%hd9603996083%_
                                           _%rest9604096085%_
                                           _%y9603596086%_)
                                    (let ((_%y96089%_ _%hd9603996083%_))
                                      (_%splice-loop9603796076%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest9604096085%_))
                                       (cons _%y96089%_ _%y9603596086%_)))))
                                 (_%splice-loop9603796076%_
                                  (lambda (_%rest9604096091%_ _%y9603596092%_)
                                    (if (pair? _%rest9604096091%_)
                                        (_%splice-try9603896074%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest9604096091%_))
                                         _%rest9604096091%_
                                         _%y9603596092%_)
                                        (_%splice-rest9603696072%_
                                         _%rest9604096091%_
                                         (reverse _%y9603596092%_))))))
                          (_%splice-loop9603796076%_ _%tl9603496067%_ '())))))
                   (_%try-match9602896134%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all-supers9602696051%_))
                          (let ((_%tl9604896129%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers9602696051%_)))
                                (_%hd9604796127%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers9602696051%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl9604896129%_))
                                (let ((_%x96132%_ _%hd9604796127%_))
                                  (base-struct/1 _%x96132%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl9604896129%_))
                                    (let ((_%tl9604596113%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl9604896129%_)))
                                          (_%hd9604496111%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl9604896129%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl9604596113%_))
                                          (let ((_%x96109%_ _%hd9604796127%_)
                                                (_%y96116%_ _%hd9604496111%_))
                                            (_%K9604196101%_
                                             _%y96116%_
                                             _%x96109%_))
                                          (_%__match9824098241%_
                                           _%hd9604796127%_
                                           _%tl9604896129%_)))
                                    (_%__match9824098241%_
                                     _%hd9604796127%_
                                     _%tl9604896129%_))))
                          (_%E9603196055%_)))))
              (if (let ()
                    (declare (not safe))
                    (##null? _%all-supers9602696051%_))
                  (_%K9604996138%_)
                  (_%try-match9602896134%_)))))))
    (define base-struct
      (lambda _%all-supers96023%_ (base-struct/list _%all-supers96023%_)))
    (define find-super-constructor
      (lambda (_%super95974%_)
        (let _%lp95976%_ ((_%rest95978%_ _%super95974%_)
                          (_%constructor95979%_ '#f))
          (let* ((_%rest9598095988%_ _%rest95978%_)
                 (_%else9598295996%_ (lambda () _%constructor95979%_))
                 (_%K9598496011%_
                  (lambda (_%rest95999%_ _%hd96000%_)
                    (let ((_%$e96002%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd96000%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e96002%_
                          ((lambda (_%xconstructor96005%_)
                             (if (or (not _%constructor95979%_)
                                     (eq? _%constructor95979%_
                                          _%xconstructor96005%_))
                                 (_%lp95976%_
                                  _%rest95999%_
                                  _%xconstructor96005%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor95979%_
                                        _%xconstructor96005%_)))
                           _%$e96002%_)
                          (_%lp95976%_ _%rest95999%_ _%constructor95979%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest9598095988%_))
                (let ((_%hd9598596014%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9598095988%_)))
                      (_%tl9598696016%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9598095988%_))))
                  (let* ((_%hd96019%_ _%hd9598596014%_)
                         (_%rest96021%_ _%tl9598696016%_))
                    (_%K9598496011%_ _%rest96021%_ _%hd96019%_)))
                (_%else9598295996%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list95950%_ _%direct-slots95951%_)
        (let* ((_%next-slot95953%_ '1)
               (_%slot-table95955%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots95957%_ '(__class))
               (_%process-slot95961%_
                (lambda (_%slot95959%_)
                  (if (symbol? _%slot95959%_)
                      '#!void
                      (error '"invalid slot name" _%slot95959%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table95955%_
                              _%slot95959%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table95955%_
                           _%slot95959%_
                           _%next-slot95953%_))
                        (let ((__tmp98282
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot95959%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table95955%_
                           __tmp98282
                           _%next-slot95953%_))
                        (set! _%r-slots95957%_
                              (cons _%slot95959%_ _%r-slots95957%_))
                        (set! _%next-slot95953%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot95953%_ '1))))
                      '#!void)))
               (_%process-slots95967%_
                (lambda (_%g9596295964%_)
                  (for-each _%process-slot95961%_ _%g9596295964%_))))
          (let ((__tmp98284
                 (lambda (_%mixin95970%_)
                   (_%process-slots95967%_
                    (let ((__tmp98285
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin95970%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp98285 '())))))
                (__tmp98283 (reverse _%class-precedence-list95950%_)))
            (declare (not safe))
            (##for-each __tmp98284 __tmp98283))
          (_%process-slots95967%_ _%direct-slots95951%_)
          (let ((_%slot-vector95972%_
                 (list->vector
                  (let () (declare (not safe)) (##reverse _%r-slots95957%_)))))
            (values _%slot-vector95972%_ _%slot-table95955%_)))))
    (define make-class-type
      (lambda (_%id95875%_
               _%name95876%_
               _%direct-supers95877%_
               _%direct-slots95878%_
               _%properties95879%_
               _%constructor95880%_)
        (if (symbol? _%id95875%_)
            (let ((_%id95884%_ _%id95875%_))
              (if (symbol? _%name95876%_)
                  (let ((_%name95894%_ _%name95876%_))
                    (if (list? _%direct-supers95877%_)
                        (let ((_%direct-supers95904%_ _%direct-supers95877%_))
                          (if (list? _%direct-slots95878%_)
                              (let ((_%direct-slots95914%_
                                     _%direct-slots95878%_))
                                (if (list? _%properties95879%_)
                                    (let ((_%properties95924%_
                                           _%properties95879%_))
                                      (if ((lambda (_%$obj95933%_)
                                             (or (not _%$obj95933%_)
                                                 (symbol? _%$obj95933%_)))
                                           _%constructor95880%_)
                                          (let ((_%constructor95940%_
                                                 _%constructor95880%_))
                                            (__make-class-type
                                             _%id95884%_
                                             _%name95894%_
                                             _%direct-supers95904%_
                                             _%direct-slots95914%_
                                             _%properties95924%_
                                             _%constructor95940%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor95880%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties95879%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots95878%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers95877%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name95876%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id95875%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id95744%_
               _%name95745%_
               _%direct-supers95746%_
               _%direct-slots95747%_
               _%properties95748%_
               _%constructor95749%_)
        (let* ((_%id95752%_ _%id95744%_)
               (_%name95760%_ _%name95745%_)
               (_%direct-supers95768%_ _%direct-supers95746%_)
               (_%direct-slots95776%_ _%direct-slots95747%_)
               (_%properties95784%_ _%properties95748%_)
               (_%constructor95792%_ _%constructor95749%_))
          (let ((_%$e95804%_
                 (let ((__tmp98286
                        (lambda (_%$obj95801%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj95801%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp98286 _%direct-supers95768%_))))
            (if _%$e95804%_
                ((lambda (_%g9580695808%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g9580695808%_))
                 _%$e95804%_)
                (let ((_%$e95811%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final? _%direct-supers95768%_))))
                  (if _%$e95811%_
                      ((lambda (_%g9581395815%_)
                         (error '"Cannot extend final class" _%g9581395815%_))
                       _%$e95811%_)
                      '#!void))))
          (let ((_g98287_ (compute-precedence-list _%direct-supers95768%_)))
            (begin
              (let ((_g98288_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g98287_)
                           (##vector-length _g98287_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g98288_ 2)))
                    (error "Context expects 2 values" _g98288_)))
              (let ((_%precedence-list95818%_
                     (let () (declare (not safe)) (##vector-ref _g98287_ 0)))
                    (_%struct-super95819%_
                     (let () (declare (not safe)) (##vector-ref _g98287_ 1))))
                (let ((_g98289_
                       (compute-class-slots
                        _%precedence-list95818%_
                        _%direct-slots95776%_)))
                  (begin
                    (let ((_g98290_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g98289_)
                                 (##vector-length _g98289_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g98290_ 2)))
                          (error "Context expects 2 values" _g98290_)))
                    (let ((_%slot-vector95821%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g98289_ 0)))
                          (_%slot-table95822%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g98289_ 1))))
                      (let* ((_%properties95824%_
                              (cons (cons 'direct-slots: _%direct-slots95776%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers95768%_)
                                          _%properties95784%_)))
                             (_%constructor*95829%_
                              (let ((_%$e95826%_ _%constructor95792%_))
                                (if _%$e95826%_
                                    _%$e95826%_
                                    (find-super-constructor
                                     _%direct-supers95768%_))))
                             (_%precedence-list95872%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties95824%_))
                                      (memq object::t
                                            _%precedence-list95818%_))
                                  _%precedence-list95818%_
                                  (let _%loop95834%_ ((_%tail95836%_
                                                       _%precedence-list95818%_)
                                                      (_%head95837%_ '()))
                                    (let* ((_%tail9583895846%_ _%tail95836%_)
                                           (_%else9584095854%_
                                            (lambda ()
                                              (let ((__tmp98291
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp98291
                                                 _%head95837%_))))
                                           (_%K9584295860%_
                                            (lambda (_%rest95857%_ _%hd95858%_)
                                              (if (eq? _%hd95858%_ t::t)
                                                  (let ((__tmp98292
                                                         (cons object::t
                                                               _%tail95836%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp98292
                                                     _%head95837%_))
                                                  (_%loop95834%_
                                                   _%rest95857%_
                                                   (cons _%hd95858%_
                                                         _%head95837%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tail9583895846%_))
                                          (let ((_%hd9584395863%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail9583895846%_)))
                                                (_%tl9584495865%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail9583895846%_))))
                                            (let* ((_%hd95868%_
                                                    _%hd9584395863%_)
                                                   (_%rest95870%_
                                                    _%tl9584495865%_))
                                              (_%K9584295860%_
                                               _%rest95870%_
                                               _%hd95868%_)))
                                          (_%else9584095854%_)))))))
                        (make-class-type-descriptor
                         _%id95752%_
                         _%name95760%_
                         _%struct-super95819%_
                         _%precedence-list95872%_
                         _%slot-vector95821%_
                         _%properties95824%_
                         _%constructor*95829%_
                         _%slot-table95822%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass95730%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95730%_ 'class))
            (let ((_%klass95734%_ _%klass95730%_))
              (__class-precedence-list _%klass95734%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass95730%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass95718%_)
        (let ((_%klass95721%_ _%klass95718%_))
          (cons _%klass95721%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass95721%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers95715%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers95715%_))))
    (define make-class-predicate
      (lambda (_%klass95701%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95701%_ 'class))
            (let ((_%klass95705%_ _%klass95701%_))
              (__make-class-predicate _%klass95705%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass95701%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass95672%_)
        (let* ((_%klass95675%_ _%klass95672%_)
               (_%tid95684%_
                (let () (declare (not safe)) (##type-id _%klass95675%_))))
          (if (__class-type-final? _%klass95675%_)
              (lambda (_%g9568695688%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g9568695688%_
                   _%tid95684%_)))
              (if (__class-type-struct? _%klass95675%_)
                  (lambda (_%g9569195693%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%g9569195693%_ _%tid95684%_)))
                  (lambda (_%g9569695698%_)
                    (__class-instance? _%klass95675%_ _%g9569695698%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass95647%_ _%slot95648%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95647%_ 'class))
            (let ((_%klass95652%_ _%klass95647%_))
              (if (symbol? _%slot95648%_)
                  (let ((_%slot95662%_ _%slot95648%_))
                    (__make-class-slot-accessor _%klass95652%_ _%slot95662%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot95648%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass95647%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass95615%_ _%slot95616%_)
        (let* ((_%klass95619%_ _%klass95615%_)
               (_%slot95627%_ _%slot95616%_)
               (_%field95636%_
                (let ((__tmp98293
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass95619%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp98293 _%slot95627%_ '#f))))
          (if (not _%field95636%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass95619%_
                       'slot:
                       _%slot95627%_)
                '#!void)
              (if (__class-type-final? _%klass95619%_)
                  (make-final-slot-accessor
                   _%klass95619%_
                   _%slot95627%_
                   _%field95636%_)
                  (if (__class-type-struct? _%klass95619%_)
                      (make-struct-slot-accessor
                       _%klass95619%_
                       _%slot95627%_
                       _%field95636%_)
                      (if (let ((_%strukt95642%_
                                 (base-struct/1 _%klass95619%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt95642%_
                                    'class))
                                 (let ((__tmp98294
                                        (let ((__tmp98295
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt95642%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp98295))))
                                   (declare (not safe))
                                   (##fx< _%field95636%_ __tmp98294))))
                          (make-struct-subclass-slot-accessor
                           _%klass95619%_
                           _%slot95627%_
                           _%field95636%_)
                          (make-class-cached-slot-accessor
                           _%klass95619%_
                           _%slot95627%_
                           _%field95636%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass95590%_ _%slot95591%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95590%_ 'class))
            (let ((_%klass95595%_ _%klass95590%_))
              (if (symbol? _%slot95591%_)
                  (let ((_%slot95605%_ _%slot95591%_))
                    (__make-class-slot-mutator _%klass95595%_ _%slot95605%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot95591%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass95590%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass95558%_ _%slot95559%_)
        (let* ((_%klass95562%_ _%klass95558%_)
               (_%slot95570%_ _%slot95559%_)
               (_%field95579%_
                (let ((__tmp98296
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass95562%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp98296 _%slot95570%_ '#f))))
          (if (not _%field95579%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass95562%_
                       'slot:
                       _%slot95570%_)
                '#!void)
              (if (__class-type-final? _%klass95562%_)
                  (make-final-slot-mutator
                   _%klass95562%_
                   _%slot95570%_
                   _%field95579%_)
                  (if (__class-type-struct? _%klass95562%_)
                      (make-struct-slot-mutator
                       _%klass95562%_
                       _%slot95570%_
                       _%field95579%_)
                      (if (let ((_%strukt95585%_
                                 (base-struct/1 _%klass95562%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt95585%_
                                    'class))
                                 (let ((__tmp98297
                                        (let ((__tmp98298
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt95585%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp98298))))
                                   (declare (not safe))
                                   (##fx< _%field95579%_ __tmp98297))))
                          (make-struct-subclass-slot-mutator
                           _%klass95562%_
                           _%slot95570%_
                           _%field95579%_)
                          (make-class-cached-slot-mutator
                           _%klass95562%_
                           _%slot95570%_
                           _%field95579%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass95533%_ _%slot95534%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95533%_ 'class))
            (let ((_%klass95538%_ _%klass95533%_))
              (if (symbol? _%slot95534%_)
                  (let ((_%slot95548%_ _%slot95534%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass95538%_
                     _%slot95548%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot95534%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass95533%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass95501%_ _%slot95502%_)
        (let* ((_%klass95505%_ _%klass95501%_)
               (_%slot95513%_ _%slot95502%_)
               (_%field95522%_
                (let ((__tmp98299
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass95505%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp98299 _%slot95513%_ '#f))))
          (if (not _%field95522%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass95505%_
                       'slot:
                       _%slot95513%_)
                '#!void)
              (if (__class-type-final? _%klass95505%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass95505%_
                   _%slot95513%_
                   _%field95522%_)
                  (if (__class-type-struct? _%klass95505%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass95505%_
                       _%slot95513%_
                       _%field95522%_)
                      (if (let ((_%strukt95528%_
                                 (base-struct/1 _%klass95505%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt95528%_
                                    'class))
                                 (let ((__tmp98300
                                        (let ((__tmp98301
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt95528%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp98301))))
                                   (declare (not safe))
                                   (##fx< _%field95522%_ __tmp98300))))
                          (make-struct-slot-unchecked-accessor
                           _%klass95505%_
                           _%slot95513%_
                           _%field95522%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass95505%_
                           _%slot95513%_
                           _%field95522%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass95476%_ _%slot95477%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95476%_ 'class))
            (let ((_%klass95481%_ _%klass95476%_))
              (if (symbol? _%slot95477%_)
                  (let ((_%slot95491%_ _%slot95477%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass95481%_
                     _%slot95491%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot95477%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass95476%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass95444%_ _%slot95445%_)
        (let* ((_%klass95448%_ _%klass95444%_)
               (_%slot95456%_ _%slot95445%_)
               (_%field95465%_
                (let ((__tmp98302
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass95448%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp98302 _%slot95456%_ '#f))))
          (if (not _%field95465%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass95448%_
                       'slot:
                       _%slot95456%_)
                '#!void)
              (if (__class-type-final? _%klass95448%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass95448%_
                   _%slot95456%_
                   _%field95465%_)
                  (if (__class-type-struct? _%klass95448%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass95448%_
                       _%slot95456%_
                       _%field95465%_)
                      (if (let ((_%strukt95471%_
                                 (base-struct/1 _%klass95448%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt95471%_
                                    'class))
                                 (let ((__tmp98303
                                        (let ((__tmp98304
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt95471%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp98304))))
                                   (declare (not safe))
                                   (##fx< _%field95465%_ __tmp98303))))
                          (make-struct-slot-unchecked-mutator
                           _%klass95448%_
                           _%slot95456%_
                           _%field95465%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass95448%_
                           _%slot95456%_
                           _%field95465%_))))))))
    (define not-an-instance__%
      (lambda (_%object95428%_ _%class95429%_ _%slot95430%_)
        (apply error
               '"not an instance"
               'object:
               _%object95428%_
               'class:
               _%class95429%_
               (if _%slot95430%_ (cons 'slot: (cons _%slot95430%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object95435%_ _%class95436%_)
        (let ((_%slot95438%_ '#f))
          (not-an-instance__% _%object95435%_ _%class95436%_ _%slot95438%_))))
    (define not-an-instance
      (lambda _g98306_
        (let ((_g98305_ (let () (declare (not safe)) (##length _g98306_))))
          (cond ((let () (declare (not safe)) (##fx= _g98305_ 2))
                 (apply not-an-instance__0 _g98306_))
                ((let () (declare (not safe)) (##fx= _g98305_ 3))
                 (apply not-an-instance__% _g98306_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g98306_))))))
    (define make-final-slot-accessor
      (lambda (_%klass95421%_ _%slot95422%_ _%field95423%_)
        (lambda (_%obj95425%_)
          (##direct-structure-ref
           _%obj95425%_
           _%field95423%_
           _%klass95421%_
           _%slot95422%_))))
    (define make-final-slot-mutator
      (lambda (_%klass95414%_ _%slot95415%_ _%field95416%_)
        (lambda (_%obj95418%_ _%val95419%_)
          (##direct-structure-set!
           _%obj95418%_
           _%val95419%_
           _%field95416%_
           _%klass95414%_
           _%slot95415%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass95408%_ _%slot95409%_ _%field95410%_)
        (lambda (_%obj95412%_)
          (##structure-ref
           _%obj95412%_
           _%field95410%_
           _%klass95408%_
           _%slot95409%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass95401%_ _%slot95402%_ _%field95403%_)
        (lambda (_%obj95405%_ _%val95406%_)
          (##structure-set!
           _%obj95405%_
           _%val95406%_
           _%field95403%_
           _%klass95401%_
           _%slot95402%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass95395%_ _%slot95396%_ _%field95397%_)
        (lambda (_%obj95399%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj95399%_
             _%field95397%_
             _%klass95395%_
             _%slot95396%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass95388%_ _%slot95389%_ _%field95390%_)
        (lambda (_%obj95392%_ _%val95393%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj95392%_
             _%val95393%_
             _%field95390%_
             _%klass95388%_
             _%slot95389%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass95382%_ _%slot95383%_ _%field95384%_)
        (lambda (_%obj95386%_)
          (if (class-instance? _%klass95382%_ _%obj95386%_)
              (unchecked-slot-ref _%obj95386%_ _%field95384%_)
              (not-an-instance__%
               _%obj95386%_
               _%klass95382%_
               _%slot95383%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass95375%_ _%slot95376%_ _%field95377%_)
        (lambda (_%obj95379%_ _%val95380%_)
          (if (class-instance? _%klass95375%_ _%obj95379%_)
              (unchecked-field-set! _%obj95379%_ _%field95377%_ _%val95380%_)
              (not-an-instance__%
               _%obj95379%_
               _%klass95375%_
               _%slot95376%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass95366%_ _%slot95367%_ _%field95368%_)
        (lambda (_%obj95370%_)
          (if (let ((__tmp98307
                     (let () (declare (not safe)) (##type-id _%klass95366%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj95370%_ __tmp98307))
              (unchecked-field-ref _%obj95370%_ _%field95368%_)
              (if (class-instance? _%klass95366%_ _%obj95370%_)
                  (unchecked-slot-ref _%obj95370%_ _%slot95367%_)
                  (not-an-instance__%
                   _%obj95370%_
                   _%klass95366%_
                   _%slot95367%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass95356%_ _%slot95357%_ _%field95358%_)
        (lambda (_%obj95360%_ _%val95361%_)
          (if (let ((__tmp98308
                     (let () (declare (not safe)) (##type-id _%klass95356%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj95360%_ __tmp98308))
              (unchecked-field-set! _%obj95360%_ _%field95358%_ _%val95361%_)
              (if (class-instance? _%klass95356%_ _%obj95360%_)
                  (unchecked-slot-set! _%obj95360%_ _%slot95357%_ _%val95361%_)
                  (not-an-instance__%
                   _%obj95360%_
                   _%klass95356%_
                   _%slot95357%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass95350%_ _%slot95351%_ _%field95352%_)
        (lambda (_%obj95354%_)
          (if (let ((__tmp98309
                     (let () (declare (not safe)) (##type-id _%klass95350%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj95354%_ __tmp98309))
              (unchecked-field-ref _%obj95354%_ _%field95352%_)
              (unchecked-slot-ref _%obj95354%_ _%slot95351%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass95343%_ _%slot95344%_ _%field95345%_)
        (lambda (_%obj95347%_ _%val95348%_)
          (if (let ((__tmp98310
                     (let () (declare (not safe)) (##type-id _%klass95343%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj95347%_ __tmp98310))
              (unchecked-field-set! _%obj95347%_ _%field95345%_ _%val95348%_)
              (unchecked-slot-set! _%obj95347%_ _%slot95344%_ _%val95348%_)))))
    (define class-slot-offset
      (lambda (_%klass95318%_ _%slot95319%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95318%_ 'class))
            (let ((_%klass95323%_ _%klass95318%_))
              (if (let () (declare (not safe)) (symbolic? _%slot95319%_))
                  (let ((_%slot95333%_ _%slot95319%_))
                    (__class-slot-offset _%klass95323%_ _%slot95333%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot95319%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass95318%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass95297%_ _%slot95298%_)
        (let* ((_%klass95301%_ _%klass95297%_)
               (_%slot95309%_ _%slot95298%_)
               (__tmp98311
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass95301%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp98311 _%slot95309%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass95271%_ _%obj95272%_ _%slot95273%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95271%_ 'class))
            (let ((_%klass95277%_ _%klass95271%_))
              (if (let () (declare (not safe)) (symbolic? _%slot95273%_))
                  (let ((_%slot95287%_ _%slot95273%_))
                    (__class-slot-ref
                     _%klass95277%_
                     _%obj95272%_
                     _%slot95287%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot95273%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass95271%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass95247%_ _%obj95248%_ _%slot95249%_)
        (let* ((_%klass95252%_ _%klass95247%_) (_%slot95260%_ _%slot95249%_))
          (if (__class-instance? _%klass95252%_ _%obj95248%_)
              (let ((_%off95269%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj95248%_))
                      _%slot95260%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj95248%_
                 _%off95269%_
                 _%klass95252%_
                 _%slot95260%_))
              (not-an-instance__0 _%obj95248%_ _%klass95252%_)))))
    (define class-slot-set!
      (lambda (_%klass95220%_ _%obj95221%_ _%slot95222%_ _%val95223%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95220%_ 'class))
            (let ((_%klass95227%_ _%klass95220%_))
              (if (let () (declare (not safe)) (symbolic? _%slot95222%_))
                  (let ((_%slot95237%_ _%slot95222%_))
                    (__class-slot-set!
                     _%klass95227%_
                     _%obj95221%_
                     _%slot95237%_
                     _%val95223%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot95222%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass95220%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass95195%_ _%obj95196%_ _%slot95197%_ _%val95198%_)
        (let* ((_%klass95201%_ _%klass95195%_) (_%slot95209%_ _%slot95197%_))
          (if (__class-instance? _%klass95201%_ _%obj95196%_)
              (let ((_%off95218%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj95196%_))
                      _%slot95209%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj95196%_
                 _%val95198%_
                 _%off95218%_
                 _%klass95201%_
                 _%slot95209%_))
              (not-an-instance__0 _%obj95196%_ _%klass95201%_)))))
    (define unchecked-field-ref
      (lambda (_%obj95192%_ _%off95193%_)
        (let ((__tmp98312
               (let () (declare (not safe)) (##structure-type _%obj95192%_))))
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj95192%_
           _%off95193%_
           __tmp98312
           '#f))))
    (define unchecked-field-set!
      (lambda (_%obj95188%_ _%off95189%_ _%val95190%_)
        (let ((__tmp98313
               (let () (declare (not safe)) (##structure-type _%obj95188%_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj95188%_
           _%val95190%_
           _%off95189%_
           __tmp98313
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj95185%_ _%slot95186%_)
        (unchecked-field-ref
         _%obj95185%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj95185%_))
          _%slot95186%_))))
    (define unchecked-slot-set!
      (lambda (_%obj95181%_ _%slot95182%_ _%val95183%_)
        (unchecked-field-set!
         _%obj95181%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj95181%_))
          _%slot95182%_)
         _%val95183%_)))
    (define slot-ref__%
      (lambda (_%obj95143%_ _%slot95144%_ _%E95145%_)
        (if (symbol? _%slot95144%_)
            (let ((_%slot95149%_ _%slot95144%_))
              (if (procedure? _%E95145%_)
                  (let ((_%E95159%_ _%E95145%_))
                    (__slot-ref__% _%obj95143%_ _%slot95149%_ _%E95159%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E95145%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot95144%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj95172%_ _%slot95173%_)
        (let ((_%E95175%_ __slot-error))
          (slot-ref__% _%obj95172%_ _%slot95173%_ _%E95175%_))))
    (define slot-ref
      (lambda _g98315_
        (let ((_g98314_ (let () (declare (not safe)) (##length _g98315_))))
          (cond ((let () (declare (not safe)) (##fx= _g98314_ 2))
                 (apply slot-ref__0 _g98315_))
                ((let () (declare (not safe)) (##fx= _g98314_ 3))
                 (apply slot-ref__% _g98315_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g98315_))))))
    (define __slot-ref__%
      (lambda (_%obj95099%_ _%slot95100%_ _%E95101%_)
        (let* ((_%slot95104%_ _%slot95100%_)
               (_%E95112%_ _%E95101%_)
               (_%klass95121%_ (class-of _%obj95099%_))
               (_%$e95124%_
                (__class-slot-offset _%klass95121%_ _%slot95104%_)))
          (if _%$e95124%_
              ((lambda (_%off95127%_)
                 (unchecked-field-ref _%obj95099%_ _%off95127%_))
               _%$e95124%_)
              (let ()
                (declare (not safe))
                (_%E95112%_ _%obj95099%_ _%slot95104%_))))))
    (define __slot-ref__0
      (lambda (_%obj95133%_ _%slot95134%_)
        (let ((_%E95136%_ __slot-error))
          (__slot-ref__% _%obj95133%_ _%slot95134%_ _%E95136%_))))
    (define __slot-ref
      (lambda _g98317_
        (let ((_g98316_ (let () (declare (not safe)) (##length _g98317_))))
          (cond ((let () (declare (not safe)) (##fx= _g98316_ 2))
                 (apply __slot-ref__0 _g98317_))
                ((let () (declare (not safe)) (##fx= _g98316_ 3))
                 (apply __slot-ref__% _g98317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g98317_))))))
    (define slot-set!__%
      (lambda (_%obj95057%_ _%slot95058%_ _%val95059%_ _%E95060%_)
        (if (symbol? _%slot95058%_)
            (let ((_%slot95064%_ _%slot95058%_))
              (if (procedure? _%E95060%_)
                  (let ((_%E95074%_ _%E95060%_))
                    (__slot-set!__%
                     _%obj95057%_
                     _%slot95064%_
                     _%val95059%_
                     _%E95074%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E95060%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot95058%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj95087%_ _%slot95088%_ _%val95089%_)
        (let ((_%E95091%_ __slot-error))
          (slot-set!__% _%obj95087%_ _%slot95088%_ _%val95089%_ _%E95091%_))))
    (define slot-set!
      (lambda _g98319_
        (let ((_g98318_ (let () (declare (not safe)) (##length _g98319_))))
          (cond ((let () (declare (not safe)) (##fx= _g98318_ 3))
                 (apply slot-set!__0 _g98319_))
                ((let () (declare (not safe)) (##fx= _g98318_ 4))
                 (apply slot-set!__% _g98319_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g98319_))))))
    (define __slot-set!__%
      (lambda (_%obj95010%_ _%slot95011%_ _%val95012%_ _%E95013%_)
        (let* ((_%slot95016%_ _%slot95011%_)
               (_%E95024%_ _%E95013%_)
               (_%klass95033%_ (class-of _%obj95010%_))
               (_%$e95036%_
                (__class-slot-offset _%klass95033%_ _%slot95016%_)))
          (if _%$e95036%_
              ((lambda (_%off95039%_)
                 (unchecked-field-set! _%obj95010%_ _%off95039%_ _%val95012%_))
               _%$e95036%_)
              (let ()
                (declare (not safe))
                (_%E95024%_ _%obj95010%_ _%slot95016%_))))))
    (define __slot-set!__0
      (lambda (_%obj95045%_ _%slot95046%_ _%val95047%_)
        (let ((_%E95049%_ __slot-error))
          (__slot-set!__%
           _%obj95045%_
           _%slot95046%_
           _%val95047%_
           _%E95049%_))))
    (define __slot-set!
      (lambda _g98321_
        (let ((_g98320_ (let () (declare (not safe)) (##length _g98321_))))
          (cond ((let () (declare (not safe)) (##fx= _g98320_ 3))
                 (apply __slot-set!__0 _g98321_))
                ((let () (declare (not safe)) (##fx= _g98320_ 4))
                 (apply __slot-set!__% _g98321_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g98321_))))))
    (define __slot-error
      (lambda (_%obj95006%_ _%slot95007%_)
        (error '"Cannot find slot"
               'object:
               _%obj95006%_
               'slot:
               _%slot95007%_)))
    (define subclass?
      (lambda (_%maybe-sub-class94981%_ _%maybe-super-class94982%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class94981%_ 'class))
            (let ((_%maybe-sub-class94986%_ _%maybe-sub-class94981%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class94982%_
                     'class))
                  (let ((_%maybe-super-class94996%_
                         _%maybe-super-class94982%_))
                    (__subclass?
                     _%maybe-sub-class94986%_
                     _%maybe-super-class94996%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class94982%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class94981%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class94953%_ _%maybe-super-class94954%_)
        (let* ((_%maybe-sub-class94957%_ _%maybe-sub-class94953%_)
               (_%maybe-super-class94965%_ _%maybe-super-class94954%_)
               (_%maybe-super-class-id94974%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class94965%_)))
               (_%$e94976%_
                (eq? _%maybe-super-class-id94974%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class94957%_)))))
          (if _%$e94976%_
              _%$e94976%_
              (let ((__tmp98323
                     (lambda (_%super-class94979%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class94979%_))
                            _%maybe-super-class-id94974%_)))
                    (__tmp98322
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class94957%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp98323 __tmp98322))))))
    (define object?
      (lambda (_%o94950%_)
        (if (let () (declare (not safe)) (##structure? _%o94950%_))
            (let ((__tmp98324
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o94950%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp98324 'class))
            '#f)))
    (define object-type
      (lambda (_%o94945%_)
        (if (let () (declare (not safe)) (##structure? _%o94945%_))
            (let ((_%klass94948%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o94945%_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass94948%_ 'class))
                  _%klass94948%_
                  (begin
                    (error '"not an object" _%o94945%_ _%klass94948%_)
                    '#!void)))
            (begin (error '"not an object" _%o94945%_) '#!void))))
    (define direct-instance?
      (lambda (_%klass94930%_ _%obj94931%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94930%_ 'class))
            (let ((_%klass94935%_ _%klass94930%_))
              (__direct-instance? _%klass94935%_ _%obj94931%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass94930%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass94917%_ _%obj94918%_)
        (let* ((_%klass94921%_ _%klass94917%_)
               (__tmp98325
                (let () (declare (not safe)) (##type-id _%klass94921%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj94918%_ __tmp98325))))
    (define immediate-instance-of?
      (lambda (_%klass94913%_ _%obj94914%_)
        (if (let () (declare (not safe)) (##structure? _%obj94914%_))
            (eq? _%klass94913%_
                 (let () (declare (not safe)) (##structure-type _%obj94914%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass94898%_ _%obj94899%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94898%_ 'class))
            (let ((_%klass94903%_ _%klass94898%_))
              (__struct-instance? _%klass94903%_ _%obj94899%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass94898%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass94885%_ _%obj94886%_)
        (let* ((_%klass94889%_ _%klass94885%_)
               (__tmp98326
                (let () (declare (not safe)) (##type-id _%klass94889%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj94886%_ __tmp98326))))
    (define class-instance?
      (lambda (_%klass94870%_ _%obj94871%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94870%_ 'class))
            (let ((_%klass94875%_ _%klass94870%_))
              (__class-instance? _%klass94875%_ _%obj94871%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass94870%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass94855%_ _%obj94856%_)
        (let* ((_%klass94859%_ _%klass94855%_)
               (_%type94868%_ (class-of _%obj94856%_)))
          (__subclass? _%type94868%_ _%klass94859%_))))
    (define make-object
      (lambda (_%klass94830%_ _%k94831%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94830%_ 'class))
            (let ((_%klass94835%_ _%klass94830%_))
              (if (fixnum? _%k94831%_)
                  (let ((_%k94845%_ _%k94831%_))
                    (__make-object _%klass94835%_ _%k94845%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k94831%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass94830%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass94807%_ _%k94808%_)
        (let* ((_%klass94811%_ _%klass94807%_) (_%k94819%_ _%k94808%_))
          (if (__class-type-system? _%klass94811%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass94811%_)
                '#!void)
              (let ((_%obj94828%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass94811%_ _%k94819%_))))
                (object-fill! _%obj94828%_ '#f))))))
    (define object-fill!
      (lambda (_%obj94792%_ _%fill94793%_)
        (if '#t
            (let ((_%obj94797%_ _%obj94792%_))
              (__object-fill! _%obj94797%_ _%fill94793%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj94792%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj94774%_ _%fill94775%_)
        (let ((_%obj94778%_ _%obj94774%_))
          (let _%loop94787%_ ((_%i94789%_
                               (let ((__tmp98327
                                      (let ()
                                        (declare (not safe))
                                        (##structure-length _%obj94778%_))))
                                 (declare (not safe))
                                 (##fx- __tmp98327 '1))))
            (if (let () (declare (not safe)) (##fx> _%i94789%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj94778%_
                     _%fill94775%_
                     _%i94789%_
                     '#f
                     '#f))
                  (_%loop94787%_
                   (let () (declare (not safe)) (##fx- _%i94789%_ '1))))
                _%obj94778%_)))))
    (define new-instance
      (lambda (_%klass94760%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94760%_ 'class))
            (let ((_%klass94764%_ _%klass94760%_))
              (__new-instance _%klass94764%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass94760%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass94748%_)
        (let* ((_%klass94751%_ _%klass94748%_)
               (__obj98242
                (let ((__tmp98328
                       (let ((__tmp98329
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass94751%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp98329))))
                  (declare (not safe))
                  (##make-structure _%klass94751%_ __tmp98328))))
          (object-fill! __obj98242 '#f)
          __obj98242)))
    (define make-instance
      (lambda (_%klass94733%_ . _%args94734%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94733%_ 'class))
            (let ((_%klass94738%_ _%klass94733%_))
              (declare (not safe))
              (##apply __make-instance _%klass94738%_ _%args94734%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass94733%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass94705%_ . _%args94706%_)
        (let* ((_%klass94709%_ _%klass94705%_)
               (_%$e94718%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass94709%_ '10 '#f '#f))))
          (if _%$e94718%_
              ((lambda (_%kons-id94721%_)
                 (let ((_%obj94723%_ (__new-instance _%klass94709%_)))
                   (___constructor-init!
                    _%klass94709%_
                    _%kons-id94721%_
                    _%obj94723%_
                    _%args94706%_)
                   _%obj94723%_))
               _%$e94718%_)
              (if (__class-type-metaclass? _%klass94709%_)
                  (let ((_%obj94726%_ (__new-instance _%klass94709%_)))
                    (__metaclass-instance-init!
                     _%klass94709%_
                     _%obj94726%_
                     _%args94706%_)
                    _%obj94726%_)
                  (if (not (__class-type-struct? _%klass94709%_))
                      (let ((_%obj94729%_ (__new-instance _%klass94709%_)))
                        (___class-instance-init!
                         _%klass94709%_
                         _%obj94729%_
                         _%args94706%_)
                        _%obj94729%_)
                      (if (let ((__tmp98331
                                 (__class-type-field-count _%klass94709%_))
                                (__tmp98330
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args94706%_))))
                            (declare (not safe))
                            (##fx= __tmp98331 __tmp98330))
                          (apply ##structure _%klass94709%_ _%args94706%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass94709%_
                                   'slots:
                                   (__class-type-slot-list _%klass94709%_)
                                   'args:
                                   _%args94706%_)
                            '#!void))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj94690%_ . _%args94691%_)
        (if '#t
            (let ((_%obj94695%_ _%obj94690%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj94695%_ _%args94691%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj94690%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj94677%_ . _%args94678%_)
        (let ((_%obj94681%_ _%obj94677%_))
          (if (let ((__tmp98333
                     (let () (declare (not safe)) (##length _%args94678%_)))
                    (__tmp98332
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj94681%_))))
                (declare (not safe))
                (##fx< __tmp98333 __tmp98332))
              (___struct-instance-init! _%obj94681%_ _%args94678%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj94681%_
                     'args:
                     _%args94678%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj94636%_ _%args94637%_)
        (let _%lp94639%_ ((_%k94641%_ '1) (_%rest94642%_ _%args94637%_))
          (let* ((_%rest9464394651%_ _%rest94642%_)
                 (_%else9464594659%_ (lambda () _%obj94636%_))
                 (_%K9464794665%_
                  (lambda (_%rest94662%_ _%hd94663%_)
                    (unchecked-field-set! _%obj94636%_ _%k94641%_ _%hd94663%_)
                    (_%lp94639%_
                     (let () (declare (not safe)) (##fx+ _%k94641%_ '1))
                     _%rest94662%_))))
            (if (let () (declare (not safe)) (##pair? _%rest9464394651%_))
                (let ((_%hd9464894668%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9464394651%_)))
                      (_%tl9464994670%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9464394651%_))))
                  (let* ((_%hd94673%_ _%hd9464894668%_)
                         (_%rest94675%_ _%tl9464994670%_))
                    (_%K9464794665%_ _%rest94675%_ _%hd94673%_)))
                (_%else9464594659%_))))))
    (define class-instance-init!
      (lambda (_%obj94621%_ . _%args94622%_)
        (if '#t
            (let ((_%obj94626%_ _%obj94621%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj94626%_ _%args94622%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj94621%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj94608%_ . _%args94609%_)
        (let ((_%obj94612%_ _%obj94608%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj94612%_))
           _%obj94612%_
           _%args94609%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass94550%_ _%obj94551%_ _%args94552%_)
        (let _%lp94554%_ ((_%rest94556%_ _%args94552%_))
          (let* ((_%rest9455794567%_ _%rest94556%_)
                 (_%else9455994575%_
                  (lambda ()
                    (if (null? _%rest94556%_)
                        _%obj94551%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass94550%_
                               'rest:
                               _%rest94556%_))))
                 (_%K9456194589%_
                  (lambda (_%rest94578%_ _%val94579%_ _%key94580%_)
                    (if (not (keyword? _%key94580%_))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key94580%_)
                        (let ((_%$e94583%_
                               (__class-slot-offset
                                _%klass94550%_
                                _%key94580%_)))
                          (if _%$e94583%_
                              ((lambda (_%off94586%_)
                                 (unchecked-field-set!
                                  _%obj94551%_
                                  _%off94586%_
                                  _%val94579%_)
                                 (_%lp94554%_ _%rest94578%_))
                               _%$e94583%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass94550%_
                                     'slot:
                                     _%key94580%_)))))))
            (if (let () (declare (not safe)) (##pair? _%rest9455794567%_))
                (let ((_%hd9456294592%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9455794567%_)))
                      (_%tl9456394594%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9455794567%_))))
                  (let ((_%key94597%_ _%hd9456294592%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9456394594%_))
                        (let ((_%hd9456494599%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9456394594%_)))
                              (_%tl9456594601%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9456394594%_))))
                          (let* ((_%val94604%_ _%hd9456494599%_)
                                 (_%rest94606%_ _%tl9456594601%_))
                            (_%K9456194589%_
                             _%rest94606%_
                             _%val94604%_
                             _%key94597%_)))
                        (_%else9455994575%_))))
                (_%else9455994575%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass94546%_ _%obj94547%_ _%args94548%_)
        (apply call-method
               _%klass94546%_
               'instance-init!
               _%obj94547%_
               _%args94548%_)))
    (define constructor-init!
      (lambda (_%klass94509%_ _%kons-id94510%_ _%obj94511%_ . _%args94512%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94509%_ 'class))
            (let ((_%klass94516%_ _%klass94509%_))
              (if (symbol? _%kons-id94510%_)
                  (let ((_%kons-id94526%_ _%kons-id94510%_))
                    (if '#t
                        (let ((_%obj94536%_ _%obj94511%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass94516%_
                                   _%kons-id94526%_
                                   _%obj94536%_
                                   _%args94512%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                           'contract:
                           'true
                           'value:
                           _%obj94511%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id94510%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass94509%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass94478%_ _%kons-id94479%_ _%obj94480%_ . _%args94481%_)
        (let* ((_%klass94484%_ _%klass94478%_)
               (_%kons-id94492%_ _%kons-id94479%_)
               (_%obj94500%_ _%obj94480%_))
          (___constructor-init!
           _%klass94484%_
           _%kons-id94492%_
           _%obj94500%_
           _%args94481%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass94467%_ _%kons-id94468%_ _%obj94469%_ _%args94470%_)
        (let ((_%$e94472%_
               (__find-method _%klass94467%_ _%obj94469%_ _%kons-id94468%_)))
          (if _%$e94472%_
              ((lambda (_%kons94475%_)
                 (apply _%kons94475%_ _%obj94469%_ _%args94470%_)
                 _%obj94469%_)
               _%$e94472%_)
              (error '"missing constructor"
                     'class:
                     _%klass94467%_
                     'method:
                     _%kons-id94468%_)))))
    (define struct-copy
      (lambda (_%struct94453%_)
        (if '#t
            (let ((_%struct94457%_ _%struct94453%_))
              (__struct-copy _%struct94457%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct94453%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct94441%_)
        (let ((_%struct94444%_ _%struct94441%_))
          (declare (not safe))
          (##structure-copy _%struct94444%_))))
    (define struct->list
      (lambda (_%obj94427%_)
        (if '#t
            (let ((_%obj94431%_ _%obj94427%_)) (__struct->list _%obj94431%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj94427%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj94415%_)
        (let ((_%obj94418%_ _%obj94415%_))
          (declare (not safe))
          (##vector->list _%obj94418%_))))
    (define class->list
      (lambda (_%obj94401%_)
        (if '#t
            (let ((_%obj94405%_ _%obj94401%_)) (__class->list _%obj94405%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@837.20-837.23"
               'contract:
               'true
               'value:
               _%obj94401%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj94377%_)
        (let* ((_%obj94380%_ _%obj94377%_)
               (_%klass94389%_
                (let () (declare (not safe)) (##structure-type _%obj94380%_)))
               (_%slot-vector94391%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass94389%_ '7 '#f '#f))))
          (let _%loop94393%_ ((_%index94395%_
                               (let ((__tmp98334
                                      (let ()
                                        (declare (not safe))
                                        (##vector-length
                                         _%slot-vector94391%_))))
                                 (declare (not safe))
                                 (##fx- __tmp98334 '1)))
                              (_%plist94396%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index94395%_ '1))
                (cons _%klass94389%_ _%plist94396%_)
                (let ((_%slot94399%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%slot-vector94391%_ _%index94395%_))))
                  (_%loop94393%_
                   (let () (declare (not safe)) (##fx- _%index94395%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot94399%_))
                         (cons (unchecked-field-ref
                                _%obj94380%_
                                _%index94395%_)
                               _%plist94396%_)))))))))
    (define call-method
      (lambda (_%obj94361%_ _%id94362%_ . _%args94363%_)
        (if (symbol? _%id94362%_)
            (let ((_%id94367%_ _%id94362%_))
              (declare (not safe))
              (##apply __call-method _%obj94361%_ _%id94367%_ _%args94363%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.24-852.26"
               'contract:
               'symbol?
               'value:
               _%id94362%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj94330%_ _%id94331%_ . _%args94332%_)
        (let* ((_%id94335%_ _%id94331%_)
               (_%$e94344%_ (__method-ref _%obj94330%_ _%id94335%_)))
          (if _%$e94344%_
              ((lambda (_%method94347%_)
                 (let ((_%method94349%_ _%method94347%_))
                   (apply _%method94349%_ _%obj94330%_ _%args94332%_)))
               _%$e94344%_)
              (error '"cannot find method"
                     'object:
                     _%obj94330%_
                     'method:
                     _%id94335%_)))))
    (define method-ref
      (lambda (_%obj94315%_ _%id94316%_)
        (if (symbol? _%id94316%_)
            (let ((_%id94320%_ _%id94316%_))
              (__method-ref _%obj94315%_ _%id94320%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@879.23-879.25"
               'contract:
               'symbol?
               'value:
               _%id94316%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj94302%_ _%id94303%_)
        (let ((_%id94306%_ _%id94303%_))
          (__find-method (class-of _%obj94302%_) _%obj94302%_ _%id94306%_))))
    (define checked-method-ref
      (lambda (_%obj94295%_ _%id94296%_)
        (let ((_%$e94299%_ (method-ref _%obj94295%_ _%id94296%_)))
          (if _%$e94299%_
              _%$e94299%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj94295%_
                       'method:
                       _%id94296%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj94280%_ _%id94281%_)
        (if (symbol? _%id94281%_)
            (let ((_%id94285%_ _%id94281%_))
              (__bound-method-ref _%obj94280%_ _%id94285%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@887.29-887.31"
               'contract:
               'symbol?
               'value:
               _%id94281%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj94248%_ _%id94249%_)
        (let* ((_%id94252%_ _%id94249%_)
               (_%$e94261%_ (__method-ref _%obj94248%_ _%id94252%_)))
          (if _%$e94261%_
              ((lambda (_%method94264%_)
                 (let ((_%method94266%_ _%method94264%_))
                   (lambda _%args94277%_
                     (apply _%method94266%_ _%obj94248%_ _%args94277%_))))
               _%$e94261%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj94233%_ _%id94234%_)
        (if (symbol? _%id94234%_)
            (let ((_%id94238%_ _%id94234%_))
              (__checked-bound-method-ref _%obj94233%_ _%id94238%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@896.37-896.39"
               'contract:
               'symbol?
               'value:
               _%id94234%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj94216%_ _%id94217%_)
        (let* ((_%id94220%_ _%id94217%_)
               (_%method94229%_ (checked-method-ref _%obj94216%_ _%id94220%_)))
          (lambda _%args94231%_
            (apply _%method94229%_ _%obj94216%_ _%args94231%_)))))
    (define find-method
      (lambda (_%klass94190%_ _%obj94191%_ _%id94192%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94190%_ 'class))
            (let ((_%klass94196%_ _%klass94190%_))
              (if (symbol? _%id94192%_)
                  (let ((_%id94206%_ _%id94192%_))
                    (__find-method _%klass94196%_ _%obj94191%_ _%id94206%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@901.41-901.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id94192%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@901.20-901.25"
               'contract:
               'class-type?
               'value:
               _%klass94190%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass94163%_ _%obj94164%_ _%id94165%_)
        (let* ((_%klass94168%_ _%klass94163%_)
               (_%id94176%_ _%id94165%_)
               (_%$e94185%_
                (__direct-method-ref _%klass94168%_ _%obj94164%_ _%id94176%_)))
          (if _%$e94185%_
              _%$e94185%_
              (if (__class-type-sealed? _%klass94168%_)
                  '#f
                  (__mixin-method-ref
                   _%klass94168%_
                   _%obj94164%_
                   _%id94176%_))))))
    (define mixin-find-method
      (lambda (_%mixins94147%_ _%obj94148%_ _%id94149%_)
        (if (symbol? _%id94149%_)
            (let ((_%id94153%_ _%id94149%_))
              (__mixin-find-method _%mixins94147%_ _%obj94148%_ _%id94153%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@909.37-909.39"
               'contract:
               'symbol?
               'value:
               _%id94149%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins94129%_ _%obj94130%_ _%id94131%_)
        (let* ((_%id94134%_ _%id94131%_)
               (__tmp98335
                (lambda (_%g9414294144%_)
                  (direct-method-ref
                   _%g9414294144%_
                   _%obj94130%_
                   _%id94134%_))))
          (declare (not safe))
          (__ormap1 __tmp98335 _%mixins94129%_))))
    (define direct-method-ref
      (lambda (_%klass94103%_ _%obj94104%_ _%id94105%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94103%_ 'class))
            (let ((_%klass94109%_ _%klass94103%_))
              (if (symbol? _%id94105%_)
                  (let ((_%id94119%_ _%id94105%_))
                    (__direct-method-ref
                     _%klass94109%_
                     _%obj94104%_
                     _%id94119%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@912.47-912.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id94105%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@912.26-912.31"
               'contract:
               'class-type?
               'value:
               _%klass94103%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass94057%_ _%obj94058%_ _%id94059%_)
        (let* ((_%klass94062%_ _%klass94057%_) (_%id94070%_ _%id94059%_))
          (letrec ((_%metaclass-resolve-method94079%_
                    (lambda ()
                      (let ((__method98243
                             (__method-ref _%klass94062%_ 'direct-method-ref)))
                        (if __method98243
                            (__method98243
                             _%klass94062%_
                             _%obj94058%_
                             _%id94070%_)
                            (begin
                              (error '"Missing method"
                                     _%klass94062%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!94080%_
                    (lambda ()
                      (let ((_%method94100%_
                             (_%metaclass-resolve-method94079%_)))
                        (let ((__tmp98337
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass94062%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp98336
                               (if _%method94100%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp98337
                           _%id94070%_
                           __tmp98336))
                        _%method94100%_))))
            (let ((_%$e94082%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass94062%_ '11 '#f '#f))))
              (if _%$e94082%_
                  ((lambda (_%ht94085%_)
                     (let ((_%method94087%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht94085%_
                               _%id94070%_
                               '#f))))
                       (if (procedure? _%method94087%_)
                           _%method94087%_
                           (if (__class-type-metaclass? _%klass94062%_)
                               (let ((_%$e94091%_ _%method94087%_))
                                 (if (eq? 'resolved _%$e94091%_)
                                     (_%metaclass-resolve-method94079%_)
                                     (if (eq? 'unknown _%$e94091%_)
                                         '#f
                                         (_%metaclass-resolve-method!94080%_))))
                               '#f))))
                   _%$e94082%_)
                  (if (__class-type-metaclass? _%klass94062%_)
                      (let ((_%tab94096%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass94062%_
                           _%tab94096%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!94080%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass94031%_ _%obj94032%_ _%id94033%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94031%_ 'class))
            (let ((_%klass94037%_ _%klass94031%_))
              (if (symbol? _%id94033%_)
                  (let ((_%id94047%_ _%id94033%_))
                    (__mixin-method-ref
                     _%klass94037%_
                     _%obj94032%_
                     _%id94047%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@942.46-942.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id94033%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@942.25-942.30"
               'contract:
               'class-type?
               'value:
               _%klass94031%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass94009%_ _%obj94010%_ _%id94011%_)
        (let* ((_%klass94014%_ _%klass94009%_) (_%id94022%_ _%id94011%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass94014%_ '6 '#f '#f))
           _%obj94010%_
           _%id94022%_))))
    (define bind-method!__%
      (lambda (_%klass93968%_ _%id93969%_ _%proc93970%_ _%rebind?93971%_)
        (if (symbol? _%id93969%_)
            (let ((_%id93975%_ _%id93969%_))
              (if (procedure? _%proc93970%_)
                  (let ((_%proc93985%_ _%proc93970%_))
                    (__bind-method!__%
                     _%klass93968%_
                     _%id93975%_
                     _%proc93985%_
                     _%rebind?93971%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@945.42-945.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc93970%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@945.27-945.29"
               'contract:
               'symbol?
               'value:
               _%id93969%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass93998%_ _%id93999%_ _%proc94000%_)
        (let ((_%rebind?94002%_ '#f))
          (bind-method!__%
           _%klass93998%_
           _%id93999%_
           _%proc94000%_
           _%rebind?94002%_))))
    (define bind-method!
      (lambda _g98339_
        (let ((_g98338_ (let () (declare (not safe)) (##length _g98339_))))
          (cond ((let () (declare (not safe)) (##fx= _g98338_ 3))
                 (apply bind-method!__0 _g98339_))
                ((let () (declare (not safe)) (##fx= _g98338_ 4))
                 (apply bind-method!__% _g98339_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g98339_))))))
    (define __bind-method!__%
      (lambda (_%klass93919%_ _%id93920%_ _%proc93921%_ _%rebind?93922%_)
        (let* ((_%id93925%_ _%id93920%_) (_%proc93933%_ _%proc93921%_))
          (letrec ((_%bind!93942%_
                    (lambda (_%ht93951%_)
                      (if (and (not _%rebind?93922%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht93951%_
                                  _%id93925%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass93919%_
                                 'method:
                                 _%id93925%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht93951%_
                               _%id93925%_
                               _%proc93933%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass93919%_ 'class))
                (let ((_%ht93945%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass93919%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht93945%_
                      (_%bind!93942%_ _%ht93945%_)
                      (let ((_%ht93947%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass93919%_
                           _%ht93947%_
                           '11
                           '#f
                           '#f))
                        (_%bind!93942%_ _%ht93947%_))))
                (if (let () (declare (not safe)) (##type? _%klass93919%_))
                    (let ((__tmp98340 (__shadow-class _%klass93919%_)))
                      (declare (not safe))
                      (__bind-method!
                       __tmp98340
                       _%id93925%_
                       _%proc93933%_
                       _%rebind?93922%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass93919%_)))))))
    (define __bind-method!__0
      (lambda (_%klass93956%_ _%id93957%_ _%proc93958%_)
        (let ((_%rebind?93960%_ '#f))
          (__bind-method!__%
           _%klass93956%_
           _%id93957%_
           _%proc93958%_
           _%rebind?93960%_))))
    (define __bind-method!
      (lambda _g98342_
        (let ((_g98341_ (let () (declare (not safe)) (##length _g98342_))))
          (cond ((let () (declare (not safe)) (##fx= _g98341_ 3))
                 (apply __bind-method!__0 _g98342_))
                ((let () (declare (not safe)) (##fx= _g98341_ 4))
                 (apply __bind-method!__% _g98342_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g98342_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint93899%_ _%seed93901%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint93899%_
           procedure-hash
           eq?
           _%seed93901%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint93907%_ '#f) (_%seed93909%_ '0))
          (make-method-specializer-table__%
           _%size-hint93907%_
           _%seed93909%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint93911%_)
        (let ((_%seed93913%_ '0))
          (make-method-specializer-table__%
           _%size-hint93911%_
           _%seed93913%_))))
    (define make-method-specializer-table
      (lambda _g98344_
        (let ((_g98343_ (let () (declare (not safe)) (##length _g98344_))))
          (cond ((let () (declare (not safe)) (##fx= _g98343_ 0))
                 (apply make-method-specializer-table__0 _g98344_))
                ((let () (declare (not safe)) (##fx= _g98343_ 1))
                 (apply make-method-specializer-table__1 _g98344_))
                ((let () (declare (not safe)) (##fx= _g98343_ 2))
                 (apply make-method-specializer-table__% _g98344_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g98344_))))))
    (define method-specializer-table-ref
      (lambda (_%tab93852%_ _%key93853%_ _%default93854%_)
        (let ((_%table93856%_
               (let () (declare (not safe)) (&raw-table-table _%tab93852%_)))
              (_%seed93857%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93852%_))))
          (let* ((_%h93859%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93853%_))
                         _%seed93857%_))
                 (_%size93862%_ (vector-length _%table93856%_))
                 (_%entries93865%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93862%_ '2)))
                 (_%start93868%_
                  (let ((__tmp98345
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93859%_ _%entries93865%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98345 '1))))
            (let _%loop93872%_ ((_%probe93875%_ _%start93868%_)
                                (_%i93877%_ '1)
                                (_%deleted93879%_ '#f))
              (let ((_%k93882%_ (vector-ref _%table93856%_ _%probe93875%_)))
                (if (eq? _%k93882%_ (macro-unused-obj))
                    _%default93854%_
                    (if (eq? _%k93882%_ (macro-deleted-obj))
                        (_%loop93872%_
                         (let ((_%next-probe93887%_
                                (fx+ _%start93868%_
                                     _%i93877%_
                                     (fx* _%i93877%_ _%i93877%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe93887%_ _%size93862%_))
                         (let () (declare (not safe)) (##fx+ _%i93877%_ '1))
                         (let ((_%$e93890%_ _%deleted93879%_))
                           (if _%$e93890%_ _%$e93890%_ _%probe93875%_)))
                        (if (eq? _%key93853%_ _%k93882%_)
                            (vector-ref
                             _%table93856%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93875%_ '1)))
                            (_%loop93872%_
                             (let ((_%next-probe93895%_
                                    (fx+ _%start93868%_
                                         _%i93877%_
                                         (fx* _%i93877%_ _%i93877%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe93895%_ _%size93862%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i93877%_ '1))
                             _%deleted93879%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab93848%_ _%key93849%_ _%value93850%_)
        (if (let ((__tmp98348
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93848%_)))
                  (__tmp98346
                   (let ((__tmp98347
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93848%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp98347 '4))))
              (declare (not safe))
              (##fx< __tmp98348 __tmp98346))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93848%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab93848%_
         _%key93849%_
         _%value93850%_)))
    (define __method-specializer-table-set!
      (lambda (_%tab93799%_ _%key93800%_ _%value93801%_)
        (let ((_%table93804%_
               (let () (declare (not safe)) (&raw-table-table _%tab93799%_)))
              (_%seed93805%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93799%_))))
          (let* ((_%h93807%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93800%_))
                         _%seed93805%_))
                 (_%size93810%_ (vector-length _%table93804%_))
                 (_%entries93813%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93810%_ '2)))
                 (_%start93816%_
                  (let ((__tmp98349
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93807%_ _%entries93813%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98349 '1))))
            (let _%loop93820%_ ((_%probe93823%_ _%start93816%_)
                                (_%i93825%_ '1)
                                (_%deleted93827%_ '#f))
              (let ((_%k93830%_ (vector-ref _%table93804%_ _%probe93823%_)))
                (if (eq? _%k93830%_ (macro-unused-obj))
                    (if _%deleted93827%_
                        (begin
                          (vector-set!
                           _%table93804%_
                           _%deleted93827%_
                           _%key93800%_)
                          (vector-set!
                           _%table93804%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted93827%_ '1))
                           _%value93801%_)
                          ((lambda ()
                             (let ((__tmp98350
                                    (let ((__tmp98351
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab93799%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp98351 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab93799%_
                                __tmp98350)))))
                        (begin
                          (vector-set!
                           _%table93804%_
                           _%probe93823%_
                           _%key93800%_)
                          (vector-set!
                           _%table93804%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe93823%_ '1))
                           _%value93801%_)
                          ((lambda ()
                             (let ((__tmp98352
                                    (let ((__tmp98353
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab93799%_))))
                                      (declare (not safe))
                                      (##fx- __tmp98353 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab93799%_ __tmp98352))
                             (let ((__tmp98354
                                    (let ((__tmp98355
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab93799%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp98355 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab93799%_
                                __tmp98354))))))
                    (if (eq? _%k93830%_ (macro-deleted-obj))
                        (_%loop93820%_
                         (let ((_%next-probe93837%_
                                (fx+ _%start93816%_
                                     _%i93825%_
                                     (fx* _%i93825%_ _%i93825%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe93837%_ _%size93810%_))
                         (let () (declare (not safe)) (##fx+ _%i93825%_ '1))
                         (let ((_%$e93840%_ _%deleted93827%_))
                           (if _%$e93840%_ _%$e93840%_ _%probe93823%_)))
                        (if (eq? _%key93800%_ _%k93830%_)
                            (let ()
                              (vector-set!
                               _%table93804%_
                               _%probe93823%_
                               _%key93800%_)
                              (vector-set!
                               _%table93804%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93823%_ '1))
                               _%value93801%_))
                            (_%loop93820%_
                             (let ((_%next-probe93845%_
                                    (fx+ _%start93816%_
                                         _%i93825%_
                                         (fx* _%i93825%_ _%i93825%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe93845%_ _%size93810%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i93825%_ '1))
                             _%deleted93827%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab93794%_
               _%key93795%_
               _%method-specializer-table-update!93796%_
               _%default93797%_)
        (if (let ((__tmp98358
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93794%_)))
                  (__tmp98356
                   (let ((__tmp98357
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93794%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp98357 '4))))
              (declare (not safe))
              (##fx< __tmp98358 __tmp98356))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93794%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab93794%_
         _%key93795%_
         _%method-specializer-table-update!93796%_
         _%default93797%_)))
    (define __method-specializer-table-update!
      (lambda (_%tab93744%_
               _%key93745%_
               _%method-specializer-table-update!93746%_
               _%default93747%_)
        (let ((_%table93750%_
               (let () (declare (not safe)) (&raw-table-table _%tab93744%_)))
              (_%seed93751%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93744%_))))
          (let* ((_%h93753%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93745%_))
                         _%seed93751%_))
                 (_%size93756%_ (vector-length _%table93750%_))
                 (_%entries93759%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93756%_ '2)))
                 (_%start93762%_
                  (let ((__tmp98359
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93753%_ _%entries93759%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98359 '1))))
            (let _%loop93766%_ ((_%probe93769%_ _%start93762%_)
                                (_%i93771%_ '1)
                                (_%deleted93773%_ '#f))
              (let ((_%k93776%_ (vector-ref _%table93750%_ _%probe93769%_)))
                (if (eq? _%k93776%_ (macro-unused-obj))
                    (if _%deleted93773%_
                        (begin
                          (vector-set!
                           _%table93750%_
                           _%deleted93773%_
                           _%key93745%_)
                          (vector-set!
                           _%table93750%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted93773%_ '1))
                           (_%method-specializer-table-update!93746%_
                            _%default93747%_))
                          ((lambda ()
                             (let ((__tmp98360
                                    (let ((__tmp98361
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab93744%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp98361 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab93744%_
                                __tmp98360)))))
                        (begin
                          (vector-set!
                           _%table93750%_
                           _%probe93769%_
                           _%key93745%_)
                          (vector-set!
                           _%table93750%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe93769%_ '1))
                           (_%method-specializer-table-update!93746%_
                            _%default93747%_))
                          ((lambda ()
                             (let ((__tmp98362
                                    (let ((__tmp98363
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab93744%_))))
                                      (declare (not safe))
                                      (##fx- __tmp98363 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab93744%_ __tmp98362))
                             (let ((__tmp98364
                                    (let ((__tmp98365
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab93744%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp98365 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab93744%_
                                __tmp98364))))))
                    (if (eq? _%k93776%_ (macro-deleted-obj))
                        (_%loop93766%_
                         (let ((_%next-probe93783%_
                                (fx+ _%start93762%_
                                     _%i93771%_
                                     (fx* _%i93771%_ _%i93771%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe93783%_ _%size93756%_))
                         (let () (declare (not safe)) (##fx+ _%i93771%_ '1))
                         (let ((_%$e93786%_ _%deleted93773%_))
                           (if _%$e93786%_ _%$e93786%_ _%probe93769%_)))
                        (if (eq? _%key93745%_ _%k93776%_)
                            (let ()
                              (vector-set!
                               _%table93750%_
                               _%probe93769%_
                               _%key93745%_)
                              (vector-set!
                               _%table93750%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93769%_ '1))
                               (_%method-specializer-table-update!93746%_
                                (vector-ref
                                 _%table93750%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe93769%_ '1))))))
                            (_%loop93766%_
                             (let ((_%next-probe93791%_
                                    (fx+ _%start93762%_
                                         _%i93771%_
                                         (fx* _%i93771%_ _%i93771%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe93791%_ _%size93756%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i93771%_ '1))
                             _%deleted93773%_))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab93699%_ _%key93701%_)
        (let ((_%table93704%_
               (let () (declare (not safe)) (&raw-table-table _%tab93699%_)))
              (_%seed93706%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93699%_))))
          (let* ((_%h93709%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93701%_))
                         _%seed93706%_))
                 (_%size93712%_ (vector-length _%table93704%_))
                 (_%entries93715%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93712%_ '2)))
                 (_%start93718%_
                  (let ((__tmp98366
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93709%_ _%entries93715%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98366 '1))))
            (let _%loop93722%_ ((_%probe93725%_ _%start93718%_)
                                (_%i93727%_ '1))
              (let ((_%k93730%_ (vector-ref _%table93704%_ _%probe93725%_)))
                (if (eq? _%k93730%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93730%_ (macro-deleted-obj))
                        (_%loop93722%_
                         (let ((_%next-probe93735%_
                                (fx+ _%start93718%_
                                     _%i93727%_
                                     (fx* _%i93727%_ _%i93727%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe93735%_ _%size93712%_))
                         (let () (declare (not safe)) (##fx+ _%i93727%_ '1)))
                        (if (eq? _%key93701%_ _%k93730%_)
                            (let ()
                              (vector-set!
                               _%table93704%_
                               _%probe93725%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93704%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93725%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp98367
                                        (let ((__tmp98368
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab93699%_))))
                                          (declare (not safe))
                                          (##fx- __tmp98368 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab93699%_
                                    __tmp98367)))))
                            (_%loop93722%_
                             (let ((_%next-probe93741%_
                                    (fx+ _%start93718%_
                                         _%i93727%_
                                         (fx* _%i93727%_ _%i93727%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe93741%_ _%size93712%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i93727%_ '1))))))))))))
    (define __method-specializers (make-method-specializer-table__% '#f '0))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc93690%_ _%specializer93691%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93695%_ ()
            (if (let ((__tmp98369
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp98369 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again93695%_)))))
        (method-specializer-table-set!
         __method-specializers
         _%method-proc93690%_
         _%specializer93691%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc93680%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93684%_ ()
            (if (let ((__tmp98370
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp98370 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again93684%_)))))
        (let ((_%specializer93688%_
               (method-specializer-table-ref
                __method-specializers
                _%proc93680%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer93688%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass93678%_)
        (let ((__tmp98371
               (let () (declare (not safe)) (##type-id _%klass93678%_))))
          (declare (not safe))
          (symbolic-hash __tmp98371))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint93659%_ _%seed93661%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint93659%_
           __class-specializer-hash-key
           eq?
           _%seed93661%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint93667%_ '#f) (_%seed93669%_ '0))
          (make-class-specializer-table__% _%size-hint93667%_ _%seed93669%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint93671%_)
        (let ((_%seed93673%_ '0))
          (make-class-specializer-table__% _%size-hint93671%_ _%seed93673%_))))
    (define make-class-specializer-table
      (lambda _g98373_
        (let ((_g98372_ (let () (declare (not safe)) (##length _g98373_))))
          (cond ((let () (declare (not safe)) (##fx= _g98372_ 0))
                 (apply make-class-specializer-table__0 _g98373_))
                ((let () (declare (not safe)) (##fx= _g98372_ 1))
                 (apply make-class-specializer-table__1 _g98373_))
                ((let () (declare (not safe)) (##fx= _g98372_ 2))
                 (apply make-class-specializer-table__% _g98373_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g98373_))))))
    (define class-specializer-table-ref
      (lambda (_%tab93612%_ _%key93613%_ _%default93614%_)
        (let ((_%table93616%_
               (let () (declare (not safe)) (&raw-table-table _%tab93612%_)))
              (_%seed93617%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93612%_))))
          (let* ((_%h93619%_
                  (fxxor (__class-specializer-hash-key _%key93613%_)
                         _%seed93617%_))
                 (_%size93622%_ (vector-length _%table93616%_))
                 (_%entries93625%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93622%_ '2)))
                 (_%start93628%_
                  (let ((__tmp98374
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93619%_ _%entries93625%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98374 '1))))
            (let _%loop93632%_ ((_%probe93635%_ _%start93628%_)
                                (_%i93637%_ '1)
                                (_%deleted93639%_ '#f))
              (let ((_%k93642%_ (vector-ref _%table93616%_ _%probe93635%_)))
                (if (eq? _%k93642%_ (macro-unused-obj))
                    _%default93614%_
                    (if (eq? _%k93642%_ (macro-deleted-obj))
                        (_%loop93632%_
                         (let ((_%next-probe93647%_
                                (fx+ _%start93628%_
                                     _%i93637%_
                                     (fx* _%i93637%_ _%i93637%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe93647%_ _%size93622%_))
                         (let () (declare (not safe)) (##fx+ _%i93637%_ '1))
                         (let ((_%$e93650%_ _%deleted93639%_))
                           (if _%$e93650%_ _%$e93650%_ _%probe93635%_)))
                        (if (eq? _%key93613%_ _%k93642%_)
                            (vector-ref
                             _%table93616%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93635%_ '1)))
                            (_%loop93632%_
                             (let ((_%next-probe93655%_
                                    (fx+ _%start93628%_
                                         _%i93637%_
                                         (fx* _%i93637%_ _%i93637%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe93655%_ _%size93622%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i93637%_ '1))
                             _%deleted93639%_))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab93608%_ _%key93609%_ _%value93610%_)
        (if (let ((__tmp98377
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93608%_)))
                  (__tmp98375
                   (let ((__tmp98376
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93608%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp98376 '4))))
              (declare (not safe))
              (##fx< __tmp98377 __tmp98375))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93608%_))
            '#!void)
        (__class-specializer-table-set!
         _%tab93608%_
         _%key93609%_
         _%value93610%_)))
    (define __class-specializer-table-set!
      (lambda (_%tab93559%_ _%key93560%_ _%value93561%_)
        (let ((_%table93564%_
               (let () (declare (not safe)) (&raw-table-table _%tab93559%_)))
              (_%seed93565%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93559%_))))
          (let* ((_%h93567%_
                  (fxxor (__class-specializer-hash-key _%key93560%_)
                         _%seed93565%_))
                 (_%size93570%_ (vector-length _%table93564%_))
                 (_%entries93573%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93570%_ '2)))
                 (_%start93576%_
                  (let ((__tmp98378
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93567%_ _%entries93573%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98378 '1))))
            (let _%loop93580%_ ((_%probe93583%_ _%start93576%_)
                                (_%i93585%_ '1)
                                (_%deleted93587%_ '#f))
              (let ((_%k93590%_ (vector-ref _%table93564%_ _%probe93583%_)))
                (if (eq? _%k93590%_ (macro-unused-obj))
                    (if _%deleted93587%_
                        (begin
                          (vector-set!
                           _%table93564%_
                           _%deleted93587%_
                           _%key93560%_)
                          (vector-set!
                           _%table93564%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted93587%_ '1))
                           _%value93561%_)
                          ((lambda ()
                             (let ((__tmp98379
                                    (let ((__tmp98380
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab93559%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp98380 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab93559%_
                                __tmp98379)))))
                        (begin
                          (vector-set!
                           _%table93564%_
                           _%probe93583%_
                           _%key93560%_)
                          (vector-set!
                           _%table93564%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe93583%_ '1))
                           _%value93561%_)
                          ((lambda ()
                             (let ((__tmp98381
                                    (let ((__tmp98382
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab93559%_))))
                                      (declare (not safe))
                                      (##fx- __tmp98382 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab93559%_ __tmp98381))
                             (let ((__tmp98383
                                    (let ((__tmp98384
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab93559%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp98384 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab93559%_
                                __tmp98383))))))
                    (if (eq? _%k93590%_ (macro-deleted-obj))
                        (_%loop93580%_
                         (let ((_%next-probe93597%_
                                (fx+ _%start93576%_
                                     _%i93585%_
                                     (fx* _%i93585%_ _%i93585%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe93597%_ _%size93570%_))
                         (let () (declare (not safe)) (##fx+ _%i93585%_ '1))
                         (let ((_%$e93600%_ _%deleted93587%_))
                           (if _%$e93600%_ _%$e93600%_ _%probe93583%_)))
                        (if (eq? _%key93560%_ _%k93590%_)
                            (let ()
                              (vector-set!
                               _%table93564%_
                               _%probe93583%_
                               _%key93560%_)
                              (vector-set!
                               _%table93564%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93583%_ '1))
                               _%value93561%_))
                            (_%loop93580%_
                             (let ((_%next-probe93605%_
                                    (fx+ _%start93576%_
                                         _%i93585%_
                                         (fx* _%i93585%_ _%i93585%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe93605%_ _%size93570%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i93585%_ '1))
                             _%deleted93587%_))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab93554%_
               _%key93555%_
               _%class-specializer-table-update!93556%_
               _%default93557%_)
        (if (let ((__tmp98387
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93554%_)))
                  (__tmp98385
                   (let ((__tmp98386
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93554%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp98386 '4))))
              (declare (not safe))
              (##fx< __tmp98387 __tmp98385))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93554%_))
            '#!void)
        (__class-specializer-table-update!
         _%tab93554%_
         _%key93555%_
         _%class-specializer-table-update!93556%_
         _%default93557%_)))
    (define __class-specializer-table-update!
      (lambda (_%tab93504%_
               _%key93505%_
               _%class-specializer-table-update!93506%_
               _%default93507%_)
        (let ((_%table93510%_
               (let () (declare (not safe)) (&raw-table-table _%tab93504%_)))
              (_%seed93511%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93504%_))))
          (let* ((_%h93513%_
                  (fxxor (__class-specializer-hash-key _%key93505%_)
                         _%seed93511%_))
                 (_%size93516%_ (vector-length _%table93510%_))
                 (_%entries93519%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93516%_ '2)))
                 (_%start93522%_
                  (let ((__tmp98388
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93513%_ _%entries93519%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98388 '1))))
            (let _%loop93526%_ ((_%probe93529%_ _%start93522%_)
                                (_%i93531%_ '1)
                                (_%deleted93533%_ '#f))
              (let ((_%k93536%_ (vector-ref _%table93510%_ _%probe93529%_)))
                (if (eq? _%k93536%_ (macro-unused-obj))
                    (if _%deleted93533%_
                        (begin
                          (vector-set!
                           _%table93510%_
                           _%deleted93533%_
                           _%key93505%_)
                          (vector-set!
                           _%table93510%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted93533%_ '1))
                           (_%class-specializer-table-update!93506%_
                            _%default93507%_))
                          ((lambda ()
                             (let ((__tmp98389
                                    (let ((__tmp98390
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab93504%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp98390 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab93504%_
                                __tmp98389)))))
                        (begin
                          (vector-set!
                           _%table93510%_
                           _%probe93529%_
                           _%key93505%_)
                          (vector-set!
                           _%table93510%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe93529%_ '1))
                           (_%class-specializer-table-update!93506%_
                            _%default93507%_))
                          ((lambda ()
                             (let ((__tmp98391
                                    (let ((__tmp98392
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab93504%_))))
                                      (declare (not safe))
                                      (##fx- __tmp98392 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab93504%_ __tmp98391))
                             (let ((__tmp98393
                                    (let ((__tmp98394
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab93504%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp98394 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab93504%_
                                __tmp98393))))))
                    (if (eq? _%k93536%_ (macro-deleted-obj))
                        (_%loop93526%_
                         (let ((_%next-probe93543%_
                                (fx+ _%start93522%_
                                     _%i93531%_
                                     (fx* _%i93531%_ _%i93531%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe93543%_ _%size93516%_))
                         (let () (declare (not safe)) (##fx+ _%i93531%_ '1))
                         (let ((_%$e93546%_ _%deleted93533%_))
                           (if _%$e93546%_ _%$e93546%_ _%probe93529%_)))
                        (if (eq? _%key93505%_ _%k93536%_)
                            (let ()
                              (vector-set!
                               _%table93510%_
                               _%probe93529%_
                               _%key93505%_)
                              (vector-set!
                               _%table93510%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93529%_ '1))
                               (_%class-specializer-table-update!93506%_
                                (vector-ref
                                 _%table93510%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe93529%_ '1))))))
                            (_%loop93526%_
                             (let ((_%next-probe93551%_
                                    (fx+ _%start93522%_
                                         _%i93531%_
                                         (fx* _%i93531%_ _%i93531%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe93551%_ _%size93516%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i93531%_ '1))
                             _%deleted93533%_))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab93459%_ _%key93461%_)
        (let ((_%table93464%_
               (let () (declare (not safe)) (&raw-table-table _%tab93459%_)))
              (_%seed93466%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93459%_))))
          (let* ((_%h93469%_
                  (fxxor (__class-specializer-hash-key _%key93461%_)
                         _%seed93466%_))
                 (_%size93472%_ (vector-length _%table93464%_))
                 (_%entries93475%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93472%_ '2)))
                 (_%start93478%_
                  (let ((__tmp98395
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93469%_ _%entries93475%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98395 '1))))
            (let _%loop93482%_ ((_%probe93485%_ _%start93478%_)
                                (_%i93487%_ '1))
              (let ((_%k93490%_ (vector-ref _%table93464%_ _%probe93485%_)))
                (if (eq? _%k93490%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93490%_ (macro-deleted-obj))
                        (_%loop93482%_
                         (let ((_%next-probe93495%_
                                (fx+ _%start93478%_
                                     _%i93487%_
                                     (fx* _%i93487%_ _%i93487%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe93495%_ _%size93472%_))
                         (let () (declare (not safe)) (##fx+ _%i93487%_ '1)))
                        (if (eq? _%key93461%_ _%k93490%_)
                            (let ()
                              (vector-set!
                               _%table93464%_
                               _%probe93485%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93464%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93485%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp98396
                                        (let ((__tmp98397
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab93459%_))))
                                          (declare (not safe))
                                          (##fx- __tmp98397 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab93459%_
                                    __tmp98396)))))
                            (_%loop93482%_
                             (let ((_%next-probe93501%_
                                    (fx+ _%start93478%_
                                         _%i93487%_
                                         (fx* _%i93487%_ _%i93487%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe93501%_ _%size93472%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i93487%_ '1))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers (make-class-specializer-table__% '#f '0))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass93445%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass93445%_ 'class))
            (let ((_%klass93449%_ _%klass93445%_))
              (__specialize-class _%klass93449%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1020.25-1020.30"
               'contract:
               'class-type?
               'value:
               _%klass93445%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass93427%_)
        (let* ((_%klass93430%_ _%klass93427%_)
               (_%$e93439%_ (__lookup-class-specializer _%klass93430%_)))
          (if _%$e93439%_
              _%$e93439%_
              (let ((_%method-table93443%_
                     (___specialize-class _%klass93430%_)))
                (__bind-class-specializer!
                 _%klass93430%_
                 _%method-table93443%_)
                _%method-table93443%_)))))
    (define __lookup-class-specializer
      (lambda (_%klass93417%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93421%_ ()
            (if (let ((__tmp98398
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp98398 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again93421%_)))))
        (let ((_%method-table93425%_
               (class-specializer-table-ref
                __class-specializers
                _%klass93417%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table93425%_)))
    (define __bind-class-specializer!
      (lambda (_%klass93408%_ _%method-table93409%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93413%_ ()
            (if (let ((__tmp98399
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp98399 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again93413%_)))))
        (class-specializer-table-set!
         __class-specializers
         _%klass93408%_
         _%method-table93409%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass93392%_
               _%method-table93393%_
               _%method93394%_
               _%proc93395%_)
        (let ((_%$e93397%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table93393%_
                  _%method93394%_
                  '#f))))
          (if _%$e93397%_
              _%$e93397%_
              (let ((_%$e93400%_ (__lookup-method-specializer _%proc93395%_)))
                (if _%$e93400%_
                    ((lambda (_%specialize93403%_)
                       (let ((_%specialized-proc93405%_
                              (_%specialize93403%_
                               _%klass93392%_
                               _%method-table93393%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table93393%_
                          _%method93394%_
                          _%specialized-proc93405%_)))
                     _%$e93400%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table93393%_
                       _%method93394%_
                       _%proc93395%_))))))))
    (define ___specialize-class
      (lambda (_%klass93334%_)
        (if (not (let ()
                   (declare (not safe))
                   (##structure-instance-of? _%klass93334%_ 'class)))
            (if (let () (declare (not safe)) (##type? _%klass93334%_))
                (__specialize-class (__shadow-class _%klass93334%_))
                (error '"bad class; cannot specialize" _%klass93334%_))
            (if (class-type-metaclass? _%klass93334%_)
                (let ((__method98244
                       (__method-ref _%klass93334%_ 'specialize-class)))
                  (if __method98244
                      (__method98244 _%klass93334%_)
                      (begin
                        (error '"Missing method"
                               _%klass93334%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp98400
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass93334%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp98400))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass93334%_)
                    (let ((_%method-table93340%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop93342%_ ((_%rest93344%_
                                           (class-precedence-list
                                            _%klass93334%_)))
                        (let* ((_%rest9334593353%_ _%rest93344%_)
                               (_%else9334793361%_
                                (lambda () _%method-table93340%_))
                               (_%K9334993380%_
                                (lambda (_%rest93364%_ _%xklass93365%_)
                                  (let ((_%xmethod-table9336693368%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass93365%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table9336693368%_
                                        (let* ((_%xmethod-table93371%_
                                                _%xmethod-table9336693368%_)
                                               (__tmp98401
                                                (lambda (_%g9337293375%_
                                                         _%g9337393377%_)
                                                  (__specialize-method
                                                   _%klass93334%_
                                                   _%method-table93340%_
                                                   _%g9337293375%_
                                                   _%g9337393377%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table93371%_
                                           __tmp98401))
                                        '#f))
                                  (_%loop93342%_ _%rest93364%_))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9334593353%_))
                              (let ((_%hd9335093383%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9334593353%_)))
                                    (_%tl9335193385%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9334593353%_))))
                                (let* ((_%xklass93388%_ _%hd9335093383%_)
                                       (_%rest93390%_ _%tl9335193385%_))
                                  (_%K9334993380%_
                                   _%rest93390%_
                                   _%xklass93388%_)))
                              (_%else9334793361%_))))))))))
    (define seal-class!
      (lambda (_%klass93320%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass93320%_ 'class))
            (let ((_%klass93324%_ _%klass93320%_))
              (__seal-class! _%klass93324%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1077.20-1077.25"
               'contract:
               'class-type?
               'value:
               _%klass93320%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass93303%_)
        (let ((_%klass93306%_ _%klass93303%_))
          (if (__class-type-sealed? _%klass93306%_)
              '#!void
              (begin
                (if (__class-type-final? _%klass93306%_)
                    '#!void
                    (error '"cannot seal non-final class" _%klass93306%_))
                (if (__class-type-metaclass? _%klass93306%_)
                    (let ((__method98245
                           (__method-ref _%klass93306%_ 'seal-class!)))
                      (if __method98245
                          (__method98245 _%klass93306%_)
                          (begin
                            (error '"Missing method"
                                   _%klass93306%_
                                   'seal-class!)
                            '#!void)))
                    (if (let ((__tmp98402
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass93306%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp98402))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass93306%_)
                        (let ((_%method-table93318%_
                               (__specialize-class _%klass93306%_)))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass93306%_
                           _%method-table93318%_
                           '11
                           '#f
                           '#f))))
                (__class-type-seal! _%klass93306%_))))))
    (define next-method
      (lambda (_%subklass93277%_ _%obj93278%_ _%id93279%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass93277%_ 'class))
            (let ((_%subklass93283%_ _%subklass93277%_))
              (if (symbol? _%id93279%_)
                  (let ((_%id93293%_ _%id93279%_))
                    (__next-method _%subklass93283%_ _%obj93278%_ _%id93293%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1101.44-1101.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id93279%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1101.20-1101.28"
               'contract:
               'class-type?
               'value:
               _%subklass93277%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass93214%_ _%obj93215%_ _%id93216%_)
        (let* ((_%subklass93219%_ _%subklass93214%_) (_%id93227%_ _%id93216%_))
          (letrec ((_%find-next-method93236%_
                    (lambda (_%klass93238%_)
                      (let _%lp93240%_ ((_%rest93242%_
                                         (class-precedence-list
                                          _%klass93238%_)))
                        (let* ((_%rest9324393251%_ _%rest93242%_)
                               (_%else9324593259%_ (lambda () '#f))
                               (_%K9324793265%_
                                (lambda (_%rest93262%_ _%klass93263%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass93219%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass93263%_)))
                                      (__mixin-find-method
                                       _%rest93262%_
                                       _%obj93215%_
                                       _%id93227%_)
                                      (_%lp93240%_ _%rest93262%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9324393251%_))
                              (let ((_%hd9324893268%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9324393251%_)))
                                    (_%tl9324993270%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9324393251%_))))
                                (let* ((_%klass93273%_ _%hd9324893268%_)
                                       (_%rest93275%_ _%tl9324993270%_))
                                  (_%K9324793265%_
                                   _%rest93275%_
                                   _%klass93273%_)))
                              (_%else9324593259%_)))))))
            (_%find-next-method93236%_ (class-of _%obj93215%_))))))
    (define call-next-method
      (lambda (_%subklass93187%_ _%obj93188%_ _%id93189%_ . _%args93190%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass93187%_ 'class))
            (let ((_%subklass93194%_ _%subklass93187%_))
              (if (symbol? _%id93189%_)
                  (let ((_%id93204%_ _%id93189%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass93194%_
                             _%obj93188%_
                             _%id93204%_
                             _%args93190%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1112.49-1112.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id93189%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1112.25-1112.33"
               'contract:
               'class-type?
               'value:
               _%subklass93187%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass93158%_ _%obj93159%_ _%id93160%_ . _%args93161%_)
        (let* ((_%subklass93164%_ _%subklass93158%_)
               (_%id93172%_ _%id93160%_)
               (_%$e93181%_
                (__next-method _%subklass93164%_ _%obj93159%_ _%id93172%_)))
          (if _%$e93181%_
              ((lambda (_%methodf93184%_)
                 (apply _%methodf93184%_ _%obj93159%_ _%args93161%_))
               _%$e93181%_)
              (error '"cannot find next method"
                     'object:
                     _%obj93159%_
                     'method:
                     _%id93172%_)))))
    (define write-style
      (lambda (_%we93156%_) (macro-writeenv-style _%we93156%_)))
    (define write-object
      (lambda (_%we93147%_ _%obj93148%_)
        (let ((_%$e93150%_ (__method-ref _%obj93148%_ ':wr)))
          (if _%$e93150%_
              ((lambda (_%method93153%_)
                 (_%method93153%_ _%obj93148%_ _%we93147%_))
               _%$e93150%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we93147%_ _%obj93148%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type93062%_)
        (letrec ((_%shadow-type-id93064%_
                  (lambda (_%type93145%_)
                    (let ((__tmp98403
                           (let ()
                             (declare (not safe))
                             (##type-name _%type93145%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp98403 '"::t"))))
                 (_%shadow-type-name93065%_
                  (lambda (_%type93143%_)
                    (let () (declare (not safe)) (##type-name _%type93143%_))))
                 (_%make-shadow-class93066%_
                  (lambda (_%type93135%_ _%precedence-list93136%_)
                    (let* ((_%super93138%_
                            (if (pair? _%precedence-list93136%_)
                                (cons (car _%precedence-list93136%_) '())
                                '()))
                           (_%klass93140%_
                            (make-class-type
                             (_%shadow-type-id93064%_ _%type93135%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type93135%_))
                             _%super93138%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (if (__type-extensible? _%type93135%_)
                                             '()
                                             (cons (cons 'final: '#t) '()))))
                             '#f)))
                      (let ((__tmp98404
                             (let ()
                               (declare (not safe))
                               (##type-id _%type93135%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp98404
                         _%klass93140%_))
                      _%klass93140%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again93070%_ ()
              (if (let ((__tmp98405
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp98405 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (_%again93070%_)))))
          (let ((_%$e93074%_
                 (let ((__tmp98406
                        (let ()
                          (declare (not safe))
                          (##type-id _%type93062%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp98406 '#f))))
            (if _%$e93074%_
                ((lambda (_%klass93077%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass93077%_)
                 _%$e93074%_)
                (let _%loop93080%_ ((_%super93082%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-super _%type93062%_)))
                                    (_%hierarchy93083%_ '()))
                  (if (not _%super93082%_)
                      (let _%loop93086%_ ((_%rest93088%_ _%hierarchy93083%_)
                                          (_%precedence-list93089%_ '()))
                        (let* ((_%rest9309093098%_ _%rest93088%_)
                               (_%else9309293108%_
                                (lambda ()
                                  (let ((_%klass93106%_
                                         (_%make-shadow-class93066%_
                                          _%type93062%_
                                          _%precedence-list93089%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass93106%_)))
                               (_%K9309493122%_
                                (lambda (_%rest93111%_ _%type93112%_)
                                  (let ((_%$e93114%_
                                         (let ((__tmp98407
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type93112%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp98407
                                            '#f))))
                                    (if _%$e93114%_
                                        ((lambda (_%klass93117%_)
                                           (_%loop93086%_
                                            _%rest93111%_
                                            (cons _%klass93117%_
                                                  _%precedence-list93089%_)))
                                         _%$e93114%_)
                                        (let ((_%klass93120%_
                                               (_%make-shadow-class93066%_
                                                _%type93112%_
                                                _%precedence-list93089%_)))
                                          (_%loop93086%_
                                           _%rest93111%_
                                           (cons _%klass93120%_
                                                 _%precedence-list93089%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9309093098%_))
                              (let ((_%hd9309593125%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9309093098%_)))
                                    (_%tl9309693127%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9309093098%_))))
                                (let* ((_%type93130%_ _%hd9309593125%_)
                                       (_%rest93132%_ _%tl9309693127%_))
                                  (_%K9309493122%_
                                   _%rest93132%_
                                   _%type93130%_)))
                              (_%else9309293108%_))))
                      (_%loop93080%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super93082%_))
                       (cons _%super93082%_ _%hierarchy93083%_)))))))))
    (define class-of
      (lambda (_%obj93035%_)
        (let ()
          (declare (not interrupts-enabled))
          (let ((_%t93039%_
                 (let () (declare (not safe)) (##type _%obj93035%_))))
            (if (fx= _%t93039%_ (macro-type-subtyped))
                (let ((_%st93042%_
                       (let () (declare (not safe)) (##subtype _%obj93035%_))))
                  (if (fx= _%st93042%_ (macro-subtype-structure))
                      (let ((_%klass93045%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj93035%_))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of? _%klass93045%_ 'class))
                            _%klass93045%_
                            (__shadow-class _%klass93045%_)))
                      (if (fx= _%st93042%_ (macro-subtype-boxvalues))
                          (if (let ((__tmp98408
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _%obj93035%_))))
                                (declare (not safe))
                                (##fx= __tmp98408 '1))
                              (__system-class 'box)
                              (__system-class 'values))
                          (let ((_%$e93048%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref __subtype-id _%st93042%_))))
                            (if _%$e93048%_
                                (__system-class _%$e93048%_)
                                (error '"unknown class"
                                       'subtype:
                                       _%st93042%_
                                       'object:
                                       _%obj93035%_))))))
                (if (fx= _%t93039%_ (macro-type-mem2))
                    (__system-class 'pair)
                    (if (fx= _%t93039%_ (macro-type-fixnum))
                        (__system-class 'fixnum)
                        (if (char? _%obj93035%_)
                            (__system-class 'char)
                            (if (eq? _%obj93035%_ '())
                                (__system-class 'null)
                                (if (eq? _%obj93035%_ '#f)
                                    (__system-class 'boolean)
                                    (if (eq? _%obj93035%_ '#t)
                                        (__system-class 'boolean)
                                        (if (eq? _%obj93035%_ '#!void)
                                            (__system-class 'void)
                                            (if (eq? _%obj93035%_ '#!eof)
                                                (__system-class 'eof)
                                                (__system-class
                                                 'special))))))))))))))
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
      (lambda (_%id93029%_)
        (let ((_%$e93031%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id93029%_ '#f))))
          (if _%$e93031%_
              _%$e93031%_
              (error '"unknown system class" _%id93029%_)))))
    (define __make-system-class
      (lambda (_%id93024%_ _%super93025%_)
        (let ((_%klass93027%_
               (make-class-type
                _%id93024%_
                _%id93024%_
                _%super93025%_
                '()
                '((system: . #t))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id93024%_ _%klass93027%_))
          _%klass93027%_)))))
