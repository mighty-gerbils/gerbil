(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1756142014)
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
      (let ((_%flags106808%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties106809%_ '((direct-slots:) (system: . #t)))
            (_%slot-table106810%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags106808%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table106810%_
           _%properties106809%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots106784%_
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
             (_%slot-vector106786%_ (list->vector (cons '#f _%slots106784%_)))
             (_%slot-table106793%_
              (let ((_%slot-table106788%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp108251
                       (lambda (_%slot106790%_ _%field106791%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106788%_
                            _%slot106790%_
                            _%field106791%_))
                         (let ((__tmp108252
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot106790%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table106788%_
                            __tmp108252
                            _%field106791%_))))
                      (__tmp108249
                       (let ((__tmp108250
                              (let ()
                                (declare (not safe))
                                (##length _%slots106784%_))))
                         (declare (not safe))
                         (##iota __tmp108250 '1))))
                  (declare (not safe))
                  (##for-each __tmp108251 _%slots106784%_ __tmp108249))
                _%slot-table106788%_))
             (_%flags106795%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields106801%_
              (list->vector
               (let ((__tmp108253
                      (map (lambda (_%g106796106798%_)
                             (list _%g106796106798%_ '5 '#f))
                           (drop _%slots106784%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp108253))))
             (_%properties106803%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots106784%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t106805%_
              (let ((__tmp108254 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags106795%_
                 ##type-type
                 _%fields106801%_
                 __tmp108254
                 _%slot-vector106786%_
                 _%slot-table106793%_
                 _%properties106803%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t106805%_ _%t106805%_))
        _%t106805%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags106780%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties106781%_ '((direct-slots:) (system: . #t)))
            (_%slot-table106782%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp108255 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags106780%_
           '#f
           '#()
           __tmp108255
           '#(#f)
           _%slot-table106782%_
           _%properties106781%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj106778%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj106778%_ 'class))))
    (define class-type=?
      (lambda (_%x106753%_ _%y106754%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x106753%_ 'class))
            (let ((_%x106758%_ _%x106753%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y106754%_ 'class))
                  (let ((_%y106768%_ _%y106754%_))
                    (__class-type=? _%x106758%_ _%y106768%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y106754%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x106753%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x106732%_ _%y106733%_)
        (let* ((_%x106736%_ _%x106732%_) (_%y106744%_ _%y106733%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x106736%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y106744%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type106718%_)
        (if (let () (declare (not safe)) (##type? _%type106718%_))
            (let ((_%type106722%_ _%type106718%_))
              (__type-opaque? _%type106722%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type106718%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type106706%_)
        (let* ((_%type106709%_ _%type106706%_)
               (__tmp108256
                (let ((__tmp108257
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type106709%_))))
                  (declare (not safe))
                  (##fxand __tmp108257 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp108256 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type106692%_)
        (if (let () (declare (not safe)) (##type? _%type106692%_))
            (let ((_%type106696%_ _%type106692%_))
              (__type-extensible? _%type106696%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type106692%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type106680%_)
        (let* ((_%type106683%_ _%type106680%_)
               (__tmp108258
                (let ((__tmp108259
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type106683%_))))
                  (declare (not safe))
                  (##fxand __tmp108259 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp108258 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type106666%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type106666%_ 'class))
            (let ((_%type106670%_ _%type106666%_))
              (__class-type-final? _%type106670%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type106666%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type106654%_)
        (let* ((_%type106657%_ _%type106654%_)
               (__tmp108260
                (let ((__tmp108261
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type106657%_))))
                  (declare (not safe))
                  (##fxand __tmp108261 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp108260 '0))))
    (define class-type-struct?
      (lambda (_%klass106640%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106640%_ 'class))
            (let ((_%klass106644%_ _%klass106640%_))
              (__class-type-struct? _%klass106644%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass106640%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass106628%_)
        (let* ((_%klass106631%_ _%klass106628%_)
               (__tmp108262
                (let ((__tmp108263
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass106631%_))))
                  (declare (not safe))
                  (##fxand __tmp108263 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp108262 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass106614%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106614%_ 'class))
            (let ((_%klass106618%_ _%klass106614%_))
              (__class-type-sealed? _%klass106618%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass106614%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass106602%_)
        (let* ((_%klass106605%_ _%klass106602%_)
               (__tmp108264
                (let ((__tmp108265
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass106605%_))))
                  (declare (not safe))
                  (##fxand __tmp108265 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp108264 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass106588%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106588%_ 'class))
            (let ((_%klass106592%_ _%klass106588%_))
              (__class-type-metaclass? _%klass106592%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass106588%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass106576%_)
        (let* ((_%klass106579%_ _%klass106576%_)
               (__tmp108266
                (let ((__tmp108267
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass106579%_))))
                  (declare (not safe))
                  (##fxand __tmp108267 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp108266 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass106562%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106562%_ 'class))
            (let ((_%klass106566%_ _%klass106562%_))
              (__class-type-system? _%klass106566%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass106562%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass106550%_)
        (let* ((_%klass106553%_ _%klass106550%_)
               (__tmp108268
                (let ((__tmp108269
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass106553%_))))
                  (declare (not safe))
                  (##fxand __tmp108269 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp108268 class-type-flag-system))))
    (define make-class-type-descriptor
      (lambda (_%type-id106432%_
               _%type-name106433%_
               _%type-super106434%_
               _%precedence-list106435%_
               _%slot-vector106436%_
               _%properties106437%_
               _%constructor106438%_
               _%slot-table106439%_
               _%methods106440%_)
        (letrec ((_%make-props!106443%_
                  (lambda (_%key106519%_)
                    (letrec* ((_%ht106521%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!106522%_
                               (lambda (_%ht106543%_ _%slots106544%_)
                                 (for-each
                                  (lambda (_%g106545106547%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht106543%_
                                       _%g106545106547%_
                                       '#t)))
                                  _%slots106544%_)))
                              (_%put-alist!106523%_
                               (lambda (_%ht106532%_
                                        _%key106533%_
                                        _%alist106534%_)
                                 (let ((_%$e106536%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key106533%_
                                           _%alist106534%_))))
                                   (if _%$e106536%_
                                       ((lambda (_%g106538106540%_)
                                          (_%put-slots!106522%_
                                           _%ht106532%_
                                           _%g106538106540%_))
                                        _%$e106536%_)
                                       '#!void)))))
                      (_%put-alist!106523%_
                       _%ht106521%_
                       _%key106519%_
                       _%properties106437%_)
                      (for-each
                       (lambda (_%mixin106525%_)
                         (let ((_%alist106527%_
                                (##structure-ref
                                 _%mixin106525%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist106527%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key106519%_
                                           _%alist106527%_))))
                               (_%put-slots!106522%_
                                _%ht106521%_
                                (class-type-slot-list _%mixin106525%_))
                               (_%put-alist!106523%_
                                _%ht106521%_
                                _%key106519%_
                                _%alist106527%_))))
                       _%precedence-list106435%_)
                      _%ht106521%_))))
          (let* ((_%transparent?106445%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties106437%_)))
                 (_%all-slots-printable?106450%_
                  (let ((_%$e106447%_ _%transparent?106445%_))
                    (if _%$e106447%_
                        _%$e106447%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties106437%_))))))
                 (_%printable106452%_
                  (if (not _%all-slots-printable?106450%_)
                      (_%make-props!106443%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?106457%_
                  (let ((_%$e106454%_ _%transparent?106445%_))
                    (if _%$e106454%_
                        _%$e106454%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties106437%_))))))
                 (_%equalable106459%_
                  (if (not _%all-slots-equalable?106457%_)
                      (_%make-props!106443%_ 'equal:)
                      '#f))
                 (_%first-new-field106461%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super106434%_ 'class))
                      (let ((__tmp108270
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super106434%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp108270))
                      '1))
                 (_%field-info-length106463%_
                  (let ((__tmp108271
                         (let ((__tmp108272
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector106436%_))))
                           (declare (not safe))
                           (##fx- __tmp108272 _%first-new-field106461%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp108271)))
                 (_%field-info106465%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length106463%_ '#f)))
                 (_%struct?106467%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties106437%_)))
                 (_%final?106469%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties106437%_)))
                 (_%metaclass106477%_
                  (let ((_%metaclass106470106472%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties106437%_))))
                    (if _%metaclass106470106472%_
                        (let ((_%metaclass106475%_ _%metaclass106470106472%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass106475%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id106432%_
                                     'metaclass:
                                     _%metaclass106475%_))
                          _%metaclass106475%_)
                        '#f)))
                 (_%system?106479%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties106437%_)))
                 (_%opaque?106487%_
                  (if (or _%transparent?106445%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties106437%_)))
                      '#f
                      (let ((_%$e106484%_ (not _%type-super106434%_)))
                        (if _%$e106484%_
                            _%$e106484%_
                            (__type-opaque? _%type-super106434%_)))))
                 (_%type-flags106489%_
                  (let ((__tmp108277
                         (if _%final?106469%_ '0 type-flag-extensible))
                        (__tmp108276
                         (if _%opaque?106487%_ type-flag-opaque '0))
                        (__tmp108275
                         (if _%struct?106467%_ class-type-flag-struct '0))
                        (__tmp108274
                         (if _%metaclass106477%_ class-type-flag-metaclass '0))
                        (__tmp108273
                         (if _%system?106479%_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp108277
                             __tmp108276
                             __tmp108275
                             __tmp108274
                             __tmp108273)))
                 (_%precedence-list106497%_
                  (let ((_%$e106491%_ (memq t::t _%precedence-list106435%_)))
                    (if _%$e106491%_
                        ((lambda (_%tail106494%_)
                           (if (null? (cdr _%tail106494%_))
                               _%precedence-list106435%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list106435%_)))
                         _%$e106491%_)
                        (let ((__tmp108278 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list106435%_ __tmp108278))))))
            (let _%loop106500%_ ((_%i106502%_ _%first-new-field106461%_)
                                 (_%j106503%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j106503%_ _%field-info-length106463%_))
                  (let* ((_%slot106505%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector106436%_ _%i106502%_)))
                         (_%flags106513%_
                          (if _%transparent?106445%_
                              '0
                              (let ((__tmp108280
                                     (if (or _%all-slots-printable?106450%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable106452%_
                                                _%slot106505%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp108279
                                     (if (or _%all-slots-equalable?106457%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable106459%_
                                                _%slot106505%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp108280 __tmp108279)))))
                    (vector-set!
                     _%field-info106465%_
                     _%j106503%_
                     _%slot106505%_)
                    (vector-set!
                     _%field-info106465%_
                     (let () (declare (not safe)) (##fx+ _%j106503%_ '1))
                     _%flags106513%_)
                    (_%loop106500%_
                     (let () (declare (not safe)) (##fx+ _%i106502%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j106503%_ '3))))
                  '#!void))
            (if _%metaclass106477%_
                (let ((_%val106516%_
                       (make-instance
                        _%metaclass106477%_
                        _%type-id106432%_
                        _%type-name106433%_
                        _%type-flags106489%_
                        _%type-super106434%_
                        _%field-info106465%_
                        _%precedence-list106497%_
                        _%slot-vector106436%_
                        _%slot-table106439%_
                        _%properties106437%_
                        _%constructor106438%_
                        _%methods106440%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val106516%_ 'class))
                      _%val106516%_
                      (error '"bad cast" class::t _%val106516%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id106432%_
                   _%type-name106433%_
                   _%type-flags106489%_
                   _%type-super106434%_
                   _%field-info106465%_
                   _%precedence-list106497%_
                   _%slot-vector106436%_
                   _%slot-table106439%_
                   _%properties106437%_
                   _%constructor106438%_
                   _%methods106440%_)))))))
    (define class-type-id
      (lambda (_%klass106430%_)
        (##structure-ref _%klass106430%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass106428%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass106428%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass106425%_ _%val106426%_)
        (##structure-set! _%klass106425%_ _%val106426%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass106420%_ _%val106422%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass106420%_
           _%val106422%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass106418%_)
        (##structure-ref _%klass106418%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass106416%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass106416%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass106413%_ _%val106414%_)
        (##structure-set! _%klass106413%_ _%val106414%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass106408%_ _%val106410%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass106408%_
           _%val106410%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass106406%_)
        (##structure-ref _%klass106406%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass106404%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass106404%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass106401%_ _%val106402%_)
        (##structure-set! _%klass106401%_ _%val106402%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass106396%_ _%val106398%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass106396%_
           _%val106398%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass106394%_)
        (##structure-ref _%klass106394%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass106392%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass106392%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass106389%_ _%val106390%_)
        (##structure-set! _%klass106389%_ _%val106390%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass106384%_ _%val106386%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass106384%_
           _%val106386%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass106382%_)
        (##structure-ref _%klass106382%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass106380%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass106380%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass106377%_ _%val106378%_)
        (##structure-set! _%klass106377%_ _%val106378%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass106372%_ _%val106374%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass106372%_
           _%val106374%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass106370%_)
        (##structure-ref _%klass106370%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass106368%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass106368%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass106365%_ _%val106366%_)
        (##structure-set!
         _%klass106365%_
         _%val106366%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass106360%_ _%val106362%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass106360%_
           _%val106362%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass106358%_)
        (##structure-ref _%klass106358%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass106356%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass106356%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass106353%_ _%val106354%_)
        (##structure-set!
         _%klass106353%_
         _%val106354%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass106348%_ _%val106350%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass106348%_
           _%val106350%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass106346%_)
        (##structure-ref _%klass106346%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass106344%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass106344%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass106341%_ _%val106342%_)
        (##structure-set!
         _%klass106341%_
         _%val106342%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass106336%_ _%val106338%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass106336%_
           _%val106338%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass106334%_)
        (##structure-ref _%klass106334%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass106332%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass106332%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass106329%_ _%val106330%_)
        (##structure-set!
         _%klass106329%_
         _%val106330%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass106324%_ _%val106326%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass106324%_
           _%val106326%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass106322%_)
        (##structure-ref _%klass106322%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass106320%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass106320%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass106317%_ _%val106318%_)
        (##structure-set!
         _%klass106317%_
         _%val106318%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass106312%_ _%val106314%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass106312%_
           _%val106314%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass106310%_)
        (##structure-ref _%klass106310%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass106308%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass106308%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass106305%_ _%val106306%_)
        (##structure-set!
         _%klass106305%_
         _%val106306%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass106300%_ _%val106302%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass106300%_
           _%val106302%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass106286%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106286%_ 'class))
            (let ((_%klass106290%_ _%klass106286%_))
              (__class-type-slot-list _%klass106290%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass106286%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass106274%_)
        (let ((_%klass106277%_ _%klass106274%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass106277%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass106260%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106260%_ 'class))
            (let ((_%klass106264%_ _%klass106260%_))
              (__class-type-field-count _%klass106264%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass106260%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass106248%_)
        (let* ((_%klass106251%_ _%klass106248%_)
               (__tmp108281
                (let ((__tmp108282
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass106251%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp108282))))
          (declare (not safe))
          (##fx- __tmp108281 '1))))
    (define class-type-seal!
      (lambda (_%klass106234%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106234%_ 'class))
            (let ((_%klass106238%_ _%klass106234%_))
              (__class-type-seal! _%klass106238%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass106234%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass106222%_)
        (let ((_%klass106225%_ _%klass106222%_))
          (let ((__tmp108283
                 (let ((__tmp108284
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass106225%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp108284))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass106225%_
             __tmp108283
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct106197%_ _%maybe-super-struct106198%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct106197%_ 'class))
            (let ((_%maybe-sub-struct106202%_ _%maybe-sub-struct106197%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct106198%_
                     'class))
                  (let ((_%maybe-super-struct106212%_
                         _%maybe-super-struct106198%_))
                    (__substruct?
                     _%maybe-sub-struct106202%_
                     _%maybe-super-struct106212%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct106198%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct106197%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct106166%_ _%maybe-super-struct106167%_)
        (let* ((_%maybe-sub-struct106170%_ _%maybe-sub-struct106166%_)
               (_%maybe-super-struct106178%_ _%maybe-super-struct106167%_)
               (_%maybe-super-struct-id106187%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct106178%_))))
          (let _%lp106189%_ ((_%super-struct106191%_
                              _%maybe-sub-struct106170%_))
            (if (not _%super-struct106191%_)
                '#f
                (if (eq? _%maybe-super-struct-id106187%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct106191%_)))
                    '#t
                    (_%lp106189%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct106191%_)))))))))
    (define base-struct/1
      (lambda (_%klass106161%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106161%_ 'class))
            (if (__class-type-struct? _%klass106161%_)
                _%klass106161%_
                (let () (declare (not safe)) (##type-super _%klass106161%_)))
            (if (not _%klass106161%_)
                '#f
                (error '"not a class or false" _%klass106161%_)))))
    (define base-struct/2
      (lambda (_%klass1106146%_ _%klass2106147%_)
        (let ((_%s1106149%_ (base-struct/1 _%klass1106146%_))
              (_%s2106150%_ (base-struct/1 _%klass2106147%_)))
          (if (or (not _%s1106149%_)
                  (and _%s2106150%_ (substruct? _%s1106149%_ _%s2106150%_)))
              _%s2106150%_
              (if (or (not _%s2106150%_)
                      (and _%s1106149%_
                           (substruct? _%s2106150%_ _%s1106149%_)))
                  _%s1106149%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1106146%_
                         _%klass2106147%_
                         _%s1106149%_
                         _%s2106150%_))))))
    (define base-struct/list
      (lambda (_%all-supers106030%_)
        (let* ((_%all-supers106031106056%_ _%all-supers106030%_)
               (_%E106036106060%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers106031106056%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K106054106143%_ (lambda () '#f))
                (_%K106051106129%_
                 (lambda (_%x106127%_) (base-struct/1 _%x106127%_)))
                (_%K106046106106%_
                 (lambda (_%y106103%_ _%x106104%_)
                   (base-struct/2 _%x106104%_ _%y106103%_)))
                (_%K106037106067%_
                 (lambda (_%y106064%_ _%x106065%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x106065%_ _%y106064%_)))))
            (let* ((_%__match108243108244%_
                    (lambda (_%hd106038106070%_ _%tl106039106072%_)
                      (let ((_%x106075%_ _%hd106038106070%_))
                        (letrec ((_%splice-rest106041106077%_
                                  (lambda (_%rest106045106084%_ _%y106086%_)
                                    (if (null? _%rest106045106084%_)
                                        (_%K106037106067%_
                                         _%y106086%_
                                         _%x106075%_)
                                        (_%E106036106060%_))))
                                 (_%splice-try106043106079%_
                                  (lambda (_%hd106044106088%_
                                           _%rest106045106090%_
                                           _%y106040106091%_)
                                    (let ((_%y106094%_ _%hd106044106088%_))
                                      (_%splice-loop106042106081%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest106045106090%_))
                                       (cons _%y106094%_ _%y106040106091%_)))))
                                 (_%splice-loop106042106081%_
                                  (lambda (_%rest106045106096%_
                                           _%y106040106097%_)
                                    (if (pair? _%rest106045106096%_)
                                        (_%splice-try106043106079%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest106045106096%_))
                                         _%rest106045106096%_
                                         _%y106040106097%_)
                                        (_%splice-rest106041106077%_
                                         _%rest106045106096%_
                                         (reverse _%y106040106097%_))))))
                          (_%splice-loop106042106081%_
                           _%tl106039106072%_
                           '())))))
                   (_%try-match106033106139%_
                    (lambda ()
                      (if (pair? _%all-supers106031106056%_)
                          (let ((_%tl106053106134%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers106031106056%_)))
                                (_%hd106052106132%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers106031106056%_))))
                            (if (null? _%tl106053106134%_)
                                (let ((_%x106137%_ _%hd106052106132%_))
                                  (base-struct/1 _%x106137%_))
                                (if (pair? _%tl106053106134%_)
                                    (let ((_%tl106050106118%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl106053106134%_)))
                                          (_%hd106049106116%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl106053106134%_))))
                                      (if (null? _%tl106050106118%_)
                                          (let ((_%x106114%_
                                                 _%hd106052106132%_)
                                                (_%y106121%_
                                                 _%hd106049106116%_))
                                            (_%K106046106106%_
                                             _%y106121%_
                                             _%x106114%_))
                                          (_%__match108243108244%_
                                           _%hd106052106132%_
                                           _%tl106053106134%_)))
                                    (_%__match108243108244%_
                                     _%hd106052106132%_
                                     _%tl106053106134%_))))
                          (_%E106036106060%_)))))
              (if (null? _%all-supers106031106056%_)
                  (_%K106054106143%_)
                  (_%try-match106033106139%_)))))))
    (define base-struct
      (lambda _%all-supers106028%_ (base-struct/list _%all-supers106028%_)))
    (define find-super-constructor
      (lambda (_%super105979%_)
        (let _%lp105981%_ ((_%rest105983%_ _%super105979%_)
                           (_%constructor105984%_ '#f))
          (let* ((_%rest105985105993%_ _%rest105983%_)
                 (_%else105987106001%_ (lambda () _%constructor105984%_))
                 (_%K105989106016%_
                  (lambda (_%rest106004%_ _%hd106005%_)
                    (let ((_%$e106007%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd106005%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e106007%_
                          ((lambda (_%xconstructor106010%_)
                             (if (or (not _%constructor105984%_)
                                     (eq? _%constructor105984%_
                                          _%xconstructor106010%_))
                                 (_%lp105981%_
                                  _%rest106004%_
                                  _%xconstructor106010%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor105984%_
                                        _%xconstructor106010%_)))
                           _%$e106007%_)
                          (_%lp105981%_
                           _%rest106004%_
                           _%constructor105984%_))))))
            (if (pair? _%rest105985105993%_)
                (let ((_%hd105990106019%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest105985105993%_)))
                      (_%tl105991106021%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest105985105993%_))))
                  (let* ((_%hd106024%_ _%hd105990106019%_)
                         (_%rest106026%_ _%tl105991106021%_))
                    (_%K105989106016%_ _%rest106026%_ _%hd106024%_)))
                (_%else105987106001%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list105955%_ _%direct-slots105956%_)
        (let* ((_%next-slot105958%_ '1)
               (_%slot-table105960%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots105962%_ '(__class))
               (_%process-slot105966%_
                (lambda (_%slot105964%_)
                  (if (symbol? _%slot105964%_)
                      '#!void
                      (error '"invalid slot name" _%slot105964%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table105960%_
                              _%slot105964%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table105960%_
                           _%slot105964%_
                           _%next-slot105958%_))
                        (let ((__tmp108285
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot105964%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table105960%_
                           __tmp108285
                           _%next-slot105958%_))
                        (set! _%r-slots105962%_
                              (cons _%slot105964%_ _%r-slots105962%_))
                        (set! _%next-slot105958%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot105958%_ '1))))
                      '#!void)))
               (_%process-slots105972%_
                (lambda (_%g105967105969%_)
                  (for-each _%process-slot105966%_ _%g105967105969%_))))
          (let ((__tmp108287
                 (lambda (_%mixin105975%_)
                   (_%process-slots105972%_
                    (let ((__tmp108288
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin105975%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp108288 '())))))
                (__tmp108286 (reverse _%class-precedence-list105955%_)))
            (declare (not safe))
            (##for-each __tmp108287 __tmp108286))
          (_%process-slots105972%_ _%direct-slots105956%_)
          (let ((_%slot-vector105977%_
                 (list->vector
                  (let ()
                    (declare (not safe))
                    (##reverse _%r-slots105962%_)))))
            (values _%slot-vector105977%_ _%slot-table105960%_)))))
    (define make-class-type
      (lambda (_%id105880%_
               _%name105881%_
               _%direct-supers105882%_
               _%direct-slots105883%_
               _%properties105884%_
               _%constructor105885%_)
        (if (symbol? _%id105880%_)
            (let ((_%id105889%_ _%id105880%_))
              (if (symbol? _%name105881%_)
                  (let ((_%name105899%_ _%name105881%_))
                    (if (list? _%direct-supers105882%_)
                        (let ((_%direct-supers105909%_
                               _%direct-supers105882%_))
                          (if (list? _%direct-slots105883%_)
                              (let ((_%direct-slots105919%_
                                     _%direct-slots105883%_))
                                (if (list? _%properties105884%_)
                                    (let ((_%properties105929%_
                                           _%properties105884%_))
                                      (if ((lambda (_%$obj105938%_)
                                             (or (not _%$obj105938%_)
                                                 (symbol? _%$obj105938%_)))
                                           _%constructor105885%_)
                                          (let ((_%constructor105945%_
                                                 _%constructor105885%_))
                                            (__make-class-type
                                             _%id105889%_
                                             _%name105899%_
                                             _%direct-supers105909%_
                                             _%direct-slots105919%_
                                             _%properties105929%_
                                             _%constructor105945%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor105885%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties105884%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots105883%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers105882%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name105881%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id105880%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id105749%_
               _%name105750%_
               _%direct-supers105751%_
               _%direct-slots105752%_
               _%properties105753%_
               _%constructor105754%_)
        (let* ((_%id105757%_ _%id105749%_)
               (_%name105765%_ _%name105750%_)
               (_%direct-supers105773%_ _%direct-supers105751%_)
               (_%direct-slots105781%_ _%direct-slots105752%_)
               (_%properties105789%_ _%properties105753%_)
               (_%constructor105797%_ _%constructor105754%_))
          (let ((_%$e105809%_
                 (let ((__tmp108289
                        (lambda (_%$obj105806%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj105806%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp108289 _%direct-supers105773%_))))
            (if _%$e105809%_
                ((lambda (_%g105811105813%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g105811105813%_))
                 _%$e105809%_)
                (let ((_%$e105816%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final?
                                 _%direct-supers105773%_))))
                  (if _%$e105816%_
                      ((lambda (_%g105818105820%_)
                         (error '"Cannot extend final class"
                                _%g105818105820%_))
                       _%$e105816%_)
                      '#!void))))
          (let ((_g108290_ (compute-precedence-list _%direct-supers105773%_)))
            (begin
              (let ((_g108291_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g108290_)
                           (##values-length _g108290_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g108291_ 2)))
                    (error "Context expects 2 values" _g108291_)))
              (let ((_%precedence-list105823%_
                     (let () (declare (not safe)) (##values-ref _g108290_ 0)))
                    (_%struct-super105824%_
                     (let () (declare (not safe)) (##values-ref _g108290_ 1))))
                (let ((_g108292_
                       (compute-class-slots
                        _%precedence-list105823%_
                        _%direct-slots105781%_)))
                  (begin
                    (let ((_g108293_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g108292_)
                                 (##values-length _g108292_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g108293_ 2)))
                          (error "Context expects 2 values" _g108293_)))
                    (let ((_%slot-vector105826%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g108292_ 0)))
                          (_%slot-table105827%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g108292_ 1))))
                      (let* ((_%properties105829%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots105781%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers105773%_)
                                          _%properties105789%_)))
                             (_%constructor*105834%_
                              (let ((_%$e105831%_ _%constructor105797%_))
                                (if _%$e105831%_
                                    _%$e105831%_
                                    (find-super-constructor
                                     _%direct-supers105773%_))))
                             (_%precedence-list105877%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties105829%_))
                                      (memq object::t
                                            _%precedence-list105823%_))
                                  _%precedence-list105823%_
                                  (let _%loop105839%_ ((_%tail105841%_
                                                        _%precedence-list105823%_)
                                                       (_%head105842%_ '()))
                                    (let* ((_%tail105843105851%_
                                            _%tail105841%_)
                                           (_%else105845105859%_
                                            (lambda ()
                                              (let ((__tmp108294
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp108294
                                                 _%head105842%_))))
                                           (_%K105847105865%_
                                            (lambda (_%rest105862%_
                                                     _%hd105863%_)
                                              (if (eq? _%hd105863%_ t::t)
                                                  (let ((__tmp108295
                                                         (cons object::t
                                                               _%tail105841%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp108295
                                                     _%head105842%_))
                                                  (_%loop105839%_
                                                   _%rest105862%_
                                                   (cons _%hd105863%_
                                                         _%head105842%_))))))
                                      (if (pair? _%tail105843105851%_)
                                          (let ((_%hd105848105868%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail105843105851%_)))
                                                (_%tl105849105870%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail105843105851%_))))
                                            (let* ((_%hd105873%_
                                                    _%hd105848105868%_)
                                                   (_%rest105875%_
                                                    _%tl105849105870%_))
                                              (_%K105847105865%_
                                               _%rest105875%_
                                               _%hd105873%_)))
                                          (_%else105845105859%_)))))))
                        (make-class-type-descriptor
                         _%id105757%_
                         _%name105765%_
                         _%struct-super105824%_
                         _%precedence-list105877%_
                         _%slot-vector105826%_
                         _%properties105829%_
                         _%constructor*105834%_
                         _%slot-table105827%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass105735%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105735%_ 'class))
            (let ((_%klass105739%_ _%klass105735%_))
              (__class-precedence-list _%klass105739%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass105735%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass105723%_)
        (let ((_%klass105726%_ _%klass105723%_))
          (cons _%klass105726%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass105726%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers105720%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers105720%_))))
    (define make-class-predicate
      (lambda (_%klass105706%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105706%_ 'class))
            (let ((_%klass105710%_ _%klass105706%_))
              (__make-class-predicate _%klass105710%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass105706%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass105677%_)
        (let* ((_%klass105680%_ _%klass105677%_)
               (_%tid105689%_
                (let () (declare (not safe)) (##type-id _%klass105680%_))))
          (if (__class-type-final? _%klass105680%_)
              (lambda (_%g105691105693%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g105691105693%_
                   _%tid105689%_)))
              (if (__class-type-struct? _%klass105680%_)
                  (lambda (_%g105696105698%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%g105696105698%_
                       _%tid105689%_)))
                  (lambda (_%g105701105703%_)
                    (__class-instance? _%klass105680%_ _%g105701105703%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass105652%_ _%slot105653%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105652%_ 'class))
            (let ((_%klass105657%_ _%klass105652%_))
              (if (symbol? _%slot105653%_)
                  (let ((_%slot105667%_ _%slot105653%_))
                    (__make-class-slot-accessor
                     _%klass105657%_
                     _%slot105667%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot105653%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass105652%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass105620%_ _%slot105621%_)
        (let* ((_%klass105624%_ _%klass105620%_)
               (_%slot105632%_ _%slot105621%_)
               (_%field105641%_
                (let ((__tmp108296
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass105624%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp108296 _%slot105632%_ '#f))))
          (if (not _%field105641%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass105624%_
                       'slot:
                       _%slot105632%_)
                '#!void)
              (if (__class-type-final? _%klass105624%_)
                  (make-final-slot-accessor
                   _%klass105624%_
                   _%slot105632%_
                   _%field105641%_)
                  (if (__class-type-struct? _%klass105624%_)
                      (make-struct-slot-accessor
                       _%klass105624%_
                       _%slot105632%_
                       _%field105641%_)
                      (if (let ((_%strukt105647%_
                                 (base-struct/1 _%klass105624%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt105647%_
                                    'class))
                                 (let ((__tmp108297
                                        (let ((__tmp108298
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt105647%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp108298))))
                                   (declare (not safe))
                                   (##fx< _%field105641%_ __tmp108297))))
                          (make-struct-subclass-slot-accessor
                           _%klass105624%_
                           _%slot105632%_
                           _%field105641%_)
                          (make-class-cached-slot-accessor
                           _%klass105624%_
                           _%slot105632%_
                           _%field105641%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass105595%_ _%slot105596%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105595%_ 'class))
            (let ((_%klass105600%_ _%klass105595%_))
              (if (symbol? _%slot105596%_)
                  (let ((_%slot105610%_ _%slot105596%_))
                    (__make-class-slot-mutator _%klass105600%_ _%slot105610%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot105596%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass105595%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass105563%_ _%slot105564%_)
        (let* ((_%klass105567%_ _%klass105563%_)
               (_%slot105575%_ _%slot105564%_)
               (_%field105584%_
                (let ((__tmp108299
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass105567%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp108299 _%slot105575%_ '#f))))
          (if (not _%field105584%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass105567%_
                       'slot:
                       _%slot105575%_)
                '#!void)
              (if (__class-type-final? _%klass105567%_)
                  (make-final-slot-mutator
                   _%klass105567%_
                   _%slot105575%_
                   _%field105584%_)
                  (if (__class-type-struct? _%klass105567%_)
                      (make-struct-slot-mutator
                       _%klass105567%_
                       _%slot105575%_
                       _%field105584%_)
                      (if (let ((_%strukt105590%_
                                 (base-struct/1 _%klass105567%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt105590%_
                                    'class))
                                 (let ((__tmp108300
                                        (let ((__tmp108301
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt105590%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp108301))))
                                   (declare (not safe))
                                   (##fx< _%field105584%_ __tmp108300))))
                          (make-struct-subclass-slot-mutator
                           _%klass105567%_
                           _%slot105575%_
                           _%field105584%_)
                          (make-class-cached-slot-mutator
                           _%klass105567%_
                           _%slot105575%_
                           _%field105584%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass105538%_ _%slot105539%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105538%_ 'class))
            (let ((_%klass105543%_ _%klass105538%_))
              (if (symbol? _%slot105539%_)
                  (let ((_%slot105553%_ _%slot105539%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass105543%_
                     _%slot105553%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot105539%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass105538%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass105506%_ _%slot105507%_)
        (let* ((_%klass105510%_ _%klass105506%_)
               (_%slot105518%_ _%slot105507%_)
               (_%field105527%_
                (let ((__tmp108302
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass105510%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp108302 _%slot105518%_ '#f))))
          (if (not _%field105527%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass105510%_
                       'slot:
                       _%slot105518%_)
                '#!void)
              (if (__class-type-final? _%klass105510%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass105510%_
                   _%slot105518%_
                   _%field105527%_)
                  (if (__class-type-struct? _%klass105510%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass105510%_
                       _%slot105518%_
                       _%field105527%_)
                      (if (let ((_%strukt105533%_
                                 (base-struct/1 _%klass105510%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt105533%_
                                    'class))
                                 (let ((__tmp108303
                                        (let ((__tmp108304
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt105533%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp108304))))
                                   (declare (not safe))
                                   (##fx< _%field105527%_ __tmp108303))))
                          (make-struct-slot-unchecked-accessor
                           _%klass105510%_
                           _%slot105518%_
                           _%field105527%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass105510%_
                           _%slot105518%_
                           _%field105527%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass105481%_ _%slot105482%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105481%_ 'class))
            (let ((_%klass105486%_ _%klass105481%_))
              (if (symbol? _%slot105482%_)
                  (let ((_%slot105496%_ _%slot105482%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass105486%_
                     _%slot105496%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot105482%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass105481%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass105449%_ _%slot105450%_)
        (let* ((_%klass105453%_ _%klass105449%_)
               (_%slot105461%_ _%slot105450%_)
               (_%field105470%_
                (let ((__tmp108305
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass105453%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp108305 _%slot105461%_ '#f))))
          (if (not _%field105470%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass105453%_
                       'slot:
                       _%slot105461%_)
                '#!void)
              (if (__class-type-final? _%klass105453%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass105453%_
                   _%slot105461%_
                   _%field105470%_)
                  (if (__class-type-struct? _%klass105453%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass105453%_
                       _%slot105461%_
                       _%field105470%_)
                      (if (let ((_%strukt105476%_
                                 (base-struct/1 _%klass105453%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt105476%_
                                    'class))
                                 (let ((__tmp108306
                                        (let ((__tmp108307
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt105476%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp108307))))
                                   (declare (not safe))
                                   (##fx< _%field105470%_ __tmp108306))))
                          (make-struct-slot-unchecked-mutator
                           _%klass105453%_
                           _%slot105461%_
                           _%field105470%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass105453%_
                           _%slot105461%_
                           _%field105470%_))))))))
    (define not-an-instance__%
      (lambda (_%object105433%_ _%class105434%_ _%slot105435%_)
        (apply error
               '"not an instance"
               'object:
               _%object105433%_
               'class:
               _%class105434%_
               (if _%slot105435%_
                   (cons 'slot: (cons _%slot105435%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object105440%_ _%class105441%_)
        (let ((_%slot105443%_ '#f))
          (not-an-instance__%
           _%object105440%_
           _%class105441%_
           _%slot105443%_))))
    (define not-an-instance
      (lambda _g108308_
        (let ((_g108309_ (let () (declare (not safe)) (##length _g108308_))))
          (cond ((let () (declare (not safe)) (##fx= _g108309_ 2))
                 (apply not-an-instance__0 _g108308_))
                ((let () (declare (not safe)) (##fx= _g108309_ 3))
                 (apply not-an-instance__% _g108308_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g108308_))))))
    (define make-final-slot-accessor
      (lambda (_%klass105426%_ _%slot105427%_ _%field105428%_)
        (lambda (_%obj105430%_)
          (##direct-structure-ref
           _%obj105430%_
           _%field105428%_
           _%klass105426%_
           _%slot105427%_))))
    (define make-final-slot-mutator
      (lambda (_%klass105419%_ _%slot105420%_ _%field105421%_)
        (lambda (_%obj105423%_ _%val105424%_)
          (##direct-structure-set!
           _%obj105423%_
           _%val105424%_
           _%field105421%_
           _%klass105419%_
           _%slot105420%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass105413%_ _%slot105414%_ _%field105415%_)
        (lambda (_%obj105417%_)
          (##structure-ref
           _%obj105417%_
           _%field105415%_
           _%klass105413%_
           _%slot105414%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass105406%_ _%slot105407%_ _%field105408%_)
        (lambda (_%obj105410%_ _%val105411%_)
          (##structure-set!
           _%obj105410%_
           _%val105411%_
           _%field105408%_
           _%klass105406%_
           _%slot105407%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass105400%_ _%slot105401%_ _%field105402%_)
        (lambda (_%obj105404%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj105404%_
             _%field105402%_
             _%klass105400%_
             _%slot105401%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass105393%_ _%slot105394%_ _%field105395%_)
        (lambda (_%obj105397%_ _%val105398%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj105397%_
             _%val105398%_
             _%field105395%_
             _%klass105393%_
             _%slot105394%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass105387%_ _%slot105388%_ _%field105389%_)
        (lambda (_%obj105391%_)
          (if (class-instance? _%klass105387%_ _%obj105391%_)
              (unchecked-slot-ref _%obj105391%_ _%field105389%_)
              (not-an-instance__%
               _%obj105391%_
               _%klass105387%_
               _%slot105388%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass105380%_ _%slot105381%_ _%field105382%_)
        (lambda (_%obj105384%_ _%val105385%_)
          (if (class-instance? _%klass105380%_ _%obj105384%_)
              (unchecked-field-set!
               _%obj105384%_
               _%field105382%_
               _%val105385%_)
              (not-an-instance__%
               _%obj105384%_
               _%klass105380%_
               _%slot105381%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass105371%_ _%slot105372%_ _%field105373%_)
        (lambda (_%obj105375%_)
          (if (let ((__tmp108310
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass105371%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj105375%_ __tmp108310))
              (unchecked-field-ref _%obj105375%_ _%field105373%_)
              (if (class-instance? _%klass105371%_ _%obj105375%_)
                  (unchecked-slot-ref _%obj105375%_ _%slot105372%_)
                  (not-an-instance__%
                   _%obj105375%_
                   _%klass105371%_
                   _%slot105372%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass105361%_ _%slot105362%_ _%field105363%_)
        (lambda (_%obj105365%_ _%val105366%_)
          (if (let ((__tmp108311
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass105361%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj105365%_ __tmp108311))
              (unchecked-field-set!
               _%obj105365%_
               _%field105363%_
               _%val105366%_)
              (if (class-instance? _%klass105361%_ _%obj105365%_)
                  (unchecked-slot-set!
                   _%obj105365%_
                   _%slot105362%_
                   _%val105366%_)
                  (not-an-instance__%
                   _%obj105365%_
                   _%klass105361%_
                   _%slot105362%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass105355%_ _%slot105356%_ _%field105357%_)
        (lambda (_%obj105359%_)
          (if (let ((__tmp108312
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass105355%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj105359%_ __tmp108312))
              (unchecked-field-ref _%obj105359%_ _%field105357%_)
              (unchecked-slot-ref _%obj105359%_ _%slot105356%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass105348%_ _%slot105349%_ _%field105350%_)
        (lambda (_%obj105352%_ _%val105353%_)
          (if (let ((__tmp108313
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass105348%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj105352%_ __tmp108313))
              (unchecked-field-set!
               _%obj105352%_
               _%field105350%_
               _%val105353%_)
              (unchecked-slot-set!
               _%obj105352%_
               _%slot105349%_
               _%val105353%_)))))
    (define class-slot-offset
      (lambda (_%klass105323%_ _%slot105324%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105323%_ 'class))
            (let ((_%klass105328%_ _%klass105323%_))
              (if (let () (declare (not safe)) (symbolic? _%slot105324%_))
                  (let ((_%slot105338%_ _%slot105324%_))
                    (__class-slot-offset _%klass105328%_ _%slot105338%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot105324%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass105323%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass105302%_ _%slot105303%_)
        (let* ((_%klass105306%_ _%klass105302%_)
               (_%slot105314%_ _%slot105303%_)
               (__tmp108314
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass105306%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp108314 _%slot105314%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass105276%_ _%obj105277%_ _%slot105278%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105276%_ 'class))
            (let ((_%klass105282%_ _%klass105276%_))
              (if (let () (declare (not safe)) (symbolic? _%slot105278%_))
                  (let ((_%slot105292%_ _%slot105278%_))
                    (__class-slot-ref
                     _%klass105282%_
                     _%obj105277%_
                     _%slot105292%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot105278%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass105276%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass105252%_ _%obj105253%_ _%slot105254%_)
        (let* ((_%klass105257%_ _%klass105252%_)
               (_%slot105265%_ _%slot105254%_))
          (if (__class-instance? _%klass105257%_ _%obj105253%_)
              (let ((_%off105274%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj105253%_))
                      _%slot105265%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj105253%_
                 _%off105274%_
                 _%klass105257%_
                 _%slot105265%_))
              (not-an-instance__0 _%obj105253%_ _%klass105257%_)))))
    (define class-slot-set!
      (lambda (_%klass105225%_ _%obj105226%_ _%slot105227%_ _%val105228%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105225%_ 'class))
            (let ((_%klass105232%_ _%klass105225%_))
              (if (let () (declare (not safe)) (symbolic? _%slot105227%_))
                  (let ((_%slot105242%_ _%slot105227%_))
                    (__class-slot-set!
                     _%klass105232%_
                     _%obj105226%_
                     _%slot105242%_
                     _%val105228%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot105227%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass105225%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass105200%_ _%obj105201%_ _%slot105202%_ _%val105203%_)
        (let* ((_%klass105206%_ _%klass105200%_)
               (_%slot105214%_ _%slot105202%_))
          (if (__class-instance? _%klass105206%_ _%obj105201%_)
              (let ((_%off105223%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj105201%_))
                      _%slot105214%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj105201%_
                 _%val105203%_
                 _%off105223%_
                 _%klass105206%_
                 _%slot105214%_))
              (not-an-instance__0 _%obj105201%_ _%klass105206%_)))))
    (define unchecked-field-ref
      (lambda (_%obj105197%_ _%off105198%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj105197%_ _%off105198%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj105193%_ _%off105194%_ _%val105195%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj105193%_
           _%val105195%_
           _%off105194%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj105190%_ _%slot105191%_)
        (unchecked-field-ref
         _%obj105190%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj105190%_))
          _%slot105191%_))))
    (define unchecked-slot-set!
      (lambda (_%obj105186%_ _%slot105187%_ _%val105188%_)
        (unchecked-field-set!
         _%obj105186%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj105186%_))
          _%slot105187%_)
         _%val105188%_)))
    (define slot-ref__%
      (lambda (_%obj105148%_ _%slot105149%_ _%E105150%_)
        (if (symbol? _%slot105149%_)
            (let ((_%slot105154%_ _%slot105149%_))
              (if (procedure? _%E105150%_)
                  (let ((_%E105164%_ _%E105150%_))
                    (__slot-ref__% _%obj105148%_ _%slot105154%_ _%E105164%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E105150%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot105149%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj105177%_ _%slot105178%_)
        (let ((_%E105180%_ __slot-error))
          (slot-ref__% _%obj105177%_ _%slot105178%_ _%E105180%_))))
    (define slot-ref
      (lambda _g108315_
        (let ((_g108316_ (let () (declare (not safe)) (##length _g108315_))))
          (cond ((let () (declare (not safe)) (##fx= _g108316_ 2))
                 (apply slot-ref__0 _g108315_))
                ((let () (declare (not safe)) (##fx= _g108316_ 3))
                 (apply slot-ref__% _g108315_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g108315_))))))
    (define __slot-ref__%
      (lambda (_%obj105104%_ _%slot105105%_ _%E105106%_)
        (let* ((_%slot105109%_ _%slot105105%_)
               (_%E105117%_ _%E105106%_)
               (_%klass105126%_ (class-of _%obj105104%_))
               (_%$e105129%_
                (__class-slot-offset _%klass105126%_ _%slot105109%_)))
          (if _%$e105129%_
              ((lambda (_%off105132%_)
                 (unchecked-field-ref _%obj105104%_ _%off105132%_))
               _%$e105129%_)
              (let ()
                (declare (not safe))
                (_%E105117%_ _%obj105104%_ _%slot105109%_))))))
    (define __slot-ref__0
      (lambda (_%obj105138%_ _%slot105139%_)
        (let ((_%E105141%_ __slot-error))
          (__slot-ref__% _%obj105138%_ _%slot105139%_ _%E105141%_))))
    (define __slot-ref
      (lambda _g108317_
        (let ((_g108318_ (let () (declare (not safe)) (##length _g108317_))))
          (cond ((let () (declare (not safe)) (##fx= _g108318_ 2))
                 (apply __slot-ref__0 _g108317_))
                ((let () (declare (not safe)) (##fx= _g108318_ 3))
                 (apply __slot-ref__% _g108317_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g108317_))))))
    (define slot-set!__%
      (lambda (_%obj105062%_ _%slot105063%_ _%val105064%_ _%E105065%_)
        (if (symbol? _%slot105063%_)
            (let ((_%slot105069%_ _%slot105063%_))
              (if (procedure? _%E105065%_)
                  (let ((_%E105079%_ _%E105065%_))
                    (__slot-set!__%
                     _%obj105062%_
                     _%slot105069%_
                     _%val105064%_
                     _%E105079%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E105065%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot105063%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj105092%_ _%slot105093%_ _%val105094%_)
        (let ((_%E105096%_ __slot-error))
          (slot-set!__%
           _%obj105092%_
           _%slot105093%_
           _%val105094%_
           _%E105096%_))))
    (define slot-set!
      (lambda _g108319_
        (let ((_g108320_ (let () (declare (not safe)) (##length _g108319_))))
          (cond ((let () (declare (not safe)) (##fx= _g108320_ 3))
                 (apply slot-set!__0 _g108319_))
                ((let () (declare (not safe)) (##fx= _g108320_ 4))
                 (apply slot-set!__% _g108319_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g108319_))))))
    (define __slot-set!__%
      (lambda (_%obj105015%_ _%slot105016%_ _%val105017%_ _%E105018%_)
        (let* ((_%slot105021%_ _%slot105016%_)
               (_%E105029%_ _%E105018%_)
               (_%klass105038%_ (class-of _%obj105015%_))
               (_%$e105041%_
                (__class-slot-offset _%klass105038%_ _%slot105021%_)))
          (if _%$e105041%_
              ((lambda (_%off105044%_)
                 (unchecked-field-set!
                  _%obj105015%_
                  _%off105044%_
                  _%val105017%_))
               _%$e105041%_)
              (let ()
                (declare (not safe))
                (_%E105029%_ _%obj105015%_ _%slot105021%_))))))
    (define __slot-set!__0
      (lambda (_%obj105050%_ _%slot105051%_ _%val105052%_)
        (let ((_%E105054%_ __slot-error))
          (__slot-set!__%
           _%obj105050%_
           _%slot105051%_
           _%val105052%_
           _%E105054%_))))
    (define __slot-set!
      (lambda _g108321_
        (let ((_g108322_ (let () (declare (not safe)) (##length _g108321_))))
          (cond ((let () (declare (not safe)) (##fx= _g108322_ 3))
                 (apply __slot-set!__0 _g108321_))
                ((let () (declare (not safe)) (##fx= _g108322_ 4))
                 (apply __slot-set!__% _g108321_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g108321_))))))
    (define __slot-error
      (lambda (_%obj105011%_ _%slot105012%_)
        (error '"Cannot find slot"
               'object:
               _%obj105011%_
               'slot:
               _%slot105012%_)))
    (define subclass?
      (lambda (_%maybe-sub-class104986%_ _%maybe-super-class104987%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class104986%_ 'class))
            (let ((_%maybe-sub-class104991%_ _%maybe-sub-class104986%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class104987%_
                     'class))
                  (let ((_%maybe-super-class105001%_
                         _%maybe-super-class104987%_))
                    (__subclass?
                     _%maybe-sub-class104991%_
                     _%maybe-super-class105001%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class104987%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class104986%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class104958%_ _%maybe-super-class104959%_)
        (let* ((_%maybe-sub-class104962%_ _%maybe-sub-class104958%_)
               (_%maybe-super-class104970%_ _%maybe-super-class104959%_)
               (_%maybe-super-class-id104979%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class104970%_)))
               (_%$e104981%_
                (eq? _%maybe-super-class-id104979%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class104962%_)))))
          (if _%$e104981%_
              _%$e104981%_
              (let ((__tmp108324
                     (lambda (_%super-class104984%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class104984%_))
                            _%maybe-super-class-id104979%_)))
                    (__tmp108323
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class104962%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp108324 __tmp108323))))))
    (define object?
      (lambda (_%o104955%_)
        (if (let () (declare (not safe)) (##structure? _%o104955%_))
            (let ((__tmp108325
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o104955%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp108325 'class))
            '#f)))
    (define object-type
      (lambda (_%o104950%_)
        (if (let () (declare (not safe)) (##structure? _%o104950%_))
            (let ((_%klass104953%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o104950%_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass104953%_ 'class))
                  _%klass104953%_
                  (begin
                    (error '"not an object" _%o104950%_ _%klass104953%_)
                    '#!void)))
            (begin (error '"not an object" _%o104950%_) '#!void))))
    (define direct-instance?
      (lambda (_%klass104935%_ _%obj104936%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass104935%_ 'class))
            (let ((_%klass104940%_ _%klass104935%_))
              (__direct-instance? _%klass104940%_ _%obj104936%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass104935%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass104922%_ _%obj104923%_)
        (let* ((_%klass104926%_ _%klass104922%_)
               (__tmp108326
                (let () (declare (not safe)) (##type-id _%klass104926%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj104923%_ __tmp108326))))
    (define immediate-instance-of?
      (lambda (_%klass104918%_ _%obj104919%_)
        (if (let () (declare (not safe)) (##structure? _%obj104919%_))
            (eq? _%klass104918%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj104919%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass104903%_ _%obj104904%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass104903%_ 'class))
            (let ((_%klass104908%_ _%klass104903%_))
              (__struct-instance? _%klass104908%_ _%obj104904%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass104903%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass104890%_ _%obj104891%_)
        (let* ((_%klass104894%_ _%klass104890%_)
               (__tmp108327
                (let () (declare (not safe)) (##type-id _%klass104894%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj104891%_ __tmp108327))))
    (define class-instance?
      (lambda (_%klass104875%_ _%obj104876%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass104875%_ 'class))
            (let ((_%klass104880%_ _%klass104875%_))
              (__class-instance? _%klass104880%_ _%obj104876%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass104875%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass104860%_ _%obj104861%_)
        (let* ((_%klass104864%_ _%klass104860%_)
               (_%type104873%_ (class-of _%obj104861%_)))
          (__subclass? _%type104873%_ _%klass104864%_))))
    (define make-object
      (lambda (_%klass104835%_ _%k104836%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass104835%_ 'class))
            (let ((_%klass104840%_ _%klass104835%_))
              (if (fixnum? _%k104836%_)
                  (let ((_%k104850%_ _%k104836%_))
                    (__make-object _%klass104840%_ _%k104850%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k104836%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass104835%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass104812%_ _%k104813%_)
        (let* ((_%klass104816%_ _%klass104812%_) (_%k104824%_ _%k104813%_))
          (if (__class-type-system? _%klass104816%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass104816%_)
                '#!void)
              (let ((_%obj104833%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass104816%_ _%k104824%_))))
                (object-fill! _%obj104833%_ '#f))))))
    (define object-fill!
      (lambda (_%obj104797%_ _%fill104798%_)
        (if '#t
            (let ((_%obj104802%_ _%obj104797%_))
              (__object-fill! _%obj104802%_ _%fill104798%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj104797%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj104779%_ _%fill104780%_)
        (let ((_%obj104783%_ _%obj104779%_))
          (let _%loop104792%_ ((_%i104794%_
                                (let ((__tmp108328
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj104783%_))))
                                  (declare (not safe))
                                  (##fx- __tmp108328 '1))))
            (if (let () (declare (not safe)) (##fx> _%i104794%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj104783%_
                     _%fill104780%_
                     _%i104794%_
                     '#f
                     '#f))
                  (_%loop104792%_
                   (let () (declare (not safe)) (##fx- _%i104794%_ '1))))
                _%obj104783%_)))))
    (define new-instance
      (lambda (_%klass104765%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass104765%_ 'class))
            (let ((_%klass104769%_ _%klass104765%_))
              (__new-instance _%klass104769%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass104765%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass104753%_)
        (let* ((_%klass104756%_ _%klass104753%_)
               (__obj108245
                (let ((__tmp108329
                       (let ((__tmp108330
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass104756%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp108330))))
                  (declare (not safe))
                  (##make-structure _%klass104756%_ __tmp108329))))
          (object-fill! __obj108245 '#f)
          __obj108245)))
    (define make-instance
      (lambda (_%klass104738%_ . _%args104739%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass104738%_ 'class))
            (let ((_%klass104743%_ _%klass104738%_))
              (declare (not safe))
              (##apply __make-instance _%klass104743%_ _%args104739%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass104738%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass104710%_ . _%args104711%_)
        (let* ((_%klass104714%_ _%klass104710%_)
               (_%$e104723%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass104714%_ '10 '#f '#f))))
          (if _%$e104723%_
              ((lambda (_%kons-id104726%_)
                 (let ((_%obj104728%_ (__new-instance _%klass104714%_)))
                   (___constructor-init!
                    _%klass104714%_
                    _%kons-id104726%_
                    _%obj104728%_
                    _%args104711%_)
                   _%obj104728%_))
               _%$e104723%_)
              (if (__class-type-metaclass? _%klass104714%_)
                  (let ((_%obj104731%_ (__new-instance _%klass104714%_)))
                    (__metaclass-instance-init!
                     _%klass104714%_
                     _%obj104731%_
                     _%args104711%_)
                    _%obj104731%_)
                  (if (__class-type-struct? _%klass104714%_)
                      (if (let ((__tmp108332
                                 (__class-type-field-count _%klass104714%_))
                                (__tmp108331
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args104711%_))))
                            (declare (not safe))
                            (##fx= __tmp108332 __tmp108331))
                          (apply ##structure _%klass104714%_ _%args104711%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass104714%_
                                   'slots:
                                   (__class-type-slot-list _%klass104714%_)
                                   'args:
                                   _%args104711%_)
                            '#!void))
                      (let ((_%obj104734%_ (__new-instance _%klass104714%_)))
                        (___class-instance-init!
                         _%klass104714%_
                         _%obj104734%_
                         _%args104711%_)
                        _%obj104734%_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj104695%_ . _%args104696%_)
        (if '#t
            (let ((_%obj104700%_ _%obj104695%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj104700%_ _%args104696%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj104695%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj104682%_ . _%args104683%_)
        (let ((_%obj104686%_ _%obj104682%_))
          (if (let ((__tmp108334
                     (let () (declare (not safe)) (##length _%args104683%_)))
                    (__tmp108333
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj104686%_))))
                (declare (not safe))
                (##fx< __tmp108334 __tmp108333))
              (___struct-instance-init! _%obj104686%_ _%args104683%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj104686%_
                     'args:
                     _%args104683%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj104641%_ _%args104642%_)
        (let _%lp104644%_ ((_%k104646%_ '1) (_%rest104647%_ _%args104642%_))
          (let* ((_%rest104648104656%_ _%rest104647%_)
                 (_%else104650104664%_ (lambda () _%obj104641%_))
                 (_%K104652104670%_
                  (lambda (_%rest104667%_ _%hd104668%_)
                    (unchecked-field-set!
                     _%obj104641%_
                     _%k104646%_
                     _%hd104668%_)
                    (_%lp104644%_
                     (let () (declare (not safe)) (##fx+ _%k104646%_ '1))
                     _%rest104667%_))))
            (if (pair? _%rest104648104656%_)
                (let ((_%hd104653104673%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest104648104656%_)))
                      (_%tl104654104675%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest104648104656%_))))
                  (let* ((_%hd104678%_ _%hd104653104673%_)
                         (_%rest104680%_ _%tl104654104675%_))
                    (_%K104652104670%_ _%rest104680%_ _%hd104678%_)))
                (_%else104650104664%_))))))
    (define class-instance-init!
      (lambda (_%obj104626%_ . _%args104627%_)
        (if '#t
            (let ((_%obj104631%_ _%obj104626%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj104631%_ _%args104627%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj104626%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj104613%_ . _%args104614%_)
        (let ((_%obj104617%_ _%obj104613%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj104617%_))
           _%obj104617%_
           _%args104614%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass104555%_ _%obj104556%_ _%args104557%_)
        (let _%lp104559%_ ((_%rest104561%_ _%args104557%_))
          (let* ((_%rest104562104572%_ _%rest104561%_)
                 (_%else104564104580%_
                  (lambda ()
                    (if (null? _%rest104561%_)
                        _%obj104556%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass104555%_
                               'rest:
                               _%rest104561%_))))
                 (_%K104566104594%_
                  (lambda (_%rest104583%_ _%val104584%_ _%key104585%_)
                    (if (keyword? _%key104585%_)
                        (let ((_%$e104588%_
                               (__class-slot-offset
                                _%klass104555%_
                                _%key104585%_)))
                          (if _%$e104588%_
                              ((lambda (_%off104591%_)
                                 (unchecked-field-set!
                                  _%obj104556%_
                                  _%off104591%_
                                  _%val104584%_)
                                 (_%lp104559%_ _%rest104583%_))
                               _%$e104588%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass104555%_
                                     'slot:
                                     _%key104585%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key104585%_)))))
            (if (pair? _%rest104562104572%_)
                (let ((_%hd104567104597%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest104562104572%_)))
                      (_%tl104568104599%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest104562104572%_))))
                  (let ((_%key104602%_ _%hd104567104597%_))
                    (if (pair? _%tl104568104599%_)
                        (let ((_%hd104569104604%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl104568104599%_)))
                              (_%tl104570104606%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl104568104599%_))))
                          (let* ((_%val104609%_ _%hd104569104604%_)
                                 (_%rest104611%_ _%tl104570104606%_))
                            (_%K104566104594%_
                             _%rest104611%_
                             _%val104609%_
                             _%key104602%_)))
                        (_%else104564104580%_))))
                (_%else104564104580%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass104551%_ _%obj104552%_ _%args104553%_)
        (apply call-method
               _%klass104551%_
               'instance-init!
               _%obj104552%_
               _%args104553%_)))
    (define constructor-init!
      (lambda (_%klass104514%_
               _%kons-id104515%_
               _%obj104516%_
               .
               _%args104517%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass104514%_ 'class))
            (let ((_%klass104521%_ _%klass104514%_))
              (if (symbol? _%kons-id104515%_)
                  (let ((_%kons-id104531%_ _%kons-id104515%_))
                    (if '#t
                        (let ((_%obj104541%_ _%obj104516%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass104521%_
                                   _%kons-id104531%_
                                   _%obj104541%_
                                   _%args104517%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                           'contract:
                           'true
                           'value:
                           _%obj104516%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id104515%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass104514%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass104483%_
               _%kons-id104484%_
               _%obj104485%_
               .
               _%args104486%_)
        (let* ((_%klass104489%_ _%klass104483%_)
               (_%kons-id104497%_ _%kons-id104484%_)
               (_%obj104505%_ _%obj104485%_))
          (___constructor-init!
           _%klass104489%_
           _%kons-id104497%_
           _%obj104505%_
           _%args104486%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass104472%_ _%kons-id104473%_ _%obj104474%_ _%args104475%_)
        (let ((_%$e104477%_
               (__find-method
                _%klass104472%_
                _%obj104474%_
                _%kons-id104473%_)))
          (if _%$e104477%_
              ((lambda (_%kons104480%_)
                 (apply _%kons104480%_ _%obj104474%_ _%args104475%_)
                 _%obj104474%_)
               _%$e104477%_)
              (error '"missing constructor"
                     'class:
                     _%klass104472%_
                     'method:
                     _%kons-id104473%_)))))
    (define struct-copy
      (lambda (_%struct104458%_)
        (if '#t
            (let ((_%struct104462%_ _%struct104458%_))
              (__struct-copy _%struct104462%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct104458%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct104446%_)
        (let ((_%struct104449%_ _%struct104446%_))
          (declare (not safe))
          (##structure-copy _%struct104449%_))))
    (define struct->list
      (lambda (_%obj104432%_)
        (if '#t
            (let ((_%obj104436%_ _%obj104432%_))
              (__struct->list _%obj104436%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj104432%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj104413%_)
        (let* ((_%obj104416%_ _%obj104413%_)
               (_%len104425%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj104416%_))))
          (let _%recur104427%_ ((_%i104429%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i104429%_ _%len104425%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj104416%_
                         _%i104429%_
                         '#f
                         '#f))
                      (_%recur104427%_
                       (let () (declare (not safe)) (##fx+ _%i104429%_ '1))))
                '())))))
    (define class->list
      (lambda (_%obj104399%_)
        (if '#t
            (let ((_%obj104403%_ _%obj104399%_)) (__class->list _%obj104403%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@842.20-842.23"
               'contract:
               'true
               'value:
               _%obj104399%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj104375%_)
        (let* ((_%obj104378%_ _%obj104375%_)
               (_%klass104387%_
                (let () (declare (not safe)) (##structure-type _%obj104378%_)))
               (_%slot-vector104389%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass104387%_ '7 '#f '#f))))
          (let _%loop104391%_ ((_%index104393%_
                                (let ((__tmp108335
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector104389%_))))
                                  (declare (not safe))
                                  (##fx- __tmp108335 '1)))
                               (_%plist104394%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index104393%_ '1))
                (cons _%klass104387%_ _%plist104394%_)
                (let ((_%slot104397%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector104389%_
                          _%index104393%_))))
                  (_%loop104391%_
                   (let () (declare (not safe)) (##fx- _%index104393%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot104397%_))
                         (cons (unchecked-field-ref
                                _%obj104378%_
                                _%index104393%_)
                               _%plist104394%_)))))))))
    (define call-method
      (lambda (_%obj104359%_ _%id104360%_ . _%args104361%_)
        (if (symbol? _%id104360%_)
            (let ((_%id104365%_ _%id104360%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj104359%_
                       _%id104365%_
                       _%args104361%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@857.24-857.26"
               'contract:
               'symbol?
               'value:
               _%id104360%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj104328%_ _%id104329%_ . _%args104330%_)
        (let* ((_%id104333%_ _%id104329%_)
               (_%$e104342%_ (__method-ref _%obj104328%_ _%id104333%_)))
          (if _%$e104342%_
              ((lambda (_%method104345%_)
                 (let ((_%method104347%_ _%method104345%_))
                   (apply _%method104347%_ _%obj104328%_ _%args104330%_)))
               _%$e104342%_)
              (error '"cannot find method"
                     'object:
                     _%obj104328%_
                     'method:
                     _%id104333%_)))))
    (define method-ref
      (lambda (_%obj104313%_ _%id104314%_)
        (if (symbol? _%id104314%_)
            (let ((_%id104318%_ _%id104314%_))
              (__method-ref _%obj104313%_ _%id104318%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@884.23-884.25"
               'contract:
               'symbol?
               'value:
               _%id104314%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj104300%_ _%id104301%_)
        (let ((_%id104304%_ _%id104301%_))
          (__find-method
           (class-of _%obj104300%_)
           _%obj104300%_
           _%id104304%_))))
    (define checked-method-ref
      (lambda (_%obj104293%_ _%id104294%_)
        (let ((_%$e104297%_ (method-ref _%obj104293%_ _%id104294%_)))
          (if _%$e104297%_
              _%$e104297%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj104293%_
                       'method:
                       _%id104294%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj104278%_ _%id104279%_)
        (if (symbol? _%id104279%_)
            (let ((_%id104283%_ _%id104279%_))
              (__bound-method-ref _%obj104278%_ _%id104283%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@892.29-892.31"
               'contract:
               'symbol?
               'value:
               _%id104279%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj104246%_ _%id104247%_)
        (let* ((_%id104250%_ _%id104247%_)
               (_%$e104259%_ (__method-ref _%obj104246%_ _%id104250%_)))
          (if _%$e104259%_
              ((lambda (_%method104262%_)
                 (let ((_%method104264%_ _%method104262%_))
                   (lambda _%args104275%_
                     (apply _%method104264%_ _%obj104246%_ _%args104275%_))))
               _%$e104259%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj104231%_ _%id104232%_)
        (if (symbol? _%id104232%_)
            (let ((_%id104236%_ _%id104232%_))
              (__checked-bound-method-ref _%obj104231%_ _%id104236%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@901.37-901.39"
               'contract:
               'symbol?
               'value:
               _%id104232%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj104214%_ _%id104215%_)
        (let* ((_%id104218%_ _%id104215%_)
               (_%method104227%_
                (checked-method-ref _%obj104214%_ _%id104218%_)))
          (lambda _%args104229%_
            (apply _%method104227%_ _%obj104214%_ _%args104229%_)))))
    (define find-method
      (lambda (_%klass104188%_ _%obj104189%_ _%id104190%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass104188%_ 'class))
            (let ((_%klass104194%_ _%klass104188%_))
              (if (symbol? _%id104190%_)
                  (let ((_%id104204%_ _%id104190%_))
                    (__find-method _%klass104194%_ _%obj104189%_ _%id104204%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@906.41-906.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id104190%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@906.20-906.25"
               'contract:
               'class-type?
               'value:
               _%klass104188%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass104161%_ _%obj104162%_ _%id104163%_)
        (let* ((_%klass104166%_ _%klass104161%_)
               (_%id104174%_ _%id104163%_)
               (_%$e104183%_
                (__direct-method-ref
                 _%klass104166%_
                 _%obj104162%_
                 _%id104174%_)))
          (if _%$e104183%_
              _%$e104183%_
              (if (__class-type-sealed? _%klass104166%_)
                  '#f
                  (__mixin-method-ref
                   _%klass104166%_
                   _%obj104162%_
                   _%id104174%_))))))
    (define mixin-find-method
      (lambda (_%mixins104145%_ _%obj104146%_ _%id104147%_)
        (if (symbol? _%id104147%_)
            (let ((_%id104151%_ _%id104147%_))
              (__mixin-find-method
               _%mixins104145%_
               _%obj104146%_
               _%id104151%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@914.37-914.39"
               'contract:
               'symbol?
               'value:
               _%id104147%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins104127%_ _%obj104128%_ _%id104129%_)
        (let* ((_%id104132%_ _%id104129%_)
               (__tmp108336
                (lambda (_%g104140104142%_)
                  (direct-method-ref
                   _%g104140104142%_
                   _%obj104128%_
                   _%id104132%_))))
          (declare (not safe))
          (__ormap1 __tmp108336 _%mixins104127%_))))
    (define direct-method-ref
      (lambda (_%klass104101%_ _%obj104102%_ _%id104103%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass104101%_ 'class))
            (let ((_%klass104107%_ _%klass104101%_))
              (if (symbol? _%id104103%_)
                  (let ((_%id104117%_ _%id104103%_))
                    (__direct-method-ref
                     _%klass104107%_
                     _%obj104102%_
                     _%id104117%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@917.47-917.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id104103%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@917.26-917.31"
               'contract:
               'class-type?
               'value:
               _%klass104101%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass104055%_ _%obj104056%_ _%id104057%_)
        (let* ((_%klass104060%_ _%klass104055%_) (_%id104068%_ _%id104057%_))
          (letrec ((_%metaclass-resolve-method104077%_
                    (lambda ()
                      (let ((__method108246
                             (__method-ref
                              _%klass104060%_
                              'direct-method-ref)))
                        (if __method108246
                            (let ()
                              (declare (not safe))
                              (__method108246
                               _%klass104060%_
                               _%obj104056%_
                               _%id104068%_))
                            (begin
                              (error '"Missing method"
                                     _%klass104060%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!104078%_
                    (lambda ()
                      (let ((_%method104098%_
                             (_%metaclass-resolve-method104077%_)))
                        (let ((__tmp108338
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass104060%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp108337
                               (if _%method104098%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp108338
                           _%id104068%_
                           __tmp108337))
                        _%method104098%_))))
            (let ((_%$e104080%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass104060%_ '11 '#f '#f))))
              (if _%$e104080%_
                  ((lambda (_%ht104083%_)
                     (let ((_%method104085%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht104083%_
                               _%id104068%_
                               '#f))))
                       (if (procedure? _%method104085%_)
                           _%method104085%_
                           (if (__class-type-metaclass? _%klass104060%_)
                               (let ((_%$e104089%_ _%method104085%_))
                                 (if (eq? 'resolved _%$e104089%_)
                                     (_%metaclass-resolve-method104077%_)
                                     (if (eq? 'unknown _%$e104089%_)
                                         '#f
                                         (_%metaclass-resolve-method!104078%_))))
                               '#f))))
                   _%$e104080%_)
                  (if (__class-type-metaclass? _%klass104060%_)
                      (let ((_%tab104094%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass104060%_
                           _%tab104094%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!104078%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass104029%_ _%obj104030%_ _%id104031%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass104029%_ 'class))
            (let ((_%klass104035%_ _%klass104029%_))
              (if (symbol? _%id104031%_)
                  (let ((_%id104045%_ _%id104031%_))
                    (__mixin-method-ref
                     _%klass104035%_
                     _%obj104030%_
                     _%id104045%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@947.46-947.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id104031%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@947.25-947.30"
               'contract:
               'class-type?
               'value:
               _%klass104029%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass104007%_ _%obj104008%_ _%id104009%_)
        (let* ((_%klass104012%_ _%klass104007%_) (_%id104020%_ _%id104009%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass104012%_ '6 '#f '#f))
           _%obj104008%_
           _%id104020%_))))
    (define bind-method!__%
      (lambda (_%klass103966%_ _%id103967%_ _%proc103968%_ _%rebind?103969%_)
        (if (symbol? _%id103967%_)
            (let ((_%id103973%_ _%id103967%_))
              (if (procedure? _%proc103968%_)
                  (let ((_%proc103983%_ _%proc103968%_))
                    (__bind-method!__%
                     _%klass103966%_
                     _%id103973%_
                     _%proc103983%_
                     _%rebind?103969%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@950.42-950.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc103968%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@950.27-950.29"
               'contract:
               'symbol?
               'value:
               _%id103967%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass103996%_ _%id103997%_ _%proc103998%_)
        (let ((_%rebind?104000%_ '#f))
          (bind-method!__%
           _%klass103996%_
           _%id103997%_
           _%proc103998%_
           _%rebind?104000%_))))
    (define bind-method!
      (lambda _g108339_
        (let ((_g108340_ (let () (declare (not safe)) (##length _g108339_))))
          (cond ((let () (declare (not safe)) (##fx= _g108340_ 3))
                 (apply bind-method!__0 _g108339_))
                ((let () (declare (not safe)) (##fx= _g108340_ 4))
                 (apply bind-method!__% _g108339_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g108339_))))))
    (define __bind-method!__%
      (lambda (_%klass103917%_ _%id103918%_ _%proc103919%_ _%rebind?103920%_)
        (let* ((_%id103923%_ _%id103918%_) (_%proc103931%_ _%proc103919%_))
          (letrec ((_%bind!103940%_
                    (lambda (_%ht103949%_)
                      (if (and (not _%rebind?103920%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht103949%_
                                  _%id103923%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass103917%_
                                 'method:
                                 _%id103923%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht103949%_
                               _%id103923%_
                               _%proc103931%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass103917%_ 'class))
                (let ((_%ht103943%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass103917%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht103943%_
                      (_%bind!103940%_ _%ht103943%_)
                      (let ((_%ht103945%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass103917%_
                           _%ht103945%_
                           '11
                           '#f
                           '#f))
                        (_%bind!103940%_ _%ht103945%_))))
                (if (let () (declare (not safe)) (##type? _%klass103917%_))
                    (__bind-method!__%
                     (__shadow-class _%klass103917%_)
                     _%id103923%_
                     _%proc103931%_
                     _%rebind?103920%_)
                    (error '"bad class; expected class or builtin type"
                           _%klass103917%_)))))))
    (define __bind-method!__0
      (lambda (_%klass103954%_ _%id103955%_ _%proc103956%_)
        (let ((_%rebind?103958%_ '#f))
          (__bind-method!__%
           _%klass103954%_
           _%id103955%_
           _%proc103956%_
           _%rebind?103958%_))))
    (define __bind-method!
      (lambda _g108341_
        (let ((_g108342_ (let () (declare (not safe)) (##length _g108341_))))
          (cond ((let () (declare (not safe)) (##fx= _g108342_ 3))
                 (apply __bind-method!__0 _g108341_))
                ((let () (declare (not safe)) (##fx= _g108342_ 4))
                 (apply __bind-method!__% _g108341_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g108341_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint103897%_ _%seed103899%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint103897%_
           procedure-hash
           eq?
           _%seed103899%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint103905%_ '#f) (_%seed103907%_ '0))
          (make-method-specializer-table__%
           _%size-hint103905%_
           _%seed103907%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint103909%_)
        (let ((_%seed103911%_ '0))
          (make-method-specializer-table__%
           _%size-hint103909%_
           _%seed103911%_))))
    (define make-method-specializer-table
      (lambda _g108343_
        (let ((_g108344_ (let () (declare (not safe)) (##length _g108343_))))
          (cond ((let () (declare (not safe)) (##fx= _g108344_ 0))
                 (apply make-method-specializer-table__0 _g108343_))
                ((let () (declare (not safe)) (##fx= _g108344_ 1))
                 (apply make-method-specializer-table__1 _g108343_))
                ((let () (declare (not safe)) (##fx= _g108344_ 2))
                 (apply make-method-specializer-table__% _g108343_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g108343_))))))
    (define method-specializer-table-ref
      (lambda (_%tab103850%_ _%key103851%_ _%default103852%_)
        (let ((_%table103854%_
               (let () (declare (not safe)) (&raw-table-table _%tab103850%_)))
              (_%seed103855%_
               (let () (declare (not safe)) (&raw-table-seed _%tab103850%_))))
          (let* ((_%h103857%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key103851%_))
                         _%seed103855%_))
                 (_%size103860%_ (vector-length _%table103854%_))
                 (_%entries103863%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size103860%_ '2)))
                 (_%start103866%_
                  (let ((__tmp108345
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h103857%_ _%entries103863%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp108345 '1))))
            (let _%loop103870%_ ((_%probe103873%_ _%start103866%_)
                                 (_%i103875%_ '1)
                                 (_%deleted103877%_ '#f))
              (let ((_%k103880%_ (vector-ref _%table103854%_ _%probe103873%_)))
                (if (eq? _%k103880%_ (macro-unused-obj))
                    _%default103852%_
                    (if (eq? _%k103880%_ (macro-deleted-obj))
                        (_%loop103870%_
                         (let ((_%next-probe103885%_
                                (fx+ _%start103866%_
                                     _%i103875%_
                                     (fx* _%i103875%_ _%i103875%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe103885%_ _%size103860%_))
                         (let () (declare (not safe)) (##fx+ _%i103875%_ '1))
                         (let ((_%$e103888%_ _%deleted103877%_))
                           (if _%$e103888%_ _%$e103888%_ _%probe103873%_)))
                        (if (eq? _%key103851%_ _%k103880%_)
                            (vector-ref
                             _%table103854%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe103873%_ '1)))
                            (_%loop103870%_
                             (let ((_%next-probe103893%_
                                    (fx+ _%start103866%_
                                         _%i103875%_
                                         (fx* _%i103875%_ _%i103875%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe103893%_
                                _%size103860%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i103875%_ '1))
                             _%deleted103877%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab103846%_ _%key103847%_ _%value103848%_)
        (if (let ((__tmp108348
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab103846%_)))
                  (__tmp108346
                   (let ((__tmp108347
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab103846%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp108347 '4))))
              (declare (not safe))
              (##fx< __tmp108348 __tmp108346))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab103846%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab103846%_
         _%key103847%_
         _%value103848%_)))
    (define __method-specializer-table-set!
      (lambda (_%tab103797%_ _%key103798%_ _%value103799%_)
        (let ((_%table103802%_
               (let () (declare (not safe)) (&raw-table-table _%tab103797%_)))
              (_%seed103803%_
               (let () (declare (not safe)) (&raw-table-seed _%tab103797%_))))
          (let* ((_%h103805%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key103798%_))
                         _%seed103803%_))
                 (_%size103808%_ (vector-length _%table103802%_))
                 (_%entries103811%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size103808%_ '2)))
                 (_%start103814%_
                  (let ((__tmp108349
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h103805%_ _%entries103811%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp108349 '1))))
            (let _%loop103818%_ ((_%probe103821%_ _%start103814%_)
                                 (_%i103823%_ '1)
                                 (_%deleted103825%_ '#f))
              (let ((_%k103828%_ (vector-ref _%table103802%_ _%probe103821%_)))
                (if (eq? _%k103828%_ (macro-unused-obj))
                    (if _%deleted103825%_
                        (begin
                          (vector-set!
                           _%table103802%_
                           _%deleted103825%_
                           _%key103798%_)
                          (vector-set!
                           _%table103802%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted103825%_ '1))
                           _%value103799%_)
                          ((lambda ()
                             (let ((__tmp108350
                                    (let ((__tmp108351
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab103797%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp108351 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab103797%_
                                __tmp108350)))))
                        (begin
                          (vector-set!
                           _%table103802%_
                           _%probe103821%_
                           _%key103798%_)
                          (vector-set!
                           _%table103802%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe103821%_ '1))
                           _%value103799%_)
                          ((lambda ()
                             (let ((__tmp108352
                                    (let ((__tmp108353
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab103797%_))))
                                      (declare (not safe))
                                      (##fx- __tmp108353 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab103797%_
                                __tmp108352))
                             (let ((__tmp108354
                                    (let ((__tmp108355
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab103797%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp108355 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab103797%_
                                __tmp108354))))))
                    (if (eq? _%k103828%_ (macro-deleted-obj))
                        (_%loop103818%_
                         (let ((_%next-probe103835%_
                                (fx+ _%start103814%_
                                     _%i103823%_
                                     (fx* _%i103823%_ _%i103823%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe103835%_ _%size103808%_))
                         (let () (declare (not safe)) (##fx+ _%i103823%_ '1))
                         (let ((_%$e103838%_ _%deleted103825%_))
                           (if _%$e103838%_ _%$e103838%_ _%probe103821%_)))
                        (if (eq? _%key103798%_ _%k103828%_)
                            (let ()
                              (vector-set!
                               _%table103802%_
                               _%probe103821%_
                               _%key103798%_)
                              (vector-set!
                               _%table103802%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe103821%_ '1))
                               _%value103799%_))
                            (_%loop103818%_
                             (let ((_%next-probe103843%_
                                    (fx+ _%start103814%_
                                         _%i103823%_
                                         (fx* _%i103823%_ _%i103823%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe103843%_
                                _%size103808%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i103823%_ '1))
                             _%deleted103825%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab103792%_
               _%key103793%_
               _%method-specializer-table-update!103794%_
               _%default103795%_)
        (if (let ((__tmp108358
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab103792%_)))
                  (__tmp108356
                   (let ((__tmp108357
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab103792%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp108357 '4))))
              (declare (not safe))
              (##fx< __tmp108358 __tmp108356))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab103792%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab103792%_
         _%key103793%_
         _%method-specializer-table-update!103794%_
         _%default103795%_)))
    (define __method-specializer-table-update!
      (lambda (_%tab103742%_
               _%key103743%_
               _%method-specializer-table-update!103744%_
               _%default103745%_)
        (let ((_%table103748%_
               (let () (declare (not safe)) (&raw-table-table _%tab103742%_)))
              (_%seed103749%_
               (let () (declare (not safe)) (&raw-table-seed _%tab103742%_))))
          (let* ((_%h103751%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key103743%_))
                         _%seed103749%_))
                 (_%size103754%_ (vector-length _%table103748%_))
                 (_%entries103757%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size103754%_ '2)))
                 (_%start103760%_
                  (let ((__tmp108359
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h103751%_ _%entries103757%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp108359 '1))))
            (let _%loop103764%_ ((_%probe103767%_ _%start103760%_)
                                 (_%i103769%_ '1)
                                 (_%deleted103771%_ '#f))
              (let ((_%k103774%_ (vector-ref _%table103748%_ _%probe103767%_)))
                (if (eq? _%k103774%_ (macro-unused-obj))
                    (if _%deleted103771%_
                        (begin
                          (vector-set!
                           _%table103748%_
                           _%deleted103771%_
                           _%key103743%_)
                          (vector-set!
                           _%table103748%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted103771%_ '1))
                           (_%method-specializer-table-update!103744%_
                            _%default103745%_))
                          ((lambda ()
                             (let ((__tmp108360
                                    (let ((__tmp108361
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab103742%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp108361 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab103742%_
                                __tmp108360)))))
                        (begin
                          (vector-set!
                           _%table103748%_
                           _%probe103767%_
                           _%key103743%_)
                          (vector-set!
                           _%table103748%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe103767%_ '1))
                           (_%method-specializer-table-update!103744%_
                            _%default103745%_))
                          ((lambda ()
                             (let ((__tmp108362
                                    (let ((__tmp108363
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab103742%_))))
                                      (declare (not safe))
                                      (##fx- __tmp108363 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab103742%_
                                __tmp108362))
                             (let ((__tmp108364
                                    (let ((__tmp108365
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab103742%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp108365 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab103742%_
                                __tmp108364))))))
                    (if (eq? _%k103774%_ (macro-deleted-obj))
                        (_%loop103764%_
                         (let ((_%next-probe103781%_
                                (fx+ _%start103760%_
                                     _%i103769%_
                                     (fx* _%i103769%_ _%i103769%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe103781%_ _%size103754%_))
                         (let () (declare (not safe)) (##fx+ _%i103769%_ '1))
                         (let ((_%$e103784%_ _%deleted103771%_))
                           (if _%$e103784%_ _%$e103784%_ _%probe103767%_)))
                        (if (eq? _%key103743%_ _%k103774%_)
                            (let ()
                              (vector-set!
                               _%table103748%_
                               _%probe103767%_
                               _%key103743%_)
                              (vector-set!
                               _%table103748%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe103767%_ '1))
                               (_%method-specializer-table-update!103744%_
                                (vector-ref
                                 _%table103748%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe103767%_ '1))))))
                            (_%loop103764%_
                             (let ((_%next-probe103789%_
                                    (fx+ _%start103760%_
                                         _%i103769%_
                                         (fx* _%i103769%_ _%i103769%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe103789%_
                                _%size103754%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i103769%_ '1))
                             _%deleted103771%_))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab103697%_ _%key103699%_)
        (let ((_%table103702%_
               (let () (declare (not safe)) (&raw-table-table _%tab103697%_)))
              (_%seed103704%_
               (let () (declare (not safe)) (&raw-table-seed _%tab103697%_))))
          (let* ((_%h103707%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key103699%_))
                         _%seed103704%_))
                 (_%size103710%_ (vector-length _%table103702%_))
                 (_%entries103713%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size103710%_ '2)))
                 (_%start103716%_
                  (let ((__tmp108366
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h103707%_ _%entries103713%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp108366 '1))))
            (let _%loop103720%_ ((_%probe103723%_ _%start103716%_)
                                 (_%i103725%_ '1))
              (let ((_%k103728%_ (vector-ref _%table103702%_ _%probe103723%_)))
                (if (eq? _%k103728%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k103728%_ (macro-deleted-obj))
                        (_%loop103720%_
                         (let ((_%next-probe103733%_
                                (fx+ _%start103716%_
                                     _%i103725%_
                                     (fx* _%i103725%_ _%i103725%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe103733%_ _%size103710%_))
                         (let () (declare (not safe)) (##fx+ _%i103725%_ '1)))
                        (if (eq? _%key103699%_ _%k103728%_)
                            (let ()
                              (vector-set!
                               _%table103702%_
                               _%probe103723%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table103702%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe103723%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp108367
                                        (let ((__tmp108368
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab103697%_))))
                                          (declare (not safe))
                                          (##fx- __tmp108368 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab103697%_
                                    __tmp108367)))))
                            (_%loop103720%_
                             (let ((_%next-probe103739%_
                                    (fx+ _%start103716%_
                                         _%i103725%_
                                         (fx* _%i103725%_ _%i103725%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe103739%_
                                _%size103710%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i103725%_ '1))))))))))))
    (define __method-specializers (make-method-specializer-table__% '#f '0))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc103688%_ _%specializer103689%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again103693%_ ()
            (if (let ((__tmp108369
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp108369 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again103693%_)))))
        (method-specializer-table-set!
         __method-specializers
         _%method-proc103688%_
         _%specializer103689%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc103678%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again103682%_ ()
            (if (let ((__tmp108370
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp108370 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again103682%_)))))
        (let ((_%specializer103686%_
               (method-specializer-table-ref
                __method-specializers
                _%proc103678%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer103686%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass103676%_)
        (let ((__tmp108371
               (let () (declare (not safe)) (##type-id _%klass103676%_))))
          (declare (not safe))
          (##symbol-hash __tmp108371))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint103657%_ _%seed103659%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint103657%_
           __class-specializer-hash-key
           eq?
           _%seed103659%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint103665%_ '#f) (_%seed103667%_ '0))
          (make-class-specializer-table__%
           _%size-hint103665%_
           _%seed103667%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint103669%_)
        (let ((_%seed103671%_ '0))
          (make-class-specializer-table__%
           _%size-hint103669%_
           _%seed103671%_))))
    (define make-class-specializer-table
      (lambda _g108372_
        (let ((_g108373_ (let () (declare (not safe)) (##length _g108372_))))
          (cond ((let () (declare (not safe)) (##fx= _g108373_ 0))
                 (apply make-class-specializer-table__0 _g108372_))
                ((let () (declare (not safe)) (##fx= _g108373_ 1))
                 (apply make-class-specializer-table__1 _g108372_))
                ((let () (declare (not safe)) (##fx= _g108373_ 2))
                 (apply make-class-specializer-table__% _g108372_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g108372_))))))
    (define class-specializer-table-ref
      (lambda (_%tab103610%_ _%key103611%_ _%default103612%_)
        (let ((_%table103614%_
               (let () (declare (not safe)) (&raw-table-table _%tab103610%_)))
              (_%seed103615%_
               (let () (declare (not safe)) (&raw-table-seed _%tab103610%_))))
          (let* ((_%h103617%_
                  (fxxor (__class-specializer-hash-key _%key103611%_)
                         _%seed103615%_))
                 (_%size103620%_ (vector-length _%table103614%_))
                 (_%entries103623%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size103620%_ '2)))
                 (_%start103626%_
                  (let ((__tmp108374
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h103617%_ _%entries103623%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp108374 '1))))
            (let _%loop103630%_ ((_%probe103633%_ _%start103626%_)
                                 (_%i103635%_ '1)
                                 (_%deleted103637%_ '#f))
              (let ((_%k103640%_ (vector-ref _%table103614%_ _%probe103633%_)))
                (if (eq? _%k103640%_ (macro-unused-obj))
                    _%default103612%_
                    (if (eq? _%k103640%_ (macro-deleted-obj))
                        (_%loop103630%_
                         (let ((_%next-probe103645%_
                                (fx+ _%start103626%_
                                     _%i103635%_
                                     (fx* _%i103635%_ _%i103635%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe103645%_ _%size103620%_))
                         (let () (declare (not safe)) (##fx+ _%i103635%_ '1))
                         (let ((_%$e103648%_ _%deleted103637%_))
                           (if _%$e103648%_ _%$e103648%_ _%probe103633%_)))
                        (if (eq? _%key103611%_ _%k103640%_)
                            (vector-ref
                             _%table103614%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe103633%_ '1)))
                            (_%loop103630%_
                             (let ((_%next-probe103653%_
                                    (fx+ _%start103626%_
                                         _%i103635%_
                                         (fx* _%i103635%_ _%i103635%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe103653%_
                                _%size103620%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i103635%_ '1))
                             _%deleted103637%_))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab103606%_ _%key103607%_ _%value103608%_)
        (if (let ((__tmp108377
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab103606%_)))
                  (__tmp108375
                   (let ((__tmp108376
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab103606%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp108376 '4))))
              (declare (not safe))
              (##fx< __tmp108377 __tmp108375))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab103606%_))
            '#!void)
        (__class-specializer-table-set!
         _%tab103606%_
         _%key103607%_
         _%value103608%_)))
    (define __class-specializer-table-set!
      (lambda (_%tab103557%_ _%key103558%_ _%value103559%_)
        (let ((_%table103562%_
               (let () (declare (not safe)) (&raw-table-table _%tab103557%_)))
              (_%seed103563%_
               (let () (declare (not safe)) (&raw-table-seed _%tab103557%_))))
          (let* ((_%h103565%_
                  (fxxor (__class-specializer-hash-key _%key103558%_)
                         _%seed103563%_))
                 (_%size103568%_ (vector-length _%table103562%_))
                 (_%entries103571%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size103568%_ '2)))
                 (_%start103574%_
                  (let ((__tmp108378
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h103565%_ _%entries103571%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp108378 '1))))
            (let _%loop103578%_ ((_%probe103581%_ _%start103574%_)
                                 (_%i103583%_ '1)
                                 (_%deleted103585%_ '#f))
              (let ((_%k103588%_ (vector-ref _%table103562%_ _%probe103581%_)))
                (if (eq? _%k103588%_ (macro-unused-obj))
                    (if _%deleted103585%_
                        (begin
                          (vector-set!
                           _%table103562%_
                           _%deleted103585%_
                           _%key103558%_)
                          (vector-set!
                           _%table103562%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted103585%_ '1))
                           _%value103559%_)
                          ((lambda ()
                             (let ((__tmp108379
                                    (let ((__tmp108380
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab103557%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp108380 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab103557%_
                                __tmp108379)))))
                        (begin
                          (vector-set!
                           _%table103562%_
                           _%probe103581%_
                           _%key103558%_)
                          (vector-set!
                           _%table103562%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe103581%_ '1))
                           _%value103559%_)
                          ((lambda ()
                             (let ((__tmp108381
                                    (let ((__tmp108382
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab103557%_))))
                                      (declare (not safe))
                                      (##fx- __tmp108382 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab103557%_
                                __tmp108381))
                             (let ((__tmp108383
                                    (let ((__tmp108384
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab103557%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp108384 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab103557%_
                                __tmp108383))))))
                    (if (eq? _%k103588%_ (macro-deleted-obj))
                        (_%loop103578%_
                         (let ((_%next-probe103595%_
                                (fx+ _%start103574%_
                                     _%i103583%_
                                     (fx* _%i103583%_ _%i103583%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe103595%_ _%size103568%_))
                         (let () (declare (not safe)) (##fx+ _%i103583%_ '1))
                         (let ((_%$e103598%_ _%deleted103585%_))
                           (if _%$e103598%_ _%$e103598%_ _%probe103581%_)))
                        (if (eq? _%key103558%_ _%k103588%_)
                            (let ()
                              (vector-set!
                               _%table103562%_
                               _%probe103581%_
                               _%key103558%_)
                              (vector-set!
                               _%table103562%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe103581%_ '1))
                               _%value103559%_))
                            (_%loop103578%_
                             (let ((_%next-probe103603%_
                                    (fx+ _%start103574%_
                                         _%i103583%_
                                         (fx* _%i103583%_ _%i103583%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe103603%_
                                _%size103568%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i103583%_ '1))
                             _%deleted103585%_))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab103552%_
               _%key103553%_
               _%class-specializer-table-update!103554%_
               _%default103555%_)
        (if (let ((__tmp108387
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab103552%_)))
                  (__tmp108385
                   (let ((__tmp108386
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab103552%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp108386 '4))))
              (declare (not safe))
              (##fx< __tmp108387 __tmp108385))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab103552%_))
            '#!void)
        (__class-specializer-table-update!
         _%tab103552%_
         _%key103553%_
         _%class-specializer-table-update!103554%_
         _%default103555%_)))
    (define __class-specializer-table-update!
      (lambda (_%tab103502%_
               _%key103503%_
               _%class-specializer-table-update!103504%_
               _%default103505%_)
        (let ((_%table103508%_
               (let () (declare (not safe)) (&raw-table-table _%tab103502%_)))
              (_%seed103509%_
               (let () (declare (not safe)) (&raw-table-seed _%tab103502%_))))
          (let* ((_%h103511%_
                  (fxxor (__class-specializer-hash-key _%key103503%_)
                         _%seed103509%_))
                 (_%size103514%_ (vector-length _%table103508%_))
                 (_%entries103517%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size103514%_ '2)))
                 (_%start103520%_
                  (let ((__tmp108388
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h103511%_ _%entries103517%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp108388 '1))))
            (let _%loop103524%_ ((_%probe103527%_ _%start103520%_)
                                 (_%i103529%_ '1)
                                 (_%deleted103531%_ '#f))
              (let ((_%k103534%_ (vector-ref _%table103508%_ _%probe103527%_)))
                (if (eq? _%k103534%_ (macro-unused-obj))
                    (if _%deleted103531%_
                        (begin
                          (vector-set!
                           _%table103508%_
                           _%deleted103531%_
                           _%key103503%_)
                          (vector-set!
                           _%table103508%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted103531%_ '1))
                           (_%class-specializer-table-update!103504%_
                            _%default103505%_))
                          ((lambda ()
                             (let ((__tmp108389
                                    (let ((__tmp108390
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab103502%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp108390 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab103502%_
                                __tmp108389)))))
                        (begin
                          (vector-set!
                           _%table103508%_
                           _%probe103527%_
                           _%key103503%_)
                          (vector-set!
                           _%table103508%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe103527%_ '1))
                           (_%class-specializer-table-update!103504%_
                            _%default103505%_))
                          ((lambda ()
                             (let ((__tmp108391
                                    (let ((__tmp108392
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab103502%_))))
                                      (declare (not safe))
                                      (##fx- __tmp108392 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab103502%_
                                __tmp108391))
                             (let ((__tmp108393
                                    (let ((__tmp108394
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab103502%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp108394 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab103502%_
                                __tmp108393))))))
                    (if (eq? _%k103534%_ (macro-deleted-obj))
                        (_%loop103524%_
                         (let ((_%next-probe103541%_
                                (fx+ _%start103520%_
                                     _%i103529%_
                                     (fx* _%i103529%_ _%i103529%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe103541%_ _%size103514%_))
                         (let () (declare (not safe)) (##fx+ _%i103529%_ '1))
                         (let ((_%$e103544%_ _%deleted103531%_))
                           (if _%$e103544%_ _%$e103544%_ _%probe103527%_)))
                        (if (eq? _%key103503%_ _%k103534%_)
                            (let ()
                              (vector-set!
                               _%table103508%_
                               _%probe103527%_
                               _%key103503%_)
                              (vector-set!
                               _%table103508%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe103527%_ '1))
                               (_%class-specializer-table-update!103504%_
                                (vector-ref
                                 _%table103508%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe103527%_ '1))))))
                            (_%loop103524%_
                             (let ((_%next-probe103549%_
                                    (fx+ _%start103520%_
                                         _%i103529%_
                                         (fx* _%i103529%_ _%i103529%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe103549%_
                                _%size103514%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i103529%_ '1))
                             _%deleted103531%_))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab103457%_ _%key103459%_)
        (let ((_%table103462%_
               (let () (declare (not safe)) (&raw-table-table _%tab103457%_)))
              (_%seed103464%_
               (let () (declare (not safe)) (&raw-table-seed _%tab103457%_))))
          (let* ((_%h103467%_
                  (fxxor (__class-specializer-hash-key _%key103459%_)
                         _%seed103464%_))
                 (_%size103470%_ (vector-length _%table103462%_))
                 (_%entries103473%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size103470%_ '2)))
                 (_%start103476%_
                  (let ((__tmp108395
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h103467%_ _%entries103473%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp108395 '1))))
            (let _%loop103480%_ ((_%probe103483%_ _%start103476%_)
                                 (_%i103485%_ '1))
              (let ((_%k103488%_ (vector-ref _%table103462%_ _%probe103483%_)))
                (if (eq? _%k103488%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k103488%_ (macro-deleted-obj))
                        (_%loop103480%_
                         (let ((_%next-probe103493%_
                                (fx+ _%start103476%_
                                     _%i103485%_
                                     (fx* _%i103485%_ _%i103485%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe103493%_ _%size103470%_))
                         (let () (declare (not safe)) (##fx+ _%i103485%_ '1)))
                        (if (eq? _%key103459%_ _%k103488%_)
                            (let ()
                              (vector-set!
                               _%table103462%_
                               _%probe103483%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table103462%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe103483%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp108396
                                        (let ((__tmp108397
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab103457%_))))
                                          (declare (not safe))
                                          (##fx- __tmp108397 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab103457%_
                                    __tmp108396)))))
                            (_%loop103480%_
                             (let ((_%next-probe103499%_
                                    (fx+ _%start103476%_
                                         _%i103485%_
                                         (fx* _%i103485%_ _%i103485%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe103499%_
                                _%size103470%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i103485%_ '1))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers (make-class-specializer-table__% '#f '0))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass103443%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass103443%_ 'class))
            (let ((_%klass103447%_ _%klass103443%_))
              (__specialize-class _%klass103447%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1025.25-1025.30"
               'contract:
               'class-type?
               'value:
               _%klass103443%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass103425%_)
        (let* ((_%klass103428%_ _%klass103425%_)
               (_%$e103437%_ (__lookup-class-specializer _%klass103428%_)))
          (if _%$e103437%_
              _%$e103437%_
              (let ((_%method-table103441%_
                     (___specialize-class _%klass103428%_)))
                (__bind-class-specializer!
                 _%klass103428%_
                 _%method-table103441%_)
                _%method-table103441%_)))))
    (define __lookup-class-specializer
      (lambda (_%klass103415%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again103419%_ ()
            (if (let ((__tmp108398
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp108398 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again103419%_)))))
        (let ((_%method-table103423%_
               (class-specializer-table-ref
                __class-specializers
                _%klass103415%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table103423%_)))
    (define __bind-class-specializer!
      (lambda (_%klass103406%_ _%method-table103407%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again103411%_ ()
            (if (let ((__tmp108399
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp108399 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again103411%_)))))
        (class-specializer-table-set!
         __class-specializers
         _%klass103406%_
         _%method-table103407%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass103390%_
               _%method-table103391%_
               _%method103392%_
               _%proc103393%_)
        (let ((_%$e103395%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table103391%_
                  _%method103392%_
                  '#f))))
          (if _%$e103395%_
              _%$e103395%_
              (let ((_%$e103398%_
                     (__lookup-method-specializer _%proc103393%_)))
                (if _%$e103398%_
                    ((lambda (_%specialize103401%_)
                       (let ((_%specialized-proc103403%_
                              (_%specialize103401%_
                               _%klass103390%_
                               _%method-table103391%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table103391%_
                          _%method103392%_
                          _%specialized-proc103403%_)))
                     _%$e103398%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table103391%_
                       _%method103392%_
                       _%proc103393%_))))))))
    (define ___specialize-class
      (lambda (_%klass103332%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass103332%_ 'class))
            (if (__class-type-metaclass? _%klass103332%_)
                (let ((__method108247
                       (__method-ref _%klass103332%_ 'specialize-class)))
                  (if __method108247
                      (let ()
                        (declare (not safe))
                        (__method108247 _%klass103332%_))
                      (begin
                        (error '"Missing method"
                               _%klass103332%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp108400
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass103332%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp108400))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass103332%_)
                    (let ((_%method-table103338%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop103340%_ ((_%rest103342%_
                                            (__class-precedence-list
                                             _%klass103332%_)))
                        (let* ((_%rest103343103351%_ _%rest103342%_)
                               (_%else103345103359%_
                                (lambda () _%method-table103338%_))
                               (_%K103347103378%_
                                (lambda (_%rest103362%_ _%xklass103363%_)
                                  (let ((_%xmethod-table103364103366%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass103363%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table103364103366%_
                                        (let* ((_%xmethod-table103369%_
                                                _%xmethod-table103364103366%_)
                                               (__tmp108401
                                                (lambda (_%g103370103373%_
                                                         _%g103371103375%_)
                                                  (__specialize-method
                                                   _%klass103332%_
                                                   _%method-table103338%_
                                                   _%g103370103373%_
                                                   _%g103371103375%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table103369%_
                                           __tmp108401))
                                        '#f))
                                  (_%loop103340%_ _%rest103362%_))))
                          (if (pair? _%rest103343103351%_)
                              (let ((_%hd103348103381%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest103343103351%_)))
                                    (_%tl103349103383%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest103343103351%_))))
                                (let* ((_%xklass103386%_ _%hd103348103381%_)
                                       (_%rest103388%_ _%tl103349103383%_))
                                  (_%K103347103378%_
                                   _%rest103388%_
                                   _%xklass103386%_)))
                              (_%else103345103359%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass103332%_))
                (__specialize-class (__shadow-class _%klass103332%_))
                (error '"bad class; cannot specialize" _%klass103332%_)))))
    (define seal-class!
      (lambda (_%klass103318%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass103318%_ 'class))
            (let ((_%klass103322%_ _%klass103318%_))
              (__seal-class! _%klass103322%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1082.20-1082.25"
               'contract:
               'class-type?
               'value:
               _%klass103318%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass103301%_)
        (let ((_%klass103304%_ _%klass103301%_))
          (if (__class-type-sealed? _%klass103304%_)
              '#!void
              (begin
                (if (__class-type-final? _%klass103304%_)
                    '#!void
                    (error '"cannot seal non-final class" _%klass103304%_))
                (if (__class-type-metaclass? _%klass103304%_)
                    (let ((__method108248
                           (__method-ref _%klass103304%_ 'seal-class!)))
                      (if __method108248
                          (let ()
                            (declare (not safe))
                            (__method108248 _%klass103304%_))
                          (begin
                            (error '"Missing method"
                                   _%klass103304%_
                                   'seal-class!)
                            '#!void)))
                    (if (let ((__tmp108402
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass103304%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp108402))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass103304%_)
                        (let ((_%method-table103316%_
                               (__specialize-class _%klass103304%_)))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass103304%_
                           _%method-table103316%_
                           '11
                           '#f
                           '#f))))
                (__class-type-seal! _%klass103304%_))))))
    (define next-method
      (lambda (_%subklass103275%_ _%obj103276%_ _%id103277%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass103275%_ 'class))
            (let ((_%subklass103281%_ _%subklass103275%_))
              (if (symbol? _%id103277%_)
                  (let ((_%id103291%_ _%id103277%_))
                    (__next-method
                     _%subklass103281%_
                     _%obj103276%_
                     _%id103291%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1106.44-1106.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id103277%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1106.20-1106.28"
               'contract:
               'class-type?
               'value:
               _%subklass103275%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass103212%_ _%obj103213%_ _%id103214%_)
        (let* ((_%subklass103217%_ _%subklass103212%_)
               (_%id103225%_ _%id103214%_))
          (letrec ((_%find-next-method103234%_
                    (lambda (_%klass103236%_)
                      (let _%lp103238%_ ((_%rest103240%_
                                          (class-precedence-list
                                           _%klass103236%_)))
                        (let* ((_%rest103241103249%_ _%rest103240%_)
                               (_%else103243103257%_ (lambda () '#f))
                               (_%K103245103263%_
                                (lambda (_%rest103260%_ _%klass103261%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass103217%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass103261%_)))
                                      (__mixin-find-method
                                       _%rest103260%_
                                       _%obj103213%_
                                       _%id103225%_)
                                      (_%lp103238%_ _%rest103260%_)))))
                          (if (pair? _%rest103241103249%_)
                              (let ((_%hd103246103266%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest103241103249%_)))
                                    (_%tl103247103268%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest103241103249%_))))
                                (let* ((_%klass103271%_ _%hd103246103266%_)
                                       (_%rest103273%_ _%tl103247103268%_))
                                  (_%K103245103263%_
                                   _%rest103273%_
                                   _%klass103271%_)))
                              (_%else103243103257%_)))))))
            (_%find-next-method103234%_ (class-of _%obj103213%_))))))
    (define call-next-method
      (lambda (_%subklass103185%_ _%obj103186%_ _%id103187%_ . _%args103188%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass103185%_ 'class))
            (let ((_%subklass103192%_ _%subklass103185%_))
              (if (symbol? _%id103187%_)
                  (let ((_%id103202%_ _%id103187%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass103192%_
                             _%obj103186%_
                             _%id103202%_
                             _%args103188%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1117.49-1117.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id103187%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1117.25-1117.33"
               'contract:
               'class-type?
               'value:
               _%subklass103185%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass103156%_ _%obj103157%_ _%id103158%_ . _%args103159%_)
        (let* ((_%subklass103162%_ _%subklass103156%_)
               (_%id103170%_ _%id103158%_)
               (_%$e103179%_
                (__next-method _%subklass103162%_ _%obj103157%_ _%id103170%_)))
          (if _%$e103179%_
              ((lambda (_%methodf103182%_)
                 (apply _%methodf103182%_ _%obj103157%_ _%args103159%_))
               _%$e103179%_)
              (error '"cannot find next method"
                     'object:
                     _%obj103157%_
                     'method:
                     _%id103170%_)))))
    (define write-style
      (lambda (_%we103154%_) (values (macro-writeenv-style _%we103154%_))))
    (define write-object
      (lambda (_%we103145%_ _%obj103146%_)
        (let ((_%$e103148%_ (__method-ref _%obj103146%_ ':wr)))
          (if _%$e103148%_
              ((lambda (_%method103151%_)
                 (_%method103151%_ _%obj103146%_ _%we103145%_))
               _%$e103148%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we103145%_ _%obj103146%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type103060%_)
        (letrec ((_%shadow-type-id103062%_
                  (lambda (_%type103143%_)
                    (let ((__tmp108403
                           (let ()
                             (declare (not safe))
                             (##type-name _%type103143%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp108403 '"::t"))))
                 (_%shadow-type-name103063%_
                  (lambda (_%type103141%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type103141%_))))
                 (_%make-shadow-class103064%_
                  (lambda (_%type103133%_ _%precedence-list103134%_)
                    (let* ((_%super103136%_
                            (if (pair? _%precedence-list103134%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list103134%_))
                                      '())
                                '()))
                           (_%klass103138%_
                            (make-class-type
                             (_%shadow-type-id103062%_ _%type103133%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type103133%_))
                             _%super103136%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (if (__type-extensible?
                                              _%type103133%_)
                                             '()
                                             (cons (cons 'final: '#t) '()))))
                             '#f)))
                      (let ((__tmp108404
                             (let ()
                               (declare (not safe))
                               (##type-id _%type103133%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp108404
                         _%klass103138%_))
                      _%klass103138%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103068%_ ()
              (if (let ((__tmp108405
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp108405 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (_%again103068%_)))))
          (let ((_%$e103072%_
                 (let ((__tmp108406
                        (let ()
                          (declare (not safe))
                          (##type-id _%type103060%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp108406 '#f))))
            (if _%$e103072%_
                ((lambda (_%klass103075%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass103075%_)
                 _%$e103072%_)
                (let _%loop103078%_ ((_%super103080%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type103060%_)))
                                     (_%hierarchy103081%_ '()))
                  (if (not _%super103080%_)
                      (let _%loop103084%_ ((_%rest103086%_ _%hierarchy103081%_)
                                           (_%precedence-list103087%_ '()))
                        (let* ((_%rest103088103096%_ _%rest103086%_)
                               (_%else103090103106%_
                                (lambda ()
                                  (let ((_%klass103104%_
                                         (_%make-shadow-class103064%_
                                          _%type103060%_
                                          _%precedence-list103087%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass103104%_)))
                               (_%K103092103120%_
                                (lambda (_%rest103109%_ _%type103110%_)
                                  (let ((_%$e103112%_
                                         (let ((__tmp108407
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type103110%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp108407
                                            '#f))))
                                    (if _%$e103112%_
                                        ((lambda (_%klass103115%_)
                                           (_%loop103084%_
                                            _%rest103109%_
                                            (cons _%klass103115%_
                                                  _%precedence-list103087%_)))
                                         _%$e103112%_)
                                        (let ((_%klass103118%_
                                               (_%make-shadow-class103064%_
                                                _%type103110%_
                                                _%precedence-list103087%_)))
                                          (_%loop103084%_
                                           _%rest103109%_
                                           (cons _%klass103118%_
                                                 _%precedence-list103087%_))))))))
                          (if (pair? _%rest103088103096%_)
                              (let ((_%hd103093103123%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest103088103096%_)))
                                    (_%tl103094103125%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest103088103096%_))))
                                (let* ((_%type103128%_ _%hd103093103123%_)
                                       (_%rest103130%_ _%tl103094103125%_))
                                  (_%K103092103120%_
                                   _%rest103130%_
                                   _%type103128%_)))
                              (_%else103090103106%_))))
                      (_%loop103078%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super103080%_))
                       (cons _%super103080%_ _%hierarchy103081%_)))))))))
    (define __type
      (let* ((_%tb103049%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e103051%_ _%tb103049%_))
        (if (eq? '2 _%$e103051%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e103051%_)
                (let ((_%flonum-self-tagging-tags103054%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits103055%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e103057%_ _%flonum-self-tagging-tags103054%_))
                    (if (eq? '0 _%$e103057%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits103055%_ '2))
                            '#(fixnum
                               subtyped
                               special
                               vector
                               fixnum
                               pair
                               undefined
                               flonum)
                            '#(fixnum
                               subtyped
                               undefined
                               vector
                               special
                               pair
                               undefined
                               flonum))
                        (if (eq? '1 _%$e103057%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits103055%_ '2))
                                '#(fixnum
                                   subtyped
                                   special
                                   vector
                                   fixnum
                                   pair
                                   flonum
                                   flonum)
                                '#(fixnum
                                   subtyped
                                   undefined
                                   vector
                                   special
                                   pair
                                   flonum
                                   flonum))
                            (if (eq? '2 _%$e103057%_)
                                '#(fixnum
                                   subtyped
                                   flonum
                                   flonum
                                   special
                                   pair
                                   flonum
                                   undefined)
                                (if (eq? '3 _%$e103057%_)
                                    '#(fixnum
                                       subtyped
                                       flonum
                                       flonum
                                       special
                                       pair
                                       flonum
                                       flonum)
                                    (if (eq? '4 _%$e103057%_)
                                        '#(fixnum
                                           subtyped
                                           flonum
                                           flonum
                                           special
                                           pair
                                           flonum
                                           flonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags103054%_))))))))
                (error '"unexpected tag width" _%tb103049%_)))))
    (define __class
      (let* ((_%len103002%_
              (let () (declare (not safe)) (##vector-length __type)))
             (_%cv103004%_
              (let () (declare (not safe)) (##make-vector _%len103002%_ '#f))))
        (let _%loop103007%_ ((_%i103009%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i103009%_ _%len103002%_))
              (let* ((_%t103011%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i103009%_)))
                     (_%f103046%_
                      (if (eq? _%t103011%_ 'undefined)
                          (lambda (_%obj103014%_)
                            (error '"object type is undefined" _%obj103014%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t103011%_
                                        '(fixnum flonum pair vector)))
                              (lambda (_%obj103017%_)
                                (declare (not interrupts-enabled) (not safe))
                                (__system-class _%t103011%_))
                              (if (eq? _%t103011%_ 'subtyped)
                                  (lambda (_%obj103021%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st103024%_
                                           (##subtype _%obj103021%_)))
                                      (if (##fx= _%st103024%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass103027%_
                                                 (##structure-type
                                                  _%obj103021%_)))
                                            (if (##structure-instance-of?
                                                 _%klass103027%_
                                                 'class)
                                                _%klass103027%_
                                                (__shadow-class
                                                 _%klass103027%_)))
                                          (if (##fx= _%st103024%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj103021%_)
                                                         '1)
                                                  (__system-class 'box)
                                                  (__system-class 'values))
                                              (let ((_%$e103030%_
                                                     (##vector-ref
                                                      __subtype-id
                                                      _%st103024%_)))
                                                (if _%$e103030%_
                                                    (__system-class
                                                     _%$e103030%_)
                                                    (error '"unknown class"
                                                           'subtype:
                                                           _%st103024%_
                                                           'object:
                                                           _%obj103021%_)))))))
                                  (if (eq? _%t103011%_ 'special)
                                      (lambda (_%obj103035%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (if (char? _%obj103035%_)
                                            (__system-class 'char)
                                            (if (eq? _%obj103035%_ '())
                                                (__system-class 'null)
                                                (if (eq? _%obj103035%_ '#f)
                                                    (__system-class 'boolean)
                                                    (if (eq? _%obj103035%_ '#t)
                                                        (__system-class
                                                         'boolean)
                                                        (if (eq? _%obj103035%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void)
                    (__system-class 'void)
                    (if (eq? _%obj103035%_ '#!eof)
                        (__system-class 'eof)
                        (__system-class 'special))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t103011%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv103004%_ _%i103009%_ _%f103046%_))
                (_%loop103007%_
                 (let () (declare (not safe)) (##fx+ _%i103009%_ '1))))
              _%cv103004%_))))
    (define type-of
      (lambda (_%obj102998%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj102998%_)))))
    (define class-of
      (lambda (_%obj102989%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t102993%_ (##type _%obj102989%_))
                 (_%f102995%_ (##vector-ref __class _%t102993%_)))
            (_%f102995%_ _%obj102989%_)))))
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
      (lambda (_%id102983%_)
        (let ((_%$e102985%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id102983%_ '#f))))
          (if _%$e102985%_
              _%$e102985%_
              (error '"unknown system class" _%id102983%_)))))
    (define __make-system-class
      (lambda (_%id102978%_ _%super102979%_)
        (let ((_%klass102981%_
               (make-class-type
                _%id102978%_
                _%id102978%_
                _%super102979%_
                '()
                '((system: . #t))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id102978%_
             _%klass102981%_))
          _%klass102981%_)))))
