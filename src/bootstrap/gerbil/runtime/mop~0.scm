(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1712246554)
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
      (let ((_%flags96750%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties96751%_ '((direct-slots:) (system: . #t)))
            (_%slot-table96752%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags96750%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table96752%_
           _%properties96751%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots96726%_
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
             (_%slot-vector96728%_ (list->vector (cons '#f _%slots96726%_)))
             (_%slot-table96735%_
              (let ((_%slot-table96730%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp98198
                       (lambda (_%slot96732%_ _%field96733%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table96730%_
                            _%slot96732%_
                            _%field96733%_))
                         (let ((__tmp98199
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot96732%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table96730%_
                            __tmp98199
                            _%field96733%_))))
                      (__tmp98196
                       (let ((__tmp98197
                              (let ()
                                (declare (not safe))
                                (##length _%slots96726%_))))
                         (declare (not safe))
                         (##iota __tmp98197 '1))))
                  (declare (not safe))
                  (##for-each __tmp98198 _%slots96726%_ __tmp98196))
                _%slot-table96730%_))
             (_%flags96737%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields96743%_
              (list->vector
               (let ((__tmp98200
                      (map (lambda (_%g9673896740%_)
                             (list _%g9673896740%_ '5 '#f))
                           (drop _%slots96726%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp98200))))
             (_%properties96745%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots96726%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t96747%_
              (let ((__tmp98201 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags96737%_
                 ##type-type
                 _%fields96743%_
                 __tmp98201
                 _%slot-vector96728%_
                 _%slot-table96735%_
                 _%properties96745%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t96747%_ _%t96747%_))
        _%t96747%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags96722%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties96723%_ '((direct-slots:) (system: . #t)))
            (_%slot-table96724%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp98202 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags96722%_
           '#f
           '#()
           __tmp98202
           '#(#f)
           _%slot-table96724%_
           _%properties96723%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj96720%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj96720%_ 'class))))
    (define class-type=?
      (lambda (_%x96695%_ _%y96696%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%x96695%_ 'class))
              (let ((_%x96700%_ _%x96695%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%y96696%_ 'class))
                    (let ((_%y96710%_ _%y96696%_))
                      (declare (not safe))
                      (__class-type=? _%x96700%_ _%y96710%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                       'contract:
                       'class-type?
                       'value:
                       _%y96696%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
                 'contract:
                 'class-type?
                 'value:
                 _%x96695%_)
                '#!void)))))
    (define __class-type=?
      (lambda (_%x96674%_ _%y96675%_)
        (let ()
          (let* ((_%x96678%_ _%x96674%_) (_%y96686%_ _%y96675%_))
            (eq? (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%x96678%_ '1 '#f '#f))
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%y96686%_ '1 '#f '#f)))))))
    (define type-opaque?
      (lambda (_%type96660%_)
        (let ()
          (if (let () (declare (not safe)) (##type? _%type96660%_))
              (let ((_%type96664%_ _%type96660%_))
                (declare (not safe))
                (__type-opaque? _%type96664%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
                 'contract:
                 '##type?
                 'value:
                 _%type96660%_)
                '#!void)))))
    (define __type-opaque?
      (lambda (_%type96646%_)
        (let ()
          (if (let () (declare (not safe)) (##type? _%type96646%_))
              (let ()
                (let* ((_%type96650%_ _%type96646%_)
                       (__tmp98203
                        (let ((__tmp98204
                               (let ()
                                 (declare (not safe))
                                 (##type-flags _%type96650%_))))
                          (declare (not safe))
                          (##fxand __tmp98204 type-flag-opaque))))
                  (declare (not safe))
                  (##fx= __tmp98203 type-flag-opaque)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
                 'contract:
                 '##type?
                 'value:
                 _%type96646%_)
                '#!void)))))
    (define type-extensible?
      (lambda (_%type96632%_)
        (let ()
          (if (let () (declare (not safe)) (##type? _%type96632%_))
              (let ((_%type96636%_ _%type96632%_))
                (declare (not safe))
                (__type-extensible? _%type96636%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
                 'contract:
                 '##type?
                 'value:
                 _%type96632%_)
                '#!void)))))
    (define __type-extensible?
      (lambda (_%type96618%_)
        (let ()
          (if (let () (declare (not safe)) (##type? _%type96618%_))
              (let ()
                (let* ((_%type96622%_ _%type96618%_)
                       (__tmp98205
                        (let ((__tmp98206
                               (let ()
                                 (declare (not safe))
                                 (##type-flags _%type96622%_))))
                          (declare (not safe))
                          (##fxand __tmp98206 type-flag-extensible))))
                  (declare (not safe))
                  (##fx= __tmp98205 type-flag-extensible)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
                 'contract:
                 '##type?
                 'value:
                 _%type96618%_)
                '#!void)))))
    (define class-type-final?
      (lambda (_%type96604%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%type96604%_ 'class))
              (let ((_%type96608%_ _%type96604%_))
                (declare (not safe))
                (__class-type-final? _%type96608%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
                 'contract:
                 'class-type?
                 'value:
                 _%type96604%_)
                '#!void)))))
    (define __class-type-final?
      (lambda (_%type96592%_)
        (let ()
          (let* ((_%type96595%_ _%type96592%_)
                 (__tmp98207
                  (let ((__tmp98208
                         (let ()
                           (declare (not safe))
                           (##type-flags _%type96595%_))))
                    (declare (not safe))
                    (##fxand __tmp98208 type-flag-extensible))))
            (declare (not safe))
            (##fx= __tmp98207 '0)))))
    (define class-type-struct?
      (lambda (_%klass96578%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96578%_ 'class))
              (let ((_%klass96582%_ _%klass96578%_))
                (declare (not safe))
                (__class-type-struct? _%klass96582%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96578%_)
                '#!void)))))
    (define __class-type-struct?
      (lambda (_%klass96566%_)
        (let ()
          (let* ((_%klass96569%_ _%klass96566%_)
                 (__tmp98209
                  (let ((__tmp98210
                         (let ()
                           (declare (not safe))
                           (##type-flags _%klass96569%_))))
                    (declare (not safe))
                    (##fxand __tmp98210 class-type-flag-struct))))
            (declare (not safe))
            (##fx= __tmp98209 class-type-flag-struct)))))
    (define class-type-sealed?
      (lambda (_%klass96552%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96552%_ 'class))
              (let ((_%klass96556%_ _%klass96552%_))
                (declare (not safe))
                (__class-type-sealed? _%klass96556%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96552%_)
                '#!void)))))
    (define __class-type-sealed?
      (lambda (_%klass96540%_)
        (let ()
          (let* ((_%klass96543%_ _%klass96540%_)
                 (__tmp98211
                  (let ((__tmp98212
                         (let ()
                           (declare (not safe))
                           (##type-flags _%klass96543%_))))
                    (declare (not safe))
                    (##fxand __tmp98212 class-type-flag-sealed))))
            (declare (not safe))
            (##fx= __tmp98211 class-type-flag-sealed)))))
    (define class-type-metaclass?
      (lambda (_%klass96526%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96526%_ 'class))
              (let ((_%klass96530%_ _%klass96526%_))
                (declare (not safe))
                (__class-type-metaclass? _%klass96530%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96526%_)
                '#!void)))))
    (define __class-type-metaclass?
      (lambda (_%klass96514%_)
        (let ()
          (let* ((_%klass96517%_ _%klass96514%_)
                 (__tmp98213
                  (let ((__tmp98214
                         (let ()
                           (declare (not safe))
                           (##type-flags _%klass96517%_))))
                    (declare (not safe))
                    (##fxand __tmp98214 class-type-flag-metaclass))))
            (declare (not safe))
            (##fx= __tmp98213 class-type-flag-metaclass)))))
    (define class-type-system?
      (lambda (_%klass96500%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96500%_ 'class))
              (let ((_%klass96504%_ _%klass96500%_))
                (declare (not safe))
                (__class-type-system? _%klass96504%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96500%_)
                '#!void)))))
    (define __class-type-system?
      (lambda (_%klass96488%_)
        (let ()
          (let* ((_%klass96491%_ _%klass96488%_)
                 (__tmp98215
                  (let ((__tmp98216
                         (let ()
                           (declare (not safe))
                           (##type-flags _%klass96491%_))))
                    (declare (not safe))
                    (##fxand __tmp98216 class-type-flag-system))))
            (declare (not safe))
            (##fx= __tmp98215 class-type-flag-system)))))
    (define make-class-type-descriptor
      (lambda (_%type-id96373%_
               _%type-name96374%_
               _%type-super96375%_
               _%precedence-list96376%_
               _%slot-vector96377%_
               _%properties96378%_
               _%constructor96379%_
               _%slot-table96380%_
               _%methods96381%_)
        (let ()
          (letrec ((_%make-props!96384%_
                    (lambda (_%key96457%_)
                      (letrec* ((_%ht96459%_
                                 (let ()
                                   (declare (not safe))
                                   (make-symbolic-table__% '#f '0)))
                                (_%put-slots!96460%_
                                 (lambda (_%ht96481%_ _%slots96482%_)
                                   (for-each
                                    (lambda (_%g9648396485%_)
                                      (let ()
                                        (declare (not safe))
                                        (symbolic-table-set!
                                         _%ht96481%_
                                         _%g9648396485%_
                                         '#t)))
                                    _%slots96482%_)))
                                (_%put-alist!96461%_
                                 (lambda (_%ht96470%_
                                          _%key96471%_
                                          _%alist96472%_)
                                   (let ((_%$e96474%_
                                          (let ()
                                            (declare (not safe))
                                            (agetq__0
                                             _%key96471%_
                                             _%alist96472%_))))
                                     (if _%$e96474%_
                                         ((lambda (_%g9647696478%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%put-slots!96460%_
                                               _%ht96470%_
                                               _%g9647696478%_)))
                                          _%$e96474%_)
                                         '#!void)))))
                        (let ()
                          (declare (not safe))
                          (_%put-alist!96461%_
                           _%ht96459%_
                           _%key96457%_
                           _%properties96378%_))
                        (for-each
                         (lambda (_%mixin96463%_)
                           (let ((_%alist96465%_
                                  (##structure-ref
                                   _%mixin96463%_
                                   '9
                                   class::t
                                   '#f)))
                             (if (or (let ()
                                       (declare (not safe))
                                       (agetq__0 'transparent: _%alist96465%_))
                                     (eq? '#t
                                          (let ()
                                            (declare (not safe))
                                            (agetq__0
                                             _%key96457%_
                                             _%alist96465%_))))
                                 (let ((__tmp98217
                                        (let ()
                                          (declare (not safe))
                                          (class-type-slot-list
                                           _%mixin96463%_))))
                                   (declare (not safe))
                                   (_%put-slots!96460%_
                                    _%ht96459%_
                                    __tmp98217))
                                 (let ()
                                   (declare (not safe))
                                   (_%put-alist!96461%_
                                    _%ht96459%_
                                    _%key96457%_
                                    _%alist96465%_)))))
                         _%precedence-list96376%_)
                        _%ht96459%_))))
            (let* ((_%transparent?96386%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'transparent: _%properties96378%_)))
                   (_%all-slots-printable?96391%_
                    (let ((_%$e96388%_ _%transparent?96386%_))
                      (if _%$e96388%_
                          _%$e96388%_
                          (eq? '#t
                               (let ()
                                 (declare (not safe))
                                 (agetq__0 'print: _%properties96378%_))))))
                   (_%printable96393%_
                    (if (let ()
                          (declare (not safe))
                          (not _%all-slots-printable?96391%_))
                        (let ()
                          (declare (not safe))
                          (_%make-props!96384%_ 'print:))
                        '#f))
                   (_%all-slots-equalable?96398%_
                    (let ((_%$e96395%_ _%transparent?96386%_))
                      (if _%$e96395%_
                          _%$e96395%_
                          (eq? '#t
                               (let ()
                                 (declare (not safe))
                                 (agetq__0 'equal: _%properties96378%_))))))
                   (_%equalable96400%_
                    (if (let ()
                          (declare (not safe))
                          (not _%all-slots-equalable?96398%_))
                        (let ()
                          (declare (not safe))
                          (_%make-props!96384%_ 'equal:))
                        '#f))
                   (_%first-new-field96402%_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _%type-super96375%_
                           'class))
                        (let ((__tmp98218
                               (##structure-ref
                                _%type-super96375%_
                                '7
                                class::t
                                '#f)))
                          (declare (not safe))
                          (##vector-length __tmp98218))
                        '1))
                   (_%field-info-length96404%_
                    (let ((__tmp98219
                           (let ((__tmp98220
                                  (let ()
                                    (declare (not safe))
                                    (##vector-length _%slot-vector96377%_))))
                             (declare (not safe))
                             (##fx- __tmp98220 _%first-new-field96402%_))))
                      (declare (not safe))
                      (##fx* '3 __tmp98219)))
                   (_%field-info96406%_
                    (let ()
                      (declare (not safe))
                      (##make-vector _%field-info-length96404%_ '#f)))
                   (_%struct?96408%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'struct: _%properties96378%_)))
                   (_%final?96410%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'final: _%properties96378%_)))
                   (_%metaclass96418%_
                    (let ((_%metaclass9641196413%_
                           (let ()
                             (declare (not safe))
                             (agetq__0 'metaclass: _%properties96378%_))))
                      (if _%metaclass9641196413%_
                          (let ((_%metaclass96416%_ _%metaclass9641196413%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%metaclass96416%_
                                   'class))
                                '#!void
                                (error '"metaclass is not a class type"
                                       'class:
                                       _%type-id96373%_
                                       'metaclass:
                                       _%metaclass96416%_))
                            _%metaclass96416%_)
                          '#f)))
                   (_%system?96420%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'system: _%properties96378%_)))
                   (_%opaque?96425%_
                    (let ((_%$e96422%_
                           (let ()
                             (declare (not safe))
                             (not _%all-slots-equalable?96398%_))))
                      (if _%$e96422%_
                          _%$e96422%_
                          (if _%type-super96375%_
                              (let ()
                                (declare (not safe))
                                (__type-opaque? _%type-super96375%_))
                              '#f))))
                   (_%type-flags96427%_
                    (let ((__tmp98225
                           (if _%final?96410%_ '0 type-flag-extensible))
                          (__tmp98224
                           (if _%opaque?96425%_ type-flag-opaque '0))
                          (__tmp98223
                           (if _%struct?96408%_ class-type-flag-struct '0))
                          (__tmp98222
                           (if _%metaclass96418%_
                               class-type-flag-metaclass
                               '0))
                          (__tmp98221
                           (if _%system?96420%_ class-type-flag-system '0)))
                      (declare (not safe))
                      (##fxior type-flag-id
                               type-flag-concrete
                               __tmp98225
                               __tmp98224
                               __tmp98223
                               __tmp98222
                               __tmp98221)))
                   (_%precedence-list96435%_
                    (let ((_%$e96429%_ (memq t::t _%precedence-list96376%_)))
                      (if _%$e96429%_
                          ((lambda (_%tail96432%_)
                             (if (let ((__tmp98226 (cdr _%tail96432%_)))
                                   (declare (not safe))
                                   (null? __tmp98226))
                                 _%precedence-list96376%_
                                 (error '"BUG: t::t is not last in the precedence list"
                                        'precedence-list:
                                        _%precedence-list96376%_)))
                           _%$e96429%_)
                          (let ((__tmp98227 (cons t::t '())))
                            (declare (not safe))
                            (##append _%precedence-list96376%_ __tmp98227))))))
              (let _%loop96438%_ ((_%i96440%_ _%first-new-field96402%_)
                                  (_%j96441%_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _%j96441%_ _%field-info-length96404%_))
                    (let* ((_%slot96443%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%slot-vector96377%_ _%i96440%_)))
                           (_%flags96451%_
                            (if _%transparent?96386%_
                                '0
                                (let ((__tmp98229
                                       (if (or _%all-slots-printable?96391%_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%printable96393%_
                                                  _%slot96443%_
                                                  '#f)))
                                           '0
                                           '1))
                                      (__tmp98228
                                       (if (or _%all-slots-equalable?96398%_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%equalable96400%_
                                                  _%slot96443%_
                                                  '#f)))
                                           '0
                                           '4)))
                                  (declare (not safe))
                                  (##fxior __tmp98229 __tmp98228)))))
                      (vector-set!
                       _%field-info96406%_
                       _%j96441%_
                       _%slot96443%_)
                      (vector-set!
                       _%field-info96406%_
                       (let () (declare (not safe)) (##fx+ _%j96441%_ '1))
                       _%flags96451%_)
                      (let ((__tmp98231
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i96440%_ '1)))
                            (__tmp98230
                             (let ()
                               (declare (not safe))
                               (##fx+ _%j96441%_ '3))))
                        (declare (not safe))
                        (_%loop96438%_ __tmp98231 __tmp98230)))
                    '#!void))
              (if _%metaclass96418%_
                  (let ((_%val96454%_
                         (let ()
                           (declare (not safe))
                           (make-instance
                            _%metaclass96418%_
                            _%type-id96373%_
                            _%type-name96374%_
                            _%type-flags96427%_
                            _%type-super96375%_
                            _%field-info96406%_
                            _%precedence-list96435%_
                            _%slot-vector96377%_
                            _%slot-table96380%_
                            _%properties96378%_
                            _%constructor96379%_
                            _%methods96381%_))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%val96454%_ 'class))
                        _%val96454%_
                        (error '"bad cast" class::t _%val96454%_)))
                  (let ()
                    (declare (not safe))
                    (##structure
                     class::t
                     _%type-id96373%_
                     _%type-name96374%_
                     _%type-flags96427%_
                     _%type-super96375%_
                     _%field-info96406%_
                     _%precedence-list96435%_
                     _%slot-vector96377%_
                     _%slot-table96380%_
                     _%properties96378%_
                     _%constructor96379%_
                     _%methods96381%_))))))))
    (define class-type-id
      (lambda (_%klass96371%_)
        (##structure-ref _%klass96371%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass96369%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96369%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass96366%_ _%val96367%_)
        (##structure-set! _%klass96366%_ _%val96367%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass96361%_ _%val96363%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96361%_
           _%val96363%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass96359%_)
        (##structure-ref _%klass96359%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass96357%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96357%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass96354%_ _%val96355%_)
        (##structure-set! _%klass96354%_ _%val96355%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass96349%_ _%val96351%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96349%_
           _%val96351%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass96347%_)
        (##structure-ref _%klass96347%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass96345%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96345%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass96342%_ _%val96343%_)
        (##structure-set! _%klass96342%_ _%val96343%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass96337%_ _%val96339%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96337%_
           _%val96339%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass96335%_)
        (##structure-ref _%klass96335%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass96333%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96333%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass96330%_ _%val96331%_)
        (##structure-set! _%klass96330%_ _%val96331%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass96325%_ _%val96327%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96325%_
           _%val96327%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass96323%_)
        (##structure-ref _%klass96323%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass96321%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96321%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass96318%_ _%val96319%_)
        (##structure-set! _%klass96318%_ _%val96319%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass96313%_ _%val96315%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96313%_
           _%val96315%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass96311%_)
        (##structure-ref _%klass96311%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass96309%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass96309%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass96306%_ _%val96307%_)
        (##structure-set!
         _%klass96306%_
         _%val96307%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass96301%_ _%val96303%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96301%_
           _%val96303%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass96299%_)
        (##structure-ref _%klass96299%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass96297%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass96297%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass96294%_ _%val96295%_)
        (##structure-set!
         _%klass96294%_
         _%val96295%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass96289%_ _%val96291%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96289%_
           _%val96291%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass96287%_)
        (##structure-ref _%klass96287%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass96285%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96285%_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass96282%_ _%val96283%_)
        (##structure-set!
         _%klass96282%_
         _%val96283%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass96277%_ _%val96279%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96277%_
           _%val96279%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass96275%_)
        (##structure-ref _%klass96275%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass96273%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96273%_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_%klass96270%_ _%val96271%_)
        (##structure-set!
         _%klass96270%_
         _%val96271%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass96265%_ _%val96267%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96265%_
           _%val96267%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass96263%_)
        (##structure-ref _%klass96263%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass96261%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass96261%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass96258%_ _%val96259%_)
        (##structure-set!
         _%klass96258%_
         _%val96259%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass96253%_ _%val96255%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96253%_
           _%val96255%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass96251%_)
        (##structure-ref _%klass96251%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass96249%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96249%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass96246%_ _%val96247%_)
        (##structure-set! _%klass96246%_ _%val96247%_ '11 class::t 'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass96241%_ _%val96243%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96241%_
           _%val96243%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass96227%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96227%_ 'class))
              (let ((_%klass96231%_ _%klass96227%_))
                (declare (not safe))
                (__class-type-slot-list _%klass96231%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96227%_)
                '#!void)))))
    (define __class-type-slot-list
      (lambda (_%klass96215%_)
        (let ((_%klass96218%_ _%klass96215%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass96218%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass96201%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96201%_ 'class))
              (let ((_%klass96205%_ _%klass96201%_))
                (declare (not safe))
                (__class-type-field-count _%klass96205%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96201%_)
                '#!void)))))
    (define __class-type-field-count
      (lambda (_%klass96189%_)
        (let ()
          (let* ((_%klass96192%_ _%klass96189%_)
                 (__tmp98232
                  (let ((__tmp98233
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass96192%_
                            '7
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##vector-length __tmp98233))))
            (declare (not safe))
            (##fx- __tmp98232 '1)))))
    (define class-type-seal!
      (lambda (_%klass96175%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96175%_ 'class))
              (let ((_%klass96179%_ _%klass96175%_))
                (declare (not safe))
                (__class-type-seal! _%klass96179%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96175%_)
                '#!void)))))
    (define __class-type-seal!
      (lambda (_%klass96163%_)
        (let ((_%klass96166%_ _%klass96163%_))
          (let ((__tmp98234
                 (let ((__tmp98235
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass96166%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp98235))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass96166%_
             __tmp98234
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct96138%_ _%maybe-super-struct96139%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%maybe-sub-struct96138%_ 'class))
              (let ((_%maybe-sub-struct96143%_ _%maybe-sub-struct96138%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%maybe-super-struct96139%_
                       'class))
                    (let ((_%maybe-super-struct96153%_
                           _%maybe-super-struct96139%_))
                      (declare (not safe))
                      (__substruct?
                       _%maybe-sub-struct96143%_
                       _%maybe-super-struct96153%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                       'contract:
                       'class-type?
                       'value:
                       _%maybe-super-struct96139%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
                 'contract:
                 'class-type?
                 'value:
                 _%maybe-sub-struct96138%_)
                '#!void)))))
    (define __substruct?
      (lambda (_%maybe-sub-struct96107%_ _%maybe-super-struct96108%_)
        (let ((_%maybe-sub-struct96111%_ _%maybe-sub-struct96107%_))
          (let* ((_%maybe-super-struct96119%_ _%maybe-super-struct96108%_)
                 (_%maybe-super-struct-id96128%_
                  (let ()
                    (declare (not safe))
                    (##type-id _%maybe-super-struct96119%_))))
            (let _%lp96130%_ ((_%super-struct96132%_
                               _%maybe-sub-struct96111%_))
              (let ()
                (if (let () (declare (not safe)) (not _%super-struct96132%_))
                    (let () '#f)
                    (if (eq? _%maybe-super-struct-id96128%_
                             (let ()
                               (declare (not safe))
                               (##type-id _%super-struct96132%_)))
                        (let () '#t)
                        (let ((__tmp98236
                               (let ()
                                 (declare (not safe))
                                 (##type-super _%super-struct96132%_))))
                          (declare (not safe))
                          (_%lp96130%_ __tmp98236))))))))))
    (define base-struct/1
      (lambda (_%klass96102%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96102%_ 'class))
            (let ()
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _%klass96102%_))
                  _%klass96102%_
                  (let () (declare (not safe)) (##type-super _%klass96102%_))))
            (if (let () (declare (not safe)) (not _%klass96102%_))
                (let () '#f)
                (let () (error '"not a class or false" _%klass96102%_))))))
    (define base-struct/2
      (lambda (_%klass196087%_ _%klass296088%_)
        (let ((_%s196090%_
               (let () (declare (not safe)) (base-struct/1 _%klass196087%_)))
              (_%s296091%_
               (let () (declare (not safe)) (base-struct/1 _%klass296088%_))))
          (if (or (let () (declare (not safe)) (not _%s196090%_))
                  (and _%s296091%_
                       (let ()
                         (declare (not safe))
                         (substruct? _%s196090%_ _%s296091%_))))
              (let () _%s296091%_)
              (if (or (let () (declare (not safe)) (not _%s296091%_))
                      (and _%s196090%_
                           (let ()
                             (declare (not safe))
                             (substruct? _%s296091%_ _%s196090%_))))
                  (let () _%s196090%_)
                  (let ()
                    (error '"bad mixin: incompatible struct bases"
                           _%klass196087%_
                           _%klass296088%_
                           _%s196090%_
                           _%s296091%_)))))))
    (define base-struct/list
      (lambda (_%all-supers95971%_)
        (let* ((_%all-supers9597295997%_ _%all-supers95971%_)
               (_%E9597796001%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers9597295997%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K9599596084%_ (lambda () '#f))
                (_%K9599296070%_
                 (lambda (_%x96068%_)
                   (let () (declare (not safe)) (base-struct/1 _%x96068%_))))
                (_%K9598796047%_
                 (lambda (_%y96044%_ _%x96045%_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _%x96045%_ _%y96044%_))))
                (_%K9597896008%_
                 (lambda (_%y96005%_ _%x96006%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x96006%_ _%y96005%_)))))
            (let* ((_%__match9819098191%_
                    (lambda (_%hd9597996011%_ _%tl9598096013%_)
                      (let ((_%x96016%_ _%hd9597996011%_))
                        (letrec ((_%splice-rest9598296018%_
                                  (lambda (_%rest9598696025%_ _%y96027%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%rest9598696025%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%K9597896008%_
                                           _%y96027%_
                                           _%x96016%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%E9597796001%_)))))
                                 (_%splice-try9598496020%_
                                  (lambda (_%hd9598596029%_
                                           _%rest9598696031%_
                                           _%y9598196032%_)
                                    (let ((_%y96035%_ _%hd9598596029%_))
                                      (let ((__tmp98238
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%rest9598696031%_)))
                                            (__tmp98237
                                             (cons _%y96035%_
                                                   _%y9598196032%_)))
                                        (declare (not safe))
                                        (_%splice-loop9598396022%_
                                         __tmp98238
                                         __tmp98237)))))
                                 (_%splice-loop9598396022%_
                                  (lambda (_%rest9598696037%_ _%y9598196038%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _%rest9598696037%_))
                                        (let ((__tmp98239
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest9598696037%_))))
                                          (declare (not safe))
                                          (_%splice-try9598496020%_
                                           __tmp98239
                                           _%rest9598696037%_
                                           _%y9598196038%_))
                                        (let ((__tmp98240
                                               (reverse _%y9598196038%_)))
                                          (declare (not safe))
                                          (_%splice-rest9598296018%_
                                           _%rest9598696037%_
                                           __tmp98240))))))
                          (let ()
                            (declare (not safe))
                            (_%splice-loop9598396022%_
                             _%tl9598096013%_
                             '()))))))
                   (_%try-match9597496080%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all-supers9597295997%_))
                          (let ((_%tl9599496075%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers9597295997%_)))
                                (_%hd9599396073%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers9597295997%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl9599496075%_))
                                (let ((_%x96078%_ _%hd9599396073%_))
                                  (declare (not safe))
                                  (base-struct/1 _%x96078%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl9599496075%_))
                                    (let ((_%tl9599196059%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl9599496075%_)))
                                          (_%hd9599096057%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl9599496075%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl9599196059%_))
                                          (let ((_%x96055%_ _%hd9599396073%_)
                                                (_%y96062%_ _%hd9599096057%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K9598796047%_
                                               _%y96062%_
                                               _%x96055%_)))
                                          (_%__match9819098191%_
                                           _%hd9599396073%_
                                           _%tl9599496075%_)))
                                    (_%__match9819098191%_
                                     _%hd9599396073%_
                                     _%tl9599496075%_))))
                          (let () (declare (not safe)) (_%E9597796001%_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _%all-supers9597295997%_))
                  (let () (declare (not safe)) (_%K9599596084%_))
                  (let () (declare (not safe)) (_%try-match9597496080%_))))))))
    (define base-struct
      (lambda _%all-supers95969%_
        (let () (declare (not safe)) (base-struct/list _%all-supers95969%_))))
    (define find-super-constructor
      (lambda (_%super95920%_)
        (let _%lp95922%_ ((_%rest95924%_ _%super95920%_)
                          (_%constructor95925%_ '#f))
          (let* ((_%rest9592695934%_ _%rest95924%_)
                 (_%else9592895942%_ (lambda () _%constructor95925%_))
                 (_%K9593095957%_
                  (lambda (_%rest95945%_ _%hd95946%_)
                    (let ((_%$e95948%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd95946%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e95948%_
                          ((lambda (_%xconstructor95951%_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _%constructor95925%_))
                                     (eq? _%constructor95925%_
                                          _%xconstructor95951%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%lp95922%_
                                    _%rest95945%_
                                    _%xconstructor95951%_))
                                 (error '"conflicting implicit constructors"
                                        _%constructor95925%_
                                        _%xconstructor95951%_)))
                           _%$e95948%_)
                          (let ()
                            (declare (not safe))
                            (_%lp95922%_
                             _%rest95945%_
                             _%constructor95925%_)))))))
            (if (let () (declare (not safe)) (##pair? _%rest9592695934%_))
                (let ((_%hd9593195960%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9592695934%_)))
                      (_%tl9593295962%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9592695934%_))))
                  (let* ((_%hd95965%_ _%hd9593195960%_)
                         (_%rest95967%_ _%tl9593295962%_))
                    (declare (not safe))
                    (_%K9593095957%_ _%rest95967%_ _%hd95965%_)))
                (let () (declare (not safe)) (_%else9592895942%_)))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list95896%_ _%direct-slots95897%_)
        (let* ((_%next-slot95899%_ '1)
               (_%slot-table95901%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots95903%_ '(__class))
               (_%process-slot95907%_
                (lambda (_%slot95905%_)
                  (if (let () (declare (not safe)) (symbol? _%slot95905%_))
                      '#!void
                      (error '"invalid slot name" _%slot95905%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table95901%_
                              _%slot95905%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table95901%_
                           _%slot95905%_
                           _%next-slot95899%_))
                        (let ((__tmp98241
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot95905%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table95901%_
                           __tmp98241
                           _%next-slot95899%_))
                        (set! _%r-slots95903%_
                              (cons _%slot95905%_ _%r-slots95903%_))
                        (set! _%next-slot95899%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot95899%_ '1))))
                      '#!void)))
               (_%process-slots95913%_
                (lambda (_%g9590895910%_)
                  (for-each _%process-slot95907%_ _%g9590895910%_))))
          (let ((__tmp98243
                 (lambda (_%mixin95916%_)
                   (let ((__tmp98244
                          (let ((__tmp98245
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%mixin95916%_
                                    '9
                                    '#f
                                    '#f))))
                            (declare (not safe))
                            (agetq__% 'direct-slots: __tmp98245 '()))))
                     (declare (not safe))
                     (_%process-slots95913%_ __tmp98244))))
                (__tmp98242 (reverse _%class-precedence-list95896%_)))
            (declare (not safe))
            (##for-each __tmp98243 __tmp98242))
          (let ()
            (declare (not safe))
            (_%process-slots95913%_ _%direct-slots95897%_))
          (let ((_%slot-vector95918%_
                 (list->vector
                  (let () (declare (not safe)) (##reverse _%r-slots95903%_)))))
            (values _%slot-vector95918%_ _%slot-table95901%_)))))
    (define make-class-type
      (lambda (_%id95821%_
               _%name95822%_
               _%direct-supers95823%_
               _%direct-slots95824%_
               _%properties95825%_
               _%constructor95826%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id95821%_))
              (let ((_%id95830%_ _%id95821%_))
                (if (let () (declare (not safe)) (symbol? _%name95822%_))
                    (let ((_%name95840%_ _%name95822%_))
                      (if (let ()
                            (declare (not safe))
                            (list? _%direct-supers95823%_))
                          (let ((_%direct-supers95850%_
                                 _%direct-supers95823%_))
                            (if (let ()
                                  (declare (not safe))
                                  (list? _%direct-slots95824%_))
                                (let ((_%direct-slots95860%_
                                       _%direct-slots95824%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (list? _%properties95825%_))
                                      (let ((_%properties95870%_
                                             _%properties95825%_))
                                        (if ((lambda (_%$obj95879%_)
                                               (or (let ()
                                                     (declare (not safe))
                                                     (not _%$obj95879%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (symbol? _%$obj95879%_))))
                                             _%constructor95826%_)
                                            (let ((_%constructor95886%_
                                                   _%constructor95826%_))
                                              (declare (not safe))
                                              (__make-class-type
                                               _%id95830%_
                                               _%name95840%_
                                               _%direct-supers95850%_
                                               _%direct-slots95860%_
                                               _%properties95870%_
                                               _%constructor95886%_))
                                            (begin
                                              (raise-contract-violation-error
                                               '"contract violation"
                                               'context:
                                               '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                               'contract:
                                               '(? (or not symbol?))
                                               'value:
                                               _%constructor95826%_)
                                              '#!void)))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                         'contract:
                                         'list?
                                         'value:
                                         _%properties95825%_)
                                        '#!void)))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                   'contract:
                                   'list?
                                   'value:
                                   _%direct-slots95824%_)
                                  '#!void)))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                             'contract:
                             'list?
                             'value:
                             _%direct-supers95823%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                       'contract:
                       'symbol?
                       'value:
                       _%name95822%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
                 'contract:
                 'symbol?
                 'value:
                 _%id95821%_)
                '#!void)))))
    (define __make-class-type
      (lambda (_%id95682%_
               _%name95683%_
               _%direct-supers95684%_
               _%direct-slots95685%_
               _%properties95686%_
               _%constructor95687%_)
        (let ((_%id95690%_ _%id95682%_))
          (let* ((_%name95698%_ _%name95683%_)
                 (_%direct-supers95706%_ _%direct-supers95684%_))
            (let* ((_%direct-slots95714%_ _%direct-slots95685%_)
                   (_%properties95722%_ _%properties95686%_))
              (if ((lambda (_%$obj95730%_)
                     (or (let () (declare (not safe)) (not _%$obj95730%_))
                         (let ()
                           (declare (not safe))
                           (symbol? _%$obj95730%_))))
                   _%constructor95687%_)
                  (let ((_%constructor95737%_ _%constructor95687%_))
                    (let ((_%$e95750%_
                           (let ((__tmp98246
                                  (lambda (_%$obj95747%_)
                                    (let ((__tmp98247
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%$obj95747%_
                                              'class))))
                                      (declare (not safe))
                                      (not __tmp98247)))))
                             (declare (not safe))
                             (__find __tmp98246 _%direct-supers95706%_))))
                      (if _%$e95750%_
                          ((lambda (_%g9575295754%_)
                             (error '"Illegal super class; not a class descriptor"
                                    _%g9575295754%_))
                           _%$e95750%_)
                          (let ((_%$e95757%_
                                 (let ()
                                   (declare (not safe))
                                   (__find __class-type-final?
                                           _%direct-supers95706%_))))
                            (if _%$e95757%_
                                ((lambda (_%g9575995761%_)
                                   (error '"Cannot extend final class"
                                          _%g9575995761%_))
                                 _%$e95757%_)
                                '#!void))))
                    (let ((_g98248_
                           (let ()
                             (declare (not safe))
                             (compute-precedence-list
                              _%direct-supers95706%_))))
                      (begin
                        (let ((_g98249_
                               (let ()
                                 (declare (not safe))
                                 (if (##values? _g98248_)
                                     (##vector-length _g98248_)
                                     1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g98249_ 2)))
                              (error "Context expects 2 values" _g98249_)))
                        (let ((_%precedence-list95764%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g98248_ 0)))
                              (_%struct-super95765%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g98248_ 1))))
                          (let ((_g98250_
                                 (let ()
                                   (declare (not safe))
                                   (compute-class-slots
                                    _%precedence-list95764%_
                                    _%direct-slots95714%_))))
                            (begin
                              (let ((_g98251_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g98250_)
                                           (##vector-length _g98250_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g98251_ 2)))
                                    (error "Context expects 2 values"
                                           _g98251_)))
                              (let ((_%slot-vector95767%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g98250_ 0)))
                                    (_%slot-table95768%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g98250_ 1))))
                                (let* ((_%properties95770%_
                                        (cons (cons 'direct-slots:
                                                    _%direct-slots95714%_)
                                              (cons (cons 'direct-supers:
                                                          _%direct-supers95706%_)
                                                    _%properties95722%_)))
                                       (_%constructor*95775%_
                                        (let ((_%$e95772%_
                                               _%constructor95737%_))
                                          (if _%$e95772%_
                                              _%$e95772%_
                                              (let ()
                                                (declare (not safe))
                                                (find-super-constructor
                                                 _%direct-supers95706%_)))))
                                       (_%precedence-list95818%_
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (agetq__0
                                                   'system:
                                                   _%properties95770%_))
                                                (memq object::t
                                                      _%precedence-list95764%_))
                                            _%precedence-list95764%_
                                            (let _%loop95780%_ ((_%tail95782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%precedence-list95764%_)
                        (_%head95783%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let* ((_%tail9578495792%_
                                                      _%tail95782%_)
                                                     (_%else9578695800%_
                                                      (lambda ()
                                                        (let ((__tmp98252
                                                               (cons object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons t::t '()))))
                  (declare (not safe))
                  (__foldl1 cons __tmp98252 _%head95783%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%K9578895806%_
                                                      (lambda (_%rest95803%_
                                                               _%hd95804%_)
                                                        (if (eq? _%hd95804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         t::t)
                    (let ((__tmp98253 (cons object::t _%tail95782%_)))
                      (declare (not safe))
                      (__foldl1 cons __tmp98253 _%head95783%_))
                    (let ((__tmp98254 (cons _%hd95804%_ _%head95783%_)))
                      (declare (not safe))
                      (_%loop95780%_ _%rest95803%_ __tmp98254))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tail9578495792%_))
                                                    (let ((_%hd9578995809%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tail9578495792%_)))
                                                          (_%tl9579095811%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tail9578495792%_))))
                                                      (let* ((_%hd95814%_
                                                              _%hd9578995809%_)
                                                             (_%rest95816%_
                                                              _%tl9579095811%_))
                                                        (declare (not safe))
                                                        (_%K9578895806%_
                                                         _%rest95816%_
                                                         _%hd95814%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else9578695800%_))))))))
                                  (declare (not safe))
                                  (make-class-type-descriptor
                                   _%id95690%_
                                   _%name95698%_
                                   _%struct-super95765%_
                                   _%precedence-list95818%_
                                   _%slot-vector95767%_
                                   _%properties95770%_
                                   _%constructor*95775%_
                                   _%slot-table95768%_
                                   '#f)))))))))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                     'contract:
                     '(? (or not symbol?))
                     'value:
                     _%constructor95687%_)
                    '#!void)))))))
    (define class-precedence-list
      (lambda (_%klass95668%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95668%_ 'class))
              (let ((_%klass95672%_ _%klass95668%_))
                (declare (not safe))
                (__class-precedence-list _%klass95672%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95668%_)
                '#!void)))))
    (define __class-precedence-list
      (lambda (_%klass95656%_)
        (let ((_%klass95659%_ _%klass95656%_))
          (cons _%klass95659%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass95659%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers95653%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers95653%_))))
    (define make-class-predicate
      (lambda (_%klass95639%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95639%_ 'class))
              (let ((_%klass95643%_ _%klass95639%_))
                (declare (not safe))
                (__make-class-predicate _%klass95643%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95639%_)
                '#!void)))))
    (define __make-class-predicate
      (lambda (_%klass95610%_)
        (let ()
          (let* ((_%klass95613%_ _%klass95610%_)
                 (_%tid95622%_
                  (let () (declare (not safe)) (##type-id _%klass95613%_))))
            (if (let ()
                  (declare (not safe))
                  (__class-type-final? _%klass95613%_))
                (let ()
                  (lambda (_%g9562495626%_)
                    (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       _%g9562495626%_
                       _%tid95622%_))))
                (if (let ()
                      (declare (not safe))
                      (__class-type-struct? _%klass95613%_))
                    (let ()
                      (lambda (_%g9562995631%_)
                        (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _%g9562995631%_
                           _%tid95622%_))))
                    (let ()
                      (lambda (_%g9563495636%_)
                        (let ()
                          (declare (not safe))
                          (__class-instance?
                           _%klass95613%_
                           _%g9563495636%_))))))))))
    (define make-class-slot-accessor
      (lambda (_%klass95585%_ _%slot95586%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95585%_ 'class))
              (let ((_%klass95590%_ _%klass95585%_))
                (if (let () (declare (not safe)) (symbol? _%slot95586%_))
                    (let ((_%slot95600%_ _%slot95586%_))
                      (declare (not safe))
                      (__make-class-slot-accessor
                       _%klass95590%_
                       _%slot95600%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                       'contract:
                       'symbol?
                       'value:
                       _%slot95586%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95585%_)
                '#!void)))))
    (define __make-class-slot-accessor
      (lambda (_%klass95553%_ _%slot95554%_)
        (let ((_%klass95557%_ _%klass95553%_))
          (let* ((_%slot95565%_ _%slot95554%_)
                 (_%field95574%_
                  (let ((__tmp98255
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass95557%_
                            '8
                            '#f
                            '#f))))
                    (declare (not safe))
                    (symbolic-table-ref __tmp98255 _%slot95565%_ '#f))))
            (if (let () (declare (not safe)) (not _%field95574%_))
                (let ()
                  (error '"unknown slot"
                         'class:
                         _%klass95557%_
                         'slot:
                         _%slot95565%_)
                  '#!void)
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass95557%_))
                    (let ()
                      (declare (not safe))
                      (make-final-slot-accessor
                       _%klass95557%_
                       _%slot95565%_
                       _%field95574%_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _%klass95557%_))
                        (let ()
                          (declare (not safe))
                          (make-struct-slot-accessor
                           _%klass95557%_
                           _%slot95565%_
                           _%field95574%_))
                        (if (let ((_%strukt95580%_
                                   (let ()
                                     (declare (not safe))
                                     (base-struct/1 _%klass95557%_))))
                              (and (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%strukt95580%_
                                      'class))
                                   (let ((__tmp98256
                                          (let ((__tmp98257
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%strukt95580%_
                                                    '7
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (##vector-length __tmp98257))))
                                     (declare (not safe))
                                     (##fx< _%field95574%_ __tmp98256))))
                            (let ()
                              (declare (not safe))
                              (make-struct-subclass-slot-accessor
                               _%klass95557%_
                               _%slot95565%_
                               _%field95574%_))
                            (let ()
                              (declare (not safe))
                              (make-class-cached-slot-accessor
                               _%klass95557%_
                               _%slot95565%_
                               _%field95574%_))))))))))
    (define make-class-slot-mutator
      (lambda (_%klass95528%_ _%slot95529%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95528%_ 'class))
              (let ((_%klass95533%_ _%klass95528%_))
                (if (let () (declare (not safe)) (symbol? _%slot95529%_))
                    (let ((_%slot95543%_ _%slot95529%_))
                      (declare (not safe))
                      (__make-class-slot-mutator _%klass95533%_ _%slot95543%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                       'contract:
                       'symbol?
                       'value:
                       _%slot95529%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95528%_)
                '#!void)))))
    (define __make-class-slot-mutator
      (lambda (_%klass95496%_ _%slot95497%_)
        (let ((_%klass95500%_ _%klass95496%_))
          (let* ((_%slot95508%_ _%slot95497%_)
                 (_%field95517%_
                  (let ((__tmp98258
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass95500%_
                            '8
                            '#f
                            '#f))))
                    (declare (not safe))
                    (symbolic-table-ref __tmp98258 _%slot95508%_ '#f))))
            (if (let () (declare (not safe)) (not _%field95517%_))
                (let ()
                  (error '"unknown slot"
                         'class:
                         _%klass95500%_
                         'slot:
                         _%slot95508%_)
                  '#!void)
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass95500%_))
                    (let ()
                      (declare (not safe))
                      (make-final-slot-mutator
                       _%klass95500%_
                       _%slot95508%_
                       _%field95517%_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _%klass95500%_))
                        (let ()
                          (declare (not safe))
                          (make-struct-slot-mutator
                           _%klass95500%_
                           _%slot95508%_
                           _%field95517%_))
                        (if (let ((_%strukt95523%_
                                   (let ()
                                     (declare (not safe))
                                     (base-struct/1 _%klass95500%_))))
                              (and (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%strukt95523%_
                                      'class))
                                   (let ((__tmp98259
                                          (let ((__tmp98260
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%strukt95523%_
                                                    '7
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (##vector-length __tmp98260))))
                                     (declare (not safe))
                                     (##fx< _%field95517%_ __tmp98259))))
                            (let ()
                              (declare (not safe))
                              (make-struct-subclass-slot-mutator
                               _%klass95500%_
                               _%slot95508%_
                               _%field95517%_))
                            (let ()
                              (declare (not safe))
                              (make-class-cached-slot-mutator
                               _%klass95500%_
                               _%slot95508%_
                               _%field95517%_))))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass95471%_ _%slot95472%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95471%_ 'class))
              (let ((_%klass95476%_ _%klass95471%_))
                (if (let () (declare (not safe)) (symbol? _%slot95472%_))
                    (let ((_%slot95486%_ _%slot95472%_))
                      (declare (not safe))
                      (__make-class-slot-unchecked-accessor
                       _%klass95476%_
                       _%slot95486%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                       'contract:
                       'symbol?
                       'value:
                       _%slot95472%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95471%_)
                '#!void)))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass95439%_ _%slot95440%_)
        (let ((_%klass95443%_ _%klass95439%_))
          (let* ((_%slot95451%_ _%slot95440%_)
                 (_%field95460%_
                  (let ((__tmp98261
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass95443%_
                            '8
                            '#f
                            '#f))))
                    (declare (not safe))
                    (symbolic-table-ref __tmp98261 _%slot95451%_ '#f))))
            (if (let () (declare (not safe)) (not _%field95460%_))
                (let ()
                  (error '"unknown slot"
                         'class:
                         _%klass95443%_
                         'slot:
                         _%slot95451%_)
                  '#!void)
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass95443%_))
                    (let ()
                      (declare (not safe))
                      (make-struct-slot-unchecked-accessor
                       _%klass95443%_
                       _%slot95451%_
                       _%field95460%_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _%klass95443%_))
                        (let ()
                          (declare (not safe))
                          (make-struct-slot-unchecked-accessor
                           _%klass95443%_
                           _%slot95451%_
                           _%field95460%_))
                        (if (let ((_%strukt95466%_
                                   (let ()
                                     (declare (not safe))
                                     (base-struct/1 _%klass95443%_))))
                              (and (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%strukt95466%_
                                      'class))
                                   (let ((__tmp98262
                                          (let ((__tmp98263
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%strukt95466%_
                                                    '7
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (##vector-length __tmp98263))))
                                     (declare (not safe))
                                     (##fx< _%field95460%_ __tmp98262))))
                            (let ()
                              (declare (not safe))
                              (make-struct-slot-unchecked-accessor
                               _%klass95443%_
                               _%slot95451%_
                               _%field95460%_))
                            (let ()
                              (declare (not safe))
                              (make-class-cached-slot-unchecked-accessor
                               _%klass95443%_
                               _%slot95451%_
                               _%field95460%_))))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass95414%_ _%slot95415%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95414%_ 'class))
              (let ((_%klass95419%_ _%klass95414%_))
                (if (let () (declare (not safe)) (symbol? _%slot95415%_))
                    (let ((_%slot95429%_ _%slot95415%_))
                      (declare (not safe))
                      (__make-class-slot-unchecked-mutator
                       _%klass95419%_
                       _%slot95429%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                       'contract:
                       'symbol?
                       'value:
                       _%slot95415%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95414%_)
                '#!void)))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass95382%_ _%slot95383%_)
        (let ((_%klass95386%_ _%klass95382%_))
          (let* ((_%slot95394%_ _%slot95383%_)
                 (_%field95403%_
                  (let ((__tmp98264
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass95386%_
                            '8
                            '#f
                            '#f))))
                    (declare (not safe))
                    (symbolic-table-ref __tmp98264 _%slot95394%_ '#f))))
            (if (let () (declare (not safe)) (not _%field95403%_))
                (let ()
                  (error '"unknown slot"
                         'class:
                         _%klass95386%_
                         'slot:
                         _%slot95394%_)
                  '#!void)
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass95386%_))
                    (let ()
                      (declare (not safe))
                      (make-struct-slot-unchecked-mutator
                       _%klass95386%_
                       _%slot95394%_
                       _%field95403%_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _%klass95386%_))
                        (let ()
                          (declare (not safe))
                          (make-struct-slot-unchecked-mutator
                           _%klass95386%_
                           _%slot95394%_
                           _%field95403%_))
                        (if (let ((_%strukt95409%_
                                   (let ()
                                     (declare (not safe))
                                     (base-struct/1 _%klass95386%_))))
                              (and (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%strukt95409%_
                                      'class))
                                   (let ((__tmp98265
                                          (let ((__tmp98266
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%strukt95409%_
                                                    '7
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (##vector-length __tmp98266))))
                                     (declare (not safe))
                                     (##fx< _%field95403%_ __tmp98265))))
                            (let ()
                              (declare (not safe))
                              (make-struct-slot-unchecked-mutator
                               _%klass95386%_
                               _%slot95394%_
                               _%field95403%_))
                            (let ()
                              (declare (not safe))
                              (make-class-cached-slot-unchecked-mutator
                               _%klass95386%_
                               _%slot95394%_
                               _%field95403%_))))))))))
    (define not-an-instance__%
      (lambda (_%object95366%_ _%class95367%_ _%slot95368%_)
        (apply error
               '"not an instance"
               'object:
               _%object95366%_
               'class:
               _%class95367%_
               (if _%slot95368%_ (cons 'slot: (cons _%slot95368%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object95373%_ _%class95374%_)
        (let ((_%slot95376%_ '#f))
          (declare (not safe))
          (not-an-instance__% _%object95373%_ _%class95374%_ _%slot95376%_))))
    (define not-an-instance
      (lambda _g98268_
        (let ((_g98267_ (let () (declare (not safe)) (##length _g98268_))))
          (cond ((let () (declare (not safe)) (##fx= _g98267_ 2))
                 (apply (lambda (_%object95373%_ _%class95374%_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0
                             _%object95373%_
                             _%class95374%_)))
                        _g98268_))
                ((let () (declare (not safe)) (##fx= _g98267_ 3))
                 (apply (lambda (_%object95378%_ _%class95379%_ _%slot95380%_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _%object95378%_
                             _%class95379%_
                             _%slot95380%_)))
                        _g98268_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g98268_))))))
    (define make-final-slot-accessor
      (lambda (_%klass95359%_ _%slot95360%_ _%field95361%_)
        (lambda (_%obj95363%_)
          (##direct-structure-ref
           _%obj95363%_
           _%field95361%_
           _%klass95359%_
           _%slot95360%_))))
    (define make-final-slot-mutator
      (lambda (_%klass95352%_ _%slot95353%_ _%field95354%_)
        (lambda (_%obj95356%_ _%val95357%_)
          (##direct-structure-set!
           _%obj95356%_
           _%val95357%_
           _%field95354%_
           _%klass95352%_
           _%slot95353%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass95346%_ _%slot95347%_ _%field95348%_)
        (lambda (_%obj95350%_)
          (##structure-ref
           _%obj95350%_
           _%field95348%_
           _%klass95346%_
           _%slot95347%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass95339%_ _%slot95340%_ _%field95341%_)
        (lambda (_%obj95343%_ _%val95344%_)
          (##structure-set!
           _%obj95343%_
           _%val95344%_
           _%field95341%_
           _%klass95339%_
           _%slot95340%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass95333%_ _%slot95334%_ _%field95335%_)
        (lambda (_%obj95337%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj95337%_
             _%field95335%_
             _%klass95333%_
             _%slot95334%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass95326%_ _%slot95327%_ _%field95328%_)
        (lambda (_%obj95330%_ _%val95331%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj95330%_
             _%val95331%_
             _%field95328%_
             _%klass95326%_
             _%slot95327%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass95320%_ _%slot95321%_ _%field95322%_)
        (lambda (_%obj95324%_)
          (if (let ()
                (declare (not safe))
                (class-instance? _%klass95320%_ _%obj95324%_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _%obj95324%_ _%field95322%_))
              (let ()
                (declare (not safe))
                (not-an-instance__%
                 _%obj95324%_
                 _%klass95320%_
                 _%slot95321%_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass95313%_ _%slot95314%_ _%field95315%_)
        (lambda (_%obj95317%_ _%val95318%_)
          (if (let ()
                (declare (not safe))
                (class-instance? _%klass95313%_ _%obj95317%_))
              (let ()
                (declare (not safe))
                (unchecked-field-set!
                 _%obj95317%_
                 _%field95315%_
                 _%val95318%_))
              (let ()
                (declare (not safe))
                (not-an-instance__%
                 _%obj95317%_
                 _%klass95313%_
                 _%slot95314%_))))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass95304%_ _%slot95305%_ _%field95306%_)
        (lambda (_%obj95308%_)
          (if (let ((__tmp98269
                     (let () (declare (not safe)) (##type-id _%klass95304%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj95308%_ __tmp98269))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _%obj95308%_ _%field95306%_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _%klass95304%_ _%obj95308%_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _%obj95308%_ _%slot95305%_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _%obj95308%_
                     _%klass95304%_
                     _%slot95305%_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass95294%_ _%slot95295%_ _%field95296%_)
        (lambda (_%obj95298%_ _%val95299%_)
          (if (let ((__tmp98270
                     (let () (declare (not safe)) (##type-id _%klass95294%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj95298%_ __tmp98270))
              (let ()
                (declare (not safe))
                (unchecked-field-set!
                 _%obj95298%_
                 _%field95296%_
                 _%val95299%_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _%klass95294%_ _%obj95298%_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set!
                     _%obj95298%_
                     _%slot95295%_
                     _%val95299%_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _%obj95298%_
                     _%klass95294%_
                     _%slot95295%_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass95288%_ _%slot95289%_ _%field95290%_)
        (lambda (_%obj95292%_)
          (if (let ((__tmp98271
                     (let () (declare (not safe)) (##type-id _%klass95288%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj95292%_ __tmp98271))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _%obj95292%_ _%field95290%_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _%obj95292%_ _%slot95289%_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass95281%_ _%slot95282%_ _%field95283%_)
        (lambda (_%obj95285%_ _%val95286%_)
          (if (let ((__tmp98272
                     (let () (declare (not safe)) (##type-id _%klass95281%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj95285%_ __tmp98272))
              (let ()
                (declare (not safe))
                (unchecked-field-set!
                 _%obj95285%_
                 _%field95283%_
                 _%val95286%_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set!
                 _%obj95285%_
                 _%slot95282%_
                 _%val95286%_))))))
    (define class-slot-offset
      (lambda (_%klass95256%_ _%slot95257%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95256%_ 'class))
              (let ((_%klass95261%_ _%klass95256%_))
                (if (let () (declare (not safe)) (symbolic? _%slot95257%_))
                    (let ((_%slot95271%_ _%slot95257%_))
                      (declare (not safe))
                      (__class-slot-offset _%klass95261%_ _%slot95271%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                       'contract:
                       'symbolic?
                       'value:
                       _%slot95257%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95256%_)
                '#!void)))))
    (define __class-slot-offset
      (lambda (_%klass95235%_ _%slot95236%_)
        (let ((_%klass95239%_ _%klass95235%_))
          (let* ((_%slot95247%_ _%slot95236%_)
                 (__tmp98273
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%klass95239%_ '8 '#f '#f))))
            (declare (not safe))
            (symbolic-table-ref __tmp98273 _%slot95247%_ '#f)))))
    (define class-slot-ref
      (lambda (_%klass95209%_ _%obj95210%_ _%slot95211%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95209%_ 'class))
              (let ((_%klass95215%_ _%klass95209%_))
                (if (let () (declare (not safe)) (symbolic? _%slot95211%_))
                    (let ((_%slot95225%_ _%slot95211%_))
                      (declare (not safe))
                      (__class-slot-ref
                       _%klass95215%_
                       _%obj95210%_
                       _%slot95225%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                       'contract:
                       'symbolic?
                       'value:
                       _%slot95211%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95209%_)
                '#!void)))))
    (define __class-slot-ref
      (lambda (_%klass95185%_ _%obj95186%_ _%slot95187%_)
        (let ()
          (let* ((_%klass95190%_ _%klass95185%_) (_%slot95198%_ _%slot95187%_))
            (if (let ()
                  (declare (not safe))
                  (__class-instance? _%klass95190%_ _%obj95186%_))
                (let ((_%off95207%_
                       (let ((__tmp98274
                              (let ()
                                (declare (not safe))
                                (##structure-type _%obj95186%_))))
                         (declare (not safe))
                         (class-slot-offset __tmp98274 _%slot95198%_))))
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%obj95186%_
                   _%off95207%_
                   _%klass95190%_
                   _%slot95198%_))
                (let ()
                  (declare (not safe))
                  (not-an-instance__0 _%obj95186%_ _%klass95190%_)))))))
    (define class-slot-set!
      (lambda (_%klass95158%_ _%obj95159%_ _%slot95160%_ _%val95161%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95158%_ 'class))
              (let ((_%klass95165%_ _%klass95158%_))
                (if (let () (declare (not safe)) (symbolic? _%slot95160%_))
                    (let ((_%slot95175%_ _%slot95160%_))
                      (declare (not safe))
                      (__class-slot-set!
                       _%klass95165%_
                       _%obj95159%_
                       _%slot95175%_
                       _%val95161%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                       'contract:
                       'symbolic?
                       'value:
                       _%slot95160%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95158%_)
                '#!void)))))
    (define __class-slot-set!
      (lambda (_%klass95133%_ _%obj95134%_ _%slot95135%_ _%val95136%_)
        (let ()
          (let* ((_%klass95139%_ _%klass95133%_) (_%slot95147%_ _%slot95135%_))
            (if (let ()
                  (declare (not safe))
                  (__class-instance? _%klass95139%_ _%obj95134%_))
                (let ((_%off95156%_
                       (let ((__tmp98275
                              (let ()
                                (declare (not safe))
                                (##structure-type _%obj95134%_))))
                         (declare (not safe))
                         (class-slot-offset __tmp98275 _%slot95147%_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%obj95134%_
                   _%val95136%_
                   _%off95156%_
                   _%klass95139%_
                   _%slot95147%_))
                (let ()
                  (declare (not safe))
                  (not-an-instance__0 _%obj95134%_ _%klass95139%_)))))))
    (define unchecked-field-ref
      (lambda (_%obj95130%_ _%off95131%_)
        (let ((__tmp98276
               (let () (declare (not safe)) (##structure-type _%obj95130%_))))
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj95130%_
           _%off95131%_
           __tmp98276
           '#f))))
    (define unchecked-field-set!
      (lambda (_%obj95126%_ _%off95127%_ _%val95128%_)
        (let ((__tmp98277
               (let () (declare (not safe)) (##structure-type _%obj95126%_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj95126%_
           _%val95128%_
           _%off95127%_
           __tmp98277
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj95123%_ _%slot95124%_)
        (let ((__tmp98278
               (let ((__tmp98279
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj95123%_))))
                 (declare (not safe))
                 (__class-slot-offset __tmp98279 _%slot95124%_))))
          (declare (not safe))
          (unchecked-field-ref _%obj95123%_ __tmp98278))))
    (define unchecked-slot-set!
      (lambda (_%obj95119%_ _%slot95120%_ _%val95121%_)
        (let ((__tmp98280
               (let ((__tmp98281
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj95119%_))))
                 (declare (not safe))
                 (__class-slot-offset __tmp98281 _%slot95120%_))))
          (declare (not safe))
          (unchecked-field-set! _%obj95119%_ __tmp98280 _%val95121%_))))
    (define slot-ref__%
      (lambda (_%obj95081%_ _%slot95082%_ _%E95083%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%slot95082%_))
              (let ((_%slot95087%_ _%slot95082%_))
                (if (let () (declare (not safe)) (procedure? _%E95083%_))
                    (let ((_%E95097%_ _%E95083%_))
                      (declare (not safe))
                      (__slot-ref__% _%obj95081%_ _%slot95087%_ _%E95097%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                       'contract:
                       'procedure?
                       'value:
                       _%E95083%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
                 'contract:
                 'symbol?
                 'value:
                 _%slot95082%_)
                '#!void)))))
    (define slot-ref__0
      (lambda (_%obj95110%_ _%slot95111%_)
        (let ((_%E95113%_ __slot-error))
          (declare (not safe))
          (slot-ref__% _%obj95110%_ _%slot95111%_ _%E95113%_))))
    (define slot-ref
      (lambda _g98283_
        (let ((_g98282_ (let () (declare (not safe)) (##length _g98283_))))
          (cond ((let () (declare (not safe)) (##fx= _g98282_ 2))
                 (apply (lambda (_%obj95110%_ _%slot95111%_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%obj95110%_ _%slot95111%_)))
                        _g98283_))
                ((let () (declare (not safe)) (##fx= _g98282_ 3))
                 (apply (lambda (_%obj95115%_ _%slot95116%_ _%E95117%_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__%
                             _%obj95115%_
                             _%slot95116%_
                             _%E95117%_)))
                        _g98283_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g98283_))))))
    (define __slot-ref__%
      (lambda (_%obj95037%_ _%slot95038%_ _%E95039%_)
        (let ()
          (let* ((_%slot95042%_ _%slot95038%_) (_%E95050%_ _%E95039%_))
            (let* ((_%klass95059%_
                    (let () (declare (not safe)) (class-of _%obj95037%_)))
                   (_%$e95062%_
                    (let ()
                      (declare (not safe))
                      (class-slot-offset _%klass95059%_ _%slot95042%_))))
              (if _%$e95062%_
                  ((lambda (_%off95065%_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _%obj95037%_ _%off95065%_)))
                   _%$e95062%_)
                  (let ()
                    (declare (not safe))
                    (_%E95050%_ _%obj95037%_ _%slot95042%_))))))))
    (define __slot-ref__0
      (lambda (_%obj95071%_ _%slot95072%_)
        (let ((_%E95074%_ __slot-error))
          (declare (not safe))
          (__slot-ref__% _%obj95071%_ _%slot95072%_ _%E95074%_))))
    (define __slot-ref
      (lambda _g98285_
        (let ((_g98284_ (let () (declare (not safe)) (##length _g98285_))))
          (cond ((let () (declare (not safe)) (##fx= _g98284_ 2))
                 (apply (lambda (_%obj95071%_ _%slot95072%_)
                          (let ()
                            (declare (not safe))
                            (__slot-ref__0 _%obj95071%_ _%slot95072%_)))
                        _g98285_))
                ((let () (declare (not safe)) (##fx= _g98284_ 3))
                 (apply (lambda (_%obj95076%_ _%slot95077%_ _%E95078%_)
                          (let ()
                            (declare (not safe))
                            (__slot-ref__%
                             _%obj95076%_
                             _%slot95077%_
                             _%E95078%_)))
                        _g98285_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g98285_))))))
    (define slot-set!__%
      (lambda (_%obj94995%_ _%slot94996%_ _%val94997%_ _%E94998%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%slot94996%_))
              (let ((_%slot95002%_ _%slot94996%_))
                (if (let () (declare (not safe)) (procedure? _%E94998%_))
                    (let ((_%E95012%_ _%E94998%_))
                      (declare (not safe))
                      (__slot-set!__%
                       _%obj94995%_
                       _%slot95002%_
                       _%val94997%_
                       _%E95012%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                       'contract:
                       'procedure?
                       'value:
                       _%E94998%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
                 'contract:
                 'symbol?
                 'value:
                 _%slot94996%_)
                '#!void)))))
    (define slot-set!__0
      (lambda (_%obj95025%_ _%slot95026%_ _%val95027%_)
        (let ((_%E95029%_ __slot-error))
          (declare (not safe))
          (slot-set!__% _%obj95025%_ _%slot95026%_ _%val95027%_ _%E95029%_))))
    (define slot-set!
      (lambda _g98287_
        (let ((_g98286_ (let () (declare (not safe)) (##length _g98287_))))
          (cond ((let () (declare (not safe)) (##fx= _g98286_ 3))
                 (apply (lambda (_%obj95025%_ _%slot95026%_ _%val95027%_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0
                             _%obj95025%_
                             _%slot95026%_
                             _%val95027%_)))
                        _g98287_))
                ((let () (declare (not safe)) (##fx= _g98286_ 4))
                 (apply (lambda (_%obj95031%_
                                 _%slot95032%_
                                 _%val95033%_
                                 _%E95034%_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _%obj95031%_
                             _%slot95032%_
                             _%val95033%_
                             _%E95034%_)))
                        _g98287_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g98287_))))))
    (define __slot-set!__%
      (lambda (_%obj94948%_ _%slot94949%_ _%val94950%_ _%E94951%_)
        (let ()
          (let* ((_%slot94954%_ _%slot94949%_) (_%E94962%_ _%E94951%_))
            (let* ((_%klass94971%_
                    (let () (declare (not safe)) (class-of _%obj94948%_)))
                   (_%$e94974%_
                    (let ()
                      (declare (not safe))
                      (class-slot-offset _%klass94971%_ _%slot94954%_))))
              (if _%$e94974%_
                  ((lambda (_%off94977%_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _%obj94948%_
                        _%off94977%_
                        _%val94950%_)))
                   _%$e94974%_)
                  (let ()
                    (declare (not safe))
                    (_%E94962%_ _%obj94948%_ _%slot94954%_))))))))
    (define __slot-set!__0
      (lambda (_%obj94983%_ _%slot94984%_ _%val94985%_)
        (let ((_%E94987%_ __slot-error))
          (declare (not safe))
          (__slot-set!__%
           _%obj94983%_
           _%slot94984%_
           _%val94985%_
           _%E94987%_))))
    (define __slot-set!
      (lambda _g98289_
        (let ((_g98288_ (let () (declare (not safe)) (##length _g98289_))))
          (cond ((let () (declare (not safe)) (##fx= _g98288_ 3))
                 (apply (lambda (_%obj94983%_ _%slot94984%_ _%val94985%_)
                          (let ()
                            (declare (not safe))
                            (__slot-set!__0
                             _%obj94983%_
                             _%slot94984%_
                             _%val94985%_)))
                        _g98289_))
                ((let () (declare (not safe)) (##fx= _g98288_ 4))
                 (apply (lambda (_%obj94989%_
                                 _%slot94990%_
                                 _%val94991%_
                                 _%E94992%_)
                          (let ()
                            (declare (not safe))
                            (__slot-set!__%
                             _%obj94989%_
                             _%slot94990%_
                             _%val94991%_
                             _%E94992%_)))
                        _g98289_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g98289_))))))
    (define __slot-error
      (lambda (_%obj94944%_ _%slot94945%_)
        (error '"Cannot find slot"
               'object:
               _%obj94944%_
               'slot:
               _%slot94945%_)))
    (define subclass?
      (lambda (_%maybe-sub-class94919%_ _%maybe-super-class94920%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%maybe-sub-class94919%_ 'class))
              (let ((_%maybe-sub-class94924%_ _%maybe-sub-class94919%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%maybe-super-class94920%_
                       'class))
                    (let ((_%maybe-super-class94934%_
                           _%maybe-super-class94920%_))
                      (declare (not safe))
                      (__subclass?
                       _%maybe-sub-class94924%_
                       _%maybe-super-class94934%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                       'contract:
                       'class-type?
                       'value:
                       _%maybe-super-class94920%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
                 'contract:
                 'class-type?
                 'value:
                 _%maybe-sub-class94919%_)
                '#!void)))))
    (define __subclass?
      (lambda (_%maybe-sub-class94891%_ _%maybe-super-class94892%_)
        (let ()
          (let* ((_%maybe-sub-class94895%_ _%maybe-sub-class94891%_)
                 (_%maybe-super-class94903%_ _%maybe-super-class94892%_))
            (let* ((_%maybe-super-class-id94912%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%maybe-super-class94903%_)))
                   (_%$e94914%_
                    (eq? _%maybe-super-class-id94912%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%maybe-sub-class94895%_)))))
              (if _%$e94914%_
                  _%$e94914%_
                  (let ((__tmp98291
                         (lambda (_%super-class94917%_)
                           (eq? (let ()
                                  (declare (not safe))
                                  (##type-id _%super-class94917%_))
                                _%maybe-super-class-id94912%_)))
                        (__tmp98290
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%maybe-sub-class94895%_
                            '6
                            '#f
                            '#f))))
                    (declare (not safe))
                    (__ormap1 __tmp98291 __tmp98290))))))))
    (define object?
      (lambda (_%o94888%_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _%o94888%_))
              (let ((__tmp98292
                     (let ()
                       (declare (not safe))
                       (##structure-type _%o94888%_))))
                (declare (not safe))
                (##structure-instance-of? __tmp98292 'class))
              '#f))))
    (define object-type
      (lambda (_%o94883%_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _%o94883%_))
              (let ((_%klass94886%_
                     (let ()
                       (declare (not safe))
                       (##structure-type _%o94883%_))))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass94886%_ 'class))
                    _%klass94886%_
                    (begin
                      (error '"not an object" _%o94883%_ _%klass94886%_)
                      '#!void)))
              (begin (error '"not an object" _%o94883%_) '#!void)))))
    (define direct-instance?
      (lambda (_%klass94868%_ _%obj94869%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94868%_ 'class))
              (let ((_%klass94873%_ _%klass94868%_))
                (declare (not safe))
                (__direct-instance? _%klass94873%_ _%obj94869%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94868%_)
                '#!void)))))
    (define __direct-instance?
      (lambda (_%klass94855%_ _%obj94856%_)
        (let ()
          (let* ((_%klass94859%_ _%klass94855%_)
                 (__tmp98293
                  (let () (declare (not safe)) (##type-id _%klass94859%_))))
            (declare (not safe))
            (##structure-direct-instance-of? _%obj94856%_ __tmp98293)))))
    (define immediate-instance-of?
      (lambda (_%klass94851%_ _%obj94852%_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _%obj94852%_))
              (eq? _%klass94851%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%obj94852%_)))
              '#f))))
    (define struct-instance?
      (lambda (_%klass94836%_ _%obj94837%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94836%_ 'class))
              (let ((_%klass94841%_ _%klass94836%_))
                (declare (not safe))
                (__struct-instance? _%klass94841%_ _%obj94837%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94836%_)
                '#!void)))))
    (define __struct-instance?
      (lambda (_%klass94823%_ _%obj94824%_)
        (let ()
          (let* ((_%klass94827%_ _%klass94823%_)
                 (__tmp98294
                  (let () (declare (not safe)) (##type-id _%klass94827%_))))
            (declare (not safe))
            (##structure-instance-of? _%obj94824%_ __tmp98294)))))
    (define class-instance?
      (lambda (_%klass94808%_ _%obj94809%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94808%_ 'class))
              (let ((_%klass94813%_ _%klass94808%_))
                (declare (not safe))
                (__class-instance? _%klass94813%_ _%obj94809%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94808%_)
                '#!void)))))
    (define __class-instance?
      (lambda (_%klass94793%_ _%obj94794%_)
        (let ()
          (let* ((_%klass94797%_ _%klass94793%_)
                 (_%type94806%_
                  (let () (declare (not safe)) (class-of _%obj94794%_))))
            (declare (not safe))
            (subclass? _%type94806%_ _%klass94797%_)))))
    (define make-object
      (lambda (_%klass94768%_ _%k94769%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94768%_ 'class))
              (let ((_%klass94773%_ _%klass94768%_))
                (if (let () (declare (not safe)) (fixnum? _%k94769%_))
                    (let ((_%k94783%_ _%k94769%_))
                      (declare (not safe))
                      (__make-object _%klass94773%_ _%k94783%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                       'contract:
                       'fixnum?
                       'value:
                       _%k94769%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94768%_)
                '#!void)))))
    (define __make-object
      (lambda (_%klass94745%_ _%k94746%_)
        (let ()
          (let* ((_%klass94749%_ _%klass94745%_) (_%k94757%_ _%k94746%_))
            (if (let ()
                  (declare (not safe))
                  (__class-type-system? _%klass94749%_))
                (begin
                  (error '"cannot instantiate system class"
                         'class:
                         _%klass94749%_)
                  '#!void)
                (let ((_%obj94766%_
                       (let ()
                         (declare (not safe))
                         (##make-structure _%klass94749%_ _%k94757%_))))
                  (declare (not safe))
                  (object-fill! _%obj94766%_ '#f)))))))
    (define object-fill!
      (lambda (_%obj94730%_ _%fill94731%_)
        (let ()
          (if '#t
              (let ((_%obj94735%_ _%obj94730%_))
                (declare (not safe))
                (__object-fill! _%obj94735%_ _%fill94731%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
                 'contract:
                 'true
                 'value:
                 _%obj94730%_)
                '#!void)))))
    (define __object-fill!
      (lambda (_%obj94712%_ _%fill94713%_)
        (let ((_%obj94716%_ _%obj94712%_))
          (let _%loop94725%_ ((_%i94727%_
                               (let ((__tmp98296
                                      (let ()
                                        (declare (not safe))
                                        (##structure-length _%obj94716%_))))
                                 (declare (not safe))
                                 (##fx- __tmp98296 '1))))
            (let ()
              (if (let () (declare (not safe)) (##fx> _%i94727%_ '0))
                  (begin
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%obj94716%_
                       _%fill94713%_
                       _%i94727%_
                       '#f
                       '#f))
                    (let ((__tmp98295
                           (let ()
                             (declare (not safe))
                             (##fx- _%i94727%_ '1))))
                      (declare (not safe))
                      (_%loop94725%_ __tmp98295)))
                  _%obj94716%_))))))
    (define new-instance
      (lambda (_%klass94698%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94698%_ 'class))
              (let ((_%klass94702%_ _%klass94698%_))
                (declare (not safe))
                (__new-instance _%klass94702%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94698%_)
                '#!void)))))
    (define __new-instance
      (lambda (_%klass94686%_)
        (let ()
          (let* ((_%klass94689%_ _%klass94686%_)
                 (__obj98192
                  (let ((__tmp98297
                         (let ((__tmp98298
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass94689%_
                                   '7
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (##vector-length __tmp98298))))
                    (declare (not safe))
                    (##make-structure _%klass94689%_ __tmp98297))))
            (let () (declare (not safe)) (object-fill! __obj98192 '#f))
            __obj98192))))
    (define make-instance
      (lambda (_%klass94671%_ . _%args94672%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94671%_ 'class))
              (let ((_%klass94676%_ _%klass94671%_))
                (declare (not safe))
                (##apply __make-instance _%klass94676%_ _%args94672%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94671%_)
                '#!void)))))
    (define __make-instance
      (lambda (_%klass94643%_ . _%args94644%_)
        (let ()
          (let* ((_%klass94647%_ _%klass94643%_)
                 (_%$e94656%_
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%klass94647%_ '10 '#f '#f))))
            (if _%$e94656%_
                ((lambda (_%kons-id94659%_)
                   (let ((_%obj94661%_
                          (let ()
                            (declare (not safe))
                            (__new-instance _%klass94647%_))))
                     (let ()
                       (declare (not safe))
                       (___constructor-init!
                        _%klass94647%_
                        _%kons-id94659%_
                        _%obj94661%_
                        _%args94644%_))
                     _%obj94661%_))
                 _%$e94656%_)
                (if (let ()
                      (declare (not safe))
                      (__class-type-metaclass? _%klass94647%_))
                    (let ((_%obj94664%_
                           (let ()
                             (declare (not safe))
                             (__new-instance _%klass94647%_))))
                      (let ()
                        (declare (not safe))
                        (__metaclass-instance-init!
                         _%klass94647%_
                         _%obj94664%_
                         _%args94644%_))
                      _%obj94664%_)
                    (if (let ((__tmp98299
                               (let ()
                                 (declare (not safe))
                                 (__class-type-struct? _%klass94647%_))))
                          (declare (not safe))
                          (not __tmp98299))
                        (let ((_%obj94667%_
                               (let ()
                                 (declare (not safe))
                                 (__new-instance _%klass94647%_))))
                          (let ()
                            (declare (not safe))
                            (___class-instance-init!
                             _%klass94647%_
                             _%obj94667%_
                             _%args94644%_))
                          _%obj94667%_)
                        (if (let ((__tmp98301
                                   (let ()
                                     (declare (not safe))
                                     (__class-type-field-count
                                      _%klass94647%_)))
                                  (__tmp98300 (length _%args94644%_)))
                              (declare (not safe))
                              (##fx= __tmp98301 __tmp98300))
                            (let ()
                              (apply ##structure _%klass94647%_ _%args94644%_))
                            (let ()
                              (error '"arguments don't match object size"
                                     'class:
                                     _%klass94647%_
                                     'slots:
                                     (let ()
                                       (declare (not safe))
                                       (__class-type-slot-list _%klass94647%_))
                                     'args:
                                     _%args94644%_)
                              '#!void)))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj94628%_ . _%args94629%_)
        (let ()
          (if '#t
              (let ((_%obj94633%_ _%obj94628%_))
                (declare (not safe))
                (##apply __struct-instance-init! _%obj94633%_ _%args94629%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
                 'contract:
                 'true
                 'value:
                 _%obj94628%_)
                '#!void)))))
    (define __struct-instance-init!
      (lambda (_%obj94615%_ . _%args94616%_)
        (let ((_%obj94619%_ _%obj94615%_))
          (if (let ((__tmp98303 (length _%args94616%_))
                    (__tmp98302
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj94619%_))))
                (declare (not safe))
                (##fx< __tmp98303 __tmp98302))
              (let ()
                (declare (not safe))
                (___struct-instance-init! _%obj94619%_ _%args94616%_))
              (error '"too many arguments for struct"
                     'object:
                     _%obj94619%_
                     'args:
                     _%args94616%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj94574%_ _%args94575%_)
        (let _%lp94577%_ ((_%k94579%_ '1) (_%rest94580%_ _%args94575%_))
          (let* ((_%rest9458194589%_ _%rest94580%_)
                 (_%else9458394597%_ (lambda () _%obj94574%_))
                 (_%K9458594603%_
                  (lambda (_%rest94600%_ _%hd94601%_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set!
                       _%obj94574%_
                       _%k94579%_
                       _%hd94601%_))
                    (let ((__tmp98304
                           (let ()
                             (declare (not safe))
                             (##fx+ _%k94579%_ '1))))
                      (declare (not safe))
                      (_%lp94577%_ __tmp98304 _%rest94600%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest9458194589%_))
                (let ((_%hd9458694606%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9458194589%_)))
                      (_%tl9458794608%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9458194589%_))))
                  (let* ((_%hd94611%_ _%hd9458694606%_)
                         (_%rest94613%_ _%tl9458794608%_))
                    (declare (not safe))
                    (_%K9458594603%_ _%rest94613%_ _%hd94611%_)))
                (let () (declare (not safe)) (_%else9458394597%_)))))))
    (define class-instance-init!
      (lambda (_%obj94559%_ . _%args94560%_)
        (let ()
          (if '#t
              (let ((_%obj94564%_ _%obj94559%_))
                (declare (not safe))
                (##apply __class-instance-init! _%obj94564%_ _%args94560%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
                 'contract:
                 'true
                 'value:
                 _%obj94559%_)
                '#!void)))))
    (define __class-instance-init!
      (lambda (_%obj94546%_ . _%args94547%_)
        (let ((_%obj94550%_ _%obj94546%_))
          (let ((__tmp98305
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj94550%_))))
            (declare (not safe))
            (___class-instance-init! __tmp98305 _%obj94550%_ _%args94547%_))
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass94488%_ _%obj94489%_ _%args94490%_)
        (let _%lp94492%_ ((_%rest94494%_ _%args94490%_))
          (let* ((_%rest9449594505%_ _%rest94494%_)
                 (_%else9449794513%_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _%rest94494%_))
                        _%obj94489%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass94488%_
                               'rest:
                               _%rest94494%_))))
                 (_%K9449994527%_
                  (lambda (_%rest94516%_ _%val94517%_ _%key94518%_)
                    (if (let ((__tmp98306
                               (let ()
                                 (declare (not safe))
                                 (keyword? _%key94518%_))))
                          (declare (not safe))
                          (not __tmp98306))
                        (let ()
                          (error '"non keyword slot initializer"
                                 'slot:
                                 _%key94518%_))
                        (let ((_%$e94521%_
                               (let ()
                                 (declare (not safe))
                                 (__class-slot-offset
                                  _%klass94488%_
                                  _%key94518%_))))
                          (if _%$e94521%_
                              ((lambda (_%off94524%_)
                                 (let ()
                                   (declare (not safe))
                                   (unchecked-field-set!
                                    _%obj94489%_
                                    _%off94524%_
                                    _%val94517%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%lp94492%_ _%rest94516%_)))
                               _%$e94521%_)
                              (let ()
                                (error '"unknown slot"
                                       'class:
                                       _%klass94488%_
                                       'slot:
                                       _%key94518%_))))))))
            (if (let () (declare (not safe)) (##pair? _%rest9449594505%_))
                (let ((_%hd9450094530%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9449594505%_)))
                      (_%tl9450194532%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9449594505%_))))
                  (let ((_%key94535%_ _%hd9450094530%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9450194532%_))
                        (let ((_%hd9450294537%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9450194532%_)))
                              (_%tl9450394539%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9450194532%_))))
                          (let* ((_%val94542%_ _%hd9450294537%_)
                                 (_%rest94544%_ _%tl9450394539%_))
                            (declare (not safe))
                            (_%K9449994527%_
                             _%rest94544%_
                             _%val94542%_
                             _%key94535%_)))
                        (let () (declare (not safe)) (_%else9449794513%_)))))
                (let () (declare (not safe)) (_%else9449794513%_)))))))
    (define __metaclass-instance-init!
      (lambda (_%klass94484%_ _%obj94485%_ _%args94486%_)
        (apply call-method
               _%klass94484%_
               'instance-init!
               _%obj94485%_
               _%args94486%_)))
    (define constructor-init!
      (lambda (_%klass94447%_ _%kons-id94448%_ _%obj94449%_ . _%args94450%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94447%_ 'class))
              (let ((_%klass94454%_ _%klass94447%_))
                (if (let () (declare (not safe)) (symbol? _%kons-id94448%_))
                    (let ((_%kons-id94464%_ _%kons-id94448%_))
                      (if '#t
                          (let ((_%obj94474%_ _%obj94449%_))
                            (declare (not safe))
                            (##apply __constructor-init!
                                     _%klass94454%_
                                     _%kons-id94464%_
                                     _%obj94474%_
                                     _%args94450%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                             'contract:
                             'true
                             'value:
                             _%obj94449%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                       'contract:
                       'symbol?
                       'value:
                       _%kons-id94448%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94447%_)
                '#!void)))))
    (define __constructor-init!
      (lambda (_%klass94416%_ _%kons-id94417%_ _%obj94418%_ . _%args94419%_)
        (let ((_%klass94422%_ _%klass94416%_))
          (let* ((_%kons-id94430%_ _%kons-id94417%_)
                 (_%obj94438%_ _%obj94418%_))
            (let ()
              (declare (not safe))
              (___constructor-init!
               _%klass94422%_
               _%kons-id94430%_
               _%obj94438%_
               _%args94419%_))
            '#!void))))
    (define ___constructor-init!
      (lambda (_%klass94405%_ _%kons-id94406%_ _%obj94407%_ _%args94408%_)
        (let ((_%$e94410%_
               (let ()
                 (declare (not safe))
                 (__find-method
                  _%klass94405%_
                  _%obj94407%_
                  _%kons-id94406%_))))
          (if _%$e94410%_
              ((lambda (_%kons94413%_)
                 (apply _%kons94413%_ _%obj94407%_ _%args94408%_)
                 _%obj94407%_)
               _%$e94410%_)
              (let ()
                (error '"missing constructor"
                       'class:
                       _%klass94405%_
                       'method:
                       _%kons-id94406%_))))))
    (define struct-copy
      (lambda (_%struct94391%_)
        (let ()
          (if '#t
              (let ((_%struct94395%_ _%struct94391%_))
                (declare (not safe))
                (__struct-copy _%struct94395%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
                 'contract:
                 'true
                 'value:
                 _%struct94391%_)
                '#!void)))))
    (define __struct-copy
      (lambda (_%struct94379%_)
        (let ((_%struct94382%_ _%struct94379%_))
          (declare (not safe))
          (##structure-copy _%struct94382%_))))
    (define struct->list
      (lambda (_%obj94365%_)
        (let ()
          (if '#t
              (let ((_%obj94369%_ _%obj94365%_))
                (declare (not safe))
                (__struct->list _%obj94369%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
                 'contract:
                 'true
                 'value:
                 _%obj94365%_)
                '#!void)))))
    (define __struct->list
      (lambda (_%obj94353%_)
        (let ((_%obj94356%_ _%obj94353%_))
          (declare (not safe))
          (##vector->list _%obj94356%_))))
    (define class->list
      (lambda (_%obj94339%_)
        (let ()
          (if '#t
              (let ((_%obj94343%_ _%obj94339%_))
                (declare (not safe))
                (__class->list _%obj94343%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@837.20-837.23"
                 'contract:
                 'true
                 'value:
                 _%obj94339%_)
                '#!void)))))
    (define __class->list
      (lambda (_%obj94315%_)
        (let ((_%obj94318%_ _%obj94315%_))
          (let* ((_%klass94327%_
                  (let ()
                    (declare (not safe))
                    (##structure-type _%obj94318%_)))
                 (_%slot-vector94329%_
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%klass94327%_ '7 '#f '#f))))
            (let _%loop94331%_ ((_%index94333%_
                                 (let ((__tmp98312
                                        (let ()
                                          (declare (not safe))
                                          (##vector-length
                                           _%slot-vector94329%_))))
                                   (declare (not safe))
                                   (##fx- __tmp98312 '1)))
                                (_%plist94334%_ '()))
              (let ()
                (if (let () (declare (not safe)) (##fx< _%index94333%_ '1))
                    (cons _%klass94327%_ _%plist94334%_)
                    (let ((_%slot94337%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref
                              _%slot-vector94329%_
                              _%index94333%_))))
                      (let ((__tmp98311
                             (let ()
                               (declare (not safe))
                               (##fx- _%index94333%_ '1)))
                            (__tmp98307
                             (let ((__tmp98310
                                    (let ()
                                      (declare (not safe))
                                      (symbol->keyword _%slot94337%_)))
                                   (__tmp98308
                                    (let ((__tmp98309
                                           (let ()
                                             (declare (not safe))
                                             (unchecked-field-ref
                                              _%obj94318%_
                                              _%index94333%_))))
                                      (declare (not safe))
                                      (cons __tmp98309 _%plist94334%_))))
                               (declare (not safe))
                               (cons __tmp98310 __tmp98308))))
                        (declare (not safe))
                        (_%loop94331%_ __tmp98311 __tmp98307))))))))))
    (define call-method
      (lambda (_%obj94299%_ _%id94300%_ . _%args94301%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id94300%_))
              (let ((_%id94305%_ _%id94300%_))
                (declare (not safe))
                (##apply __call-method _%obj94299%_ _%id94305%_ _%args94301%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@852.24-852.26"
                 'contract:
                 'symbol?
                 'value:
                 _%id94300%_)
                '#!void)))))
    (define __call-method
      (lambda (_%obj94268%_ _%id94269%_ . _%args94270%_)
        (let ()
          (let* ((_%id94273%_ _%id94269%_)
                 (_%$e94282%_
                  (let ()
                    (declare (not safe))
                    (__method-ref _%obj94268%_ _%id94273%_))))
            (if _%$e94282%_
                ((lambda (_%method94285%_)
                   (let ((_%method94287%_ _%method94285%_))
                     (apply _%method94287%_ _%obj94268%_ _%args94270%_)))
                 _%$e94282%_)
                (let ()
                  (error '"cannot find method"
                         'object:
                         _%obj94268%_
                         'method:
                         _%id94273%_)))))))
    (define method-ref
      (lambda (_%obj94253%_ _%id94254%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id94254%_))
              (let ((_%id94258%_ _%id94254%_))
                (declare (not safe))
                (__method-ref _%obj94253%_ _%id94258%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@876.23-876.25"
                 'contract:
                 'symbol?
                 'value:
                 _%id94254%_)
                '#!void)))))
    (define __method-ref
      (lambda (_%obj94240%_ _%id94241%_)
        (let ()
          (let* ((_%id94244%_ _%id94241%_)
                 (__tmp98313
                  (let () (declare (not safe)) (class-of _%obj94240%_))))
            (declare (not safe))
            (__find-method __tmp98313 _%obj94240%_ _%id94244%_)))))
    (define checked-method-ref
      (lambda (_%obj94233%_ _%id94234%_)
        (let ((_%$e94237%_
               (let ()
                 (declare (not safe))
                 (method-ref _%obj94233%_ _%id94234%_))))
          (if _%$e94237%_
              _%$e94237%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj94233%_
                       'method:
                       _%id94234%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj94218%_ _%id94219%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id94219%_))
              (let ((_%id94223%_ _%id94219%_))
                (declare (not safe))
                (__bound-method-ref _%obj94218%_ _%id94223%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@884.29-884.31"
                 'contract:
                 'symbol?
                 'value:
                 _%id94219%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj94186%_ _%id94187%_)
        (let ()
          (let* ((_%id94190%_ _%id94187%_)
                 (_%$e94199%_
                  (let ()
                    (declare (not safe))
                    (__method-ref _%obj94186%_ _%id94190%_))))
            (if _%$e94199%_
                ((lambda (_%method94202%_)
                   (let ((_%method94204%_ _%method94202%_))
                     (lambda _%args94215%_
                       (apply _%method94204%_ _%obj94186%_ _%args94215%_))))
                 _%$e94199%_)
                (let () '#f))))))
    (define checked-bound-method-ref
      (lambda (_%obj94171%_ _%id94172%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id94172%_))
              (let ((_%id94176%_ _%id94172%_))
                (declare (not safe))
                (__checked-bound-method-ref _%obj94171%_ _%id94176%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@893.37-893.39"
                 'contract:
                 'symbol?
                 'value:
                 _%id94172%_)
                '#!void)))))
    (define __checked-bound-method-ref
      (lambda (_%obj94154%_ _%id94155%_)
        (let ()
          (let* ((_%id94158%_ _%id94155%_)
                 (_%method94167%_
                  (let ()
                    (declare (not safe))
                    (checked-method-ref _%obj94154%_ _%id94158%_))))
            (lambda _%args94169%_
              (apply _%method94167%_ _%obj94154%_ _%args94169%_))))))
    (define find-method
      (lambda (_%klass94128%_ _%obj94129%_ _%id94130%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94128%_ 'class))
              (let ((_%klass94134%_ _%klass94128%_))
                (if (let () (declare (not safe)) (symbol? _%id94130%_))
                    (let ((_%id94144%_ _%id94130%_))
                      (declare (not safe))
                      (__find-method _%klass94134%_ _%obj94129%_ _%id94144%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@898.41-898.43"
                       'contract:
                       'symbol?
                       'value:
                       _%id94130%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@898.20-898.25"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94128%_)
                '#!void)))))
    (define __find-method
      (lambda (_%klass94101%_ _%obj94102%_ _%id94103%_)
        (let ((_%klass94106%_ _%klass94101%_))
          (let* ((_%id94114%_ _%id94103%_)
                 (_%$e94123%_
                  (let ()
                    (declare (not safe))
                    (__direct-method-ref
                     _%klass94106%_
                     _%obj94102%_
                     _%id94114%_))))
            (if _%$e94123%_
                _%$e94123%_
                (if (let ()
                      (declare (not safe))
                      (__class-type-sealed? _%klass94106%_))
                    (let () '#f)
                    (let ()
                      (declare (not safe))
                      (__mixin-method-ref
                       _%klass94106%_
                       _%obj94102%_
                       _%id94114%_))))))))
    (define mixin-find-method
      (lambda (_%mixins94085%_ _%obj94086%_ _%id94087%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id94087%_))
              (let ((_%id94091%_ _%id94087%_))
                (declare (not safe))
                (__mixin-find-method _%mixins94085%_ _%obj94086%_ _%id94091%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@906.37-906.39"
                 'contract:
                 'symbol?
                 'value:
                 _%id94087%_)
                '#!void)))))
    (define __mixin-find-method
      (lambda (_%mixins94067%_ _%obj94068%_ _%id94069%_)
        (let ()
          (let* ((_%id94072%_ _%id94069%_)
                 (__tmp98314
                  (lambda (_%g9408094082%_)
                    (let ()
                      (declare (not safe))
                      (direct-method-ref
                       _%g9408094082%_
                       _%obj94068%_
                       _%id94072%_)))))
            (declare (not safe))
            (__ormap1 __tmp98314 _%mixins94067%_)))))
    (define direct-method-ref
      (lambda (_%klass94041%_ _%obj94042%_ _%id94043%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94041%_ 'class))
              (let ((_%klass94047%_ _%klass94041%_))
                (if (let () (declare (not safe)) (symbol? _%id94043%_))
                    (let ((_%id94057%_ _%id94043%_))
                      (declare (not safe))
                      (__direct-method-ref
                       _%klass94047%_
                       _%obj94042%_
                       _%id94057%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@909.47-909.49"
                       'contract:
                       'symbol?
                       'value:
                       _%id94043%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@909.26-909.31"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94041%_)
                '#!void)))))
    (define __direct-method-ref
      (lambda (_%klass93995%_ _%obj93996%_ _%id93997%_)
        (let ()
          (let* ((_%klass94000%_ _%klass93995%_) (_%id94008%_ _%id93997%_))
            (letrec ((_%metaclass-resolve-method94017%_
                      (lambda ()
                        (let ((__method98193
                               (let ()
                                 (declare (not safe))
                                 (__method-ref
                                  _%klass94000%_
                                  'direct-method-ref))))
                          (if __method98193
                              (__method98193
                               _%klass94000%_
                               _%obj93996%_
                               _%id94008%_)
                              (error '"Missing method"
                                     _%klass94000%_
                                     'direct-method-ref)))))
                     (_%metaclass-resolve-method!94018%_
                      (lambda ()
                        (let ((_%method94038%_
                               (let ()
                                 (declare (not safe))
                                 (_%metaclass-resolve-method94017%_))))
                          (let ((__tmp98316
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass94000%_
                                    '11
                                    '#f
                                    '#f)))
                                (__tmp98315
                                 (if _%method94038%_ 'resolved 'unknown)))
                            (declare (not safe))
                            (symbolic-table-set!
                             __tmp98316
                             _%id94008%_
                             __tmp98315))
                          _%method94038%_))))
              (let ((_%$e94020%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass94000%_
                        '11
                        '#f
                        '#f))))
                (if _%$e94020%_
                    ((lambda (_%ht94023%_)
                       (let ((_%method94025%_
                              (let ()
                                (declare (not safe))
                                (symbolic-table-ref
                                 _%ht94023%_
                                 _%id94008%_
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (procedure? _%method94025%_))
                             (let () _%method94025%_)
                             (if (let ()
                                   (declare (not safe))
                                   (__class-type-metaclass? _%klass94000%_))
                                 (let ((_%$e94029%_ _%method94025%_))
                                   (if (eq? 'resolved _%$e94029%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%metaclass-resolve-method94017%_))
                                       (if (eq? 'unknown _%$e94029%_)
                                           '#f
                                           (let ()
                                             (declare (not safe))
                                             (_%metaclass-resolve-method!94018%_)))))
                                 (let () '#f)))))
                     _%$e94020%_)
                    (if (let ()
                          (declare (not safe))
                          (__class-type-metaclass? _%klass94000%_))
                        (let ((_%tab94034%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0))))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _%klass94000%_
                             _%tab94034%_
                             '11
                             '#f
                             '#f))
                          (let ()
                            (declare (not safe))
                            (_%metaclass-resolve-method!94018%_)))
                        (let () '#f)))))))))
    (define mixin-method-ref
      (lambda (_%klass93969%_ _%obj93970%_ _%id93971%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93969%_ 'class))
              (let ((_%klass93975%_ _%klass93969%_))
                (if (let () (declare (not safe)) (symbol? _%id93971%_))
                    (let ((_%id93985%_ _%id93971%_))
                      (declare (not safe))
                      (__mixin-method-ref
                       _%klass93975%_
                       _%obj93970%_
                       _%id93985%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@939.46-939.48"
                       'contract:
                       'symbol?
                       'value:
                       _%id93971%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@939.25-939.30"
                 'contract:
                 'class-type?
                 'value:
                 _%klass93969%_)
                '#!void)))))
    (define __mixin-method-ref
      (lambda (_%klass93947%_ _%obj93948%_ _%id93949%_)
        (let ((_%klass93952%_ _%klass93947%_))
          (let* ((_%id93960%_ _%id93949%_)
                 (__tmp98317
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%klass93952%_ '6 '#f '#f))))
            (declare (not safe))
            (__mixin-find-method __tmp98317 _%obj93948%_ _%id93960%_)))))
    (define bind-method!__%
      (lambda (_%klass93906%_ _%id93907%_ _%proc93908%_ _%rebind?93909%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93907%_))
              (let ((_%id93913%_ _%id93907%_))
                (if (let () (declare (not safe)) (procedure? _%proc93908%_))
                    (let ((_%proc93923%_ _%proc93908%_))
                      (declare (not safe))
                      (__bind-method!__%
                       _%klass93906%_
                       _%id93913%_
                       _%proc93923%_
                       _%rebind?93909%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@942.42-942.46"
                       'contract:
                       'procedure?
                       'value:
                       _%proc93908%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@942.27-942.29"
                 'contract:
                 'symbol?
                 'value:
                 _%id93907%_)
                '#!void)))))
    (define bind-method!__0
      (lambda (_%klass93936%_ _%id93937%_ _%proc93938%_)
        (let ((_%rebind?93940%_ '#f))
          (declare (not safe))
          (bind-method!__%
           _%klass93936%_
           _%id93937%_
           _%proc93938%_
           _%rebind?93940%_))))
    (define bind-method!
      (lambda _g98319_
        (let ((_g98318_ (let () (declare (not safe)) (##length _g98319_))))
          (cond ((let () (declare (not safe)) (##fx= _g98318_ 3))
                 (apply (lambda (_%klass93936%_ _%id93937%_ _%proc93938%_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _%klass93936%_
                             _%id93937%_
                             _%proc93938%_)))
                        _g98319_))
                ((let () (declare (not safe)) (##fx= _g98318_ 4))
                 (apply (lambda (_%klass93942%_
                                 _%id93943%_
                                 _%proc93944%_
                                 _%rebind?93945%_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _%klass93942%_
                             _%id93943%_
                             _%proc93944%_
                             _%rebind?93945%_)))
                        _g98319_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g98319_))))))
    (define __bind-method!__%
      (lambda (_%klass93857%_ _%id93858%_ _%proc93859%_ _%rebind?93860%_)
        (let ()
          (let* ((_%id93863%_ _%id93858%_) (_%proc93871%_ _%proc93859%_))
            (letrec ((_%bind!93880%_
                      (lambda (_%ht93889%_)
                        (if (and (let ()
                                   (declare (not safe))
                                   (not _%rebind?93860%_))
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%ht93889%_
                                    _%id93863%_
                                    '#f)))
                            (error '"method already bound"
                                   'class:
                                   _%klass93857%_
                                   'method:
                                   _%id93863%_)
                            (begin
                              (let ()
                                (declare (not safe))
                                (symbolic-table-set!
                                 _%ht93889%_
                                 _%id93863%_
                                 _%proc93871%_))
                              '#!void)))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass93857%_ 'class))
                  (let ((_%ht93883%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass93857%_
                            '11
                            '#f
                            '#f))))
                    (if _%ht93883%_
                        (let ()
                          (declare (not safe))
                          (_%bind!93880%_ _%ht93883%_))
                        (let ((_%ht93885%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0))))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _%klass93857%_
                             _%ht93885%_
                             '11
                             '#f
                             '#f))
                          (let ()
                            (declare (not safe))
                            (_%bind!93880%_ _%ht93885%_)))))
                  (if (let () (declare (not safe)) (##type? _%klass93857%_))
                      (let ((__tmp98320
                             (let ()
                               (declare (not safe))
                               (__shadow-class _%klass93857%_))))
                        (declare (not safe))
                        (__bind-method!
                         __tmp98320
                         _%id93863%_
                         _%proc93871%_
                         _%rebind?93860%_))
                      (let ()
                        (error '"bad class; expected class or builtin type"
                               _%klass93857%_)))))))))
    (define __bind-method!__0
      (lambda (_%klass93894%_ _%id93895%_ _%proc93896%_)
        (let ((_%rebind?93898%_ '#f))
          (declare (not safe))
          (__bind-method!__%
           _%klass93894%_
           _%id93895%_
           _%proc93896%_
           _%rebind?93898%_))))
    (define __bind-method!
      (lambda _g98322_
        (let ((_g98321_ (let () (declare (not safe)) (##length _g98322_))))
          (cond ((let () (declare (not safe)) (##fx= _g98321_ 3))
                 (apply (lambda (_%klass93894%_ _%id93895%_ _%proc93896%_)
                          (let ()
                            (declare (not safe))
                            (__bind-method!__0
                             _%klass93894%_
                             _%id93895%_
                             _%proc93896%_)))
                        _g98322_))
                ((let () (declare (not safe)) (##fx= _g98321_ 4))
                 (apply (lambda (_%klass93900%_
                                 _%id93901%_
                                 _%proc93902%_
                                 _%rebind?93903%_)
                          (let ()
                            (declare (not safe))
                            (__bind-method!__%
                             _%klass93900%_
                             _%id93901%_
                             _%proc93902%_
                             _%rebind?93903%_)))
                        _g98322_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g98322_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint93837%_ _%seed93839%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint93837%_
           procedure-hash
           eq?
           _%seed93839%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint93845%_ '#f) (_%seed93847%_ '0))
          (declare (not safe))
          (make-method-specializer-table__%
           _%size-hint93845%_
           _%seed93847%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint93849%_)
        (let ((_%seed93851%_ '0))
          (declare (not safe))
          (make-method-specializer-table__%
           _%size-hint93849%_
           _%seed93851%_))))
    (define make-method-specializer-table
      (lambda _g98324_
        (let ((_g98323_ (let () (declare (not safe)) (##length _g98324_))))
          (cond ((let () (declare (not safe)) (##fx= _g98323_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__0)))
                        _g98324_))
                ((let () (declare (not safe)) (##fx= _g98323_ 1))
                 (apply (lambda (_%size-hint93849%_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__1
                             _%size-hint93849%_)))
                        _g98324_))
                ((let () (declare (not safe)) (##fx= _g98323_ 2))
                 (apply (lambda (_%size-hint93853%_ _%seed93854%_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__%
                             _%size-hint93853%_
                             _%seed93854%_)))
                        _g98324_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g98324_))))))
    (define method-specializer-table-ref
      (lambda (_%tab93790%_ _%key93791%_ _%default93792%_)
        (let ((_%table93794%_
               (let () (declare (not safe)) (&raw-table-table _%tab93790%_)))
              (_%seed93795%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93790%_))))
          (let* ((_%h93797%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93791%_))
                         _%seed93795%_))
                 (_%size93800%_ (vector-length _%table93794%_))
                 (_%entries93803%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93800%_ '2)))
                 (_%start93806%_
                  (let ((__tmp98325
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93797%_ _%entries93803%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98325 '1))))
            (let _%loop93810%_ ((_%probe93813%_ _%start93806%_)
                                (_%i93815%_ '1)
                                (_%deleted93817%_ '#f))
              (let ((_%k93820%_ (vector-ref _%table93794%_ _%probe93813%_)))
                (if (eq? _%k93820%_ (macro-unused-obj))
                    (let () _%default93792%_)
                    (if (eq? _%k93820%_ (macro-deleted-obj))
                        (let ((__tmp98328
                               (let ((_%next-probe93825%_
                                      (fx+ _%start93806%_
                                           _%i93815%_
                                           (fx* _%i93815%_ _%i93815%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93825%_
                                  _%size93800%_)))
                              (__tmp98327
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93815%_ '1)))
                              (__tmp98326
                               (let ((_%$e93828%_ _%deleted93817%_))
                                 (if _%$e93828%_ _%$e93828%_ _%probe93813%_))))
                          (declare (not safe))
                          (_%loop93810%_ __tmp98328 __tmp98327 __tmp98326))
                        (if (eq? _%key93791%_ _%k93820%_)
                            (let ()
                              (vector-ref
                               _%table93794%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93813%_ '1))))
                            (let ((__tmp98330
                                   (let ((_%next-probe93833%_
                                          (fx+ _%start93806%_
                                               _%i93815%_
                                               (fx* _%i93815%_ _%i93815%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93833%_
                                      _%size93800%_)))
                                  (__tmp98329
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93815%_ '1))))
                              (declare (not safe))
                              (_%loop93810%_
                               __tmp98330
                               __tmp98329
                               _%deleted93817%_)))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab93786%_ _%key93787%_ _%value93788%_)
        (if (let ((__tmp98333
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93786%_)))
                  (__tmp98331
                   (let ((__tmp98332
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93786%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp98332 '4))))
              (declare (not safe))
              (##fx< __tmp98333 __tmp98331))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93786%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-set!
           _%tab93786%_
           _%key93787%_
           _%value93788%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab93737%_ _%key93738%_ _%value93739%_)
        (let ((_%table93742%_
               (let () (declare (not safe)) (&raw-table-table _%tab93737%_)))
              (_%seed93743%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93737%_))))
          (let* ((_%h93745%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93738%_))
                         _%seed93743%_))
                 (_%size93748%_ (vector-length _%table93742%_))
                 (_%entries93751%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93748%_ '2)))
                 (_%start93754%_
                  (let ((__tmp98334
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93745%_ _%entries93751%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98334 '1))))
            (let _%loop93758%_ ((_%probe93761%_ _%start93754%_)
                                (_%i93763%_ '1)
                                (_%deleted93765%_ '#f))
              (let ((_%k93768%_ (vector-ref _%table93742%_ _%probe93761%_)))
                (if (eq? _%k93768%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted93765%_
                          (begin
                            (vector-set!
                             _%table93742%_
                             _%deleted93765%_
                             _%key93738%_)
                            (vector-set!
                             _%table93742%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted93765%_ '1))
                             _%value93739%_)
                            ((lambda ()
                               (let ((__tmp98335
                                      (let ((__tmp98336
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93737%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98336 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93737%_
                                  __tmp98335)))))
                          (begin
                            (vector-set!
                             _%table93742%_
                             _%probe93761%_
                             _%key93738%_)
                            (vector-set!
                             _%table93742%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93761%_ '1))
                             _%value93739%_)
                            ((lambda ()
                               (let ((__tmp98337
                                      (let ((__tmp98338
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab93737%_))))
                                        (declare (not safe))
                                        (##fx- __tmp98338 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab93737%_
                                  __tmp98337))
                               (let ((__tmp98339
                                      (let ((__tmp98340
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93737%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98340 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93737%_
                                  __tmp98339)))))))
                    (if (eq? _%k93768%_ (macro-deleted-obj))
                        (let ((__tmp98343
                               (let ((_%next-probe93775%_
                                      (fx+ _%start93754%_
                                           _%i93763%_
                                           (fx* _%i93763%_ _%i93763%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93775%_
                                  _%size93748%_)))
                              (__tmp98342
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93763%_ '1)))
                              (__tmp98341
                               (let ((_%$e93778%_ _%deleted93765%_))
                                 (if _%$e93778%_ _%$e93778%_ _%probe93761%_))))
                          (declare (not safe))
                          (_%loop93758%_ __tmp98343 __tmp98342 __tmp98341))
                        (if (eq? _%key93738%_ _%k93768%_)
                            (let ()
                              (vector-set!
                               _%table93742%_
                               _%probe93761%_
                               _%key93738%_)
                              (vector-set!
                               _%table93742%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93761%_ '1))
                               _%value93739%_))
                            (let ((__tmp98345
                                   (let ((_%next-probe93783%_
                                          (fx+ _%start93754%_
                                               _%i93763%_
                                               (fx* _%i93763%_ _%i93763%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93783%_
                                      _%size93748%_)))
                                  (__tmp98344
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93763%_ '1))))
                              (declare (not safe))
                              (_%loop93758%_
                               __tmp98345
                               __tmp98344
                               _%deleted93765%_)))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab93732%_
               _%key93733%_
               _%method-specializer-table-update!93734%_
               _%default93735%_)
        (if (let ((__tmp98348
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93732%_)))
                  (__tmp98346
                   (let ((__tmp98347
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93732%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp98347 '4))))
              (declare (not safe))
              (##fx< __tmp98348 __tmp98346))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93732%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-update!
           _%tab93732%_
           _%key93733%_
           _%method-specializer-table-update!93734%_
           _%default93735%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab93682%_
               _%key93683%_
               _%method-specializer-table-update!93684%_
               _%default93685%_)
        (let ((_%table93688%_
               (let () (declare (not safe)) (&raw-table-table _%tab93682%_)))
              (_%seed93689%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93682%_))))
          (let* ((_%h93691%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93683%_))
                         _%seed93689%_))
                 (_%size93694%_ (vector-length _%table93688%_))
                 (_%entries93697%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93694%_ '2)))
                 (_%start93700%_
                  (let ((__tmp98349
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93691%_ _%entries93697%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98349 '1))))
            (let _%loop93704%_ ((_%probe93707%_ _%start93700%_)
                                (_%i93709%_ '1)
                                (_%deleted93711%_ '#f))
              (let ((_%k93714%_ (vector-ref _%table93688%_ _%probe93707%_)))
                (if (eq? _%k93714%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted93711%_
                          (begin
                            (vector-set!
                             _%table93688%_
                             _%deleted93711%_
                             _%key93683%_)
                            (vector-set!
                             _%table93688%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted93711%_ '1))
                             (_%method-specializer-table-update!93684%_
                              _%default93685%_))
                            ((lambda ()
                               (let ((__tmp98350
                                      (let ((__tmp98351
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93682%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98351 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93682%_
                                  __tmp98350)))))
                          (begin
                            (vector-set!
                             _%table93688%_
                             _%probe93707%_
                             _%key93683%_)
                            (vector-set!
                             _%table93688%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93707%_ '1))
                             (_%method-specializer-table-update!93684%_
                              _%default93685%_))
                            ((lambda ()
                               (let ((__tmp98352
                                      (let ((__tmp98353
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab93682%_))))
                                        (declare (not safe))
                                        (##fx- __tmp98353 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab93682%_
                                  __tmp98352))
                               (let ((__tmp98354
                                      (let ((__tmp98355
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93682%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98355 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93682%_
                                  __tmp98354)))))))
                    (if (eq? _%k93714%_ (macro-deleted-obj))
                        (let ((__tmp98358
                               (let ((_%next-probe93721%_
                                      (fx+ _%start93700%_
                                           _%i93709%_
                                           (fx* _%i93709%_ _%i93709%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93721%_
                                  _%size93694%_)))
                              (__tmp98357
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93709%_ '1)))
                              (__tmp98356
                               (let ((_%$e93724%_ _%deleted93711%_))
                                 (if _%$e93724%_ _%$e93724%_ _%probe93707%_))))
                          (declare (not safe))
                          (_%loop93704%_ __tmp98358 __tmp98357 __tmp98356))
                        (if (eq? _%key93683%_ _%k93714%_)
                            (let ()
                              (vector-set!
                               _%table93688%_
                               _%probe93707%_
                               _%key93683%_)
                              (vector-set!
                               _%table93688%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93707%_ '1))
                               (_%method-specializer-table-update!93684%_
                                (vector-ref
                                 _%table93688%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe93707%_ '1))))))
                            (let ((__tmp98360
                                   (let ((_%next-probe93729%_
                                          (fx+ _%start93700%_
                                               _%i93709%_
                                               (fx* _%i93709%_ _%i93709%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93729%_
                                      _%size93694%_)))
                                  (__tmp98359
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93709%_ '1))))
                              (declare (not safe))
                              (_%loop93704%_
                               __tmp98360
                               __tmp98359
                               _%deleted93711%_)))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab93637%_ _%key93639%_)
        (let ((_%table93642%_
               (let () (declare (not safe)) (&raw-table-table _%tab93637%_)))
              (_%seed93644%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93637%_))))
          (let* ((_%h93647%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93639%_))
                         _%seed93644%_))
                 (_%size93650%_ (vector-length _%table93642%_))
                 (_%entries93653%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93650%_ '2)))
                 (_%start93656%_
                  (let ((__tmp98361
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93647%_ _%entries93653%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98361 '1))))
            (let _%loop93660%_ ((_%probe93663%_ _%start93656%_)
                                (_%i93665%_ '1))
              (let ((_%k93668%_ (vector-ref _%table93642%_ _%probe93663%_)))
                (if (eq? _%k93668%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k93668%_ (macro-deleted-obj))
                        (let ((__tmp98363
                               (let ((_%next-probe93673%_
                                      (fx+ _%start93656%_
                                           _%i93665%_
                                           (fx* _%i93665%_ _%i93665%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93673%_
                                  _%size93650%_)))
                              (__tmp98362
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93665%_ '1))))
                          (declare (not safe))
                          (_%loop93660%_ __tmp98363 __tmp98362))
                        (if (eq? _%key93639%_ _%k93668%_)
                            (let ()
                              (vector-set!
                               _%table93642%_
                               _%probe93663%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93642%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93663%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp98364
                                        (let ((__tmp98365
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab93637%_))))
                                          (declare (not safe))
                                          (##fx- __tmp98365 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab93637%_
                                    __tmp98364)))))
                            (let ((__tmp98367
                                   (let ((_%next-probe93679%_
                                          (fx+ _%start93656%_
                                               _%i93665%_
                                               (fx* _%i93665%_ _%i93665%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93679%_
                                      _%size93650%_)))
                                  (__tmp98366
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93665%_ '1))))
                              (declare (not safe))
                              (_%loop93660%_ __tmp98367 __tmp98366)))))))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-method-specializer-table__% '#f '0)))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc93628%_ _%specializer93629%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93633%_ ()
            (if (let ((__tmp98368
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp98368 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again93633%_))))))
        (let ()
          (declare (not safe))
          (method-specializer-table-set!
           __method-specializers
           _%method-proc93628%_
           _%specializer93629%_))
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc93618%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93622%_ ()
            (if (let ((__tmp98369
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp98369 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again93622%_))))))
        (let ((_%specializer93626%_
               (let ()
                 (declare (not safe))
                 (method-specializer-table-ref
                  __method-specializers
                  _%proc93618%_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer93626%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass93616%_)
        (let ((__tmp98370
               (let () (declare (not safe)) (##type-id _%klass93616%_))))
          (declare (not safe))
          (symbolic-hash __tmp98370))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint93597%_ _%seed93599%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint93597%_
           __class-specializer-hash-key
           eq?
           _%seed93599%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint93605%_ '#f) (_%seed93607%_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _%size-hint93605%_ _%seed93607%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint93609%_)
        (let ((_%seed93611%_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _%size-hint93609%_ _%seed93611%_))))
    (define make-class-specializer-table
      (lambda _g98372_
        (let ((_g98371_ (let () (declare (not safe)) (##length _g98372_))))
          (cond ((let () (declare (not safe)) (##fx= _g98371_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g98372_))
                ((let () (declare (not safe)) (##fx= _g98371_ 1))
                 (apply (lambda (_%size-hint93609%_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _%size-hint93609%_)))
                        _g98372_))
                ((let () (declare (not safe)) (##fx= _g98371_ 2))
                 (apply (lambda (_%size-hint93613%_ _%seed93614%_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _%size-hint93613%_
                             _%seed93614%_)))
                        _g98372_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g98372_))))))
    (define class-specializer-table-ref
      (lambda (_%tab93550%_ _%key93551%_ _%default93552%_)
        (let ((_%table93554%_
               (let () (declare (not safe)) (&raw-table-table _%tab93550%_)))
              (_%seed93555%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93550%_))))
          (let* ((_%h93557%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key93551%_))
                         _%seed93555%_))
                 (_%size93560%_ (vector-length _%table93554%_))
                 (_%entries93563%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93560%_ '2)))
                 (_%start93566%_
                  (let ((__tmp98373
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93557%_ _%entries93563%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98373 '1))))
            (let _%loop93570%_ ((_%probe93573%_ _%start93566%_)
                                (_%i93575%_ '1)
                                (_%deleted93577%_ '#f))
              (let ((_%k93580%_ (vector-ref _%table93554%_ _%probe93573%_)))
                (if (eq? _%k93580%_ (macro-unused-obj))
                    (let () _%default93552%_)
                    (if (eq? _%k93580%_ (macro-deleted-obj))
                        (let ((__tmp98376
                               (let ((_%next-probe93585%_
                                      (fx+ _%start93566%_
                                           _%i93575%_
                                           (fx* _%i93575%_ _%i93575%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93585%_
                                  _%size93560%_)))
                              (__tmp98375
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93575%_ '1)))
                              (__tmp98374
                               (let ((_%$e93588%_ _%deleted93577%_))
                                 (if _%$e93588%_ _%$e93588%_ _%probe93573%_))))
                          (declare (not safe))
                          (_%loop93570%_ __tmp98376 __tmp98375 __tmp98374))
                        (if (eq? _%key93551%_ _%k93580%_)
                            (let ()
                              (vector-ref
                               _%table93554%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93573%_ '1))))
                            (let ((__tmp98378
                                   (let ((_%next-probe93593%_
                                          (fx+ _%start93566%_
                                               _%i93575%_
                                               (fx* _%i93575%_ _%i93575%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93593%_
                                      _%size93560%_)))
                                  (__tmp98377
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93575%_ '1))))
                              (declare (not safe))
                              (_%loop93570%_
                               __tmp98378
                               __tmp98377
                               _%deleted93577%_)))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab93546%_ _%key93547%_ _%value93548%_)
        (if (let ((__tmp98381
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93546%_)))
                  (__tmp98379
                   (let ((__tmp98380
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93546%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp98380 '4))))
              (declare (not safe))
              (##fx< __tmp98381 __tmp98379))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93546%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-set!
           _%tab93546%_
           _%key93547%_
           _%value93548%_))))
    (define __class-specializer-table-set!
      (lambda (_%tab93497%_ _%key93498%_ _%value93499%_)
        (let ((_%table93502%_
               (let () (declare (not safe)) (&raw-table-table _%tab93497%_)))
              (_%seed93503%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93497%_))))
          (let* ((_%h93505%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key93498%_))
                         _%seed93503%_))
                 (_%size93508%_ (vector-length _%table93502%_))
                 (_%entries93511%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93508%_ '2)))
                 (_%start93514%_
                  (let ((__tmp98382
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93505%_ _%entries93511%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98382 '1))))
            (let _%loop93518%_ ((_%probe93521%_ _%start93514%_)
                                (_%i93523%_ '1)
                                (_%deleted93525%_ '#f))
              (let ((_%k93528%_ (vector-ref _%table93502%_ _%probe93521%_)))
                (if (eq? _%k93528%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted93525%_
                          (begin
                            (vector-set!
                             _%table93502%_
                             _%deleted93525%_
                             _%key93498%_)
                            (vector-set!
                             _%table93502%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted93525%_ '1))
                             _%value93499%_)
                            ((lambda ()
                               (let ((__tmp98383
                                      (let ((__tmp98384
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93497%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98384 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93497%_
                                  __tmp98383)))))
                          (begin
                            (vector-set!
                             _%table93502%_
                             _%probe93521%_
                             _%key93498%_)
                            (vector-set!
                             _%table93502%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93521%_ '1))
                             _%value93499%_)
                            ((lambda ()
                               (let ((__tmp98385
                                      (let ((__tmp98386
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab93497%_))))
                                        (declare (not safe))
                                        (##fx- __tmp98386 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab93497%_
                                  __tmp98385))
                               (let ((__tmp98387
                                      (let ((__tmp98388
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93497%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98388 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93497%_
                                  __tmp98387)))))))
                    (if (eq? _%k93528%_ (macro-deleted-obj))
                        (let ((__tmp98391
                               (let ((_%next-probe93535%_
                                      (fx+ _%start93514%_
                                           _%i93523%_
                                           (fx* _%i93523%_ _%i93523%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93535%_
                                  _%size93508%_)))
                              (__tmp98390
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93523%_ '1)))
                              (__tmp98389
                               (let ((_%$e93538%_ _%deleted93525%_))
                                 (if _%$e93538%_ _%$e93538%_ _%probe93521%_))))
                          (declare (not safe))
                          (_%loop93518%_ __tmp98391 __tmp98390 __tmp98389))
                        (if (eq? _%key93498%_ _%k93528%_)
                            (let ()
                              (vector-set!
                               _%table93502%_
                               _%probe93521%_
                               _%key93498%_)
                              (vector-set!
                               _%table93502%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93521%_ '1))
                               _%value93499%_))
                            (let ((__tmp98393
                                   (let ((_%next-probe93543%_
                                          (fx+ _%start93514%_
                                               _%i93523%_
                                               (fx* _%i93523%_ _%i93523%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93543%_
                                      _%size93508%_)))
                                  (__tmp98392
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93523%_ '1))))
                              (declare (not safe))
                              (_%loop93518%_
                               __tmp98393
                               __tmp98392
                               _%deleted93525%_)))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab93492%_
               _%key93493%_
               _%class-specializer-table-update!93494%_
               _%default93495%_)
        (if (let ((__tmp98396
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93492%_)))
                  (__tmp98394
                   (let ((__tmp98395
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93492%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp98395 '4))))
              (declare (not safe))
              (##fx< __tmp98396 __tmp98394))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93492%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-update!
           _%tab93492%_
           _%key93493%_
           _%class-specializer-table-update!93494%_
           _%default93495%_))))
    (define __class-specializer-table-update!
      (lambda (_%tab93442%_
               _%key93443%_
               _%class-specializer-table-update!93444%_
               _%default93445%_)
        (let ((_%table93448%_
               (let () (declare (not safe)) (&raw-table-table _%tab93442%_)))
              (_%seed93449%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93442%_))))
          (let* ((_%h93451%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key93443%_))
                         _%seed93449%_))
                 (_%size93454%_ (vector-length _%table93448%_))
                 (_%entries93457%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93454%_ '2)))
                 (_%start93460%_
                  (let ((__tmp98397
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93451%_ _%entries93457%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98397 '1))))
            (let _%loop93464%_ ((_%probe93467%_ _%start93460%_)
                                (_%i93469%_ '1)
                                (_%deleted93471%_ '#f))
              (let ((_%k93474%_ (vector-ref _%table93448%_ _%probe93467%_)))
                (if (eq? _%k93474%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted93471%_
                          (begin
                            (vector-set!
                             _%table93448%_
                             _%deleted93471%_
                             _%key93443%_)
                            (vector-set!
                             _%table93448%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted93471%_ '1))
                             (_%class-specializer-table-update!93444%_
                              _%default93445%_))
                            ((lambda ()
                               (let ((__tmp98398
                                      (let ((__tmp98399
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93442%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98399 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93442%_
                                  __tmp98398)))))
                          (begin
                            (vector-set!
                             _%table93448%_
                             _%probe93467%_
                             _%key93443%_)
                            (vector-set!
                             _%table93448%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93467%_ '1))
                             (_%class-specializer-table-update!93444%_
                              _%default93445%_))
                            ((lambda ()
                               (let ((__tmp98400
                                      (let ((__tmp98401
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab93442%_))))
                                        (declare (not safe))
                                        (##fx- __tmp98401 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab93442%_
                                  __tmp98400))
                               (let ((__tmp98402
                                      (let ((__tmp98403
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93442%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98403 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93442%_
                                  __tmp98402)))))))
                    (if (eq? _%k93474%_ (macro-deleted-obj))
                        (let ((__tmp98406
                               (let ((_%next-probe93481%_
                                      (fx+ _%start93460%_
                                           _%i93469%_
                                           (fx* _%i93469%_ _%i93469%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93481%_
                                  _%size93454%_)))
                              (__tmp98405
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93469%_ '1)))
                              (__tmp98404
                               (let ((_%$e93484%_ _%deleted93471%_))
                                 (if _%$e93484%_ _%$e93484%_ _%probe93467%_))))
                          (declare (not safe))
                          (_%loop93464%_ __tmp98406 __tmp98405 __tmp98404))
                        (if (eq? _%key93443%_ _%k93474%_)
                            (let ()
                              (vector-set!
                               _%table93448%_
                               _%probe93467%_
                               _%key93443%_)
                              (vector-set!
                               _%table93448%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93467%_ '1))
                               (_%class-specializer-table-update!93444%_
                                (vector-ref
                                 _%table93448%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe93467%_ '1))))))
                            (let ((__tmp98408
                                   (let ((_%next-probe93489%_
                                          (fx+ _%start93460%_
                                               _%i93469%_
                                               (fx* _%i93469%_ _%i93469%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93489%_
                                      _%size93454%_)))
                                  (__tmp98407
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93469%_ '1))))
                              (declare (not safe))
                              (_%loop93464%_
                               __tmp98408
                               __tmp98407
                               _%deleted93471%_)))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab93397%_ _%key93399%_)
        (let ((_%table93402%_
               (let () (declare (not safe)) (&raw-table-table _%tab93397%_)))
              (_%seed93404%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93397%_))))
          (let* ((_%h93407%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key93399%_))
                         _%seed93404%_))
                 (_%size93410%_ (vector-length _%table93402%_))
                 (_%entries93413%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93410%_ '2)))
                 (_%start93416%_
                  (let ((__tmp98409
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93407%_ _%entries93413%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98409 '1))))
            (let _%loop93420%_ ((_%probe93423%_ _%start93416%_)
                                (_%i93425%_ '1))
              (let ((_%k93428%_ (vector-ref _%table93402%_ _%probe93423%_)))
                (if (eq? _%k93428%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k93428%_ (macro-deleted-obj))
                        (let ((__tmp98411
                               (let ((_%next-probe93433%_
                                      (fx+ _%start93416%_
                                           _%i93425%_
                                           (fx* _%i93425%_ _%i93425%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93433%_
                                  _%size93410%_)))
                              (__tmp98410
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93425%_ '1))))
                          (declare (not safe))
                          (_%loop93420%_ __tmp98411 __tmp98410))
                        (if (eq? _%key93399%_ _%k93428%_)
                            (let ()
                              (vector-set!
                               _%table93402%_
                               _%probe93423%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93402%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93423%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp98412
                                        (let ((__tmp98413
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab93397%_))))
                                          (declare (not safe))
                                          (##fx- __tmp98413 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab93397%_
                                    __tmp98412)))))
                            (let ((__tmp98415
                                   (let ((_%next-probe93439%_
                                          (fx+ _%start93416%_
                                               _%i93425%_
                                               (fx* _%i93425%_ _%i93425%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93439%_
                                      _%size93410%_)))
                                  (__tmp98414
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93425%_ '1))))
                              (declare (not safe))
                              (_%loop93420%_ __tmp98415 __tmp98414)))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers
      (let () (declare (not safe)) (make-class-specializer-table__% '#f '0)))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass93383%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93383%_ 'class))
              (let ((_%klass93387%_ _%klass93383%_))
                (declare (not safe))
                (__specialize-class _%klass93387%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@1017.25-1017.30"
                 'contract:
                 'class-type?
                 'value:
                 _%klass93383%_)
                '#!void)))))
    (define __specialize-class
      (lambda (_%klass93365%_)
        (let ()
          (let* ((_%klass93368%_ _%klass93365%_)
                 (_%$e93377%_
                  (let ()
                    (declare (not safe))
                    (__lookup-class-specializer _%klass93368%_))))
            (if _%$e93377%_
                _%$e93377%_
                (let ((_%method-table93381%_
                       (let ()
                         (declare (not safe))
                         (___specialize-class _%klass93368%_))))
                  (let ()
                    (declare (not safe))
                    (__bind-class-specializer!
                     _%klass93368%_
                     _%method-table93381%_))
                  _%method-table93381%_))))))
    (define __lookup-class-specializer
      (lambda (_%klass93355%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93359%_ ()
            (if (let ((__tmp98416
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp98416 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again93359%_))))))
        (let ((_%method-table93363%_
               (let ()
                 (declare (not safe))
                 (class-specializer-table-ref
                  __class-specializers
                  _%klass93355%_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table93363%_)))
    (define __bind-class-specializer!
      (lambda (_%klass93346%_ _%method-table93347%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93351%_ ()
            (if (let ((__tmp98417
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp98417 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again93351%_))))))
        (let ()
          (declare (not safe))
          (class-specializer-table-set!
           __class-specializers
           _%klass93346%_
           _%method-table93347%_))
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass93330%_
               _%method-table93331%_
               _%method93332%_
               _%proc93333%_)
        (let ((_%$e93335%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table93331%_
                  _%method93332%_
                  '#f))))
          (if _%$e93335%_
              _%$e93335%_
              (let ((_%$e93338%_
                     (let ()
                       (declare (not safe))
                       (__lookup-method-specializer _%proc93333%_))))
                (if _%$e93338%_
                    ((lambda (_%specialize93341%_)
                       (let ((_%specialized-proc93343%_
                              (_%specialize93341%_
                               _%klass93330%_
                               _%method-table93331%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table93331%_
                          _%method93332%_
                          _%specialized-proc93343%_)))
                     _%$e93338%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table93331%_
                       _%method93332%_
                       _%proc93333%_))))))))
    (define ___specialize-class
      (lambda (_%klass93272%_)
        (if (let ((__tmp98418
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of? _%klass93272%_ 'class))))
              (declare (not safe))
              (not __tmp98418))
            (let ()
              (if (let () (declare (not safe)) (##type? _%klass93272%_))
                  (let ((__tmp98419
                         (let ()
                           (declare (not safe))
                           (__shadow-class _%klass93272%_))))
                    (declare (not safe))
                    (__specialize-class __tmp98419))
                  (error '"bad class; cannot specialize" _%klass93272%_)))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _%klass93272%_))
                (let ((__method98194
                       (let ()
                         (declare (not safe))
                         (__method-ref _%klass93272%_ 'specialize-class))))
                  (if __method98194
                      (__method98194 _%klass93272%_)
                      (error '"Missing method"
                             _%klass93272%_
                             'specialize-class)))
                (if (let ((__tmp98420
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass93272%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp98420))
                    (let ()
                      (error '"cannot specialize class that extends metaclass without a metaclass"
                             _%klass93272%_))
                    (let ((_%method-table93278%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop93280%_ ((_%rest93282%_
                                           (let ()
                                             (declare (not safe))
                                             (class-precedence-list
                                              _%klass93272%_))))
                        (let* ((_%rest9328393291%_ _%rest93282%_)
                               (_%else9328593299%_
                                (lambda () _%method-table93278%_))
                               (_%K9328793318%_
                                (lambda (_%rest93302%_ _%xklass93303%_)
                                  (let ((_%xmethod-table9330493306%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass93303%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table9330493306%_
                                        (let* ((_%xmethod-table93309%_
                                                _%xmethod-table9330493306%_)
                                               (__tmp98421
                                                (lambda (_%g9331093313%_
                                                         _%g9331193315%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (__specialize-method
                                                     _%klass93272%_
                                                     _%method-table93278%_
                                                     _%g9331093313%_
                                                     _%g9331193315%_)))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table93309%_
                                           __tmp98421))
                                        '#f))
                                  (let ()
                                    (declare (not safe))
                                    (_%loop93280%_ _%rest93302%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9328393291%_))
                              (let ((_%hd9328893321%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9328393291%_)))
                                    (_%tl9328993323%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9328393291%_))))
                                (let* ((_%xklass93326%_ _%hd9328893321%_)
                                       (_%rest93328%_ _%tl9328993323%_))
                                  (declare (not safe))
                                  (_%K9328793318%_
                                   _%rest93328%_
                                   _%xklass93326%_)))
                              (let ()
                                (declare (not safe))
                                (_%else9328593299%_)))))))))))
    (define seal-class!
      (lambda (_%klass93258%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93258%_ 'class))
              (let ((_%klass93262%_ _%klass93258%_))
                (declare (not safe))
                (__seal-class! _%klass93262%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@1074.20-1074.25"
                 'contract:
                 'class-type?
                 'value:
                 _%klass93258%_)
                '#!void)))))
    (define __seal-class!
      (lambda (_%klass93241%_)
        (let ((_%klass93244%_ _%klass93241%_))
          (if (let ()
                (declare (not safe))
                (__class-type-sealed? _%klass93244%_))
              '#!void
              (begin
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass93244%_))
                    '#!void
                    (error '"cannot seal non-final class" _%klass93244%_))
                (if (let ()
                      (declare (not safe))
                      (__class-type-metaclass? _%klass93244%_))
                    (let ((__method98195
                           (let ()
                             (declare (not safe))
                             (__method-ref _%klass93244%_ 'seal-class!))))
                      (if __method98195
                          (__method98195 _%klass93244%_)
                          (error '"Missing method"
                                 _%klass93244%_
                                 'seal-class!)))
                    (if (let ((__tmp98422
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass93244%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp98422))
                        (let ()
                          (error '"cannot seal class that extends metaclass without a metaclass"
                                 _%klass93244%_))
                        (let ((_%method-table93256%_
                               (let ()
                                 (declare (not safe))
                                 (__specialize-class _%klass93244%_))))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass93244%_
                           _%method-table93256%_
                           '11
                           '#f
                           '#f))))
                (let ()
                  (declare (not safe))
                  (__class-type-seal! _%klass93244%_)))))))
    (define next-method
      (lambda (_%subklass93215%_ _%obj93216%_ _%id93217%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%subklass93215%_ 'class))
              (let ((_%subklass93221%_ _%subklass93215%_))
                (if (let () (declare (not safe)) (symbol? _%id93217%_))
                    (let ((_%id93231%_ _%id93217%_))
                      (declare (not safe))
                      (__next-method
                       _%subklass93221%_
                       _%obj93216%_
                       _%id93231%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@1098.44-1098.46"
                       'contract:
                       'symbol?
                       'value:
                       _%id93217%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@1098.20-1098.28"
                 'contract:
                 'class-type?
                 'value:
                 _%subklass93215%_)
                '#!void)))))
    (define __next-method
      (lambda (_%subklass93152%_ _%obj93153%_ _%id93154%_)
        (let ()
          (let* ((_%subklass93157%_ _%subklass93152%_)
                 (_%id93165%_ _%id93154%_))
            (letrec ((_%find-next-method93174%_
                      (lambda (_%klass93176%_)
                        (let _%lp93178%_ ((_%rest93180%_
                                           (let ()
                                             (declare (not safe))
                                             (class-precedence-list
                                              _%klass93176%_))))
                          (let* ((_%rest9318193189%_ _%rest93180%_)
                                 (_%else9318393197%_ (lambda () '#f))
                                 (_%K9318593203%_
                                  (lambda (_%rest93200%_ _%klass93201%_)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (##type-id _%subklass93157%_))
                                             (let ()
                                               (declare (not safe))
                                               (##type-id _%klass93201%_)))
                                        (let ()
                                          (declare (not safe))
                                          (__mixin-find-method
                                           _%rest93200%_
                                           _%obj93153%_
                                           _%id93165%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%lp93178%_ _%rest93200%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest9318193189%_))
                                (let ((_%hd9318693206%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest9318193189%_)))
                                      (_%tl9318793208%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest9318193189%_))))
                                  (let* ((_%klass93211%_ _%hd9318693206%_)
                                         (_%rest93213%_ _%tl9318793208%_))
                                    (declare (not safe))
                                    (_%K9318593203%_
                                     _%rest93213%_
                                     _%klass93211%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else9318393197%_))))))))
              (let ((__tmp98423
                     (let () (declare (not safe)) (class-of _%obj93153%_))))
                (declare (not safe))
                (_%find-next-method93174%_ __tmp98423)))))))
    (define call-next-method
      (lambda (_%subklass93125%_ _%obj93126%_ _%id93127%_ . _%args93128%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%subklass93125%_ 'class))
              (let ((_%subklass93132%_ _%subklass93125%_))
                (if (let () (declare (not safe)) (symbol? _%id93127%_))
                    (let ((_%id93142%_ _%id93127%_))
                      (declare (not safe))
                      (##apply __call-next-method
                               _%subklass93132%_
                               _%obj93126%_
                               _%id93142%_
                               _%args93128%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@1109.49-1109.51"
                       'contract:
                       'symbol?
                       'value:
                       _%id93127%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@1109.25-1109.33"
                 'contract:
                 'class-type?
                 'value:
                 _%subklass93125%_)
                '#!void)))))
    (define __call-next-method
      (lambda (_%subklass93096%_ _%obj93097%_ _%id93098%_ . _%args93099%_)
        (let ((_%subklass93102%_ _%subklass93096%_))
          (let* ((_%id93110%_ _%id93098%_)
                 (_%$e93119%_
                  (let ()
                    (declare (not safe))
                    (__next-method
                     _%subklass93102%_
                     _%obj93097%_
                     _%id93110%_))))
            (if _%$e93119%_
                ((lambda (_%methodf93122%_)
                   (apply _%methodf93122%_ _%obj93097%_ _%args93099%_))
                 _%$e93119%_)
                (let ()
                  (error '"cannot find next method"
                         'object:
                         _%obj93097%_
                         'method:
                         _%id93110%_)))))))
    (define write-style
      (lambda (_%we93094%_) (macro-writeenv-style _%we93094%_)))
    (define write-object
      (lambda (_%we93085%_ _%obj93086%_)
        (let ((_%$e93088%_
               (let () (declare (not safe)) (__method-ref _%obj93086%_ ':wr))))
          (if _%$e93088%_
              ((lambda (_%method93091%_)
                 (_%method93091%_ _%obj93086%_ _%we93085%_))
               _%$e93088%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we93085%_ _%obj93086%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type93000%_)
        (letrec ((_%shadow-type-id93002%_
                  (lambda (_%type93083%_)
                    (let ((__tmp98424
                           (let ()
                             (declare (not safe))
                             (##type-name _%type93083%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp98424 '"::t"))))
                 (_%shadow-type-name93003%_
                  (lambda (_%type93081%_)
                    (let () (declare (not safe)) (##type-name _%type93081%_))))
                 (_%make-shadow-class93004%_
                  (lambda (_%type93073%_ _%precedence-list93074%_)
                    (let* ((_%super93076%_
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _%precedence-list93074%_))
                                (cons (car _%precedence-list93074%_) '())
                                '()))
                           (_%klass93078%_
                            (let ((__tmp98427
                                   (let ()
                                     (declare (not safe))
                                     (_%shadow-type-id93002%_ _%type93073%_)))
                                  (__tmp98426
                                   (let ()
                                     (declare (not safe))
                                     (##type-name _%type93073%_)))
                                  (__tmp98425
                                   (cons (cons 'struct: '#t)
                                         (cons (cons 'system: '#t)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__type-extensible?
                                                      _%type93073%_))
                                                   '()
                                                   (cons (cons 'final: '#t)
                                                         '()))))))
                              (declare (not safe))
                              (make-class-type
                               __tmp98427
                               __tmp98426
                               _%super93076%_
                               '()
                               __tmp98425
                               '#f))))
                      (let ((__tmp98428
                             (let ()
                               (declare (not safe))
                               (##type-id _%type93073%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp98428
                         _%klass93078%_))
                      _%klass93078%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again93008%_ ()
              (if (let ((__tmp98429
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp98429 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (let () (declare (not safe)) (_%again93008%_))))))
          (let ((_%$e93012%_
                 (let ((__tmp98430
                        (let ()
                          (declare (not safe))
                          (##type-id _%type93000%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp98430 '#f))))
            (if _%$e93012%_
                ((lambda (_%klass93015%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass93015%_)
                 _%$e93012%_)
                (let _%loop93018%_ ((_%super93020%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-super _%type93000%_)))
                                    (_%hierarchy93021%_ '()))
                  (if (let () (declare (not safe)) (not _%super93020%_))
                      (let _%loop93024%_ ((_%rest93026%_ _%hierarchy93021%_)
                                          (_%precedence-list93027%_ '()))
                        (let* ((_%rest9302893036%_ _%rest93026%_)
                               (_%else9303093046%_
                                (lambda ()
                                  (let ((_%klass93044%_
                                         (let ()
                                           (declare (not safe))
                                           (_%make-shadow-class93004%_
                                            _%type93000%_
                                            _%precedence-list93027%_))))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass93044%_)))
                               (_%K9303293060%_
                                (lambda (_%rest93049%_ _%type93050%_)
                                  (let ((_%$e93052%_
                                         (let ((__tmp98431
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type93050%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp98431
                                            '#f))))
                                    (if _%$e93052%_
                                        ((lambda (_%klass93055%_)
                                           (let ((__tmp98432
                                                  (cons _%klass93055%_
                                                        _%precedence-list93027%_)))
                                             (declare (not safe))
                                             (_%loop93024%_
                                              _%rest93049%_
                                              __tmp98432)))
                                         _%$e93052%_)
                                        (let ()
                                          (let* ((_%klass93058%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%make-shadow-class93004%_
                                                     _%type93050%_
                                                     _%precedence-list93027%_)))
                                                 (__tmp98433
                                                  (cons _%klass93058%_
                                                        _%precedence-list93027%_)))
                                            (declare (not safe))
                                            (_%loop93024%_
                                             _%rest93049%_
                                             __tmp98433))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9302893036%_))
                              (let ((_%hd9303393063%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9302893036%_)))
                                    (_%tl9303493065%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9302893036%_))))
                                (let* ((_%type93068%_ _%hd9303393063%_)
                                       (_%rest93070%_ _%tl9303493065%_))
                                  (declare (not safe))
                                  (_%K9303293060%_
                                   _%rest93070%_
                                   _%type93068%_)))
                              (let ()
                                (declare (not safe))
                                (_%else9303093046%_)))))
                      (let ((__tmp98435
                             (let ()
                               (declare (not safe))
                               (##type-super _%super93020%_)))
                            (__tmp98434
                             (cons _%super93020%_ _%hierarchy93021%_)))
                        (declare (not safe))
                        (_%loop93018%_ __tmp98435 __tmp98434)))))))))
    (define class-of
      (lambda (_%obj92973%_)
        (let ()
          (declare (not interrupts-enabled))
          (let ((_%t92977%_
                 (let () (declare (not safe)) (##type _%obj92973%_))))
            (if (fx= _%t92977%_ (macro-type-subtyped))
                (let ((_%st92980%_
                       (let () (declare (not safe)) (##subtype _%obj92973%_))))
                  (if (fx= _%st92980%_ (macro-subtype-structure))
                      (let ((_%klass92983%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj92973%_))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of? _%klass92983%_ 'class))
                            _%klass92983%_
                            (let ()
                              (declare (not safe))
                              (__shadow-class _%klass92983%_))))
                      (if (fx= _%st92980%_ (macro-subtype-boxvalues))
                          (let ()
                            (if (let ((__tmp98436
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length _%obj92973%_))))
                                  (declare (not safe))
                                  (##fx= __tmp98436 '1))
                                (let ()
                                  (declare (not safe))
                                  (__system-class 'box))
                                (let ()
                                  (declare (not safe))
                                  (__system-class 'values))))
                          (let ((_%$e92986%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref __subtype-id _%st92980%_))))
                            (if _%$e92986%_
                                (let ()
                                  (declare (not safe))
                                  (__system-class _%$e92986%_))
                                (let ()
                                  (error '"unknown class"
                                         'subtype:
                                         _%st92980%_
                                         'object:
                                         _%obj92973%_)))))))
                (if (fx= _%t92977%_ (macro-type-mem2))
                    (let () (declare (not safe)) (__system-class 'pair))
                    (if (fx= _%t92977%_ (macro-type-fixnum))
                        (let () (declare (not safe)) (__system-class 'fixnum))
                        (let ()
                          (if (let ()
                                (declare (not safe))
                                (char? _%obj92973%_))
                              (let ()
                                (declare (not safe))
                                (__system-class 'char))
                              (if (eq? _%obj92973%_ '())
                                  (let ()
                                    (declare (not safe))
                                    (__system-class 'null))
                                  (if (eq? _%obj92973%_ '#f)
                                      (let ()
                                        (declare (not safe))
                                        (__system-class 'boolean))
                                      (if (eq? _%obj92973%_ '#t)
                                          (let ()
                                            (declare (not safe))
                                            (__system-class 'boolean))
                                          (if (eq? _%obj92973%_ '#!void)
                                              (let ()
                                                (declare (not safe))
                                                (__system-class 'void))
                                              (if (eq? _%obj92973%_ '#!eof)
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
      (lambda (_%id92967%_)
        (let ((_%$e92969%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id92967%_ '#f))))
          (if _%$e92969%_
              _%$e92969%_
              (let () (error '"unknown system class" _%id92967%_))))))
    (define __make-system-class
      (lambda (_%id92962%_ _%super92963%_)
        (let ((_%klass92965%_
               (let ()
                 (declare (not safe))
                 (make-class-type
                  _%id92962%_
                  _%id92962%_
                  _%super92963%_
                  '()
                  '((system: . #t))
                  '#f))))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id92962%_ _%klass92965%_))
          _%klass92965%_)))))
