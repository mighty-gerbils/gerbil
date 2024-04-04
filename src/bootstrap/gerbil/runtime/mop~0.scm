(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1712256085)
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
      (let ((_%flags96733%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties96734%_ '((direct-slots:) (system: . #t)))
            (_%slot-table96735%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags96733%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table96735%_
           _%properties96734%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots96709%_
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
             (_%slot-vector96711%_ (list->vector (cons '#f _%slots96709%_)))
             (_%slot-table96718%_
              (let ((_%slot-table96713%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp98181
                       (lambda (_%slot96715%_ _%field96716%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table96713%_
                            _%slot96715%_
                            _%field96716%_))
                         (let ((__tmp98182
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot96715%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table96713%_
                            __tmp98182
                            _%field96716%_))))
                      (__tmp98179
                       (let ((__tmp98180
                              (let ()
                                (declare (not safe))
                                (##length _%slots96709%_))))
                         (declare (not safe))
                         (##iota __tmp98180 '1))))
                  (declare (not safe))
                  (##for-each __tmp98181 _%slots96709%_ __tmp98179))
                _%slot-table96713%_))
             (_%flags96720%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields96726%_
              (list->vector
               (let ((__tmp98183
                      (map (lambda (_%g9672196723%_)
                             (list _%g9672196723%_ '5 '#f))
                           (drop _%slots96709%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp98183))))
             (_%properties96728%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots96709%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t96730%_
              (let ((__tmp98184 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags96720%_
                 ##type-type
                 _%fields96726%_
                 __tmp98184
                 _%slot-vector96711%_
                 _%slot-table96718%_
                 _%properties96728%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t96730%_ _%t96730%_))
        _%t96730%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags96705%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties96706%_ '((direct-slots:) (system: . #t)))
            (_%slot-table96707%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp98185 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags96705%_
           '#f
           '#()
           __tmp98185
           '#(#f)
           _%slot-table96707%_
           _%properties96706%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj96703%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj96703%_ 'class))))
    (define class-type=?
      (lambda (_%x96678%_ _%y96679%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%x96678%_ 'class))
              (let ((_%x96683%_ _%x96678%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%y96679%_ 'class))
                    (let ((_%y96693%_ _%y96679%_))
                      (declare (not safe))
                      (__class-type=? _%x96683%_ _%y96693%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                       'contract:
                       'class-type?
                       'value:
                       _%y96679%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
                 'contract:
                 'class-type?
                 'value:
                 _%x96678%_)
                '#!void)))))
    (define __class-type=?
      (lambda (_%x96657%_ _%y96658%_)
        (let ()
          (let* ((_%x96661%_ _%x96657%_) (_%y96669%_ _%y96658%_))
            (eq? (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%x96661%_ '1 '#f '#f))
                 (let ()
                   (declare (not safe))
                   (##unchecked-structure-ref _%y96669%_ '1 '#f '#f)))))))
    (define type-opaque?
      (lambda (_%type96643%_)
        (let ()
          (if (let () (declare (not safe)) (##type? _%type96643%_))
              (let ((_%type96647%_ _%type96643%_))
                (declare (not safe))
                (__type-opaque? _%type96647%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
                 'contract:
                 '##type?
                 'value:
                 _%type96643%_)
                '#!void)))))
    (define __type-opaque?
      (lambda (_%type96629%_)
        (let ()
          (if (let () (declare (not safe)) (##type? _%type96629%_))
              (let ()
                (let* ((_%type96633%_ _%type96629%_)
                       (__tmp98186
                        (let ((__tmp98187
                               (let ()
                                 (declare (not safe))
                                 (##type-flags _%type96633%_))))
                          (declare (not safe))
                          (##fxand __tmp98187 type-flag-opaque))))
                  (declare (not safe))
                  (##fx= __tmp98186 type-flag-opaque)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
                 'contract:
                 '##type?
                 'value:
                 _%type96629%_)
                '#!void)))))
    (define type-extensible?
      (lambda (_%type96615%_)
        (let ()
          (if (let () (declare (not safe)) (##type? _%type96615%_))
              (let ((_%type96619%_ _%type96615%_))
                (declare (not safe))
                (__type-extensible? _%type96619%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
                 'contract:
                 '##type?
                 'value:
                 _%type96615%_)
                '#!void)))))
    (define __type-extensible?
      (lambda (_%type96601%_)
        (let ()
          (if (let () (declare (not safe)) (##type? _%type96601%_))
              (let ()
                (let* ((_%type96605%_ _%type96601%_)
                       (__tmp98188
                        (let ((__tmp98189
                               (let ()
                                 (declare (not safe))
                                 (##type-flags _%type96605%_))))
                          (declare (not safe))
                          (##fxand __tmp98189 type-flag-extensible))))
                  (declare (not safe))
                  (##fx= __tmp98188 type-flag-extensible)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
                 'contract:
                 '##type?
                 'value:
                 _%type96601%_)
                '#!void)))))
    (define class-type-final?
      (lambda (_%type96587%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%type96587%_ 'class))
              (let ((_%type96591%_ _%type96587%_))
                (declare (not safe))
                (__class-type-final? _%type96591%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
                 'contract:
                 'class-type?
                 'value:
                 _%type96587%_)
                '#!void)))))
    (define __class-type-final?
      (lambda (_%type96575%_)
        (let ()
          (let* ((_%type96578%_ _%type96575%_)
                 (__tmp98190
                  (let ((__tmp98191
                         (let ()
                           (declare (not safe))
                           (##type-flags _%type96578%_))))
                    (declare (not safe))
                    (##fxand __tmp98191 type-flag-extensible))))
            (declare (not safe))
            (##fx= __tmp98190 '0)))))
    (define class-type-struct?
      (lambda (_%klass96561%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96561%_ 'class))
              (let ((_%klass96565%_ _%klass96561%_))
                (declare (not safe))
                (__class-type-struct? _%klass96565%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96561%_)
                '#!void)))))
    (define __class-type-struct?
      (lambda (_%klass96549%_)
        (let ()
          (let* ((_%klass96552%_ _%klass96549%_)
                 (__tmp98192
                  (let ((__tmp98193
                         (let ()
                           (declare (not safe))
                           (##type-flags _%klass96552%_))))
                    (declare (not safe))
                    (##fxand __tmp98193 class-type-flag-struct))))
            (declare (not safe))
            (##fx= __tmp98192 class-type-flag-struct)))))
    (define class-type-sealed?
      (lambda (_%klass96535%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96535%_ 'class))
              (let ((_%klass96539%_ _%klass96535%_))
                (declare (not safe))
                (__class-type-sealed? _%klass96539%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96535%_)
                '#!void)))))
    (define __class-type-sealed?
      (lambda (_%klass96523%_)
        (let ()
          (let* ((_%klass96526%_ _%klass96523%_)
                 (__tmp98194
                  (let ((__tmp98195
                         (let ()
                           (declare (not safe))
                           (##type-flags _%klass96526%_))))
                    (declare (not safe))
                    (##fxand __tmp98195 class-type-flag-sealed))))
            (declare (not safe))
            (##fx= __tmp98194 class-type-flag-sealed)))))
    (define class-type-metaclass?
      (lambda (_%klass96509%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96509%_ 'class))
              (let ((_%klass96513%_ _%klass96509%_))
                (declare (not safe))
                (__class-type-metaclass? _%klass96513%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96509%_)
                '#!void)))))
    (define __class-type-metaclass?
      (lambda (_%klass96497%_)
        (let ()
          (let* ((_%klass96500%_ _%klass96497%_)
                 (__tmp98196
                  (let ((__tmp98197
                         (let ()
                           (declare (not safe))
                           (##type-flags _%klass96500%_))))
                    (declare (not safe))
                    (##fxand __tmp98197 class-type-flag-metaclass))))
            (declare (not safe))
            (##fx= __tmp98196 class-type-flag-metaclass)))))
    (define class-type-system?
      (lambda (_%klass96483%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96483%_ 'class))
              (let ((_%klass96487%_ _%klass96483%_))
                (declare (not safe))
                (__class-type-system? _%klass96487%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96483%_)
                '#!void)))))
    (define __class-type-system?
      (lambda (_%klass96471%_)
        (let ()
          (let* ((_%klass96474%_ _%klass96471%_)
                 (__tmp98198
                  (let ((__tmp98199
                         (let ()
                           (declare (not safe))
                           (##type-flags _%klass96474%_))))
                    (declare (not safe))
                    (##fxand __tmp98199 class-type-flag-system))))
            (declare (not safe))
            (##fx= __tmp98198 class-type-flag-system)))))
    (define make-class-type-descriptor
      (lambda (_%type-id96356%_
               _%type-name96357%_
               _%type-super96358%_
               _%precedence-list96359%_
               _%slot-vector96360%_
               _%properties96361%_
               _%constructor96362%_
               _%slot-table96363%_
               _%methods96364%_)
        (let ()
          (letrec ((_%make-props!96367%_
                    (lambda (_%key96440%_)
                      (letrec* ((_%ht96442%_
                                 (let ()
                                   (declare (not safe))
                                   (make-symbolic-table__% '#f '0)))
                                (_%put-slots!96443%_
                                 (lambda (_%ht96464%_ _%slots96465%_)
                                   (for-each
                                    (lambda (_%g9646696468%_)
                                      (let ()
                                        (declare (not safe))
                                        (symbolic-table-set!
                                         _%ht96464%_
                                         _%g9646696468%_
                                         '#t)))
                                    _%slots96465%_)))
                                (_%put-alist!96444%_
                                 (lambda (_%ht96453%_
                                          _%key96454%_
                                          _%alist96455%_)
                                   (let ((_%$e96457%_
                                          (let ()
                                            (declare (not safe))
                                            (agetq__0
                                             _%key96454%_
                                             _%alist96455%_))))
                                     (if _%$e96457%_
                                         ((lambda (_%g9645996461%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%put-slots!96443%_
                                               _%ht96453%_
                                               _%g9645996461%_)))
                                          _%$e96457%_)
                                         '#!void)))))
                        (let ()
                          (declare (not safe))
                          (_%put-alist!96444%_
                           _%ht96442%_
                           _%key96440%_
                           _%properties96361%_))
                        (for-each
                         (lambda (_%mixin96446%_)
                           (let ((_%alist96448%_
                                  (##structure-ref
                                   _%mixin96446%_
                                   '9
                                   class::t
                                   '#f)))
                             (if (or (let ()
                                       (declare (not safe))
                                       (agetq__0 'transparent: _%alist96448%_))
                                     (eq? '#t
                                          (let ()
                                            (declare (not safe))
                                            (agetq__0
                                             _%key96440%_
                                             _%alist96448%_))))
                                 (let ((__tmp98200
                                        (let ()
                                          (declare (not safe))
                                          (class-type-slot-list
                                           _%mixin96446%_))))
                                   (declare (not safe))
                                   (_%put-slots!96443%_
                                    _%ht96442%_
                                    __tmp98200))
                                 (let ()
                                   (declare (not safe))
                                   (_%put-alist!96444%_
                                    _%ht96442%_
                                    _%key96440%_
                                    _%alist96448%_)))))
                         _%precedence-list96359%_)
                        _%ht96442%_))))
            (let* ((_%transparent?96369%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'transparent: _%properties96361%_)))
                   (_%all-slots-printable?96374%_
                    (let ((_%$e96371%_ _%transparent?96369%_))
                      (if _%$e96371%_
                          _%$e96371%_
                          (eq? '#t
                               (let ()
                                 (declare (not safe))
                                 (agetq__0 'print: _%properties96361%_))))))
                   (_%printable96376%_
                    (if (let ()
                          (declare (not safe))
                          (not _%all-slots-printable?96374%_))
                        (let ()
                          (declare (not safe))
                          (_%make-props!96367%_ 'print:))
                        '#f))
                   (_%all-slots-equalable?96381%_
                    (let ((_%$e96378%_ _%transparent?96369%_))
                      (if _%$e96378%_
                          _%$e96378%_
                          (eq? '#t
                               (let ()
                                 (declare (not safe))
                                 (agetq__0 'equal: _%properties96361%_))))))
                   (_%equalable96383%_
                    (if (let ()
                          (declare (not safe))
                          (not _%all-slots-equalable?96381%_))
                        (let ()
                          (declare (not safe))
                          (_%make-props!96367%_ 'equal:))
                        '#f))
                   (_%first-new-field96385%_
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _%type-super96358%_
                           'class))
                        (let ((__tmp98201
                               (##structure-ref
                                _%type-super96358%_
                                '7
                                class::t
                                '#f)))
                          (declare (not safe))
                          (##vector-length __tmp98201))
                        '1))
                   (_%field-info-length96387%_
                    (let ((__tmp98202
                           (let ((__tmp98203
                                  (let ()
                                    (declare (not safe))
                                    (##vector-length _%slot-vector96360%_))))
                             (declare (not safe))
                             (##fx- __tmp98203 _%first-new-field96385%_))))
                      (declare (not safe))
                      (##fx* '3 __tmp98202)))
                   (_%field-info96389%_
                    (let ()
                      (declare (not safe))
                      (##make-vector _%field-info-length96387%_ '#f)))
                   (_%struct?96391%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'struct: _%properties96361%_)))
                   (_%final?96393%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'final: _%properties96361%_)))
                   (_%metaclass96401%_
                    (let ((_%metaclass9639496396%_
                           (let ()
                             (declare (not safe))
                             (agetq__0 'metaclass: _%properties96361%_))))
                      (if _%metaclass9639496396%_
                          (let ((_%metaclass96399%_ _%metaclass9639496396%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%metaclass96399%_
                                   'class))
                                '#!void
                                (error '"metaclass is not a class type"
                                       'class:
                                       _%type-id96356%_
                                       'metaclass:
                                       _%metaclass96399%_))
                            _%metaclass96399%_)
                          '#f)))
                   (_%system?96403%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'system: _%properties96361%_)))
                   (_%opaque?96408%_
                    (let ((_%$e96405%_
                           (let ()
                             (declare (not safe))
                             (not _%all-slots-equalable?96381%_))))
                      (if _%$e96405%_
                          _%$e96405%_
                          (if _%type-super96358%_
                              (let ()
                                (declare (not safe))
                                (__type-opaque? _%type-super96358%_))
                              '#f))))
                   (_%type-flags96410%_
                    (let ((__tmp98208
                           (if _%final?96393%_ '0 type-flag-extensible))
                          (__tmp98207
                           (if _%opaque?96408%_ type-flag-opaque '0))
                          (__tmp98206
                           (if _%struct?96391%_ class-type-flag-struct '0))
                          (__tmp98205
                           (if _%metaclass96401%_
                               class-type-flag-metaclass
                               '0))
                          (__tmp98204
                           (if _%system?96403%_ class-type-flag-system '0)))
                      (declare (not safe))
                      (##fxior type-flag-id
                               type-flag-concrete
                               __tmp98208
                               __tmp98207
                               __tmp98206
                               __tmp98205
                               __tmp98204)))
                   (_%precedence-list96418%_
                    (let ((_%$e96412%_ (memq t::t _%precedence-list96359%_)))
                      (if _%$e96412%_
                          ((lambda (_%tail96415%_)
                             (if (let ((__tmp98209 (cdr _%tail96415%_)))
                                   (declare (not safe))
                                   (null? __tmp98209))
                                 _%precedence-list96359%_
                                 (error '"BUG: t::t is not last in the precedence list"
                                        'precedence-list:
                                        _%precedence-list96359%_)))
                           _%$e96412%_)
                          (let ((__tmp98210 (cons t::t '())))
                            (declare (not safe))
                            (##append _%precedence-list96359%_ __tmp98210))))))
              (let _%loop96421%_ ((_%i96423%_ _%first-new-field96385%_)
                                  (_%j96424%_ '0))
                (if (let ()
                      (declare (not safe))
                      (##fx< _%j96424%_ _%field-info-length96387%_))
                    (let* ((_%slot96426%_
                            (let ()
                              (declare (not safe))
                              (##vector-ref _%slot-vector96360%_ _%i96423%_)))
                           (_%flags96434%_
                            (if _%transparent?96369%_
                                '0
                                (let ((__tmp98212
                                       (if (or _%all-slots-printable?96374%_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%printable96376%_
                                                  _%slot96426%_
                                                  '#f)))
                                           '0
                                           '1))
                                      (__tmp98211
                                       (if (or _%all-slots-equalable?96381%_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%equalable96383%_
                                                  _%slot96426%_
                                                  '#f)))
                                           '0
                                           '4)))
                                  (declare (not safe))
                                  (##fxior __tmp98212 __tmp98211)))))
                      (vector-set!
                       _%field-info96389%_
                       _%j96424%_
                       _%slot96426%_)
                      (vector-set!
                       _%field-info96389%_
                       (let () (declare (not safe)) (##fx+ _%j96424%_ '1))
                       _%flags96434%_)
                      (let ((__tmp98214
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i96423%_ '1)))
                            (__tmp98213
                             (let ()
                               (declare (not safe))
                               (##fx+ _%j96424%_ '3))))
                        (declare (not safe))
                        (_%loop96421%_ __tmp98214 __tmp98213)))
                    '#!void))
              (if _%metaclass96401%_
                  (let ((_%val96437%_
                         (let ()
                           (declare (not safe))
                           (make-instance
                            _%metaclass96401%_
                            _%type-id96356%_
                            _%type-name96357%_
                            _%type-flags96410%_
                            _%type-super96358%_
                            _%field-info96389%_
                            _%precedence-list96418%_
                            _%slot-vector96360%_
                            _%slot-table96363%_
                            _%properties96361%_
                            _%constructor96362%_
                            _%methods96364%_))))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%val96437%_ 'class))
                        _%val96437%_
                        (error '"bad cast" class::t _%val96437%_)))
                  (let ()
                    (declare (not safe))
                    (##structure
                     class::t
                     _%type-id96356%_
                     _%type-name96357%_
                     _%type-flags96410%_
                     _%type-super96358%_
                     _%field-info96389%_
                     _%precedence-list96418%_
                     _%slot-vector96360%_
                     _%slot-table96363%_
                     _%properties96361%_
                     _%constructor96362%_
                     _%methods96364%_))))))))
    (define class-type-id
      (lambda (_%klass96354%_)
        (##structure-ref _%klass96354%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass96352%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96352%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass96349%_ _%val96350%_)
        (##structure-set! _%klass96349%_ _%val96350%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass96344%_ _%val96346%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96344%_
           _%val96346%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass96342%_)
        (##structure-ref _%klass96342%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass96340%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96340%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass96337%_ _%val96338%_)
        (##structure-set! _%klass96337%_ _%val96338%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass96332%_ _%val96334%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96332%_
           _%val96334%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass96330%_)
        (##structure-ref _%klass96330%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass96328%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96328%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass96325%_ _%val96326%_)
        (##structure-set! _%klass96325%_ _%val96326%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass96320%_ _%val96322%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96320%_
           _%val96322%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass96318%_)
        (##structure-ref _%klass96318%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass96316%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96316%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass96313%_ _%val96314%_)
        (##structure-set! _%klass96313%_ _%val96314%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass96308%_ _%val96310%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96308%_
           _%val96310%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass96306%_)
        (##structure-ref _%klass96306%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass96304%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96304%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass96301%_ _%val96302%_)
        (##structure-set! _%klass96301%_ _%val96302%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass96296%_ _%val96298%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96296%_
           _%val96298%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass96294%_)
        (##structure-ref _%klass96294%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass96292%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass96292%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass96289%_ _%val96290%_)
        (##structure-set!
         _%klass96289%_
         _%val96290%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass96284%_ _%val96286%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96284%_
           _%val96286%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass96282%_)
        (##structure-ref _%klass96282%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass96280%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass96280%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass96277%_ _%val96278%_)
        (##structure-set!
         _%klass96277%_
         _%val96278%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass96272%_ _%val96274%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96272%_
           _%val96274%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass96270%_)
        (##structure-ref _%klass96270%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass96268%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96268%_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass96265%_ _%val96266%_)
        (##structure-set!
         _%klass96265%_
         _%val96266%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass96260%_ _%val96262%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96260%_
           _%val96262%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass96258%_)
        (##structure-ref _%klass96258%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass96256%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96256%_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_%klass96253%_ _%val96254%_)
        (##structure-set!
         _%klass96253%_
         _%val96254%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass96248%_ _%val96250%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96248%_
           _%val96250%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass96246%_)
        (##structure-ref _%klass96246%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass96244%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass96244%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass96241%_ _%val96242%_)
        (##structure-set!
         _%klass96241%_
         _%val96242%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass96236%_ _%val96238%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96236%_
           _%val96238%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass96234%_)
        (##structure-ref _%klass96234%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass96232%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96232%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass96229%_ _%val96230%_)
        (##structure-set! _%klass96229%_ _%val96230%_ '11 class::t 'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass96224%_ _%val96226%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96224%_
           _%val96226%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass96210%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96210%_ 'class))
              (let ((_%klass96214%_ _%klass96210%_))
                (declare (not safe))
                (__class-type-slot-list _%klass96214%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96210%_)
                '#!void)))))
    (define __class-type-slot-list
      (lambda (_%klass96198%_)
        (let ((_%klass96201%_ _%klass96198%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass96201%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass96184%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96184%_ 'class))
              (let ((_%klass96188%_ _%klass96184%_))
                (declare (not safe))
                (__class-type-field-count _%klass96188%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96184%_)
                '#!void)))))
    (define __class-type-field-count
      (lambda (_%klass96172%_)
        (let ()
          (let* ((_%klass96175%_ _%klass96172%_)
                 (__tmp98215
                  (let ((__tmp98216
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass96175%_
                            '7
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##vector-length __tmp98216))))
            (declare (not safe))
            (##fx- __tmp98215 '1)))))
    (define class-type-seal!
      (lambda (_%klass96158%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass96158%_ 'class))
              (let ((_%klass96162%_ _%klass96158%_))
                (declare (not safe))
                (__class-type-seal! _%klass96162%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
                 'contract:
                 'class-type?
                 'value:
                 _%klass96158%_)
                '#!void)))))
    (define __class-type-seal!
      (lambda (_%klass96146%_)
        (let ((_%klass96149%_ _%klass96146%_))
          (let ((__tmp98217
                 (let ((__tmp98218
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass96149%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp98218))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass96149%_
             __tmp98217
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct96121%_ _%maybe-super-struct96122%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%maybe-sub-struct96121%_ 'class))
              (let ((_%maybe-sub-struct96126%_ _%maybe-sub-struct96121%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%maybe-super-struct96122%_
                       'class))
                    (let ((_%maybe-super-struct96136%_
                           _%maybe-super-struct96122%_))
                      (declare (not safe))
                      (__substruct?
                       _%maybe-sub-struct96126%_
                       _%maybe-super-struct96136%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                       'contract:
                       'class-type?
                       'value:
                       _%maybe-super-struct96122%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
                 'contract:
                 'class-type?
                 'value:
                 _%maybe-sub-struct96121%_)
                '#!void)))))
    (define __substruct?
      (lambda (_%maybe-sub-struct96090%_ _%maybe-super-struct96091%_)
        (let ((_%maybe-sub-struct96094%_ _%maybe-sub-struct96090%_))
          (let* ((_%maybe-super-struct96102%_ _%maybe-super-struct96091%_)
                 (_%maybe-super-struct-id96111%_
                  (let ()
                    (declare (not safe))
                    (##type-id _%maybe-super-struct96102%_))))
            (let _%lp96113%_ ((_%super-struct96115%_
                               _%maybe-sub-struct96094%_))
              (let ()
                (if (let () (declare (not safe)) (not _%super-struct96115%_))
                    (let () '#f)
                    (if (eq? _%maybe-super-struct-id96111%_
                             (let ()
                               (declare (not safe))
                               (##type-id _%super-struct96115%_)))
                        (let () '#t)
                        (let ((__tmp98219
                               (let ()
                                 (declare (not safe))
                                 (##type-super _%super-struct96115%_))))
                          (declare (not safe))
                          (_%lp96113%_ __tmp98219))))))))))
    (define base-struct/1
      (lambda (_%klass96085%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96085%_ 'class))
            (let ()
              (if (let ()
                    (declare (not safe))
                    (class-type-struct? _%klass96085%_))
                  _%klass96085%_
                  (let () (declare (not safe)) (##type-super _%klass96085%_))))
            (if (let () (declare (not safe)) (not _%klass96085%_))
                (let () '#f)
                (let () (error '"not a class or false" _%klass96085%_))))))
    (define base-struct/2
      (lambda (_%klass196070%_ _%klass296071%_)
        (let ((_%s196073%_
               (let () (declare (not safe)) (base-struct/1 _%klass196070%_)))
              (_%s296074%_
               (let () (declare (not safe)) (base-struct/1 _%klass296071%_))))
          (if (or (let () (declare (not safe)) (not _%s196073%_))
                  (and _%s296074%_
                       (let ()
                         (declare (not safe))
                         (substruct? _%s196073%_ _%s296074%_))))
              (let () _%s296074%_)
              (if (or (let () (declare (not safe)) (not _%s296074%_))
                      (and _%s196073%_
                           (let ()
                             (declare (not safe))
                             (substruct? _%s296074%_ _%s196073%_))))
                  (let () _%s196073%_)
                  (let ()
                    (error '"bad mixin: incompatible struct bases"
                           _%klass196070%_
                           _%klass296071%_
                           _%s196073%_
                           _%s296074%_)))))))
    (define base-struct/list
      (lambda (_%all-supers95954%_)
        (let* ((_%all-supers9595595980%_ _%all-supers95954%_)
               (_%E9596095984%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers9595595980%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K9597896067%_ (lambda () '#f))
                (_%K9597596053%_
                 (lambda (_%x96051%_)
                   (let () (declare (not safe)) (base-struct/1 _%x96051%_))))
                (_%K9597096030%_
                 (lambda (_%y96027%_ _%x96028%_)
                   (let ()
                     (declare (not safe))
                     (base-struct/2 _%x96028%_ _%y96027%_))))
                (_%K9596195991%_
                 (lambda (_%y95988%_ _%x95989%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x95989%_ _%y95988%_)))))
            (let* ((_%__match9817398174%_
                    (lambda (_%hd9596295994%_ _%tl9596395996%_)
                      (let ((_%x95999%_ _%hd9596295994%_))
                        (letrec ((_%splice-rest9596596001%_
                                  (lambda (_%rest9596996008%_ _%y96010%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%rest9596996008%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%K9596195991%_
                                           _%y96010%_
                                           _%x95999%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%E9596095984%_)))))
                                 (_%splice-try9596796003%_
                                  (lambda (_%hd9596896012%_
                                           _%rest9596996014%_
                                           _%y9596496015%_)
                                    (let ((_%y96018%_ _%hd9596896012%_))
                                      (let ((__tmp98221
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%rest9596996014%_)))
                                            (__tmp98220
                                             (cons _%y96018%_
                                                   _%y9596496015%_)))
                                        (declare (not safe))
                                        (_%splice-loop9596696005%_
                                         __tmp98221
                                         __tmp98220)))))
                                 (_%splice-loop9596696005%_
                                  (lambda (_%rest9596996020%_ _%y9596496021%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (pair? _%rest9596996020%_))
                                        (let ((__tmp98222
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%rest9596996020%_))))
                                          (declare (not safe))
                                          (_%splice-try9596796003%_
                                           __tmp98222
                                           _%rest9596996020%_
                                           _%y9596496021%_))
                                        (let ((__tmp98223
                                               (reverse _%y9596496021%_)))
                                          (declare (not safe))
                                          (_%splice-rest9596596001%_
                                           _%rest9596996020%_
                                           __tmp98223))))))
                          (let ()
                            (declare (not safe))
                            (_%splice-loop9596696005%_
                             _%tl9596395996%_
                             '()))))))
                   (_%try-match9595796063%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all-supers9595595980%_))
                          (let ((_%tl9597796058%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers9595595980%_)))
                                (_%hd9597696056%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers9595595980%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl9597796058%_))
                                (let ((_%x96061%_ _%hd9597696056%_))
                                  (declare (not safe))
                                  (base-struct/1 _%x96061%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl9597796058%_))
                                    (let ((_%tl9597496042%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl9597796058%_)))
                                          (_%hd9597396040%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl9597796058%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl9597496042%_))
                                          (let ((_%x96038%_ _%hd9597696056%_)
                                                (_%y96045%_ _%hd9597396040%_))
                                            (let ()
                                              (declare (not safe))
                                              (_%K9597096030%_
                                               _%y96045%_
                                               _%x96038%_)))
                                          (_%__match9817398174%_
                                           _%hd9597696056%_
                                           _%tl9597796058%_)))
                                    (_%__match9817398174%_
                                     _%hd9597696056%_
                                     _%tl9597796058%_))))
                          (let () (declare (not safe)) (_%E9596095984%_))))))
              (if (let ()
                    (declare (not safe))
                    (##null? _%all-supers9595595980%_))
                  (let () (declare (not safe)) (_%K9597896067%_))
                  (let () (declare (not safe)) (_%try-match9595796063%_))))))))
    (define base-struct
      (lambda _%all-supers95952%_
        (let () (declare (not safe)) (base-struct/list _%all-supers95952%_))))
    (define find-super-constructor
      (lambda (_%super95903%_)
        (let _%lp95905%_ ((_%rest95907%_ _%super95903%_)
                          (_%constructor95908%_ '#f))
          (let* ((_%rest9590995917%_ _%rest95907%_)
                 (_%else9591195925%_ (lambda () _%constructor95908%_))
                 (_%K9591395940%_
                  (lambda (_%rest95928%_ _%hd95929%_)
                    (let ((_%$e95931%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd95929%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e95931%_
                          ((lambda (_%xconstructor95934%_)
                             (if (or (let ()
                                       (declare (not safe))
                                       (not _%constructor95908%_))
                                     (eq? _%constructor95908%_
                                          _%xconstructor95934%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%lp95905%_
                                    _%rest95928%_
                                    _%xconstructor95934%_))
                                 (error '"conflicting implicit constructors"
                                        _%constructor95908%_
                                        _%xconstructor95934%_)))
                           _%$e95931%_)
                          (let ()
                            (declare (not safe))
                            (_%lp95905%_
                             _%rest95928%_
                             _%constructor95908%_)))))))
            (if (let () (declare (not safe)) (##pair? _%rest9590995917%_))
                (let ((_%hd9591495943%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9590995917%_)))
                      (_%tl9591595945%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9590995917%_))))
                  (let* ((_%hd95948%_ _%hd9591495943%_)
                         (_%rest95950%_ _%tl9591595945%_))
                    (declare (not safe))
                    (_%K9591395940%_ _%rest95950%_ _%hd95948%_)))
                (let () (declare (not safe)) (_%else9591195925%_)))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list95879%_ _%direct-slots95880%_)
        (let* ((_%next-slot95882%_ '1)
               (_%slot-table95884%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots95886%_ '(__class))
               (_%process-slot95890%_
                (lambda (_%slot95888%_)
                  (if (let () (declare (not safe)) (symbol? _%slot95888%_))
                      '#!void
                      (error '"invalid slot name" _%slot95888%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table95884%_
                              _%slot95888%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table95884%_
                           _%slot95888%_
                           _%next-slot95882%_))
                        (let ((__tmp98224
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot95888%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table95884%_
                           __tmp98224
                           _%next-slot95882%_))
                        (set! _%r-slots95886%_
                              (cons _%slot95888%_ _%r-slots95886%_))
                        (set! _%next-slot95882%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot95882%_ '1))))
                      '#!void)))
               (_%process-slots95896%_
                (lambda (_%g9589195893%_)
                  (for-each _%process-slot95890%_ _%g9589195893%_))))
          (let ((__tmp98226
                 (lambda (_%mixin95899%_)
                   (let ((__tmp98227
                          (let ((__tmp98228
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%mixin95899%_
                                    '9
                                    '#f
                                    '#f))))
                            (declare (not safe))
                            (agetq__% 'direct-slots: __tmp98228 '()))))
                     (declare (not safe))
                     (_%process-slots95896%_ __tmp98227))))
                (__tmp98225 (reverse _%class-precedence-list95879%_)))
            (declare (not safe))
            (##for-each __tmp98226 __tmp98225))
          (let ()
            (declare (not safe))
            (_%process-slots95896%_ _%direct-slots95880%_))
          (let ((_%slot-vector95901%_
                 (list->vector
                  (let () (declare (not safe)) (##reverse _%r-slots95886%_)))))
            (values _%slot-vector95901%_ _%slot-table95884%_)))))
    (define make-class-type
      (lambda (_%id95804%_
               _%name95805%_
               _%direct-supers95806%_
               _%direct-slots95807%_
               _%properties95808%_
               _%constructor95809%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id95804%_))
              (let ((_%id95813%_ _%id95804%_))
                (if (let () (declare (not safe)) (symbol? _%name95805%_))
                    (let ((_%name95823%_ _%name95805%_))
                      (if (let ()
                            (declare (not safe))
                            (list? _%direct-supers95806%_))
                          (let ((_%direct-supers95833%_
                                 _%direct-supers95806%_))
                            (if (let ()
                                  (declare (not safe))
                                  (list? _%direct-slots95807%_))
                                (let ((_%direct-slots95843%_
                                       _%direct-slots95807%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (list? _%properties95808%_))
                                      (let ((_%properties95853%_
                                             _%properties95808%_))
                                        (if ((lambda (_%$obj95862%_)
                                               (or (let ()
                                                     (declare (not safe))
                                                     (not _%$obj95862%_))
                                                   (let ()
                                                     (declare (not safe))
                                                     (symbol? _%$obj95862%_))))
                                             _%constructor95809%_)
                                            (let ((_%constructor95869%_
                                                   _%constructor95809%_))
                                              (declare (not safe))
                                              (__make-class-type
                                               _%id95813%_
                                               _%name95823%_
                                               _%direct-supers95833%_
                                               _%direct-slots95843%_
                                               _%properties95853%_
                                               _%constructor95869%_))
                                            (begin
                                              (raise-contract-violation-error
                                               '"contract violation"
                                               'context:
                                               '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                               'contract:
                                               '(? (or not symbol?))
                                               'value:
                                               _%constructor95809%_)
                                              '#!void)))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                         'contract:
                                         'list?
                                         'value:
                                         _%properties95808%_)
                                        '#!void)))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                   'contract:
                                   'list?
                                   'value:
                                   _%direct-slots95807%_)
                                  '#!void)))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                             'contract:
                             'list?
                             'value:
                             _%direct-supers95806%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                       'contract:
                       'symbol?
                       'value:
                       _%name95805%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
                 'contract:
                 'symbol?
                 'value:
                 _%id95804%_)
                '#!void)))))
    (define __make-class-type
      (lambda (_%id95665%_
               _%name95666%_
               _%direct-supers95667%_
               _%direct-slots95668%_
               _%properties95669%_
               _%constructor95670%_)
        (let ((_%id95673%_ _%id95665%_))
          (let* ((_%name95681%_ _%name95666%_)
                 (_%direct-supers95689%_ _%direct-supers95667%_))
            (let* ((_%direct-slots95697%_ _%direct-slots95668%_)
                   (_%properties95705%_ _%properties95669%_))
              (if ((lambda (_%$obj95713%_)
                     (or (let () (declare (not safe)) (not _%$obj95713%_))
                         (let ()
                           (declare (not safe))
                           (symbol? _%$obj95713%_))))
                   _%constructor95670%_)
                  (let ((_%constructor95720%_ _%constructor95670%_))
                    (let ((_%$e95733%_
                           (let ((__tmp98229
                                  (lambda (_%$obj95730%_)
                                    (let ((__tmp98230
                                           (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%$obj95730%_
                                              'class))))
                                      (declare (not safe))
                                      (not __tmp98230)))))
                             (declare (not safe))
                             (__find __tmp98229 _%direct-supers95689%_))))
                      (if _%$e95733%_
                          ((lambda (_%g9573595737%_)
                             (error '"Illegal super class; not a class descriptor"
                                    _%g9573595737%_))
                           _%$e95733%_)
                          (let ((_%$e95740%_
                                 (let ()
                                   (declare (not safe))
                                   (__find __class-type-final?
                                           _%direct-supers95689%_))))
                            (if _%$e95740%_
                                ((lambda (_%g9574295744%_)
                                   (error '"Cannot extend final class"
                                          _%g9574295744%_))
                                 _%$e95740%_)
                                '#!void))))
                    (let ((_g98231_
                           (let ()
                             (declare (not safe))
                             (compute-precedence-list
                              _%direct-supers95689%_))))
                      (begin
                        (let ((_g98232_
                               (let ()
                                 (declare (not safe))
                                 (if (##values? _g98231_)
                                     (##vector-length _g98231_)
                                     1))))
                          (if (not (let ()
                                     (declare (not safe))
                                     (##fx= _g98232_ 2)))
                              (error "Context expects 2 values" _g98232_)))
                        (let ((_%precedence-list95747%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g98231_ 0)))
                              (_%struct-super95748%_
                               (let ()
                                 (declare (not safe))
                                 (##vector-ref _g98231_ 1))))
                          (let ((_g98233_
                                 (let ()
                                   (declare (not safe))
                                   (compute-class-slots
                                    _%precedence-list95747%_
                                    _%direct-slots95697%_))))
                            (begin
                              (let ((_g98234_
                                     (let ()
                                       (declare (not safe))
                                       (if (##values? _g98233_)
                                           (##vector-length _g98233_)
                                           1))))
                                (if (not (let ()
                                           (declare (not safe))
                                           (##fx= _g98234_ 2)))
                                    (error "Context expects 2 values"
                                           _g98234_)))
                              (let ((_%slot-vector95750%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g98233_ 0)))
                                    (_%slot-table95751%_
                                     (let ()
                                       (declare (not safe))
                                       (##vector-ref _g98233_ 1))))
                                (let* ((_%properties95753%_
                                        (cons (cons 'direct-slots:
                                                    _%direct-slots95697%_)
                                              (cons (cons 'direct-supers:
                                                          _%direct-supers95689%_)
                                                    _%properties95705%_)))
                                       (_%constructor*95758%_
                                        (let ((_%$e95755%_
                                               _%constructor95720%_))
                                          (if _%$e95755%_
                                              _%$e95755%_
                                              (let ()
                                                (declare (not safe))
                                                (find-super-constructor
                                                 _%direct-supers95689%_)))))
                                       (_%precedence-list95801%_
                                        (if (or (let ()
                                                  (declare (not safe))
                                                  (agetq__0
                                                   'system:
                                                   _%properties95753%_))
                                                (memq object::t
                                                      _%precedence-list95747%_))
                                            _%precedence-list95747%_
                                            (let _%loop95763%_ ((_%tail95765%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%precedence-list95747%_)
                        (_%head95766%_ '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let* ((_%tail9576795775%_
                                                      _%tail95765%_)
                                                     (_%else9576995783%_
                                                      (lambda ()
                                                        (let ((__tmp98235
                                                               (cons object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (cons t::t '()))))
                  (declare (not safe))
                  (__foldl1 cons __tmp98235 _%head95766%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%K9577195789%_
                                                      (lambda (_%rest95786%_
                                                               _%hd95787%_)
                                                        (if (eq? _%hd95787%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         t::t)
                    (let ((__tmp98236 (cons object::t _%tail95765%_)))
                      (declare (not safe))
                      (__foldl1 cons __tmp98236 _%head95766%_))
                    (let ((__tmp98237 (cons _%hd95787%_ _%head95766%_)))
                      (declare (not safe))
                      (_%loop95763%_ _%rest95786%_ __tmp98237))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##pair? _%tail9576795775%_))
                                                    (let ((_%hd9577295792%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%tail9576795775%_)))
                                                          (_%tl9577395794%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%tail9576795775%_))))
                                                      (let* ((_%hd95797%_
                                                              _%hd9577295792%_)
                                                             (_%rest95799%_
                                                              _%tl9577395794%_))
                                                        (declare (not safe))
                                                        (_%K9577195789%_
                                                         _%rest95799%_
                                                         _%hd95797%_)))
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%else9576995783%_))))))))
                                  (declare (not safe))
                                  (make-class-type-descriptor
                                   _%id95673%_
                                   _%name95681%_
                                   _%struct-super95748%_
                                   _%precedence-list95801%_
                                   _%slot-vector95750%_
                                   _%properties95753%_
                                   _%constructor*95758%_
                                   _%slot-table95751%_
                                   '#f)))))))))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                     'contract:
                     '(? (or not symbol?))
                     'value:
                     _%constructor95670%_)
                    '#!void)))))))
    (define class-precedence-list
      (lambda (_%klass95651%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95651%_ 'class))
              (let ((_%klass95655%_ _%klass95651%_))
                (declare (not safe))
                (__class-precedence-list _%klass95655%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95651%_)
                '#!void)))))
    (define __class-precedence-list
      (lambda (_%klass95639%_)
        (let ((_%klass95642%_ _%klass95639%_))
          (cons _%klass95642%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass95642%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers95636%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers95636%_))))
    (define make-class-predicate
      (lambda (_%klass95622%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95622%_ 'class))
              (let ((_%klass95626%_ _%klass95622%_))
                (declare (not safe))
                (__make-class-predicate _%klass95626%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95622%_)
                '#!void)))))
    (define __make-class-predicate
      (lambda (_%klass95593%_)
        (let ()
          (let* ((_%klass95596%_ _%klass95593%_)
                 (_%tid95605%_
                  (let () (declare (not safe)) (##type-id _%klass95596%_))))
            (if (let ()
                  (declare (not safe))
                  (__class-type-final? _%klass95596%_))
                (let ()
                  (lambda (_%g9560795609%_)
                    (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       _%g9560795609%_
                       _%tid95605%_))))
                (if (let ()
                      (declare (not safe))
                      (__class-type-struct? _%klass95596%_))
                    (let ()
                      (lambda (_%g9561295614%_)
                        (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _%g9561295614%_
                           _%tid95605%_))))
                    (let ()
                      (lambda (_%g9561795619%_)
                        (let ()
                          (declare (not safe))
                          (__class-instance?
                           _%klass95596%_
                           _%g9561795619%_))))))))))
    (define make-class-slot-accessor
      (lambda (_%klass95568%_ _%slot95569%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95568%_ 'class))
              (let ((_%klass95573%_ _%klass95568%_))
                (if (let () (declare (not safe)) (symbol? _%slot95569%_))
                    (let ((_%slot95583%_ _%slot95569%_))
                      (declare (not safe))
                      (__make-class-slot-accessor
                       _%klass95573%_
                       _%slot95583%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                       'contract:
                       'symbol?
                       'value:
                       _%slot95569%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95568%_)
                '#!void)))))
    (define __make-class-slot-accessor
      (lambda (_%klass95536%_ _%slot95537%_)
        (let ((_%klass95540%_ _%klass95536%_))
          (let* ((_%slot95548%_ _%slot95537%_)
                 (_%field95557%_
                  (let ((__tmp98238
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass95540%_
                            '8
                            '#f
                            '#f))))
                    (declare (not safe))
                    (symbolic-table-ref __tmp98238 _%slot95548%_ '#f))))
            (if (let () (declare (not safe)) (not _%field95557%_))
                (let ()
                  (error '"unknown slot"
                         'class:
                         _%klass95540%_
                         'slot:
                         _%slot95548%_)
                  '#!void)
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass95540%_))
                    (let ()
                      (declare (not safe))
                      (make-final-slot-accessor
                       _%klass95540%_
                       _%slot95548%_
                       _%field95557%_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _%klass95540%_))
                        (let ()
                          (declare (not safe))
                          (make-struct-slot-accessor
                           _%klass95540%_
                           _%slot95548%_
                           _%field95557%_))
                        (if (let ((_%strukt95563%_
                                   (let ()
                                     (declare (not safe))
                                     (base-struct/1 _%klass95540%_))))
                              (and (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%strukt95563%_
                                      'class))
                                   (let ((__tmp98239
                                          (let ((__tmp98240
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%strukt95563%_
                                                    '7
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (##vector-length __tmp98240))))
                                     (declare (not safe))
                                     (##fx< _%field95557%_ __tmp98239))))
                            (let ()
                              (declare (not safe))
                              (make-struct-subclass-slot-accessor
                               _%klass95540%_
                               _%slot95548%_
                               _%field95557%_))
                            (let ()
                              (declare (not safe))
                              (make-class-cached-slot-accessor
                               _%klass95540%_
                               _%slot95548%_
                               _%field95557%_))))))))))
    (define make-class-slot-mutator
      (lambda (_%klass95511%_ _%slot95512%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95511%_ 'class))
              (let ((_%klass95516%_ _%klass95511%_))
                (if (let () (declare (not safe)) (symbol? _%slot95512%_))
                    (let ((_%slot95526%_ _%slot95512%_))
                      (declare (not safe))
                      (__make-class-slot-mutator _%klass95516%_ _%slot95526%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                       'contract:
                       'symbol?
                       'value:
                       _%slot95512%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95511%_)
                '#!void)))))
    (define __make-class-slot-mutator
      (lambda (_%klass95479%_ _%slot95480%_)
        (let ((_%klass95483%_ _%klass95479%_))
          (let* ((_%slot95491%_ _%slot95480%_)
                 (_%field95500%_
                  (let ((__tmp98241
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass95483%_
                            '8
                            '#f
                            '#f))))
                    (declare (not safe))
                    (symbolic-table-ref __tmp98241 _%slot95491%_ '#f))))
            (if (let () (declare (not safe)) (not _%field95500%_))
                (let ()
                  (error '"unknown slot"
                         'class:
                         _%klass95483%_
                         'slot:
                         _%slot95491%_)
                  '#!void)
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass95483%_))
                    (let ()
                      (declare (not safe))
                      (make-final-slot-mutator
                       _%klass95483%_
                       _%slot95491%_
                       _%field95500%_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _%klass95483%_))
                        (let ()
                          (declare (not safe))
                          (make-struct-slot-mutator
                           _%klass95483%_
                           _%slot95491%_
                           _%field95500%_))
                        (if (let ((_%strukt95506%_
                                   (let ()
                                     (declare (not safe))
                                     (base-struct/1 _%klass95483%_))))
                              (and (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%strukt95506%_
                                      'class))
                                   (let ((__tmp98242
                                          (let ((__tmp98243
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%strukt95506%_
                                                    '7
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (##vector-length __tmp98243))))
                                     (declare (not safe))
                                     (##fx< _%field95500%_ __tmp98242))))
                            (let ()
                              (declare (not safe))
                              (make-struct-subclass-slot-mutator
                               _%klass95483%_
                               _%slot95491%_
                               _%field95500%_))
                            (let ()
                              (declare (not safe))
                              (make-class-cached-slot-mutator
                               _%klass95483%_
                               _%slot95491%_
                               _%field95500%_))))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass95454%_ _%slot95455%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95454%_ 'class))
              (let ((_%klass95459%_ _%klass95454%_))
                (if (let () (declare (not safe)) (symbol? _%slot95455%_))
                    (let ((_%slot95469%_ _%slot95455%_))
                      (declare (not safe))
                      (__make-class-slot-unchecked-accessor
                       _%klass95459%_
                       _%slot95469%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                       'contract:
                       'symbol?
                       'value:
                       _%slot95455%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95454%_)
                '#!void)))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass95422%_ _%slot95423%_)
        (let ((_%klass95426%_ _%klass95422%_))
          (let* ((_%slot95434%_ _%slot95423%_)
                 (_%field95443%_
                  (let ((__tmp98244
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass95426%_
                            '8
                            '#f
                            '#f))))
                    (declare (not safe))
                    (symbolic-table-ref __tmp98244 _%slot95434%_ '#f))))
            (if (let () (declare (not safe)) (not _%field95443%_))
                (let ()
                  (error '"unknown slot"
                         'class:
                         _%klass95426%_
                         'slot:
                         _%slot95434%_)
                  '#!void)
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass95426%_))
                    (let ()
                      (declare (not safe))
                      (make-struct-slot-unchecked-accessor
                       _%klass95426%_
                       _%slot95434%_
                       _%field95443%_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _%klass95426%_))
                        (let ()
                          (declare (not safe))
                          (make-struct-slot-unchecked-accessor
                           _%klass95426%_
                           _%slot95434%_
                           _%field95443%_))
                        (if (let ((_%strukt95449%_
                                   (let ()
                                     (declare (not safe))
                                     (base-struct/1 _%klass95426%_))))
                              (and (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%strukt95449%_
                                      'class))
                                   (let ((__tmp98245
                                          (let ((__tmp98246
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%strukt95449%_
                                                    '7
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (##vector-length __tmp98246))))
                                     (declare (not safe))
                                     (##fx< _%field95443%_ __tmp98245))))
                            (let ()
                              (declare (not safe))
                              (make-struct-slot-unchecked-accessor
                               _%klass95426%_
                               _%slot95434%_
                               _%field95443%_))
                            (let ()
                              (declare (not safe))
                              (make-class-cached-slot-unchecked-accessor
                               _%klass95426%_
                               _%slot95434%_
                               _%field95443%_))))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass95397%_ _%slot95398%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95397%_ 'class))
              (let ((_%klass95402%_ _%klass95397%_))
                (if (let () (declare (not safe)) (symbol? _%slot95398%_))
                    (let ((_%slot95412%_ _%slot95398%_))
                      (declare (not safe))
                      (__make-class-slot-unchecked-mutator
                       _%klass95402%_
                       _%slot95412%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                       'contract:
                       'symbol?
                       'value:
                       _%slot95398%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95397%_)
                '#!void)))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass95365%_ _%slot95366%_)
        (let ((_%klass95369%_ _%klass95365%_))
          (let* ((_%slot95377%_ _%slot95366%_)
                 (_%field95386%_
                  (let ((__tmp98247
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass95369%_
                            '8
                            '#f
                            '#f))))
                    (declare (not safe))
                    (symbolic-table-ref __tmp98247 _%slot95377%_ '#f))))
            (if (let () (declare (not safe)) (not _%field95386%_))
                (let ()
                  (error '"unknown slot"
                         'class:
                         _%klass95369%_
                         'slot:
                         _%slot95377%_)
                  '#!void)
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass95369%_))
                    (let ()
                      (declare (not safe))
                      (make-struct-slot-unchecked-mutator
                       _%klass95369%_
                       _%slot95377%_
                       _%field95386%_))
                    (if (let ()
                          (declare (not safe))
                          (__class-type-struct? _%klass95369%_))
                        (let ()
                          (declare (not safe))
                          (make-struct-slot-unchecked-mutator
                           _%klass95369%_
                           _%slot95377%_
                           _%field95386%_))
                        (if (let ((_%strukt95392%_
                                   (let ()
                                     (declare (not safe))
                                     (base-struct/1 _%klass95369%_))))
                              (and (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%strukt95392%_
                                      'class))
                                   (let ((__tmp98248
                                          (let ((__tmp98249
                                                 (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%strukt95392%_
                                                    '7
                                                    '#f
                                                    '#f))))
                                            (declare (not safe))
                                            (##vector-length __tmp98249))))
                                     (declare (not safe))
                                     (##fx< _%field95386%_ __tmp98248))))
                            (let ()
                              (declare (not safe))
                              (make-struct-slot-unchecked-mutator
                               _%klass95369%_
                               _%slot95377%_
                               _%field95386%_))
                            (let ()
                              (declare (not safe))
                              (make-class-cached-slot-unchecked-mutator
                               _%klass95369%_
                               _%slot95377%_
                               _%field95386%_))))))))))
    (define not-an-instance__%
      (lambda (_%object95349%_ _%class95350%_ _%slot95351%_)
        (apply error
               '"not an instance"
               'object:
               _%object95349%_
               'class:
               _%class95350%_
               (if _%slot95351%_ (cons 'slot: (cons _%slot95351%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object95356%_ _%class95357%_)
        (let ((_%slot95359%_ '#f))
          (declare (not safe))
          (not-an-instance__% _%object95356%_ _%class95357%_ _%slot95359%_))))
    (define not-an-instance
      (lambda _g98251_
        (let ((_g98250_ (let () (declare (not safe)) (##length _g98251_))))
          (cond ((let () (declare (not safe)) (##fx= _g98250_ 2))
                 (apply (lambda (_%object95356%_ _%class95357%_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__0
                             _%object95356%_
                             _%class95357%_)))
                        _g98251_))
                ((let () (declare (not safe)) (##fx= _g98250_ 3))
                 (apply (lambda (_%object95361%_ _%class95362%_ _%slot95363%_)
                          (let ()
                            (declare (not safe))
                            (not-an-instance__%
                             _%object95361%_
                             _%class95362%_
                             _%slot95363%_)))
                        _g98251_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g98251_))))))
    (define make-final-slot-accessor
      (lambda (_%klass95342%_ _%slot95343%_ _%field95344%_)
        (lambda (_%obj95346%_)
          (##direct-structure-ref
           _%obj95346%_
           _%field95344%_
           _%klass95342%_
           _%slot95343%_))))
    (define make-final-slot-mutator
      (lambda (_%klass95335%_ _%slot95336%_ _%field95337%_)
        (lambda (_%obj95339%_ _%val95340%_)
          (##direct-structure-set!
           _%obj95339%_
           _%val95340%_
           _%field95337%_
           _%klass95335%_
           _%slot95336%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass95329%_ _%slot95330%_ _%field95331%_)
        (lambda (_%obj95333%_)
          (##structure-ref
           _%obj95333%_
           _%field95331%_
           _%klass95329%_
           _%slot95330%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass95322%_ _%slot95323%_ _%field95324%_)
        (lambda (_%obj95326%_ _%val95327%_)
          (##structure-set!
           _%obj95326%_
           _%val95327%_
           _%field95324%_
           _%klass95322%_
           _%slot95323%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass95316%_ _%slot95317%_ _%field95318%_)
        (lambda (_%obj95320%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj95320%_
             _%field95318%_
             _%klass95316%_
             _%slot95317%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass95309%_ _%slot95310%_ _%field95311%_)
        (lambda (_%obj95313%_ _%val95314%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj95313%_
             _%val95314%_
             _%field95311%_
             _%klass95309%_
             _%slot95310%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass95303%_ _%slot95304%_ _%field95305%_)
        (lambda (_%obj95307%_)
          (if (let ()
                (declare (not safe))
                (class-instance? _%klass95303%_ _%obj95307%_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _%obj95307%_ _%field95305%_))
              (let ()
                (declare (not safe))
                (not-an-instance__%
                 _%obj95307%_
                 _%klass95303%_
                 _%slot95304%_))))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass95296%_ _%slot95297%_ _%field95298%_)
        (lambda (_%obj95300%_ _%val95301%_)
          (if (let ()
                (declare (not safe))
                (class-instance? _%klass95296%_ _%obj95300%_))
              (let ()
                (declare (not safe))
                (unchecked-field-set!
                 _%obj95300%_
                 _%field95298%_
                 _%val95301%_))
              (let ()
                (declare (not safe))
                (not-an-instance__%
                 _%obj95300%_
                 _%klass95296%_
                 _%slot95297%_))))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass95287%_ _%slot95288%_ _%field95289%_)
        (lambda (_%obj95291%_)
          (if (let ((__tmp98252
                     (let () (declare (not safe)) (##type-id _%klass95287%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj95291%_ __tmp98252))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _%obj95291%_ _%field95289%_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _%klass95287%_ _%obj95291%_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-ref _%obj95291%_ _%slot95288%_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _%obj95291%_
                     _%klass95287%_
                     _%slot95288%_)))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass95277%_ _%slot95278%_ _%field95279%_)
        (lambda (_%obj95281%_ _%val95282%_)
          (if (let ((__tmp98253
                     (let () (declare (not safe)) (##type-id _%klass95277%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj95281%_ __tmp98253))
              (let ()
                (declare (not safe))
                (unchecked-field-set!
                 _%obj95281%_
                 _%field95279%_
                 _%val95282%_))
              (if (let ()
                    (declare (not safe))
                    (class-instance? _%klass95277%_ _%obj95281%_))
                  (let ()
                    (declare (not safe))
                    (unchecked-slot-set!
                     _%obj95281%_
                     _%slot95278%_
                     _%val95282%_))
                  (let ()
                    (declare (not safe))
                    (not-an-instance__%
                     _%obj95281%_
                     _%klass95277%_
                     _%slot95278%_)))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass95271%_ _%slot95272%_ _%field95273%_)
        (lambda (_%obj95275%_)
          (if (let ((__tmp98254
                     (let () (declare (not safe)) (##type-id _%klass95271%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj95275%_ __tmp98254))
              (let ()
                (declare (not safe))
                (unchecked-field-ref _%obj95275%_ _%field95273%_))
              (let ()
                (declare (not safe))
                (unchecked-slot-ref _%obj95275%_ _%slot95272%_))))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass95264%_ _%slot95265%_ _%field95266%_)
        (lambda (_%obj95268%_ _%val95269%_)
          (if (let ((__tmp98255
                     (let () (declare (not safe)) (##type-id _%klass95264%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj95268%_ __tmp98255))
              (let ()
                (declare (not safe))
                (unchecked-field-set!
                 _%obj95268%_
                 _%field95266%_
                 _%val95269%_))
              (let ()
                (declare (not safe))
                (unchecked-slot-set!
                 _%obj95268%_
                 _%slot95265%_
                 _%val95269%_))))))
    (define class-slot-offset
      (lambda (_%klass95239%_ _%slot95240%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95239%_ 'class))
              (let ((_%klass95244%_ _%klass95239%_))
                (if (let () (declare (not safe)) (symbolic? _%slot95240%_))
                    (let ((_%slot95254%_ _%slot95240%_))
                      (declare (not safe))
                      (__class-slot-offset _%klass95244%_ _%slot95254%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                       'contract:
                       'symbolic?
                       'value:
                       _%slot95240%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95239%_)
                '#!void)))))
    (define __class-slot-offset
      (lambda (_%klass95218%_ _%slot95219%_)
        (let ((_%klass95222%_ _%klass95218%_))
          (let* ((_%slot95230%_ _%slot95219%_)
                 (__tmp98256
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%klass95222%_ '8 '#f '#f))))
            (declare (not safe))
            (symbolic-table-ref __tmp98256 _%slot95230%_ '#f)))))
    (define class-slot-ref
      (lambda (_%klass95192%_ _%obj95193%_ _%slot95194%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95192%_ 'class))
              (let ((_%klass95198%_ _%klass95192%_))
                (if (let () (declare (not safe)) (symbolic? _%slot95194%_))
                    (let ((_%slot95208%_ _%slot95194%_))
                      (declare (not safe))
                      (__class-slot-ref
                       _%klass95198%_
                       _%obj95193%_
                       _%slot95208%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                       'contract:
                       'symbolic?
                       'value:
                       _%slot95194%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95192%_)
                '#!void)))))
    (define __class-slot-ref
      (lambda (_%klass95168%_ _%obj95169%_ _%slot95170%_)
        (let ()
          (let* ((_%klass95173%_ _%klass95168%_) (_%slot95181%_ _%slot95170%_))
            (if (let ()
                  (declare (not safe))
                  (__class-instance? _%klass95173%_ _%obj95169%_))
                (let ((_%off95190%_
                       (let ((__tmp98257
                              (let ()
                                (declare (not safe))
                                (##structure-type _%obj95169%_))))
                         (declare (not safe))
                         (class-slot-offset __tmp98257 _%slot95181%_))))
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%obj95169%_
                   _%off95190%_
                   _%klass95173%_
                   _%slot95181%_))
                (let ()
                  (declare (not safe))
                  (not-an-instance__0 _%obj95169%_ _%klass95173%_)))))))
    (define class-slot-set!
      (lambda (_%klass95141%_ _%obj95142%_ _%slot95143%_ _%val95144%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass95141%_ 'class))
              (let ((_%klass95148%_ _%klass95141%_))
                (if (let () (declare (not safe)) (symbolic? _%slot95143%_))
                    (let ((_%slot95158%_ _%slot95143%_))
                      (declare (not safe))
                      (__class-slot-set!
                       _%klass95148%_
                       _%obj95142%_
                       _%slot95158%_
                       _%val95144%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                       'contract:
                       'symbolic?
                       'value:
                       _%slot95143%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
                 'contract:
                 'class-type?
                 'value:
                 _%klass95141%_)
                '#!void)))))
    (define __class-slot-set!
      (lambda (_%klass95116%_ _%obj95117%_ _%slot95118%_ _%val95119%_)
        (let ()
          (let* ((_%klass95122%_ _%klass95116%_) (_%slot95130%_ _%slot95118%_))
            (if (let ()
                  (declare (not safe))
                  (__class-instance? _%klass95122%_ _%obj95117%_))
                (let ((_%off95139%_
                       (let ((__tmp98258
                              (let ()
                                (declare (not safe))
                                (##structure-type _%obj95117%_))))
                         (declare (not safe))
                         (class-slot-offset __tmp98258 _%slot95130%_))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%obj95117%_
                   _%val95119%_
                   _%off95139%_
                   _%klass95122%_
                   _%slot95130%_))
                (let ()
                  (declare (not safe))
                  (not-an-instance__0 _%obj95117%_ _%klass95122%_)))))))
    (define unchecked-field-ref
      (lambda (_%obj95113%_ _%off95114%_)
        (let ((__tmp98259
               (let () (declare (not safe)) (##structure-type _%obj95113%_))))
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj95113%_
           _%off95114%_
           __tmp98259
           '#f))))
    (define unchecked-field-set!
      (lambda (_%obj95109%_ _%off95110%_ _%val95111%_)
        (let ((__tmp98260
               (let () (declare (not safe)) (##structure-type _%obj95109%_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj95109%_
           _%val95111%_
           _%off95110%_
           __tmp98260
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj95106%_ _%slot95107%_)
        (let ((__tmp98261
               (let ((__tmp98262
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj95106%_))))
                 (declare (not safe))
                 (__class-slot-offset __tmp98262 _%slot95107%_))))
          (declare (not safe))
          (unchecked-field-ref _%obj95106%_ __tmp98261))))
    (define unchecked-slot-set!
      (lambda (_%obj95102%_ _%slot95103%_ _%val95104%_)
        (let ((__tmp98263
               (let ((__tmp98264
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj95102%_))))
                 (declare (not safe))
                 (__class-slot-offset __tmp98264 _%slot95103%_))))
          (declare (not safe))
          (unchecked-field-set! _%obj95102%_ __tmp98263 _%val95104%_))))
    (define slot-ref__%
      (lambda (_%obj95064%_ _%slot95065%_ _%E95066%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%slot95065%_))
              (let ((_%slot95070%_ _%slot95065%_))
                (if (let () (declare (not safe)) (procedure? _%E95066%_))
                    (let ((_%E95080%_ _%E95066%_))
                      (declare (not safe))
                      (__slot-ref__% _%obj95064%_ _%slot95070%_ _%E95080%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                       'contract:
                       'procedure?
                       'value:
                       _%E95066%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
                 'contract:
                 'symbol?
                 'value:
                 _%slot95065%_)
                '#!void)))))
    (define slot-ref__0
      (lambda (_%obj95093%_ _%slot95094%_)
        (let ((_%E95096%_ __slot-error))
          (declare (not safe))
          (slot-ref__% _%obj95093%_ _%slot95094%_ _%E95096%_))))
    (define slot-ref
      (lambda _g98266_
        (let ((_g98265_ (let () (declare (not safe)) (##length _g98266_))))
          (cond ((let () (declare (not safe)) (##fx= _g98265_ 2))
                 (apply (lambda (_%obj95093%_ _%slot95094%_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%obj95093%_ _%slot95094%_)))
                        _g98266_))
                ((let () (declare (not safe)) (##fx= _g98265_ 3))
                 (apply (lambda (_%obj95098%_ _%slot95099%_ _%E95100%_)
                          (let ()
                            (declare (not safe))
                            (slot-ref__%
                             _%obj95098%_
                             _%slot95099%_
                             _%E95100%_)))
                        _g98266_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g98266_))))))
    (define __slot-ref__%
      (lambda (_%obj95020%_ _%slot95021%_ _%E95022%_)
        (let ()
          (let* ((_%slot95025%_ _%slot95021%_) (_%E95033%_ _%E95022%_))
            (let* ((_%klass95042%_
                    (let () (declare (not safe)) (class-of _%obj95020%_)))
                   (_%$e95045%_
                    (let ()
                      (declare (not safe))
                      (class-slot-offset _%klass95042%_ _%slot95025%_))))
              (if _%$e95045%_
                  ((lambda (_%off95048%_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-ref _%obj95020%_ _%off95048%_)))
                   _%$e95045%_)
                  (let ()
                    (declare (not safe))
                    (_%E95033%_ _%obj95020%_ _%slot95025%_))))))))
    (define __slot-ref__0
      (lambda (_%obj95054%_ _%slot95055%_)
        (let ((_%E95057%_ __slot-error))
          (declare (not safe))
          (__slot-ref__% _%obj95054%_ _%slot95055%_ _%E95057%_))))
    (define __slot-ref
      (lambda _g98268_
        (let ((_g98267_ (let () (declare (not safe)) (##length _g98268_))))
          (cond ((let () (declare (not safe)) (##fx= _g98267_ 2))
                 (apply (lambda (_%obj95054%_ _%slot95055%_)
                          (let ()
                            (declare (not safe))
                            (__slot-ref__0 _%obj95054%_ _%slot95055%_)))
                        _g98268_))
                ((let () (declare (not safe)) (##fx= _g98267_ 3))
                 (apply (lambda (_%obj95059%_ _%slot95060%_ _%E95061%_)
                          (let ()
                            (declare (not safe))
                            (__slot-ref__%
                             _%obj95059%_
                             _%slot95060%_
                             _%E95061%_)))
                        _g98268_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g98268_))))))
    (define slot-set!__%
      (lambda (_%obj94978%_ _%slot94979%_ _%val94980%_ _%E94981%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%slot94979%_))
              (let ((_%slot94985%_ _%slot94979%_))
                (if (let () (declare (not safe)) (procedure? _%E94981%_))
                    (let ((_%E94995%_ _%E94981%_))
                      (declare (not safe))
                      (__slot-set!__%
                       _%obj94978%_
                       _%slot94985%_
                       _%val94980%_
                       _%E94995%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                       'contract:
                       'procedure?
                       'value:
                       _%E94981%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
                 'contract:
                 'symbol?
                 'value:
                 _%slot94979%_)
                '#!void)))))
    (define slot-set!__0
      (lambda (_%obj95008%_ _%slot95009%_ _%val95010%_)
        (let ((_%E95012%_ __slot-error))
          (declare (not safe))
          (slot-set!__% _%obj95008%_ _%slot95009%_ _%val95010%_ _%E95012%_))))
    (define slot-set!
      (lambda _g98270_
        (let ((_g98269_ (let () (declare (not safe)) (##length _g98270_))))
          (cond ((let () (declare (not safe)) (##fx= _g98269_ 3))
                 (apply (lambda (_%obj95008%_ _%slot95009%_ _%val95010%_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__0
                             _%obj95008%_
                             _%slot95009%_
                             _%val95010%_)))
                        _g98270_))
                ((let () (declare (not safe)) (##fx= _g98269_ 4))
                 (apply (lambda (_%obj95014%_
                                 _%slot95015%_
                                 _%val95016%_
                                 _%E95017%_)
                          (let ()
                            (declare (not safe))
                            (slot-set!__%
                             _%obj95014%_
                             _%slot95015%_
                             _%val95016%_
                             _%E95017%_)))
                        _g98270_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g98270_))))))
    (define __slot-set!__%
      (lambda (_%obj94931%_ _%slot94932%_ _%val94933%_ _%E94934%_)
        (let ()
          (let* ((_%slot94937%_ _%slot94932%_) (_%E94945%_ _%E94934%_))
            (let* ((_%klass94954%_
                    (let () (declare (not safe)) (class-of _%obj94931%_)))
                   (_%$e94957%_
                    (let ()
                      (declare (not safe))
                      (class-slot-offset _%klass94954%_ _%slot94937%_))))
              (if _%$e94957%_
                  ((lambda (_%off94960%_)
                     (let ()
                       (declare (not safe))
                       (unchecked-field-set!
                        _%obj94931%_
                        _%off94960%_
                        _%val94933%_)))
                   _%$e94957%_)
                  (let ()
                    (declare (not safe))
                    (_%E94945%_ _%obj94931%_ _%slot94937%_))))))))
    (define __slot-set!__0
      (lambda (_%obj94966%_ _%slot94967%_ _%val94968%_)
        (let ((_%E94970%_ __slot-error))
          (declare (not safe))
          (__slot-set!__%
           _%obj94966%_
           _%slot94967%_
           _%val94968%_
           _%E94970%_))))
    (define __slot-set!
      (lambda _g98272_
        (let ((_g98271_ (let () (declare (not safe)) (##length _g98272_))))
          (cond ((let () (declare (not safe)) (##fx= _g98271_ 3))
                 (apply (lambda (_%obj94966%_ _%slot94967%_ _%val94968%_)
                          (let ()
                            (declare (not safe))
                            (__slot-set!__0
                             _%obj94966%_
                             _%slot94967%_
                             _%val94968%_)))
                        _g98272_))
                ((let () (declare (not safe)) (##fx= _g98271_ 4))
                 (apply (lambda (_%obj94972%_
                                 _%slot94973%_
                                 _%val94974%_
                                 _%E94975%_)
                          (let ()
                            (declare (not safe))
                            (__slot-set!__%
                             _%obj94972%_
                             _%slot94973%_
                             _%val94974%_
                             _%E94975%_)))
                        _g98272_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g98272_))))))
    (define __slot-error
      (lambda (_%obj94927%_ _%slot94928%_)
        (error '"Cannot find slot"
               'object:
               _%obj94927%_
               'slot:
               _%slot94928%_)))
    (define subclass?
      (lambda (_%maybe-sub-class94902%_ _%maybe-super-class94903%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%maybe-sub-class94902%_ 'class))
              (let ((_%maybe-sub-class94907%_ _%maybe-sub-class94902%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%maybe-super-class94903%_
                       'class))
                    (let ((_%maybe-super-class94917%_
                           _%maybe-super-class94903%_))
                      (declare (not safe))
                      (__subclass?
                       _%maybe-sub-class94907%_
                       _%maybe-super-class94917%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                       'contract:
                       'class-type?
                       'value:
                       _%maybe-super-class94903%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
                 'contract:
                 'class-type?
                 'value:
                 _%maybe-sub-class94902%_)
                '#!void)))))
    (define __subclass?
      (lambda (_%maybe-sub-class94874%_ _%maybe-super-class94875%_)
        (let ()
          (let* ((_%maybe-sub-class94878%_ _%maybe-sub-class94874%_)
                 (_%maybe-super-class94886%_ _%maybe-super-class94875%_))
            (let* ((_%maybe-super-class-id94895%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%maybe-super-class94886%_)))
                   (_%$e94897%_
                    (eq? _%maybe-super-class-id94895%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%maybe-sub-class94878%_)))))
              (if _%$e94897%_
                  _%$e94897%_
                  (let ((__tmp98274
                         (lambda (_%super-class94900%_)
                           (eq? (let ()
                                  (declare (not safe))
                                  (##type-id _%super-class94900%_))
                                _%maybe-super-class-id94895%_)))
                        (__tmp98273
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%maybe-sub-class94878%_
                            '6
                            '#f
                            '#f))))
                    (declare (not safe))
                    (__ormap1 __tmp98274 __tmp98273))))))))
    (define object?
      (lambda (_%o94871%_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _%o94871%_))
              (let ((__tmp98275
                     (let ()
                       (declare (not safe))
                       (##structure-type _%o94871%_))))
                (declare (not safe))
                (##structure-instance-of? __tmp98275 'class))
              '#f))))
    (define object-type
      (lambda (_%o94866%_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _%o94866%_))
              (let ((_%klass94869%_
                     (let ()
                       (declare (not safe))
                       (##structure-type _%o94866%_))))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass94869%_ 'class))
                    _%klass94869%_
                    (begin
                      (error '"not an object" _%o94866%_ _%klass94869%_)
                      '#!void)))
              (begin (error '"not an object" _%o94866%_) '#!void)))))
    (define direct-instance?
      (lambda (_%klass94851%_ _%obj94852%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94851%_ 'class))
              (let ((_%klass94856%_ _%klass94851%_))
                (declare (not safe))
                (__direct-instance? _%klass94856%_ _%obj94852%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94851%_)
                '#!void)))))
    (define __direct-instance?
      (lambda (_%klass94838%_ _%obj94839%_)
        (let ()
          (let* ((_%klass94842%_ _%klass94838%_)
                 (__tmp98276
                  (let () (declare (not safe)) (##type-id _%klass94842%_))))
            (declare (not safe))
            (##structure-direct-instance-of? _%obj94839%_ __tmp98276)))))
    (define immediate-instance-of?
      (lambda (_%klass94834%_ _%obj94835%_)
        (let ()
          (if (let () (declare (not safe)) (##structure? _%obj94835%_))
              (eq? _%klass94834%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%obj94835%_)))
              '#f))))
    (define struct-instance?
      (lambda (_%klass94819%_ _%obj94820%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94819%_ 'class))
              (let ((_%klass94824%_ _%klass94819%_))
                (declare (not safe))
                (__struct-instance? _%klass94824%_ _%obj94820%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94819%_)
                '#!void)))))
    (define __struct-instance?
      (lambda (_%klass94806%_ _%obj94807%_)
        (let ()
          (let* ((_%klass94810%_ _%klass94806%_)
                 (__tmp98277
                  (let () (declare (not safe)) (##type-id _%klass94810%_))))
            (declare (not safe))
            (##structure-instance-of? _%obj94807%_ __tmp98277)))))
    (define class-instance?
      (lambda (_%klass94791%_ _%obj94792%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94791%_ 'class))
              (let ((_%klass94796%_ _%klass94791%_))
                (declare (not safe))
                (__class-instance? _%klass94796%_ _%obj94792%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94791%_)
                '#!void)))))
    (define __class-instance?
      (lambda (_%klass94776%_ _%obj94777%_)
        (let ()
          (let* ((_%klass94780%_ _%klass94776%_)
                 (_%type94789%_
                  (let () (declare (not safe)) (class-of _%obj94777%_))))
            (declare (not safe))
            (subclass? _%type94789%_ _%klass94780%_)))))
    (define make-object
      (lambda (_%klass94751%_ _%k94752%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94751%_ 'class))
              (let ((_%klass94756%_ _%klass94751%_))
                (if (let () (declare (not safe)) (fixnum? _%k94752%_))
                    (let ((_%k94766%_ _%k94752%_))
                      (declare (not safe))
                      (__make-object _%klass94756%_ _%k94766%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                       'contract:
                       'fixnum?
                       'value:
                       _%k94752%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94751%_)
                '#!void)))))
    (define __make-object
      (lambda (_%klass94728%_ _%k94729%_)
        (let ()
          (let* ((_%klass94732%_ _%klass94728%_) (_%k94740%_ _%k94729%_))
            (if (let ()
                  (declare (not safe))
                  (__class-type-system? _%klass94732%_))
                (begin
                  (error '"cannot instantiate system class"
                         'class:
                         _%klass94732%_)
                  '#!void)
                (let ((_%obj94749%_
                       (let ()
                         (declare (not safe))
                         (##make-structure _%klass94732%_ _%k94740%_))))
                  (declare (not safe))
                  (object-fill! _%obj94749%_ '#f)))))))
    (define object-fill!
      (lambda (_%obj94713%_ _%fill94714%_)
        (let ()
          (if '#t
              (let ((_%obj94718%_ _%obj94713%_))
                (declare (not safe))
                (__object-fill! _%obj94718%_ _%fill94714%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
                 'contract:
                 'true
                 'value:
                 _%obj94713%_)
                '#!void)))))
    (define __object-fill!
      (lambda (_%obj94695%_ _%fill94696%_)
        (let ((_%obj94699%_ _%obj94695%_))
          (let _%loop94708%_ ((_%i94710%_
                               (let ((__tmp98279
                                      (let ()
                                        (declare (not safe))
                                        (##structure-length _%obj94699%_))))
                                 (declare (not safe))
                                 (##fx- __tmp98279 '1))))
            (let ()
              (if (let () (declare (not safe)) (##fx> _%i94710%_ '0))
                  (begin
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       _%obj94699%_
                       _%fill94696%_
                       _%i94710%_
                       '#f
                       '#f))
                    (let ((__tmp98278
                           (let ()
                             (declare (not safe))
                             (##fx- _%i94710%_ '1))))
                      (declare (not safe))
                      (_%loop94708%_ __tmp98278)))
                  _%obj94699%_))))))
    (define new-instance
      (lambda (_%klass94681%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94681%_ 'class))
              (let ((_%klass94685%_ _%klass94681%_))
                (declare (not safe))
                (__new-instance _%klass94685%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94681%_)
                '#!void)))))
    (define __new-instance
      (lambda (_%klass94669%_)
        (let ()
          (let* ((_%klass94672%_ _%klass94669%_)
                 (__obj98175
                  (let ((__tmp98280
                         (let ((__tmp98281
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass94672%_
                                   '7
                                   '#f
                                   '#f))))
                           (declare (not safe))
                           (##vector-length __tmp98281))))
                    (declare (not safe))
                    (##make-structure _%klass94672%_ __tmp98280))))
            (let () (declare (not safe)) (object-fill! __obj98175 '#f))
            __obj98175))))
    (define make-instance
      (lambda (_%klass94654%_ . _%args94655%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94654%_ 'class))
              (let ((_%klass94659%_ _%klass94654%_))
                (declare (not safe))
                (##apply __make-instance _%klass94659%_ _%args94655%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94654%_)
                '#!void)))))
    (define __make-instance
      (lambda (_%klass94626%_ . _%args94627%_)
        (let ()
          (let* ((_%klass94630%_ _%klass94626%_)
                 (_%$e94639%_
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%klass94630%_ '10 '#f '#f))))
            (if _%$e94639%_
                ((lambda (_%kons-id94642%_)
                   (let ((_%obj94644%_
                          (let ()
                            (declare (not safe))
                            (__new-instance _%klass94630%_))))
                     (let ()
                       (declare (not safe))
                       (___constructor-init!
                        _%klass94630%_
                        _%kons-id94642%_
                        _%obj94644%_
                        _%args94627%_))
                     _%obj94644%_))
                 _%$e94639%_)
                (if (let ()
                      (declare (not safe))
                      (__class-type-metaclass? _%klass94630%_))
                    (let ((_%obj94647%_
                           (let ()
                             (declare (not safe))
                             (__new-instance _%klass94630%_))))
                      (let ()
                        (declare (not safe))
                        (__metaclass-instance-init!
                         _%klass94630%_
                         _%obj94647%_
                         _%args94627%_))
                      _%obj94647%_)
                    (if (let ((__tmp98282
                               (let ()
                                 (declare (not safe))
                                 (__class-type-struct? _%klass94630%_))))
                          (declare (not safe))
                          (not __tmp98282))
                        (let ((_%obj94650%_
                               (let ()
                                 (declare (not safe))
                                 (__new-instance _%klass94630%_))))
                          (let ()
                            (declare (not safe))
                            (___class-instance-init!
                             _%klass94630%_
                             _%obj94650%_
                             _%args94627%_))
                          _%obj94650%_)
                        (if (let ((__tmp98284
                                   (let ()
                                     (declare (not safe))
                                     (__class-type-field-count
                                      _%klass94630%_)))
                                  (__tmp98283 (length _%args94627%_)))
                              (declare (not safe))
                              (##fx= __tmp98284 __tmp98283))
                            (let ()
                              (apply ##structure _%klass94630%_ _%args94627%_))
                            (let ()
                              (error '"arguments don't match object size"
                                     'class:
                                     _%klass94630%_
                                     'slots:
                                     (let ()
                                       (declare (not safe))
                                       (__class-type-slot-list _%klass94630%_))
                                     'args:
                                     _%args94627%_)
                              '#!void)))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj94611%_ . _%args94612%_)
        (let ()
          (if '#t
              (let ((_%obj94616%_ _%obj94611%_))
                (declare (not safe))
                (##apply __struct-instance-init! _%obj94616%_ _%args94612%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
                 'contract:
                 'true
                 'value:
                 _%obj94611%_)
                '#!void)))))
    (define __struct-instance-init!
      (lambda (_%obj94598%_ . _%args94599%_)
        (let ((_%obj94602%_ _%obj94598%_))
          (if (let ((__tmp98286 (length _%args94599%_))
                    (__tmp98285
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj94602%_))))
                (declare (not safe))
                (##fx< __tmp98286 __tmp98285))
              (let ()
                (declare (not safe))
                (___struct-instance-init! _%obj94602%_ _%args94599%_))
              (error '"too many arguments for struct"
                     'object:
                     _%obj94602%_
                     'args:
                     _%args94599%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj94557%_ _%args94558%_)
        (let _%lp94560%_ ((_%k94562%_ '1) (_%rest94563%_ _%args94558%_))
          (let* ((_%rest9456494572%_ _%rest94563%_)
                 (_%else9456694580%_ (lambda () _%obj94557%_))
                 (_%K9456894586%_
                  (lambda (_%rest94583%_ _%hd94584%_)
                    (let ()
                      (declare (not safe))
                      (unchecked-field-set!
                       _%obj94557%_
                       _%k94562%_
                       _%hd94584%_))
                    (let ((__tmp98287
                           (let ()
                             (declare (not safe))
                             (##fx+ _%k94562%_ '1))))
                      (declare (not safe))
                      (_%lp94560%_ __tmp98287 _%rest94583%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest9456494572%_))
                (let ((_%hd9456994589%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9456494572%_)))
                      (_%tl9457094591%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9456494572%_))))
                  (let* ((_%hd94594%_ _%hd9456994589%_)
                         (_%rest94596%_ _%tl9457094591%_))
                    (declare (not safe))
                    (_%K9456894586%_ _%rest94596%_ _%hd94594%_)))
                (let () (declare (not safe)) (_%else9456694580%_)))))))
    (define class-instance-init!
      (lambda (_%obj94542%_ . _%args94543%_)
        (let ()
          (if '#t
              (let ((_%obj94547%_ _%obj94542%_))
                (declare (not safe))
                (##apply __class-instance-init! _%obj94547%_ _%args94543%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
                 'contract:
                 'true
                 'value:
                 _%obj94542%_)
                '#!void)))))
    (define __class-instance-init!
      (lambda (_%obj94529%_ . _%args94530%_)
        (let ((_%obj94533%_ _%obj94529%_))
          (let ((__tmp98288
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj94533%_))))
            (declare (not safe))
            (___class-instance-init! __tmp98288 _%obj94533%_ _%args94530%_))
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass94471%_ _%obj94472%_ _%args94473%_)
        (let _%lp94475%_ ((_%rest94477%_ _%args94473%_))
          (let* ((_%rest9447894488%_ _%rest94477%_)
                 (_%else9448094496%_
                  (lambda ()
                    (if (let () (declare (not safe)) (null? _%rest94477%_))
                        _%obj94472%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass94471%_
                               'rest:
                               _%rest94477%_))))
                 (_%K9448294510%_
                  (lambda (_%rest94499%_ _%val94500%_ _%key94501%_)
                    (if (let ((__tmp98289
                               (let ()
                                 (declare (not safe))
                                 (keyword? _%key94501%_))))
                          (declare (not safe))
                          (not __tmp98289))
                        (let ()
                          (error '"non keyword slot initializer"
                                 'slot:
                                 _%key94501%_))
                        (let ((_%$e94504%_
                               (let ()
                                 (declare (not safe))
                                 (__class-slot-offset
                                  _%klass94471%_
                                  _%key94501%_))))
                          (if _%$e94504%_
                              ((lambda (_%off94507%_)
                                 (let ()
                                   (declare (not safe))
                                   (unchecked-field-set!
                                    _%obj94472%_
                                    _%off94507%_
                                    _%val94500%_))
                                 (let ()
                                   (declare (not safe))
                                   (_%lp94475%_ _%rest94499%_)))
                               _%$e94504%_)
                              (let ()
                                (error '"unknown slot"
                                       'class:
                                       _%klass94471%_
                                       'slot:
                                       _%key94501%_))))))))
            (if (let () (declare (not safe)) (##pair? _%rest9447894488%_))
                (let ((_%hd9448394513%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9447894488%_)))
                      (_%tl9448494515%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9447894488%_))))
                  (let ((_%key94518%_ _%hd9448394513%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9448494515%_))
                        (let ((_%hd9448594520%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9448494515%_)))
                              (_%tl9448694522%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9448494515%_))))
                          (let* ((_%val94525%_ _%hd9448594520%_)
                                 (_%rest94527%_ _%tl9448694522%_))
                            (declare (not safe))
                            (_%K9448294510%_
                             _%rest94527%_
                             _%val94525%_
                             _%key94518%_)))
                        (let () (declare (not safe)) (_%else9448094496%_)))))
                (let () (declare (not safe)) (_%else9448094496%_)))))))
    (define __metaclass-instance-init!
      (lambda (_%klass94467%_ _%obj94468%_ _%args94469%_)
        (apply call-method
               _%klass94467%_
               'instance-init!
               _%obj94468%_
               _%args94469%_)))
    (define constructor-init!
      (lambda (_%klass94430%_ _%kons-id94431%_ _%obj94432%_ . _%args94433%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94430%_ 'class))
              (let ((_%klass94437%_ _%klass94430%_))
                (if (let () (declare (not safe)) (symbol? _%kons-id94431%_))
                    (let ((_%kons-id94447%_ _%kons-id94431%_))
                      (if '#t
                          (let ((_%obj94457%_ _%obj94432%_))
                            (declare (not safe))
                            (##apply __constructor-init!
                                     _%klass94437%_
                                     _%kons-id94447%_
                                     _%obj94457%_
                                     _%args94433%_))
                          (begin
                            (raise-contract-violation-error
                             '"contract violation"
                             'context:
                             '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                             'contract:
                             'true
                             'value:
                             _%obj94432%_)
                            '#!void)))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                       'contract:
                       'symbol?
                       'value:
                       _%kons-id94431%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94430%_)
                '#!void)))))
    (define __constructor-init!
      (lambda (_%klass94399%_ _%kons-id94400%_ _%obj94401%_ . _%args94402%_)
        (let ((_%klass94405%_ _%klass94399%_))
          (let* ((_%kons-id94413%_ _%kons-id94400%_)
                 (_%obj94421%_ _%obj94401%_))
            (let ()
              (declare (not safe))
              (___constructor-init!
               _%klass94405%_
               _%kons-id94413%_
               _%obj94421%_
               _%args94402%_))
            '#!void))))
    (define ___constructor-init!
      (lambda (_%klass94388%_ _%kons-id94389%_ _%obj94390%_ _%args94391%_)
        (let ((_%$e94393%_
               (let ()
                 (declare (not safe))
                 (__find-method
                  _%klass94388%_
                  _%obj94390%_
                  _%kons-id94389%_))))
          (if _%$e94393%_
              ((lambda (_%kons94396%_)
                 (apply _%kons94396%_ _%obj94390%_ _%args94391%_)
                 _%obj94390%_)
               _%$e94393%_)
              (let ()
                (error '"missing constructor"
                       'class:
                       _%klass94388%_
                       'method:
                       _%kons-id94389%_))))))
    (define struct-copy
      (lambda (_%struct94374%_)
        (let ()
          (if '#t
              (let ((_%struct94378%_ _%struct94374%_))
                (declare (not safe))
                (__struct-copy _%struct94378%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
                 'contract:
                 'true
                 'value:
                 _%struct94374%_)
                '#!void)))))
    (define __struct-copy
      (lambda (_%struct94362%_)
        (let ((_%struct94365%_ _%struct94362%_))
          (declare (not safe))
          (##structure-copy _%struct94365%_))))
    (define struct->list
      (lambda (_%obj94348%_)
        (let ()
          (if '#t
              (let ((_%obj94352%_ _%obj94348%_))
                (declare (not safe))
                (__struct->list _%obj94352%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
                 'contract:
                 'true
                 'value:
                 _%obj94348%_)
                '#!void)))))
    (define __struct->list
      (lambda (_%obj94336%_)
        (let ((_%obj94339%_ _%obj94336%_))
          (declare (not safe))
          (##vector->list _%obj94339%_))))
    (define class->list
      (lambda (_%obj94322%_)
        (let ()
          (if '#t
              (let ((_%obj94326%_ _%obj94322%_))
                (declare (not safe))
                (__class->list _%obj94326%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@837.20-837.23"
                 'contract:
                 'true
                 'value:
                 _%obj94322%_)
                '#!void)))))
    (define __class->list
      (lambda (_%obj94298%_)
        (let ((_%obj94301%_ _%obj94298%_))
          (let* ((_%klass94310%_
                  (let ()
                    (declare (not safe))
                    (##structure-type _%obj94301%_)))
                 (_%slot-vector94312%_
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%klass94310%_ '7 '#f '#f))))
            (let _%loop94314%_ ((_%index94316%_
                                 (let ((__tmp98295
                                        (let ()
                                          (declare (not safe))
                                          (##vector-length
                                           _%slot-vector94312%_))))
                                   (declare (not safe))
                                   (##fx- __tmp98295 '1)))
                                (_%plist94317%_ '()))
              (let ()
                (if (let () (declare (not safe)) (##fx< _%index94316%_ '1))
                    (cons _%klass94310%_ _%plist94317%_)
                    (let ((_%slot94320%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref
                              _%slot-vector94312%_
                              _%index94316%_))))
                      (let ((__tmp98294
                             (let ()
                               (declare (not safe))
                               (##fx- _%index94316%_ '1)))
                            (__tmp98290
                             (let ((__tmp98293
                                    (let ()
                                      (declare (not safe))
                                      (symbol->keyword _%slot94320%_)))
                                   (__tmp98291
                                    (let ((__tmp98292
                                           (let ()
                                             (declare (not safe))
                                             (unchecked-field-ref
                                              _%obj94301%_
                                              _%index94316%_))))
                                      (declare (not safe))
                                      (cons __tmp98292 _%plist94317%_))))
                               (declare (not safe))
                               (cons __tmp98293 __tmp98291))))
                        (declare (not safe))
                        (_%loop94314%_ __tmp98294 __tmp98290))))))))))
    (define call-method
      (lambda (_%obj94282%_ _%id94283%_ . _%args94284%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id94283%_))
              (let ((_%id94288%_ _%id94283%_))
                (declare (not safe))
                (##apply __call-method _%obj94282%_ _%id94288%_ _%args94284%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@852.24-852.26"
                 'contract:
                 'symbol?
                 'value:
                 _%id94283%_)
                '#!void)))))
    (define __call-method
      (lambda (_%obj94251%_ _%id94252%_ . _%args94253%_)
        (let ()
          (let* ((_%id94256%_ _%id94252%_)
                 (_%$e94265%_
                  (let ()
                    (declare (not safe))
                    (__method-ref _%obj94251%_ _%id94256%_))))
            (if _%$e94265%_
                ((lambda (_%method94268%_)
                   (let ((_%method94270%_ _%method94268%_))
                     (apply _%method94270%_ _%obj94251%_ _%args94253%_)))
                 _%$e94265%_)
                (let ()
                  (error '"cannot find method"
                         'object:
                         _%obj94251%_
                         'method:
                         _%id94256%_)))))))
    (define method-ref
      (lambda (_%obj94236%_ _%id94237%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id94237%_))
              (let ((_%id94241%_ _%id94237%_))
                (declare (not safe))
                (__method-ref _%obj94236%_ _%id94241%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@876.23-876.25"
                 'contract:
                 'symbol?
                 'value:
                 _%id94237%_)
                '#!void)))))
    (define __method-ref
      (lambda (_%obj94223%_ _%id94224%_)
        (let ()
          (let* ((_%id94227%_ _%id94224%_)
                 (__tmp98296
                  (let () (declare (not safe)) (class-of _%obj94223%_))))
            (declare (not safe))
            (__find-method __tmp98296 _%obj94223%_ _%id94227%_)))))
    (define checked-method-ref
      (lambda (_%obj94216%_ _%id94217%_)
        (let ((_%$e94220%_
               (let ()
                 (declare (not safe))
                 (method-ref _%obj94216%_ _%id94217%_))))
          (if _%$e94220%_
              _%$e94220%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj94216%_
                       'method:
                       _%id94217%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj94201%_ _%id94202%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id94202%_))
              (let ((_%id94206%_ _%id94202%_))
                (declare (not safe))
                (__bound-method-ref _%obj94201%_ _%id94206%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@884.29-884.31"
                 'contract:
                 'symbol?
                 'value:
                 _%id94202%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj94169%_ _%id94170%_)
        (let ()
          (let* ((_%id94173%_ _%id94170%_)
                 (_%$e94182%_
                  (let ()
                    (declare (not safe))
                    (__method-ref _%obj94169%_ _%id94173%_))))
            (if _%$e94182%_
                ((lambda (_%method94185%_)
                   (let ((_%method94187%_ _%method94185%_))
                     (lambda _%args94198%_
                       (apply _%method94187%_ _%obj94169%_ _%args94198%_))))
                 _%$e94182%_)
                (let () '#f))))))
    (define checked-bound-method-ref
      (lambda (_%obj94154%_ _%id94155%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id94155%_))
              (let ((_%id94159%_ _%id94155%_))
                (declare (not safe))
                (__checked-bound-method-ref _%obj94154%_ _%id94159%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@893.37-893.39"
                 'contract:
                 'symbol?
                 'value:
                 _%id94155%_)
                '#!void)))))
    (define __checked-bound-method-ref
      (lambda (_%obj94137%_ _%id94138%_)
        (let ()
          (let* ((_%id94141%_ _%id94138%_)
                 (_%method94150%_
                  (let ()
                    (declare (not safe))
                    (checked-method-ref _%obj94137%_ _%id94141%_))))
            (lambda _%args94152%_
              (apply _%method94150%_ _%obj94137%_ _%args94152%_))))))
    (define find-method
      (lambda (_%klass94111%_ _%obj94112%_ _%id94113%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94111%_ 'class))
              (let ((_%klass94117%_ _%klass94111%_))
                (if (let () (declare (not safe)) (symbol? _%id94113%_))
                    (let ((_%id94127%_ _%id94113%_))
                      (declare (not safe))
                      (__find-method _%klass94117%_ _%obj94112%_ _%id94127%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@898.41-898.43"
                       'contract:
                       'symbol?
                       'value:
                       _%id94113%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@898.20-898.25"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94111%_)
                '#!void)))))
    (define __find-method
      (lambda (_%klass94084%_ _%obj94085%_ _%id94086%_)
        (let ((_%klass94089%_ _%klass94084%_))
          (let* ((_%id94097%_ _%id94086%_)
                 (_%$e94106%_
                  (let ()
                    (declare (not safe))
                    (__direct-method-ref
                     _%klass94089%_
                     _%obj94085%_
                     _%id94097%_))))
            (if _%$e94106%_
                _%$e94106%_
                (if (let ()
                      (declare (not safe))
                      (__class-type-sealed? _%klass94089%_))
                    (let () '#f)
                    (let ()
                      (declare (not safe))
                      (__mixin-method-ref
                       _%klass94089%_
                       _%obj94085%_
                       _%id94097%_))))))))
    (define mixin-find-method
      (lambda (_%mixins94068%_ _%obj94069%_ _%id94070%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id94070%_))
              (let ((_%id94074%_ _%id94070%_))
                (declare (not safe))
                (__mixin-find-method _%mixins94068%_ _%obj94069%_ _%id94074%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@906.37-906.39"
                 'contract:
                 'symbol?
                 'value:
                 _%id94070%_)
                '#!void)))))
    (define __mixin-find-method
      (lambda (_%mixins94050%_ _%obj94051%_ _%id94052%_)
        (let ()
          (let* ((_%id94055%_ _%id94052%_)
                 (__tmp98297
                  (lambda (_%g9406394065%_)
                    (let ()
                      (declare (not safe))
                      (direct-method-ref
                       _%g9406394065%_
                       _%obj94051%_
                       _%id94055%_)))))
            (declare (not safe))
            (__ormap1 __tmp98297 _%mixins94050%_)))))
    (define direct-method-ref
      (lambda (_%klass94024%_ _%obj94025%_ _%id94026%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass94024%_ 'class))
              (let ((_%klass94030%_ _%klass94024%_))
                (if (let () (declare (not safe)) (symbol? _%id94026%_))
                    (let ((_%id94040%_ _%id94026%_))
                      (declare (not safe))
                      (__direct-method-ref
                       _%klass94030%_
                       _%obj94025%_
                       _%id94040%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@909.47-909.49"
                       'contract:
                       'symbol?
                       'value:
                       _%id94026%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@909.26-909.31"
                 'contract:
                 'class-type?
                 'value:
                 _%klass94024%_)
                '#!void)))))
    (define __direct-method-ref
      (lambda (_%klass93978%_ _%obj93979%_ _%id93980%_)
        (let ()
          (let* ((_%klass93983%_ _%klass93978%_) (_%id93991%_ _%id93980%_))
            (letrec ((_%metaclass-resolve-method94000%_
                      (lambda ()
                        (let ((__method98176
                               (let ()
                                 (declare (not safe))
                                 (__method-ref
                                  _%klass93983%_
                                  'direct-method-ref))))
                          (if __method98176
                              (__method98176
                               _%klass93983%_
                               _%obj93979%_
                               _%id93991%_)
                              (error '"Missing method"
                                     _%klass93983%_
                                     'direct-method-ref)))))
                     (_%metaclass-resolve-method!94001%_
                      (lambda ()
                        (let ((_%method94021%_
                               (let ()
                                 (declare (not safe))
                                 (_%metaclass-resolve-method94000%_))))
                          (let ((__tmp98299
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass93983%_
                                    '11
                                    '#f
                                    '#f)))
                                (__tmp98298
                                 (if _%method94021%_ 'resolved 'unknown)))
                            (declare (not safe))
                            (symbolic-table-set!
                             __tmp98299
                             _%id93991%_
                             __tmp98298))
                          _%method94021%_))))
              (let ((_%$e94003%_
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%klass93983%_
                        '11
                        '#f
                        '#f))))
                (if _%$e94003%_
                    ((lambda (_%ht94006%_)
                       (let ((_%method94008%_
                              (let ()
                                (declare (not safe))
                                (symbolic-table-ref
                                 _%ht94006%_
                                 _%id93991%_
                                 '#f))))
                         (if (let ()
                               (declare (not safe))
                               (procedure? _%method94008%_))
                             (let () _%method94008%_)
                             (if (let ()
                                   (declare (not safe))
                                   (__class-type-metaclass? _%klass93983%_))
                                 (let ((_%$e94012%_ _%method94008%_))
                                   (if (eq? 'resolved _%$e94012%_)
                                       (let ()
                                         (declare (not safe))
                                         (_%metaclass-resolve-method94000%_))
                                       (if (eq? 'unknown _%$e94012%_)
                                           '#f
                                           (let ()
                                             (declare (not safe))
                                             (_%metaclass-resolve-method!94001%_)))))
                                 (let () '#f)))))
                     _%$e94003%_)
                    (if (let ()
                          (declare (not safe))
                          (__class-type-metaclass? _%klass93983%_))
                        (let ((_%tab94017%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0))))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _%klass93983%_
                             _%tab94017%_
                             '11
                             '#f
                             '#f))
                          (let ()
                            (declare (not safe))
                            (_%metaclass-resolve-method!94001%_)))
                        (let () '#f)))))))))
    (define mixin-method-ref
      (lambda (_%klass93952%_ _%obj93953%_ _%id93954%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93952%_ 'class))
              (let ((_%klass93958%_ _%klass93952%_))
                (if (let () (declare (not safe)) (symbol? _%id93954%_))
                    (let ((_%id93968%_ _%id93954%_))
                      (declare (not safe))
                      (__mixin-method-ref
                       _%klass93958%_
                       _%obj93953%_
                       _%id93968%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@939.46-939.48"
                       'contract:
                       'symbol?
                       'value:
                       _%id93954%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@939.25-939.30"
                 'contract:
                 'class-type?
                 'value:
                 _%klass93952%_)
                '#!void)))))
    (define __mixin-method-ref
      (lambda (_%klass93930%_ _%obj93931%_ _%id93932%_)
        (let ((_%klass93935%_ _%klass93930%_))
          (let* ((_%id93943%_ _%id93932%_)
                 (__tmp98300
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%klass93935%_ '6 '#f '#f))))
            (declare (not safe))
            (__mixin-find-method __tmp98300 _%obj93931%_ _%id93943%_)))))
    (define bind-method!__%
      (lambda (_%klass93889%_ _%id93890%_ _%proc93891%_ _%rebind?93892%_)
        (let ()
          (if (let () (declare (not safe)) (symbol? _%id93890%_))
              (let ((_%id93896%_ _%id93890%_))
                (if (let () (declare (not safe)) (procedure? _%proc93891%_))
                    (let ((_%proc93906%_ _%proc93891%_))
                      (declare (not safe))
                      (__bind-method!__%
                       _%klass93889%_
                       _%id93896%_
                       _%proc93906%_
                       _%rebind?93892%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@942.42-942.46"
                       'contract:
                       'procedure?
                       'value:
                       _%proc93891%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@942.27-942.29"
                 'contract:
                 'symbol?
                 'value:
                 _%id93890%_)
                '#!void)))))
    (define bind-method!__0
      (lambda (_%klass93919%_ _%id93920%_ _%proc93921%_)
        (let ((_%rebind?93923%_ '#f))
          (declare (not safe))
          (bind-method!__%
           _%klass93919%_
           _%id93920%_
           _%proc93921%_
           _%rebind?93923%_))))
    (define bind-method!
      (lambda _g98302_
        (let ((_g98301_ (let () (declare (not safe)) (##length _g98302_))))
          (cond ((let () (declare (not safe)) (##fx= _g98301_ 3))
                 (apply (lambda (_%klass93919%_ _%id93920%_ _%proc93921%_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__0
                             _%klass93919%_
                             _%id93920%_
                             _%proc93921%_)))
                        _g98302_))
                ((let () (declare (not safe)) (##fx= _g98301_ 4))
                 (apply (lambda (_%klass93925%_
                                 _%id93926%_
                                 _%proc93927%_
                                 _%rebind?93928%_)
                          (let ()
                            (declare (not safe))
                            (bind-method!__%
                             _%klass93925%_
                             _%id93926%_
                             _%proc93927%_
                             _%rebind?93928%_)))
                        _g98302_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g98302_))))))
    (define __bind-method!__%
      (lambda (_%klass93840%_ _%id93841%_ _%proc93842%_ _%rebind?93843%_)
        (let ()
          (let* ((_%id93846%_ _%id93841%_) (_%proc93854%_ _%proc93842%_))
            (letrec ((_%bind!93863%_
                      (lambda (_%ht93872%_)
                        (if (and (let ()
                                   (declare (not safe))
                                   (not _%rebind?93843%_))
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%ht93872%_
                                    _%id93846%_
                                    '#f)))
                            (error '"method already bound"
                                   'class:
                                   _%klass93840%_
                                   'method:
                                   _%id93846%_)
                            (begin
                              (let ()
                                (declare (not safe))
                                (symbolic-table-set!
                                 _%ht93872%_
                                 _%id93846%_
                                 _%proc93854%_))
                              '#!void)))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass93840%_ 'class))
                  (let ((_%ht93866%_
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%klass93840%_
                            '11
                            '#f
                            '#f))))
                    (if _%ht93866%_
                        (let ()
                          (declare (not safe))
                          (_%bind!93863%_ _%ht93866%_))
                        (let ((_%ht93868%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0))))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _%klass93840%_
                             _%ht93868%_
                             '11
                             '#f
                             '#f))
                          (let ()
                            (declare (not safe))
                            (_%bind!93863%_ _%ht93868%_)))))
                  (if (let () (declare (not safe)) (##type? _%klass93840%_))
                      (let ((__tmp98303
                             (let ()
                               (declare (not safe))
                               (__shadow-class _%klass93840%_))))
                        (declare (not safe))
                        (__bind-method!
                         __tmp98303
                         _%id93846%_
                         _%proc93854%_
                         _%rebind?93843%_))
                      (let ()
                        (error '"bad class; expected class or builtin type"
                               _%klass93840%_)))))))))
    (define __bind-method!__0
      (lambda (_%klass93877%_ _%id93878%_ _%proc93879%_)
        (let ((_%rebind?93881%_ '#f))
          (declare (not safe))
          (__bind-method!__%
           _%klass93877%_
           _%id93878%_
           _%proc93879%_
           _%rebind?93881%_))))
    (define __bind-method!
      (lambda _g98305_
        (let ((_g98304_ (let () (declare (not safe)) (##length _g98305_))))
          (cond ((let () (declare (not safe)) (##fx= _g98304_ 3))
                 (apply (lambda (_%klass93877%_ _%id93878%_ _%proc93879%_)
                          (let ()
                            (declare (not safe))
                            (__bind-method!__0
                             _%klass93877%_
                             _%id93878%_
                             _%proc93879%_)))
                        _g98305_))
                ((let () (declare (not safe)) (##fx= _g98304_ 4))
                 (apply (lambda (_%klass93883%_
                                 _%id93884%_
                                 _%proc93885%_
                                 _%rebind?93886%_)
                          (let ()
                            (declare (not safe))
                            (__bind-method!__%
                             _%klass93883%_
                             _%id93884%_
                             _%proc93885%_
                             _%rebind?93886%_)))
                        _g98305_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g98305_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint93820%_ _%seed93822%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint93820%_
           procedure-hash
           eq?
           _%seed93822%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint93828%_ '#f) (_%seed93830%_ '0))
          (declare (not safe))
          (make-method-specializer-table__%
           _%size-hint93828%_
           _%seed93830%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint93832%_)
        (let ((_%seed93834%_ '0))
          (declare (not safe))
          (make-method-specializer-table__%
           _%size-hint93832%_
           _%seed93834%_))))
    (define make-method-specializer-table
      (lambda _g98307_
        (let ((_g98306_ (let () (declare (not safe)) (##length _g98307_))))
          (cond ((let () (declare (not safe)) (##fx= _g98306_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__0)))
                        _g98307_))
                ((let () (declare (not safe)) (##fx= _g98306_ 1))
                 (apply (lambda (_%size-hint93832%_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__1
                             _%size-hint93832%_)))
                        _g98307_))
                ((let () (declare (not safe)) (##fx= _g98306_ 2))
                 (apply (lambda (_%size-hint93836%_ _%seed93837%_)
                          (let ()
                            (declare (not safe))
                            (make-method-specializer-table__%
                             _%size-hint93836%_
                             _%seed93837%_)))
                        _g98307_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g98307_))))))
    (define method-specializer-table-ref
      (lambda (_%tab93773%_ _%key93774%_ _%default93775%_)
        (let ((_%table93777%_
               (let () (declare (not safe)) (&raw-table-table _%tab93773%_)))
              (_%seed93778%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93773%_))))
          (let* ((_%h93780%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93774%_))
                         _%seed93778%_))
                 (_%size93783%_ (vector-length _%table93777%_))
                 (_%entries93786%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93783%_ '2)))
                 (_%start93789%_
                  (let ((__tmp98308
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93780%_ _%entries93786%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98308 '1))))
            (let _%loop93793%_ ((_%probe93796%_ _%start93789%_)
                                (_%i93798%_ '1)
                                (_%deleted93800%_ '#f))
              (let ((_%k93803%_ (vector-ref _%table93777%_ _%probe93796%_)))
                (if (eq? _%k93803%_ (macro-unused-obj))
                    (let () _%default93775%_)
                    (if (eq? _%k93803%_ (macro-deleted-obj))
                        (let ((__tmp98311
                               (let ((_%next-probe93808%_
                                      (fx+ _%start93789%_
                                           _%i93798%_
                                           (fx* _%i93798%_ _%i93798%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93808%_
                                  _%size93783%_)))
                              (__tmp98310
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93798%_ '1)))
                              (__tmp98309
                               (let ((_%$e93811%_ _%deleted93800%_))
                                 (if _%$e93811%_ _%$e93811%_ _%probe93796%_))))
                          (declare (not safe))
                          (_%loop93793%_ __tmp98311 __tmp98310 __tmp98309))
                        (if (eq? _%key93774%_ _%k93803%_)
                            (let ()
                              (vector-ref
                               _%table93777%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93796%_ '1))))
                            (let ((__tmp98313
                                   (let ((_%next-probe93816%_
                                          (fx+ _%start93789%_
                                               _%i93798%_
                                               (fx* _%i93798%_ _%i93798%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93816%_
                                      _%size93783%_)))
                                  (__tmp98312
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93798%_ '1))))
                              (declare (not safe))
                              (_%loop93793%_
                               __tmp98313
                               __tmp98312
                               _%deleted93800%_)))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab93769%_ _%key93770%_ _%value93771%_)
        (if (let ((__tmp98316
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93769%_)))
                  (__tmp98314
                   (let ((__tmp98315
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93769%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp98315 '4))))
              (declare (not safe))
              (##fx< __tmp98316 __tmp98314))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93769%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-set!
           _%tab93769%_
           _%key93770%_
           _%value93771%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab93720%_ _%key93721%_ _%value93722%_)
        (let ((_%table93725%_
               (let () (declare (not safe)) (&raw-table-table _%tab93720%_)))
              (_%seed93726%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93720%_))))
          (let* ((_%h93728%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93721%_))
                         _%seed93726%_))
                 (_%size93731%_ (vector-length _%table93725%_))
                 (_%entries93734%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93731%_ '2)))
                 (_%start93737%_
                  (let ((__tmp98317
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93728%_ _%entries93734%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98317 '1))))
            (let _%loop93741%_ ((_%probe93744%_ _%start93737%_)
                                (_%i93746%_ '1)
                                (_%deleted93748%_ '#f))
              (let ((_%k93751%_ (vector-ref _%table93725%_ _%probe93744%_)))
                (if (eq? _%k93751%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted93748%_
                          (begin
                            (vector-set!
                             _%table93725%_
                             _%deleted93748%_
                             _%key93721%_)
                            (vector-set!
                             _%table93725%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted93748%_ '1))
                             _%value93722%_)
                            ((lambda ()
                               (let ((__tmp98318
                                      (let ((__tmp98319
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93720%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98319 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93720%_
                                  __tmp98318)))))
                          (begin
                            (vector-set!
                             _%table93725%_
                             _%probe93744%_
                             _%key93721%_)
                            (vector-set!
                             _%table93725%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93744%_ '1))
                             _%value93722%_)
                            ((lambda ()
                               (let ((__tmp98320
                                      (let ((__tmp98321
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab93720%_))))
                                        (declare (not safe))
                                        (##fx- __tmp98321 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab93720%_
                                  __tmp98320))
                               (let ((__tmp98322
                                      (let ((__tmp98323
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93720%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98323 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93720%_
                                  __tmp98322)))))))
                    (if (eq? _%k93751%_ (macro-deleted-obj))
                        (let ((__tmp98326
                               (let ((_%next-probe93758%_
                                      (fx+ _%start93737%_
                                           _%i93746%_
                                           (fx* _%i93746%_ _%i93746%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93758%_
                                  _%size93731%_)))
                              (__tmp98325
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93746%_ '1)))
                              (__tmp98324
                               (let ((_%$e93761%_ _%deleted93748%_))
                                 (if _%$e93761%_ _%$e93761%_ _%probe93744%_))))
                          (declare (not safe))
                          (_%loop93741%_ __tmp98326 __tmp98325 __tmp98324))
                        (if (eq? _%key93721%_ _%k93751%_)
                            (let ()
                              (vector-set!
                               _%table93725%_
                               _%probe93744%_
                               _%key93721%_)
                              (vector-set!
                               _%table93725%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93744%_ '1))
                               _%value93722%_))
                            (let ((__tmp98328
                                   (let ((_%next-probe93766%_
                                          (fx+ _%start93737%_
                                               _%i93746%_
                                               (fx* _%i93746%_ _%i93746%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93766%_
                                      _%size93731%_)))
                                  (__tmp98327
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93746%_ '1))))
                              (declare (not safe))
                              (_%loop93741%_
                               __tmp98328
                               __tmp98327
                               _%deleted93748%_)))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab93715%_
               _%key93716%_
               _%method-specializer-table-update!93717%_
               _%default93718%_)
        (if (let ((__tmp98331
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93715%_)))
                  (__tmp98329
                   (let ((__tmp98330
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93715%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp98330 '4))))
              (declare (not safe))
              (##fx< __tmp98331 __tmp98329))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93715%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__method-specializer-table-update!
           _%tab93715%_
           _%key93716%_
           _%method-specializer-table-update!93717%_
           _%default93718%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab93665%_
               _%key93666%_
               _%method-specializer-table-update!93667%_
               _%default93668%_)
        (let ((_%table93671%_
               (let () (declare (not safe)) (&raw-table-table _%tab93665%_)))
              (_%seed93672%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93665%_))))
          (let* ((_%h93674%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93666%_))
                         _%seed93672%_))
                 (_%size93677%_ (vector-length _%table93671%_))
                 (_%entries93680%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93677%_ '2)))
                 (_%start93683%_
                  (let ((__tmp98332
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93674%_ _%entries93680%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98332 '1))))
            (let _%loop93687%_ ((_%probe93690%_ _%start93683%_)
                                (_%i93692%_ '1)
                                (_%deleted93694%_ '#f))
              (let ((_%k93697%_ (vector-ref _%table93671%_ _%probe93690%_)))
                (if (eq? _%k93697%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted93694%_
                          (begin
                            (vector-set!
                             _%table93671%_
                             _%deleted93694%_
                             _%key93666%_)
                            (vector-set!
                             _%table93671%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted93694%_ '1))
                             (_%method-specializer-table-update!93667%_
                              _%default93668%_))
                            ((lambda ()
                               (let ((__tmp98333
                                      (let ((__tmp98334
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93665%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98334 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93665%_
                                  __tmp98333)))))
                          (begin
                            (vector-set!
                             _%table93671%_
                             _%probe93690%_
                             _%key93666%_)
                            (vector-set!
                             _%table93671%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93690%_ '1))
                             (_%method-specializer-table-update!93667%_
                              _%default93668%_))
                            ((lambda ()
                               (let ((__tmp98335
                                      (let ((__tmp98336
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab93665%_))))
                                        (declare (not safe))
                                        (##fx- __tmp98336 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab93665%_
                                  __tmp98335))
                               (let ((__tmp98337
                                      (let ((__tmp98338
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93665%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98338 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93665%_
                                  __tmp98337)))))))
                    (if (eq? _%k93697%_ (macro-deleted-obj))
                        (let ((__tmp98341
                               (let ((_%next-probe93704%_
                                      (fx+ _%start93683%_
                                           _%i93692%_
                                           (fx* _%i93692%_ _%i93692%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93704%_
                                  _%size93677%_)))
                              (__tmp98340
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93692%_ '1)))
                              (__tmp98339
                               (let ((_%$e93707%_ _%deleted93694%_))
                                 (if _%$e93707%_ _%$e93707%_ _%probe93690%_))))
                          (declare (not safe))
                          (_%loop93687%_ __tmp98341 __tmp98340 __tmp98339))
                        (if (eq? _%key93666%_ _%k93697%_)
                            (let ()
                              (vector-set!
                               _%table93671%_
                               _%probe93690%_
                               _%key93666%_)
                              (vector-set!
                               _%table93671%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93690%_ '1))
                               (_%method-specializer-table-update!93667%_
                                (vector-ref
                                 _%table93671%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe93690%_ '1))))))
                            (let ((__tmp98343
                                   (let ((_%next-probe93712%_
                                          (fx+ _%start93683%_
                                               _%i93692%_
                                               (fx* _%i93692%_ _%i93692%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93712%_
                                      _%size93677%_)))
                                  (__tmp98342
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93692%_ '1))))
                              (declare (not safe))
                              (_%loop93687%_
                               __tmp98343
                               __tmp98342
                               _%deleted93694%_)))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab93620%_ _%key93622%_)
        (let ((_%table93625%_
               (let () (declare (not safe)) (&raw-table-table _%tab93620%_)))
              (_%seed93627%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93620%_))))
          (let* ((_%h93630%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93622%_))
                         _%seed93627%_))
                 (_%size93633%_ (vector-length _%table93625%_))
                 (_%entries93636%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93633%_ '2)))
                 (_%start93639%_
                  (let ((__tmp98344
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93630%_ _%entries93636%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98344 '1))))
            (let _%loop93643%_ ((_%probe93646%_ _%start93639%_)
                                (_%i93648%_ '1))
              (let ((_%k93651%_ (vector-ref _%table93625%_ _%probe93646%_)))
                (if (eq? _%k93651%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k93651%_ (macro-deleted-obj))
                        (let ((__tmp98346
                               (let ((_%next-probe93656%_
                                      (fx+ _%start93639%_
                                           _%i93648%_
                                           (fx* _%i93648%_ _%i93648%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93656%_
                                  _%size93633%_)))
                              (__tmp98345
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93648%_ '1))))
                          (declare (not safe))
                          (_%loop93643%_ __tmp98346 __tmp98345))
                        (if (eq? _%key93622%_ _%k93651%_)
                            (let ()
                              (vector-set!
                               _%table93625%_
                               _%probe93646%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93625%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93646%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp98347
                                        (let ((__tmp98348
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab93620%_))))
                                          (declare (not safe))
                                          (##fx- __tmp98348 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab93620%_
                                    __tmp98347)))))
                            (let ((__tmp98350
                                   (let ((_%next-probe93662%_
                                          (fx+ _%start93639%_
                                               _%i93648%_
                                               (fx* _%i93648%_ _%i93648%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93662%_
                                      _%size93633%_)))
                                  (__tmp98349
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93648%_ '1))))
                              (declare (not safe))
                              (_%loop93643%_ __tmp98350 __tmp98349)))))))))))
    (define __method-specializers
      (let () (declare (not safe)) (make-method-specializer-table__% '#f '0)))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc93611%_ _%specializer93612%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93616%_ ()
            (if (let ((__tmp98351
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp98351 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again93616%_))))))
        (let ()
          (declare (not safe))
          (method-specializer-table-set!
           __method-specializers
           _%method-proc93611%_
           _%specializer93612%_))
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc93601%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93605%_ ()
            (if (let ((__tmp98352
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp98352 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again93605%_))))))
        (let ((_%specializer93609%_
               (let ()
                 (declare (not safe))
                 (method-specializer-table-ref
                  __method-specializers
                  _%proc93601%_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer93609%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass93599%_)
        (let ((__tmp98353
               (let () (declare (not safe)) (##type-id _%klass93599%_))))
          (declare (not safe))
          (symbolic-hash __tmp98353))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint93580%_ _%seed93582%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint93580%_
           __class-specializer-hash-key
           eq?
           _%seed93582%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint93588%_ '#f) (_%seed93590%_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _%size-hint93588%_ _%seed93590%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint93592%_)
        (let ((_%seed93594%_ '0))
          (declare (not safe))
          (make-class-specializer-table__% _%size-hint93592%_ _%seed93594%_))))
    (define make-class-specializer-table
      (lambda _g98355_
        (let ((_g98354_ (let () (declare (not safe)) (##length _g98355_))))
          (cond ((let () (declare (not safe)) (##fx= _g98354_ 0))
                 (apply (lambda ()
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__0)))
                        _g98355_))
                ((let () (declare (not safe)) (##fx= _g98354_ 1))
                 (apply (lambda (_%size-hint93592%_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__1
                             _%size-hint93592%_)))
                        _g98355_))
                ((let () (declare (not safe)) (##fx= _g98354_ 2))
                 (apply (lambda (_%size-hint93596%_ _%seed93597%_)
                          (let ()
                            (declare (not safe))
                            (make-class-specializer-table__%
                             _%size-hint93596%_
                             _%seed93597%_)))
                        _g98355_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g98355_))))))
    (define class-specializer-table-ref
      (lambda (_%tab93533%_ _%key93534%_ _%default93535%_)
        (let ((_%table93537%_
               (let () (declare (not safe)) (&raw-table-table _%tab93533%_)))
              (_%seed93538%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93533%_))))
          (let* ((_%h93540%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key93534%_))
                         _%seed93538%_))
                 (_%size93543%_ (vector-length _%table93537%_))
                 (_%entries93546%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93543%_ '2)))
                 (_%start93549%_
                  (let ((__tmp98356
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93540%_ _%entries93546%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98356 '1))))
            (let _%loop93553%_ ((_%probe93556%_ _%start93549%_)
                                (_%i93558%_ '1)
                                (_%deleted93560%_ '#f))
              (let ((_%k93563%_ (vector-ref _%table93537%_ _%probe93556%_)))
                (if (eq? _%k93563%_ (macro-unused-obj))
                    (let () _%default93535%_)
                    (if (eq? _%k93563%_ (macro-deleted-obj))
                        (let ((__tmp98359
                               (let ((_%next-probe93568%_
                                      (fx+ _%start93549%_
                                           _%i93558%_
                                           (fx* _%i93558%_ _%i93558%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93568%_
                                  _%size93543%_)))
                              (__tmp98358
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93558%_ '1)))
                              (__tmp98357
                               (let ((_%$e93571%_ _%deleted93560%_))
                                 (if _%$e93571%_ _%$e93571%_ _%probe93556%_))))
                          (declare (not safe))
                          (_%loop93553%_ __tmp98359 __tmp98358 __tmp98357))
                        (if (eq? _%key93534%_ _%k93563%_)
                            (let ()
                              (vector-ref
                               _%table93537%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93556%_ '1))))
                            (let ((__tmp98361
                                   (let ((_%next-probe93576%_
                                          (fx+ _%start93549%_
                                               _%i93558%_
                                               (fx* _%i93558%_ _%i93558%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93576%_
                                      _%size93543%_)))
                                  (__tmp98360
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93558%_ '1))))
                              (declare (not safe))
                              (_%loop93553%_
                               __tmp98361
                               __tmp98360
                               _%deleted93560%_)))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab93529%_ _%key93530%_ _%value93531%_)
        (if (let ((__tmp98364
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93529%_)))
                  (__tmp98362
                   (let ((__tmp98363
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93529%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp98363 '4))))
              (declare (not safe))
              (##fx< __tmp98364 __tmp98362))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93529%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-set!
           _%tab93529%_
           _%key93530%_
           _%value93531%_))))
    (define __class-specializer-table-set!
      (lambda (_%tab93480%_ _%key93481%_ _%value93482%_)
        (let ((_%table93485%_
               (let () (declare (not safe)) (&raw-table-table _%tab93480%_)))
              (_%seed93486%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93480%_))))
          (let* ((_%h93488%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key93481%_))
                         _%seed93486%_))
                 (_%size93491%_ (vector-length _%table93485%_))
                 (_%entries93494%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93491%_ '2)))
                 (_%start93497%_
                  (let ((__tmp98365
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93488%_ _%entries93494%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98365 '1))))
            (let _%loop93501%_ ((_%probe93504%_ _%start93497%_)
                                (_%i93506%_ '1)
                                (_%deleted93508%_ '#f))
              (let ((_%k93511%_ (vector-ref _%table93485%_ _%probe93504%_)))
                (if (eq? _%k93511%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted93508%_
                          (begin
                            (vector-set!
                             _%table93485%_
                             _%deleted93508%_
                             _%key93481%_)
                            (vector-set!
                             _%table93485%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted93508%_ '1))
                             _%value93482%_)
                            ((lambda ()
                               (let ((__tmp98366
                                      (let ((__tmp98367
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93480%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98367 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93480%_
                                  __tmp98366)))))
                          (begin
                            (vector-set!
                             _%table93485%_
                             _%probe93504%_
                             _%key93481%_)
                            (vector-set!
                             _%table93485%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93504%_ '1))
                             _%value93482%_)
                            ((lambda ()
                               (let ((__tmp98368
                                      (let ((__tmp98369
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab93480%_))))
                                        (declare (not safe))
                                        (##fx- __tmp98369 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab93480%_
                                  __tmp98368))
                               (let ((__tmp98370
                                      (let ((__tmp98371
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93480%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98371 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93480%_
                                  __tmp98370)))))))
                    (if (eq? _%k93511%_ (macro-deleted-obj))
                        (let ((__tmp98374
                               (let ((_%next-probe93518%_
                                      (fx+ _%start93497%_
                                           _%i93506%_
                                           (fx* _%i93506%_ _%i93506%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93518%_
                                  _%size93491%_)))
                              (__tmp98373
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93506%_ '1)))
                              (__tmp98372
                               (let ((_%$e93521%_ _%deleted93508%_))
                                 (if _%$e93521%_ _%$e93521%_ _%probe93504%_))))
                          (declare (not safe))
                          (_%loop93501%_ __tmp98374 __tmp98373 __tmp98372))
                        (if (eq? _%key93481%_ _%k93511%_)
                            (let ()
                              (vector-set!
                               _%table93485%_
                               _%probe93504%_
                               _%key93481%_)
                              (vector-set!
                               _%table93485%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93504%_ '1))
                               _%value93482%_))
                            (let ((__tmp98376
                                   (let ((_%next-probe93526%_
                                          (fx+ _%start93497%_
                                               _%i93506%_
                                               (fx* _%i93506%_ _%i93506%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93526%_
                                      _%size93491%_)))
                                  (__tmp98375
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93506%_ '1))))
                              (declare (not safe))
                              (_%loop93501%_
                               __tmp98376
                               __tmp98375
                               _%deleted93508%_)))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab93475%_
               _%key93476%_
               _%class-specializer-table-update!93477%_
               _%default93478%_)
        (if (let ((__tmp98379
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93475%_)))
                  (__tmp98377
                   (let ((__tmp98378
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93475%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp98378 '4))))
              (declare (not safe))
              (##fx< __tmp98379 __tmp98377))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93475%_))
            '#!void)
        (let ()
          (declare (not safe))
          (__class-specializer-table-update!
           _%tab93475%_
           _%key93476%_
           _%class-specializer-table-update!93477%_
           _%default93478%_))))
    (define __class-specializer-table-update!
      (lambda (_%tab93425%_
               _%key93426%_
               _%class-specializer-table-update!93427%_
               _%default93428%_)
        (let ((_%table93431%_
               (let () (declare (not safe)) (&raw-table-table _%tab93425%_)))
              (_%seed93432%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93425%_))))
          (let* ((_%h93434%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key93426%_))
                         _%seed93432%_))
                 (_%size93437%_ (vector-length _%table93431%_))
                 (_%entries93440%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93437%_ '2)))
                 (_%start93443%_
                  (let ((__tmp98380
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93434%_ _%entries93440%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98380 '1))))
            (let _%loop93447%_ ((_%probe93450%_ _%start93443%_)
                                (_%i93452%_ '1)
                                (_%deleted93454%_ '#f))
              (let ((_%k93457%_ (vector-ref _%table93431%_ _%probe93450%_)))
                (if (eq? _%k93457%_ (macro-unused-obj))
                    (let ()
                      (if _%deleted93454%_
                          (begin
                            (vector-set!
                             _%table93431%_
                             _%deleted93454%_
                             _%key93426%_)
                            (vector-set!
                             _%table93431%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%deleted93454%_ '1))
                             (_%class-specializer-table-update!93427%_
                              _%default93428%_))
                            ((lambda ()
                               (let ((__tmp98381
                                      (let ((__tmp98382
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93425%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98382 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93425%_
                                  __tmp98381)))))
                          (begin
                            (vector-set!
                             _%table93431%_
                             _%probe93450%_
                             _%key93426%_)
                            (vector-set!
                             _%table93431%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93450%_ '1))
                             (_%class-specializer-table-update!93427%_
                              _%default93428%_))
                            ((lambda ()
                               (let ((__tmp98383
                                      (let ((__tmp98384
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-free
                                                _%tab93425%_))))
                                        (declare (not safe))
                                        (##fx- __tmp98384 '1))))
                                 (declare (not safe))
                                 (&raw-table-free-set!
                                  _%tab93425%_
                                  __tmp98383))
                               (let ((__tmp98385
                                      (let ((__tmp98386
                                             (let ()
                                               (declare (not safe))
                                               (&raw-table-count
                                                _%tab93425%_))))
                                        (declare (not safe))
                                        (##fx+ __tmp98386 '1))))
                                 (declare (not safe))
                                 (&raw-table-count-set!
                                  _%tab93425%_
                                  __tmp98385)))))))
                    (if (eq? _%k93457%_ (macro-deleted-obj))
                        (let ((__tmp98389
                               (let ((_%next-probe93464%_
                                      (fx+ _%start93443%_
                                           _%i93452%_
                                           (fx* _%i93452%_ _%i93452%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93464%_
                                  _%size93437%_)))
                              (__tmp98388
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93452%_ '1)))
                              (__tmp98387
                               (let ((_%$e93467%_ _%deleted93454%_))
                                 (if _%$e93467%_ _%$e93467%_ _%probe93450%_))))
                          (declare (not safe))
                          (_%loop93447%_ __tmp98389 __tmp98388 __tmp98387))
                        (if (eq? _%key93426%_ _%k93457%_)
                            (let ()
                              (vector-set!
                               _%table93431%_
                               _%probe93450%_
                               _%key93426%_)
                              (vector-set!
                               _%table93431%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93450%_ '1))
                               (_%class-specializer-table-update!93427%_
                                (vector-ref
                                 _%table93431%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe93450%_ '1))))))
                            (let ((__tmp98391
                                   (let ((_%next-probe93472%_
                                          (fx+ _%start93443%_
                                               _%i93452%_
                                               (fx* _%i93452%_ _%i93452%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93472%_
                                      _%size93437%_)))
                                  (__tmp98390
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93452%_ '1))))
                              (declare (not safe))
                              (_%loop93447%_
                               __tmp98391
                               __tmp98390
                               _%deleted93454%_)))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab93380%_ _%key93382%_)
        (let ((_%table93385%_
               (let () (declare (not safe)) (&raw-table-table _%tab93380%_)))
              (_%seed93387%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93380%_))))
          (let* ((_%h93390%_
                  (fxxor (let ()
                           (declare (not safe))
                           (__class-specializer-hash-key _%key93382%_))
                         _%seed93387%_))
                 (_%size93393%_ (vector-length _%table93385%_))
                 (_%entries93396%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93393%_ '2)))
                 (_%start93399%_
                  (let ((__tmp98392
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93390%_ _%entries93396%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98392 '1))))
            (let _%loop93403%_ ((_%probe93406%_ _%start93399%_)
                                (_%i93408%_ '1))
              (let ((_%k93411%_ (vector-ref _%table93385%_ _%probe93406%_)))
                (if (eq? _%k93411%_ (macro-unused-obj))
                    (let () '#!void)
                    (if (eq? _%k93411%_ (macro-deleted-obj))
                        (let ((__tmp98394
                               (let ((_%next-probe93416%_
                                      (fx+ _%start93399%_
                                           _%i93408%_
                                           (fx* _%i93408%_ _%i93408%_))))
                                 (declare (not safe))
                                 (##fxmodulo
                                  _%next-probe93416%_
                                  _%size93393%_)))
                              (__tmp98393
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i93408%_ '1))))
                          (declare (not safe))
                          (_%loop93403%_ __tmp98394 __tmp98393))
                        (if (eq? _%key93382%_ _%k93411%_)
                            (let ()
                              (vector-set!
                               _%table93385%_
                               _%probe93406%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93385%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93406%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp98395
                                        (let ((__tmp98396
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab93380%_))))
                                          (declare (not safe))
                                          (##fx- __tmp98396 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab93380%_
                                    __tmp98395)))))
                            (let ((__tmp98398
                                   (let ((_%next-probe93422%_
                                          (fx+ _%start93399%_
                                               _%i93408%_
                                               (fx* _%i93408%_ _%i93408%_))))
                                     (declare (not safe))
                                     (##fxmodulo
                                      _%next-probe93422%_
                                      _%size93393%_)))
                                  (__tmp98397
                                   (let ()
                                     (declare (not safe))
                                     (##fx+ _%i93408%_ '1))))
                              (declare (not safe))
                              (_%loop93403%_ __tmp98398 __tmp98397)))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers
      (let () (declare (not safe)) (make-class-specializer-table__% '#f '0)))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass93366%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93366%_ 'class))
              (let ((_%klass93370%_ _%klass93366%_))
                (declare (not safe))
                (__specialize-class _%klass93370%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@1017.25-1017.30"
                 'contract:
                 'class-type?
                 'value:
                 _%klass93366%_)
                '#!void)))))
    (define __specialize-class
      (lambda (_%klass93348%_)
        (let ()
          (let* ((_%klass93351%_ _%klass93348%_)
                 (_%$e93360%_
                  (let ()
                    (declare (not safe))
                    (__lookup-class-specializer _%klass93351%_))))
            (if _%$e93360%_
                _%$e93360%_
                (let ((_%method-table93364%_
                       (let ()
                         (declare (not safe))
                         (___specialize-class _%klass93351%_))))
                  (let ()
                    (declare (not safe))
                    (__bind-class-specializer!
                     _%klass93351%_
                     _%method-table93364%_))
                  _%method-table93364%_))))))
    (define __lookup-class-specializer
      (lambda (_%klass93338%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93342%_ ()
            (if (let ((__tmp98399
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp98399 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again93342%_))))))
        (let ((_%method-table93346%_
               (let ()
                 (declare (not safe))
                 (class-specializer-table-ref
                  __class-specializers
                  _%klass93338%_
                  '#f))))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table93346%_)))
    (define __bind-class-specializer!
      (lambda (_%klass93329%_ _%method-table93330%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93334%_ ()
            (if (let ((__tmp98400
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp98400 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (let () (declare (not safe)) (_%again93334%_))))))
        (let ()
          (declare (not safe))
          (class-specializer-table-set!
           __class-specializers
           _%klass93329%_
           _%method-table93330%_))
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass93313%_
               _%method-table93314%_
               _%method93315%_
               _%proc93316%_)
        (let ((_%$e93318%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table93314%_
                  _%method93315%_
                  '#f))))
          (if _%$e93318%_
              _%$e93318%_
              (let ((_%$e93321%_
                     (let ()
                       (declare (not safe))
                       (__lookup-method-specializer _%proc93316%_))))
                (if _%$e93321%_
                    ((lambda (_%specialize93324%_)
                       (let ((_%specialized-proc93326%_
                              (_%specialize93324%_
                               _%klass93313%_
                               _%method-table93314%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table93314%_
                          _%method93315%_
                          _%specialized-proc93326%_)))
                     _%$e93321%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table93314%_
                       _%method93315%_
                       _%proc93316%_))))))))
    (define ___specialize-class
      (lambda (_%klass93255%_)
        (if (let ((__tmp98401
                   (let ()
                     (declare (not safe))
                     (##structure-instance-of? _%klass93255%_ 'class))))
              (declare (not safe))
              (not __tmp98401))
            (let ()
              (if (let () (declare (not safe)) (##type? _%klass93255%_))
                  (let ((__tmp98402
                         (let ()
                           (declare (not safe))
                           (__shadow-class _%klass93255%_))))
                    (declare (not safe))
                    (__specialize-class __tmp98402))
                  (error '"bad class; cannot specialize" _%klass93255%_)))
            (if (let ()
                  (declare (not safe))
                  (class-type-metaclass? _%klass93255%_))
                (let ((__method98177
                       (let ()
                         (declare (not safe))
                         (__method-ref _%klass93255%_ 'specialize-class))))
                  (if __method98177
                      (__method98177 _%klass93255%_)
                      (error '"Missing method"
                             _%klass93255%_
                             'specialize-class)))
                (if (let ((__tmp98403
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass93255%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp98403))
                    (let ()
                      (error '"cannot specialize class that extends metaclass without a metaclass"
                             _%klass93255%_))
                    (let ((_%method-table93261%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop93263%_ ((_%rest93265%_
                                           (let ()
                                             (declare (not safe))
                                             (class-precedence-list
                                              _%klass93255%_))))
                        (let* ((_%rest9326693274%_ _%rest93265%_)
                               (_%else9326893282%_
                                (lambda () _%method-table93261%_))
                               (_%K9327093301%_
                                (lambda (_%rest93285%_ _%xklass93286%_)
                                  (let ((_%xmethod-table9328793289%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass93286%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table9328793289%_
                                        (let* ((_%xmethod-table93292%_
                                                _%xmethod-table9328793289%_)
                                               (__tmp98404
                                                (lambda (_%g9329393296%_
                                                         _%g9329493298%_)
                                                  (let ()
                                                    (declare (not safe))
                                                    (__specialize-method
                                                     _%klass93255%_
                                                     _%method-table93261%_
                                                     _%g9329393296%_
                                                     _%g9329493298%_)))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table93292%_
                                           __tmp98404))
                                        '#f))
                                  (let ()
                                    (declare (not safe))
                                    (_%loop93263%_ _%rest93285%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9326693274%_))
                              (let ((_%hd9327193304%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9326693274%_)))
                                    (_%tl9327293306%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9326693274%_))))
                                (let* ((_%xklass93309%_ _%hd9327193304%_)
                                       (_%rest93311%_ _%tl9327293306%_))
                                  (declare (not safe))
                                  (_%K9327093301%_
                                   _%rest93311%_
                                   _%xklass93309%_)))
                              (let ()
                                (declare (not safe))
                                (_%else9326893282%_)))))))))))
    (define seal-class!
      (lambda (_%klass93241%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%klass93241%_ 'class))
              (let ((_%klass93245%_ _%klass93241%_))
                (declare (not safe))
                (__seal-class! _%klass93245%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@1074.20-1074.25"
                 'contract:
                 'class-type?
                 'value:
                 _%klass93241%_)
                '#!void)))))
    (define __seal-class!
      (lambda (_%klass93224%_)
        (let ((_%klass93227%_ _%klass93224%_))
          (if (let ()
                (declare (not safe))
                (__class-type-sealed? _%klass93227%_))
              '#!void
              (begin
                (if (let ()
                      (declare (not safe))
                      (__class-type-final? _%klass93227%_))
                    '#!void
                    (error '"cannot seal non-final class" _%klass93227%_))
                (if (let ()
                      (declare (not safe))
                      (__class-type-metaclass? _%klass93227%_))
                    (let ((__method98178
                           (let ()
                             (declare (not safe))
                             (__method-ref _%klass93227%_ 'seal-class!))))
                      (if __method98178
                          (__method98178 _%klass93227%_)
                          (error '"Missing method"
                                 _%klass93227%_
                                 'seal-class!)))
                    (if (let ((__tmp98405
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass93227%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp98405))
                        (let ()
                          (error '"cannot seal class that extends metaclass without a metaclass"
                                 _%klass93227%_))
                        (let ((_%method-table93239%_
                               (let ()
                                 (declare (not safe))
                                 (__specialize-class _%klass93227%_))))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass93227%_
                           _%method-table93239%_
                           '11
                           '#f
                           '#f))))
                (let ()
                  (declare (not safe))
                  (__class-type-seal! _%klass93227%_)))))))
    (define next-method
      (lambda (_%subklass93198%_ _%obj93199%_ _%id93200%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%subklass93198%_ 'class))
              (let ((_%subklass93204%_ _%subklass93198%_))
                (if (let () (declare (not safe)) (symbol? _%id93200%_))
                    (let ((_%id93214%_ _%id93200%_))
                      (declare (not safe))
                      (__next-method
                       _%subklass93204%_
                       _%obj93199%_
                       _%id93214%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@1098.44-1098.46"
                       'contract:
                       'symbol?
                       'value:
                       _%id93200%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@1098.20-1098.28"
                 'contract:
                 'class-type?
                 'value:
                 _%subklass93198%_)
                '#!void)))))
    (define __next-method
      (lambda (_%subklass93135%_ _%obj93136%_ _%id93137%_)
        (let ()
          (let* ((_%subklass93140%_ _%subklass93135%_)
                 (_%id93148%_ _%id93137%_))
            (letrec ((_%find-next-method93157%_
                      (lambda (_%klass93159%_)
                        (let _%lp93161%_ ((_%rest93163%_
                                           (let ()
                                             (declare (not safe))
                                             (class-precedence-list
                                              _%klass93159%_))))
                          (let* ((_%rest9316493172%_ _%rest93163%_)
                                 (_%else9316693180%_ (lambda () '#f))
                                 (_%K9316893186%_
                                  (lambda (_%rest93183%_ _%klass93184%_)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (##type-id _%subklass93140%_))
                                             (let ()
                                               (declare (not safe))
                                               (##type-id _%klass93184%_)))
                                        (let ()
                                          (declare (not safe))
                                          (__mixin-find-method
                                           _%rest93183%_
                                           _%obj93136%_
                                           _%id93148%_))
                                        (let ()
                                          (declare (not safe))
                                          (_%lp93161%_ _%rest93183%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (##pair? _%rest9316493172%_))
                                (let ((_%hd9316993189%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%rest9316493172%_)))
                                      (_%tl9317093191%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest9316493172%_))))
                                  (let* ((_%klass93194%_ _%hd9316993189%_)
                                         (_%rest93196%_ _%tl9317093191%_))
                                    (declare (not safe))
                                    (_%K9316893186%_
                                     _%rest93196%_
                                     _%klass93194%_)))
                                (let ()
                                  (declare (not safe))
                                  (_%else9316693180%_))))))))
              (let ((__tmp98406
                     (let () (declare (not safe)) (class-of _%obj93136%_))))
                (declare (not safe))
                (_%find-next-method93157%_ __tmp98406)))))))
    (define call-next-method
      (lambda (_%subklass93108%_ _%obj93109%_ _%id93110%_ . _%args93111%_)
        (let ()
          (if (let ()
                (declare (not safe))
                (##structure-instance-of? _%subklass93108%_ 'class))
              (let ((_%subklass93115%_ _%subklass93108%_))
                (if (let () (declare (not safe)) (symbol? _%id93110%_))
                    (let ((_%id93125%_ _%id93110%_))
                      (declare (not safe))
                      (##apply __call-next-method
                               _%subklass93115%_
                               _%obj93109%_
                               _%id93125%_
                               _%args93111%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       '"\"gerbil/runtime/mop.ss\"@1109.49-1109.51"
                       'contract:
                       'symbol?
                       'value:
                       _%id93110%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 '"\"gerbil/runtime/mop.ss\"@1109.25-1109.33"
                 'contract:
                 'class-type?
                 'value:
                 _%subklass93108%_)
                '#!void)))))
    (define __call-next-method
      (lambda (_%subklass93079%_ _%obj93080%_ _%id93081%_ . _%args93082%_)
        (let ((_%subklass93085%_ _%subklass93079%_))
          (let* ((_%id93093%_ _%id93081%_)
                 (_%$e93102%_
                  (let ()
                    (declare (not safe))
                    (__next-method
                     _%subklass93085%_
                     _%obj93080%_
                     _%id93093%_))))
            (if _%$e93102%_
                ((lambda (_%methodf93105%_)
                   (apply _%methodf93105%_ _%obj93080%_ _%args93082%_))
                 _%$e93102%_)
                (let ()
                  (error '"cannot find next method"
                         'object:
                         _%obj93080%_
                         'method:
                         _%id93093%_)))))))
    (define write-style
      (lambda (_%we93077%_) (macro-writeenv-style _%we93077%_)))
    (define write-object
      (lambda (_%we93068%_ _%obj93069%_)
        (let ((_%$e93071%_
               (let () (declare (not safe)) (__method-ref _%obj93069%_ ':wr))))
          (if _%$e93071%_
              ((lambda (_%method93074%_)
                 (_%method93074%_ _%obj93069%_ _%we93068%_))
               _%$e93071%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we93068%_ _%obj93069%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type92983%_)
        (letrec ((_%shadow-type-id92985%_
                  (lambda (_%type93066%_)
                    (let ((__tmp98407
                           (let ()
                             (declare (not safe))
                             (##type-name _%type93066%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp98407 '"::t"))))
                 (_%shadow-type-name92986%_
                  (lambda (_%type93064%_)
                    (let () (declare (not safe)) (##type-name _%type93064%_))))
                 (_%make-shadow-class92987%_
                  (lambda (_%type93056%_ _%precedence-list93057%_)
                    (let* ((_%super93059%_
                            (if (let ()
                                  (declare (not safe))
                                  (pair? _%precedence-list93057%_))
                                (cons (car _%precedence-list93057%_) '())
                                '()))
                           (_%klass93061%_
                            (let ((__tmp98410
                                   (let ()
                                     (declare (not safe))
                                     (_%shadow-type-id92985%_ _%type93056%_)))
                                  (__tmp98409
                                   (let ()
                                     (declare (not safe))
                                     (##type-name _%type93056%_)))
                                  (__tmp98408
                                   (cons (cons 'struct: '#t)
                                         (cons (cons 'system: '#t)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (__type-extensible?
                                                      _%type93056%_))
                                                   '()
                                                   (cons (cons 'final: '#t)
                                                         '()))))))
                              (declare (not safe))
                              (make-class-type
                               __tmp98410
                               __tmp98409
                               _%super93059%_
                               '()
                               __tmp98408
                               '#f))))
                      (let ((__tmp98411
                             (let ()
                               (declare (not safe))
                               (##type-id _%type93056%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp98411
                         _%klass93061%_))
                      _%klass93061%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again92991%_ ()
              (if (let ((__tmp98412
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp98412 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (let () (declare (not safe)) (_%again92991%_))))))
          (let ((_%$e92995%_
                 (let ((__tmp98413
                        (let ()
                          (declare (not safe))
                          (##type-id _%type92983%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp98413 '#f))))
            (if _%$e92995%_
                ((lambda (_%klass92998%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass92998%_)
                 _%$e92995%_)
                (let _%loop93001%_ ((_%super93003%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-super _%type92983%_)))
                                    (_%hierarchy93004%_ '()))
                  (if (let () (declare (not safe)) (not _%super93003%_))
                      (let _%loop93007%_ ((_%rest93009%_ _%hierarchy93004%_)
                                          (_%precedence-list93010%_ '()))
                        (let* ((_%rest9301193019%_ _%rest93009%_)
                               (_%else9301393029%_
                                (lambda ()
                                  (let ((_%klass93027%_
                                         (let ()
                                           (declare (not safe))
                                           (_%make-shadow-class92987%_
                                            _%type92983%_
                                            _%precedence-list93010%_))))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass93027%_)))
                               (_%K9301593043%_
                                (lambda (_%rest93032%_ _%type93033%_)
                                  (let ((_%$e93035%_
                                         (let ((__tmp98414
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type93033%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp98414
                                            '#f))))
                                    (if _%$e93035%_
                                        ((lambda (_%klass93038%_)
                                           (let ((__tmp98415
                                                  (cons _%klass93038%_
                                                        _%precedence-list93010%_)))
                                             (declare (not safe))
                                             (_%loop93007%_
                                              _%rest93032%_
                                              __tmp98415)))
                                         _%$e93035%_)
                                        (let ()
                                          (let* ((_%klass93041%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (_%make-shadow-class92987%_
                                                     _%type93033%_
                                                     _%precedence-list93010%_)))
                                                 (__tmp98416
                                                  (cons _%klass93041%_
                                                        _%precedence-list93010%_)))
                                            (declare (not safe))
                                            (_%loop93007%_
                                             _%rest93032%_
                                             __tmp98416))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9301193019%_))
                              (let ((_%hd9301693046%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9301193019%_)))
                                    (_%tl9301793048%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9301193019%_))))
                                (let* ((_%type93051%_ _%hd9301693046%_)
                                       (_%rest93053%_ _%tl9301793048%_))
                                  (declare (not safe))
                                  (_%K9301593043%_
                                   _%rest93053%_
                                   _%type93051%_)))
                              (let ()
                                (declare (not safe))
                                (_%else9301393029%_)))))
                      (let ((__tmp98418
                             (let ()
                               (declare (not safe))
                               (##type-super _%super93003%_)))
                            (__tmp98417
                             (cons _%super93003%_ _%hierarchy93004%_)))
                        (declare (not safe))
                        (_%loop93001%_ __tmp98418 __tmp98417)))))))))
    (define class-of
      (lambda (_%obj92956%_)
        (let ()
          (declare (not interrupts-enabled))
          (let ((_%t92960%_
                 (let () (declare (not safe)) (##type _%obj92956%_))))
            (if (fx= _%t92960%_ (macro-type-subtyped))
                (let ((_%st92963%_
                       (let () (declare (not safe)) (##subtype _%obj92956%_))))
                  (if (fx= _%st92963%_ (macro-subtype-structure))
                      (let ((_%klass92966%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj92956%_))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of? _%klass92966%_ 'class))
                            _%klass92966%_
                            (let ()
                              (declare (not safe))
                              (__shadow-class _%klass92966%_))))
                      (if (fx= _%st92963%_ (macro-subtype-boxvalues))
                          (let ()
                            (if (let ((__tmp98419
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length _%obj92956%_))))
                                  (declare (not safe))
                                  (##fx= __tmp98419 '1))
                                (let ()
                                  (declare (not safe))
                                  (__system-class 'box))
                                (let ()
                                  (declare (not safe))
                                  (__system-class 'values))))
                          (let ((_%$e92969%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref __subtype-id _%st92963%_))))
                            (if _%$e92969%_
                                (let ()
                                  (declare (not safe))
                                  (__system-class _%$e92969%_))
                                (let ()
                                  (error '"unknown class"
                                         'subtype:
                                         _%st92963%_
                                         'object:
                                         _%obj92956%_)))))))
                (if (fx= _%t92960%_ (macro-type-mem2))
                    (let () (declare (not safe)) (__system-class 'pair))
                    (if (fx= _%t92960%_ (macro-type-fixnum))
                        (let () (declare (not safe)) (__system-class 'fixnum))
                        (let ()
                          (if (let ()
                                (declare (not safe))
                                (char? _%obj92956%_))
                              (let ()
                                (declare (not safe))
                                (__system-class 'char))
                              (if (eq? _%obj92956%_ '())
                                  (let ()
                                    (declare (not safe))
                                    (__system-class 'null))
                                  (if (eq? _%obj92956%_ '#f)
                                      (let ()
                                        (declare (not safe))
                                        (__system-class 'boolean))
                                      (if (eq? _%obj92956%_ '#t)
                                          (let ()
                                            (declare (not safe))
                                            (__system-class 'boolean))
                                          (if (eq? _%obj92956%_ '#!void)
                                              (let ()
                                                (declare (not safe))
                                                (__system-class 'void))
                                              (if (eq? _%obj92956%_ '#!eof)
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
      (lambda (_%id92950%_)
        (let ((_%$e92952%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id92950%_ '#f))))
          (if _%$e92952%_
              _%$e92952%_
              (let () (error '"unknown system class" _%id92950%_))))))
    (define __make-system-class
      (lambda (_%id92945%_ _%super92946%_)
        (let ((_%klass92948%_
               (let ()
                 (declare (not safe))
                 (make-class-type
                  _%id92945%_
                  _%id92945%_
                  _%super92946%_
                  '()
                  '((system: . #t))
                  '#f))))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id92945%_ _%klass92948%_))
          _%klass92948%_)))))
