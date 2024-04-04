(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1712251110)
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
      (let ((_%flags96725%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties96726%_ '((direct-slots:) (system: . #t)))
            (_%slot-table96727%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags96725%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table96727%_
           _%properties96726%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots96701%_
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
             (_%slot-vector96703%_ (list->vector (cons '#f _%slots96701%_)))
             (_%slot-table96710%_
              (let ((_%slot-table96705%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp98173
                       (lambda (_%slot96707%_ _%field96708%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table96705%_
                            _%slot96707%_
                            _%field96708%_))
                         (let ((__tmp98174
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot96707%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table96705%_
                            __tmp98174
                            _%field96708%_))))
                      (__tmp98171
                       (let ((__tmp98172
                              (let ()
                                (declare (not safe))
                                (##length _%slots96701%_))))
                         (declare (not safe))
                         (##iota __tmp98172 '1))))
                  (declare (not safe))
                  (##for-each __tmp98173 _%slots96701%_ __tmp98171))
                _%slot-table96705%_))
             (_%flags96712%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields96718%_
              (list->vector
               (let ((__tmp98175
                      (map (lambda (_%g9671396715%_)
                             (list _%g9671396715%_ '5 '#f))
                           (drop _%slots96701%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp98175))))
             (_%properties96720%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots96701%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t96722%_
              (let ((__tmp98176 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags96712%_
                 ##type-type
                 _%fields96718%_
                 __tmp98176
                 _%slot-vector96703%_
                 _%slot-table96710%_
                 _%properties96720%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t96722%_ _%t96722%_))
        _%t96722%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags96697%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties96698%_ '((direct-slots:) (system: . #t)))
            (_%slot-table96699%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp98177 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags96697%_
           '#f
           '#()
           __tmp98177
           '#(#f)
           _%slot-table96699%_
           _%properties96698%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj96695%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj96695%_ 'class))))
    (define class-type=?
      (lambda (_%x96670%_ _%y96671%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%x96670%_ 'class))
              (let ((_%x96675%_ _%x96670%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%y96671%_ 'class))
                    (let ((_%y96685%_ _%y96671%_))
                      (declare (not safe))
                      (__class-type=? _%x96675%_ _%y96685%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                       'contract:
                       'class-type?
                       'value:
                       _%y96671%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
                 'contract:
                 'class-type?
                 'value:
                 _%x96670%_)
                '#!void)))))
    (define __class-type=?
      (lambda (_%x96649%_ _%y96650%_)
        (let ()
          (let* ((_%x96653%_ _%x96649%_) (_%y96661%_ _%y96650%_))
            (eq? (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%x96653%_ '1 '#f '#f))
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%y96661%_ '1 '#f '#f)))))))
    (define type-opaque?
      (lambda (_%type96635%_)
        (let ()
          (if (let () (declare (not safe)) (##type? _%type96635%_))
              (let ((_%type96639%_ _%type96635%_))
                (declare (not safe))
                (__type-opaque? _%type96639%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
                 'contract:
                 '##type?
                 'value:
                 _%type96635%_)
                '#!void)))))
    (define __type-opaque?
      (lambda (_%type96621%_)
        (let ()
          (if (let () (declare (not safe)) (##type? _%type96621%_))
              (let ()
                (let* ((_%type96625%_ _%type96621%_)
                       (__tmp98178
                        (let ((__tmp98179
                               (let ()
                                 (declare (not safe))
                                 (##type-flags _%type96625%_))))
                          (declare (not safe))
                          (##fxand __tmp98179 type-flag-opaque))))
                  (declare (not safe))
                  (##fx= __tmp98178 type-flag-opaque)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
                 'contract:
                 '##type?
                 'value:
                 _%type96621%_)
                '#!void)))))
    (define type-extensible?
      (lambda (_%type96607%_)
        (let ()
          (if (let () (declare (not safe)) (##type? _%type96607%_))
              (let ((_%type96611%_ _%type96607%_))
                (declare (not safe))
                (__type-extensible? _%type96611%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
                 'contract:
                 '##type?
                 'value:
                 _%type96607%_)
                '#!void)))))
    (define __type-extensible?
      (lambda (_%type96593%_)
        (let ()
          (if (let () (declare (not safe)) (##type? _%type96593%_))
              (let ()
                (let* ((_%type96597%_ _%type96593%_)
                       (__tmp98180
                        (let ((__tmp98181
                               (let ()
                                 (declare (not safe))
                                 (##type-flags _%type96597%_))))
                          (declare (not safe))
                          (##fxand __tmp98181 type-flag-extensible))))
                  (declare (not safe))
                  (##fx= __tmp98180 type-flag-extensible)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
                 'contract:
                 '##type?
                 'value:
                 _%type96593%_)
                '#!void)))))
    (define class-type-final?
      (lambda (_%type96579%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%type96579%_ 'class))
              (let ((_%type96583%_ _%type96579%_))
                (declare (not safe))
                (__class-type-final? _%type96583%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
                 'contract:
                 'class-type?
                 'value:
                 _%type96579%_)
                '#!void)))))
    (define __class-type-final?
      (lambda (_%type96567%_)
        (let ()
          (let* ((_%type96570%_ _%type96567%_)
                 (__tmp98182
                  (let ((__tmp98183
                         (let ()
                           (declare (not safe))
                           (##type-flags _%type96570%_))))
                    (declare (not safe))
                    (##fxand __tmp98183 type-flag-extensible))))
            (declare (not safe))
            (##fx= __tmp98182 '0)))))
    (define class-type-struct?
      (lambda (_%klass96553%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96553%_ 'class))
              (let ((_%klass96557%_ _%klass96553%_))
                (declare (not safe))
                (__class-type-struct? _%klass96557%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96553%_)
                '#!void)))))
    (define __class-type-struct?
      (lambda (_%klass96541%_)
        (let ()
          (let* ((_%klass96544%_ _%klass96541%_)
                 (__tmp98184
                  (let ((__tmp98185
                         (let ()
                           (declare (not safe))
                           (##type-flags _%klass96544%_))))
                    (declare (not safe))
                    (##fxand __tmp98185 class-type-flag-struct))))
            (declare (not safe))
            (##fx= __tmp98184 class-type-flag-struct)))))
    (define class-type-sealed?
      (lambda (_%klass96527%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96527%_ 'class))
              (let ((_%klass96531%_ _%klass96527%_))
                (declare (not safe))
                (__class-type-sealed? _%klass96531%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96527%_)
                '#!void)))))
    (define __class-type-sealed?
      (lambda (_%klass96515%_)
        (let ()
          (let* ((_%klass96518%_ _%klass96515%_)
                 (__tmp98186
                  (let ((__tmp98187
                         (let ()
                           (declare (not safe))
                           (##type-flags _%klass96518%_))))
                    (declare (not safe))
                    (##fxand __tmp98187 class-type-flag-sealed))))
            (declare (not safe))
            (##fx= __tmp98186 class-type-flag-sealed)))))
    (define class-type-metaclass?
      (lambda (_%klass96501%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96501%_ 'class))
              (let ((_%klass96505%_ _%klass96501%_))
                (declare (not safe))
                (__class-type-metaclass? _%klass96505%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96501%_)
                '#!void)))))
    (define __class-type-metaclass?
      (lambda (_%klass96489%_)
        (let ()
          (let* ((_%klass96492%_ _%klass96489%_)
                 (__tmp98188
                  (let ((__tmp98189
                         (let ()
                           (declare (not safe))
                           (##type-flags _%klass96492%_))))
                    (declare (not safe))
                    (##fxand __tmp98189 class-type-flag-metaclass))))
            (declare (not safe))
            (##fx= __tmp98188 class-type-flag-metaclass)))))
    (define class-type-system?
      (lambda (_%klass96475%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96475%_ 'class))
              (let ((_%klass96479%_ _%klass96475%_))
                (declare (not safe))
                (__class-type-system? _%klass96479%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96475%_)
                '#!void)))))
    (define __class-type-system?
      (lambda (_%klass96463%_)
        (let ()
          (let* ((_%klass96466%_ _%klass96463%_)
                 (__tmp98190
                  (let ((__tmp98191
                         (let ()
                           (declare (not safe))
                           (##type-flags _%klass96466%_))))
                    (declare (not safe))
                    (##fxand __tmp98191 class-type-flag-system))))
            (declare (not safe))
            (##fx= __tmp98190 class-type-flag-system)))))
    (define make-class-type-descriptor
      (lambda (_%type-id96348%_
               _%type-name96349%_
               _%type-super96350%_
               _%precedence-list96351%_
               _%slot-vector96352%_
               _%properties96353%_
               _%constructor96354%_
               _%slot-table96355%_
               _%methods96356%_)
        (let ()
          (letrec ((_%make-props!96359%_
                    (lambda (_%key96432%_)
                      (letrec* ((_%ht96434%_
                                 (let ()
                                   (declare (not safe))
                                   (make-symbolic-table__% '#f '0)))
                                (_%put-slots!96435%_
                                 (lambda (_%ht96456%_ _%slots96457%_)
                                   (for-each
                                    (lambda (_%g9645896460%_)
                                      (let ()
                                        (declare (not safe))
                                        (symbolic-table-set!
                                         _%ht96456%_
                                         _%g9645896460%_
                                         '#t)))
                                    _%slots96457%_)))
                                (_%put-alist!96436%_
                                 (lambda (_%ht96445%_
                                          _%key96446%_
                                          _%alist96447%_)
                                   (let ((_%$e96449%_
                                          (let ()
                                            (declare (not safe))
                                            (agetq__0
                                             _%key96446%_
                                             _%alist96447%_))))
                                     (if _%$e96449%_
                                         ((lambda (_%g9645196453%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%put-slots!96435%_
                                               _%ht96445%_
                                               _%g9645196453%_)))
                                          _%$e96449%_)
                                         '#!void)))))
                        (let ()
                          (declare (not safe))
                          (_%put-alist!96436%_
                           _%ht96434%_
                           _%key96432%_
                           _%properties96353%_))
                        (for-each
                         (lambda (_%mixin96438%_)
                           (let ((_%alist96440%_
                                  (##structure-ref
                                   _%mixin96438%_
                                   '9
                                   class::t
                                   '#f)))
                             (if (or (let ()
                                       (declare (not safe))
                                       (agetq__0 'transparent: _%alist96440%_))
                                     (eq? '#t
                                          (let ()
                                            (declare (not safe))
                                            (agetq__0
                                             _%key96432%_
                                             _%alist96440%_))))
                                 (let ((__tmp98192
                                        (let ()
                                          (declare (not safe))
                                          (class-type-slot-list
                                           _%mixin96438%_))))
                                   (declare (not safe))
                                   (_%put-slots!96435%_
                                    _%ht96434%_
                                    __tmp98192))
                                 (let ()
                                   (declare (not safe))
                                   (_%put-alist!96436%_
                                    _%ht96434%_
                                    _%key96432%_
                                    _%alist96440%_)))))
                         _%precedence-list96351%_)
                        _%ht96434%_))))
            (let* ((_%transparent?96361%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'transparent: _%properties96353%_)))
                   (_%all-slots-printable?96366%_
                    (let ((_%$e96363%_ _%transparent?96361%_))
                      (if _%$e96363%_
                          _%$e96363%_
                          (eq? '#t
                               (let ()
                                 (declare (not safe))
                                 (agetq__0 'print: _%properties96353%_))))))
                   (_%printable96368%_
                    (if (let ()
                          (declare (not safe))
                          (not _%all-slots-printable?96366%_))
                        (let ()
                          (declare (not safe))
                          (_%make-props!96359%_ 'print:))
                        '#f))
                   (_%all-slots-equalable?96373%_
                    (let ((_%$e96370%_ _%transparent?96361%_))
                      (if _%$e96370%_
                          _%$e96370%_
                          (eq? '#t
                               (let ()
                                 (declare (not safe))
                                 (agetq__0 'equal: _%properties96353%_))))))
                   (_%equalable96375%_
                    (if (let ()
                          (declare (not safe))
                          (not _%all-slots-equalable?96373%_))
                        (let ()
                          (declare (not safe))
                          (_%make-props!96359%_ 'equal:))
                        '#f))
                   (_%first-new-field96377%_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _%type-super96350%_
                           'class))
                        (let ((__tmp98193
                               (##structure-ref
                                _%type-super96350%_
                                '7
                                class::t
                                '#f)))
                          (declare (not safe))
                          (##vector-length __tmp98193))
                        '1))
                   (_%field-info-length96379%_
                    (let ((__tmp98194
                           (let ((__tmp98195
                                  (let ()
                                    (declare (not safe))
                                    (##vector-length _%slot-vector96352%_))))
                             (declare (not safe))
                             (##fx- __tmp98195 _%first-new-field96377%_))))
                      (declare (not safe))
                      (##fx* '3 __tmp98194)))
                   (_%field-info96381%_
                    (let ()
                      (declare (not safe))
                      (##make-vector _%field-info-length96379%_ '#f)))
                   (_%struct?96383%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'struct: _%properties96353%_)))
                   (_%final?96385%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'final: _%properties96353%_)))
                   (_%metaclass96393%_
                    (let ((_%metaclass9638696388%_
                           (let ()
                             (declare (not safe))
                             (agetq__0 'metaclass: _%properties96353%_))))
                      (if _%metaclass9638696388%_
                          (let ((_%metaclass96391%_ _%metaclass9638696388%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%metaclass96391%_
                                   'class))
                                '#!void
                                (error '"metaclass is not a class type"
                                       'class:
                                       _%type-id96348%_
                                       'metaclass:
                                       _%metaclass96391%_))
                            _%metaclass96391%_)
                          '#f)))
                   (_%system?96395%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'system: _%properties96353%_)))
                   (_%opaque?96400%_
                    (let ((_%$e96397%_
                           (let ()
                             (declare (not safe))
                             (not _%all-slots-equalable?96373%_))))
                      (if _%$e96397%_
                          _%$e96397%_
                          (if _%type-super96350%_
                              (let ()
                                (declare (not safe))
                                (__type-opaque? _%type-super96350%_))
                              '#f))))
                   (_%type-flags96402%_
                    (let ((__tmp98200
                           (if _%final?96385%_ '0 type-flag-extensible))
                          (__tmp98199
                           (if _%opaque?96400%_ type-flag-opaque '0))
                          (__tmp98198
                           (if _%struct?96383%_ class-type-flag-struct '0))
                          (__tmp98197
                           (if _%metaclass96393%_
                               class-type-flag-metaclass
                               '0))
                          (__tmp98196
                           (if _%system?96395%_ class-type-flag-system '0)))
                      (declare (not safe))
                      (##fxior type-flag-id
                               type-flag-concrete
                               __tmp98200
                               __tmp98199
                               __tmp98198
                               __tmp98197
                               __tmp98196)))
                   (_%precedence-list96410%_
                    (let ((_%$e96404%_ (memq t::t _%precedence-list96351%_)))
                      (if _%$e96404%_
                          ((lambda (_%tail96407%_)
                             (if (let ((__tmp98201 (cdr _%tail96407%_)))
                                   (declare (not safe))
                                   (null? __tmp98201))
                                 _%precedence-list96351%_
                                 (error '"BUG: t::t is not last in the precedence list"
                                        'precedence-list:
                                        _%precedence-list96351%_)))
                           _%$e96404%_)
                          (let ((__tmp98202 (cons t::t '())))
                            (declare (not safe))
                            (##append _%precedence-list96351%_ __tmp98202))))))
              (let _%loop96413%_ ((_%i96415%_ _%first-new-field96377%_)
                                  (_%j96416%_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _%j96416%_ _%field-info-length96379%_))
                    (let* ((_%slot96418%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%slot-vector96352%_ _%i96415%_)))
                           (_%flags96426%_
                            (if _%transparent?96361%_
                                '0
                                (let ((__tmp98204
                                       (if (or _%all-slots-printable?96366%_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%printable96368%_
                                                  _%slot96418%_
                                                  '#f)))
                                           '0
                                           '1))
                                      (__tmp98203
                                       (if (or _%all-slots-equalable?96373%_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%equalable96375%_
                                                  _%slot96418%_
                                                  '#f)))
                                           '0
                                           '4)))
                                  (declare (not safe))
                                  (##fxior __tmp98204 __tmp98203)))))
                      (vector-set!
                       _%field-info96381%_
                       _%j96416%_
                       _%slot96418%_)
                      (vector-set!
                       _%field-info96381%_
                       (let () (declare (not safe)) (##fx+ _%j96416%_ '1))
                       _%flags96426%_)
                      (let ((__tmp98206
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i96415%_ '1)))
                            (__tmp98205
                             (let ()
                               (declare (not safe))
                               (##fx+ _%j96416%_ '3))))
                        (declare (not safe))
                        (_%loop96413%_ __tmp98206 __tmp98205)))
                    '#!void))
              (if _%metaclass96393%_
                  (let ((_%val96429%_
                         (let ()
                           (declare (not safe))
                           (make-instance
                            _%metaclass96393%_
                            _%type-id96348%_
                            _%type-name96349%_
                            _%type-flags96402%_
                            _%type-super96350%_
                            _%field-info96381%_
                            _%precedence-list96410%_
                            _%slot-vector96352%_
                            _%slot-table96355%_
                            _%properties96353%_
                            _%constructor96354%_
                            _%methods96356%_))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%val96429%_ 'class))
                        _%val96429%_
                        (error '"bad cast" class::t _%val96429%_)))
                  (let ()
                    (declare (not safe))
                    (##structure
                     class::t
                     _%type-id96348%_
                     _%type-name96349%_
                     _%type-flags96402%_
                     _%type-super96350%_
                     _%field-info96381%_
                     _%precedence-list96410%_
                     _%slot-vector96352%_
                     _%slot-table96355%_
                     _%properties96353%_
                     _%constructor96354%_
                     _%methods96356%_))))))))
    (define class-type-id
      (lambda (_%klass96346%_)
        (##structure-ref _%klass96346%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass96344%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96344%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass96341%_ _%val96342%_)
        (##structure-set! _%klass96341%_ _%val96342%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass96336%_ _%val96338%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96336%_
           _%val96338%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass96334%_)
        (##structure-ref _%klass96334%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass96332%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96332%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass96329%_ _%val96330%_)
        (##structure-set! _%klass96329%_ _%val96330%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass96324%_ _%val96326%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96324%_
           _%val96326%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass96322%_)
        (##structure-ref _%klass96322%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass96320%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96320%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass96317%_ _%val96318%_)
        (##structure-set! _%klass96317%_ _%val96318%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass96312%_ _%val96314%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96312%_
           _%val96314%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass96310%_)
        (##structure-ref _%klass96310%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass96308%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96308%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass96305%_ _%val96306%_)
        (##structure-set! _%klass96305%_ _%val96306%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass96300%_ _%val96302%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96300%_
           _%val96302%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass96298%_)
        (##structure-ref _%klass96298%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass96296%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96296%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass96293%_ _%val96294%_)
        (##structure-set! _%klass96293%_ _%val96294%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass96288%_ _%val96290%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96288%_
           _%val96290%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass96286%_)
        (##structure-ref _%klass96286%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass96284%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass96284%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass96281%_ _%val96282%_)
        (##structure-set!
         _%klass96281%_
         _%val96282%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass96276%_ _%val96278%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96276%_
           _%val96278%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass96274%_)
        (##structure-ref _%klass96274%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass96272%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass96272%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass96269%_ _%val96270%_)
        (##structure-set!
         _%klass96269%_
         _%val96270%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass96264%_ _%val96266%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96264%_
           _%val96266%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass96262%_)
        (##structure-ref _%klass96262%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass96260%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96260%_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass96257%_ _%val96258%_)
        (##structure-set!
         _%klass96257%_
         _%val96258%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass96252%_ _%val96254%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96252%_
           _%val96254%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass96250%_)
        (##structure-ref _%klass96250%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass96248%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96248%_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_%klass96245%_ _%val96246%_)
        (##structure-set!
         _%klass96245%_
         _%val96246%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass96240%_ _%val96242%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96240%_
           _%val96242%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass96238%_)
        (##structure-ref _%klass96238%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass96236%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass96236%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass96233%_ _%val96234%_)
        (##structure-set!
         _%klass96233%_
         _%val96234%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass96228%_ _%val96230%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96228%_
           _%val96230%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass96226%_)
        (##structure-ref _%klass96226%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass96224%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96224%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass96221%_ _%val96222%_)
        (##structure-set! _%klass96221%_ _%val96222%_ '11 class::t 'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass96216%_ _%val96218%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96216%_
           _%val96218%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass96202%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96202%_ 'class))
              (let ((_%klass96206%_ _%klass96202%_))
                (declare (not safe))
                (__class-type-slot-list _%klass96206%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96202%_)
                '#!void)))))
    (define __class-type-slot-list
      (lambda (_%klass96190%_)
        (let ((_%klass96193%_ _%klass96190%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass96193%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass96176%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96176%_ 'class))
              (let ((_%klass96180%_ _%klass96176%_))
                (declare (not safe))
                (__class-type-field-count _%klass96180%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96176%_)
                '#!void)))))
    (define __class-type-field-count
      (lambda (_%klass96164%_)
        (let ()
          (let* ((_%klass96167%_ _%klass96164%_)
                 (__tmp98207
                  (let ((__tmp98208
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass96167%_
                            '7
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##vector-length __tmp98208))))
            (declare (not safe))
            (##fx- __tmp98207 '1)))))
    (define class-type-seal!
      (lambda (_%klass96150%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96150%_ 'class))
              (let ((_%klass96154%_ _%klass96150%_))
                (declare (not safe))
                (__class-type-seal! _%klass96154%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96150%_)
                '#!void)))))
    (define __class-type-seal!
      (lambda (_%klass96138%_)
        (let ((_%klass96141%_ _%klass96138%_))
          (let ((__tmp98209
                 (let ((__tmp98210
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass96141%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp98210))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass96141%_
             __tmp98209
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct96113%_ _%maybe-super-struct96114%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%maybe-sub-struct96113%_ 'class))
              (let ((_%maybe-sub-struct96118%_ _%maybe-sub-struct96113%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%maybe-super-struct96114%_
                       'class))
                    (let ((_%maybe-super-struct96128%_
                           _%maybe-super-struct96114%_))
                      (declare (not safe))
                      (__substruct?
                       _%maybe-sub-struct96118%_
                       _%maybe-super-struct96128%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                       'contract:
                       'class-type?
                       'value:
                       _%maybe-super-struct96114%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
                 'contract:
                 'class-type?
                 'value:
                 _%maybe-sub-struct96113%_)
                '#!void)))))
    (define __substruct?
      (lambda (_%maybe-sub-struct96082%_ _%maybe-super-struct96083%_)
        (let ((_%maybe-sub-struct96086%_ _%maybe-sub-struct96082%_))
          (let* ((_%maybe-super-struct96094%_ _%maybe-super-struct96083%_)
                 (_%maybe-super-struct-id96103%_
                  (let ()
                    (declare (not safe))
                    (##type-id _%maybe-super-struct96094%_))))
            (let _%lp96105%_ ((_%super-struct96107%_
                               _%maybe-sub-struct96086%_))
              (let ()
                (if (let () (declare (not safe)) (not _%super-struct96107%_))
                    (let () '#f)
                    (if (eq? _%maybe-super-struct-id96103%_
                             (let ()
                               (declare (not safe))
                               (##type-id _%super-struct96107%_)))
                        (let () '#t)
                        (let ((__tmp98211
                               (let ()
                                 (declare (not safe))
                                 (##type-super _%super-struct96107%_))))
                          (declare (not safe))
                          (_%lp96105%_ __tmp98211))))))))))
    (define base-struct/1
      (lambda (_%klass96077%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96077%_ 'class))
            (let ()
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _%klass96077%_))
                  _%klass96077%_
                  (let () (declare (not safe)) (##type-super _%klass96077%_))))
            (if (let () (declare (not safe)) (not _%klass96077%_))
                (let () '#f)
                (let () (error '"not a class or false" _%klass96077%_))))))
    (define base-struct/2
      (lambda (_%klass196062%_ _%klass296063%_)
        (let ((_%s196065%_
               (let () (declare (not safe)) (base-struct/1 _%klass196062%_)))
              (_%s296066%_
               (let () (declare (not safe)) (base-struct/1 _%klass296063%_))))
          (if (or (let () (declare (not safe)) (not _%s196065%_))
                  (and _%s296066%_
                       (let ()
                         (declare (not safe))
                         (substruct? _%s196065%_ _%s296066%_))))
              (let () _%s296066%_)
              (if (or (let () (declare (not safe)) (not _%s296066%_))
                      (and _%s196065%_
                           (let ()
                             (declare (not safe))
                             (substruct? _%s296066%_ _%s196065%_))))
                  (let () _%s196065%_)
                  (let ()
                    (error '"bad mixin: incompatible struct bases"
                           _%klass196062%_
                           _%klass296063%_
                           _%s196065%_
                           _%s296066%_)))))))
    (define base-struct/list
      (lambda (_%all-supers95946%_)
        (let* ((_%all-supers9594795972%_ _%all-supers95946%_)
               (_%E9595295976%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers9594795972%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K9597096059%_ (lambda () '#f))
                (_%K9596796045%_
                 (lambda (_%x96043%_)
                   (let () (declare (not safe)) (base-struct/1 _%x96043%_))))
                (_%K9596296022%_
                 (lambda (_%y96019%_ _%x96020%_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _%x96020%_ _%y96019%_))))
                (_%K9595395983%_
                 (lambda (_%y95980%_ _%x95981%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x95981%_ _%y95980%_)))))
            (let* ((_%__match9816598166%_
                    (lambda (_%hd9595495986%_ _%tl9595595988%_)
                      (let ((_%x95991%_ _%hd9595495986%_))
                        (letrec ((_%splice-rest9595795993%_
                                  (lambda (_%rest9596196000%_ _%y96002%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%rest9596196000%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%K9595395983%_
                                           _%y96002%_
                                           _%x95991%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%E9595295976%_)))))
                                 (_%splice-try9595995995%_
                                  (lambda (_%hd9596096004%_
                                           _%rest9596196006%_
                                           _%y9595696007%_)
                                    (let ((_%y96010%_ _%hd9596096004%_))
                                      (let ((__tmp98213
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%rest9596196006%_)))
                                            (__tmp98212
                                             (cons _%y96010%_
                                                   _%y9595696007%_)))
                                        (declare (not safe))
                                        (_%splice-loop9595895997%_
                                         __tmp98213
                                         __tmp98212)))))
                                 (_%splice-loop9595895997%_
                                  (lambda (_%rest9596196012%_ _%y9595696013%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _%rest9596196012%_))
                                        (let ((__tmp98214
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest9596196012%_))))
                                          (declare (not safe))
                                          (_%splice-try9595995995%_
                                           __tmp98214
                                           _%rest9596196012%_
                                           _%y9595696013%_))
                                        (let ((__tmp98215
                                               (reverse _%y9595696013%_)))
                                          (declare (not safe))
                                          (_%splice-rest9595795993%_
                                           _%rest9596196012%_
                                           __tmp98215))))))
                          (let ()
                            (declare (not safe))
                            (_%splice-loop9595895997%_
                             _%tl9595595988%_
                             '()))))))
                   (_%try-match9594996055%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all-supers9594795972%_))
                          (let ((_%tl9596996050%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers9594795972%_)))
                                (_%hd9596896048%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers9594795972%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl9596996050%_))
                                (let ((_%x96053%_ _%hd9596896048%_))
                                  (declare (not safe))
                                  (base-struct/1 _%x96053%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl9596996050%_))
                                    (let ((_%tl9596696034%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl9596996050%_)))
                                          (_%hd9596596032%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl9596996050%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl9596696034%_))
                                          (let ((_%x96030%_ _%hd9596896048%_)
                                                (_%y96037%_ _%hd9596596032%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K9596296022%_
                                               _%y96037%_
                                               _%x96030%_)))
                                          (_%__match9816598166%_
                                           _%hd9596896048%_
                                           _%tl9596996050%_)))
                                    (_%__match9816598166%_
                                     _%hd9596896048%_
                                     _%tl9596996050%_))))
                          (let () (declare (not safe)) (_%E9595295976%_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _%all-supers9594795972%_))
                  (let () (declare (not safe)) (_%K9597096059%_))
                  (let () (declare (not safe)) (_%try-match9594996055%_))))))))
    (define base-struct
      (lambda _%all-supers95944%_
        (let () (declare (not safe)) (base-struct/list _%all-supers95944%_))))
    (define find-super-constructor
      (lambda (_%super95895%_)
        (let _%lp95897%_ ((_%rest95899%_ _%super95895%_)
                          (_%constructor95900%_ '#f))
          (let* ((_%rest9590195909%_ _%rest95899%_)
                 (_%else9590395917%_ (lambda () _%constructor95900%_))
                 (_%K9590595932%_
                  (lambda (_%rest95920%_ _%hd95921%_)
                    (let ((_%$e95923%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd95921%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e95923%_
                          ((lambda (_%xconstructor95926%_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _%constructor95900%_))
                                     (eq? _%constructor95900%_
                                          _%xconstructor95926%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%lp95897%_
                                    _%rest95920%_
                                    _%xconstructor95926%_))
                                 (error '"conflicting implicit constructors"
                                        _%constructor95900%_
                                        _%xconstructor95926%_)))
                           _%$e95923%_)
                          (let ()
                            (declare (not safe))
                            (_%lp95897%_
                             _%rest95920%_
                             _%constructor95900%_)))))))
            (if (let () (declare (not safe)) (##pair? _%rest9590195909%_))
                (let ((_%hd9590695935%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9590195909%_)))
                      (_%tl9590795937%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9590195909%_))))
                  (let* ((_%hd95940%_ _%hd9590695935%_)
                         (_%rest95942%_ _%tl9590795937%_))
                    (declare (not safe))
                    (_%K9590595932%_ _%rest95942%_ _%hd95940%_)))
                (let () (declare (not safe)) (_%else9590395917%_)))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list95871%_ _%direct-slots95872%_)
        (let* ((_%next-slot95874%_ '1)
               (_%slot-table95876%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots95878%_ '(__class))
               (_%process-slot95882%_
                (lambda (_%slot95880%_)
                  (if (let () (declare (not safe)) (symbol? _%slot95880%_))
                      '#!void
                      (error '"invalid slot name" _%slot95880%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table95876%_
                              _%slot95880%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table95876%_
                           _%slot95880%_
                           _%next-slot95874%_))
                        (let ((__tmp98216
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot95880%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table95876%_
                           __tmp98216
                           _%next-slot95874%_))
                        (set! _%r-slots95878%_
                              (cons _%slot95880%_ _%r-slots95878%_))
                        (set! _%next-slot95874%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot95874%_ '1))))
                      '#!void)))
               (_%process-slots95888%_
                (lambda (_%g9588395885%_)
                  (for-each _%process-slot95882%_ _%g9588395885%_))))
          (let ((__tmp98218
                 (lambda (_%mixin95891%_)
                   (let ((__tmp98219
                          (let ((__tmp98220
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%mixin95891%_
                                    '9
                                    '#f
                                    '#f))))
                            (declare (not safe))
                            (agetq__% 'direct-slots: __tmp98220 '()))))
                     (declare (not safe))
                     (_%process-slots95888%_ __tmp98219))))
                (__tmp98217 (reverse _%class-precedence-list95871%_)))
            (declare (not safe))
            (##for-each __tmp98218 __tmp98217))
          (let ()
            (declare (not safe))
            (_%process-slots95888%_ _%direct-slots95872%_))
          (let ((_%slot-vector95893%_
                 (list->vector
                  (let () (declare (not safe)) (##reverse _%r-slots95878%_)))))
            (values _%slot-vector95893%_ _%slot-table95876%_)))))
    (define make-class-type
      (lambda (_%id95796%_
               _%name95797%_
               _%direct-supers95798%_
               _%direct-slots95799%_
               _%properties95800%_
               _%constructor95801%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id95796%_))
              (let ((_%id95805%_ _%id95796%_))
                (if (let () (declare (not safe)) (symbol? _%name95797%_))
                    (let ((_%name95815%_ _%name95797%_))
                      (if (let ()
                            (declare (not safe))
                            (list? _%direct-supers95798%_))
                          (let ((_%direct-supers95825%_
                                 _%direct-supers95798%_))
                            (if (let ()
                                  (declare (not safe))
                                  (list? _%direct-slots95799%_))
                                (let ((_%direct-slots95835%_
                                       _%direct-slots95799%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (list? _%properties95800%_))
                                      (let ((_%properties95845%_
                                             _%properties95800%_))
                                        (if ((lambda (_%$obj95854%_)
                                               (or (let ()
                                                     (declare (not safe))
                                                     (not _%$obj95854%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (symbol? _%$obj95854%_))))
                                             _%constructor95801%_)
                                            (let ((_%constructor95861%_
                                                   _%constructor95801%_))
                                              (declare (not safe))
                                              (__make-class-type
                                               _%id95805%_
                                               _%name95815%_
                                               _%direct-supers95825%_
                                               _%direct-slots95835%_
                                               _%properties95845%_
                                               _%constructor95861%_))
                                            (begin
                                              (raise-contract-violation-error
                                               '"contract violation"
                                               'context:
                                               '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                               'contract:
                                               '(? (or not symbol?))
                                               'value:
                                               _%constructor95801%_)
                                              '#!void)))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                         'contract:
                                         'list?
                                         'value:
                                         _%properties95800%_)
                                        '#!void)))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                   'contract:
                                   'list?
                                   'value:
                                   _%direct-slots95799%_)
                                  '#!void)))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                             'contract:
                             'list?
                             'value:
                             _%direct-supers95798%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                       'contract:
                       'symbol?
                       'value:
                       _%name95797%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
                 'contract:
                 'symbol?
                 'value:
                 _%id95796%_)
                '#!void)))))
    (define __make-class-type
      (lambda (_%id95657%_
               _%name95658%_
               _%direct-supers95659%_
               _%direct-slots95660%_
               _%properties95661%_
               _%constructor95662%_)
        (let ((_%id95665%_ _%id95657%_))
          (let* ((_%name95673%_ _%name95658%_)
                 (_%direct-supers95681%_ _%direct-supers95659%_))
            (let* ((_%direct-slots95689%_ _%direct-slots95660%_)
                   (_%properties95697%_ _%properties95661%_))
              (if ((lambda (_%$obj95705%_)
                     (or (let () (declare (not safe)) (not _%$obj95705%_))
                         (let ()
                           (declare (not safe))
                           (symbol? _%$obj95705%_))))
                   _%constructor95662%_)
                  (let ((_%constructor95712%_ _%constructor95662%_))
                    (let ((_%$e95725%_
                           (let ((__tmp98221
                                  (lambda (_%$obj95722%_)
                                    (let ((__tmp98222
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%$obj95722%_
                                              'class))))
                                      (declare (not safe))
                                      (not __tmp98222)))))
                             (declare (not safe))
                             (__find __tmp98221 _%direct-supers95681%_))))
                      (if _%$e95725%_
                          ((lambda (_%g9572795729%_)
                             (error '"Illegal super class; not a class descriptor"
                                    _%g9572795729%_))
                           _%$e95725%_)
                          (let ((_%$e95732%_
                                 (let ()
                                   (declare (not safe))
                                   (__find __class-type-final?
                                           _%direct-supers95681%_))))
                            (if _%$e95732%_
                                ((lambda (_%g9573495736%_)
                                   (error '"Cannot extend final class"
                                          _%g9573495736%_))
                                 _%$e95732%_)
                                '#!void))))
                    (let ((_g98223_
                           (let ()
                             (declare (not safe))
                             (compute-precedence-list
                              _%direct-supers95681%_))))
                      (begin
                        (let ((_g98224_
                               (let ()
                                 (declare (not safe))
                                 (if (##values? _g98223_)
                                     (##vector-length _g98223_)
                                     1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g98224_ 2)))
                              (error "Context expects 2 values" _g98224_)))
                        (let ((_%precedence-list95739%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g98223_ 0)))
                              (_%struct-super95740%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g98223_ 1))))
                          (let ((_g98225_
                                 (let ()
                                   (declare (not safe))
                                   (compute-class-slots
                                    _%precedence-list95739%_
                                    _%direct-slots95689%_))))
                            (begin
                              (let ((_g98226_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g98225_)
                                           (##vector-length _g98225_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g98226_ 2)))
                                    (error "Context expects 2 values"
                                           _g98226_)))
                              (let ((_%slot-vector95742%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g98225_ 0)))
                                    (_%slot-table95743%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g98225_ 1))))
                                (let* ((_%properties95745%_
                                        (cons (cons 'direct-slots:
                                                    _%direct-slots95689%_)
                                              (cons (cons 'direct-supers:
                                                          _%direct-supers95681%_)
                                                    _%properties95697%_)))
                                       (_%constructor*95750%_
                                        (let ((_%$e95747%_
                                               _%constructor95712%_))
                                          (if _%$e95747%_
                                              _%$e95747%_
                                              (let ()
                                                (declare (not safe))
                                                (find-super-constructor
                                                 _%direct-supers95681%_)))))
                                       (_%precedence-list95793%_
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (agetq__0
                                                   'system:
                                                   _%properties95745%_))
                                                (memq object::t
                                                      _%precedence-list95739%_))
                                            _%precedence-list95739%_
                                            (let _%loop95755%_ ((_%tail95757%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%precedence-list95739%_)
                        (_%head95758%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let* ((_%tail9575995767%_
                                                      _%tail95757%_)
                                                     (_%else9576195775%_
                                                      (lambda ()
                                                        (let ((__tmp98227
                                                               (cons object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons t::t '()))))
                  (declare (not safe))
                  (__foldl1 cons __tmp98227 _%head95758%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%K9576395781%_
                                                      (lambda (_%rest95778%_
                                                               _%hd95779%_)
                                                        (if (eq? _%hd95779%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         t::t)
                    (let ((__tmp98228 (cons object::t _%tail95757%_)))
                      (declare (not safe))
                      (__foldl1 cons __tmp98228 _%head95758%_))
                    (let ((__tmp98229 (cons _%hd95779%_ _%head95758%_)))
                      (declare (not safe))
                      (_%loop95755%_ _%rest95778%_ __tmp98229))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tail9575995767%_))
                                                    (let ((_%hd9576495784%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tail9575995767%_)))
                                                          (_%tl9576595786%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tail9575995767%_))))
                                                      (let* ((_%hd95789%_
                                                              _%hd9576495784%_)
                                                             (_%rest95791%_
                                                              _%tl9576595786%_))
                                                        (declare (not safe))
                                                        (_%K9576395781%_
                                                         _%rest95791%_
                                                         _%hd95789%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else9576195775%_))))))))
                                  (declare (not safe))
                                  (make-class-type-descriptor
                                   _%id95665%_
                                   _%name95673%_
                                   _%struct-super95740%_
                                   _%precedence-list95793%_
                                   _%slot-vector95742%_
                                   _%properties95745%_
                                   _%constructor*95750%_
                                   _%slot-table95743%_
                                   '#f)))))))))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                     'contract:
                     '(? (or not symbol?))
                     'value:
                     _%constructor95662%_)
                    '#!void)))))))
    (define class-precedence-list
      (lambda (_%klass95643%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95643%_ 'class))
              (let ((_%klass95647%_ _%klass95643%_))
                (declare (not safe))
                (__class-precedence-list _%klass95647%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95643%_)
                '#!void)))))
    (define __class-precedence-list
      (lambda (_%klass95631%_)
        (let ((_%klass95634%_ _%klass95631%_))
          (cons _%klass95634%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass95634%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers95628%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers95628%_))))
    (define make-class-predicate
      (lambda (_%klass95614%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95614%_ 'class))
              (let ((_%klass95618%_ _%klass95614%_))
                (declare (not safe))
                (__make-class-predicate _%klass95618%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95614%_)
                '#!void)))))
    (define __make-class-predicate
      (lambda (_%klass95585%_)
        (let ()
          (let* ((_%klass95588%_ _%klass95585%_)
                 (_%tid95597%_
                  (let () (declare (not safe)) (##type-id _%klass95588%_))))
            (if (let ()
                  (declare (not safe))
                  (__class-type-final? _%klass95588%_))
                (let ()
                  (lambda (_%g9559995601%_)
                    (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       _%g9559995601%_
                       _%tid95597%_))))
                (if (let ()
                      (declare (not safe))
                      (__class-type-struct? _%klass95588%_))
                    (let ()
                      (lambda (_%g9560495606%_)
                        (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _%g9560495606%_
                           _%tid95597%_))))
                    (let ()
                      (lambda (_%g9560995611%_)
                        (let ()
                          (declare (not safe))
                          (__class-instance?
                           _%klass95588%_
                           _%g9560995611%_))))))))))
    (define make-class-slot-accessor
      (lambda (_%klass95560%_ _%slot95561%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95560%_ 'class))
              (let ((_%klass95565%_ _%klass95560%_))
                (if (let () (declare (not safe)) (symbol? _%slot95561%_))
                    (let ((_%slot95575%_ _%slot95561%_))
                      (declare (not safe))
                      (__make-class-slot-accessor
                       _%klass95565%_
                       _%slot95575%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                       'contract:
                       'symbol?
                       'value:
                       _%slot95561%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95560%_)
                '#!void)))))
    (define __make-class-slot-accessor
      (lambda (_%klass95528%_ _%slot95529%_)
        (let ((_%klass95532%_ _%klass95528%_))
          (let* ((_%slot95540%_ _%slot95529%_)
                 (_%field95549%_
                  (let ((__tmp98230
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass95532%_
                            '8
                            '#f
                            '#f))))
                    (declare (not safe))
                    (symbolic-table-ref __tmp98230 _%slot95540%_ '#f))))
            (if (let () (declare (not safe)) (not _%field95549%_))
                (let ()
                  (error '"unknown slot"
                         'class:
                         _%klass95532%_
                         'slot:
                         _%slot95540%_)
                  '#!void)
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass95532%_))
                    (let ()
                      (declare (not safe))
                      (make-final-slot-accessor
                       _%klass95532%_
                       _%slot95540%_
                       _%field95549%_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _%klass95532%_))
                        (let ()
                          (declare (not safe))
                          (make-struct-slot-accessor
                           _%klass95532%_
                           _%slot95540%_
                           _%field95549%_))
                        (if (let ((_%strukt95555%_
                                   (let ()
                                     (declare (not safe))
                                     (base-struct/1 _%klass95532%_))))
                              (and (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%strukt95555%_
                                      'class))
                                   (let ((__tmp98231
                                          (let ((__tmp98232
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%strukt95555%_
                                                    '7
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (##vector-length __tmp98232))))
                                     (declare (not safe))
                                     (##fx< _%field95549%_ __tmp98231))))
                            (let ()
                              (declare (not safe))
                              (make-struct-subclass-slot-accessor
                               _%klass95532%_
                               _%slot95540%_
                               _%field95549%_))
                            (let ()
                              (declare (not safe))
                              (make-class-cached-slot-accessor
                               _%klass95532%_
                               _%slot95540%_
                               _%field95549%_))))))))))
    (define make-class-slot-mutator
      (lambda (_%klass95503%_ _%slot95504%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95503%_ 'class))
              (let ((_%klass95508%_ _%klass95503%_))
                (if (let () (declare (not safe)) (symbol? _%slot95504%_))
                    (let ((_%slot95518%_ _%slot95504%_))
                      (declare (not safe))
                      (__make-class-slot-mutator _%klass95508%_ _%slot95518%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                       'contract:
                       'symbol?
                       'value:
                       _%slot95504%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95503%_)
                '#!void)))))
    (define __make-class-slot-mutator
      (lambda (_%klass95471%_ _%slot95472%_)
        (let ((_%klass95475%_ _%klass95471%_))
          (let* ((_%slot95483%_ _%slot95472%_)
                 (_%field95492%_
                  (let ((__tmp98233
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass95475%_
                            '8
                            '#f
                            '#f))))
                    (declare (not safe))
                    (symbolic-table-ref __tmp98233 _%slot95483%_ '#f))))
            (if (let () (declare (not safe)) (not _%field95492%_))
                (let ()
                  (error '"unknown slot"
                         'class:
                         _%klass95475%_
                         'slot:
                         _%slot95483%_)
                  '#!void)
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass95475%_))
                    (let ()
                      (declare (not safe))
                      (make-final-slot-mutator
                       _%klass95475%_
                       _%slot95483%_
                       _%field95492%_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _%klass95475%_))
                        (let ()
                          (declare (not safe))
                          (make-struct-slot-mutator
                           _%klass95475%_
                           _%slot95483%_
                           _%field95492%_))
                        (if (let ((_%strukt95498%_
                                   (let ()
                                     (declare (not safe))
                                     (base-struct/1 _%klass95475%_))))
                              (and (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%strukt95498%_
                                      'class))
                                   (let ((__tmp98234
                                          (let ((__tmp98235
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%strukt95498%_
                                                    '7
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (##vector-length __tmp98235))))
                                     (declare (not safe))
                                     (##fx< _%field95492%_ __tmp98234))))
                            (let ()
                              (declare (not safe))
                              (make-struct-subclass-slot-mutator
                               _%klass95475%_
                               _%slot95483%_
                               _%field95492%_))
                            (let ()
                              (declare (not safe))
                              (make-class-cached-slot-mutator
                               _%klass95475%_
                               _%slot95483%_
                               _%field95492%_))))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass95446%_ _%slot95447%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95446%_ 'class))
              (let ((_%klass95451%_ _%klass95446%_))
                (if (let () (declare (not safe)) (symbol? _%slot95447%_))
                    (let ((_%slot95461%_ _%slot95447%_))
                      (declare (not safe))
                      (__make-class-slot-unchecked-accessor
                       _%klass95451%_
                       _%slot95461%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                       'contract:
                       'symbol?
                       'value:
                       _%slot95447%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95446%_)
                '#!void)))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass95414%_ _%slot95415%_)
        (let ((_%klass95418%_ _%klass95414%_))
          (let* ((_%slot95426%_ _%slot95415%_)
                 (_%field95435%_
                  (let ((__tmp98236
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass95418%_
                            '8
                            '#f
                            '#f))))
                    (declare (not safe))
                    (symbolic-table-ref __tmp98236 _%slot95426%_ '#f))))
            (if (let () (declare (not safe)) (not _%field95435%_))
                (let ()
                  (error '"unknown slot"
                         'class:
                         _%klass95418%_
                         'slot:
                         _%slot95426%_)
                  '#!void)
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass95418%_))
                    (let ()
                      (declare (not safe))
                      (make-struct-slot-unchecked-accessor
                       _%klass95418%_
                       _%slot95426%_
                       _%field95435%_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _%klass95418%_))
                        (let ()
                          (declare (not safe))
                          (make-struct-slot-unchecked-accessor
                           _%klass95418%_
                           _%slot95426%_
                           _%field95435%_))
                        (if (let ((_%strukt95441%_
                                   (let ()
                                     (declare (not safe))
                                     (base-struct/1 _%klass95418%_))))
                              (and (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%strukt95441%_
                                      'class))
                                   (let ((__tmp98237
                                          (let ((__tmp98238
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%strukt95441%_
                                                    '7
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (##vector-length __tmp98238))))
                                     (declare (not safe))
                                     (##fx< _%field95435%_ __tmp98237))))
                            (let ()
                              (declare (not safe))
                              (make-struct-slot-unchecked-accessor
                               _%klass95418%_
                               _%slot95426%_
                               _%field95435%_))
                            (let ()
                              (declare (not safe))
                              (make-class-cached-slot-unchecked-accessor
                               _%klass95418%_
                               _%slot95426%_
                               _%field95435%_))))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass95389%_ _%slot95390%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95389%_ 'class))
              (let ((_%klass95394%_ _%klass95389%_))
                (if (let () (declare (not safe)) (symbol? _%slot95390%_))
                    (let ((_%slot95404%_ _%slot95390%_))
                      (declare (not safe))
                      (__make-class-slot-unchecked-mutator
                       _%klass95394%_
                       _%slot95404%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                       'contract:
                       'symbol?
                       'value:
                       _%slot95390%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95389%_)
                '#!void)))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass95357%_ _%slot95358%_)
        (let ((_%klass95361%_ _%klass95357%_))
          (let* ((_%slot95369%_ _%slot95358%_)
                 (_%field95378%_
                  (let ((__tmp98239
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass95361%_
                            '8
                            '#f
                            '#f))))
                    (declare (not safe))
                    (symbolic-table-ref __tmp98239 _%slot95369%_ '#f))))
            (if (let () (declare (not safe)) (not _%field95378%_))
                (let ()
                  (error '"unknown slot"
                         'class:
                         _%klass95361%_
                         'slot:
                         _%slot95369%_)
                  '#!void)
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass95361%_))
                    (let ()
                      (declare (not safe))
                      (make-struct-slot-unchecked-mutator
                       _%klass95361%_
                       _%slot95369%_
                       _%field95378%_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _%klass95361%_))
                        (let ()
                          (declare (not safe))
                          (make-struct-slot-unchecked-mutator
                           _%klass95361%_
                           _%slot95369%_
                           _%field95378%_))
                        (if (let ((_%strukt95384%_
                                   (let ()
                                     (declare (not safe))
                                     (base-struct/1 _%klass95361%_))))
                              (and (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%strukt95384%_
                                      'class))
                                   (let ((__tmp98240
                                          (let ((__tmp98241
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%strukt95384%_
                                                    '7
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (##vector-length __tmp98241))))
                                     (declare (not safe))
                                     (##fx< _%field95378%_ __tmp98240))))
                            (let ()
                              (declare (not safe))
                              (make-struct-slot-unchecked-mutator
                               _%klass95361%_
                               _%slot95369%_
                               _%field95378%_))
                            (let ()
                              (declare (not safe))
                              (make-class-cached-slot-unchecked-mutator
                               _%klass95361%_
                               _%slot95369%_
                               _%field95378%_))))))))))
    (define not-an-instance__%
      (lambda (_%object95341%_ _%class95342%_ _%slot95343%_)
        (apply error
               '"not an instance"
               'object:
               _%object95341%_
               'class:
               _%class95342%_
               (if _%slot95343%_ (cons 'slot: (cons _%slot95343%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object95348%_ _%class95349%_)
        (let ((_%slot95351%_ '#f))
          (declare (not safe))
          (not-an-instance__% _%object95348%_ _%class95349%_ _%slot95351%_))))
    (define not-an-instance
      (lambda _g98243_
        (let ((_g98242_ (let () (declare (not safe)) (##length _g98243_))))
          (cond ((let () (declare (not safe)) (##fx= _g98242_ 2))
                 (apply (lambda (_%object95348%_ _%class95349%_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0
                             _%object95348%_
                             _%class95349%_)))
                        _g98243_))
                ((let () (declare (not safe)) (##fx= _g98242_ 3))
                 (apply (lambda (_%object95353%_ _%class95354%_ _%slot95355%_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _%object95353%_
                             _%class95354%_
                             _%slot95355%_)))
                        _g98243_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g98243_))))))
    (define make-final-slot-accessor
      (lambda (_%klass95334%_ _%slot95335%_ _%field95336%_)
        (lambda (_%obj95338%_)
          (##direct-structure-ref
           _%obj95338%_
           _%field95336%_
           _%klass95334%_
           _%slot95335%_))))
    (define make-final-slot-mutator
      (lambda (_%klass95327%_ _%slot95328%_ _%field95329%_)
        (lambda (_%obj95331%_ _%val95332%_)
          (##direct-structure-set!
           _%obj95331%_
           _%val95332%_
           _%field95329%_
           _%klass95327%_
           _%slot95328%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass95321%_ _%slot95322%_ _%field95323%_)
        (lambda (_%obj95325%_)
          (##structure-ref
           _%obj95325%_
           _%field95323%_
           _%klass95321%_
           _%slot95322%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass95314%_ _%slot95315%_ _%field95316%_)
        (lambda (_%obj95318%_ _%val95319%_)
          (##structure-set!
           _%obj95318%_
           _%val95319%_
           _%field95316%_
           _%klass95314%_
           _%slot95315%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass95308%_ _%slot95309%_ _%field95310%_)
        (lambda (_%obj95312%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj95312%_
             _%field95310%_
             _%klass95308%_
             _%slot95309%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass95301%_ _%slot95302%_ _%field95303%_)
        (lambda (_%obj95305%_ _%val95306%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj95305%_
             _%val95306%_
             _%field95303%_
             _%klass95301%_
             _%slot95302%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass95295%_ _%slot95296%_ _%field95297%_)
        (lambda (_%obj95299%_)
          (if (let ()
                (declare (not safe))
                (class-instance? _%klass95295%_ _%obj95299%_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _%obj95299%_ _%field95297%_))
              (let ()
                (declare (not safe))
                (not-an-instance__%
                 _%obj95299%_
                 _%klass95295%_
                 _%slot95296%_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass95288%_ _%slot95289%_ _%field95290%_)
        (lambda (_%obj95292%_ _%val95293%_)
          (if (let ()
                (declare (not safe))
                (class-instance? _%klass95288%_ _%obj95292%_))
              (let ()
                (declare (not safe))
                (unchecked-field-set!
                 _%obj95292%_
                 _%field95290%_
                 _%val95293%_))
              (let ()
                (declare (not safe))
                (not-an-instance__%
                 _%obj95292%_
                 _%klass95288%_
                 _%slot95289%_))))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass95279%_ _%slot95280%_ _%field95281%_)
        (lambda (_%obj95283%_)
          (if (let ((__tmp98244
                     (let () (declare (not safe)) (##type-id _%klass95279%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj95283%_ __tmp98244))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _%obj95283%_ _%field95281%_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _%klass95279%_ _%obj95283%_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _%obj95283%_ _%slot95280%_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _%obj95283%_
                     _%klass95279%_
                     _%slot95280%_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass95269%_ _%slot95270%_ _%field95271%_)
        (lambda (_%obj95273%_ _%val95274%_)
          (if (let ((__tmp98245
                     (let () (declare (not safe)) (##type-id _%klass95269%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj95273%_ __tmp98245))
              (let ()
                (declare (not safe))
                (unchecked-field-set!
                 _%obj95273%_
                 _%field95271%_
                 _%val95274%_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _%klass95269%_ _%obj95273%_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set!
                     _%obj95273%_
                     _%slot95270%_
                     _%val95274%_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _%obj95273%_
                     _%klass95269%_
                     _%slot95270%_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass95263%_ _%slot95264%_ _%field95265%_)
        (lambda (_%obj95267%_)
          (if (let ((__tmp98246
                     (let () (declare (not safe)) (##type-id _%klass95263%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj95267%_ __tmp98246))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _%obj95267%_ _%field95265%_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _%obj95267%_ _%slot95264%_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass95256%_ _%slot95257%_ _%field95258%_)
        (lambda (_%obj95260%_ _%val95261%_)
          (if (let ((__tmp98247
                     (let () (declare (not safe)) (##type-id _%klass95256%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj95260%_ __tmp98247))
              (let ()
                (declare (not safe))
                (unchecked-field-set!
                 _%obj95260%_
                 _%field95258%_
                 _%val95261%_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set!
                 _%obj95260%_
                 _%slot95257%_
                 _%val95261%_))))))
    (define class-slot-offset
      (lambda (_%klass95231%_ _%slot95232%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95231%_ 'class))
              (let ((_%klass95236%_ _%klass95231%_))
                (if (let () (declare (not safe)) (symbolic? _%slot95232%_))
                    (let ((_%slot95246%_ _%slot95232%_))
                      (declare (not safe))
                      (__class-slot-offset _%klass95236%_ _%slot95246%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                       'contract:
                       'symbolic?
                       'value:
                       _%slot95232%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95231%_)
                '#!void)))))
    (define __class-slot-offset
      (lambda (_%klass95210%_ _%slot95211%_)
        (let ((_%klass95214%_ _%klass95210%_))
          (let* ((_%slot95222%_ _%slot95211%_)
                 (__tmp98248
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%klass95214%_ '8 '#f '#f))))
            (declare (not safe))
            (symbolic-table-ref __tmp98248 _%slot95222%_ '#f)))))
    (define class-slot-ref
      (lambda (_%klass95184%_ _%obj95185%_ _%slot95186%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95184%_ 'class))
              (let ((_%klass95190%_ _%klass95184%_))
                (if (let () (declare (not safe)) (symbolic? _%slot95186%_))
                    (let ((_%slot95200%_ _%slot95186%_))
                      (declare (not safe))
                      (__class-slot-ref
                       _%klass95190%_
                       _%obj95185%_
                       _%slot95200%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                       'contract:
                       'symbolic?
                       'value:
                       _%slot95186%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95184%_)
                '#!void)))))
    (define __class-slot-ref
      (lambda (_%klass95160%_ _%obj95161%_ _%slot95162%_)
        (let ()
          (let* ((_%klass95165%_ _%klass95160%_) (_%slot95173%_ _%slot95162%_))
            (if (let ()
                  (declare (not safe))
                  (__class-instance? _%klass95165%_ _%obj95161%_))
                (let ((_%off95182%_
                       (let ((__tmp98249
                              (let ()
                                (declare (not safe))
                                (##structure-type _%obj95161%_))))
                         (declare (not safe))
                         (class-slot-offset __tmp98249 _%slot95173%_))))
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%obj95161%_
                   _%off95182%_
                   _%klass95165%_
                   _%slot95173%_))
                (let ()
                  (declare (not safe))
                  (not-an-instance__0 _%obj95161%_ _%klass95165%_)))))))
    (define class-slot-set!
      (lambda (_%klass95133%_ _%obj95134%_ _%slot95135%_ _%val95136%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95133%_ 'class))
              (let ((_%klass95140%_ _%klass95133%_))
                (if (let () (declare (not safe)) (symbolic? _%slot95135%_))
                    (let ((_%slot95150%_ _%slot95135%_))
                      (declare (not safe))
                      (__class-slot-set!
                       _%klass95140%_
                       _%obj95134%_
                       _%slot95150%_
                       _%val95136%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                       'contract:
                       'symbolic?
                       'value:
                       _%slot95135%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95133%_)
                '#!void)))))
    (define __class-slot-set!
      (lambda (_%klass95108%_ _%obj95109%_ _%slot95110%_ _%val95111%_)
        (let ()
          (let* ((_%klass95114%_ _%klass95108%_) (_%slot95122%_ _%slot95110%_))
            (if (let ()
                  (declare (not safe))
                  (__class-instance? _%klass95114%_ _%obj95109%_))
                (let ((_%off95131%_
                       (let ((__tmp98250
                              (let ()
                                (declare (not safe))
                                (##structure-type _%obj95109%_))))
                         (declare (not safe))
                         (class-slot-offset __tmp98250 _%slot95122%_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%obj95109%_
                   _%val95111%_
                   _%off95131%_
                   _%klass95114%_
                   _%slot95122%_))
                (let ()
                  (declare (not safe))
                  (not-an-instance__0 _%obj95109%_ _%klass95114%_)))))))
    (define unchecked-field-ref
      (lambda (_%obj95105%_ _%off95106%_)
        (let ((__tmp98251
               (let () (declare (not safe)) (##structure-type _%obj95105%_))))
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj95105%_
           _%off95106%_
           __tmp98251
           '#f))))
    (define unchecked-field-set!
      (lambda (_%obj95101%_ _%off95102%_ _%val95103%_)
        (let ((__tmp98252
               (let () (declare (not safe)) (##structure-type _%obj95101%_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj95101%_
           _%val95103%_
           _%off95102%_
           __tmp98252
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj95098%_ _%slot95099%_)
        (let ((__tmp98253
               (let ((__tmp98254
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj95098%_))))
                 (declare (not safe))
                 (__class-slot-offset __tmp98254 _%slot95099%_))))
          (declare (not safe))
          (unchecked-field-ref _%obj95098%_ __tmp98253))))
    (define unchecked-slot-set!
      (lambda (_%obj95094%_ _%slot95095%_ _%val95096%_)
        (let ((__tmp98255
               (let ((__tmp98256
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj95094%_))))
                 (declare (not safe))
                 (__class-slot-offset __tmp98256 _%slot95095%_))))
          (declare (not safe))
          (unchecked-field-set! _%obj95094%_ __tmp98255 _%val95096%_))))
    (define slot-ref__%
      (lambda (_%obj95056%_ _%slot95057%_ _%E95058%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%slot95057%_))
              (let ((_%slot95062%_ _%slot95057%_))
                (if (let () (declare (not safe)) (procedure? _%E95058%_))
                    (let ((_%E95072%_ _%E95058%_))
                      (declare (not safe))
                      (__slot-ref__% _%obj95056%_ _%slot95062%_ _%E95072%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                       'contract:
                       'procedure?
                       'value:
                       _%E95058%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
                 'contract:
                 'symbol?
                 'value:
                 _%slot95057%_)
                '#!void)))))
    (define slot-ref__0
      (lambda (_%obj95085%_ _%slot95086%_)
        (let ((_%E95088%_ __slot-error))
          (declare (not safe))
          (slot-ref__% _%obj95085%_ _%slot95086%_ _%E95088%_))))
    (define slot-ref
      (lambda _g98258_
        (let ((_g98257_ (let () (declare (not safe)) (##length _g98258_))))
          (cond ((let () (declare (not safe)) (##fx= _g98257_ 2))
                 (apply (lambda (_%obj95085%_ _%slot95086%_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%obj95085%_ _%slot95086%_)))
                        _g98258_))
                ((let () (declare (not safe)) (##fx= _g98257_ 3))
                 (apply (lambda (_%obj95090%_ _%slot95091%_ _%E95092%_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__%
                             _%obj95090%_
                             _%slot95091%_
                             _%E95092%_)))
                        _g98258_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g98258_))))))
    (define __slot-ref__%
      (lambda (_%obj95012%_ _%slot95013%_ _%E95014%_)
        (let ()
          (let* ((_%slot95017%_ _%slot95013%_) (_%E95025%_ _%E95014%_))
            (let* ((_%klass95034%_
                    (let () (declare (not safe)) (class-of _%obj95012%_)))
                   (_%$e95037%_
                    (let ()
                      (declare (not safe))
                      (class-slot-offset _%klass95034%_ _%slot95017%_))))
              (if _%$e95037%_
                  ((lambda (_%off95040%_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _%obj95012%_ _%off95040%_)))
                   _%$e95037%_)
                  (let ()
                    (declare (not safe))
                    (_%E95025%_ _%obj95012%_ _%slot95017%_))))))))
    (define __slot-ref__0
      (lambda (_%obj95046%_ _%slot95047%_)
        (let ((_%E95049%_ __slot-error))
          (declare (not safe))
          (__slot-ref__% _%obj95046%_ _%slot95047%_ _%E95049%_))))
    (define __slot-ref
      (lambda _g98260_
        (let ((_g98259_ (let () (declare (not safe)) (##length _g98260_))))
          (cond ((let () (declare (not safe)) (##fx= _g98259_ 2))
                 (apply (lambda (_%obj95046%_ _%slot95047%_)
                          (let ()
                            (declare (not safe))
                            (__slot-ref__0 _%obj95046%_ _%slot95047%_)))
                        _g98260_))
                ((let () (declare (not safe)) (##fx= _g98259_ 3))
                 (apply (lambda (_%obj95051%_ _%slot95052%_ _%E95053%_)
                          (let ()
                            (declare (not safe))
                            (__slot-ref__%
                             _%obj95051%_
                             _%slot95052%_
                             _%E95053%_)))
                        _g98260_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g98260_))))))
    (define slot-set!__%
      (lambda (_%obj94970%_ _%slot94971%_ _%val94972%_ _%E94973%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%slot94971%_))
              (let ((_%slot94977%_ _%slot94971%_))
                (if (let () (declare (not safe)) (procedure? _%E94973%_))
                    (let ((_%E94987%_ _%E94973%_))
                      (declare (not safe))
                      (__slot-set!__%
                       _%obj94970%_
                       _%slot94977%_
                       _%val94972%_
                       _%E94987%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                       'contract:
                       'procedure?
                       'value:
                       _%E94973%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
                 'contract:
                 'symbol?
                 'value:
                 _%slot94971%_)
                '#!void)))))
    (define slot-set!__0
      (lambda (_%obj95000%_ _%slot95001%_ _%val95002%_)
        (let ((_%E95004%_ __slot-error))
          (declare (not safe))
          (slot-set!__% _%obj95000%_ _%slot95001%_ _%val95002%_ _%E95004%_))))
    (define slot-set!
      (lambda _g98262_
        (let ((_g98261_ (let () (declare (not safe)) (##length _g98262_))))
          (cond ((let () (declare (not safe)) (##fx= _g98261_ 3))
                 (apply (lambda (_%obj95000%_ _%slot95001%_ _%val95002%_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0
                             _%obj95000%_
                             _%slot95001%_
                             _%val95002%_)))
                        _g98262_))
                ((let () (declare (not safe)) (##fx= _g98261_ 4))
                 (apply (lambda (_%obj95006%_
                                 _%slot95007%_
                                 _%val95008%_
                                 _%E95009%_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _%obj95006%_
                             _%slot95007%_
                             _%val95008%_
                             _%E95009%_)))
                        _g98262_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g98262_))))))
    (define __slot-set!__%
      (lambda (_%obj94923%_ _%slot94924%_ _%val94925%_ _%E94926%_)
        (let ()
          (let* ((_%slot94929%_ _%slot94924%_) (_%E94937%_ _%E94926%_))
            (let* ((_%klass94946%_
                    (let () (declare (not safe)) (class-of _%obj94923%_)))
                   (_%$e94949%_
                    (let ()
                      (declare (not safe))
                      (class-slot-offset _%klass94946%_ _%slot94929%_))))
              (if _%$e94949%_
                  ((lambda (_%off94952%_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _%obj94923%_
                        _%off94952%_
                        _%val94925%_)))
                   _%$e94949%_)
                  (let ()
                    (declare (not safe))
                    (_%E94937%_ _%obj94923%_ _%slot94929%_))))))))
    (define __slot-set!__0
      (lambda (_%obj94958%_ _%slot94959%_ _%val94960%_)
        (let ((_%E94962%_ __slot-error))
          (declare (not safe))
          (__slot-set!__%
           _%obj94958%_
           _%slot94959%_
           _%val94960%_
           _%E94962%_))))
    (define __slot-set!
      (lambda _g98264_
        (let ((_g98263_ (let () (declare (not safe)) (##length _g98264_))))
          (cond ((let () (declare (not safe)) (##fx= _g98263_ 3))
                 (apply (lambda (_%obj94958%_ _%slot94959%_ _%val94960%_)
                          (let ()
                            (declare (not safe))
                            (__slot-set!__0
                             _%obj94958%_
                             _%slot94959%_
                             _%val94960%_)))
                        _g98264_))
                ((let () (declare (not safe)) (##fx= _g98263_ 4))
                 (apply (lambda (_%obj94964%_
                                 _%slot94965%_
                                 _%val94966%_
                                 _%E94967%_)
                          (let ()
                            (declare (not safe))
                            (__slot-set!__%
                             _%obj94964%_
                             _%slot94965%_
                             _%val94966%_
                             _%E94967%_)))
                        _g98264_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g98264_))))))
    (define __slot-error
      (lambda (_%obj94919%_ _%slot94920%_)
        (error '"Cannot find slot"
               'object:
               _%obj94919%_
               'slot:
               _%slot94920%_)))
    (define subclass?
      (lambda (_%maybe-sub-class94894%_ _%maybe-super-class94895%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%maybe-sub-class94894%_ 'class))
              (let ((_%maybe-sub-class94899%_ _%maybe-sub-class94894%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%maybe-super-class94895%_
                       'class))
                    (let ((_%maybe-super-class94909%_
                           _%maybe-super-class94895%_))
                      (declare (not safe))
                      (__subclass?
                       _%maybe-sub-class94899%_
                       _%maybe-super-class94909%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                       'contract:
                       'class-type?
                       'value:
                       _%maybe-super-class94895%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
                 'contract:
                 'class-type?
                 'value:
                 _%maybe-sub-class94894%_)
                '#!void)))))
    (define __subclass?
      (lambda (_%maybe-sub-class94866%_ _%maybe-super-class94867%_)
        (let ()
          (let* ((_%maybe-sub-class94870%_ _%maybe-sub-class94866%_)
                 (_%maybe-super-class94878%_ _%maybe-super-class94867%_))
            (let* ((_%maybe-super-class-id94887%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%maybe-super-class94878%_)))
                   (_%$e94889%_
                    (eq? _%maybe-super-class-id94887%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%maybe-sub-class94870%_)))))
              (if _%$e94889%_
                  _%$e94889%_
                  (let ((__tmp98266
                         (lambda (_%super-class94892%_)
                           (eq? (let ()
                                  (declare (not safe))
                                  (##type-id _%super-class94892%_))
                                _%maybe-super-class-id94887%_)))
                        (__tmp98265
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%maybe-sub-class94870%_
                            '6
                            '#f
                            '#f))))
                    (declare (not safe))
                    (__ormap1 __tmp98266 __tmp98265))))))))
    (define object?
      (lambda (_%o94863%_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _%o94863%_))
              (let ((__tmp98267
                     (let ()
                       (declare (not safe))
                       (##structure-type _%o94863%_))))
                (declare (not safe))
                (##structure-instance-of? __tmp98267 'class))
              '#f))))
    (define object-type
      (lambda (_%o94858%_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _%o94858%_))
              (let ((_%klass94861%_
                     (let ()
                       (declare (not safe))
                       (##structure-type _%o94858%_))))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass94861%_ 'class))
                    _%klass94861%_
                    (begin
                      (error '"not an object" _%o94858%_ _%klass94861%_)
                      '#!void)))
              (begin (error '"not an object" _%o94858%_) '#!void)))))
    (define direct-instance?
      (lambda (_%klass94843%_ _%obj94844%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94843%_ 'class))
              (let ((_%klass94848%_ _%klass94843%_))
                (declare (not safe))
                (__direct-instance? _%klass94848%_ _%obj94844%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94843%_)
                '#!void)))))
    (define __direct-instance?
      (lambda (_%klass94830%_ _%obj94831%_)
        (let ()
          (let* ((_%klass94834%_ _%klass94830%_)
                 (__tmp98268
                  (let () (declare (not safe)) (##type-id _%klass94834%_))))
            (declare (not safe))
            (##structure-direct-instance-of? _%obj94831%_ __tmp98268)))))
    (define immediate-instance-of?
      (lambda (_%klass94826%_ _%obj94827%_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _%obj94827%_))
              (eq? _%klass94826%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%obj94827%_)))
              '#f))))
    (define struct-instance?
      (lambda (_%klass94811%_ _%obj94812%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94811%_ 'class))
              (let ((_%klass94816%_ _%klass94811%_))
                (declare (not safe))
                (__struct-instance? _%klass94816%_ _%obj94812%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94811%_)
                '#!void)))))
    (define __struct-instance?
      (lambda (_%klass94798%_ _%obj94799%_)
        (let ()
          (let* ((_%klass94802%_ _%klass94798%_)
                 (__tmp98269
                  (let () (declare (not safe)) (##type-id _%klass94802%_))))
            (declare (not safe))
            (##structure-instance-of? _%obj94799%_ __tmp98269)))))
    (define class-instance?
      (lambda (_%klass94783%_ _%obj94784%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94783%_ 'class))
              (let ((_%klass94788%_ _%klass94783%_))
                (declare (not safe))
                (__class-instance? _%klass94788%_ _%obj94784%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94783%_)
                '#!void)))))
    (define __class-instance?
      (lambda (_%klass94768%_ _%obj94769%_)
        (let ()
          (let* ((_%klass94772%_ _%klass94768%_)
                 (_%type94781%_
                  (let () (declare (not safe)) (class-of _%obj94769%_))))
            (declare (not safe))
            (subclass? _%type94781%_ _%klass94772%_)))))
    (define make-object
      (lambda (_%klass94743%_ _%k94744%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94743%_ 'class))
              (let ((_%klass94748%_ _%klass94743%_))
                (if (let () (declare (not safe)) (fixnum? _%k94744%_))
                    (let ((_%k94758%_ _%k94744%_))
                      (declare (not safe))
                      (__make-object _%klass94748%_ _%k94758%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                       'contract:
                       'fixnum?
                       'value:
                       _%k94744%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94743%_)
                '#!void)))))
    (define __make-object
      (lambda (_%klass94720%_ _%k94721%_)
        (let ()
          (let* ((_%klass94724%_ _%klass94720%_) (_%k94732%_ _%k94721%_))
            (if (let ()
                  (declare (not safe))
                  (__class-type-system? _%klass94724%_))
                (begin
                  (error '"cannot instantiate system class"
                         'class:
                         _%klass94724%_)
                  '#!void)
                (let ((_%obj94741%_
                       (let ()
                         (declare (not safe))
                         (##make-structure _%klass94724%_ _%k94732%_))))
                  (declare (not safe))
                  (object-fill! _%obj94741%_ '#f)))))))
    (define object-fill!
      (lambda (_%obj94705%_ _%fill94706%_)
        (let ()
          (if '#t
              (let ((_%obj94710%_ _%obj94705%_))
                (declare (not safe))
                (__object-fill! _%obj94710%_ _%fill94706%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
                 'contract:
                 'true
                 'value:
                 _%obj94705%_)
                '#!void)))))
    (define __object-fill!
      (lambda (_%obj94687%_ _%fill94688%_)
        (let ((_%obj94691%_ _%obj94687%_))
          (let _%loop94700%_ ((_%i94702%_
                               (let ((__tmp98271
                                      (let ()
                                        (declare (not safe))
                                        (##structure-length _%obj94691%_))))
                                 (declare (not safe))
                                 (##fx- __tmp98271 '1))))
            (let ()
              (if (let () (declare (not safe)) (##fx> _%i94702%_ '0))
                  (begin
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%obj94691%_
                       _%fill94688%_
                       _%i94702%_
                       '#f
                       '#f))
                    (let ((__tmp98270
                           (let ()
                             (declare (not safe))
                             (##fx- _%i94702%_ '1))))
                      (declare (not safe))
                      (_%loop94700%_ __tmp98270)))
                  _%obj94691%_))))))
    (define new-instance
      (lambda (_%klass94673%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94673%_ 'class))
              (let ((_%klass94677%_ _%klass94673%_))
                (declare (not safe))
                (__new-instance _%klass94677%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94673%_)
                '#!void)))))
    (define __new-instance
      (lambda (_%klass94661%_)
        (let ()
          (let* ((_%klass94664%_ _%klass94661%_)
                 (__obj98167
                  (let ((__tmp98272
                         (let ((__tmp98273
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass94664%_
                                   '7
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (##vector-length __tmp98273))))
                    (declare (not safe))
                    (##make-structure _%klass94664%_ __tmp98272))))
            (let () (declare (not safe)) (object-fill! __obj98167 '#f))
            __obj98167))))
    (define make-instance
      (lambda (_%klass94646%_ . _%args94647%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94646%_ 'class))
              (let ((_%klass94651%_ _%klass94646%_))
                (declare (not safe))
                (##apply __make-instance _%klass94651%_ _%args94647%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94646%_)
                '#!void)))))
    (define __make-instance
      (lambda (_%klass94618%_ . _%args94619%_)
        (let ()
          (let* ((_%klass94622%_ _%klass94618%_)
                 (_%$e94631%_
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%klass94622%_ '10 '#f '#f))))
            (if _%$e94631%_
                ((lambda (_%kons-id94634%_)
                   (let ((_%obj94636%_
                          (let ()
                            (declare (not safe))
                            (__new-instance _%klass94622%_))))
                     (let ()
                       (declare (not safe))
                       (___constructor-init!
                        _%klass94622%_
                        _%kons-id94634%_
                        _%obj94636%_
                        _%args94619%_))
                     _%obj94636%_))
                 _%$e94631%_)
                (if (let ()
                      (declare (not safe))
                      (__class-type-metaclass? _%klass94622%_))
                    (let ((_%obj94639%_
                           (let ()
                             (declare (not safe))
                             (__new-instance _%klass94622%_))))
                      (let ()
                        (declare (not safe))
                        (__metaclass-instance-init!
                         _%klass94622%_
                         _%obj94639%_
                         _%args94619%_))
                      _%obj94639%_)
                    (if (let ((__tmp98274
                               (let ()
                                 (declare (not safe))
                                 (__class-type-struct? _%klass94622%_))))
                          (declare (not safe))
                          (not __tmp98274))
                        (let ((_%obj94642%_
                               (let ()
                                 (declare (not safe))
                                 (__new-instance _%klass94622%_))))
                          (let ()
                            (declare (not safe))
                            (___class-instance-init!
                             _%klass94622%_
                             _%obj94642%_
                             _%args94619%_))
                          _%obj94642%_)
                        (if (let ((__tmp98276
                                   (let ()
                                     (declare (not safe))
                                     (__class-type-field-count
                                      _%klass94622%_)))
                                  (__tmp98275 (length _%args94619%_)))
                              (declare (not safe))
                              (##fx= __tmp98276 __tmp98275))
                            (let ()
                              (apply ##structure _%klass94622%_ _%args94619%_))
                            (let ()
                              (error '"arguments don't match object size"
                                     'class:
                                     _%klass94622%_
                                     'slots:
                                     (let ()
                                       (declare (not safe))
                                       (__class-type-slot-list _%klass94622%_))
                                     'args:
                                     _%args94619%_)
                              '#!void)))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj94603%_ . _%args94604%_)
        (let ()
          (if '#t
              (let ((_%obj94608%_ _%obj94603%_))
                (declare (not safe))
                (##apply __struct-instance-init! _%obj94608%_ _%args94604%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
                 'contract:
                 'true
                 'value:
                 _%obj94603%_)
                '#!void)))))
    (define __struct-instance-init!
      (lambda (_%obj94590%_ . _%args94591%_)
        (let ((_%obj94594%_ _%obj94590%_))
          (if (let ((__tmp98278 (length _%args94591%_))
                    (__tmp98277
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj94594%_))))
                (declare (not safe))
                (##fx< __tmp98278 __tmp98277))
              (let ()
                (declare (not safe))
                (___struct-instance-init! _%obj94594%_ _%args94591%_))
              (error '"too many arguments for struct"
                     'object:
                     _%obj94594%_
                     'args:
                     _%args94591%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj94549%_ _%args94550%_)
        (let _%lp94552%_ ((_%k94554%_ '1) (_%rest94555%_ _%args94550%_))
          (let* ((_%rest9455694564%_ _%rest94555%_)
                 (_%else9455894572%_ (lambda () _%obj94549%_))
                 (_%K9456094578%_
                  (lambda (_%rest94575%_ _%hd94576%_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set!
                       _%obj94549%_
                       _%k94554%_
                       _%hd94576%_))
                    (let ((__tmp98279
                           (let ()
                             (declare (not safe))
                             (##fx+ _%k94554%_ '1))))
                      (declare (not safe))
                      (_%lp94552%_ __tmp98279 _%rest94575%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest9455694564%_))
                (let ((_%hd9456194581%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9455694564%_)))
                      (_%tl9456294583%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9455694564%_))))
                  (let* ((_%hd94586%_ _%hd9456194581%_)
                         (_%rest94588%_ _%tl9456294583%_))
                    (declare (not safe))
                    (_%K9456094578%_ _%rest94588%_ _%hd94586%_)))
                (let () (declare (not safe)) (_%else9455894572%_)))))))
    (define class-instance-init!
      (lambda (_%obj94534%_ . _%args94535%_)
        (let ()
          (if '#t
              (let ((_%obj94539%_ _%obj94534%_))
                (declare (not safe))
                (##apply __class-instance-init! _%obj94539%_ _%args94535%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
                 'contract:
                 'true
                 'value:
                 _%obj94534%_)
                '#!void)))))
    (define __class-instance-init!
      (lambda (_%obj94521%_ . _%args94522%_)
        (let ((_%obj94525%_ _%obj94521%_))
          (let ((__tmp98280
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj94525%_))))
            (declare (not safe))
            (___class-instance-init! __tmp98280 _%obj94525%_ _%args94522%_))
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass94463%_ _%obj94464%_ _%args94465%_)
        (let _%lp94467%_ ((_%rest94469%_ _%args94465%_))
          (let* ((_%rest9447094480%_ _%rest94469%_)
                 (_%else9447294488%_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _%rest94469%_))
                        _%obj94464%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass94463%_
                               'rest:
                               _%rest94469%_))))
                 (_%K9447494502%_
                  (lambda (_%rest94491%_ _%val94492%_ _%key94493%_)
                    (if (let ((__tmp98281
                               (let ()
                                 (declare (not safe))
                                 (keyword? _%key94493%_))))
                          (declare (not safe))
                          (not __tmp98281))
                        (let ()
                          (error '"non keyword slot initializer"
                                 'slot:
                                 _%key94493%_))
                        (let ((_%$e94496%_
                               (let ()
                                 (declare (not safe))
                                 (__class-slot-offset
                                  _%klass94463%_
                                  _%key94493%_))))
                          (if _%$e94496%_
                              ((lambda (_%off94499%_)
                                 (let ()
                                   (declare (not safe))
                                   (unchecked-field-set!
                                    _%obj94464%_
                                    _%off94499%_
                                    _%val94492%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%lp94467%_ _%rest94491%_)))
                               _%$e94496%_)
                              (let ()
                                (error '"unknown slot"
                                       'class:
                                       _%klass94463%_
                                       'slot:
                                       _%key94493%_))))))))
            (if (let () (declare (not safe)) (##pair? _%rest9447094480%_))
                (let ((_%hd9447594505%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9447094480%_)))
                      (_%tl9447694507%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9447094480%_))))
                  (let ((_%key94510%_ _%hd9447594505%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9447694507%_))
                        (let ((_%hd9447794512%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9447694507%_)))
                              (_%tl9447894514%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9447694507%_))))
                          (let* ((_%val94517%_ _%hd9447794512%_)
                                 (_%rest94519%_ _%tl9447894514%_))
                            (declare (not safe))
                            (_%K9447494502%_
                             _%rest94519%_
                             _%val94517%_
                             _%key94510%_)))
                        (let () (declare (not safe)) (_%else9447294488%_)))))
                (let () (declare (not safe)) (_%else9447294488%_)))))))
    (define __metaclass-instance-init!
      (lambda (_%klass94459%_ _%obj94460%_ _%args94461%_)
        (apply call-method
               _%klass94459%_
               'instance-init!
               _%obj94460%_
               _%args94461%_)))
    (define constructor-init!
      (lambda (_%klass94422%_ _%kons-id94423%_ _%obj94424%_ . _%args94425%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94422%_ 'class))
              (let ((_%klass94429%_ _%klass94422%_))
                (if (let () (declare (not safe)) (symbol? _%kons-id94423%_))
                    (let ((_%kons-id94439%_ _%kons-id94423%_))
                      (if '#t
                          (let ((_%obj94449%_ _%obj94424%_))
                            (declare (not safe))
                            (##apply __constructor-init!
                                     _%klass94429%_
                                     _%kons-id94439%_
                                     _%obj94449%_
                                     _%args94425%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                             'contract:
                             'true
                             'value:
                             _%obj94424%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                       'contract:
                       'symbol?
                       'value:
                       _%kons-id94423%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94422%_)
                '#!void)))))
    (define __constructor-init!
      (lambda (_%klass94391%_ _%kons-id94392%_ _%obj94393%_ . _%args94394%_)
        (let ((_%klass94397%_ _%klass94391%_))
          (let* ((_%kons-id94405%_ _%kons-id94392%_)
                 (_%obj94413%_ _%obj94393%_))
            (let ()
              (declare (not safe))
              (___constructor-init!
               _%klass94397%_
               _%kons-id94405%_
               _%obj94413%_
               _%args94394%_))
            '#!void))))
    (define ___constructor-init!
      (lambda (_%klass94380%_ _%kons-id94381%_ _%obj94382%_ _%args94383%_)
        (let ((_%$e94385%_
               (let ()
                 (declare (not safe))
                 (__find-method
                  _%klass94380%_
                  _%obj94382%_
                  _%kons-id94381%_))))
          (if _%$e94385%_
              ((lambda (_%kons94388%_)
                 (apply _%kons94388%_ _%obj94382%_ _%args94383%_)
                 _%obj94382%_)
               _%$e94385%_)
              (let ()
                (error '"missing constructor"
                       'class:
                       _%klass94380%_
                       'method:
                       _%kons-id94381%_))))))
    (define struct-copy
      (lambda (_%struct94366%_)
        (let ()
          (if '#t
              (let ((_%struct94370%_ _%struct94366%_))
                (declare (not safe))
                (__struct-copy _%struct94370%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
                 'contract:
                 'true
                 'value:
                 _%struct94366%_)
                '#!void)))))
    (define __struct-copy
      (lambda (_%struct94354%_)
        (let ((_%struct94357%_ _%struct94354%_))
          (declare (not safe))
          (##structure-copy _%struct94357%_))))
    (define struct->list
      (lambda (_%obj94340%_)
        (let ()
          (if '#t
              (let ((_%obj94344%_ _%obj94340%_))
                (declare (not safe))
                (__struct->list _%obj94344%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
                 'contract:
                 'true
                 'value:
                 _%obj94340%_)
                '#!void)))))
    (define __struct->list
      (lambda (_%obj94328%_)
        (let ((_%obj94331%_ _%obj94328%_))
          (declare (not safe))
          (##vector->list _%obj94331%_))))
    (define class->list
      (lambda (_%obj94314%_)
        (let ()
          (if '#t
              (let ((_%obj94318%_ _%obj94314%_))
                (declare (not safe))
                (__class->list _%obj94318%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@837.20-837.23"
                 'contract:
                 'true
                 'value:
                 _%obj94314%_)
                '#!void)))))
    (define __class->list
      (lambda (_%obj94290%_)
        (let ((_%obj94293%_ _%obj94290%_))
          (let* ((_%klass94302%_
                  (let ()
                    (declare (not safe))
                    (##structure-type _%obj94293%_)))
                 (_%slot-vector94304%_
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%klass94302%_ '7 '#f '#f))))
            (let _%loop94306%_ ((_%index94308%_
                                 (let ((__tmp98287
                                        (let ()
                                          (declare (not safe))
                                          (##vector-length
                                           _%slot-vector94304%_))))
                                   (declare (not safe))
                                   (##fx- __tmp98287 '1)))
                                (_%plist94309%_ '()))
              (let ()
                (if (let () (declare (not safe)) (##fx< _%index94308%_ '1))
                    (cons _%klass94302%_ _%plist94309%_)
                    (let ((_%slot94312%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref
                              _%slot-vector94304%_
                              _%index94308%_))))
                      (let ((__tmp98286
                             (let ()
                               (declare (not safe))
                               (##fx- _%index94308%_ '1)))
                            (__tmp98282
                             (let ((__tmp98285
                                    (let ()
                                      (declare (not safe))
                                      (symbol->keyword _%slot94312%_)))
                                   (__tmp98283
                                    (let ((__tmp98284
                                           (let ()
                                             (declare (not safe))
                                             (unchecked-field-ref
                                              _%obj94293%_
                                              _%index94308%_))))
                                      (declare (not safe))
                                      (cons __tmp98284 _%plist94309%_))))
                               (declare (not safe))
                               (cons __tmp98285 __tmp98283))))
                        (declare (not safe))
                        (_%loop94306%_ __tmp98286 __tmp98282))))))))))
    (define call-method
      (lambda (_%obj94274%_ _%id94275%_ . _%args94276%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id94275%_))
              (let ((_%id94280%_ _%id94275%_))
                (declare (not safe))
                (##apply __call-method _%obj94274%_ _%id94280%_ _%args94276%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@852.24-852.26"
                 'contract:
                 'symbol?
                 'value:
                 _%id94275%_)
                '#!void)))))
    (define __call-method
      (lambda (_%obj94243%_ _%id94244%_ . _%args94245%_)
        (let ()
          (let* ((_%id94248%_ _%id94244%_)
                 (_%$e94257%_
                  (let ()
                    (declare (not safe))
                    (__method-ref _%obj94243%_ _%id94248%_))))
            (if _%$e94257%_
                ((lambda (_%method94260%_)
                   (let ((_%method94262%_ _%method94260%_))
                     (apply _%method94262%_ _%obj94243%_ _%args94245%_)))
                 _%$e94257%_)
                (let ()
                  (error '"cannot find method"
                         'object:
                         _%obj94243%_
                         'method:
                         _%id94248%_)))))))
    (define method-ref
      (lambda (_%obj94228%_ _%id94229%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id94229%_))
              (let ((_%id94233%_ _%id94229%_))
                (declare (not safe))
                (__method-ref _%obj94228%_ _%id94233%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@876.23-876.25"
                 'contract:
                 'symbol?
                 'value:
                 _%id94229%_)
                '#!void)))))
    (define __method-ref
      (lambda (_%obj94215%_ _%id94216%_)
        (let ()
          (let* ((_%id94219%_ _%id94216%_)
                 (__tmp98288
                  (let () (declare (not safe)) (class-of _%obj94215%_))))
            (declare (not safe))
            (__find-method __tmp98288 _%obj94215%_ _%id94219%_)))))
    (define checked-method-ref
      (lambda (_%obj94208%_ _%id94209%_)
        (let ((_%$e94212%_
               (let ()
                 (declare (not safe))
                 (method-ref _%obj94208%_ _%id94209%_))))
          (if _%$e94212%_
              _%$e94212%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj94208%_
                       'method:
                       _%id94209%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj94193%_ _%id94194%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id94194%_))
              (let ((_%id94198%_ _%id94194%_))
                (declare (not safe))
                (__bound-method-ref _%obj94193%_ _%id94198%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@884.29-884.31"
                 'contract:
                 'symbol?
                 'value:
                 _%id94194%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj94161%_ _%id94162%_)
        (let ()
          (let* ((_%id94165%_ _%id94162%_)
                 (_%$e94174%_
                  (let ()
                    (declare (not safe))
                    (__method-ref _%obj94161%_ _%id94165%_))))
            (if _%$e94174%_
                ((lambda (_%method94177%_)
                   (let ((_%method94179%_ _%method94177%_))
                     (lambda _%args94190%_
                       (apply _%method94179%_ _%obj94161%_ _%args94190%_))))
                 _%$e94174%_)
                (let () '#f))))))
    (define checked-bound-method-ref
      (lambda (_%obj94146%_ _%id94147%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id94147%_))
              (let ((_%id94151%_ _%id94147%_))
                (declare (not safe))
                (__checked-bound-method-ref _%obj94146%_ _%id94151%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@893.37-893.39"
                 'contract:
                 'symbol?
                 'value:
                 _%id94147%_)
                '#!void)))))
    (define __checked-bound-method-ref
      (lambda (_%obj94129%_ _%id94130%_)
        (let ()
          (let* ((_%id94133%_ _%id94130%_)
                 (_%method94142%_
                  (let ()
                    (declare (not safe))
                    (checked-method-ref _%obj94129%_ _%id94133%_))))
            (lambda _%args94144%_
              (apply _%method94142%_ _%obj94129%_ _%args94144%_))))))
    (define find-method
      (lambda (_%klass94103%_ _%obj94104%_ _%id94105%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94103%_ 'class))
              (let ((_%klass94109%_ _%klass94103%_))
                (if (let () (declare (not safe)) (symbol? _%id94105%_))
                    (let ((_%id94119%_ _%id94105%_))
                      (declare (not safe))
                      (__find-method _%klass94109%_ _%obj94104%_ _%id94119%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@898.41-898.43"
                       'contract:
                       'symbol?
                       'value:
                       _%id94105%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@898.20-898.25"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94103%_)
                '#!void)))))
    (define __find-method
      (lambda (_%klass94076%_ _%obj94077%_ _%id94078%_)
        (let ((_%klass94081%_ _%klass94076%_))
          (let* ((_%id94089%_ _%id94078%_)
                 (_%$e94098%_
                  (let ()
                    (declare (not safe))
                    (__direct-method-ref
                     _%klass94081%_
                     _%obj94077%_
                     _%id94089%_))))
            (if _%$e94098%_
                _%$e94098%_
                (if (let ()
                      (declare (not safe))
                      (__class-type-sealed? _%klass94081%_))
                    (let () '#f)
                    (let ()
                      (declare (not safe))
                      (__mixin-method-ref
                       _%klass94081%_
                       _%obj94077%_
                       _%id94089%_))))))))
    (define mixin-find-method
      (lambda (_%mixins94060%_ _%obj94061%_ _%id94062%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id94062%_))
              (let ((_%id94066%_ _%id94062%_))
                (declare (not safe))
                (__mixin-find-method _%mixins94060%_ _%obj94061%_ _%id94066%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@906.37-906.39"
                 'contract:
                 'symbol?
                 'value:
                 _%id94062%_)
                '#!void)))))
    (define __mixin-find-method
      (lambda (_%mixins94042%_ _%obj94043%_ _%id94044%_)
        (let ()
          (let* ((_%id94047%_ _%id94044%_)
                 (__tmp98289
                  (lambda (_%g9405594057%_)
                    (let ()
                      (declare (not safe))
                      (direct-method-ref
                       _%g9405594057%_
                       _%obj94043%_
                       _%id94047%_)))))
            (declare (not safe))
            (__ormap1 __tmp98289 _%mixins94042%_)))))
    (define direct-method-ref
      (lambda (_%klass94016%_ _%obj94017%_ _%id94018%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94016%_ 'class))
              (let ((_%klass94022%_ _%klass94016%_))
                (if (let () (declare (not safe)) (symbol? _%id94018%_))
                    (let ((_%id94032%_ _%id94018%_))
                      (declare (not safe))
                      (__direct-method-ref
                       _%klass94022%_
                       _%obj94017%_
                       _%id94032%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@909.47-909.49"
                       'contract:
                       'symbol?
                       'value:
                       _%id94018%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@909.26-909.31"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94016%_)
                '#!void)))))
    (define __direct-method-ref
      (lambda (_%klass93970%_ _%obj93971%_ _%id93972%_)
        (let ()
          (let* ((_%klass93975%_ _%klass93970%_) (_%id93983%_ _%id93972%_))
            (letrec ((_%metaclass-resolve-method93992%_
                      (lambda ()
                        (let ((__method98168
                               (let ()
                                 (declare (not safe))
                                 (__method-ref
                                  _%klass93975%_
                                  'direct-method-ref))))
                          (if __method98168
                              (__method98168
                               _%klass93975%_
                               _%obj93971%_
                               _%id93983%_)
                              (error '"Missing method"
                                     _%klass93975%_
                                     'direct-method-ref)))))
                     (_%metaclass-resolve-method!93993%_
                      (lambda ()
                        (let ((_%method94013%_
                               (let ()
                                 (declare (not safe))
                                 (_%metaclass-resolve-method93992%_))))
                          (let ((__tmp98291
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass93975%_
                                    '11
                                    '#f
                                    '#f)))
                                (__tmp98290
                                 (if _%method94013%_ 'resolved 'unknown)))
                            (declare (not safe))
                            (symbolic-table-set!
                             __tmp98291
                             _%id93983%_
                             __tmp98290))
                          _%method94013%_))))
              (let ((_%$e93995%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass93975%_
                        '11
                        '#f
                        '#f))))
                (if _%$e93995%_
                    ((lambda (_%ht93998%_)
                       (let ((_%method94000%_
                              (let ()
                                (declare (not safe))
                                (symbolic-table-ref
                                 _%ht93998%_
                                 _%id93983%_
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (procedure? _%method94000%_))
                             (let () _%method94000%_)
                             (if (let ()
                                   (declare (not safe))
                                   (__class-type-metaclass? _%klass93975%_))
                                 (let ((_%$e94004%_ _%method94000%_))
                                   (if (eq? 'resolved _%$e94004%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%metaclass-resolve-method93992%_))
                                       (if (eq? 'unknown _%$e94004%_)
                                           '#f
                                           (let ()
                                             (declare (not safe))
                                             (_%metaclass-resolve-method!93993%_)))))
                                 (let () '#f)))))
                     _%$e93995%_)
                    (if (let ()
                          (declare (not safe))
                          (__class-type-metaclass? _%klass93975%_))
                        (let ((_%tab94009%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0))))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _%klass93975%_
                             _%tab94009%_
                             '11
                             '#f
                             '#f))
                          (let ()
                            (declare (not safe))
                            (_%metaclass-resolve-method!93993%_)))
                        (let () '#f)))))))))
    (define mixin-method-ref
      (lambda (_%klass93944%_ _%obj93945%_ _%id93946%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93944%_ 'class))
              (let ((_%klass93950%_ _%klass93944%_))
                (if (let () (declare (not safe)) (symbol? _%id93946%_))
                    (let ((_%id93960%_ _%id93946%_))
                      (declare (not safe))
                      (__mixin-method-ref
                       _%klass93950%_
                       _%obj93945%_
                       _%id93960%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@939.46-939.48"
                       'contract:
                       'symbol?
                       'value:
                       _%id93946%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@939.25-939.30"
                 'contract:
                 'class-type?
                 'value:
                 _%klass93944%_)
                '#!void)))))
    (define __mixin-method-ref
      (lambda (_%klass93922%_ _%obj93923%_ _%id93924%_)
        (let ((_%klass93927%_ _%klass93922%_))
          (let* ((_%id93935%_ _%id93924%_)
                 (__tmp98292
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%klass93927%_ '6 '#f '#f))))
            (declare (not safe))
            (__mixin-find-method __tmp98292 _%obj93923%_ _%id93935%_)))))
    (define bind-method!__%
      (lambda (_%klass93881%_ _%id93882%_ _%proc93883%_ _%rebind?93884%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93882%_))
              (let ((_%id93888%_ _%id93882%_))
                (if (let () (declare (not safe)) (procedure? _%proc93883%_))
                    (let ((_%proc93898%_ _%proc93883%_))
                      (declare (not safe))
                      (__bind-method!__%
                       _%klass93881%_
                       _%id93888%_
                       _%proc93898%_
                       _%rebind?93884%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@942.42-942.46"
                       'contract:
                       'procedure?
                       'value:
                       _%proc93883%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@942.27-942.29"
                 'contract:
                 'symbol?
                 'value:
                 _%id93882%_)
                '#!void)))))
    (define bind-method!__0
      (lambda (_%klass93911%_ _%id93912%_ _%proc93913%_)
        (let ((_%rebind?93915%_ '#f))
          (declare (not safe))
          (bind-method!__%
           _%klass93911%_
           _%id93912%_
           _%proc93913%_
           _%rebind?93915%_))))
    (define bind-method!
      (lambda _g98294_
        (let ((_g98293_ (let () (declare (not safe)) (##length _g98294_))))
          (cond ((let () (declare (not safe)) (##fx= _g98293_ 3))
                 (apply (lambda (_%klass93911%_ _%id93912%_ _%proc93913%_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _%klass93911%_
                             _%id93912%_
                             _%proc93913%_)))
                        _g98294_))
                ((let () (declare (not safe)) (##fx= _g98293_ 4))
                 (apply (lambda (_%klass93917%_
                                 _%id93918%_
                                 _%proc93919%_
                                 _%rebind?93920%_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _%klass93917%_
                             _%id93918%_
                             _%proc93919%_
                             _%rebind?93920%_)))
                        _g98294_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g98294_))))))
    (define __bind-method!__%
      (lambda (_%klass93832%_ _%id93833%_ _%proc93834%_ _%rebind?93835%_)
        (let ()
          (let* ((_%id93838%_ _%id93833%_) (_%proc93846%_ _%proc93834%_))
            (letrec ((_%bind!93855%_
                      (lambda (_%ht93864%_)
                        (if (and (let ()
                                   (declare (not safe))
                                   (not _%rebind?93835%_))
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%ht93864%_
                                    _%id93838%_
                                    '#f)))
                            (error '"method already bound"
                                   'class:
                                   _%klass93832%_
                                   'method:
                                   _%id93838%_)
                            (begin
                              (let ()
                                (declare (not safe))
                                (symbolic-table-set!
                                 _%ht93864%_
                                 _%id93838%_
                                 _%proc93846%_))
                              '#!void)))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass93832%_ 'class))
                  (let ((_%ht93858%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass93832%_
                            '11
                            '#f
                            '#f))))
                    (if _%ht93858%_
                        (let ()
                          (declare (not safe))
                          (_%bind!93855%_ _%ht93858%_))
                        (let ((_%ht93860%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0))))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _%klass93832%_
                             _%ht93860%_
                             '11
                             '#f
                             '#f))
                          (let ()
                            (declare (not safe))
                            (_%bind!93855%_ _%ht93860%_)))))
                  (if (let () (declare (not safe)) (##type? _%klass93832%_))
                      (let ((__tmp98295
                             (let ()
                               (declare (not safe))
                               (__shadow-class _%klass93832%_))))
                        (declare (not safe))
                        (__bind-method!
                         __tmp98295
                         _%id93838%_
                         _%proc93846%_
                         _%rebind?93835%_))
                      (let ()
                        (error '"bad class; expected class or builtin type"
                               _%klass93832%_)))))))))
    (define __bind-method!__0
      (lambda (_%klass93869%_ _%id93870%_ _%proc93871%_)
        (let ((_%rebind?93873%_ '#f))
          (declare (not safe))
          (__bind-method!__%
           _%klass93869%_
           _%id93870%_
           _%proc93871%_
           _%rebind?93873%_))))
    (define __bind-method!
      (lambda _g98297_
        (let ((_g98296_ (let () (declare (not safe)) (##length _g98297_))))
          (cond ((let () (declare (not safe)) (##fx= _g98296_ 3))
                 (apply (lambda (_%klass93869%_ _%id93870%_ _%proc93871%_)
                          (let ()
                            (declare (not safe))
                            (__bind-method!__0
                             _%klass93869%_
                             _%id93870%_
                             _%proc93871%_)))
                        _g98297_))
                ((let () (declare (not safe)) (##fx= _g98296_ 4))
                 (apply (lambda (_%klass93875%_
                                 _%id93876%_
                                 _%proc93877%_
                                 _%rebind?93878%_)
                          (let ()
                            (declare (not safe))
                            (__bind-method!__%
                             _%klass93875%_
                             _%id93876%_
                             _%proc93877%_
                             _%rebind?93878%_)))
                        _g98297_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g98297_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint93812%_ _%seed93814%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint93812%_
           procedure-hash
           eq?
           _%seed93814%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint93820%_ '#f) (_%seed93822%_ '0))
          (declare (not safe))
          (make-method-specializer-table__%
           _%size-hint93820%_
           _%seed93822%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint93824%_)
        (let ((_%seed93826%_ '0))
          (declare (not safe))
          (make-method-specializer-table__%
           _%size-hint93824%_
           _%seed93826%_))))
    (define make-method-specializer-table
      (lambda _g98299_
        (let ((_g98298_ (let () (declare (not safe)) (##length _g98299_))))
          (cond ((let () (declare (not safe)) (##fx= _g98298_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__0)))
                        _g98299_))
                ((let () (declare (not safe)) (##fx= _g98298_ 1))
                 (apply (lambda (_%size-hint93824%_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__1
                             _%size-hint93824%_)))
                        _g98299_))
                ((let () (declare (not safe)) (##fx= _g98298_ 2))
                 (apply (lambda (_%size-hint93828%_ _%seed93829%_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__%
                             _%size-hint93828%_
                             _%seed93829%_)))
                        _g98299_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g98299_))))))
    (define method-specializer-table-ref
      (lambda (_%tab93765%_ _%key93766%_ _%default93767%_)
        (let ((_%table93769%_
               (let () (declare (not safe)) (&raw-table-table _%tab93765%_)))
              (_%seed93770%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93765%_))))
          (let* ((_%h93772%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93766%_))
                         _%seed93770%_))
                 (_%size93775%_ (vector-length _%table93769%_))
                 (_%entries93778%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93775%_ '2)))
                 (_%start93781%_
                  (let ((__tmp98300
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93772%_ _%entries93778%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98300 '1))))
            (let _%loop93785%_ ((_%probe93788%_ _%start93781%_)
                                (_%i93790%_ '1)
                                (_%deleted93792%_ '#f))
              (let ((_%k93795%_ (vector-ref _%table93769%_ _%probe93788%_)))
                (if (eq? _%k93795%_ (macro-unused-obj))
                    (let () _%default93767%_)
                    (if (eq? _%k93795%_ (macro-deleted-obj))
                        (let ((__tmp98303
                               (let ((_%next-probe93800%_
                                      (fx+ _%start93781%_
                                           _%i93790%_
                                           (fx* _%i93790%_ _%i93790%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93800%_
                                  _%size93775%_)))
                              (__tmp98302
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93790%_ '1)))
                              (__tmp98301
                               (let ((_%$e93803%_ _%deleted93792%_))
                                 (if _%$e93803%_ _%$e93803%_ _%probe93788%_))))
                          (declare (not safe))
                          (_%loop93785%_ __tmp98303 __tmp98302 __tmp98301))
                        (if (eq? _%key93766%_ _%k93795%_)
                            (let ()
                              (vector-ref
                               _%table93769%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93788%_ '1))))
                            (let ((__tmp98305
                                   (let ((_%next-probe93808%_
                                          (fx+ _%start93781%_
                                               _%i93790%_
                                               (fx* _%i93790%_ _%i93790%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93808%_
                                      _%size93775%_)))
                                  (__tmp98304
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93790%_ '1))))
                              (declare (not safe))
                              (_%loop93785%_
                               __tmp98305
                               __tmp98304
                               _%deleted93792%_)))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab93761%_ _%key93762%_ _%value93763%_)
        (if (let ((__tmp98308
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93761%_)))
                  (__tmp98306
                   (let ((__tmp98307
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93761%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp98307 '4))))
              (declare (not safe))
              (##fx< __tmp98308 __tmp98306))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93761%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-set!
           _%tab93761%_
           _%key93762%_
           _%value93763%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab93712%_ _%key93713%_ _%value93714%_)
        (let ((_%table93717%_
               (let () (declare (not safe)) (&raw-table-table _%tab93712%_)))
              (_%seed93718%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93712%_))))
          (let* ((_%h93720%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93713%_))
                         _%seed93718%_))
                 (_%size93723%_ (vector-length _%table93717%_))
                 (_%entries93726%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93723%_ '2)))
                 (_%start93729%_
                  (let ((__tmp98309
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93720%_ _%entries93726%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98309 '1))))
            (let _%loop93733%_ ((_%probe93736%_ _%start93729%_)
                                (_%i93738%_ '1)
                                (_%deleted93740%_ '#f))
              (let ((_%k93743%_ (vector-ref _%table93717%_ _%probe93736%_)))
                (if (eq? _%k93743%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted93740%_
                          (begin
                            (vector-set!
                             _%table93717%_
                             _%deleted93740%_
                             _%key93713%_)
                            (vector-set!
                             _%table93717%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted93740%_ '1))
                             _%value93714%_)
                            ((lambda ()
                               (let ((__tmp98310
                                      (let ((__tmp98311
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93712%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98311 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93712%_
                                  __tmp98310)))))
                          (begin
                            (vector-set!
                             _%table93717%_
                             _%probe93736%_
                             _%key93713%_)
                            (vector-set!
                             _%table93717%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93736%_ '1))
                             _%value93714%_)
                            ((lambda ()
                               (let ((__tmp98312
                                      (let ((__tmp98313
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab93712%_))))
                                        (declare (not safe))
                                        (##fx- __tmp98313 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab93712%_
                                  __tmp98312))
                               (let ((__tmp98314
                                      (let ((__tmp98315
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93712%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98315 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93712%_
                                  __tmp98314)))))))
                    (if (eq? _%k93743%_ (macro-deleted-obj))
                        (let ((__tmp98318
                               (let ((_%next-probe93750%_
                                      (fx+ _%start93729%_
                                           _%i93738%_
                                           (fx* _%i93738%_ _%i93738%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93750%_
                                  _%size93723%_)))
                              (__tmp98317
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93738%_ '1)))
                              (__tmp98316
                               (let ((_%$e93753%_ _%deleted93740%_))
                                 (if _%$e93753%_ _%$e93753%_ _%probe93736%_))))
                          (declare (not safe))
                          (_%loop93733%_ __tmp98318 __tmp98317 __tmp98316))
                        (if (eq? _%key93713%_ _%k93743%_)
                            (let ()
                              (vector-set!
                               _%table93717%_
                               _%probe93736%_
                               _%key93713%_)
                              (vector-set!
                               _%table93717%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93736%_ '1))
                               _%value93714%_))
                            (let ((__tmp98320
                                   (let ((_%next-probe93758%_
                                          (fx+ _%start93729%_
                                               _%i93738%_
                                               (fx* _%i93738%_ _%i93738%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93758%_
                                      _%size93723%_)))
                                  (__tmp98319
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93738%_ '1))))
                              (declare (not safe))
                              (_%loop93733%_
                               __tmp98320
                               __tmp98319
                               _%deleted93740%_)))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab93707%_
               _%key93708%_
               _%method-specializer-table-update!93709%_
               _%default93710%_)
        (if (let ((__tmp98323
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93707%_)))
                  (__tmp98321
                   (let ((__tmp98322
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93707%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp98322 '4))))
              (declare (not safe))
              (##fx< __tmp98323 __tmp98321))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93707%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-update!
           _%tab93707%_
           _%key93708%_
           _%method-specializer-table-update!93709%_
           _%default93710%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab93657%_
               _%key93658%_
               _%method-specializer-table-update!93659%_
               _%default93660%_)
        (let ((_%table93663%_
               (let () (declare (not safe)) (&raw-table-table _%tab93657%_)))
              (_%seed93664%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93657%_))))
          (let* ((_%h93666%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93658%_))
                         _%seed93664%_))
                 (_%size93669%_ (vector-length _%table93663%_))
                 (_%entries93672%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93669%_ '2)))
                 (_%start93675%_
                  (let ((__tmp98324
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93666%_ _%entries93672%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98324 '1))))
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
                             _%key93658%_)
                            (vector-set!
                             _%table93663%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted93686%_ '1))
                             (_%method-specializer-table-update!93659%_
                              _%default93660%_))
                            ((lambda ()
                               (let ((__tmp98325
                                      (let ((__tmp98326
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93657%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98326 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93657%_
                                  __tmp98325)))))
                          (begin
                            (vector-set!
                             _%table93663%_
                             _%probe93682%_
                             _%key93658%_)
                            (vector-set!
                             _%table93663%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93682%_ '1))
                             (_%method-specializer-table-update!93659%_
                              _%default93660%_))
                            ((lambda ()
                               (let ((__tmp98327
                                      (let ((__tmp98328
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab93657%_))))
                                        (declare (not safe))
                                        (##fx- __tmp98328 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab93657%_
                                  __tmp98327))
                               (let ((__tmp98329
                                      (let ((__tmp98330
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93657%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98330 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93657%_
                                  __tmp98329)))))))
                    (if (eq? _%k93689%_ (macro-deleted-obj))
                        (let ((__tmp98333
                               (let ((_%next-probe93696%_
                                      (fx+ _%start93675%_
                                           _%i93684%_
                                           (fx* _%i93684%_ _%i93684%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93696%_
                                  _%size93669%_)))
                              (__tmp98332
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93684%_ '1)))
                              (__tmp98331
                               (let ((_%$e93699%_ _%deleted93686%_))
                                 (if _%$e93699%_ _%$e93699%_ _%probe93682%_))))
                          (declare (not safe))
                          (_%loop93679%_ __tmp98333 __tmp98332 __tmp98331))
                        (if (eq? _%key93658%_ _%k93689%_)
                            (let ()
                              (vector-set!
                               _%table93663%_
                               _%probe93682%_
                               _%key93658%_)
                              (vector-set!
                               _%table93663%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93682%_ '1))
                               (_%method-specializer-table-update!93659%_
                                (vector-ref
                                 _%table93663%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe93682%_ '1))))))
                            (let ((__tmp98335
                                   (let ((_%next-probe93704%_
                                          (fx+ _%start93675%_
                                               _%i93684%_
                                               (fx* _%i93684%_ _%i93684%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93704%_
                                      _%size93669%_)))
                                  (__tmp98334
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93684%_ '1))))
                              (declare (not safe))
                              (_%loop93679%_
                               __tmp98335
                               __tmp98334
                               _%deleted93686%_)))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab93612%_ _%key93614%_)
        (let ((_%table93617%_
               (let () (declare (not safe)) (&raw-table-table _%tab93612%_)))
              (_%seed93619%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93612%_))))
          (let* ((_%h93622%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93614%_))
                         _%seed93619%_))
                 (_%size93625%_ (vector-length _%table93617%_))
                 (_%entries93628%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93625%_ '2)))
                 (_%start93631%_
                  (let ((__tmp98336
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93622%_ _%entries93628%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98336 '1))))
            (let _%loop93635%_ ((_%probe93638%_ _%start93631%_)
                                (_%i93640%_ '1))
              (let ((_%k93643%_ (vector-ref _%table93617%_ _%probe93638%_)))
                (if (eq? _%k93643%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k93643%_ (macro-deleted-obj))
                        (let ((__tmp98338
                               (let ((_%next-probe93648%_
                                      (fx+ _%start93631%_
                                           _%i93640%_
                                           (fx* _%i93640%_ _%i93640%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93648%_
                                  _%size93625%_)))
                              (__tmp98337
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93640%_ '1))))
                          (declare (not safe))
                          (_%loop93635%_ __tmp98338 __tmp98337))
                        (if (eq? _%key93614%_ _%k93643%_)
                            (let ()
                              (vector-set!
                               _%table93617%_
                               _%probe93638%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93617%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93638%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp98339
                                        (let ((__tmp98340
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab93612%_))))
                                          (declare (not safe))
                                          (##fx- __tmp98340 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab93612%_
                                    __tmp98339)))))
                            (let ((__tmp98342
                                   (let ((_%next-probe93654%_
                                          (fx+ _%start93631%_
                                               _%i93640%_
                                               (fx* _%i93640%_ _%i93640%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93654%_
                                      _%size93625%_)))
                                  (__tmp98341
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93640%_ '1))))
                              (declare (not safe))
                              (_%loop93635%_ __tmp98342 __tmp98341)))))))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-method-specializer-table__% '#f '0)))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc93603%_ _%specializer93604%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93608%_ ()
            (if (let ((__tmp98343
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp98343 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again93608%_))))))
        (let ()
          (declare (not safe))
          (method-specializer-table-set!
           __method-specializers
           _%method-proc93603%_
           _%specializer93604%_))
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc93593%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93597%_ ()
            (if (let ((__tmp98344
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp98344 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again93597%_))))))
        (let ((_%specializer93601%_
               (let ()
                 (declare (not safe))
                 (method-specializer-table-ref
                  __method-specializers
                  _%proc93593%_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer93601%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass93591%_)
        (let ((__tmp98345
               (let () (declare (not safe)) (##type-id _%klass93591%_))))
          (declare (not safe))
          (symbolic-hash __tmp98345))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint93572%_ _%seed93574%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint93572%_
           __class-specializer-hash-key
           eq?
           _%seed93574%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint93580%_ '#f) (_%seed93582%_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _%size-hint93580%_ _%seed93582%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint93584%_)
        (let ((_%seed93586%_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _%size-hint93584%_ _%seed93586%_))))
    (define make-class-specializer-table
      (lambda _g98347_
        (let ((_g98346_ (let () (declare (not safe)) (##length _g98347_))))
          (cond ((let () (declare (not safe)) (##fx= _g98346_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g98347_))
                ((let () (declare (not safe)) (##fx= _g98346_ 1))
                 (apply (lambda (_%size-hint93584%_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _%size-hint93584%_)))
                        _g98347_))
                ((let () (declare (not safe)) (##fx= _g98346_ 2))
                 (apply (lambda (_%size-hint93588%_ _%seed93589%_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _%size-hint93588%_
                             _%seed93589%_)))
                        _g98347_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g98347_))))))
    (define class-specializer-table-ref
      (lambda (_%tab93525%_ _%key93526%_ _%default93527%_)
        (let ((_%table93529%_
               (let () (declare (not safe)) (&raw-table-table _%tab93525%_)))
              (_%seed93530%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93525%_))))
          (let* ((_%h93532%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key93526%_))
                         _%seed93530%_))
                 (_%size93535%_ (vector-length _%table93529%_))
                 (_%entries93538%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93535%_ '2)))
                 (_%start93541%_
                  (let ((__tmp98348
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93532%_ _%entries93538%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98348 '1))))
            (let _%loop93545%_ ((_%probe93548%_ _%start93541%_)
                                (_%i93550%_ '1)
                                (_%deleted93552%_ '#f))
              (let ((_%k93555%_ (vector-ref _%table93529%_ _%probe93548%_)))
                (if (eq? _%k93555%_ (macro-unused-obj))
                    (let () _%default93527%_)
                    (if (eq? _%k93555%_ (macro-deleted-obj))
                        (let ((__tmp98351
                               (let ((_%next-probe93560%_
                                      (fx+ _%start93541%_
                                           _%i93550%_
                                           (fx* _%i93550%_ _%i93550%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93560%_
                                  _%size93535%_)))
                              (__tmp98350
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93550%_ '1)))
                              (__tmp98349
                               (let ((_%$e93563%_ _%deleted93552%_))
                                 (if _%$e93563%_ _%$e93563%_ _%probe93548%_))))
                          (declare (not safe))
                          (_%loop93545%_ __tmp98351 __tmp98350 __tmp98349))
                        (if (eq? _%key93526%_ _%k93555%_)
                            (let ()
                              (vector-ref
                               _%table93529%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93548%_ '1))))
                            (let ((__tmp98353
                                   (let ((_%next-probe93568%_
                                          (fx+ _%start93541%_
                                               _%i93550%_
                                               (fx* _%i93550%_ _%i93550%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93568%_
                                      _%size93535%_)))
                                  (__tmp98352
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93550%_ '1))))
                              (declare (not safe))
                              (_%loop93545%_
                               __tmp98353
                               __tmp98352
                               _%deleted93552%_)))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab93521%_ _%key93522%_ _%value93523%_)
        (if (let ((__tmp98356
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93521%_)))
                  (__tmp98354
                   (let ((__tmp98355
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93521%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp98355 '4))))
              (declare (not safe))
              (##fx< __tmp98356 __tmp98354))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93521%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-set!
           _%tab93521%_
           _%key93522%_
           _%value93523%_))))
    (define __class-specializer-table-set!
      (lambda (_%tab93472%_ _%key93473%_ _%value93474%_)
        (let ((_%table93477%_
               (let () (declare (not safe)) (&raw-table-table _%tab93472%_)))
              (_%seed93478%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93472%_))))
          (let* ((_%h93480%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key93473%_))
                         _%seed93478%_))
                 (_%size93483%_ (vector-length _%table93477%_))
                 (_%entries93486%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93483%_ '2)))
                 (_%start93489%_
                  (let ((__tmp98357
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93480%_ _%entries93486%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98357 '1))))
            (let _%loop93493%_ ((_%probe93496%_ _%start93489%_)
                                (_%i93498%_ '1)
                                (_%deleted93500%_ '#f))
              (let ((_%k93503%_ (vector-ref _%table93477%_ _%probe93496%_)))
                (if (eq? _%k93503%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted93500%_
                          (begin
                            (vector-set!
                             _%table93477%_
                             _%deleted93500%_
                             _%key93473%_)
                            (vector-set!
                             _%table93477%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted93500%_ '1))
                             _%value93474%_)
                            ((lambda ()
                               (let ((__tmp98358
                                      (let ((__tmp98359
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93472%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98359 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93472%_
                                  __tmp98358)))))
                          (begin
                            (vector-set!
                             _%table93477%_
                             _%probe93496%_
                             _%key93473%_)
                            (vector-set!
                             _%table93477%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93496%_ '1))
                             _%value93474%_)
                            ((lambda ()
                               (let ((__tmp98360
                                      (let ((__tmp98361
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab93472%_))))
                                        (declare (not safe))
                                        (##fx- __tmp98361 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab93472%_
                                  __tmp98360))
                               (let ((__tmp98362
                                      (let ((__tmp98363
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93472%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98363 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93472%_
                                  __tmp98362)))))))
                    (if (eq? _%k93503%_ (macro-deleted-obj))
                        (let ((__tmp98366
                               (let ((_%next-probe93510%_
                                      (fx+ _%start93489%_
                                           _%i93498%_
                                           (fx* _%i93498%_ _%i93498%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93510%_
                                  _%size93483%_)))
                              (__tmp98365
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93498%_ '1)))
                              (__tmp98364
                               (let ((_%$e93513%_ _%deleted93500%_))
                                 (if _%$e93513%_ _%$e93513%_ _%probe93496%_))))
                          (declare (not safe))
                          (_%loop93493%_ __tmp98366 __tmp98365 __tmp98364))
                        (if (eq? _%key93473%_ _%k93503%_)
                            (let ()
                              (vector-set!
                               _%table93477%_
                               _%probe93496%_
                               _%key93473%_)
                              (vector-set!
                               _%table93477%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93496%_ '1))
                               _%value93474%_))
                            (let ((__tmp98368
                                   (let ((_%next-probe93518%_
                                          (fx+ _%start93489%_
                                               _%i93498%_
                                               (fx* _%i93498%_ _%i93498%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93518%_
                                      _%size93483%_)))
                                  (__tmp98367
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93498%_ '1))))
                              (declare (not safe))
                              (_%loop93493%_
                               __tmp98368
                               __tmp98367
                               _%deleted93500%_)))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab93467%_
               _%key93468%_
               _%class-specializer-table-update!93469%_
               _%default93470%_)
        (if (let ((__tmp98371
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93467%_)))
                  (__tmp98369
                   (let ((__tmp98370
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93467%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp98370 '4))))
              (declare (not safe))
              (##fx< __tmp98371 __tmp98369))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93467%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-update!
           _%tab93467%_
           _%key93468%_
           _%class-specializer-table-update!93469%_
           _%default93470%_))))
    (define __class-specializer-table-update!
      (lambda (_%tab93417%_
               _%key93418%_
               _%class-specializer-table-update!93419%_
               _%default93420%_)
        (let ((_%table93423%_
               (let () (declare (not safe)) (&raw-table-table _%tab93417%_)))
              (_%seed93424%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93417%_))))
          (let* ((_%h93426%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key93418%_))
                         _%seed93424%_))
                 (_%size93429%_ (vector-length _%table93423%_))
                 (_%entries93432%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93429%_ '2)))
                 (_%start93435%_
                  (let ((__tmp98372
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93426%_ _%entries93432%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98372 '1))))
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
                             _%key93418%_)
                            (vector-set!
                             _%table93423%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted93446%_ '1))
                             (_%class-specializer-table-update!93419%_
                              _%default93420%_))
                            ((lambda ()
                               (let ((__tmp98373
                                      (let ((__tmp98374
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93417%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98374 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93417%_
                                  __tmp98373)))))
                          (begin
                            (vector-set!
                             _%table93423%_
                             _%probe93442%_
                             _%key93418%_)
                            (vector-set!
                             _%table93423%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93442%_ '1))
                             (_%class-specializer-table-update!93419%_
                              _%default93420%_))
                            ((lambda ()
                               (let ((__tmp98375
                                      (let ((__tmp98376
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab93417%_))))
                                        (declare (not safe))
                                        (##fx- __tmp98376 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab93417%_
                                  __tmp98375))
                               (let ((__tmp98377
                                      (let ((__tmp98378
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93417%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98378 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93417%_
                                  __tmp98377)))))))
                    (if (eq? _%k93449%_ (macro-deleted-obj))
                        (let ((__tmp98381
                               (let ((_%next-probe93456%_
                                      (fx+ _%start93435%_
                                           _%i93444%_
                                           (fx* _%i93444%_ _%i93444%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93456%_
                                  _%size93429%_)))
                              (__tmp98380
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93444%_ '1)))
                              (__tmp98379
                               (let ((_%$e93459%_ _%deleted93446%_))
                                 (if _%$e93459%_ _%$e93459%_ _%probe93442%_))))
                          (declare (not safe))
                          (_%loop93439%_ __tmp98381 __tmp98380 __tmp98379))
                        (if (eq? _%key93418%_ _%k93449%_)
                            (let ()
                              (vector-set!
                               _%table93423%_
                               _%probe93442%_
                               _%key93418%_)
                              (vector-set!
                               _%table93423%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93442%_ '1))
                               (_%class-specializer-table-update!93419%_
                                (vector-ref
                                 _%table93423%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe93442%_ '1))))))
                            (let ((__tmp98383
                                   (let ((_%next-probe93464%_
                                          (fx+ _%start93435%_
                                               _%i93444%_
                                               (fx* _%i93444%_ _%i93444%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93464%_
                                      _%size93429%_)))
                                  (__tmp98382
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93444%_ '1))))
                              (declare (not safe))
                              (_%loop93439%_
                               __tmp98383
                               __tmp98382
                               _%deleted93446%_)))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab93372%_ _%key93374%_)
        (let ((_%table93377%_
               (let () (declare (not safe)) (&raw-table-table _%tab93372%_)))
              (_%seed93379%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93372%_))))
          (let* ((_%h93382%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key93374%_))
                         _%seed93379%_))
                 (_%size93385%_ (vector-length _%table93377%_))
                 (_%entries93388%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93385%_ '2)))
                 (_%start93391%_
                  (let ((__tmp98384
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93382%_ _%entries93388%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98384 '1))))
            (let _%loop93395%_ ((_%probe93398%_ _%start93391%_)
                                (_%i93400%_ '1))
              (let ((_%k93403%_ (vector-ref _%table93377%_ _%probe93398%_)))
                (if (eq? _%k93403%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k93403%_ (macro-deleted-obj))
                        (let ((__tmp98386
                               (let ((_%next-probe93408%_
                                      (fx+ _%start93391%_
                                           _%i93400%_
                                           (fx* _%i93400%_ _%i93400%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93408%_
                                  _%size93385%_)))
                              (__tmp98385
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93400%_ '1))))
                          (declare (not safe))
                          (_%loop93395%_ __tmp98386 __tmp98385))
                        (if (eq? _%key93374%_ _%k93403%_)
                            (let ()
                              (vector-set!
                               _%table93377%_
                               _%probe93398%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93377%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93398%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp98387
                                        (let ((__tmp98388
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab93372%_))))
                                          (declare (not safe))
                                          (##fx- __tmp98388 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab93372%_
                                    __tmp98387)))))
                            (let ((__tmp98390
                                   (let ((_%next-probe93414%_
                                          (fx+ _%start93391%_
                                               _%i93400%_
                                               (fx* _%i93400%_ _%i93400%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93414%_
                                      _%size93385%_)))
                                  (__tmp98389
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93400%_ '1))))
                              (declare (not safe))
                              (_%loop93395%_ __tmp98390 __tmp98389)))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers
      (let () (declare (not safe)) (make-class-specializer-table__% '#f '0)))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass93358%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93358%_ 'class))
              (let ((_%klass93362%_ _%klass93358%_))
                (declare (not safe))
                (__specialize-class _%klass93362%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@1017.25-1017.30"
                 'contract:
                 'class-type?
                 'value:
                 _%klass93358%_)
                '#!void)))))
    (define __specialize-class
      (lambda (_%klass93340%_)
        (let ()
          (let* ((_%klass93343%_ _%klass93340%_)
                 (_%$e93352%_
                  (let ()
                    (declare (not safe))
                    (__lookup-class-specializer _%klass93343%_))))
            (if _%$e93352%_
                _%$e93352%_
                (let ((_%method-table93356%_
                       (let ()
                         (declare (not safe))
                         (___specialize-class _%klass93343%_))))
                  (let ()
                    (declare (not safe))
                    (__bind-class-specializer!
                     _%klass93343%_
                     _%method-table93356%_))
                  _%method-table93356%_))))))
    (define __lookup-class-specializer
      (lambda (_%klass93330%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93334%_ ()
            (if (let ((__tmp98391
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp98391 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again93334%_))))))
        (let ((_%method-table93338%_
               (let ()
                 (declare (not safe))
                 (class-specializer-table-ref
                  __class-specializers
                  _%klass93330%_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table93338%_)))
    (define __bind-class-specializer!
      (lambda (_%klass93321%_ _%method-table93322%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93326%_ ()
            (if (let ((__tmp98392
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp98392 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again93326%_))))))
        (let ()
          (declare (not safe))
          (class-specializer-table-set!
           __class-specializers
           _%klass93321%_
           _%method-table93322%_))
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass93305%_
               _%method-table93306%_
               _%method93307%_
               _%proc93308%_)
        (let ((_%$e93310%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table93306%_
                  _%method93307%_
                  '#f))))
          (if _%$e93310%_
              _%$e93310%_
              (let ((_%$e93313%_
                     (let ()
                       (declare (not safe))
                       (__lookup-method-specializer _%proc93308%_))))
                (if _%$e93313%_
                    ((lambda (_%specialize93316%_)
                       (let ((_%specialized-proc93318%_
                              (_%specialize93316%_
                               _%klass93305%_
                               _%method-table93306%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table93306%_
                          _%method93307%_
                          _%specialized-proc93318%_)))
                     _%$e93313%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table93306%_
                       _%method93307%_
                       _%proc93308%_))))))))
    (define ___specialize-class
      (lambda (_%klass93247%_)
        (if (let ((__tmp98393
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of? _%klass93247%_ 'class))))
              (declare (not safe))
              (not __tmp98393))
            (let ()
              (if (let () (declare (not safe)) (##type? _%klass93247%_))
                  (let ((__tmp98394
                         (let ()
                           (declare (not safe))
                           (__shadow-class _%klass93247%_))))
                    (declare (not safe))
                    (__specialize-class __tmp98394))
                  (error '"bad class; cannot specialize" _%klass93247%_)))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _%klass93247%_))
                (let ((__method98169
                       (let ()
                         (declare (not safe))
                         (__method-ref _%klass93247%_ 'specialize-class))))
                  (if __method98169
                      (__method98169 _%klass93247%_)
                      (error '"Missing method"
                             _%klass93247%_
                             'specialize-class)))
                (if (let ((__tmp98395
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass93247%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp98395))
                    (let ()
                      (error '"cannot specialize class that extends metaclass without a metaclass"
                             _%klass93247%_))
                    (let ((_%method-table93253%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop93255%_ ((_%rest93257%_
                                           (let ()
                                             (declare (not safe))
                                             (class-precedence-list
                                              _%klass93247%_))))
                        (let* ((_%rest9325893266%_ _%rest93257%_)
                               (_%else9326093274%_
                                (lambda () _%method-table93253%_))
                               (_%K9326293293%_
                                (lambda (_%rest93277%_ _%xklass93278%_)
                                  (let ((_%xmethod-table9327993281%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass93278%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table9327993281%_
                                        (let* ((_%xmethod-table93284%_
                                                _%xmethod-table9327993281%_)
                                               (__tmp98396
                                                (lambda (_%g9328593288%_
                                                         _%g9328693290%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (__specialize-method
                                                     _%klass93247%_
                                                     _%method-table93253%_
                                                     _%g9328593288%_
                                                     _%g9328693290%_)))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table93284%_
                                           __tmp98396))
                                        '#f))
                                  (let ()
                                    (declare (not safe))
                                    (_%loop93255%_ _%rest93277%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9325893266%_))
                              (let ((_%hd9326393296%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9325893266%_)))
                                    (_%tl9326493298%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9325893266%_))))
                                (let* ((_%xklass93301%_ _%hd9326393296%_)
                                       (_%rest93303%_ _%tl9326493298%_))
                                  (declare (not safe))
                                  (_%K9326293293%_
                                   _%rest93303%_
                                   _%xklass93301%_)))
                              (let ()
                                (declare (not safe))
                                (_%else9326093274%_)))))))))))
    (define seal-class!
      (lambda (_%klass93233%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93233%_ 'class))
              (let ((_%klass93237%_ _%klass93233%_))
                (declare (not safe))
                (__seal-class! _%klass93237%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@1074.20-1074.25"
                 'contract:
                 'class-type?
                 'value:
                 _%klass93233%_)
                '#!void)))))
    (define __seal-class!
      (lambda (_%klass93216%_)
        (let ((_%klass93219%_ _%klass93216%_))
          (if (let ()
                (declare (not safe))
                (__class-type-sealed? _%klass93219%_))
              '#!void
              (begin
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass93219%_))
                    '#!void
                    (error '"cannot seal non-final class" _%klass93219%_))
                (if (let ()
                      (declare (not safe))
                      (__class-type-metaclass? _%klass93219%_))
                    (let ((__method98170
                           (let ()
                             (declare (not safe))
                             (__method-ref _%klass93219%_ 'seal-class!))))
                      (if __method98170
                          (__method98170 _%klass93219%_)
                          (error '"Missing method"
                                 _%klass93219%_
                                 'seal-class!)))
                    (if (let ((__tmp98397
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass93219%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp98397))
                        (let ()
                          (error '"cannot seal class that extends metaclass without a metaclass"
                                 _%klass93219%_))
                        (let ((_%method-table93231%_
                               (let ()
                                 (declare (not safe))
                                 (__specialize-class _%klass93219%_))))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass93219%_
                           _%method-table93231%_
                           '11
                           '#f
                           '#f))))
                (let ()
                  (declare (not safe))
                  (__class-type-seal! _%klass93219%_)))))))
    (define next-method
      (lambda (_%subklass93190%_ _%obj93191%_ _%id93192%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%subklass93190%_ 'class))
              (let ((_%subklass93196%_ _%subklass93190%_))
                (if (let () (declare (not safe)) (symbol? _%id93192%_))
                    (let ((_%id93206%_ _%id93192%_))
                      (declare (not safe))
                      (__next-method
                       _%subklass93196%_
                       _%obj93191%_
                       _%id93206%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@1098.44-1098.46"
                       'contract:
                       'symbol?
                       'value:
                       _%id93192%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@1098.20-1098.28"
                 'contract:
                 'class-type?
                 'value:
                 _%subklass93190%_)
                '#!void)))))
    (define __next-method
      (lambda (_%subklass93127%_ _%obj93128%_ _%id93129%_)
        (let ()
          (let* ((_%subklass93132%_ _%subklass93127%_)
                 (_%id93140%_ _%id93129%_))
            (letrec ((_%find-next-method93149%_
                      (lambda (_%klass93151%_)
                        (let _%lp93153%_ ((_%rest93155%_
                                           (let ()
                                             (declare (not safe))
                                             (class-precedence-list
                                              _%klass93151%_))))
                          (let* ((_%rest9315693164%_ _%rest93155%_)
                                 (_%else9315893172%_ (lambda () '#f))
                                 (_%K9316093178%_
                                  (lambda (_%rest93175%_ _%klass93176%_)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (##type-id _%subklass93132%_))
                                             (let ()
                                               (declare (not safe))
                                               (##type-id _%klass93176%_)))
                                        (let ()
                                          (declare (not safe))
                                          (__mixin-find-method
                                           _%rest93175%_
                                           _%obj93128%_
                                           _%id93140%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%lp93153%_ _%rest93175%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest9315693164%_))
                                (let ((_%hd9316193181%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest9315693164%_)))
                                      (_%tl9316293183%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest9315693164%_))))
                                  (let* ((_%klass93186%_ _%hd9316193181%_)
                                         (_%rest93188%_ _%tl9316293183%_))
                                    (declare (not safe))
                                    (_%K9316093178%_
                                     _%rest93188%_
                                     _%klass93186%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else9315893172%_))))))))
              (let ((__tmp98398
                     (let () (declare (not safe)) (class-of _%obj93128%_))))
                (declare (not safe))
                (_%find-next-method93149%_ __tmp98398)))))))
    (define call-next-method
      (lambda (_%subklass93100%_ _%obj93101%_ _%id93102%_ . _%args93103%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%subklass93100%_ 'class))
              (let ((_%subklass93107%_ _%subklass93100%_))
                (if (let () (declare (not safe)) (symbol? _%id93102%_))
                    (let ((_%id93117%_ _%id93102%_))
                      (declare (not safe))
                      (##apply __call-next-method
                               _%subklass93107%_
                               _%obj93101%_
                               _%id93117%_
                               _%args93103%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@1109.49-1109.51"
                       'contract:
                       'symbol?
                       'value:
                       _%id93102%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@1109.25-1109.33"
                 'contract:
                 'class-type?
                 'value:
                 _%subklass93100%_)
                '#!void)))))
    (define __call-next-method
      (lambda (_%subklass93071%_ _%obj93072%_ _%id93073%_ . _%args93074%_)
        (let ((_%subklass93077%_ _%subklass93071%_))
          (let* ((_%id93085%_ _%id93073%_)
                 (_%$e93094%_
                  (let ()
                    (declare (not safe))
                    (__next-method
                     _%subklass93077%_
                     _%obj93072%_
                     _%id93085%_))))
            (if _%$e93094%_
                ((lambda (_%methodf93097%_)
                   (apply _%methodf93097%_ _%obj93072%_ _%args93074%_))
                 _%$e93094%_)
                (let ()
                  (error '"cannot find next method"
                         'object:
                         _%obj93072%_
                         'method:
                         _%id93085%_)))))))
    (define write-style
      (lambda (_%we93069%_) (macro-writeenv-style _%we93069%_)))
    (define write-object
      (lambda (_%we93060%_ _%obj93061%_)
        (let ((_%$e93063%_
               (let () (declare (not safe)) (__method-ref _%obj93061%_ ':wr))))
          (if _%$e93063%_
              ((lambda (_%method93066%_)
                 (_%method93066%_ _%obj93061%_ _%we93060%_))
               _%$e93063%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we93060%_ _%obj93061%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type92975%_)
        (letrec ((_%shadow-type-id92977%_
                  (lambda (_%type93058%_)
                    (let ((__tmp98399
                           (let ()
                             (declare (not safe))
                             (##type-name _%type93058%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp98399 '"::t"))))
                 (_%shadow-type-name92978%_
                  (lambda (_%type93056%_)
                    (let () (declare (not safe)) (##type-name _%type93056%_))))
                 (_%make-shadow-class92979%_
                  (lambda (_%type93048%_ _%precedence-list93049%_)
                    (let* ((_%super93051%_
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _%precedence-list93049%_))
                                (cons (car _%precedence-list93049%_) '())
                                '()))
                           (_%klass93053%_
                            (let ((__tmp98402
                                   (let ()
                                     (declare (not safe))
                                     (_%shadow-type-id92977%_ _%type93048%_)))
                                  (__tmp98401
                                   (let ()
                                     (declare (not safe))
                                     (##type-name _%type93048%_)))
                                  (__tmp98400
                                   (cons (cons 'struct: '#t)
                                         (cons (cons 'system: '#t)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__type-extensible?
                                                      _%type93048%_))
                                                   '()
                                                   (cons (cons 'final: '#t)
                                                         '()))))))
                              (declare (not safe))
                              (make-class-type
                               __tmp98402
                               __tmp98401
                               _%super93051%_
                               '()
                               __tmp98400
                               '#f))))
                      (let ((__tmp98403
                             (let ()
                               (declare (not safe))
                               (##type-id _%type93048%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp98403
                         _%klass93053%_))
                      _%klass93053%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again92983%_ ()
              (if (let ((__tmp98404
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp98404 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (let () (declare (not safe)) (_%again92983%_))))))
          (let ((_%$e92987%_
                 (let ((__tmp98405
                        (let ()
                          (declare (not safe))
                          (##type-id _%type92975%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp98405 '#f))))
            (if _%$e92987%_
                ((lambda (_%klass92990%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass92990%_)
                 _%$e92987%_)
                (let _%loop92993%_ ((_%super92995%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-super _%type92975%_)))
                                    (_%hierarchy92996%_ '()))
                  (if (let () (declare (not safe)) (not _%super92995%_))
                      (let _%loop92999%_ ((_%rest93001%_ _%hierarchy92996%_)
                                          (_%precedence-list93002%_ '()))
                        (let* ((_%rest9300393011%_ _%rest93001%_)
                               (_%else9300593021%_
                                (lambda ()
                                  (let ((_%klass93019%_
                                         (let ()
                                           (declare (not safe))
                                           (_%make-shadow-class92979%_
                                            _%type92975%_
                                            _%precedence-list93002%_))))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass93019%_)))
                               (_%K9300793035%_
                                (lambda (_%rest93024%_ _%type93025%_)
                                  (let ((_%$e93027%_
                                         (let ((__tmp98406
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type93025%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp98406
                                            '#f))))
                                    (if _%$e93027%_
                                        ((lambda (_%klass93030%_)
                                           (let ((__tmp98407
                                                  (cons _%klass93030%_
                                                        _%precedence-list93002%_)))
                                             (declare (not safe))
                                             (_%loop92999%_
                                              _%rest93024%_
                                              __tmp98407)))
                                         _%$e93027%_)
                                        (let ()
                                          (let* ((_%klass93033%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%make-shadow-class92979%_
                                                     _%type93025%_
                                                     _%precedence-list93002%_)))
                                                 (__tmp98408
                                                  (cons _%klass93033%_
                                                        _%precedence-list93002%_)))
                                            (declare (not safe))
                                            (_%loop92999%_
                                             _%rest93024%_
                                             __tmp98408))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9300393011%_))
                              (let ((_%hd9300893038%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9300393011%_)))
                                    (_%tl9300993040%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9300393011%_))))
                                (let* ((_%type93043%_ _%hd9300893038%_)
                                       (_%rest93045%_ _%tl9300993040%_))
                                  (declare (not safe))
                                  (_%K9300793035%_
                                   _%rest93045%_
                                   _%type93043%_)))
                              (let ()
                                (declare (not safe))
                                (_%else9300593021%_)))))
                      (let ((__tmp98410
                             (let ()
                               (declare (not safe))
                               (##type-super _%super92995%_)))
                            (__tmp98409
                             (cons _%super92995%_ _%hierarchy92996%_)))
                        (declare (not safe))
                        (_%loop92993%_ __tmp98410 __tmp98409)))))))))
    (define class-of
      (lambda (_%obj92948%_)
        (let ()
          (declare (not interrupts-enabled))
          (let ((_%t92952%_
                 (let () (declare (not safe)) (##type _%obj92948%_))))
            (if (fx= _%t92952%_ (macro-type-subtyped))
                (let ((_%st92955%_
                       (let () (declare (not safe)) (##subtype _%obj92948%_))))
                  (if (fx= _%st92955%_ (macro-subtype-structure))
                      (let ((_%klass92958%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj92948%_))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of? _%klass92958%_ 'class))
                            _%klass92958%_
                            (let ()
                              (declare (not safe))
                              (__shadow-class _%klass92958%_))))
                      (if (fx= _%st92955%_ (macro-subtype-boxvalues))
                          (let ()
                            (if (let ((__tmp98411
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length _%obj92948%_))))
                                  (declare (not safe))
                                  (##fx= __tmp98411 '1))
                                (let ()
                                  (declare (not safe))
                                  (__system-class 'box))
                                (let ()
                                  (declare (not safe))
                                  (__system-class 'values))))
                          (let ((_%$e92961%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref __subtype-id _%st92955%_))))
                            (if _%$e92961%_
                                (let ()
                                  (declare (not safe))
                                  (__system-class _%$e92961%_))
                                (let ()
                                  (error '"unknown class"
                                         'subtype:
                                         _%st92955%_
                                         'object:
                                         _%obj92948%_)))))))
                (if (fx= _%t92952%_ (macro-type-mem2))
                    (let () (declare (not safe)) (__system-class 'pair))
                    (if (fx= _%t92952%_ (macro-type-fixnum))
                        (let () (declare (not safe)) (__system-class 'fixnum))
                        (let ()
                          (if (let ()
                                (declare (not safe))
                                (char? _%obj92948%_))
                              (let ()
                                (declare (not safe))
                                (__system-class 'char))
                              (if (eq? _%obj92948%_ '())
                                  (let ()
                                    (declare (not safe))
                                    (__system-class 'null))
                                  (if (eq? _%obj92948%_ '#f)
                                      (let ()
                                        (declare (not safe))
                                        (__system-class 'boolean))
                                      (if (eq? _%obj92948%_ '#t)
                                          (let ()
                                            (declare (not safe))
                                            (__system-class 'boolean))
                                          (if (eq? _%obj92948%_ '#!void)
                                              (let ()
                                                (declare (not safe))
                                                (__system-class 'void))
                                              (if (eq? _%obj92948%_ '#!eof)
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
      (lambda (_%id92942%_)
        (let ((_%$e92944%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id92942%_ '#f))))
          (if _%$e92944%_
              _%$e92944%_
              (let () (error '"unknown system class" _%id92942%_))))))
    (define __make-system-class
      (lambda (_%id92937%_ _%super92938%_)
        (let ((_%klass92940%_
               (let ()
                 (declare (not safe))
                 (make-class-type
                  _%id92937%_
                  _%id92937%_
                  _%super92938%_
                  '()
                  '((system: . #t))
                  '#f))))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id92937%_ _%klass92940%_))
          _%klass92940%_)))))
