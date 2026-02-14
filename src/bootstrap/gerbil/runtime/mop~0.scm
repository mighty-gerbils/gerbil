(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1771036669)
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
      (let ((_%flags318359%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties318360%_ '((direct-slots:) (system: . #t)))
            (_%slot-table318361%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags318359%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table318361%_
           _%properties318360%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots318316%_
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
             (_%slot-vector318318%_ (list->vector (cons '#f _%slots318316%_)))
             (_%slot-table318344%_
              (let ((_%slot-table318320%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp321386
                       (lambda (_%slot318322%_ _%field318323%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table318320%_
                            _%slot318322%_
                            _%field318323%_))
                         (let ((__tmp321387
                                (let ((_%sym318325%_ _%slot318322%_))
                                  (if (symbol? _%sym318325%_)
                                      (let ((_%sym318330%_ _%sym318325%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym318330%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym318325%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table318320%_
                            __tmp321387
                            _%field318323%_))))
                      (__tmp321384
                       (let ((__tmp321385
                              (let ()
                                (declare (not safe))
                                (##length _%slots318316%_))))
                         (declare (not safe))
                         (##iota __tmp321385 '1))))
                  (declare (not safe))
                  (##for-each __tmp321386 _%slots318316%_ __tmp321384))
                _%slot-table318320%_))
             (_%flags318346%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields318352%_
              (list->vector
               (let ((__tmp321388
                      (map (lambda (_%g318347318349%_)
                             (list _%g318347318349%_ '5 '#f))
                           (drop _%slots318316%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp321388))))
             (_%properties318354%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots318316%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t318356%_
              (let ((__tmp321389 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags318346%_
                 ##type-type
                 _%fields318352%_
                 __tmp321389
                 _%slot-vector318318%_
                 _%slot-table318344%_
                 _%properties318354%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t318356%_ _%t318356%_))
        _%t318356%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags318312%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties318313%_ '((direct-slots:) (system: . #t)))
            (_%slot-table318314%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp321390 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags318312%_
           '#f
           '#()
           __tmp321390
           '#(#f)
           _%slot-table318314%_
           _%properties318313%_
           '#f
           '#f
           '#f
           '#f))))
    (define __class-type
      (lambda (_%klass318300%_)
        (let ((_%klass318303%_ _%klass318300%_))
          (declare (not safe))
          (##structure-type _%klass318303%_))))
    (define class-type
      (lambda (_%klass304003%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass304003%_ 'class))
            (let ((_%klass304007%_ _%klass304003%_))
              (__class-type _%klass304007%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass304003%_)
              '#!void))))
    (define class-type?
      (lambda (_%obj318298%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj318298%_ 'class))))
    (define __class-type=?
      (lambda (_%x318277%_ _%y318278%_)
        (let* ((_%x318281%_ _%x318277%_) (_%y318289%_ _%y318278%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x318281%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y318289%_ '1 '#f '#f))))))
    (define class-type=?
      (lambda (_%x304137%_ _%y304138%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x304137%_ 'class))
            (let ((_%x304142%_ _%x304137%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y304138%_ 'class))
                  (let ((_%y304152%_ _%y304138%_))
                    (__class-type=? _%x304142%_ _%y304152%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y304138%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x304137%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type318265%_)
        (let* ((_%type318268%_ _%type318265%_)
               (__tmp321391
                (let ((__tmp321392
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type318268%_))))
                  (declare (not safe))
                  (##fxand __tmp321392 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp321391 type-flag-opaque))))
    (define type-opaque?
      (lambda (_%type304584%_)
        (if (let () (declare (not safe)) (##type? _%type304584%_))
            (let ((_%type304588%_ _%type304584%_))
              (__type-opaque? _%type304588%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type304584%_)
              '#!void))))
    (define __class-type-opaque?
      (lambda (_%klass318253%_)
        (let* ((_%klass318256%_ _%klass318253%_)
               (__tmp321393
                (let ((__tmp321394
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass318256%_))))
                  (declare (not safe))
                  (##fxand __tmp321394 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp321393 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass304718%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass304718%_ 'class))
            (let ((_%klass304722%_ _%klass304718%_))
              (__class-type-opaque? _%klass304722%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass304718%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type318241%_)
        (let* ((_%type318244%_ _%type318241%_)
               (__tmp321395
                (let ((__tmp321396
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type318244%_))))
                  (declare (not safe))
                  (##fxand __tmp321396 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp321395 type-flag-extensible))))
    (define type-extensible?
      (lambda (_%type304852%_)
        (if (let () (declare (not safe)) (##type? _%type304852%_))
            (let ((_%type304856%_ _%type304852%_))
              (__type-extensible? _%type304856%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type304852%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type318229%_)
        (let* ((_%type318232%_ _%type318229%_)
               (__tmp321397
                (let ((__tmp321398
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type318232%_))))
                  (declare (not safe))
                  (##fxand __tmp321398 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp321397 '0))))
    (define class-type-final?
      (lambda (_%type304986%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type304986%_ 'class))
            (let ((_%type304990%_ _%type304986%_))
              (__class-type-final? _%type304990%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type304986%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass318217%_)
        (let* ((_%klass318220%_ _%klass318217%_)
               (__tmp321399
                (let ((__tmp321400
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass318220%_))))
                  (declare (not safe))
                  (##fxand __tmp321400 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp321399 class-type-flag-struct))))
    (define class-type-struct?
      (lambda (_%klass305120%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass305120%_ 'class))
            (let ((_%klass305124%_ _%klass305120%_))
              (__class-type-struct? _%klass305124%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass305120%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass318205%_)
        (let* ((_%klass318208%_ _%klass318205%_)
               (__tmp321401
                (let ((__tmp321402
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass318208%_))))
                  (declare (not safe))
                  (##fxand __tmp321402 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp321401 class-type-flag-sealed))))
    (define class-type-sealed?
      (lambda (_%klass305254%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass305254%_ 'class))
            (let ((_%klass305258%_ _%klass305254%_))
              (__class-type-sealed? _%klass305258%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass305254%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass318193%_)
        (let* ((_%klass318196%_ _%klass318193%_)
               (__tmp321403
                (let ((__tmp321404
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass318196%_))))
                  (declare (not safe))
                  (##fxand __tmp321404 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp321403 class-type-flag-metaclass))))
    (define class-type-metaclass?
      (lambda (_%klass305388%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass305388%_ 'class))
            (let ((_%klass305392%_ _%klass305388%_))
              (__class-type-metaclass? _%klass305392%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass305388%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass318181%_)
        (let* ((_%klass318184%_ _%klass318181%_)
               (__tmp321405
                (let ((__tmp321406
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass318184%_))))
                  (declare (not safe))
                  (##fxand __tmp321406 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp321405 class-type-flag-system))))
    (define class-type-system?
      (lambda (_%klass305522%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass305522%_ 'class))
            (let ((_%klass305526%_ _%klass305522%_))
              (__class-type-system? _%klass305526%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass305522%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass318169%_)
        (let* ((_%klass318172%_ _%klass318169%_)
               (__tmp321407
                (let ((__tmp321408
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass318172%_))))
                  (declare (not safe))
                  (##fxand __tmp321408 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp321407 class-type-flag-acyclic))))
    (define class-type-acyclic?
      (lambda (_%klass305656%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass305656%_ 'class))
            (let ((_%klass305660%_ _%klass305656%_))
              (__class-type-acyclic? _%klass305660%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass305656%_)
              '#!void))))
    (define make-class-type-descriptor
      (lambda (_%type-id317976%_
               _%type-name317977%_
               _%type-super317978%_
               _%precedence-list317979%_
               _%slot-vector317980%_
               _%properties317981%_
               _%constructor317982%_
               _%slot-table317983%_
               _%methods317984%_)
        (letrec ((_%make-props!317987%_
                  (lambda (_%key318119%_)
                    (letrec* ((_%ht318121%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!318122%_
                               (lambda (_%ht318162%_ _%slots318163%_)
                                 (for-each
                                  (lambda (_%g318164318166%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht318162%_
                                       _%g318164318166%_
                                       '#t)))
                                  _%slots318163%_)))
                              (_%put-alist!318123%_
                               (lambda (_%ht318151%_
                                        _%key318152%_
                                        _%alist318153%_)
                                 (let ((_%$e318155%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key318152%_
                                           _%alist318153%_))))
                                   (if _%$e318155%_
                                       ((lambda (_%g318157318159%_)
                                          (_%put-slots!318122%_
                                           _%ht318151%_
                                           _%g318157318159%_))
                                        _%$e318155%_)
                                       '#!void)))))
                      (_%put-alist!318123%_
                       _%ht318121%_
                       _%key318119%_
                       _%properties317981%_)
                      (for-each
                       (lambda (_%mixin318125%_)
                         (let ((_%alist318127%_
                                (##structure-ref
                                 _%mixin318125%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist318127%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key318119%_
                                           _%alist318127%_))))
                               (_%put-slots!318122%_
                                _%ht318121%_
                                (let ((_%klass318132%_ _%mixin318125%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass318132%_
                                         'class))
                                      (let ((_%klass318137%_ _%klass318132%_))
                                        (__class-type-slot-list
                                         _%klass318137%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass318132%_)
                                        '#!void))))
                               (_%put-alist!318123%_
                                _%ht318121%_
                                _%key318119%_
                                _%alist318127%_))))
                       _%precedence-list317979%_)
                      _%ht318121%_))))
          (let* ((_%transparent?317989%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties317981%_)))
                 (_%all-slots-printable?317994%_
                  (let ((_%$e317991%_ _%transparent?317989%_))
                    (if _%$e317991%_
                        _%$e317991%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties317981%_))))))
                 (_%printable317996%_
                  (if (not _%all-slots-printable?317994%_)
                      (_%make-props!317987%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?318001%_
                  (let ((_%$e317998%_ _%transparent?317989%_))
                    (if _%$e317998%_
                        _%$e317998%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties317981%_))))))
                 (_%equalable318003%_
                  (if (not _%all-slots-equalable?318001%_)
                      (_%make-props!317987%_ 'equal:)
                      '#f))
                 (_%first-new-field318005%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super317978%_ 'class))
                      (let ((__tmp321409
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super317978%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp321409))
                      '1))
                 (_%field-info-length318007%_
                  (let ((__tmp321410
                         (let ((__tmp321411
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector317980%_))))
                           (declare (not safe))
                           (##fx- __tmp321411 _%first-new-field318005%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp321410)))
                 (_%field-info318009%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length318007%_ '#f)))
                 (_%struct?318011%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties317981%_)))
                 (_%final?318013%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties317981%_)))
                 (_%metaclass318020%_
                  (let ((_%metaclass318014318016%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties317981%_))))
                    (if _%metaclass318014318016%_
                        (let ((_%metaclass318018%_ _%metaclass318014318016%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass318018%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id317976%_
                                     'metaclass:
                                     _%metaclass318018%_))
                          _%metaclass318018%_)
                        '#f)))
                 (_%system?318022%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties317981%_)))
                 (_%opaque?318061%_
                  (if (or _%transparent?317989%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties317981%_)))
                      '#f
                      (let ((_%$e318027%_ (not _%type-super317978%_)))
                        (if _%$e318027%_
                            _%$e318027%_
                            (let ((_%type318030%_ _%type-super317978%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##type? _%type318030%_))
                                  (let ((_%type318035%_ _%type318030%_))
                                    (__type-opaque? _%type318035%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     '##type?
                                     'value:
                                     _%type318030%_)
                                    '#!void)))))))
                 (_%acyclic?318063%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties317981%_)))
                 (_%type-flags318065%_
                  (let ((__tmp321417
                         (if _%final?318013%_ '0 type-flag-extensible))
                        (__tmp321416
                         (if _%opaque?318061%_ type-flag-opaque '0))
                        (__tmp321415
                         (if _%struct?318011%_ class-type-flag-struct '0))
                        (__tmp321414
                         (if _%metaclass318020%_ class-type-flag-metaclass '0))
                        (__tmp321413
                         (if _%system?318022%_ class-type-flag-system '0))
                        (__tmp321412
                         (if _%acyclic?318063%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp321417
                             __tmp321416
                             __tmp321415
                             __tmp321414
                             __tmp321413
                             __tmp321412)))
                 (_%precedence-list318073%_
                  (let ((_%$e318067%_ (memq t::t _%precedence-list317979%_)))
                    (if _%$e318067%_
                        ((lambda (_%tail318070%_)
                           (if (null? (cdr _%tail318070%_))
                               _%precedence-list317979%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list317979%_)))
                         _%$e318067%_)
                        (let ((__tmp321418 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list317979%_ __tmp321418))))))
            (let _%loop318076%_ ((_%i318078%_ _%first-new-field318005%_)
                                 (_%j318079%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j318079%_ _%field-info-length318007%_))
                  (let* ((_%slot318081%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector317980%_ _%i318078%_)))
                         (_%flags318089%_
                          (if _%transparent?317989%_
                              '0
                              (let ((__tmp321420
                                     (if (or _%all-slots-printable?317994%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable317996%_
                                                _%slot318081%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp321419
                                     (if (or _%all-slots-equalable?318001%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable318003%_
                                                _%slot318081%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp321420 __tmp321419)))))
                    (vector-set!
                     _%field-info318009%_
                     _%j318079%_
                     _%slot318081%_)
                    (vector-set!
                     _%field-info318009%_
                     (let () (declare (not safe)) (##fx+ _%j318079%_ '1))
                     _%flags318089%_)
                    (_%loop318076%_
                     (let () (declare (not safe)) (##fx+ _%i318078%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j318079%_ '3))))
                  '#!void))
            (if _%metaclass318020%_
                (let ((_%val318116%_
                       (let* ((_%klass318092%_ _%metaclass318020%_)
                              (_%args318095%_
                               (list _%type-id317976%_
                                     _%type-name317977%_
                                     _%type-flags318065%_
                                     _%type-super317978%_
                                     _%field-info318009%_
                                     _%precedence-list318073%_
                                     _%slot-vector317980%_
                                     _%slot-table317983%_
                                     _%properties317981%_
                                     _%constructor317982%_
                                     _%methods317984%_)))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%klass318092%_
                                'class))
                             (let ((_%klass318100%_ _%klass318092%_))
                               (declare (not safe))
                               (##apply __make-instance
                                        _%klass318100%_
                                        _%args318095%_))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%klass318092%_)
                               '#!void)))))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val318116%_ 'class))
                      _%val318116%_
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         '"\"gerbil/runtime/mop.ss\"@283.10-287.95"
                         'contract:
                         '(class-type? val)
                         'value:
                         _%val318116%_)
                        '#!void)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id317976%_
                   _%type-name317977%_
                   _%type-flags318065%_
                   _%type-super317978%_
                   _%field-info318009%_
                   _%precedence-list318073%_
                   _%slot-vector317980%_
                   _%slot-table317983%_
                   _%properties317981%_
                   _%constructor317982%_
                   _%methods317984%_
                   '#f
                   '#f)))))))
    (define class-type-id
      (lambda (_%klass317974%_)
        (##structure-ref _%klass317974%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass317972%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass317972%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass317969%_ _%val317970%_)
        (##structure-set! _%klass317969%_ _%val317970%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass317964%_ _%val317966%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass317964%_
           _%val317966%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass317962%_)
        (##structure-ref _%klass317962%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass317960%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass317960%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass317957%_ _%val317958%_)
        (##structure-set! _%klass317957%_ _%val317958%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass317952%_ _%val317954%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass317952%_
           _%val317954%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass317950%_)
        (##structure-ref _%klass317950%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass317948%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass317948%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass317945%_ _%val317946%_)
        (##structure-set! _%klass317945%_ _%val317946%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass317940%_ _%val317942%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass317940%_
           _%val317942%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass317938%_)
        (##structure-ref _%klass317938%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass317936%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass317936%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass317933%_ _%val317934%_)
        (##structure-set! _%klass317933%_ _%val317934%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass317928%_ _%val317930%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass317928%_
           _%val317930%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass317926%_)
        (##structure-ref _%klass317926%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass317924%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass317924%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass317921%_ _%val317922%_)
        (##structure-set! _%klass317921%_ _%val317922%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass317916%_ _%val317918%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass317916%_
           _%val317918%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass317914%_)
        (##structure-ref _%klass317914%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass317912%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass317912%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass317909%_ _%val317910%_)
        (##structure-set!
         _%klass317909%_
         _%val317910%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass317904%_ _%val317906%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass317904%_
           _%val317906%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass317902%_)
        (##structure-ref _%klass317902%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass317900%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass317900%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass317897%_ _%val317898%_)
        (##structure-set!
         _%klass317897%_
         _%val317898%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass317892%_ _%val317894%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass317892%_
           _%val317894%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass317890%_)
        (##structure-ref _%klass317890%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass317888%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass317888%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass317885%_ _%val317886%_)
        (##structure-set!
         _%klass317885%_
         _%val317886%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass317880%_ _%val317882%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass317880%_
           _%val317882%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass317878%_)
        (##structure-ref _%klass317878%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass317876%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass317876%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass317873%_ _%val317874%_)
        (##structure-set!
         _%klass317873%_
         _%val317874%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass317868%_ _%val317870%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass317868%_
           _%val317870%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass317866%_)
        (##structure-ref _%klass317866%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass317864%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass317864%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass317861%_ _%val317862%_)
        (##structure-set!
         _%klass317861%_
         _%val317862%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass317856%_ _%val317858%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass317856%_
           _%val317858%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass317854%_)
        (##structure-ref _%klass317854%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass317852%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass317852%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass317849%_ _%val317850%_)
        (##structure-set!
         _%klass317849%_
         _%val317850%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass317844%_ _%val317846%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass317844%_
           _%val317846%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass317842%_)
        (##structure-ref _%klass317842%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass317840%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass317840%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass317837%_ _%val317838%_)
        (##structure-set!
         _%klass317837%_
         _%val317838%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass317832%_ _%val317834%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass317832%_
           _%val317834%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass317830%_)
        (##structure-ref _%klass317830%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass317828%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass317828%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass317825%_ _%val317826%_)
        (##structure-set!
         _%klass317825%_
         _%val317826%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass317820%_ _%val317822%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass317820%_
           _%val317822%_
           '13
           class::t
           'interface))))
    (define type-field-list
      (lambda (_%type317531%_)
        (letrec ((_%__fields->list317661%_
                  (lambda (_%fields317769%_ _%r317770%_)
                    (let* ((_%fields317773%_ _%fields317769%_)
                           (_%r317781%_ _%r317770%_)
                           (_%fields-len317790%_
                            (let ()
                              (declare (not safe))
                              (##vector-length _%fields317773%_))))
                      (let _%loop317792%_ ((_%i317794%_ '0)
                                           (_%r317795%_ _%r317781%_))
                        (let* ((_%i317798%_ _%i317794%_)
                               (_%r317811%_ _%r317795%_))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i317798%_ _%fields-len317790%_))
                              (_%loop317792%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i317798%_ '3))
                               (cons (vector-ref _%fields317773%_ _%i317798%_)
                                     _%r317811%_))
                              _%r317811%_))))))
                 (_%fields->list317662%_
                  (lambda (_%fields317748%_ _%r317749%_)
                    (let* ((_%fields317752%_ _%fields317748%_)
                           (_%r317760%_ _%r317749%_))
                      (_%__fields->list317661%_
                       _%fields317752%_
                       _%r317760%_)))))
          (let _%loop317664%_ ((_%type317666%_ _%type317531%_)
                               (_%r317667%_ '()))
            (let ((_%r317670%_ _%r317667%_))
              (if (let () (declare (not safe)) (##type? _%type317666%_))
                  (if (eq? _%type317666%_ ##type-type)
                      (reverse! _%r317670%_)
                      (let ((_%$e317682%_
                             (let ()
                               (declare (not safe))
                               (##type-super _%type317666%_))))
                        (if _%$e317682%_
                            ((lambda (_%super317685%_)
                               (_%loop317664%_
                                _%super317685%_
                                (let* ((_%fields317688%_
                                        (let ()
                                          (declare (not safe))
                                          (##type-fields _%type317666%_)))
                                       (_%r317691%_ _%r317670%_)
                                       (_%fields317695%_ _%fields317688%_)
                                       (_%r317711%_ _%r317691%_))
                                  (_%__fields->list317661%_
                                   _%fields317695%_
                                   _%r317711%_))))
                             _%$e317682%_)
                            (reverse!
                             (let* ((_%fields317721%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-fields _%type317666%_)))
                                    (_%r317724%_ _%r317670%_)
                                    (_%fields317728%_ _%fields317721%_)
                                    (_%r317738%_ _%r317724%_))
                               (_%__fields->list317661%_
                                _%fields317728%_
                                _%r317738%_))))))
                  (reverse! _%r317670%_)))))))
    (define __class-type-slot-list
      (lambda (_%klass317519%_)
        (let ((_%klass317522%_ _%klass317519%_))
          (vector->list
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass317522%_ '7 '#f '#f))
           '1))))
    (define class-type-slot-list
      (lambda (_%klass306180%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass306180%_ 'class))
            (let ((_%klass306184%_ _%klass306180%_))
              (__class-type-slot-list _%klass306184%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@370.29-370.34"
               'contract:
               'class-type?
               'value:
               _%klass306180%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass317507%_)
        (let* ((_%klass317510%_ _%klass317507%_)
               (__tmp321421
                (let ((__tmp321422
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass317510%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp321422))))
          (declare (not safe))
          (##fx- __tmp321421 '1))))
    (define class-type-field-count
      (lambda (_%klass306314%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass306314%_ 'class))
            (let ((_%klass306318%_ _%klass306314%_))
              (__class-type-field-count _%klass306318%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@372.31-372.36"
               'contract:
               'class-type?
               'value:
               _%klass306314%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass317495%_)
        (let ((_%klass317498%_ _%klass317495%_))
          (let ((__tmp321423
                 (let ((__tmp321424
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass317498%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp321424))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass317498%_
             __tmp321423
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define class-type-seal!
      (lambda (_%klass306448%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass306448%_ 'class))
            (let ((_%klass306452%_ _%klass306448%_))
              (__class-type-seal! _%klass306452%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@375.25-375.30"
               'contract:
               'class-type?
               'value:
               _%klass306448%_)
              '#!void))))
    (define __class-type-printable-slots
      (lambda (_%klass317428%_)
        (let ((_%klass317431%_ _%klass317428%_))
          (letrec ((_%get-field-vector317440%_
                    (lambda (_%type317479%_)
                      (let _%loop317481%_ ((_%type317483%_ _%type317479%_))
                        (let* ((_%fields317485%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type317483%_)))
                               (_%$e317487%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type317483%_))))
                          (if _%$e317487%_
                              ((lambda (_%super317490%_)
                                 (let ((_%super-fields317492%_
                                        (_%loop317481%_ _%super317490%_)))
                                   (vector-append
                                    _%super-fields317492%_
                                    _%fields317485%_)))
                               _%$e317487%_)
                              _%fields317485%_)))))
                   (_%get-printable-slot-alist317441%_
                    (lambda (_%type317462%_)
                      (let* ((_%fields317464%_
                              (_%get-field-vector317440%_ _%type317462%_))
                             (_%count317466%_
                              (vector-length _%fields317464%_)))
                        (let _%loop317469%_ ((_%i317471%_ '3)
                                             (_%offset317472%_ '1)
                                             (_%r317473%_ '()))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i317471%_ _%count317466%_))
                              (let ((_%slot-name317475%_
                                     (vector-ref _%fields317464%_ _%i317471%_))
                                    (_%slot-flags317476%_
                                     (vector-ref
                                      _%fields317464%_
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%i317471%_ '1))))
                                    (_%next-i317477%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i317471%_ '2))))
                                (if (let ((__tmp321425
                                           (let ()
                                             (declare (not safe))
                                             (##fxand _%slot-flags317476%_
                                                      '1))))
                                      (declare (not safe))
                                      (##fx= __tmp321425 '0))
                                    (_%loop317469%_
                                     _%next-i317477%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset317472%_ '1))
                                     _%r317473%_)
                                    (_%loop317469%_
                                     _%next-i317477%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset317472%_ '1))
                                     (cons (cons _%slot-name317475%_
                                                 _%offset317472%_)
                                           _%r317473%_))))
                              (reverse! _%r317473%_))))))
                   (_%get-printable-slots!317442%_
                    (lambda (_%klass317457%_ _%type317458%_)
                      (let ((_%printable317460%_
                             (_%get-printable-slot-alist317441%_
                              _%type317458%_)))
                        (##structure-set!
                         _%klass317457%_
                         (cons (cons 'printable-slots: _%printable317460%_)
                               (##structure-ref
                                _%klass317457%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%printable317460%_))))
            (let* ((_%props317444%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass317431%_ '9 '#f '#f)))
                   (_%$e317446%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'printable-slots: _%props317444%_))))
              (if _%$e317446%_
                  _%$e317446%_
                  (let ((_%$e317449%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props317444%_))))
                    (if _%$e317449%_
                        ((lambda (_%g317451317453%_)
                           (_%get-printable-slots!317442%_
                            _%klass317431%_
                            _%g317451317453%_))
                         _%$e317449%_)
                        (_%get-printable-slots!317442%_
                         _%klass317431%_
                         _%klass317431%_)))))))))
    (define class-type-printable-slots
      (lambda (_%klass306582%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass306582%_ 'class))
            (let ((_%klass306586%_ _%klass306582%_))
              (__class-type-printable-slots _%klass306586%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@382.35-382.40"
               'contract:
               'class-type?
               'value:
               _%klass306582%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct317397%_ _%maybe-super-struct317398%_)
        (let* ((_%maybe-sub-struct317401%_ _%maybe-sub-struct317397%_)
               (_%maybe-super-struct317409%_ _%maybe-super-struct317398%_)
               (_%maybe-super-struct-id317418%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct317409%_))))
          (let _%lp317420%_ ((_%super-struct317422%_
                              _%maybe-sub-struct317401%_))
            (if (not _%super-struct317422%_)
                '#f
                (if (eq? _%maybe-super-struct-id317418%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct317422%_)))
                    '#t
                    (_%lp317420%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct317422%_)))))))))
    (define substruct?
      (lambda (_%maybe-sub-struct306716%_ _%maybe-super-struct306717%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct306716%_ 'class))
            (let ((_%maybe-sub-struct306721%_ _%maybe-sub-struct306716%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct306717%_
                     'class))
                  (let ((_%maybe-super-struct306731%_
                         _%maybe-super-struct306717%_))
                    (__substruct?
                     _%maybe-sub-struct306721%_
                     _%maybe-super-struct306731%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@428.47-428.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct306717%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@428.19-428.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct306716%_)
              '#!void))))
    (define base-struct/1
      (lambda (_%klass317375%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass317375%_ 'class))
            (if (let* ((_%klass317378%_ _%klass317375%_)
                       (_%klass317383%_ _%klass317378%_))
                  (__class-type-struct? _%klass317383%_))
                _%klass317375%_
                (let () (declare (not safe)) (##type-super _%klass317375%_)))
            (if (not _%klass317375%_)
                '#f
                (error '"not a class or false" _%klass317375%_)))))
    (define base-struct/2
      (lambda (_%klass1317298%_ _%klass2317299%_)
        (let ((_%s1317301%_ (base-struct/1 _%klass1317298%_))
              (_%s2317302%_ (base-struct/1 _%klass2317299%_)))
          (if (or (not _%s1317301%_)
                  (and _%s2317302%_
                       (let* ((_%maybe-sub-struct317307%_ _%s1317301%_)
                              (_%maybe-super-struct317310%_ _%s2317302%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%maybe-sub-struct317307%_
                                'class))
                             (let ((_%maybe-sub-struct317315%_
                                    _%maybe-sub-struct317307%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%maybe-super-struct317310%_
                                      'class))
                                   (let ((_%maybe-super-struct317329%_
                                          _%maybe-super-struct317310%_))
                                     (__substruct?
                                      _%maybe-sub-struct317315%_
                                      _%maybe-super-struct317329%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%maybe-super-struct317310%_)
                                     '#!void)))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%maybe-sub-struct317307%_)
                               '#!void)))))
              _%s2317302%_
              (if (or (not _%s2317302%_)
                      (and _%s1317301%_
                           (let* ((_%maybe-sub-struct317343%_ _%s2317302%_)
                                  (_%maybe-super-struct317346%_ _%s1317301%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%maybe-sub-struct317343%_
                                    'class))
                                 (let ((_%maybe-sub-struct317351%_
                                        _%maybe-sub-struct317343%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%maybe-super-struct317346%_
                                          'class))
                                       (let ((_%maybe-super-struct317363%_
                                              _%maybe-super-struct317346%_))
                                         (__substruct?
                                          _%maybe-sub-struct317351%_
                                          _%maybe-super-struct317363%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          'class-type?
                                          'value:
                                          _%maybe-super-struct317346%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'class-type?
                                    'value:
                                    _%maybe-sub-struct317343%_)
                                   '#!void)))))
                  _%s1317301%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1317298%_
                         _%klass2317299%_
                         _%s1317301%_
                         _%s2317302%_))))))
    (define base-struct/list
      (lambda (_%all-supers317183%_)
        (let* ((_%all-supers317184317209%_ _%all-supers317183%_)
               (_%E317189317213%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers317184317209%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K317207317295%_ (lambda () '#f))
                (_%K317204317281%_
                 (lambda (_%x317279%_) (base-struct/1 _%x317279%_)))
                (_%K317199317258%_
                 (lambda (_%y317255%_ _%x317256%_)
                   (base-struct/2 _%x317256%_ _%y317255%_)))
                (_%K317190317220%_
                 (lambda (_%y317217%_ _%x317218%_)
                   (let ()
                     (declare (not safe))
                     (foldr__0 base-struct/2 _%x317218%_ _%y317217%_)))))
            (let* ((_%__match320198320199%_
                    (lambda (_%hd317191317223%_ _%tl317192317225%_)
                      (let ((_%x317228%_ _%hd317191317223%_))
                        (letrec ((_%splice-rest317194317230%_
                                  (lambda (_%rest317198317237%_ _%y317239%_)
                                    (if (null? _%rest317198317237%_)
                                        (_%K317190317220%_
                                         _%y317239%_
                                         _%x317228%_)
                                        (_%E317189317213%_))))
                                 (_%splice-try317196317232%_
                                  (lambda (_%hd317197317241%_
                                           _%rest317198317243%_
                                           _%y317193317244%_)
                                    (let ((_%y317246%_ _%hd317197317241%_))
                                      (_%splice-loop317195317234%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest317198317243%_))
                                       (cons _%y317246%_ _%y317193317244%_)))))
                                 (_%splice-loop317195317234%_
                                  (lambda (_%rest317198317248%_
                                           _%y317193317249%_)
                                    (if (pair? _%rest317198317248%_)
                                        (_%splice-try317196317232%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest317198317248%_))
                                         _%rest317198317248%_
                                         _%y317193317249%_)
                                        (_%splice-rest317194317230%_
                                         _%rest317198317248%_
                                         (reverse _%y317193317249%_))))))
                          (_%splice-loop317195317234%_
                           _%tl317192317225%_
                           '())))))
                   (_%try-match317186317291%_
                    (lambda ()
                      (if (pair? _%all-supers317184317209%_)
                          (let ((_%tl317206317286%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers317184317209%_)))
                                (_%hd317205317284%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers317184317209%_))))
                            (if (null? _%tl317206317286%_)
                                (let ((_%x317289%_ _%hd317205317284%_))
                                  (base-struct/1 _%x317289%_))
                                (if (pair? _%tl317206317286%_)
                                    (let ((_%tl317203317270%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl317206317286%_)))
                                          (_%hd317202317268%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl317206317286%_))))
                                      (if (null? _%tl317203317270%_)
                                          (let ((_%x317266%_
                                                 _%hd317205317284%_)
                                                (_%y317273%_
                                                 _%hd317202317268%_))
                                            (_%K317199317258%_
                                             _%y317273%_
                                             _%x317266%_))
                                          (_%__match320198320199%_
                                           _%hd317205317284%_
                                           _%tl317206317286%_)))
                                    (_%__match320198320199%_
                                     _%hd317205317284%_
                                     _%tl317206317286%_))))
                          (_%E317189317213%_)))))
              (if (null? _%all-supers317184317209%_)
                  (_%K317207317295%_)
                  (_%try-match317186317291%_)))))))
    (define base-struct
      (lambda _%all-supers317181%_ (base-struct/list _%all-supers317181%_)))
    (define find-super-constructor
      (lambda (_%super317132%_)
        (let _%lp317134%_ ((_%rest317136%_ _%super317132%_)
                           (_%constructor317137%_ '#f))
          (let* ((_%rest317138317146%_ _%rest317136%_)
                 (_%else317140317154%_ (lambda () _%constructor317137%_))
                 (_%K317142317169%_
                  (lambda (_%rest317157%_ _%hd317158%_)
                    (let ((_%$e317160%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd317158%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e317160%_
                          ((lambda (_%xconstructor317163%_)
                             (if (or (not _%constructor317137%_)
                                     (eq? _%constructor317137%_
                                          _%xconstructor317163%_))
                                 (_%lp317134%_
                                  _%rest317157%_
                                  _%xconstructor317163%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor317137%_
                                        _%xconstructor317163%_)))
                           _%$e317160%_)
                          (_%lp317134%_
                           _%rest317157%_
                           _%constructor317137%_))))))
            (if (pair? _%rest317138317146%_)
                (let ((_%hd317143317172%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest317138317146%_)))
                      (_%tl317144317174%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest317138317146%_))))
                  (let* ((_%hd317177%_ _%hd317143317172%_)
                         (_%rest317179%_ _%tl317144317174%_))
                    (_%K317142317169%_ _%rest317179%_ _%hd317177%_)))
                (_%else317140317154%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list317088%_ _%direct-slots317089%_)
        (let* ((_%next-slot317091%_ '1)
               (_%slot-table317093%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots317095%_ '(__class))
               (_%process-slot317119%_
                (lambda (_%slot317097%_)
                  (if (symbol? _%slot317097%_)
                      '#!void
                      (error '"invalid slot name" _%slot317097%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table317093%_
                              _%slot317097%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table317093%_
                           _%slot317097%_
                           _%next-slot317091%_))
                        (let ((__tmp321426
                               (let ((_%sym317099%_ _%slot317097%_))
                                 (if (symbol? _%sym317099%_)
                                     (let ((_%sym317104%_ _%sym317099%_))
                                       (declare (not safe))
                                       (__symbol->keyword _%sym317104%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/mop
                                        'contract:
                                        'symbol?
                                        'value:
                                        _%sym317099%_)
                                       '#!void)))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table317093%_
                           __tmp321426
                           _%next-slot317091%_))
                        (set! _%r-slots317095%_
                              (cons _%slot317097%_ _%r-slots317095%_))
                        (set! _%next-slot317091%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot317091%_ '1))))
                      '#!void)))
               (_%process-slots317125%_
                (lambda (_%g317120317122%_)
                  (for-each _%process-slot317119%_ _%g317120317122%_))))
          (let ((__tmp321428
                 (lambda (_%mixin317128%_)
                   (_%process-slots317125%_
                    (let ((__tmp321429
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin317128%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp321429 '())))))
                (__tmp321427 (reverse _%class-precedence-list317088%_)))
            (declare (not safe))
            (##for-each __tmp321428 __tmp321427))
          (_%process-slots317125%_ _%direct-slots317089%_)
          (let ((_%slot-vector317130%_
                 (list->vector
                  (let ()
                    (declare (not safe))
                    (##reverse _%r-slots317095%_)))))
            (values _%slot-vector317130%_ _%slot-table317093%_)))))
    (define __make-class-type
      (lambda (_%id316915%_
               _%name316916%_
               _%direct-supers316917%_
               _%direct-slots316918%_
               _%properties316919%_
               _%constructor316920%_)
        (let* ((_%id316923%_ _%id316915%_)
               (_%name316931%_ _%name316916%_)
               (_%direct-supers316939%_ _%direct-supers316917%_)
               (_%direct-slots316947%_ _%direct-slots316918%_)
               (_%properties316955%_ _%properties316919%_)
               (_%constructor316963%_ _%constructor316920%_))
          (let ((_%$e316997%_
                 (let* ((_%pred316975%_
                         (lambda (_%$obj316972%_)
                           (not (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%$obj316972%_
                                   'class)))))
                        (_%lst316978%_ _%direct-supers316939%_)
                        (_%pred316983%_ _%pred316975%_))
                   (declare (not safe))
                   (__find _%pred316983%_ _%lst316978%_))))
            (if _%$e316997%_
                ((lambda (_%g316999317001%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g316999317001%_))
                 _%$e316997%_)
                (let ((_%$e317024%_
                       (let* ((_%pred317004%_ __class-type-final?)
                              (_%lst317007%_ _%direct-supers316939%_)
                              (_%pred317012%_ _%pred317004%_))
                         (declare (not safe))
                         (__find _%pred317012%_ _%lst317007%_))))
                  (if _%$e317024%_
                      ((lambda (_%g317026317028%_)
                         (error '"Cannot extend final class"
                                _%g317026317028%_))
                       _%$e317024%_)
                      '#!void))))
          (let ((_g321430_ (compute-precedence-list _%direct-supers316939%_)))
            (begin
              (let ((_g321431_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g321430_)
                           (##values-length _g321430_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g321431_ 2)))
                    (error "Context expects 2 values" _g321431_)))
              (let ((_%precedence-list317031%_
                     (let () (declare (not safe)) (##values-ref _g321430_ 0)))
                    (_%struct-super317032%_
                     (let () (declare (not safe)) (##values-ref _g321430_ 1))))
                (let ((_g321432_
                       (compute-class-slots
                        _%precedence-list317031%_
                        _%direct-slots316947%_)))
                  (begin
                    (let ((_g321433_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g321432_)
                                 (##values-length _g321432_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g321433_ 2)))
                          (error "Context expects 2 values" _g321433_)))
                    (let ((_%slot-vector317034%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g321432_ 0)))
                          (_%slot-table317035%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g321432_ 1))))
                      (let* ((_%properties317037%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots316947%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers316939%_)
                                          _%properties316955%_)))
                             (_%constructor*317042%_
                              (let ((_%$e317039%_ _%constructor316963%_))
                                (if _%$e317039%_
                                    _%$e317039%_
                                    (find-super-constructor
                                     _%direct-supers316939%_))))
                             (_%precedence-list317085%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties317037%_))
                                      (memq object::t
                                            _%precedence-list317031%_))
                                  _%precedence-list317031%_
                                  (let _%loop317047%_ ((_%tail317049%_
                                                        _%precedence-list317031%_)
                                                       (_%head317050%_ '()))
                                    (let* ((_%tail317051317059%_
                                            _%tail317049%_)
                                           (_%else317053317067%_
                                            (lambda ()
                                              (let ((__tmp321434
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp321434
                                                 _%head317050%_))))
                                           (_%K317055317073%_
                                            (lambda (_%rest317070%_
                                                     _%hd317071%_)
                                              (if (eq? _%hd317071%_ t::t)
                                                  (let ((__tmp321435
                                                         (cons object::t
                                                               _%tail317049%_)))
                                                    (declare (not safe))
                                                    (foldl__0
                                                     cons
                                                     __tmp321435
                                                     _%head317050%_))
                                                  (_%loop317047%_
                                                   _%rest317070%_
                                                   (cons _%hd317071%_
                                                         _%head317050%_))))))
                                      (if (pair? _%tail317051317059%_)
                                          (let ((_%hd317056317076%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail317051317059%_)))
                                                (_%tl317057317078%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail317051317059%_))))
                                            (let* ((_%hd317081%_
                                                    _%hd317056317076%_)
                                                   (_%rest317083%_
                                                    _%tl317057317078%_))
                                              (_%K317055317073%_
                                               _%rest317083%_
                                               _%hd317081%_)))
                                          (_%else317053317067%_)))))))
                        (make-class-type-descriptor
                         _%id316923%_
                         _%name316931%_
                         _%struct-super317032%_
                         _%precedence-list317085%_
                         _%slot-vector317034%_
                         _%properties317037%_
                         _%constructor*317042%_
                         _%slot-table317035%_
                         '#f)))))))))))
    (define make-class-type
      (lambda (_%id306861%_
               _%name306862%_
               _%direct-supers306863%_
               _%direct-slots306864%_
               _%properties306865%_
               _%constructor306866%_)
        (if (symbol? _%id306861%_)
            (let ((_%id306870%_ _%id306861%_))
              (if (symbol? _%name306862%_)
                  (let ((_%name306880%_ _%name306862%_))
                    (if (list? _%direct-supers306863%_)
                        (let ((_%direct-supers306890%_
                               _%direct-supers306863%_))
                          (if (list? _%direct-slots306864%_)
                              (let ((_%direct-slots306900%_
                                     _%direct-slots306864%_))
                                (if (list? _%properties306865%_)
                                    (let ((_%properties306910%_
                                           _%properties306865%_))
                                      (if ((lambda (_%$obj306919%_)
                                             (or (not _%$obj306919%_)
                                                 (symbol? _%$obj306919%_)))
                                           _%constructor306866%_)
                                          (let ((_%constructor306926%_
                                                 _%constructor306866%_))
                                            (__make-class-type
                                             _%id306870%_
                                             _%name306880%_
                                             _%direct-supers306890%_
                                             _%direct-slots306900%_
                                             _%properties306910%_
                                             _%constructor306926%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@525.24-525.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor306866%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@524.24-524.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties306865%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@523.24-523.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots306864%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@522.24-522.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers306863%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@521.24-521.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name306862%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@520.24-520.26"
               'contract:
               'symbol?
               'value:
               _%id306861%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass316903%_)
        (let ((_%klass316906%_ _%klass316903%_))
          (cons _%klass316906%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass316906%_ '6 '#f '#f))))))
    (define class-precedence-list
      (lambda (_%klass307056%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass307056%_ 'class))
            (let ((_%klass307060%_ _%klass307056%_))
              (__class-precedence-list _%klass307060%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@558.30-558.35"
               'contract:
               'class-type?
               'value:
               _%klass307056%_)
              '#!void))))
    (define compute-precedence-list
      (lambda (_%direct-supers316900%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers316900%_))))
    (define __make-class-predicate
      (lambda (_%klass316816%_)
        (let* ((_%klass316819%_ _%klass316816%_)
               (_%tid316828%_
                (let () (declare (not safe)) (##type-id _%klass316819%_))))
          (if (let* ((_%type316830%_ _%klass316819%_)
                     (_%type316835%_ _%type316830%_))
                (__class-type-final? _%type316835%_))
              (lambda (_%g316849316851%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g316849316851%_
                   _%tid316828%_)))
              (if (let* ((_%klass316854%_ _%klass316819%_)
                         (_%klass316859%_ _%klass316854%_))
                    (__class-type-struct? _%klass316859%_))
                  (lambda (_%g316869316871%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%g316869316871%_
                       _%tid316828%_)))
                  (lambda (_%g316874316876%_)
                    (let* ((_%klass316879%_ _%klass316819%_)
                           (_%obj316882%_ _%g316874316876%_)
                           (_%klass316887%_ _%klass316879%_))
                      (__class-instance? _%klass316887%_ _%obj316882%_))))))))
    (define make-class-predicate
      (lambda (_%klass307190%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass307190%_ 'class))
            (let ((_%klass307194%_ _%klass307190%_))
              (__make-class-predicate _%klass307194%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@570.29-570.34"
               'contract:
               'class-type?
               'value:
               _%klass307190%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass316750%_ _%slot316751%_)
        (let* ((_%klass316754%_ _%klass316750%_)
               (_%slot316762%_ _%slot316751%_)
               (_%field316771%_
                (let ((__tmp321436
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass316754%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp321436 _%slot316762%_ '#f))))
          (if (not _%field316771%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass316754%_
                       'slot:
                       _%slot316762%_)
                '#!void)
              (if (let* ((_%type316775%_ _%klass316754%_)
                         (_%type316780%_ _%type316775%_))
                    (__class-type-final? _%type316780%_))
                  (make-final-slot-accessor
                   _%klass316754%_
                   _%slot316762%_
                   _%field316771%_)
                  (if (let* ((_%klass316795%_ _%klass316754%_)
                             (_%klass316800%_ _%klass316795%_))
                        (__class-type-struct? _%klass316800%_))
                      (make-struct-slot-accessor
                       _%klass316754%_
                       _%slot316762%_
                       _%field316771%_)
                      (if (let ((_%strukt316811%_
                                 (base-struct/1 _%klass316754%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt316811%_
                                    'class))
                                 (let ((__tmp321437
                                        (let ((__tmp321438
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt316811%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp321438))))
                                   (declare (not safe))
                                   (##fx< _%field316771%_ __tmp321437))))
                          (make-struct-subclass-slot-accessor
                           _%klass316754%_
                           _%slot316762%_
                           _%field316771%_)
                          (make-class-cached-slot-accessor
                           _%klass316754%_
                           _%slot316762%_
                           _%field316771%_))))))))
    (define make-class-slot-accessor
      (lambda (_%klass307477%_ _%slot307478%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass307477%_ 'class))
            (let ((_%klass307482%_ _%klass307477%_))
              (if (symbol? _%slot307478%_)
                  (let ((_%slot307492%_ _%slot307478%_))
                    (__make-class-slot-accessor
                     _%klass307482%_
                     _%slot307492%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@601.50-601.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot307478%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@601.33-601.38"
               'contract:
               'class-type?
               'value:
               _%klass307477%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass316684%_ _%slot316685%_)
        (let* ((_%klass316688%_ _%klass316684%_)
               (_%slot316696%_ _%slot316685%_)
               (_%field316705%_
                (let ((__tmp321439
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass316688%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp321439 _%slot316696%_ '#f))))
          (if (not _%field316705%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass316688%_
                       'slot:
                       _%slot316696%_)
                '#!void)
              (if (let* ((_%type316709%_ _%klass316688%_)
                         (_%type316714%_ _%type316709%_))
                    (__class-type-final? _%type316714%_))
                  (make-final-slot-mutator
                   _%klass316688%_
                   _%slot316696%_
                   _%field316705%_)
                  (if (let* ((_%klass316729%_ _%klass316688%_)
                             (_%klass316734%_ _%klass316729%_))
                        (__class-type-struct? _%klass316734%_))
                      (make-struct-slot-mutator
                       _%klass316688%_
                       _%slot316696%_
                       _%field316705%_)
                      (if (let ((_%strukt316745%_
                                 (base-struct/1 _%klass316688%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt316745%_
                                    'class))
                                 (let ((__tmp321440
                                        (let ((__tmp321441
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt316745%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp321441))))
                                   (declare (not safe))
                                   (##fx< _%field316705%_ __tmp321440))))
                          (make-struct-subclass-slot-mutator
                           _%klass316688%_
                           _%slot316696%_
                           _%field316705%_)
                          (make-class-cached-slot-mutator
                           _%klass316688%_
                           _%slot316696%_
                           _%field316705%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass307622%_ _%slot307623%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass307622%_ 'class))
            (let ((_%klass307627%_ _%klass307622%_))
              (if (symbol? _%slot307623%_)
                  (let ((_%slot307637%_ _%slot307623%_))
                    (__make-class-slot-mutator _%klass307627%_ _%slot307637%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@609.49-609.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot307623%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@609.32-609.37"
               'contract:
               'class-type?
               'value:
               _%klass307622%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass316618%_ _%slot316619%_)
        (let* ((_%klass316622%_ _%klass316618%_)
               (_%slot316630%_ _%slot316619%_)
               (_%field316639%_
                (let ((__tmp321442
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass316622%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp321442 _%slot316630%_ '#f))))
          (if (not _%field316639%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass316622%_
                       'slot:
                       _%slot316630%_)
                '#!void)
              (if (let* ((_%type316643%_ _%klass316622%_)
                         (_%type316648%_ _%type316643%_))
                    (__class-type-final? _%type316648%_))
                  (make-struct-slot-unchecked-accessor
                   _%klass316622%_
                   _%slot316630%_
                   _%field316639%_)
                  (if (let* ((_%klass316663%_ _%klass316622%_)
                             (_%klass316668%_ _%klass316663%_))
                        (__class-type-struct? _%klass316668%_))
                      (make-struct-slot-unchecked-accessor
                       _%klass316622%_
                       _%slot316630%_
                       _%field316639%_)
                      (if (let ((_%strukt316679%_
                                 (base-struct/1 _%klass316622%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt316679%_
                                    'class))
                                 (let ((__tmp321443
                                        (let ((__tmp321444
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt316679%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp321444))))
                                   (declare (not safe))
                                   (##fx< _%field316639%_ __tmp321443))))
                          (make-struct-slot-unchecked-accessor
                           _%klass316622%_
                           _%slot316630%_
                           _%field316639%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass316622%_
                           _%slot316630%_
                           _%field316639%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass307767%_ _%slot307768%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass307767%_ 'class))
            (let ((_%klass307772%_ _%klass307767%_))
              (if (symbol? _%slot307768%_)
                  (let ((_%slot307782%_ _%slot307768%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass307772%_
                     _%slot307782%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@617.60-617.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot307768%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@617.43-617.48"
               'contract:
               'class-type?
               'value:
               _%klass307767%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass316552%_ _%slot316553%_)
        (let* ((_%klass316556%_ _%klass316552%_)
               (_%slot316564%_ _%slot316553%_)
               (_%field316573%_
                (let ((__tmp321445
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass316556%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp321445 _%slot316564%_ '#f))))
          (if (not _%field316573%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass316556%_
                       'slot:
                       _%slot316564%_)
                '#!void)
              (if (let* ((_%type316577%_ _%klass316556%_)
                         (_%type316582%_ _%type316577%_))
                    (__class-type-final? _%type316582%_))
                  (make-struct-slot-unchecked-mutator
                   _%klass316556%_
                   _%slot316564%_
                   _%field316573%_)
                  (if (let* ((_%klass316597%_ _%klass316556%_)
                             (_%klass316602%_ _%klass316597%_))
                        (__class-type-struct? _%klass316602%_))
                      (make-struct-slot-unchecked-mutator
                       _%klass316556%_
                       _%slot316564%_
                       _%field316573%_)
                      (if (let ((_%strukt316613%_
                                 (base-struct/1 _%klass316556%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt316613%_
                                    'class))
                                 (let ((__tmp321446
                                        (let ((__tmp321447
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt316613%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp321447))))
                                   (declare (not safe))
                                   (##fx< _%field316573%_ __tmp321446))))
                          (make-struct-slot-unchecked-mutator
                           _%klass316556%_
                           _%slot316564%_
                           _%field316573%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass316556%_
                           _%slot316564%_
                           _%field316573%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass307912%_ _%slot307913%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass307912%_ 'class))
            (let ((_%klass307917%_ _%klass307912%_))
              (if (symbol? _%slot307913%_)
                  (let ((_%slot307927%_ _%slot307913%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass307917%_
                     _%slot307927%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@625.59-625.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot307913%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@625.42-625.47"
               'contract:
               'class-type?
               'value:
               _%klass307912%_)
              '#!void))))
    (define not-an-instance__%
      (lambda (_%object316536%_ _%class316537%_ _%slot316538%_)
        (apply error
               '"not an instance"
               'object:
               _%object316536%_
               'class:
               _%class316537%_
               (if _%slot316538%_
                   (cons 'slot: (cons _%slot316538%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object316543%_ _%class316544%_)
        (let ((_%slot316546%_ '#f))
          (not-an-instance__%
           _%object316543%_
           _%class316544%_
           _%slot316546%_))))
    (define not-an-instance
      (lambda _g321448_
        (let ((_g321449_ (let () (declare (not safe)) (##length _g321448_))))
          (cond ((let () (declare (not safe)) (##fx= _g321449_ 2))
                 (apply not-an-instance__0 _g321448_))
                ((let () (declare (not safe)) (##fx= _g321449_ 3))
                 (apply not-an-instance__% _g321448_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g321448_))))))
    (define make-final-slot-accessor
      (lambda (_%klass316529%_ _%slot316530%_ _%field316531%_)
        (lambda (_%obj316533%_)
          (##direct-structure-ref
           _%obj316533%_
           _%field316531%_
           _%klass316529%_
           _%slot316530%_))))
    (define make-final-slot-mutator
      (lambda (_%klass316522%_ _%slot316523%_ _%field316524%_)
        (lambda (_%obj316526%_ _%val316527%_)
          (##direct-structure-set!
           _%obj316526%_
           _%val316527%_
           _%field316524%_
           _%klass316522%_
           _%slot316523%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass316516%_ _%slot316517%_ _%field316518%_)
        (lambda (_%obj316520%_)
          (##structure-ref
           _%obj316520%_
           _%field316518%_
           _%klass316516%_
           _%slot316517%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass316509%_ _%slot316510%_ _%field316511%_)
        (lambda (_%obj316513%_ _%val316514%_)
          (##structure-set!
           _%obj316513%_
           _%val316514%_
           _%field316511%_
           _%klass316509%_
           _%slot316510%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass316503%_ _%slot316504%_ _%field316505%_)
        (lambda (_%obj316507%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj316507%_
             _%field316505%_
             _%klass316503%_
             _%slot316504%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass316496%_ _%slot316497%_ _%field316498%_)
        (lambda (_%obj316500%_ _%val316501%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj316500%_
             _%val316501%_
             _%field316498%_
             _%klass316496%_
             _%slot316497%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass316469%_ _%slot316470%_ _%field316471%_)
        (lambda (_%obj316473%_)
          (if (let* ((_%klass316475%_ _%klass316469%_)
                     (_%obj316478%_ _%obj316473%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass316475%_ 'class))
                    (let ((_%klass316483%_ _%klass316475%_))
                      (__class-instance? _%klass316483%_ _%obj316478%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass316475%_)
                      '#!void)))
              (unchecked-slot-ref _%obj316473%_ _%field316471%_)
              (not-an-instance__%
               _%obj316473%_
               _%klass316469%_
               _%slot316470%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass316441%_ _%slot316442%_ _%field316443%_)
        (lambda (_%obj316445%_ _%val316446%_)
          (if (let* ((_%klass316448%_ _%klass316441%_)
                     (_%obj316451%_ _%obj316445%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass316448%_ 'class))
                    (let ((_%klass316456%_ _%klass316448%_))
                      (__class-instance? _%klass316456%_ _%obj316451%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass316448%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj316445%_
               _%field316443%_
               _%val316446%_)
              (not-an-instance__%
               _%obj316445%_
               _%klass316441%_
               _%slot316442%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass316392%_ _%slot316393%_ _%field316394%_)
        (lambda (_%obj316396%_)
          (if (let* ((_%klass316398%_ _%klass316392%_)
                     (_%obj316401%_ _%obj316396%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass316398%_ 'class))
                    (let ((_%klass316406%_ _%klass316398%_))
                      (__direct-instance? _%klass316406%_ _%obj316401%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass316398%_)
                      '#!void)))
              (unchecked-field-ref _%obj316396%_ _%field316394%_)
              (if (let* ((_%klass316420%_ _%klass316392%_)
                         (_%obj316423%_ _%obj316396%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass316420%_ 'class))
                        (let ((_%klass316428%_ _%klass316420%_))
                          (__class-instance? _%klass316428%_ _%obj316423%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass316420%_)
                          '#!void)))
                  (unchecked-slot-ref _%obj316396%_ _%slot316393%_)
                  (not-an-instance__%
                   _%obj316396%_
                   _%klass316392%_
                   _%slot316393%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass316342%_ _%slot316343%_ _%field316344%_)
        (lambda (_%obj316346%_ _%val316347%_)
          (if (let* ((_%klass316349%_ _%klass316342%_)
                     (_%obj316352%_ _%obj316346%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass316349%_ 'class))
                    (let ((_%klass316357%_ _%klass316349%_))
                      (__direct-instance? _%klass316357%_ _%obj316352%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass316349%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj316346%_
               _%field316344%_
               _%val316347%_)
              (if (let* ((_%klass316371%_ _%klass316342%_)
                         (_%obj316374%_ _%obj316346%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass316371%_ 'class))
                        (let ((_%klass316379%_ _%klass316371%_))
                          (__class-instance? _%klass316379%_ _%obj316374%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass316371%_)
                          '#!void)))
                  (unchecked-slot-set!
                   _%obj316346%_
                   _%slot316343%_
                   _%val316347%_)
                  (not-an-instance__%
                   _%obj316346%_
                   _%klass316342%_
                   _%slot316343%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass316315%_ _%slot316316%_ _%field316317%_)
        (lambda (_%obj316319%_)
          (if (let* ((_%klass316321%_ _%klass316315%_)
                     (_%obj316324%_ _%obj316319%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass316321%_ 'class))
                    (let ((_%klass316329%_ _%klass316321%_))
                      (__direct-instance? _%klass316329%_ _%obj316324%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass316321%_)
                      '#!void)))
              (unchecked-field-ref _%obj316319%_ _%field316317%_)
              (unchecked-slot-ref _%obj316319%_ _%slot316316%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass316287%_ _%slot316288%_ _%field316289%_)
        (lambda (_%obj316291%_ _%val316292%_)
          (if (let* ((_%klass316294%_ _%klass316287%_)
                     (_%obj316297%_ _%obj316291%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass316294%_ 'class))
                    (let ((_%klass316302%_ _%klass316294%_))
                      (__direct-instance? _%klass316302%_ _%obj316297%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass316294%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj316291%_
               _%field316289%_
               _%val316292%_)
              (unchecked-slot-set!
               _%obj316291%_
               _%slot316288%_
               _%val316292%_)))))
    (define __class-slot-offset
      (lambda (_%klass316266%_ _%slot316267%_)
        (let* ((_%klass316270%_ _%klass316266%_)
               (_%slot316278%_ _%slot316267%_)
               (__tmp321450
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass316270%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp321450 _%slot316278%_ '#f))))
    (define class-slot-offset
      (lambda (_%klass308057%_ _%slot308058%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass308057%_ 'class))
            (let ((_%klass308062%_ _%klass308057%_))
              (if (let () (declare (not safe)) (symbolic? _%slot308058%_))
                  (let ((_%slot308072%_ _%slot308058%_))
                    (__class-slot-offset _%klass308062%_ _%slot308072%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@687.43-687.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot308058%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@687.26-687.31"
               'contract:
               'class-type?
               'value:
               _%klass308057%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass316191%_ _%obj316192%_ _%slot316193%_)
        (let* ((_%klass316196%_ _%klass316191%_)
               (_%slot316204%_ _%slot316193%_))
          (if (let* ((_%klass316213%_ _%klass316196%_)
                     (_%obj316216%_ _%obj316192%_)
                     (_%klass316221%_ _%klass316213%_))
                (__class-instance? _%klass316221%_ _%obj316216%_))
              (let ((_%off316264%_
                     (let* ((_%klass316235%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj316192%_)))
                            (_%slot316238%_ _%slot316204%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass316235%_ 'class))
                           (let ((_%klass316243%_ _%klass316235%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot316238%_))
                                 (let ((_%slot316254%_ _%slot316238%_))
                                   (__class-slot-offset
                                    _%klass316243%_
                                    _%slot316254%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot316238%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass316235%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj316192%_
                 _%off316264%_
                 _%klass316196%_
                 _%slot316204%_))
              (not-an-instance__0 _%obj316192%_ _%klass316196%_)))))
    (define class-slot-ref
      (lambda (_%klass308202%_ _%obj308203%_ _%slot308204%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass308202%_ 'class))
            (let ((_%klass308208%_ _%klass308202%_))
              (if (let () (declare (not safe)) (symbolic? _%slot308204%_))
                  (let ((_%slot308218%_ _%slot308204%_))
                    (__class-slot-ref
                     _%klass308208%_
                     _%obj308203%_
                     _%slot308218%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@690.44-690.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot308204%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@690.23-690.28"
               'contract:
               'class-type?
               'value:
               _%klass308202%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass316115%_ _%obj316116%_ _%slot316117%_ _%val316118%_)
        (let* ((_%klass316121%_ _%klass316115%_)
               (_%slot316129%_ _%slot316117%_))
          (if (let* ((_%klass316138%_ _%klass316121%_)
                     (_%obj316141%_ _%obj316116%_)
                     (_%klass316146%_ _%klass316138%_))
                (__class-instance? _%klass316146%_ _%obj316141%_))
              (let ((_%off316189%_
                     (let* ((_%klass316160%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj316116%_)))
                            (_%slot316163%_ _%slot316129%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass316160%_ 'class))
                           (let ((_%klass316168%_ _%klass316160%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot316163%_))
                                 (let ((_%slot316179%_ _%slot316163%_))
                                   (__class-slot-offset
                                    _%klass316168%_
                                    _%slot316179%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot316163%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass316160%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj316116%_
                 _%val316118%_
                 _%off316189%_
                 _%klass316121%_
                 _%slot316129%_))
              (not-an-instance__0 _%obj316116%_ _%klass316121%_)))))
    (define class-slot-set!
      (lambda (_%klass308348%_ _%obj308349%_ _%slot308350%_ _%val308351%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass308348%_ 'class))
            (let ((_%klass308355%_ _%klass308348%_))
              (if (let () (declare (not safe)) (symbolic? _%slot308350%_))
                  (let ((_%slot308365%_ _%slot308350%_))
                    (__class-slot-set!
                     _%klass308355%_
                     _%obj308349%_
                     _%slot308365%_
                     _%val308351%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@696.45-696.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot308350%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@696.24-696.29"
               'contract:
               'class-type?
               'value:
               _%klass308348%_)
              '#!void))))
    (define unchecked-field-ref
      (lambda (_%obj316112%_ _%off316113%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj316112%_ _%off316113%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj316108%_ _%off316109%_ _%val316110%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj316108%_
           _%val316110%_
           _%off316109%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj316105%_ _%slot316106%_)
        (unchecked-field-ref
         _%obj316105%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj316105%_))
          _%slot316106%_))))
    (define unchecked-slot-set!
      (lambda (_%obj316101%_ _%slot316102%_ _%val316103%_)
        (unchecked-field-set!
         _%obj316101%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj316101%_))
          _%slot316102%_)
         _%val316103%_)))
    (define __slot-error
      (lambda (_%obj316098%_ _%slot316099%_)
        (error '"Cannot find slot"
               'object:
               _%obj316098%_
               'slot:
               _%slot316099%_)))
    (define __slot-ref__%
      (lambda (_%obj316022%_ _%slot316023%_ _%E316024%_)
        (let* ((_%slot316027%_ _%slot316023%_)
               (_%E316035%_ _%E316024%_)
               (_%klass316044%_ (class-of _%obj316022%_))
               (_%$e316080%_
                (let* ((_%klass316047%_ _%klass316044%_)
                       (_%slot316050%_ _%slot316027%_)
                       (_%klass316055%_ _%klass316047%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot316050%_))
                      (let ((_%slot316070%_ _%slot316050%_))
                        (__class-slot-offset _%klass316055%_ _%slot316070%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot316050%_)
                        '#!void)))))
          (if _%$e316080%_
              ((lambda (_%off316083%_)
                 (unchecked-field-ref _%obj316022%_ _%off316083%_))
               _%$e316080%_)
              (let ()
                (declare (not safe))
                (_%E316035%_ _%obj316022%_ _%slot316027%_))))))
    (define __slot-ref__0
      (lambda (_%obj316089%_ _%slot316090%_)
        (let ((_%E316092%_ __slot-error))
          (__slot-ref__% _%obj316089%_ _%slot316090%_ _%E316092%_))))
    (define __slot-ref
      (lambda _g321451_
        (let ((_g321452_ (let () (declare (not safe)) (##length _g321451_))))
          (cond ((let () (declare (not safe)) (##fx= _g321452_ 2))
                 (apply __slot-ref__0 _g321451_))
                ((let () (declare (not safe)) (##fx= _g321452_ 3))
                 (apply __slot-ref__% _g321451_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g321451_))))))
    (define slot-ref__%
      (lambda (_%obj308613%_ _%slot308614%_ _%E308615%_)
        (if (symbol? _%slot308614%_)
            (let ((_%slot308619%_ _%slot308614%_))
              (if (procedure? _%E308615%_)
                  (let ((_%E308629%_ _%E308615%_))
                    (__slot-ref__% _%obj308613%_ _%slot308619%_ _%E308629%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@722.38-722.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E308615%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@722.21-722.25"
               'contract:
               'symbol?
               'value:
               _%slot308614%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj308642%_ _%slot308643%_)
        (let ((_%E308645%_ __slot-error))
          (slot-ref__% _%obj308642%_ _%slot308643%_ _%E308645%_))))
    (define slot-ref
      (lambda _g321453_
        (let ((_g321454_ (let () (declare (not safe)) (##length _g321453_))))
          (cond ((let () (declare (not safe)) (##fx= _g321454_ 2))
                 (apply slot-ref__0 _g321453_))
                ((let () (declare (not safe)) (##fx= _g321454_ 3))
                 (apply slot-ref__% _g321453_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g321453_))))))
    (define __slot-set!__%
      (lambda (_%obj315942%_ _%slot315943%_ _%val315944%_ _%E315945%_)
        (let* ((_%slot315948%_ _%slot315943%_)
               (_%E315956%_ _%E315945%_)
               (_%klass315965%_ (class-of _%obj315942%_))
               (_%$e316001%_
                (let* ((_%klass315968%_ _%klass315965%_)
                       (_%slot315971%_ _%slot315948%_)
                       (_%klass315976%_ _%klass315968%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot315971%_))
                      (let ((_%slot315991%_ _%slot315971%_))
                        (__class-slot-offset _%klass315976%_ _%slot315991%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot315971%_)
                        '#!void)))))
          (if _%$e316001%_
              ((lambda (_%off316004%_)
                 (unchecked-field-set!
                  _%obj315942%_
                  _%off316004%_
                  _%val315944%_))
               _%$e316001%_)
              (let ()
                (declare (not safe))
                (_%E315956%_ _%obj315942%_ _%slot315948%_))))))
    (define __slot-set!__0
      (lambda (_%obj316010%_ _%slot316011%_ _%val316012%_)
        (let ((_%E316014%_ __slot-error))
          (__slot-set!__%
           _%obj316010%_
           _%slot316011%_
           _%val316012%_
           _%E316014%_))))
    (define __slot-set!
      (lambda _g321455_
        (let ((_g321456_ (let () (declare (not safe)) (##length _g321455_))))
          (cond ((let () (declare (not safe)) (##fx= _g321456_ 3))
                 (apply __slot-set!__0 _g321455_))
                ((let () (declare (not safe)) (##fx= _g321456_ 4))
                 (apply __slot-set!__% _g321455_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g321455_))))))
    (define slot-set!__%
      (lambda (_%obj308772%_ _%slot308773%_ _%val308774%_ _%E308775%_)
        (if (symbol? _%slot308773%_)
            (let ((_%slot308779%_ _%slot308773%_))
              (if (procedure? _%E308775%_)
                  (let ((_%E308789%_ _%E308775%_))
                    (__slot-set!__%
                     _%obj308772%_
                     _%slot308779%_
                     _%val308774%_
                     _%E308789%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@724.43-724.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E308775%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@724.22-724.26"
               'contract:
               'symbol?
               'value:
               _%slot308773%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj308802%_ _%slot308803%_ _%val308804%_)
        (let ((_%E308806%_ __slot-error))
          (slot-set!__%
           _%obj308802%_
           _%slot308803%_
           _%val308804%_
           _%E308806%_))))
    (define slot-set!
      (lambda _g321457_
        (let ((_g321458_ (let () (declare (not safe)) (##length _g321457_))))
          (cond ((let () (declare (not safe)) (##fx= _g321458_ 3))
                 (apply slot-set!__0 _g321457_))
                ((let () (declare (not safe)) (##fx= _g321458_ 4))
                 (apply slot-set!__% _g321457_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g321457_))))))
    (define __subclass?
      (lambda (_%maybe-sub-class315913%_ _%maybe-super-class315914%_)
        (let* ((_%maybe-sub-class315917%_ _%maybe-sub-class315913%_)
               (_%maybe-super-class315925%_ _%maybe-super-class315914%_)
               (_%maybe-super-class-id315934%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class315925%_)))
               (_%$e315936%_
                (eq? _%maybe-super-class-id315934%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class315917%_)))))
          (if _%$e315936%_
              _%$e315936%_
              (let ((__tmp321460
                     (lambda (_%super-class315939%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class315939%_))
                            _%maybe-super-class-id315934%_)))
                    (__tmp321459
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class315917%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (ormap__0 __tmp321460 __tmp321459))))))
    (define subclass?
      (lambda (_%maybe-sub-class308933%_ _%maybe-super-class308934%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class308933%_ 'class))
            (let ((_%maybe-sub-class308938%_ _%maybe-sub-class308933%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class308934%_
                     'class))
                  (let ((_%maybe-super-class308948%_
                         _%maybe-super-class308934%_))
                    (__subclass?
                     _%maybe-sub-class308938%_
                     _%maybe-super-class308948%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@730.45-730.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class308934%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@730.18-730.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class308933%_)
              '#!void))))
    (define object?
      (lambda (_%o315910%_)
        (if (let () (declare (not safe)) (##structure? _%o315910%_))
            (let ((__tmp321461
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o315910%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp321461 'class))
            '#f)))
    (define __direct-instance?
      (lambda (_%klass315897%_ _%obj315898%_)
        (let* ((_%klass315901%_ _%klass315897%_)
               (__tmp321462
                (let () (declare (not safe)) (##type-id _%klass315901%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj315898%_ __tmp321462))))
    (define direct-instance?
      (lambda (_%klass309078%_ _%obj309079%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass309078%_ 'class))
            (let ((_%klass309083%_ _%klass309078%_))
              (__direct-instance? _%klass309083%_ _%obj309079%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@744.25-744.30"
               'contract:
               'class-type?
               'value:
               _%klass309078%_)
              '#!void))))
    (define immediate-instance-of?
      (lambda (_%klass315893%_ _%obj315894%_)
        (if (let () (declare (not safe)) (##structure? _%obj315894%_))
            (eq? _%klass315893%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj315894%_)))
            '#f)))
    (define __struct-instance?
      (lambda (_%klass315880%_ _%obj315881%_)
        (let* ((_%klass315884%_ _%klass315880%_)
               (__tmp321463
                (let () (declare (not safe)) (##type-id _%klass315884%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj315881%_ __tmp321463))))
    (define struct-instance?
      (lambda (_%klass309213%_ _%obj309214%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass309213%_ 'class))
            (let ((_%klass309218%_ _%klass309213%_))
              (__struct-instance? _%klass309218%_ _%obj309214%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@773.25-773.30"
               'contract:
               'class-type?
               'value:
               _%klass309213%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass315832%_ _%obj315833%_)
        (let* ((_%klass315836%_ _%klass315832%_)
               (_%type315845%_ (class-of _%obj315833%_))
               (_%maybe-sub-class315847%_ _%type315845%_)
               (_%maybe-super-class315850%_ _%klass315836%_)
               (_%maybe-sub-class315855%_ _%maybe-sub-class315847%_)
               (_%maybe-super-class315870%_ _%maybe-super-class315850%_))
          (__subclass?
           _%maybe-sub-class315855%_
           _%maybe-super-class315870%_))))
    (define class-instance?
      (lambda (_%klass309348%_ _%obj309349%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass309348%_ 'class))
            (let ((_%klass309353%_ _%klass309348%_))
              (__class-instance? _%klass309353%_ _%obj309349%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@778.24-778.29"
               'contract:
               'class-type?
               'value:
               _%klass309348%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass315791%_ _%k315792%_)
        (let* ((_%klass315795%_ _%klass315791%_) (_%k315803%_ _%k315792%_))
          (if (let* ((_%klass315812%_ _%klass315795%_)
                     (_%klass315817%_ _%klass315812%_))
                (__class-type-system? _%klass315817%_))
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass315795%_)
                '#!void)
              (let ((_%obj315830%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass315795%_ _%k315803%_))))
                (__object-fill! _%obj315830%_ '#f))))))
    (define make-object
      (lambda (_%klass309483%_ _%k309484%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass309483%_ 'class))
            (let ((_%klass309488%_ _%klass309483%_))
              (if (fixnum? _%k309484%_)
                  (let ((_%k309498%_ _%k309484%_))
                    (__make-object _%klass309488%_ _%k309498%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@783.37-783.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k309484%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@783.20-783.25"
               'contract:
               'class-type?
               'value:
               _%klass309483%_)
              '#!void))))
    (define __object-class
      (lambda (_%obj315779%_)
        (let ((_%obj315782%_ _%obj315779%_))
          (declare (not safe))
          (##structure-type _%obj315782%_))))
    (define object-class
      (lambda (_%obj309628%_)
        (if (object? _%obj309628%_)
            (let ((_%obj309632%_ _%obj309628%_))
              (__object-class _%obj309632%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@803.21-803.24"
               'contract:
               'object?
               'value:
               _%obj309628%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj315761%_ _%fill315762%_)
        (let ((_%obj315765%_ _%obj315761%_))
          (let _%loop315774%_ ((_%i315776%_
                                (let ((__tmp321464
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj315765%_))))
                                  (declare (not safe))
                                  (##fx- __tmp321464 '1))))
            (if (let () (declare (not safe)) (##fx> _%i315776%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj315765%_
                     _%fill315762%_
                     _%i315776%_
                     '#f
                     '#f))
                  (_%loop315774%_
                   (let () (declare (not safe)) (##fx- _%i315776%_ '1))))
                _%obj315765%_)))))
    (define object-fill!
      (lambda (_%obj309762%_ _%fill309763%_)
        (if (object? _%obj309762%_)
            (let ((_%obj309767%_ _%obj309762%_))
              (__object-fill! _%obj309767%_ _%fill309763%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@808.21-808.24"
               'contract:
               'object?
               'value:
               _%obj309762%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass315717%_)
        (let* ((_%klass315720%_ _%klass315717%_)
               (_%klass315729%_ _%klass315720%_)
               (_%k315732%_
                (let ((__tmp321465
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass315720%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp321465)))
               (_%klass315737%_ _%klass315729%_)
               (_%k315751%_ _%k315732%_))
          (__make-object _%klass315737%_ _%k315751%_))))
    (define new-instance
      (lambda (_%klass309897%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass309897%_ 'class))
            (let ((_%klass309901%_ _%klass309897%_))
              (__new-instance _%klass309901%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@819.21-819.26"
               'contract:
               'class-type?
               'value:
               _%klass309897%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass315576%_ . _%args315577%_)
        (let* ((_%klass315580%_ _%klass315576%_)
               (_%$e315589%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass315580%_ '10 '#f '#f))))
          (if _%$e315589%_
              ((lambda (_%kons-id315592%_)
                 (let ((_%obj315614%_
                        (let* ((_%klass315594%_ _%klass315580%_)
                               (_%klass315599%_ _%klass315594%_))
                          (__new-instance _%klass315599%_))))
                   (___constructor-init!
                    _%klass315580%_
                    _%kons-id315592%_
                    _%obj315614%_
                    _%args315577%_)
                   _%obj315614%_))
               _%$e315589%_)
              (if (let* ((_%klass315616%_ _%klass315580%_)
                         (_%klass315621%_ _%klass315616%_))
                    (__class-type-metaclass? _%klass315621%_))
                  (let ((_%obj315648%_
                         (let* ((_%klass315632%_ _%klass315580%_)
                                (_%klass315637%_ _%klass315632%_))
                           (__new-instance _%klass315637%_))))
                    (__metaclass-instance-init!
                     _%klass315580%_
                     _%obj315648%_
                     _%args315577%_)
                    _%obj315648%_)
                  (if (let* ((_%klass315650%_ _%klass315580%_)
                             (_%klass315655%_ _%klass315650%_))
                        (__class-type-struct? _%klass315655%_))
                      (if (let ((__tmp321467
                                 (let* ((_%klass315684%_ _%klass315580%_)
                                        (_%klass315689%_ _%klass315684%_))
                                   (__class-type-field-count _%klass315689%_)))
                                (__tmp321466
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args315577%_))))
                            (declare (not safe))
                            (##fx= __tmp321467 __tmp321466))
                          (apply ##structure _%klass315580%_ _%args315577%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass315580%_
                                   'slots:
                                   (let* ((_%klass315701%_ _%klass315580%_)
                                          (_%klass315706%_ _%klass315701%_))
                                     (__class-type-slot-list _%klass315706%_))
                                   'args:
                                   _%args315577%_)
                            '#!void))
                      (let ((_%obj315682%_
                             (let* ((_%klass315666%_ _%klass315580%_)
                                    (_%klass315671%_ _%klass315666%_))
                               (__new-instance _%klass315671%_))))
                        (___class-instance-init!
                         _%klass315580%_
                         _%obj315682%_
                         _%args315577%_)
                        _%obj315682%_)))))))
    (define make-instance
      (lambda (_%klass310031%_ . _%args310032%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass310031%_ 'class))
            (let ((_%klass310036%_ _%klass310031%_))
              (declare (not safe))
              (##apply __make-instance _%klass310036%_ _%args310032%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@822.22-822.27"
               'contract:
               'class-type?
               'value:
               _%klass310031%_)
              '#!void))))
    (define make-class-instance make-instance)
    (define __struct-instance-init!
      (lambda (_%obj315563%_ . _%args315564%_)
        (let ((_%obj315567%_ _%obj315563%_))
          (if (let ((__tmp321469
                     (let () (declare (not safe)) (##length _%args315564%_)))
                    (__tmp321468
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj315567%_))))
                (declare (not safe))
                (##fx< __tmp321469 __tmp321468))
              (___struct-instance-init! _%obj315567%_ _%args315564%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj315567%_
                     'args:
                     _%args315564%_))
          '#!void)))
    (define struct-instance-init!
      (lambda (_%obj310166%_ . _%args310167%_)
        (if (object? _%obj310166%_)
            (let ((_%obj310171%_ _%obj310166%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj310171%_ _%args310167%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@847.30-847.33"
               'contract:
               'object?
               'value:
               _%obj310166%_)
              '#!void))))
    (define ___struct-instance-init!
      (lambda (_%obj315522%_ _%args315523%_)
        (let _%lp315525%_ ((_%k315527%_ '1) (_%rest315528%_ _%args315523%_))
          (let* ((_%rest315529315537%_ _%rest315528%_)
                 (_%else315531315545%_ (lambda () _%obj315522%_))
                 (_%K315533315551%_
                  (lambda (_%rest315548%_ _%hd315549%_)
                    (unchecked-field-set!
                     _%obj315522%_
                     _%k315527%_
                     _%hd315549%_)
                    (_%lp315525%_
                     (let () (declare (not safe)) (##fx+ _%k315527%_ '1))
                     _%rest315548%_))))
            (if (pair? _%rest315529315537%_)
                (let ((_%hd315534315554%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest315529315537%_)))
                      (_%tl315535315556%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest315529315537%_))))
                  (let* ((_%hd315559%_ _%hd315534315554%_)
                         (_%rest315561%_ _%tl315535315556%_))
                    (_%K315533315551%_ _%rest315561%_ _%hd315559%_)))
                (_%else315531315545%_))))))
    (define __class-instance-init!
      (lambda (_%obj315509%_ . _%args315510%_)
        (let ((_%obj315513%_ _%obj315509%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj315513%_))
           _%obj315513%_
           _%args315510%_)
          '#!void)))
    (define class-instance-init!
      (lambda (_%obj310301%_ . _%args310302%_)
        (if (object? _%obj310301%_)
            (let ((_%obj310306%_ _%obj310301%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj310306%_ _%args310302%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@887.29-887.32"
               'contract:
               'object?
               'value:
               _%obj310301%_)
              '#!void))))
    (define ___class-instance-init!
      (lambda (_%klass315451%_ _%obj315452%_ _%args315453%_)
        (let _%lp315455%_ ((_%rest315457%_ _%args315453%_))
          (let* ((_%rest315458315468%_ _%rest315457%_)
                 (_%else315460315476%_
                  (lambda ()
                    (if (null? _%rest315457%_)
                        _%obj315452%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass315451%_
                               'rest:
                               _%rest315457%_))))
                 (_%K315462315490%_
                  (lambda (_%rest315479%_ _%val315480%_ _%key315481%_)
                    (if (keyword? _%key315481%_)
                        (let ((_%$e315484%_
                               (__class-slot-offset
                                _%klass315451%_
                                _%key315481%_)))
                          (if _%$e315484%_
                              ((lambda (_%off315487%_)
                                 (unchecked-field-set!
                                  _%obj315452%_
                                  _%off315487%_
                                  _%val315480%_)
                                 (_%lp315455%_ _%rest315479%_))
                               _%$e315484%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass315451%_
                                     'slot:
                                     _%key315481%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key315481%_)))))
            (if (pair? _%rest315458315468%_)
                (let ((_%hd315463315493%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest315458315468%_)))
                      (_%tl315464315495%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest315458315468%_))))
                  (let ((_%key315498%_ _%hd315463315493%_))
                    (if (pair? _%tl315464315495%_)
                        (let ((_%hd315465315500%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl315464315495%_)))
                              (_%tl315466315502%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl315464315495%_))))
                          (let* ((_%val315505%_ _%hd315465315500%_)
                                 (_%rest315507%_ _%tl315466315502%_))
                            (_%K315462315490%_
                             _%rest315507%_
                             _%val315505%_
                             _%key315498%_)))
                        (_%else315460315476%_))))
                (_%else315460315476%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass315447%_ _%obj315448%_ _%args315449%_)
        (apply call-method
               _%klass315447%_
               'instance-init!
               _%obj315448%_
               _%args315449%_)))
    (define __constructor-init!
      (lambda (_%klass315416%_
               _%kons-id315417%_
               _%obj315418%_
               .
               _%args315419%_)
        (let* ((_%klass315422%_ _%klass315416%_)
               (_%kons-id315430%_ _%kons-id315417%_)
               (_%obj315438%_ _%obj315418%_))
          (___constructor-init!
           _%klass315422%_
           _%kons-id315430%_
           _%obj315438%_
           _%args315419%_)
          '#!void)))
    (define constructor-init!
      (lambda (_%klass310436%_
               _%kons-id310437%_
               _%obj310438%_
               .
               _%args310439%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass310436%_ 'class))
            (let ((_%klass310443%_ _%klass310436%_))
              (if (symbol? _%kons-id310437%_)
                  (let ((_%kons-id310453%_ _%kons-id310437%_))
                    (if (object? _%obj310438%_)
                        (let ((_%obj310463%_ _%obj310438%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass310443%_
                                   _%kons-id310453%_
                                   _%obj310463%_
                                   _%args310439%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@911.63-911.66"
                           'contract:
                           'object?
                           'value:
                           _%obj310438%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@911.43-911.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id310437%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@911.26-911.31"
               'contract:
               'class-type?
               'value:
               _%klass310436%_)
              '#!void))))
    (define ___constructor-init!
      (lambda (_%klass315405%_ _%kons-id315406%_ _%obj315407%_ _%args315408%_)
        (let ((_%$e315410%_
               (__find-method
                _%klass315405%_
                _%obj315407%_
                _%kons-id315406%_)))
          (if _%$e315410%_
              ((lambda (_%kons315413%_)
                 (apply _%kons315413%_ _%obj315407%_ _%args315408%_)
                 _%obj315407%_)
               _%$e315410%_)
              (error '"missing constructor"
                     'class:
                     _%klass315405%_
                     'method:
                     _%kons-id315406%_)))))
    (define __struct-copy
      (lambda (_%struct315393%_)
        (let ((_%struct315396%_ _%struct315393%_))
          (declare (not safe))
          (##structure-copy _%struct315396%_))))
    (define struct-copy
      (lambda (_%struct310593%_)
        (if (object? _%struct310593%_)
            (let ((_%struct310597%_ _%struct310593%_))
              (__struct-copy _%struct310597%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@925.20-925.26"
               'contract:
               'object?
               'value:
               _%struct310593%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj315374%_)
        (let* ((_%obj315377%_ _%obj315374%_)
               (_%len315386%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj315377%_))))
          (let _%recur315388%_ ((_%i315390%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i315390%_ _%len315386%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj315377%_
                         _%i315390%_
                         '#f
                         '#f))
                      (_%recur315388%_
                       (let () (declare (not safe)) (##fx+ _%i315390%_ '1))))
                '())))))
    (define struct->list
      (lambda (_%obj310727%_)
        (if (object? _%obj310727%_)
            (let ((_%obj310731%_ _%obj310727%_))
              (__struct->list _%obj310731%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@928.21-928.24"
               'contract:
               'object?
               'value:
               _%obj310727%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj315326%_)
        (let* ((_%obj315329%_ _%obj315326%_)
               (_%klass315338%_
                (let () (declare (not safe)) (##structure-type _%obj315329%_)))
               (_%slot-vector315340%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass315338%_ '7 '#f '#f))))
          (let _%loop315342%_ ((_%index315344%_
                                (let ((__tmp321470
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector315340%_))))
                                  (declare (not safe))
                                  (##fx- __tmp321470 '1)))
                               (_%plist315345%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index315344%_ '1))
                (cons _%klass315338%_ _%plist315345%_)
                (let ((_%slot315348%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector315340%_
                          _%index315344%_))))
                  (_%loop315342%_
                   (let () (declare (not safe)) (##fx- _%index315344%_ '1))
                   (cons (let ((_%sym315350%_ _%slot315348%_))
                           (if (symbol? _%sym315350%_)
                               (let ((_%sym315355%_ _%sym315350%_))
                                 (declare (not safe))
                                 (__symbol->keyword _%sym315355%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  'symbol?
                                  'value:
                                  _%sym315350%_)
                                 '#!void)))
                         (cons (unchecked-field-ref
                                _%obj315329%_
                                _%index315344%_)
                               _%plist315345%_)))))))))
    (define class->list
      (lambda (_%obj310861%_)
        (if (object? _%obj310861%_)
            (let ((_%obj310865%_ _%obj310861%_)) (__class->list _%obj310865%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@936.20-936.23"
               'contract:
               'object?
               'value:
               _%obj310861%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj315276%_ _%id315277%_ . _%args315278%_)
        (let* ((_%id315281%_ _%id315277%_)
               (_%$e315312%_
                (let* ((_%obj315290%_ _%obj315276%_)
                       (_%id315293%_ _%id315281%_)
                       (_%id315298%_ _%id315293%_))
                  (__method-ref _%obj315290%_ _%id315298%_))))
          (if _%$e315312%_
              ((lambda (_%method315315%_)
                 (let ((_%method315317%_ _%method315315%_))
                   (apply _%method315317%_ _%obj315276%_ _%args315278%_)))
               _%$e315312%_)
              (error '"cannot find method"
                     'object:
                     _%obj315276%_
                     'method:
                     _%id315281%_)))))
    (define call-method
      (lambda (_%obj310995%_ _%id310996%_ . _%args310997%_)
        (if (symbol? _%id310996%_)
            (let ((_%id311001%_ _%id310996%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj310995%_
                       _%id311001%_
                       _%args310997%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@951.24-951.26"
               'contract:
               'symbol?
               'value:
               _%id310996%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj315227%_ _%id315228%_)
        (let* ((_%id315231%_ _%id315228%_)
               (_%klass315240%_ (class-of _%obj315227%_))
               (_%obj315243%_ _%obj315227%_)
               (_%id315246%_ _%id315231%_)
               (_%klass315251%_ _%klass315240%_)
               (_%id315266%_ _%id315246%_))
          (__find-method _%klass315251%_ _%obj315243%_ _%id315266%_))))
    (define method-ref
      (lambda (_%obj311131%_ _%id311132%_)
        (if (symbol? _%id311132%_)
            (let ((_%id311136%_ _%id311132%_))
              (__method-ref _%obj311131%_ _%id311136%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@978.23-978.25"
               'contract:
               'symbol?
               'value:
               _%id311132%_)
              '#!void))))
    (define checked-method-ref
      (lambda (_%obj315199%_ _%id315200%_)
        (let ((_%$e315224%_
               (let* ((_%obj315203%_ _%obj315199%_)
                      (_%id315206%_ _%id315200%_))
                 (if (symbol? _%id315206%_)
                     (let ((_%id315211%_ _%id315206%_))
                       (__method-ref _%obj315203%_ _%id315211%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id315206%_)
                       '#!void)))))
          (if _%$e315224%_
              _%$e315224%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj315199%_
                       'method:
                       _%id315200%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj315148%_ _%id315149%_)
        (let* ((_%id315152%_ _%id315149%_)
               (_%$e315183%_
                (let* ((_%obj315161%_ _%obj315148%_)
                       (_%id315164%_ _%id315152%_)
                       (_%id315169%_ _%id315164%_))
                  (__method-ref _%obj315161%_ _%id315169%_))))
          (if _%$e315183%_
              ((lambda (_%method315186%_)
                 (let ((_%method315188%_ _%method315186%_))
                   (lambda _%args315196%_
                     (apply _%method315188%_ _%obj315148%_ _%args315196%_))))
               _%$e315183%_)
              '#f))))
    (define bound-method-ref
      (lambda (_%obj311266%_ _%id311267%_)
        (if (symbol? _%id311267%_)
            (let ((_%id311271%_ _%id311267%_))
              (__bound-method-ref _%obj311266%_ _%id311271%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@986.29-986.31"
               'contract:
               'symbol?
               'value:
               _%id311267%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj315131%_ _%id315132%_)
        (let* ((_%id315135%_ _%id315132%_)
               (_%method315144%_
                (checked-method-ref _%obj315131%_ _%id315135%_)))
          (lambda _%args315146%_
            (apply _%method315144%_ _%obj315131%_ _%args315146%_)))))
    (define checked-bound-method-ref
      (lambda (_%obj311401%_ _%id311402%_)
        (if (symbol? _%id311402%_)
            (let ((_%id311406%_ _%id311402%_))
              (__checked-bound-method-ref _%obj311401%_ _%id311406%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@995.37-995.39"
               'contract:
               'symbol?
               'value:
               _%id311402%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass315000%_ _%obj315001%_ _%id315002%_)
        (let* ((_%klass315005%_ _%klass315000%_) (_%id315013%_ _%id315002%_))
          (if (let* ((_%klass315022%_ _%klass315005%_)
                     (_%klass315027%_ _%klass315022%_))
                (__class-type-sealed? _%klass315027%_))
              (let ((_%tab315057%_
                     (let* ((_%klass315041%_ _%klass315005%_)
                            (_%klass315046%_ _%klass315041%_))
                       (__specialize-class _%klass315046%_))))
                (declare (not safe))
                (symbolic-table-ref _%tab315057%_ _%id315013%_ '#f))
              (let ((_%$e315092%_
                     (let* ((_%klass315059%_ _%klass315005%_)
                            (_%obj315062%_ _%obj315001%_)
                            (_%id315065%_ _%id315013%_)
                            (_%klass315070%_ _%klass315059%_)
                            (_%id315082%_ _%id315065%_))
                       (__direct-method-ref
                        _%klass315070%_
                        _%obj315062%_
                        _%id315082%_))))
                (if _%$e315092%_
                    _%$e315092%_
                    (let* ((_%klass315096%_ _%klass315005%_)
                           (_%obj315099%_ _%obj315001%_)
                           (_%id315102%_ _%id315013%_)
                           (_%klass315107%_ _%klass315096%_)
                           (_%id315121%_ _%id315102%_))
                      (__mixin-method-ref
                       _%klass315107%_
                       _%obj315099%_
                       _%id315121%_))))))))
    (define find-method
      (lambda (_%klass311536%_ _%obj311537%_ _%id311538%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass311536%_ 'class))
            (let ((_%klass311542%_ _%klass311536%_))
              (if (symbol? _%id311538%_)
                  (let ((_%id311552%_ _%id311538%_))
                    (__find-method _%klass311542%_ _%obj311537%_ _%id311552%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1000.41-1000.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id311538%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1000.20-1000.25"
               'contract:
               'class-type?
               'value:
               _%klass311536%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins314945%_ _%obj314946%_ _%id314947%_)
        (let* ((_%id314950%_ _%id314947%_)
               (__tmp321471
                (lambda (_%g314958314960%_)
                  (let* ((_%klass314963%_ _%g314958314960%_)
                         (_%obj314966%_ _%obj314946%_)
                         (_%id314969%_ _%id314950%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass314963%_ 'class))
                        (let* ((_%klass314974%_ _%klass314963%_)
                               (_%id314990%_ _%id314969%_))
                          (__direct-method-ref
                           _%klass314974%_
                           _%obj314966%_
                           _%id314990%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass314963%_)
                          '#!void))))))
          (declare (not safe))
          (ormap__0 __tmp321471 _%mixins314945%_))))
    (define mixin-find-method
      (lambda (_%mixins311682%_ _%obj311683%_ _%id311684%_)
        (if (symbol? _%id311684%_)
            (let ((_%id311688%_ _%id311684%_))
              (__mixin-find-method
               _%mixins311682%_
               _%obj311683%_
               _%id311688%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1009.37-1009.39"
               'contract:
               'symbol?
               'value:
               _%id311684%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass314838%_ _%obj314839%_ _%id314840%_)
        (let* ((_%klass314843%_ _%klass314838%_) (_%id314851%_ _%id314840%_))
          (letrec ((_%metaclass-resolve-method314860%_
                    (lambda ()
                      (let* ((_%obj314921%_ _%klass314843%_)
                             (_%id314924%_ 'direct-method-ref)
                             (_%args314927%_ (list _%obj314839%_ _%id314851%_))
                             (_%id314932%_ _%id314924%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj314921%_
                                 _%id314932%_
                                 _%args314927%_))))
                   (_%metaclass-resolve-method!314861%_
                    (lambda ()
                      (let ((_%method314918%_
                             (_%metaclass-resolve-method314860%_)))
                        (let ((__tmp321473
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass314843%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp321472
                               (if _%method314918%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp321473
                           _%id314851%_
                           __tmp321472))
                        _%method314918%_))))
            (let ((_%$e314863%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass314843%_ '11 '#f '#f))))
              (if _%$e314863%_
                  ((lambda (_%ht314866%_)
                     (let ((_%method314868%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht314866%_
                               _%id314851%_
                               '#f))))
                       (if (procedure? _%method314868%_)
                           _%method314868%_
                           (if (let* ((_%klass314871%_ _%klass314843%_)
                                      (_%klass314876%_ _%klass314871%_))
                                 (__class-type-metaclass? _%klass314876%_))
                               (let ((_%$e314894%_ _%method314868%_))
                                 (if (eq? 'resolved _%$e314894%_)
                                     (_%metaclass-resolve-method314860%_)
                                     (if (eq? 'unknown _%$e314894%_)
                                         '#f
                                         (_%metaclass-resolve-method!314861%_))))
                               '#f))))
                   _%$e314863%_)
                  (if (let* ((_%klass314898%_ _%klass314843%_)
                             (_%klass314903%_ _%klass314898%_))
                        (__class-type-metaclass? _%klass314903%_))
                      (let ((_%tab314914%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass314843%_
                           _%tab314914%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!314861%_))
                      '#f)))))))
    (define direct-method-ref
      (lambda (_%klass311818%_ _%obj311819%_ _%id311820%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass311818%_ 'class))
            (let ((_%klass311824%_ _%klass311818%_))
              (if (symbol? _%id311820%_)
                  (let ((_%id311834%_ _%id311820%_))
                    (__direct-method-ref
                     _%klass311824%_
                     _%obj311819%_
                     _%id311834%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1012.47-1012.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id311820%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1012.26-1012.31"
               'contract:
               'class-type?
               'value:
               _%klass311818%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass314790%_ _%obj314791%_ _%id314792%_)
        (let* ((_%klass314795%_ _%klass314790%_)
               (_%id314803%_ _%id314792%_)
               (_%mixins314812%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass314795%_ '6 '#f '#f)))
               (_%obj314815%_ _%obj314791%_)
               (_%id314818%_ _%id314803%_)
               (_%id314823%_ _%id314818%_))
          (__mixin-find-method _%mixins314812%_ _%obj314815%_ _%id314823%_))))
    (define mixin-method-ref
      (lambda (_%klass311964%_ _%obj311965%_ _%id311966%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass311964%_ 'class))
            (let ((_%klass311970%_ _%klass311964%_))
              (if (symbol? _%id311966%_)
                  (let ((_%id311980%_ _%id311966%_))
                    (__mixin-method-ref
                     _%klass311970%_
                     _%obj311965%_
                     _%id311980%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1042.46-1042.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id311966%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1042.25-1042.30"
               'contract:
               'class-type?
               'value:
               _%klass311964%_)
              '#!void))))
    (define __bind-method!__%
      (lambda (_%klass314700%_ _%id314701%_ _%proc314702%_ _%rebind?314703%_)
        (let* ((_%id314706%_ _%id314701%_) (_%proc314714%_ _%proc314702%_))
          (letrec ((_%bind!314723%_
                    (lambda (_%ht314774%_)
                      (if (and (not _%rebind?314703%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht314774%_
                                  _%id314706%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass314700%_
                                 'method:
                                 _%id314706%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht314774%_
                               _%id314706%_
                               _%proc314714%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass314700%_ 'class))
                (let ((_%ht314726%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass314700%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht314726%_
                      (_%bind!314723%_ _%ht314726%_)
                      (let ((_%ht314728%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass314700%_
                           _%ht314728%_
                           '11
                           '#f
                           '#f))
                        (_%bind!314723%_ _%ht314728%_))))
                (if (let () (declare (not safe)) (##type? _%klass314700%_))
                    (let* ((_%klass314731%_
                            (__shadow-class__0 _%klass314700%_))
                           (_%id314734%_ _%id314706%_)
                           (_%proc314737%_ _%proc314714%_)
                           (_%rebind?314740%_ _%rebind?314703%_)
                           (_%id314745%_ _%id314734%_)
                           (_%proc314763%_ _%proc314737%_))
                      (__bind-method!__%
                       _%klass314731%_
                       _%id314745%_
                       _%proc314763%_
                       _%rebind?314740%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass314700%_)))))))
    (define __bind-method!__0
      (lambda (_%klass314779%_ _%id314780%_ _%proc314781%_)
        (let ((_%rebind?314783%_ '#f))
          (__bind-method!__%
           _%klass314779%_
           _%id314780%_
           _%proc314781%_
           _%rebind?314783%_))))
    (define __bind-method!
      (lambda _g321474_
        (let ((_g321475_ (let () (declare (not safe)) (##length _g321474_))))
          (cond ((let () (declare (not safe)) (##fx= _g321475_ 3))
                 (apply __bind-method!__0 _g321474_))
                ((let () (declare (not safe)) (##fx= _g321475_ 4))
                 (apply __bind-method!__% _g321474_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g321474_))))))
    (define bind-method!__%
      (lambda (_%klass312111%_ _%id312112%_ _%proc312113%_ _%rebind?312114%_)
        (if (symbol? _%id312112%_)
            (let ((_%id312118%_ _%id312112%_))
              (if (procedure? _%proc312113%_)
                  (let ((_%proc312128%_ _%proc312113%_))
                    (__bind-method!__%
                     _%klass312111%_
                     _%id312118%_
                     _%proc312128%_
                     _%rebind?312114%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1045.42-1045.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc312113%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1045.27-1045.29"
               'contract:
               'symbol?
               'value:
               _%id312112%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass312141%_ _%id312142%_ _%proc312143%_)
        (let ((_%rebind?312145%_ '#f))
          (bind-method!__%
           _%klass312141%_
           _%id312142%_
           _%proc312143%_
           _%rebind?312145%_))))
    (define bind-method!
      (lambda _g321476_
        (let ((_g321477_ (let () (declare (not safe)) (##length _g321476_))))
          (cond ((let () (declare (not safe)) (##fx= _g321477_ 3))
                 (apply bind-method!__0 _g321476_))
                ((let () (declare (not safe)) (##fx= _g321477_ 4))
                 (apply bind-method!__% _g321476_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g321476_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint314681%_ _%seed314682%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint314681%_
           procedure-hash
           eq?
           _%seed314682%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint314688%_ '#f) (_%seed314690%_ '0))
          (make-method-specializer-table__%
           _%size-hint314688%_
           _%seed314690%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint314692%_)
        (let ((_%seed314694%_ '0))
          (make-method-specializer-table__%
           _%size-hint314692%_
           _%seed314694%_))))
    (define make-method-specializer-table
      (lambda _g321478_
        (let ((_g321479_ (let () (declare (not safe)) (##length _g321478_))))
          (cond ((let () (declare (not safe)) (##fx= _g321479_ 0))
                 (apply make-method-specializer-table__0 _g321478_))
                ((let () (declare (not safe)) (##fx= _g321479_ 1))
                 (apply make-method-specializer-table__1 _g321478_))
                ((let () (declare (not safe)) (##fx= _g321479_ 2))
                 (apply make-method-specializer-table__% _g321478_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g321478_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint314661%_ _%seed314663%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint314661%_
           procedure-hash
           eq?
           _%seed314663%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint314669%_ '#f) (_%seed314671%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint314669%_
           _%seed314671%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint314673%_)
        (let ((_%seed314675%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint314673%_
           _%seed314675%_))))
    (define make-method-specializer-table/lock
      (lambda _g321480_
        (let ((_g321481_ (let () (declare (not safe)) (##length _g321480_))))
          (cond ((let () (declare (not safe)) (##fx= _g321481_ 0))
                 (apply make-method-specializer-table/lock__0 _g321480_))
                ((let () (declare (not safe)) (##fx= _g321481_ 1))
                 (apply make-method-specializer-table/lock__1 _g321480_))
                ((let () (declare (not safe)) (##fx= _g321481_ 2))
                 (apply make-method-specializer-table/lock__% _g321480_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g321480_))))))
    (define method-specializer-table-ref
      (lambda (_%tab314614%_ _%key314615%_ _%default314616%_)
        (let ((_%table314618%_
               (let () (declare (not safe)) (&raw-table-table _%tab314614%_)))
              (_%seed314619%_
               (let () (declare (not safe)) (&raw-table-seed _%tab314614%_))))
          (let* ((_%h314621%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key314615%_))
                         _%seed314619%_))
                 (_%size314624%_ (vector-length _%table314618%_))
                 (_%entries314627%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size314624%_ '2)))
                 (_%start314630%_
                  (let ((__tmp321482
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h314621%_ _%entries314627%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp321482 '1))))
            (let _%loop314634%_ ((_%probe314637%_ _%start314630%_)
                                 (_%i314639%_ '1)
                                 (_%deleted314641%_ '#f))
              (let ((_%k314644%_ (vector-ref _%table314618%_ _%probe314637%_)))
                (if (eq? _%k314644%_ (macro-unused-obj))
                    _%default314616%_
                    (if (eq? _%k314644%_ (macro-deleted-obj))
                        (_%loop314634%_
                         (let ((_%next-probe314649%_
                                (fx+ _%start314630%_
                                     _%i314639%_
                                     (fx* _%i314639%_ _%i314639%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe314649%_ _%size314624%_))
                         (let () (declare (not safe)) (##fx+ _%i314639%_ '1))
                         (let ((_%$e314652%_ _%deleted314641%_))
                           (if _%$e314652%_ _%$e314652%_ _%probe314637%_)))
                        (if (eq? _%key314615%_ _%k314644%_)
                            (vector-ref
                             _%table314618%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe314637%_ '1)))
                            (_%loop314634%_
                             (let ((_%next-probe314657%_
                                    (fx+ _%start314630%_
                                         _%i314639%_
                                         (fx* _%i314639%_ _%i314639%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe314657%_
                                _%size314624%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i314639%_ '1))
                             _%deleted314641%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab314585%_ _%key314586%_ _%default314587%_)
        (let ((_%lock314589%_
               (let () (declare (not safe)) (&raw-table-lock _%tab314585%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again314594%_ ((_%spin314597%_ '0))
              (if (let ((__tmp321483
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock314589%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp321483 '0))
                  (let ((__tmp321484 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock314589%_ '1 __tmp321484))
                  (if (let () (declare (not safe)) (##fx< _%spin314597%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again314594%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin314597%_ '1))))
                      (let ((_%owner314603%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock314589%_ '1))))
                        (if (eq? _%owner314603%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner314603%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again314594%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r314609%_
                 (method-specializer-table-ref
                  _%tab314585%_
                  _%key314586%_
                  _%default314587%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock314589%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock314589%_ '0 '0 '1))))
            _%$r314609%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab314537%_ _%key314538%_ _%value314539%_)
        (let ((_%table314541%_
               (let () (declare (not safe)) (&raw-table-table _%tab314537%_)))
              (_%seed314542%_
               (let () (declare (not safe)) (&raw-table-seed _%tab314537%_))))
          (let* ((_%h314544%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key314538%_))
                         _%seed314542%_))
                 (_%size314547%_ (vector-length _%table314541%_))
                 (_%entries314550%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size314547%_ '2)))
                 (_%start314553%_
                  (let ((__tmp321485
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h314544%_ _%entries314550%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp321485 '1))))
            (let _%loop314557%_ ((_%probe314560%_ _%start314553%_)
                                 (_%i314562%_ '1)
                                 (_%deleted314564%_ '#f))
              (let ((_%k314567%_ (vector-ref _%table314541%_ _%probe314560%_)))
                (if (eq? _%k314567%_ (macro-unused-obj))
                    (if _%deleted314564%_
                        (begin
                          (vector-set!
                           _%table314541%_
                           _%deleted314564%_
                           _%key314538%_)
                          (vector-set!
                           _%table314541%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted314564%_ '1))
                           _%value314539%_)
                          ((lambda ()
                             (let ((__tmp321486
                                    (let ((__tmp321487
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab314537%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp321487 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab314537%_
                                __tmp321486)))))
                        (begin
                          (vector-set!
                           _%table314541%_
                           _%probe314560%_
                           _%key314538%_)
                          (vector-set!
                           _%table314541%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe314560%_ '1))
                           _%value314539%_)
                          ((lambda ()
                             (let ((__tmp321488
                                    (let ((__tmp321489
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab314537%_))))
                                      (declare (not safe))
                                      (##fx- __tmp321489 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab314537%_
                                __tmp321488))
                             (let ((__tmp321490
                                    (let ((__tmp321491
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab314537%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp321491 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab314537%_
                                __tmp321490))))))
                    (if (eq? _%k314567%_ (macro-deleted-obj))
                        (_%loop314557%_
                         (let ((_%next-probe314574%_
                                (fx+ _%start314553%_
                                     _%i314562%_
                                     (fx* _%i314562%_ _%i314562%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe314574%_ _%size314547%_))
                         (let () (declare (not safe)) (##fx+ _%i314562%_ '1))
                         (let ((_%$e314577%_ _%deleted314564%_))
                           (if _%$e314577%_ _%$e314577%_ _%probe314560%_)))
                        (if (eq? _%key314538%_ _%k314567%_)
                            (let ()
                              (vector-set!
                               _%table314541%_
                               _%probe314560%_
                               _%key314538%_)
                              (vector-set!
                               _%table314541%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe314560%_ '1))
                               _%value314539%_))
                            (_%loop314557%_
                             (let ((_%next-probe314582%_
                                    (fx+ _%start314553%_
                                         _%i314562%_
                                         (fx* _%i314562%_ _%i314562%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe314582%_
                                _%size314547%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i314562%_ '1))
                             _%deleted314564%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab314533%_ _%key314534%_ _%value314535%_)
        (if (let ((__tmp321494
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab314533%_)))
                  (__tmp321492
                   (let ((__tmp321493
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab314533%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp321493 '4))))
              (declare (not safe))
              (##fx< __tmp321494 __tmp321492))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab314533%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab314533%_
         _%key314534%_
         _%value314535%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab314503%_ _%key314504%_ _%value314505%_)
        (let ((_%lock314508%_
               (let () (declare (not safe)) (&raw-table-lock _%tab314503%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again314513%_ ((_%spin314516%_ '0))
              (if (let ((__tmp321495
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock314508%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp321495 '0))
                  (let ((__tmp321496 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock314508%_ '1 __tmp321496))
                  (if (let () (declare (not safe)) (##fx< _%spin314516%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again314513%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin314516%_ '1))))
                      (let ((_%owner314522%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock314508%_ '1))))
                        (if (eq? _%owner314522%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner314522%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again314513%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r314528%_
                 (method-specializer-table-set!
                  _%tab314503%_
                  _%key314504%_
                  _%value314505%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock314508%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock314508%_ '0 '0 '1))))
            _%$r314528%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab314454%_
               _%key314455%_
               _%method-specializer-table-update!314456%_
               _%default314457%_)
        (let ((_%table314459%_
               (let () (declare (not safe)) (&raw-table-table _%tab314454%_)))
              (_%seed314460%_
               (let () (declare (not safe)) (&raw-table-seed _%tab314454%_))))
          (let* ((_%h314462%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key314455%_))
                         _%seed314460%_))
                 (_%size314465%_ (vector-length _%table314459%_))
                 (_%entries314468%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size314465%_ '2)))
                 (_%start314471%_
                  (let ((__tmp321497
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h314462%_ _%entries314468%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp321497 '1))))
            (let _%loop314475%_ ((_%probe314478%_ _%start314471%_)
                                 (_%i314480%_ '1)
                                 (_%deleted314482%_ '#f))
              (let ((_%k314485%_ (vector-ref _%table314459%_ _%probe314478%_)))
                (if (eq? _%k314485%_ (macro-unused-obj))
                    (if _%deleted314482%_
                        (begin
                          (vector-set!
                           _%table314459%_
                           _%deleted314482%_
                           _%key314455%_)
                          (vector-set!
                           _%table314459%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted314482%_ '1))
                           (_%method-specializer-table-update!314456%_
                            _%default314457%_))
                          ((lambda ()
                             (let ((__tmp321498
                                    (let ((__tmp321499
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab314454%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp321499 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab314454%_
                                __tmp321498)))))
                        (begin
                          (vector-set!
                           _%table314459%_
                           _%probe314478%_
                           _%key314455%_)
                          (vector-set!
                           _%table314459%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe314478%_ '1))
                           (_%method-specializer-table-update!314456%_
                            _%default314457%_))
                          ((lambda ()
                             (let ((__tmp321500
                                    (let ((__tmp321501
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab314454%_))))
                                      (declare (not safe))
                                      (##fx- __tmp321501 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab314454%_
                                __tmp321500))
                             (let ((__tmp321502
                                    (let ((__tmp321503
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab314454%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp321503 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab314454%_
                                __tmp321502))))))
                    (if (eq? _%k314485%_ (macro-deleted-obj))
                        (_%loop314475%_
                         (let ((_%next-probe314492%_
                                (fx+ _%start314471%_
                                     _%i314480%_
                                     (fx* _%i314480%_ _%i314480%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe314492%_ _%size314465%_))
                         (let () (declare (not safe)) (##fx+ _%i314480%_ '1))
                         (let ((_%$e314495%_ _%deleted314482%_))
                           (if _%$e314495%_ _%$e314495%_ _%probe314478%_)))
                        (if (eq? _%key314455%_ _%k314485%_)
                            (let ()
                              (vector-set!
                               _%table314459%_
                               _%probe314478%_
                               _%key314455%_)
                              (vector-set!
                               _%table314459%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe314478%_ '1))
                               (_%method-specializer-table-update!314456%_
                                (vector-ref
                                 _%table314459%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe314478%_ '1))))))
                            (_%loop314475%_
                             (let ((_%next-probe314500%_
                                    (fx+ _%start314471%_
                                         _%i314480%_
                                         (fx* _%i314480%_ _%i314480%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe314500%_
                                _%size314465%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i314480%_ '1))
                             _%deleted314482%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab314449%_
               _%key314450%_
               _%method-specializer-table-update!314451%_
               _%default314452%_)
        (if (let ((__tmp321506
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab314449%_)))
                  (__tmp321504
                   (let ((__tmp321505
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab314449%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp321505 '4))))
              (declare (not safe))
              (##fx< __tmp321506 __tmp321504))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab314449%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab314449%_
         _%key314450%_
         _%method-specializer-table-update!314451%_
         _%default314452%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab314418%_
               _%key314419%_
               _%method-specializer-table-update!314420%_
               _%default314421%_)
        (let ((_%lock314424%_
               (let () (declare (not safe)) (&raw-table-lock _%tab314418%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again314429%_ ((_%spin314432%_ '0))
              (if (let ((__tmp321507
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock314424%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp321507 '0))
                  (let ((__tmp321508 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock314424%_ '1 __tmp321508))
                  (if (let () (declare (not safe)) (##fx< _%spin314432%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again314429%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin314432%_ '1))))
                      (let ((_%owner314438%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock314424%_ '1))))
                        (if (eq? _%owner314438%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner314438%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again314429%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r314444%_
                 (_%method-specializer-table-update!314420%_
                  _%tab314418%_
                  _%key314419%_
                  _%method-specializer-table-update!314420%_
                  _%default314421%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock314424%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock314424%_ '0 '0 '1))))
            _%$r314444%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab314375%_ _%key314376%_)
        (let ((_%table314378%_
               (let () (declare (not safe)) (&raw-table-table _%tab314375%_)))
              (_%seed314380%_
               (let () (declare (not safe)) (&raw-table-seed _%tab314375%_))))
          (let* ((_%h314383%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key314376%_))
                         _%seed314380%_))
                 (_%size314386%_ (vector-length _%table314378%_))
                 (_%entries314389%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size314386%_ '2)))
                 (_%start314392%_
                  (let ((__tmp321509
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h314383%_ _%entries314389%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp321509 '1))))
            (let _%loop314396%_ ((_%probe314399%_ _%start314392%_)
                                 (_%i314401%_ '1))
              (let ((_%k314404%_ (vector-ref _%table314378%_ _%probe314399%_)))
                (if (eq? _%k314404%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k314404%_ (macro-deleted-obj))
                        (_%loop314396%_
                         (let ((_%next-probe314409%_
                                (fx+ _%start314392%_
                                     _%i314401%_
                                     (fx* _%i314401%_ _%i314401%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe314409%_ _%size314386%_))
                         (let () (declare (not safe)) (##fx+ _%i314401%_ '1)))
                        (if (eq? _%key314376%_ _%k314404%_)
                            (let ()
                              (vector-set!
                               _%table314378%_
                               _%probe314399%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table314378%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe314399%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp321510
                                        (let ((__tmp321511
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab314375%_))))
                                          (declare (not safe))
                                          (##fx- __tmp321511 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab314375%_
                                    __tmp321510)))))
                            (_%loop314396%_
                             (let ((_%next-probe314415%_
                                    (fx+ _%start314392%_
                                         _%i314401%_
                                         (fx* _%i314401%_ _%i314401%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe314415%_
                                _%size314386%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i314401%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab314345%_ _%key314347%_)
        (let ((_%lock314350%_
               (let () (declare (not safe)) (&raw-table-lock _%tab314345%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again314355%_ ((_%spin314358%_ '0))
              (if (let ((__tmp321512
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock314350%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp321512 '0))
                  (let ((__tmp321513 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock314350%_ '1 __tmp321513))
                  (if (let () (declare (not safe)) (##fx< _%spin314358%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again314355%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin314358%_ '1))))
                      (let ((_%owner314364%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock314350%_ '1))))
                        (if (eq? _%owner314364%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner314364%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again314355%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r314370%_
                 (method-specializer-table-delete!
                  _%tab314345%_
                  _%key314347%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock314350%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock314350%_ '0 '0 '1))))
            _%$r314370%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc314342%_ _%specializer314343%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc314342%_
         _%specializer314343%_)))
    (define __lookup-method-specializer
      (lambda (_%proc314340%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc314340%_
         '#f)))
    (define __specialize-class
      (lambda (_%klass314322%_)
        (let* ((_%klass314325%_ _%klass314322%_)
               (_%$e314334%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass314325%_ '12 '#f '#f))))
          (if _%$e314334%_
              _%$e314334%_
              (let ((_%method-table314338%_
                     (___specialize-class _%klass314325%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass314325%_
                   _%method-table314338%_
                   '12
                   '#f
                   '#f))
                _%method-table314338%_)))))
    (define specialize-class
      (lambda (_%klass312272%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass312272%_ 'class))
            (let ((_%klass312276%_ _%klass312272%_))
              (__specialize-class _%klass312276%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1095.25-1095.30"
               'contract:
               'class-type?
               'value:
               _%klass312272%_)
              '#!void))))
    (define __specialize-method
      (lambda (_%klass314306%_
               _%method-table314307%_
               _%method314308%_
               _%proc314309%_)
        (let ((_%$e314311%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table314307%_
                  _%method314308%_
                  '#f))))
          (if _%$e314311%_
              _%$e314311%_
              (let ((_%$e314314%_
                     (__lookup-method-specializer _%proc314309%_)))
                (if _%$e314314%_
                    ((lambda (_%specialize314317%_)
                       (let ((_%specialized-proc314319%_
                              (_%specialize314317%_
                               _%klass314306%_
                               _%method-table314307%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table314307%_
                          _%method314308%_
                          _%specialized-proc314319%_)))
                     _%$e314314%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table314307%_
                       _%method314308%_
                       _%proc314309%_))))))))
    (define ___specialize-class
      (lambda (_%klass314173%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass314173%_ 'class))
            (if (let* ((_%klass314176%_ _%klass314173%_)
                       (_%klass314181%_ _%klass314176%_))
                  (__class-type-metaclass? _%klass314181%_))
                (let* ((_%obj314193%_ _%klass314173%_)
                       (_%id314196%_ 'specialize-class)
                       (_%args314199%_ '())
                       (_%id314204%_ _%id314196%_))
                  (declare (not safe))
                  (##apply __call-method
                           _%obj314193%_
                           _%id314204%_
                           _%args314199%_))
                (if (let* ((_%pred314217%_ class-type-metaclass?)
                           (_%lst314220%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass314173%_
                               '6
                               '#f
                               '#f)))
                           (_%pred314225%_ _%pred314217%_))
                      (declare (not safe))
                      (__find _%pred314225%_ _%lst314220%_))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass314173%_)
                    (let ((_%method-table314238%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop314240%_ ((_%rest314242%_
                                            (let* ((_%klass314289%_
                                                    _%klass314173%_)
                                                   (_%klass314294%_
                                                    _%klass314289%_))
                                              (__class-precedence-list
                                               _%klass314294%_))))
                        (let* ((_%rest314243314251%_ _%rest314242%_)
                               (_%else314245314259%_
                                (lambda () _%method-table314238%_))
                               (_%K314247314277%_
                                (lambda (_%rest314262%_ _%xklass314263%_)
                                  (let ((_%xmethod-table314264314266%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass314263%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table314264314266%_
                                        (let* ((_%xmethod-table314268%_
                                                _%xmethod-table314264314266%_)
                                               (__tmp321514
                                                (lambda (_%g314269314272%_
                                                         _%g314270314274%_)
                                                  (__specialize-method
                                                   _%klass314173%_
                                                   _%method-table314238%_
                                                   _%g314269314272%_
                                                   _%g314270314274%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table314268%_
                                           __tmp321514))
                                        '#f))
                                  (_%loop314240%_ _%rest314262%_))))
                          (if (pair? _%rest314243314251%_)
                              (let ((_%hd314248314280%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest314243314251%_)))
                                    (_%tl314249314282%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest314243314251%_))))
                                (let* ((_%xklass314285%_ _%hd314248314280%_)
                                       (_%rest314287%_ _%tl314249314282%_))
                                  (_%K314247314277%_
                                   _%rest314287%_
                                   _%xklass314285%_)))
                              (_%else314245314259%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass314173%_))
                (__specialize-class (__shadow-class__0 _%klass314173%_))
                (error '"bad class; cannot specialize" _%klass314173%_)))))
    (define __seal-class!
      (lambda (_%klass314036%_)
        (let ((_%klass314039%_ _%klass314036%_))
          (if (let* ((_%klass314048%_ _%klass314039%_)
                     (_%klass314053%_ _%klass314048%_))
                (__class-type-sealed? _%klass314053%_))
              '#!void
              (begin
                (if (let* ((_%klass314066%_ _%klass314039%_)
                           (_%klass314071%_ _%klass314066%_))
                      (__class-type-metaclass? _%klass314071%_))
                    (let ()
                      (let* ((_%obj314082%_ _%klass314039%_)
                             (_%id314085%_ 'seal-class!)
                             (_%args314088%_ '())
                             (_%id314093%_ _%id314085%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj314082%_
                                 _%id314093%_
                                 _%args314088%_))
                      (let* ((_%klass314106%_ _%klass314039%_)
                             (_%klass314111%_ _%klass314106%_))
                        (__specialize-class _%klass314111%_)))
                    (if (let* ((_%pred314121%_ class-type-metaclass?)
                               (_%lst314124%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass314039%_
                                   '6
                                   '#f
                                   '#f)))
                               (_%pred314129%_ _%pred314121%_))
                          (declare (not safe))
                          (__find _%pred314129%_ _%lst314124%_))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass314039%_)
                        (let* ((_%klass314142%_ _%klass314039%_)
                               (_%klass314147%_ _%klass314142%_))
                          (__specialize-class _%klass314147%_))))
                (let* ((_%klass314158%_ _%klass314039%_)
                       (_%klass314163%_ _%klass314158%_))
                  (__class-type-seal! _%klass314163%_)))))))
    (define seal-class!
      (lambda (_%klass312406%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass312406%_ 'class))
            (let ((_%klass312410%_ _%klass312406%_))
              (__seal-class! _%klass312410%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1141.20-1141.25"
               'contract:
               'class-type?
               'value:
               _%klass312406%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass313924%_ _%obj313925%_ _%id313926%_)
        (let* ((_%subklass313929%_ _%subklass313924%_)
               (_%id313937%_ _%id313926%_))
          (letrec ((_%find-next-method313946%_
                    (lambda (_%klass313948%_)
                      (let _%lp313950%_ ((_%rest313952%_
                                          (let ((_%klass314021%_
                                                 _%klass313948%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%klass314021%_
                                                   'class))
                                                (let ((_%klass314026%_
                                                       _%klass314021%_))
                                                  (__class-precedence-list
                                                   _%klass314026%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/mop
                                                   'contract:
                                                   'class-type?
                                                   'value:
                                                   _%klass314021%_)
                                                  '#!void)))))
                        (let* ((_%rest313953313961%_ _%rest313952%_)
                               (_%else313955313969%_ (lambda () '#f))
                               (_%K313957314009%_
                                (lambda (_%rest313972%_ _%klass313973%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass313929%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass313973%_)))
                                      (let* ((_%mixins313975%_ _%rest313972%_)
                                             (_%obj313978%_ _%obj313925%_)
                                             (_%id313981%_ _%id313937%_)
                                             (_%id313986%_ _%id313981%_))
                                        (__mixin-find-method
                                         _%mixins313975%_
                                         _%obj313978%_
                                         _%id313986%_))
                                      (_%lp313950%_ _%rest313972%_)))))
                          (if (pair? _%rest313953313961%_)
                              (let ((_%hd313958314012%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest313953313961%_)))
                                    (_%tl313959314014%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest313953313961%_))))
                                (let* ((_%klass314017%_ _%hd313958314012%_)
                                       (_%rest314019%_ _%tl313959314014%_))
                                  (_%K313957314009%_
                                   _%rest314019%_
                                   _%klass314017%_)))
                              (_%else313955313969%_)))))))
            (_%find-next-method313946%_ (class-of _%obj313925%_))))))
    (define next-method
      (lambda (_%subklass312540%_ _%obj312541%_ _%id312542%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass312540%_ 'class))
            (let ((_%subklass312546%_ _%subklass312540%_))
              (if (symbol? _%id312542%_)
                  (let ((_%id312556%_ _%id312542%_))
                    (__next-method
                     _%subklass312546%_
                     _%obj312541%_
                     _%id312556%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1163.44-1163.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id312542%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1163.20-1163.28"
               'contract:
               'class-type?
               'value:
               _%subklass312540%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass313859%_ _%obj313860%_ _%id313861%_ . _%args313862%_)
        (let* ((_%subklass313865%_ _%subklass313859%_)
               (_%id313873%_ _%id313861%_)
               (_%$e313918%_
                (let* ((_%subklass313882%_ _%subklass313865%_)
                       (_%obj313885%_ _%obj313860%_)
                       (_%id313888%_ _%id313873%_)
                       (_%subklass313893%_ _%subklass313882%_)
                       (_%id313908%_ _%id313888%_))
                  (__next-method
                   _%subklass313893%_
                   _%obj313885%_
                   _%id313908%_))))
          (if _%$e313918%_
              ((lambda (_%methodf313921%_)
                 (apply _%methodf313921%_ _%obj313860%_ _%args313862%_))
               _%$e313918%_)
              (error '"cannot find next method"
                     'object:
                     _%obj313860%_
                     'method:
                     _%id313873%_)))))
    (define call-next-method
      (lambda (_%subklass312686%_ _%obj312687%_ _%id312688%_ . _%args312689%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass312686%_ 'class))
            (let ((_%subklass312693%_ _%subklass312686%_))
              (if (symbol? _%id312688%_)
                  (let ((_%id312703%_ _%id312688%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass312693%_
                             _%obj312687%_
                             _%id312703%_
                             _%args312689%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1174.49-1174.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id312688%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1174.25-1174.33"
               'contract:
               'class-type?
               'value:
               _%subklass312686%_)
              '#!void))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type313638%_ _%properties313639%_)
        (letrec ((_%shadow-type-id313641%_
                  (lambda (_%type313847%_)
                    (let ((__tmp321515
                           (let ()
                             (declare (not safe))
                             (##type-name _%type313847%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp321515 '"::t"))))
                 (_%shadow-type-name313642%_
                  (lambda (_%type313845%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type313845%_))))
                 (_%make-shadow-class313643%_
                  (lambda (_%type313727%_ _%precedence-list313728%_)
                    (let* ((_%super313730%_
                            (if (pair? _%precedence-list313728%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list313728%_))
                                      '())
                                '()))
                           (_%klass313842%_
                            (let* ((_%id313732%_
                                    (_%shadow-type-id313641%_ _%type313727%_))
                                   (_%name313735%_
                                    (let ()
                                      (declare (not safe))
                                      (##type-name _%type313727%_)))
                                   (_%direct-supers313738%_ _%super313730%_)
                                   (_%direct-slots313741%_ '())
                                   (_%properties313767%_
                                    (cons (cons 'struct: '#t)
                                          (cons (cons 'system: '#t)
                                                (cons (cons 'system-type:
                                                            _%type313727%_)
                                                      (let ((__tmp321516
                                                             (if (let ((_%type313744%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%type313727%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##type? _%type313744%_))
                               (let ((_%type313749%_ _%type313744%_))
                                 (__type-extensible? _%type313749%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  '##type?
                                  'value:
                                  _%type313744%_)
                                 '#!void)))
                         '()
                         (cons (cons 'final: '#t) '()))))
                (declare (not safe))
                (foldr__0 cons _%properties313639%_ __tmp321516))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%constructor313770%_ '#f)
                                   (_%id313775%_ _%id313732%_))
                              (if (symbol? _%name313735%_)
                                  (let* ((_%name313786%_ _%name313735%_)
                                         (_%direct-supers313796%_
                                          _%direct-supers313738%_)
                                         (_%direct-slots313806%_
                                          _%direct-slots313741%_)
                                         (_%properties313816%_
                                          _%properties313767%_))
                                    (if ((lambda (_%$obj313825%_)
                                           (or (not _%$obj313825%_)
                                               (symbol? _%$obj313825%_)))
                                         _%constructor313770%_)
                                        (let ((_%constructor313832%_
                                               _%constructor313770%_))
                                          (__make-class-type
                                           _%id313775%_
                                           _%name313786%_
                                           _%direct-supers313796%_
                                           _%direct-slots313806%_
                                           _%properties313816%_
                                           _%constructor313832%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '(? (or not symbol?))
                                           'value:
                                           _%constructor313770%_)
                                          '#!void)))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     'symbol?
                                     'value:
                                     _%name313735%_)
                                    '#!void)))))
                      (let ((__tmp321517
                             (let ()
                               (declare (not safe))
                               (##type-id _%type313727%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp321517
                         _%klass313842%_))
                      _%klass313842%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again313647%_ ((_%spin313650%_ '0))
              (if (let ((__tmp321518
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp321518 '0))
                  (let ((__tmp321519 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp321519))
                  (if (let () (declare (not safe)) (##fx< _%spin313650%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again313647%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin313650%_ '1))))
                      (let ((_%owner313656%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner313656%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner313656%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again313647%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e313662%_
                 (let ((__tmp321520
                        (let ()
                          (declare (not safe))
                          (##type-id _%type313638%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp321520 '#f))))
            (if _%$e313662%_
                ((lambda (_%klass313665%_)
                   (let ()
                     (declare (not interrupts-enabled))
                     (begin
                       (let ()
                         (declare (not safe))
                         (##vector-set! __shadow-classes-lock '1 '#f))
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __shadow-classes-lock '0 '0 '1))))
                   _%klass313665%_)
                 _%$e313662%_)
                (let _%loop313670%_ ((_%super313672%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type313638%_)))
                                     (_%hierarchy313673%_ '()))
                  (if (not _%super313672%_)
                      (let _%loop313676%_ ((_%rest313678%_ _%hierarchy313673%_)
                                           (_%precedence-list313679%_ '()))
                        (let* ((_%rest313680313688%_ _%rest313678%_)
                               (_%else313682313700%_
                                (lambda ()
                                  (let ((_%klass313696%_
                                         (_%make-shadow-class313643%_
                                          _%type313638%_
                                          _%precedence-list313679%_)))
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
                                    _%klass313696%_)))
                               (_%K313684313714%_
                                (lambda (_%rest313703%_ _%type313704%_)
                                  (let ((_%$e313706%_
                                         (let ((__tmp321521
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type313704%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp321521
                                            '#f))))
                                    (if _%$e313706%_
                                        ((lambda (_%klass313709%_)
                                           (_%loop313676%_
                                            _%rest313703%_
                                            (cons _%klass313709%_
                                                  _%precedence-list313679%_)))
                                         _%$e313706%_)
                                        (let ((_%klass313712%_
                                               (_%make-shadow-class313643%_
                                                _%type313704%_
                                                _%precedence-list313679%_)))
                                          (_%loop313676%_
                                           _%rest313703%_
                                           (cons _%klass313712%_
                                                 _%precedence-list313679%_))))))))
                          (if (pair? _%rest313680313688%_)
                              (let ((_%hd313685313717%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest313680313688%_)))
                                    (_%tl313686313719%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest313680313688%_))))
                                (let* ((_%type313722%_ _%hd313685313717%_)
                                       (_%rest313724%_ _%tl313686313719%_))
                                  (_%K313684313714%_
                                   _%rest313724%_
                                   _%type313722%_)))
                              (_%else313682313700%_))))
                      (_%loop313670%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super313672%_))
                       (cons _%super313672%_ _%hierarchy313673%_)))))))))
    (define __shadow-class__0
      (lambda (_%type313852%_)
        (let ((_%properties313854%_ '()))
          (__shadow-class__% _%type313852%_ _%properties313854%_))))
    (define __shadow-class
      (lambda _g321522_
        (let ((_g321523_ (let () (declare (not safe)) (##length _g321522_))))
          (cond ((let () (declare (not safe)) (##fx= _g321523_ 1))
                 (apply __shadow-class__0 _g321522_))
                ((let () (declare (not safe)) (##fx= _g321523_ 2))
                 (apply __shadow-class__% _g321522_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g321522_))))))
    (define __type
      (let* ((_%tb313626%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e313628%_ _%tb313626%_))
        (if (eq? '2 _%$e313628%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e313628%_)
                (let ((_%flonum-self-tagging-tags313631%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits313632%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e313634%_ _%flonum-self-tagging-tags313631%_))
                    (if (eq? '0 _%$e313634%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits313632%_ '2))
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
                        (if (eq? '1 _%$e313634%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits313632%_ '2))
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
                            (if (eq? '2 _%$e313634%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e313634%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e313634%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags313631%_))))))))
                (error '"unexpected tag width" _%tb313626%_)))))
    (define __class
      (let* ((_%len313574%_
              (let () (declare (not safe)) (##vector-length __type)))
             (_%cv313576%_
              (let () (declare (not safe)) (##make-vector _%len313574%_ '#f))))
        (let _%loop313579%_ ((_%i313581%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i313581%_ _%len313574%_))
              (let* ((_%t313583%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i313581%_)))
                     (_%f313623%_
                      (if (eq? _%t313583%_ 'undefined)
                          (lambda (_%obj313586%_)
                            (error '"object type is undefined" _%obj313586%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t313583%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj313589%_)
                                (declare (not interrupts-enabled) (not safe))
                                (__system-class _%t313583%_))
                              (if (eq? _%t313583%_ 'subtyped)
                                  (lambda (_%obj313593%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st313596%_
                                           (##subtype _%obj313593%_)))
                                      (if (##fx= _%st313596%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass313599%_
                                                 (##structure-type
                                                  _%obj313593%_)))
                                            (if (##structure-instance-of?
                                                 _%klass313599%_
                                                 'class)
                                                _%klass313599%_
                                                (__shadow-class__0
                                                 _%klass313599%_)))
                                          (if (##fx= _%st313596%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj313593%_)
                                                         '1)
                                                  (__system-class 'box)
                                                  (__system-class 'values))
                                              (let ((_%$e313602%_
                                                     (##vector-ref
                                                      __subtype-id
                                                      _%st313596%_)))
                                                (if _%$e313602%_
                                                    (__system-class
                                                     _%$e313602%_)
                                                    (error '"unknown class"
                                                           'subtype:
                                                           _%st313596%_
                                                           'object:
                                                           _%obj313593%_)))))))
                                  (if (eq? _%t313583%_ 'special)
                                      (lambda (_%obj313607%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (if (char? _%obj313607%_)
                                            (__system-class 'char)
                                            (if (eq? _%obj313607%_ '())
                                                (__system-class 'null)
                                                (if (eq? _%obj313607%_ '#f)
                                                    (__system-class 'boolean)
                                                    (if (eq? _%obj313607%_ '#t)
                                                        (__system-class
                                                         'boolean)
                                                        (if (eq? _%obj313607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void)
                    (__system-class 'void)
                    (if (eq? _%obj313607%_ '#!eof)
                        (__system-class 'eof)
                        (if (eq? _%obj313607%_ '#!unbound)
                            (__system-class 'unbound)
                            (if (eq? _%obj313607%_ '#!unbound2)
                                (__system-class 'unbound2)
                                (if (eq? _%obj313607%_ '#!optional)
                                    (__system-class 'optional)
                                    (if (eq? _%obj313607%_ '#!rest)
                                        (__system-class 'rest)
                                        (if (eq? _%obj313607%_ '#!key)
                                            (__system-class 'key)
                                            (__system-class
                                             'special)))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t313583%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv313576%_ _%i313581%_ _%f313623%_))
                (_%loop313579%_
                 (let () (declare (not safe)) (##fx+ _%i313581%_ '1))))
              _%cv313576%_))))
    (define type-of
      (lambda (_%obj313570%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj313570%_)))))
    (define class-of
      (lambda (_%obj313561%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t313565%_ (##type _%obj313561%_))
                 (_%f313567%_ (##vector-ref __class _%t313565%_)))
            (_%f313567%_ _%obj313561%_)))))
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
      (lambda (_%id313555%_)
        (let ((_%$e313557%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id313555%_ '#f))))
          (if _%$e313557%_
              _%$e313557%_
              (error '"unknown system class" _%id313555%_)))))
    (define __make-system-class
      (lambda (_%id313457%_ _%super313458%_ _%properties313459%_)
        (let ((_%klass313553%_
               (let* ((_%id313461%_ _%id313457%_)
                      (_%name313464%_ _%id313457%_)
                      (_%direct-supers313467%_ _%super313458%_)
                      (_%direct-slots313470%_ '())
                      (_%properties313473%_
                       (cons (cons 'system: '#t)
                             (let ()
                               (declare (not safe))
                               (foldr__0 cons '() _%properties313459%_))))
                      (_%constructor313476%_ '#f))
                 (if (symbol? _%id313461%_)
                     (let ((_%id313481%_ _%id313461%_))
                       (if (symbol? _%name313464%_)
                           (let ((_%name313497%_ _%name313464%_))
                             (if (list? _%direct-supers313467%_)
                                 (let* ((_%direct-supers313507%_
                                         _%direct-supers313467%_)
                                        (_%direct-slots313517%_
                                         _%direct-slots313470%_)
                                        (_%properties313527%_
                                         _%properties313473%_))
                                   (if ((lambda (_%$obj313536%_)
                                          (or (not _%$obj313536%_)
                                              (symbol? _%$obj313536%_)))
                                        _%constructor313476%_)
                                       (let ((_%constructor313543%_
                                              _%constructor313476%_))
                                         (__make-class-type
                                          _%id313481%_
                                          _%name313497%_
                                          _%direct-supers313507%_
                                          _%direct-slots313517%_
                                          _%properties313527%_
                                          _%constructor313543%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          '(? (or not symbol?))
                                          'value:
                                          _%constructor313476%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'list?
                                    'value:
                                    _%direct-supers313467%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'symbol?
                              'value:
                              _%name313464%_)
                             '#!void)))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id313461%_)
                       '#!void)))))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id313457%_
             _%klass313553%_))
          _%klass313553%_)))))
