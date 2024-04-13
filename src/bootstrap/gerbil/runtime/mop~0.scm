(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1713004409)
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
      (let ((_%flags98593%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties98594%_ '((direct-slots:) (system: . #t)))
            (_%slot-table98595%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags98593%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table98595%_
           _%properties98594%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots98569%_
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
             (_%slot-vector98571%_ (list->vector (cons '#f _%slots98569%_)))
             (_%slot-table98578%_
              (let ((_%slot-table98573%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp100036
                       (lambda (_%slot98575%_ _%field98576%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table98573%_
                            _%slot98575%_
                            _%field98576%_))
                         (let ((__tmp100037
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot98575%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table98573%_
                            __tmp100037
                            _%field98576%_))))
                      (__tmp100034
                       (let ((__tmp100035
                              (let ()
                                (declare (not safe))
                                (##length _%slots98569%_))))
                         (declare (not safe))
                         (##iota __tmp100035 '1))))
                  (declare (not safe))
                  (##for-each __tmp100036 _%slots98569%_ __tmp100034))
                _%slot-table98573%_))
             (_%flags98580%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields98586%_
              (list->vector
               (let ((__tmp100038
                      (map (lambda (_%g9858198583%_)
                             (list _%g9858198583%_ '5 '#f))
                           (drop _%slots98569%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp100038))))
             (_%properties98588%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots98569%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t98590%_
              (let ((__tmp100039 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags98580%_
                 ##type-type
                 _%fields98586%_
                 __tmp100039
                 _%slot-vector98571%_
                 _%slot-table98578%_
                 _%properties98588%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t98590%_ _%t98590%_))
        _%t98590%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags98565%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties98566%_ '((direct-slots:) (system: . #t)))
            (_%slot-table98567%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp100040 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags98565%_
           '#f
           '#()
           __tmp100040
           '#(#f)
           _%slot-table98567%_
           _%properties98566%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj98563%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj98563%_ 'class))))
    (define class-type=?
      (lambda (_%x98538%_ _%y98539%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x98538%_ 'class))
            (let ((_%x98543%_ _%x98538%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y98539%_ 'class))
                  (let ((_%y98553%_ _%y98539%_))
                    (__class-type=? _%x98543%_ _%y98553%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y98539%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x98538%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x98517%_ _%y98518%_)
        (let* ((_%x98521%_ _%x98517%_) (_%y98529%_ _%y98518%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x98521%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y98529%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type98503%_)
        (if (let () (declare (not safe)) (##type? _%type98503%_))
            (let ((_%type98507%_ _%type98503%_))
              (__type-opaque? _%type98507%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type98503%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type98491%_)
        (let* ((_%type98494%_ _%type98491%_)
               (__tmp100041
                (let ((__tmp100042
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type98494%_))))
                  (declare (not safe))
                  (##fxand __tmp100042 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp100041 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type98477%_)
        (if (let () (declare (not safe)) (##type? _%type98477%_))
            (let ((_%type98481%_ _%type98477%_))
              (__type-extensible? _%type98481%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type98477%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type98465%_)
        (let* ((_%type98468%_ _%type98465%_)
               (__tmp100043
                (let ((__tmp100044
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type98468%_))))
                  (declare (not safe))
                  (##fxand __tmp100044 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp100043 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type98451%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type98451%_ 'class))
            (let ((_%type98455%_ _%type98451%_))
              (__class-type-final? _%type98455%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type98451%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type98439%_)
        (let* ((_%type98442%_ _%type98439%_)
               (__tmp100045
                (let ((__tmp100046
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type98442%_))))
                  (declare (not safe))
                  (##fxand __tmp100046 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp100045 '0))))
    (define class-type-struct?
      (lambda (_%klass98425%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98425%_ 'class))
            (let ((_%klass98429%_ _%klass98425%_))
              (__class-type-struct? _%klass98429%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass98425%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass98413%_)
        (let* ((_%klass98416%_ _%klass98413%_)
               (__tmp100047
                (let ((__tmp100048
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass98416%_))))
                  (declare (not safe))
                  (##fxand __tmp100048 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp100047 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass98399%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98399%_ 'class))
            (let ((_%klass98403%_ _%klass98399%_))
              (__class-type-sealed? _%klass98403%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass98399%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass98387%_)
        (let* ((_%klass98390%_ _%klass98387%_)
               (__tmp100049
                (let ((__tmp100050
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass98390%_))))
                  (declare (not safe))
                  (##fxand __tmp100050 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp100049 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass98373%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98373%_ 'class))
            (let ((_%klass98377%_ _%klass98373%_))
              (__class-type-metaclass? _%klass98377%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass98373%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass98361%_)
        (let* ((_%klass98364%_ _%klass98361%_)
               (__tmp100051
                (let ((__tmp100052
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass98364%_))))
                  (declare (not safe))
                  (##fxand __tmp100052 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp100051 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass98347%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98347%_ 'class))
            (let ((_%klass98351%_ _%klass98347%_))
              (__class-type-system? _%klass98351%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass98347%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass98335%_)
        (let* ((_%klass98338%_ _%klass98335%_)
               (__tmp100053
                (let ((__tmp100054
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass98338%_))))
                  (declare (not safe))
                  (##fxand __tmp100054 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp100053 class-type-flag-system))))
    (define make-class-type-descriptor
      (lambda (_%type-id98220%_
               _%type-name98221%_
               _%type-super98222%_
               _%precedence-list98223%_
               _%slot-vector98224%_
               _%properties98225%_
               _%constructor98226%_
               _%slot-table98227%_
               _%methods98228%_)
        (letrec ((_%make-props!98231%_
                  (lambda (_%key98304%_)
                    (letrec* ((_%ht98306%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!98307%_
                               (lambda (_%ht98328%_ _%slots98329%_)
                                 (for-each
                                  (lambda (_%g9833098332%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht98328%_
                                       _%g9833098332%_
                                       '#t)))
                                  _%slots98329%_)))
                              (_%put-alist!98308%_
                               (lambda (_%ht98317%_
                                        _%key98318%_
                                        _%alist98319%_)
                                 (let ((_%$e98321%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key98318%_
                                           _%alist98319%_))))
                                   (if _%$e98321%_
                                       ((lambda (_%g9832398325%_)
                                          (_%put-slots!98307%_
                                           _%ht98317%_
                                           _%g9832398325%_))
                                        _%$e98321%_)
                                       '#!void)))))
                      (_%put-alist!98308%_
                       _%ht98306%_
                       _%key98304%_
                       _%properties98225%_)
                      (for-each
                       (lambda (_%mixin98310%_)
                         (let ((_%alist98312%_
                                (##structure-ref
                                 _%mixin98310%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist98312%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key98304%_
                                           _%alist98312%_))))
                               (_%put-slots!98307%_
                                _%ht98306%_
                                (class-type-slot-list _%mixin98310%_))
                               (_%put-alist!98308%_
                                _%ht98306%_
                                _%key98304%_
                                _%alist98312%_))))
                       _%precedence-list98223%_)
                      _%ht98306%_))))
          (let* ((_%transparent?98233%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties98225%_)))
                 (_%all-slots-printable?98238%_
                  (let ((_%$e98235%_ _%transparent?98233%_))
                    (if _%$e98235%_
                        _%$e98235%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties98225%_))))))
                 (_%printable98240%_
                  (if (not _%all-slots-printable?98238%_)
                      (_%make-props!98231%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?98245%_
                  (let ((_%$e98242%_ _%transparent?98233%_))
                    (if _%$e98242%_
                        _%$e98242%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties98225%_))))))
                 (_%equalable98247%_
                  (if (not _%all-slots-equalable?98245%_)
                      (_%make-props!98231%_ 'equal:)
                      '#f))
                 (_%first-new-field98249%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super98222%_ 'class))
                      (let ((__tmp100055
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super98222%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp100055))
                      '1))
                 (_%field-info-length98251%_
                  (let ((__tmp100056
                         (let ((__tmp100057
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector98224%_))))
                           (declare (not safe))
                           (##fx- __tmp100057 _%first-new-field98249%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp100056)))
                 (_%field-info98253%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length98251%_ '#f)))
                 (_%struct?98255%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties98225%_)))
                 (_%final?98257%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties98225%_)))
                 (_%metaclass98265%_
                  (let ((_%metaclass9825898260%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties98225%_))))
                    (if _%metaclass9825898260%_
                        (let ((_%metaclass98263%_ _%metaclass9825898260%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass98263%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id98220%_
                                     'metaclass:
                                     _%metaclass98263%_))
                          _%metaclass98263%_)
                        '#f)))
                 (_%system?98267%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties98225%_)))
                 (_%opaque?98272%_
                  (let ((_%$e98269%_ (not _%all-slots-equalable?98245%_)))
                    (if _%$e98269%_
                        _%$e98269%_
                        (if _%type-super98222%_
                            (__type-opaque? _%type-super98222%_)
                            '#f))))
                 (_%type-flags98274%_
                  (let ((__tmp100062
                         (if _%final?98257%_ '0 type-flag-extensible))
                        (__tmp100061 (if _%opaque?98272%_ type-flag-opaque '0))
                        (__tmp100060
                         (if _%struct?98255%_ class-type-flag-struct '0))
                        (__tmp100059
                         (if _%metaclass98265%_ class-type-flag-metaclass '0))
                        (__tmp100058
                         (if _%system?98267%_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp100062
                             __tmp100061
                             __tmp100060
                             __tmp100059
                             __tmp100058)))
                 (_%precedence-list98282%_
                  (let ((_%$e98276%_ (memq t::t _%precedence-list98223%_)))
                    (if _%$e98276%_
                        ((lambda (_%tail98279%_)
                           (if (null? (cdr _%tail98279%_))
                               _%precedence-list98223%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list98223%_)))
                         _%$e98276%_)
                        (let ((__tmp100063 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list98223%_ __tmp100063))))))
            (let _%loop98285%_ ((_%i98287%_ _%first-new-field98249%_)
                                (_%j98288%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j98288%_ _%field-info-length98251%_))
                  (let* ((_%slot98290%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector98224%_ _%i98287%_)))
                         (_%flags98298%_
                          (if _%transparent?98233%_
                              '0
                              (let ((__tmp100065
                                     (if (or _%all-slots-printable?98238%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable98240%_
                                                _%slot98290%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp100064
                                     (if (or _%all-slots-equalable?98245%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable98247%_
                                                _%slot98290%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp100065 __tmp100064)))))
                    (vector-set! _%field-info98253%_ _%j98288%_ _%slot98290%_)
                    (vector-set!
                     _%field-info98253%_
                     (let () (declare (not safe)) (##fx+ _%j98288%_ '1))
                     _%flags98298%_)
                    (_%loop98285%_
                     (let () (declare (not safe)) (##fx+ _%i98287%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j98288%_ '3))))
                  '#!void))
            (if _%metaclass98265%_
                (let ((_%val98301%_
                       (make-instance
                        _%metaclass98265%_
                        _%type-id98220%_
                        _%type-name98221%_
                        _%type-flags98274%_
                        _%type-super98222%_
                        _%field-info98253%_
                        _%precedence-list98282%_
                        _%slot-vector98224%_
                        _%slot-table98227%_
                        _%properties98225%_
                        _%constructor98226%_
                        _%methods98228%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val98301%_ 'class))
                      _%val98301%_
                      (error '"bad cast" class::t _%val98301%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id98220%_
                   _%type-name98221%_
                   _%type-flags98274%_
                   _%type-super98222%_
                   _%field-info98253%_
                   _%precedence-list98282%_
                   _%slot-vector98224%_
                   _%slot-table98227%_
                   _%properties98225%_
                   _%constructor98226%_
                   _%methods98228%_)))))))
    (define class-type-id
      (lambda (_%klass98218%_)
        (##structure-ref _%klass98218%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass98216%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98216%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass98213%_ _%val98214%_)
        (##structure-set! _%klass98213%_ _%val98214%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass98208%_ _%val98210%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98208%_
           _%val98210%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass98206%_)
        (##structure-ref _%klass98206%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass98204%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98204%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass98201%_ _%val98202%_)
        (##structure-set! _%klass98201%_ _%val98202%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass98196%_ _%val98198%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98196%_
           _%val98198%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass98194%_)
        (##structure-ref _%klass98194%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass98192%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98192%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass98189%_ _%val98190%_)
        (##structure-set! _%klass98189%_ _%val98190%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass98184%_ _%val98186%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98184%_
           _%val98186%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass98182%_)
        (##structure-ref _%klass98182%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass98180%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98180%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass98177%_ _%val98178%_)
        (##structure-set! _%klass98177%_ _%val98178%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass98172%_ _%val98174%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98172%_
           _%val98174%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass98170%_)
        (##structure-ref _%klass98170%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass98168%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98168%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass98165%_ _%val98166%_)
        (##structure-set! _%klass98165%_ _%val98166%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass98160%_ _%val98162%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98160%_
           _%val98162%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass98158%_)
        (##structure-ref _%klass98158%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass98156%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass98156%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass98153%_ _%val98154%_)
        (##structure-set!
         _%klass98153%_
         _%val98154%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass98148%_ _%val98150%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98148%_
           _%val98150%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass98146%_)
        (##structure-ref _%klass98146%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass98144%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass98144%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass98141%_ _%val98142%_)
        (##structure-set!
         _%klass98141%_
         _%val98142%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass98136%_ _%val98138%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98136%_
           _%val98138%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass98134%_)
        (##structure-ref _%klass98134%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass98132%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98132%_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass98129%_ _%val98130%_)
        (##structure-set!
         _%klass98129%_
         _%val98130%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass98124%_ _%val98126%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98124%_
           _%val98126%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass98122%_)
        (##structure-ref _%klass98122%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass98120%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98120%_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_%klass98117%_ _%val98118%_)
        (##structure-set!
         _%klass98117%_
         _%val98118%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass98112%_ _%val98114%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98112%_
           _%val98114%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass98110%_)
        (##structure-ref _%klass98110%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass98108%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass98108%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass98105%_ _%val98106%_)
        (##structure-set!
         _%klass98105%_
         _%val98106%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass98100%_ _%val98102%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98100%_
           _%val98102%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass98098%_)
        (##structure-ref _%klass98098%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass98096%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98096%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass98093%_ _%val98094%_)
        (##structure-set! _%klass98093%_ _%val98094%_ '11 class::t 'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass98088%_ _%val98090%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98088%_
           _%val98090%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass98074%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98074%_ 'class))
            (let ((_%klass98078%_ _%klass98074%_))
              (__class-type-slot-list _%klass98078%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass98074%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass98062%_)
        (let ((_%klass98065%_ _%klass98062%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass98065%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass98048%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98048%_ 'class))
            (let ((_%klass98052%_ _%klass98048%_))
              (__class-type-field-count _%klass98052%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass98048%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass98036%_)
        (let* ((_%klass98039%_ _%klass98036%_)
               (__tmp100066
                (let ((__tmp100067
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass98039%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp100067))))
          (declare (not safe))
          (##fx- __tmp100066 '1))))
    (define class-type-seal!
      (lambda (_%klass98022%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98022%_ 'class))
            (let ((_%klass98026%_ _%klass98022%_))
              (__class-type-seal! _%klass98026%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass98022%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass98010%_)
        (let ((_%klass98013%_ _%klass98010%_))
          (let ((__tmp100068
                 (let ((__tmp100069
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass98013%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp100069))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass98013%_
             __tmp100068
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct97985%_ _%maybe-super-struct97986%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct97985%_ 'class))
            (let ((_%maybe-sub-struct97990%_ _%maybe-sub-struct97985%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct97986%_
                     'class))
                  (let ((_%maybe-super-struct98000%_
                         _%maybe-super-struct97986%_))
                    (__substruct?
                     _%maybe-sub-struct97990%_
                     _%maybe-super-struct98000%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct97986%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct97985%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct97954%_ _%maybe-super-struct97955%_)
        (let* ((_%maybe-sub-struct97958%_ _%maybe-sub-struct97954%_)
               (_%maybe-super-struct97966%_ _%maybe-super-struct97955%_)
               (_%maybe-super-struct-id97975%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct97966%_))))
          (let _%lp97977%_ ((_%super-struct97979%_ _%maybe-sub-struct97958%_))
            (if (not _%super-struct97979%_)
                '#f
                (if (eq? _%maybe-super-struct-id97975%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct97979%_)))
                    '#t
                    (_%lp97977%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct97979%_)))))))))
    (define base-struct/1
      (lambda (_%klass97949%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97949%_ 'class))
            (if (__class-type-struct? _%klass97949%_)
                _%klass97949%_
                (let () (declare (not safe)) (##type-super _%klass97949%_)))
            (if (not _%klass97949%_)
                '#f
                (error '"not a class or false" _%klass97949%_)))))
    (define base-struct/2
      (lambda (_%klass197934%_ _%klass297935%_)
        (let ((_%s197937%_ (base-struct/1 _%klass197934%_))
              (_%s297938%_ (base-struct/1 _%klass297935%_)))
          (if (or (not _%s197937%_)
                  (and _%s297938%_ (substruct? _%s197937%_ _%s297938%_)))
              _%s297938%_
              (if (or (not _%s297938%_)
                      (and _%s197937%_ (substruct? _%s297938%_ _%s197937%_)))
                  _%s197937%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass197934%_
                         _%klass297935%_
                         _%s197937%_
                         _%s297938%_))))))
    (define base-struct/list
      (lambda (_%all-supers97818%_)
        (let* ((_%all-supers9781997844%_ _%all-supers97818%_)
               (_%E9782497848%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers9781997844%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K9784297931%_ (lambda () '#f))
                (_%K9783997917%_
                 (lambda (_%x97915%_) (base-struct/1 _%x97915%_)))
                (_%K9783497894%_
                 (lambda (_%y97891%_ _%x97892%_)
                   (base-struct/2 _%x97892%_ _%y97891%_)))
                (_%K9782597855%_
                 (lambda (_%y97852%_ _%x97853%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x97853%_ _%y97852%_)))))
            (let* ((_%__match100028100029%_
                    (lambda (_%hd9782697858%_ _%tl9782797860%_)
                      (let ((_%x97863%_ _%hd9782697858%_))
                        (letrec ((_%splice-rest9782997865%_
                                  (lambda (_%rest9783397872%_ _%y97874%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%rest9783397872%_))
                                        (_%K9782597855%_ _%y97874%_ _%x97863%_)
                                        (_%E9782497848%_))))
                                 (_%splice-try9783197867%_
                                  (lambda (_%hd9783297876%_
                                           _%rest9783397878%_
                                           _%y9782897879%_)
                                    (let ((_%y97882%_ _%hd9783297876%_))
                                      (_%splice-loop9783097869%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest9783397878%_))
                                       (cons _%y97882%_ _%y9782897879%_)))))
                                 (_%splice-loop9783097869%_
                                  (lambda (_%rest9783397884%_ _%y9782897885%_)
                                    (if (pair? _%rest9783397884%_)
                                        (_%splice-try9783197867%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest9783397884%_))
                                         _%rest9783397884%_
                                         _%y9782897885%_)
                                        (_%splice-rest9782997865%_
                                         _%rest9783397884%_
                                         (reverse _%y9782897885%_))))))
                          (_%splice-loop9783097869%_ _%tl9782797860%_ '())))))
                   (_%try-match9782197927%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all-supers9781997844%_))
                          (let ((_%tl9784197922%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers9781997844%_)))
                                (_%hd9784097920%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers9781997844%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl9784197922%_))
                                (let ((_%x97925%_ _%hd9784097920%_))
                                  (base-struct/1 _%x97925%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl9784197922%_))
                                    (let ((_%tl9783897906%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl9784197922%_)))
                                          (_%hd9783797904%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl9784197922%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl9783897906%_))
                                          (let ((_%x97902%_ _%hd9784097920%_)
                                                (_%y97909%_ _%hd9783797904%_))
                                            (_%K9783497894%_
                                             _%y97909%_
                                             _%x97902%_))
                                          (_%__match100028100029%_
                                           _%hd9784097920%_
                                           _%tl9784197922%_)))
                                    (_%__match100028100029%_
                                     _%hd9784097920%_
                                     _%tl9784197922%_))))
                          (_%E9782497848%_)))))
              (if (let ()
                    (declare (not safe))
                    (##null? _%all-supers9781997844%_))
                  (_%K9784297931%_)
                  (_%try-match9782197927%_)))))))
    (define base-struct
      (lambda _%all-supers97816%_ (base-struct/list _%all-supers97816%_)))
    (define find-super-constructor
      (lambda (_%super97767%_)
        (let _%lp97769%_ ((_%rest97771%_ _%super97767%_)
                          (_%constructor97772%_ '#f))
          (let* ((_%rest9777397781%_ _%rest97771%_)
                 (_%else9777597789%_ (lambda () _%constructor97772%_))
                 (_%K9777797804%_
                  (lambda (_%rest97792%_ _%hd97793%_)
                    (let ((_%$e97795%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd97793%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e97795%_
                          ((lambda (_%xconstructor97798%_)
                             (if (or (not _%constructor97772%_)
                                     (eq? _%constructor97772%_
                                          _%xconstructor97798%_))
                                 (_%lp97769%_
                                  _%rest97792%_
                                  _%xconstructor97798%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor97772%_
                                        _%xconstructor97798%_)))
                           _%$e97795%_)
                          (_%lp97769%_ _%rest97792%_ _%constructor97772%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest9777397781%_))
                (let ((_%hd9777897807%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9777397781%_)))
                      (_%tl9777997809%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9777397781%_))))
                  (let* ((_%hd97812%_ _%hd9777897807%_)
                         (_%rest97814%_ _%tl9777997809%_))
                    (_%K9777797804%_ _%rest97814%_ _%hd97812%_)))
                (_%else9777597789%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list97743%_ _%direct-slots97744%_)
        (let* ((_%next-slot97746%_ '1)
               (_%slot-table97748%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots97750%_ '(__class))
               (_%process-slot97754%_
                (lambda (_%slot97752%_)
                  (if (symbol? _%slot97752%_)
                      '#!void
                      (error '"invalid slot name" _%slot97752%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table97748%_
                              _%slot97752%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table97748%_
                           _%slot97752%_
                           _%next-slot97746%_))
                        (let ((__tmp100070
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot97752%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table97748%_
                           __tmp100070
                           _%next-slot97746%_))
                        (set! _%r-slots97750%_
                              (cons _%slot97752%_ _%r-slots97750%_))
                        (set! _%next-slot97746%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot97746%_ '1))))
                      '#!void)))
               (_%process-slots97760%_
                (lambda (_%g9775597757%_)
                  (for-each _%process-slot97754%_ _%g9775597757%_))))
          (let ((__tmp100072
                 (lambda (_%mixin97763%_)
                   (_%process-slots97760%_
                    (let ((__tmp100073
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin97763%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp100073 '())))))
                (__tmp100071 (reverse _%class-precedence-list97743%_)))
            (declare (not safe))
            (##for-each __tmp100072 __tmp100071))
          (_%process-slots97760%_ _%direct-slots97744%_)
          (let ((_%slot-vector97765%_
                 (list->vector
                  (let () (declare (not safe)) (##reverse _%r-slots97750%_)))))
            (values _%slot-vector97765%_ _%slot-table97748%_)))))
    (define make-class-type
      (lambda (_%id97668%_
               _%name97669%_
               _%direct-supers97670%_
               _%direct-slots97671%_
               _%properties97672%_
               _%constructor97673%_)
        (if (symbol? _%id97668%_)
            (let ((_%id97677%_ _%id97668%_))
              (if (symbol? _%name97669%_)
                  (let ((_%name97687%_ _%name97669%_))
                    (if (list? _%direct-supers97670%_)
                        (let ((_%direct-supers97697%_ _%direct-supers97670%_))
                          (if (list? _%direct-slots97671%_)
                              (let ((_%direct-slots97707%_
                                     _%direct-slots97671%_))
                                (if (list? _%properties97672%_)
                                    (let ((_%properties97717%_
                                           _%properties97672%_))
                                      (if ((lambda (_%$obj97726%_)
                                             (or (not _%$obj97726%_)
                                                 (symbol? _%$obj97726%_)))
                                           _%constructor97673%_)
                                          (let ((_%constructor97733%_
                                                 _%constructor97673%_))
                                            (__make-class-type
                                             _%id97677%_
                                             _%name97687%_
                                             _%direct-supers97697%_
                                             _%direct-slots97707%_
                                             _%properties97717%_
                                             _%constructor97733%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor97673%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties97672%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots97671%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers97670%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name97669%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id97668%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id97537%_
               _%name97538%_
               _%direct-supers97539%_
               _%direct-slots97540%_
               _%properties97541%_
               _%constructor97542%_)
        (let* ((_%id97545%_ _%id97537%_)
               (_%name97553%_ _%name97538%_)
               (_%direct-supers97561%_ _%direct-supers97539%_)
               (_%direct-slots97569%_ _%direct-slots97540%_)
               (_%properties97577%_ _%properties97541%_)
               (_%constructor97585%_ _%constructor97542%_))
          (let ((_%$e97597%_
                 (let ((__tmp100074
                        (lambda (_%$obj97594%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj97594%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp100074 _%direct-supers97561%_))))
            (if _%$e97597%_
                ((lambda (_%g9759997601%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g9759997601%_))
                 _%$e97597%_)
                (let ((_%$e97604%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final? _%direct-supers97561%_))))
                  (if _%$e97604%_
                      ((lambda (_%g9760697608%_)
                         (error '"Cannot extend final class" _%g9760697608%_))
                       _%$e97604%_)
                      '#!void))))
          (let ((_g100075_ (compute-precedence-list _%direct-supers97561%_)))
            (begin
              (let ((_g100076_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g100075_)
                           (##vector-length _g100075_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g100076_ 2)))
                    (error "Context expects 2 values" _g100076_)))
              (let ((_%precedence-list97611%_
                     (let () (declare (not safe)) (##vector-ref _g100075_ 0)))
                    (_%struct-super97612%_
                     (let () (declare (not safe)) (##vector-ref _g100075_ 1))))
                (let ((_g100077_
                       (compute-class-slots
                        _%precedence-list97611%_
                        _%direct-slots97569%_)))
                  (begin
                    (let ((_g100078_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g100077_)
                                 (##vector-length _g100077_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g100078_ 2)))
                          (error "Context expects 2 values" _g100078_)))
                    (let ((_%slot-vector97614%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g100077_ 0)))
                          (_%slot-table97615%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g100077_ 1))))
                      (let* ((_%properties97617%_
                              (cons (cons 'direct-slots: _%direct-slots97569%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers97561%_)
                                          _%properties97577%_)))
                             (_%constructor*97622%_
                              (let ((_%$e97619%_ _%constructor97585%_))
                                (if _%$e97619%_
                                    _%$e97619%_
                                    (find-super-constructor
                                     _%direct-supers97561%_))))
                             (_%precedence-list97665%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties97617%_))
                                      (memq object::t
                                            _%precedence-list97611%_))
                                  _%precedence-list97611%_
                                  (let _%loop97627%_ ((_%tail97629%_
                                                       _%precedence-list97611%_)
                                                      (_%head97630%_ '()))
                                    (let* ((_%tail9763197639%_ _%tail97629%_)
                                           (_%else9763397647%_
                                            (lambda ()
                                              (let ((__tmp100079
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp100079
                                                 _%head97630%_))))
                                           (_%K9763597653%_
                                            (lambda (_%rest97650%_ _%hd97651%_)
                                              (if (eq? _%hd97651%_ t::t)
                                                  (let ((__tmp100080
                                                         (cons object::t
                                                               _%tail97629%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp100080
                                                     _%head97630%_))
                                                  (_%loop97627%_
                                                   _%rest97650%_
                                                   (cons _%hd97651%_
                                                         _%head97630%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tail9763197639%_))
                                          (let ((_%hd9763697656%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail9763197639%_)))
                                                (_%tl9763797658%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail9763197639%_))))
                                            (let* ((_%hd97661%_
                                                    _%hd9763697656%_)
                                                   (_%rest97663%_
                                                    _%tl9763797658%_))
                                              (_%K9763597653%_
                                               _%rest97663%_
                                               _%hd97661%_)))
                                          (_%else9763397647%_)))))))
                        (make-class-type-descriptor
                         _%id97545%_
                         _%name97553%_
                         _%struct-super97612%_
                         _%precedence-list97665%_
                         _%slot-vector97614%_
                         _%properties97617%_
                         _%constructor*97622%_
                         _%slot-table97615%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass97523%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97523%_ 'class))
            (let ((_%klass97527%_ _%klass97523%_))
              (__class-precedence-list _%klass97527%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass97523%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass97511%_)
        (let ((_%klass97514%_ _%klass97511%_))
          (cons _%klass97514%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass97514%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers97508%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers97508%_))))
    (define make-class-predicate
      (lambda (_%klass97494%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97494%_ 'class))
            (let ((_%klass97498%_ _%klass97494%_))
              (__make-class-predicate _%klass97498%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass97494%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass97465%_)
        (let* ((_%klass97468%_ _%klass97465%_)
               (_%tid97477%_
                (let () (declare (not safe)) (##type-id _%klass97468%_))))
          (if (__class-type-final? _%klass97468%_)
              (lambda (_%g9747997481%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g9747997481%_
                   _%tid97477%_)))
              (if (__class-type-struct? _%klass97468%_)
                  (lambda (_%g9748497486%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%g9748497486%_ _%tid97477%_)))
                  (lambda (_%g9748997491%_)
                    (__class-instance? _%klass97468%_ _%g9748997491%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass97440%_ _%slot97441%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97440%_ 'class))
            (let ((_%klass97445%_ _%klass97440%_))
              (if (symbol? _%slot97441%_)
                  (let ((_%slot97455%_ _%slot97441%_))
                    (__make-class-slot-accessor _%klass97445%_ _%slot97455%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot97441%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass97440%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass97408%_ _%slot97409%_)
        (let* ((_%klass97412%_ _%klass97408%_)
               (_%slot97420%_ _%slot97409%_)
               (_%field97429%_
                (let ((__tmp100081
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass97412%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp100081 _%slot97420%_ '#f))))
          (if (not _%field97429%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass97412%_
                       'slot:
                       _%slot97420%_)
                '#!void)
              (if (__class-type-final? _%klass97412%_)
                  (make-final-slot-accessor
                   _%klass97412%_
                   _%slot97420%_
                   _%field97429%_)
                  (if (__class-type-struct? _%klass97412%_)
                      (make-struct-slot-accessor
                       _%klass97412%_
                       _%slot97420%_
                       _%field97429%_)
                      (if (let ((_%strukt97435%_
                                 (base-struct/1 _%klass97412%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt97435%_
                                    'class))
                                 (let ((__tmp100082
                                        (let ((__tmp100083
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt97435%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp100083))))
                                   (declare (not safe))
                                   (##fx< _%field97429%_ __tmp100082))))
                          (make-struct-subclass-slot-accessor
                           _%klass97412%_
                           _%slot97420%_
                           _%field97429%_)
                          (make-class-cached-slot-accessor
                           _%klass97412%_
                           _%slot97420%_
                           _%field97429%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass97383%_ _%slot97384%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97383%_ 'class))
            (let ((_%klass97388%_ _%klass97383%_))
              (if (symbol? _%slot97384%_)
                  (let ((_%slot97398%_ _%slot97384%_))
                    (__make-class-slot-mutator _%klass97388%_ _%slot97398%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot97384%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass97383%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass97351%_ _%slot97352%_)
        (let* ((_%klass97355%_ _%klass97351%_)
               (_%slot97363%_ _%slot97352%_)
               (_%field97372%_
                (let ((__tmp100084
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass97355%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp100084 _%slot97363%_ '#f))))
          (if (not _%field97372%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass97355%_
                       'slot:
                       _%slot97363%_)
                '#!void)
              (if (__class-type-final? _%klass97355%_)
                  (make-final-slot-mutator
                   _%klass97355%_
                   _%slot97363%_
                   _%field97372%_)
                  (if (__class-type-struct? _%klass97355%_)
                      (make-struct-slot-mutator
                       _%klass97355%_
                       _%slot97363%_
                       _%field97372%_)
                      (if (let ((_%strukt97378%_
                                 (base-struct/1 _%klass97355%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt97378%_
                                    'class))
                                 (let ((__tmp100085
                                        (let ((__tmp100086
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt97378%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp100086))))
                                   (declare (not safe))
                                   (##fx< _%field97372%_ __tmp100085))))
                          (make-struct-subclass-slot-mutator
                           _%klass97355%_
                           _%slot97363%_
                           _%field97372%_)
                          (make-class-cached-slot-mutator
                           _%klass97355%_
                           _%slot97363%_
                           _%field97372%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass97326%_ _%slot97327%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97326%_ 'class))
            (let ((_%klass97331%_ _%klass97326%_))
              (if (symbol? _%slot97327%_)
                  (let ((_%slot97341%_ _%slot97327%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass97331%_
                     _%slot97341%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot97327%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass97326%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass97294%_ _%slot97295%_)
        (let* ((_%klass97298%_ _%klass97294%_)
               (_%slot97306%_ _%slot97295%_)
               (_%field97315%_
                (let ((__tmp100087
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass97298%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp100087 _%slot97306%_ '#f))))
          (if (not _%field97315%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass97298%_
                       'slot:
                       _%slot97306%_)
                '#!void)
              (if (__class-type-final? _%klass97298%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass97298%_
                   _%slot97306%_
                   _%field97315%_)
                  (if (__class-type-struct? _%klass97298%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass97298%_
                       _%slot97306%_
                       _%field97315%_)
                      (if (let ((_%strukt97321%_
                                 (base-struct/1 _%klass97298%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt97321%_
                                    'class))
                                 (let ((__tmp100088
                                        (let ((__tmp100089
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt97321%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp100089))))
                                   (declare (not safe))
                                   (##fx< _%field97315%_ __tmp100088))))
                          (make-struct-slot-unchecked-accessor
                           _%klass97298%_
                           _%slot97306%_
                           _%field97315%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass97298%_
                           _%slot97306%_
                           _%field97315%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass97269%_ _%slot97270%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97269%_ 'class))
            (let ((_%klass97274%_ _%klass97269%_))
              (if (symbol? _%slot97270%_)
                  (let ((_%slot97284%_ _%slot97270%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass97274%_
                     _%slot97284%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot97270%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass97269%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass97237%_ _%slot97238%_)
        (let* ((_%klass97241%_ _%klass97237%_)
               (_%slot97249%_ _%slot97238%_)
               (_%field97258%_
                (let ((__tmp100090
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass97241%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp100090 _%slot97249%_ '#f))))
          (if (not _%field97258%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass97241%_
                       'slot:
                       _%slot97249%_)
                '#!void)
              (if (__class-type-final? _%klass97241%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass97241%_
                   _%slot97249%_
                   _%field97258%_)
                  (if (__class-type-struct? _%klass97241%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass97241%_
                       _%slot97249%_
                       _%field97258%_)
                      (if (let ((_%strukt97264%_
                                 (base-struct/1 _%klass97241%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt97264%_
                                    'class))
                                 (let ((__tmp100091
                                        (let ((__tmp100092
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt97264%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp100092))))
                                   (declare (not safe))
                                   (##fx< _%field97258%_ __tmp100091))))
                          (make-struct-slot-unchecked-mutator
                           _%klass97241%_
                           _%slot97249%_
                           _%field97258%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass97241%_
                           _%slot97249%_
                           _%field97258%_))))))))
    (define not-an-instance__%
      (lambda (_%object97221%_ _%class97222%_ _%slot97223%_)
        (apply error
               '"not an instance"
               'object:
               _%object97221%_
               'class:
               _%class97222%_
               (if _%slot97223%_ (cons 'slot: (cons _%slot97223%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object97228%_ _%class97229%_)
        (let ((_%slot97231%_ '#f))
          (not-an-instance__% _%object97228%_ _%class97229%_ _%slot97231%_))))
    (define not-an-instance
      (lambda _g100094_
        (let ((_g100093_ (let () (declare (not safe)) (##length _g100094_))))
          (cond ((let () (declare (not safe)) (##fx= _g100093_ 2))
                 (apply not-an-instance__0 _g100094_))
                ((let () (declare (not safe)) (##fx= _g100093_ 3))
                 (apply not-an-instance__% _g100094_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g100094_))))))
    (define make-final-slot-accessor
      (lambda (_%klass97214%_ _%slot97215%_ _%field97216%_)
        (lambda (_%obj97218%_)
          (##direct-structure-ref
           _%obj97218%_
           _%field97216%_
           _%klass97214%_
           _%slot97215%_))))
    (define make-final-slot-mutator
      (lambda (_%klass97207%_ _%slot97208%_ _%field97209%_)
        (lambda (_%obj97211%_ _%val97212%_)
          (##direct-structure-set!
           _%obj97211%_
           _%val97212%_
           _%field97209%_
           _%klass97207%_
           _%slot97208%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass97201%_ _%slot97202%_ _%field97203%_)
        (lambda (_%obj97205%_)
          (##structure-ref
           _%obj97205%_
           _%field97203%_
           _%klass97201%_
           _%slot97202%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass97194%_ _%slot97195%_ _%field97196%_)
        (lambda (_%obj97198%_ _%val97199%_)
          (##structure-set!
           _%obj97198%_
           _%val97199%_
           _%field97196%_
           _%klass97194%_
           _%slot97195%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass97188%_ _%slot97189%_ _%field97190%_)
        (lambda (_%obj97192%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj97192%_
             _%field97190%_
             _%klass97188%_
             _%slot97189%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass97181%_ _%slot97182%_ _%field97183%_)
        (lambda (_%obj97185%_ _%val97186%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj97185%_
             _%val97186%_
             _%field97183%_
             _%klass97181%_
             _%slot97182%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass97175%_ _%slot97176%_ _%field97177%_)
        (lambda (_%obj97179%_)
          (if (class-instance? _%klass97175%_ _%obj97179%_)
              (unchecked-slot-ref _%obj97179%_ _%field97177%_)
              (not-an-instance__%
               _%obj97179%_
               _%klass97175%_
               _%slot97176%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass97168%_ _%slot97169%_ _%field97170%_)
        (lambda (_%obj97172%_ _%val97173%_)
          (if (class-instance? _%klass97168%_ _%obj97172%_)
              (unchecked-field-set! _%obj97172%_ _%field97170%_ _%val97173%_)
              (not-an-instance__%
               _%obj97172%_
               _%klass97168%_
               _%slot97169%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass97159%_ _%slot97160%_ _%field97161%_)
        (lambda (_%obj97163%_)
          (if (let ((__tmp100095
                     (let () (declare (not safe)) (##type-id _%klass97159%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj97163%_ __tmp100095))
              (unchecked-field-ref _%obj97163%_ _%field97161%_)
              (if (class-instance? _%klass97159%_ _%obj97163%_)
                  (unchecked-slot-ref _%obj97163%_ _%slot97160%_)
                  (not-an-instance__%
                   _%obj97163%_
                   _%klass97159%_
                   _%slot97160%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass97149%_ _%slot97150%_ _%field97151%_)
        (lambda (_%obj97153%_ _%val97154%_)
          (if (let ((__tmp100096
                     (let () (declare (not safe)) (##type-id _%klass97149%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj97153%_ __tmp100096))
              (unchecked-field-set! _%obj97153%_ _%field97151%_ _%val97154%_)
              (if (class-instance? _%klass97149%_ _%obj97153%_)
                  (unchecked-slot-set! _%obj97153%_ _%slot97150%_ _%val97154%_)
                  (not-an-instance__%
                   _%obj97153%_
                   _%klass97149%_
                   _%slot97150%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass97143%_ _%slot97144%_ _%field97145%_)
        (lambda (_%obj97147%_)
          (if (let ((__tmp100097
                     (let () (declare (not safe)) (##type-id _%klass97143%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj97147%_ __tmp100097))
              (unchecked-field-ref _%obj97147%_ _%field97145%_)
              (unchecked-slot-ref _%obj97147%_ _%slot97144%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass97136%_ _%slot97137%_ _%field97138%_)
        (lambda (_%obj97140%_ _%val97141%_)
          (if (let ((__tmp100098
                     (let () (declare (not safe)) (##type-id _%klass97136%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj97140%_ __tmp100098))
              (unchecked-field-set! _%obj97140%_ _%field97138%_ _%val97141%_)
              (unchecked-slot-set! _%obj97140%_ _%slot97137%_ _%val97141%_)))))
    (define class-slot-offset
      (lambda (_%klass97111%_ _%slot97112%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97111%_ 'class))
            (let ((_%klass97116%_ _%klass97111%_))
              (if (let () (declare (not safe)) (symbolic? _%slot97112%_))
                  (let ((_%slot97126%_ _%slot97112%_))
                    (__class-slot-offset _%klass97116%_ _%slot97126%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot97112%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass97111%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass97090%_ _%slot97091%_)
        (let* ((_%klass97094%_ _%klass97090%_)
               (_%slot97102%_ _%slot97091%_)
               (__tmp100099
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass97094%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp100099 _%slot97102%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass97064%_ _%obj97065%_ _%slot97066%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97064%_ 'class))
            (let ((_%klass97070%_ _%klass97064%_))
              (if (let () (declare (not safe)) (symbolic? _%slot97066%_))
                  (let ((_%slot97080%_ _%slot97066%_))
                    (__class-slot-ref
                     _%klass97070%_
                     _%obj97065%_
                     _%slot97080%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot97066%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass97064%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass97040%_ _%obj97041%_ _%slot97042%_)
        (let* ((_%klass97045%_ _%klass97040%_) (_%slot97053%_ _%slot97042%_))
          (if (__class-instance? _%klass97045%_ _%obj97041%_)
              (let ((_%off97062%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj97041%_))
                      _%slot97053%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj97041%_
                 _%off97062%_
                 _%klass97045%_
                 _%slot97053%_))
              (not-an-instance__0 _%obj97041%_ _%klass97045%_)))))
    (define class-slot-set!
      (lambda (_%klass97013%_ _%obj97014%_ _%slot97015%_ _%val97016%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97013%_ 'class))
            (let ((_%klass97020%_ _%klass97013%_))
              (if (let () (declare (not safe)) (symbolic? _%slot97015%_))
                  (let ((_%slot97030%_ _%slot97015%_))
                    (__class-slot-set!
                     _%klass97020%_
                     _%obj97014%_
                     _%slot97030%_
                     _%val97016%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot97015%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass97013%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass96988%_ _%obj96989%_ _%slot96990%_ _%val96991%_)
        (let* ((_%klass96994%_ _%klass96988%_) (_%slot97002%_ _%slot96990%_))
          (if (__class-instance? _%klass96994%_ _%obj96989%_)
              (let ((_%off97011%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj96989%_))
                      _%slot97002%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj96989%_
                 _%val96991%_
                 _%off97011%_
                 _%klass96994%_
                 _%slot97002%_))
              (not-an-instance__0 _%obj96989%_ _%klass96994%_)))))
    (define unchecked-field-ref
      (lambda (_%obj96985%_ _%off96986%_)
        (let ((__tmp100100
               (let () (declare (not safe)) (##structure-type _%obj96985%_))))
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj96985%_
           _%off96986%_
           __tmp100100
           '#f))))
    (define unchecked-field-set!
      (lambda (_%obj96981%_ _%off96982%_ _%val96983%_)
        (let ((__tmp100101
               (let () (declare (not safe)) (##structure-type _%obj96981%_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj96981%_
           _%val96983%_
           _%off96982%_
           __tmp100101
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj96978%_ _%slot96979%_)
        (unchecked-field-ref
         _%obj96978%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj96978%_))
          _%slot96979%_))))
    (define unchecked-slot-set!
      (lambda (_%obj96974%_ _%slot96975%_ _%val96976%_)
        (unchecked-field-set!
         _%obj96974%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj96974%_))
          _%slot96975%_)
         _%val96976%_)))
    (define slot-ref__%
      (lambda (_%obj96936%_ _%slot96937%_ _%E96938%_)
        (if (symbol? _%slot96937%_)
            (let ((_%slot96942%_ _%slot96937%_))
              (if (procedure? _%E96938%_)
                  (let ((_%E96952%_ _%E96938%_))
                    (__slot-ref__% _%obj96936%_ _%slot96942%_ _%E96952%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E96938%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot96937%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj96965%_ _%slot96966%_)
        (let ((_%E96968%_ __slot-error))
          (slot-ref__% _%obj96965%_ _%slot96966%_ _%E96968%_))))
    (define slot-ref
      (lambda _g100103_
        (let ((_g100102_ (let () (declare (not safe)) (##length _g100103_))))
          (cond ((let () (declare (not safe)) (##fx= _g100102_ 2))
                 (apply slot-ref__0 _g100103_))
                ((let () (declare (not safe)) (##fx= _g100102_ 3))
                 (apply slot-ref__% _g100103_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g100103_))))))
    (define __slot-ref__%
      (lambda (_%obj96892%_ _%slot96893%_ _%E96894%_)
        (let* ((_%slot96897%_ _%slot96893%_)
               (_%E96905%_ _%E96894%_)
               (_%klass96914%_ (class-of _%obj96892%_))
               (_%$e96917%_
                (__class-slot-offset _%klass96914%_ _%slot96897%_)))
          (if _%$e96917%_
              ((lambda (_%off96920%_)
                 (unchecked-field-ref _%obj96892%_ _%off96920%_))
               _%$e96917%_)
              (let ()
                (declare (not safe))
                (_%E96905%_ _%obj96892%_ _%slot96897%_))))))
    (define __slot-ref__0
      (lambda (_%obj96926%_ _%slot96927%_)
        (let ((_%E96929%_ __slot-error))
          (__slot-ref__% _%obj96926%_ _%slot96927%_ _%E96929%_))))
    (define __slot-ref
      (lambda _g100105_
        (let ((_g100104_ (let () (declare (not safe)) (##length _g100105_))))
          (cond ((let () (declare (not safe)) (##fx= _g100104_ 2))
                 (apply __slot-ref__0 _g100105_))
                ((let () (declare (not safe)) (##fx= _g100104_ 3))
                 (apply __slot-ref__% _g100105_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g100105_))))))
    (define slot-set!__%
      (lambda (_%obj96850%_ _%slot96851%_ _%val96852%_ _%E96853%_)
        (if (symbol? _%slot96851%_)
            (let ((_%slot96857%_ _%slot96851%_))
              (if (procedure? _%E96853%_)
                  (let ((_%E96867%_ _%E96853%_))
                    (__slot-set!__%
                     _%obj96850%_
                     _%slot96857%_
                     _%val96852%_
                     _%E96867%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E96853%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot96851%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj96880%_ _%slot96881%_ _%val96882%_)
        (let ((_%E96884%_ __slot-error))
          (slot-set!__% _%obj96880%_ _%slot96881%_ _%val96882%_ _%E96884%_))))
    (define slot-set!
      (lambda _g100107_
        (let ((_g100106_ (let () (declare (not safe)) (##length _g100107_))))
          (cond ((let () (declare (not safe)) (##fx= _g100106_ 3))
                 (apply slot-set!__0 _g100107_))
                ((let () (declare (not safe)) (##fx= _g100106_ 4))
                 (apply slot-set!__% _g100107_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g100107_))))))
    (define __slot-set!__%
      (lambda (_%obj96803%_ _%slot96804%_ _%val96805%_ _%E96806%_)
        (let* ((_%slot96809%_ _%slot96804%_)
               (_%E96817%_ _%E96806%_)
               (_%klass96826%_ (class-of _%obj96803%_))
               (_%$e96829%_
                (__class-slot-offset _%klass96826%_ _%slot96809%_)))
          (if _%$e96829%_
              ((lambda (_%off96832%_)
                 (unchecked-field-set! _%obj96803%_ _%off96832%_ _%val96805%_))
               _%$e96829%_)
              (let ()
                (declare (not safe))
                (_%E96817%_ _%obj96803%_ _%slot96809%_))))))
    (define __slot-set!__0
      (lambda (_%obj96838%_ _%slot96839%_ _%val96840%_)
        (let ((_%E96842%_ __slot-error))
          (__slot-set!__%
           _%obj96838%_
           _%slot96839%_
           _%val96840%_
           _%E96842%_))))
    (define __slot-set!
      (lambda _g100109_
        (let ((_g100108_ (let () (declare (not safe)) (##length _g100109_))))
          (cond ((let () (declare (not safe)) (##fx= _g100108_ 3))
                 (apply __slot-set!__0 _g100109_))
                ((let () (declare (not safe)) (##fx= _g100108_ 4))
                 (apply __slot-set!__% _g100109_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g100109_))))))
    (define __slot-error
      (lambda (_%obj96799%_ _%slot96800%_)
        (error '"Cannot find slot"
               'object:
               _%obj96799%_
               'slot:
               _%slot96800%_)))
    (define subclass?
      (lambda (_%maybe-sub-class96774%_ _%maybe-super-class96775%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class96774%_ 'class))
            (let ((_%maybe-sub-class96779%_ _%maybe-sub-class96774%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class96775%_
                     'class))
                  (let ((_%maybe-super-class96789%_
                         _%maybe-super-class96775%_))
                    (__subclass?
                     _%maybe-sub-class96779%_
                     _%maybe-super-class96789%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class96775%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class96774%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class96746%_ _%maybe-super-class96747%_)
        (let* ((_%maybe-sub-class96750%_ _%maybe-sub-class96746%_)
               (_%maybe-super-class96758%_ _%maybe-super-class96747%_)
               (_%maybe-super-class-id96767%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class96758%_)))
               (_%$e96769%_
                (eq? _%maybe-super-class-id96767%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class96750%_)))))
          (if _%$e96769%_
              _%$e96769%_
              (let ((__tmp100111
                     (lambda (_%super-class96772%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class96772%_))
                            _%maybe-super-class-id96767%_)))
                    (__tmp100110
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class96750%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp100111 __tmp100110))))))
    (define object?
      (lambda (_%o96743%_)
        (if (let () (declare (not safe)) (##structure? _%o96743%_))
            (let ((__tmp100112
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o96743%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp100112 'class))
            '#f)))
    (define object-type
      (lambda (_%o96738%_)
        (if (let () (declare (not safe)) (##structure? _%o96738%_))
            (let ((_%klass96741%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o96738%_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass96741%_ 'class))
                  _%klass96741%_
                  (begin
                    (error '"not an object" _%o96738%_ _%klass96741%_)
                    '#!void)))
            (begin (error '"not an object" _%o96738%_) '#!void))))
    (define direct-instance?
      (lambda (_%klass96723%_ _%obj96724%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96723%_ 'class))
            (let ((_%klass96728%_ _%klass96723%_))
              (__direct-instance? _%klass96728%_ _%obj96724%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass96723%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass96710%_ _%obj96711%_)
        (let* ((_%klass96714%_ _%klass96710%_)
               (__tmp100113
                (let () (declare (not safe)) (##type-id _%klass96714%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj96711%_ __tmp100113))))
    (define immediate-instance-of?
      (lambda (_%klass96706%_ _%obj96707%_)
        (if (let () (declare (not safe)) (##structure? _%obj96707%_))
            (eq? _%klass96706%_
                 (let () (declare (not safe)) (##structure-type _%obj96707%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass96691%_ _%obj96692%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96691%_ 'class))
            (let ((_%klass96696%_ _%klass96691%_))
              (__struct-instance? _%klass96696%_ _%obj96692%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass96691%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass96678%_ _%obj96679%_)
        (let* ((_%klass96682%_ _%klass96678%_)
               (__tmp100114
                (let () (declare (not safe)) (##type-id _%klass96682%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj96679%_ __tmp100114))))
    (define class-instance?
      (lambda (_%klass96663%_ _%obj96664%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96663%_ 'class))
            (let ((_%klass96668%_ _%klass96663%_))
              (__class-instance? _%klass96668%_ _%obj96664%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass96663%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass96648%_ _%obj96649%_)
        (let* ((_%klass96652%_ _%klass96648%_)
               (_%type96661%_ (class-of _%obj96649%_)))
          (__subclass? _%type96661%_ _%klass96652%_))))
    (define make-object
      (lambda (_%klass96623%_ _%k96624%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96623%_ 'class))
            (let ((_%klass96628%_ _%klass96623%_))
              (if (fixnum? _%k96624%_)
                  (let ((_%k96638%_ _%k96624%_))
                    (__make-object _%klass96628%_ _%k96638%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k96624%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass96623%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass96600%_ _%k96601%_)
        (let* ((_%klass96604%_ _%klass96600%_) (_%k96612%_ _%k96601%_))
          (if (__class-type-system? _%klass96604%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass96604%_)
                '#!void)
              (let ((_%obj96621%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass96604%_ _%k96612%_))))
                (object-fill! _%obj96621%_ '#f))))))
    (define object-fill!
      (lambda (_%obj96585%_ _%fill96586%_)
        (if '#t
            (let ((_%obj96590%_ _%obj96585%_))
              (__object-fill! _%obj96590%_ _%fill96586%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj96585%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj96567%_ _%fill96568%_)
        (let ((_%obj96571%_ _%obj96567%_))
          (let _%loop96580%_ ((_%i96582%_
                               (let ((__tmp100115
                                      (let ()
                                        (declare (not safe))
                                        (##structure-length _%obj96571%_))))
                                 (declare (not safe))
                                 (##fx- __tmp100115 '1))))
            (if (let () (declare (not safe)) (##fx> _%i96582%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj96571%_
                     _%fill96568%_
                     _%i96582%_
                     '#f
                     '#f))
                  (_%loop96580%_
                   (let () (declare (not safe)) (##fx- _%i96582%_ '1))))
                _%obj96571%_)))))
    (define new-instance
      (lambda (_%klass96553%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96553%_ 'class))
            (let ((_%klass96557%_ _%klass96553%_))
              (__new-instance _%klass96557%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass96553%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass96541%_)
        (let* ((_%klass96544%_ _%klass96541%_)
               (__obj100030
                (let ((__tmp100116
                       (let ((__tmp100117
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass96544%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp100117))))
                  (declare (not safe))
                  (##make-structure _%klass96544%_ __tmp100116))))
          (object-fill! __obj100030 '#f)
          __obj100030)))
    (define make-instance
      (lambda (_%klass96526%_ . _%args96527%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96526%_ 'class))
            (let ((_%klass96531%_ _%klass96526%_))
              (declare (not safe))
              (##apply __make-instance _%klass96531%_ _%args96527%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass96526%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass96498%_ . _%args96499%_)
        (let* ((_%klass96502%_ _%klass96498%_)
               (_%$e96511%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass96502%_ '10 '#f '#f))))
          (if _%$e96511%_
              ((lambda (_%kons-id96514%_)
                 (let ((_%obj96516%_ (__new-instance _%klass96502%_)))
                   (___constructor-init!
                    _%klass96502%_
                    _%kons-id96514%_
                    _%obj96516%_
                    _%args96499%_)
                   _%obj96516%_))
               _%$e96511%_)
              (if (__class-type-metaclass? _%klass96502%_)
                  (let ((_%obj96519%_ (__new-instance _%klass96502%_)))
                    (__metaclass-instance-init!
                     _%klass96502%_
                     _%obj96519%_
                     _%args96499%_)
                    _%obj96519%_)
                  (if (__class-type-struct? _%klass96502%_)
                      (if (let ((__tmp100119
                                 (__class-type-field-count _%klass96502%_))
                                (__tmp100118
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args96499%_))))
                            (declare (not safe))
                            (##fx= __tmp100119 __tmp100118))
                          (apply ##structure _%klass96502%_ _%args96499%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass96502%_
                                   'slots:
                                   (__class-type-slot-list _%klass96502%_)
                                   'args:
                                   _%args96499%_)
                            '#!void))
                      (let ((_%obj96522%_ (__new-instance _%klass96502%_)))
                        (___class-instance-init!
                         _%klass96502%_
                         _%obj96522%_
                         _%args96499%_)
                        _%obj96522%_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj96483%_ . _%args96484%_)
        (if '#t
            (let ((_%obj96488%_ _%obj96483%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj96488%_ _%args96484%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj96483%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj96470%_ . _%args96471%_)
        (let ((_%obj96474%_ _%obj96470%_))
          (if (let ((__tmp100121
                     (let () (declare (not safe)) (##length _%args96471%_)))
                    (__tmp100120
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj96474%_))))
                (declare (not safe))
                (##fx< __tmp100121 __tmp100120))
              (___struct-instance-init! _%obj96474%_ _%args96471%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj96474%_
                     'args:
                     _%args96471%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj96429%_ _%args96430%_)
        (let _%lp96432%_ ((_%k96434%_ '1) (_%rest96435%_ _%args96430%_))
          (let* ((_%rest9643696444%_ _%rest96435%_)
                 (_%else9643896452%_ (lambda () _%obj96429%_))
                 (_%K9644096458%_
                  (lambda (_%rest96455%_ _%hd96456%_)
                    (unchecked-field-set! _%obj96429%_ _%k96434%_ _%hd96456%_)
                    (_%lp96432%_
                     (let () (declare (not safe)) (##fx+ _%k96434%_ '1))
                     _%rest96455%_))))
            (if (let () (declare (not safe)) (##pair? _%rest9643696444%_))
                (let ((_%hd9644196461%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9643696444%_)))
                      (_%tl9644296463%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9643696444%_))))
                  (let* ((_%hd96466%_ _%hd9644196461%_)
                         (_%rest96468%_ _%tl9644296463%_))
                    (_%K9644096458%_ _%rest96468%_ _%hd96466%_)))
                (_%else9643896452%_))))))
    (define class-instance-init!
      (lambda (_%obj96414%_ . _%args96415%_)
        (if '#t
            (let ((_%obj96419%_ _%obj96414%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj96419%_ _%args96415%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj96414%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj96401%_ . _%args96402%_)
        (let ((_%obj96405%_ _%obj96401%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj96405%_))
           _%obj96405%_
           _%args96402%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass96343%_ _%obj96344%_ _%args96345%_)
        (let _%lp96347%_ ((_%rest96349%_ _%args96345%_))
          (let* ((_%rest9635096360%_ _%rest96349%_)
                 (_%else9635296368%_
                  (lambda ()
                    (if (null? _%rest96349%_)
                        _%obj96344%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass96343%_
                               'rest:
                               _%rest96349%_))))
                 (_%K9635496382%_
                  (lambda (_%rest96371%_ _%val96372%_ _%key96373%_)
                    (if (keyword? _%key96373%_)
                        (let ((_%$e96376%_
                               (__class-slot-offset
                                _%klass96343%_
                                _%key96373%_)))
                          (if _%$e96376%_
                              ((lambda (_%off96379%_)
                                 (unchecked-field-set!
                                  _%obj96344%_
                                  _%off96379%_
                                  _%val96372%_)
                                 (_%lp96347%_ _%rest96371%_))
                               _%$e96376%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass96343%_
                                     'slot:
                                     _%key96373%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key96373%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest9635096360%_))
                (let ((_%hd9635596385%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9635096360%_)))
                      (_%tl9635696387%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9635096360%_))))
                  (let ((_%key96390%_ _%hd9635596385%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9635696387%_))
                        (let ((_%hd9635796392%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9635696387%_)))
                              (_%tl9635896394%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9635696387%_))))
                          (let* ((_%val96397%_ _%hd9635796392%_)
                                 (_%rest96399%_ _%tl9635896394%_))
                            (_%K9635496382%_
                             _%rest96399%_
                             _%val96397%_
                             _%key96390%_)))
                        (_%else9635296368%_))))
                (_%else9635296368%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass96339%_ _%obj96340%_ _%args96341%_)
        (apply call-method
               _%klass96339%_
               'instance-init!
               _%obj96340%_
               _%args96341%_)))
    (define constructor-init!
      (lambda (_%klass96302%_ _%kons-id96303%_ _%obj96304%_ . _%args96305%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96302%_ 'class))
            (let ((_%klass96309%_ _%klass96302%_))
              (if (symbol? _%kons-id96303%_)
                  (let ((_%kons-id96319%_ _%kons-id96303%_))
                    (if '#t
                        (let ((_%obj96329%_ _%obj96304%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass96309%_
                                   _%kons-id96319%_
                                   _%obj96329%_
                                   _%args96305%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                           'contract:
                           'true
                           'value:
                           _%obj96304%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id96303%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass96302%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass96271%_ _%kons-id96272%_ _%obj96273%_ . _%args96274%_)
        (let* ((_%klass96277%_ _%klass96271%_)
               (_%kons-id96285%_ _%kons-id96272%_)
               (_%obj96293%_ _%obj96273%_))
          (___constructor-init!
           _%klass96277%_
           _%kons-id96285%_
           _%obj96293%_
           _%args96274%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass96260%_ _%kons-id96261%_ _%obj96262%_ _%args96263%_)
        (let ((_%$e96265%_
               (__find-method _%klass96260%_ _%obj96262%_ _%kons-id96261%_)))
          (if _%$e96265%_
              ((lambda (_%kons96268%_)
                 (apply _%kons96268%_ _%obj96262%_ _%args96263%_)
                 _%obj96262%_)
               _%$e96265%_)
              (error '"missing constructor"
                     'class:
                     _%klass96260%_
                     'method:
                     _%kons-id96261%_)))))
    (define struct-copy
      (lambda (_%struct96246%_)
        (if '#t
            (let ((_%struct96250%_ _%struct96246%_))
              (__struct-copy _%struct96250%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct96246%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct96234%_)
        (let ((_%struct96237%_ _%struct96234%_))
          (declare (not safe))
          (##structure-copy _%struct96237%_))))
    (define struct->list
      (lambda (_%obj96220%_)
        (if '#t
            (let ((_%obj96224%_ _%obj96220%_)) (__struct->list _%obj96224%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj96220%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj96208%_)
        (let ((_%obj96211%_ _%obj96208%_))
          (declare (not safe))
          (##vector->list _%obj96211%_))))
    (define class->list
      (lambda (_%obj96194%_)
        (if '#t
            (let ((_%obj96198%_ _%obj96194%_)) (__class->list _%obj96198%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@837.20-837.23"
               'contract:
               'true
               'value:
               _%obj96194%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj96170%_)
        (let* ((_%obj96173%_ _%obj96170%_)
               (_%klass96182%_
                (let () (declare (not safe)) (##structure-type _%obj96173%_)))
               (_%slot-vector96184%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass96182%_ '7 '#f '#f))))
          (let _%loop96186%_ ((_%index96188%_
                               (let ((__tmp100122
                                      (let ()
                                        (declare (not safe))
                                        (##vector-length
                                         _%slot-vector96184%_))))
                                 (declare (not safe))
                                 (##fx- __tmp100122 '1)))
                              (_%plist96189%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index96188%_ '1))
                (cons _%klass96182%_ _%plist96189%_)
                (let ((_%slot96192%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%slot-vector96184%_ _%index96188%_))))
                  (_%loop96186%_
                   (let () (declare (not safe)) (##fx- _%index96188%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot96192%_))
                         (cons (unchecked-field-ref
                                _%obj96173%_
                                _%index96188%_)
                               _%plist96189%_)))))))))
    (define call-method
      (lambda (_%obj96154%_ _%id96155%_ . _%args96156%_)
        (if (symbol? _%id96155%_)
            (let ((_%id96160%_ _%id96155%_))
              (declare (not safe))
              (##apply __call-method _%obj96154%_ _%id96160%_ _%args96156%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.24-852.26"
               'contract:
               'symbol?
               'value:
               _%id96155%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj96123%_ _%id96124%_ . _%args96125%_)
        (let* ((_%id96128%_ _%id96124%_)
               (_%$e96137%_ (__method-ref _%obj96123%_ _%id96128%_)))
          (if _%$e96137%_
              ((lambda (_%method96140%_)
                 (let ((_%method96142%_ _%method96140%_))
                   (apply _%method96142%_ _%obj96123%_ _%args96125%_)))
               _%$e96137%_)
              (error '"cannot find method"
                     'object:
                     _%obj96123%_
                     'method:
                     _%id96128%_)))))
    (define method-ref
      (lambda (_%obj96108%_ _%id96109%_)
        (if (symbol? _%id96109%_)
            (let ((_%id96113%_ _%id96109%_))
              (__method-ref _%obj96108%_ _%id96113%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@879.23-879.25"
               'contract:
               'symbol?
               'value:
               _%id96109%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj96095%_ _%id96096%_)
        (let ((_%id96099%_ _%id96096%_))
          (__find-method (class-of _%obj96095%_) _%obj96095%_ _%id96099%_))))
    (define checked-method-ref
      (lambda (_%obj96088%_ _%id96089%_)
        (let ((_%$e96092%_ (method-ref _%obj96088%_ _%id96089%_)))
          (if _%$e96092%_
              _%$e96092%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj96088%_
                       'method:
                       _%id96089%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj96073%_ _%id96074%_)
        (if (symbol? _%id96074%_)
            (let ((_%id96078%_ _%id96074%_))
              (__bound-method-ref _%obj96073%_ _%id96078%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@887.29-887.31"
               'contract:
               'symbol?
               'value:
               _%id96074%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj96041%_ _%id96042%_)
        (let* ((_%id96045%_ _%id96042%_)
               (_%$e96054%_ (__method-ref _%obj96041%_ _%id96045%_)))
          (if _%$e96054%_
              ((lambda (_%method96057%_)
                 (let ((_%method96059%_ _%method96057%_))
                   (lambda _%args96070%_
                     (apply _%method96059%_ _%obj96041%_ _%args96070%_))))
               _%$e96054%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj96026%_ _%id96027%_)
        (if (symbol? _%id96027%_)
            (let ((_%id96031%_ _%id96027%_))
              (__checked-bound-method-ref _%obj96026%_ _%id96031%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@896.37-896.39"
               'contract:
               'symbol?
               'value:
               _%id96027%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj96009%_ _%id96010%_)
        (let* ((_%id96013%_ _%id96010%_)
               (_%method96022%_ (checked-method-ref _%obj96009%_ _%id96013%_)))
          (lambda _%args96024%_
            (apply _%method96022%_ _%obj96009%_ _%args96024%_)))))
    (define find-method
      (lambda (_%klass95983%_ _%obj95984%_ _%id95985%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95983%_ 'class))
            (let ((_%klass95989%_ _%klass95983%_))
              (if (symbol? _%id95985%_)
                  (let ((_%id95999%_ _%id95985%_))
                    (__find-method _%klass95989%_ _%obj95984%_ _%id95999%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@901.41-901.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id95985%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@901.20-901.25"
               'contract:
               'class-type?
               'value:
               _%klass95983%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass95956%_ _%obj95957%_ _%id95958%_)
        (let* ((_%klass95961%_ _%klass95956%_)
               (_%id95969%_ _%id95958%_)
               (_%$e95978%_
                (__direct-method-ref _%klass95961%_ _%obj95957%_ _%id95969%_)))
          (if _%$e95978%_
              _%$e95978%_
              (if (__class-type-sealed? _%klass95961%_)
                  '#f
                  (__mixin-method-ref
                   _%klass95961%_
                   _%obj95957%_
                   _%id95969%_))))))
    (define mixin-find-method
      (lambda (_%mixins95940%_ _%obj95941%_ _%id95942%_)
        (if (symbol? _%id95942%_)
            (let ((_%id95946%_ _%id95942%_))
              (__mixin-find-method _%mixins95940%_ _%obj95941%_ _%id95946%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@909.37-909.39"
               'contract:
               'symbol?
               'value:
               _%id95942%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins95922%_ _%obj95923%_ _%id95924%_)
        (let* ((_%id95927%_ _%id95924%_)
               (__tmp100123
                (lambda (_%g9593595937%_)
                  (direct-method-ref
                   _%g9593595937%_
                   _%obj95923%_
                   _%id95927%_))))
          (declare (not safe))
          (__ormap1 __tmp100123 _%mixins95922%_))))
    (define direct-method-ref
      (lambda (_%klass95896%_ _%obj95897%_ _%id95898%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95896%_ 'class))
            (let ((_%klass95902%_ _%klass95896%_))
              (if (symbol? _%id95898%_)
                  (let ((_%id95912%_ _%id95898%_))
                    (__direct-method-ref
                     _%klass95902%_
                     _%obj95897%_
                     _%id95912%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@912.47-912.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id95898%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@912.26-912.31"
               'contract:
               'class-type?
               'value:
               _%klass95896%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass95850%_ _%obj95851%_ _%id95852%_)
        (let* ((_%klass95855%_ _%klass95850%_) (_%id95863%_ _%id95852%_))
          (letrec ((_%metaclass-resolve-method95872%_
                    (lambda ()
                      (let ((__method100031
                             (__method-ref _%klass95855%_ 'direct-method-ref)))
                        (if __method100031
                            (let ()
                              (declare (not safe))
                              (__method100031
                               _%klass95855%_
                               _%obj95851%_
                               _%id95863%_))
                            (begin
                              (error '"Missing method"
                                     _%klass95855%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!95873%_
                    (lambda ()
                      (let ((_%method95893%_
                             (_%metaclass-resolve-method95872%_)))
                        (let ((__tmp100125
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass95855%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp100124
                               (if _%method95893%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp100125
                           _%id95863%_
                           __tmp100124))
                        _%method95893%_))))
            (let ((_%$e95875%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass95855%_ '11 '#f '#f))))
              (if _%$e95875%_
                  ((lambda (_%ht95878%_)
                     (let ((_%method95880%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht95878%_
                               _%id95863%_
                               '#f))))
                       (if (procedure? _%method95880%_)
                           _%method95880%_
                           (if (__class-type-metaclass? _%klass95855%_)
                               (let ((_%$e95884%_ _%method95880%_))
                                 (if (eq? 'resolved _%$e95884%_)
                                     (_%metaclass-resolve-method95872%_)
                                     (if (eq? 'unknown _%$e95884%_)
                                         '#f
                                         (_%metaclass-resolve-method!95873%_))))
                               '#f))))
                   _%$e95875%_)
                  (if (__class-type-metaclass? _%klass95855%_)
                      (let ((_%tab95889%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass95855%_
                           _%tab95889%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!95873%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass95824%_ _%obj95825%_ _%id95826%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95824%_ 'class))
            (let ((_%klass95830%_ _%klass95824%_))
              (if (symbol? _%id95826%_)
                  (let ((_%id95840%_ _%id95826%_))
                    (__mixin-method-ref
                     _%klass95830%_
                     _%obj95825%_
                     _%id95840%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@942.46-942.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id95826%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@942.25-942.30"
               'contract:
               'class-type?
               'value:
               _%klass95824%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass95802%_ _%obj95803%_ _%id95804%_)
        (let* ((_%klass95807%_ _%klass95802%_) (_%id95815%_ _%id95804%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass95807%_ '6 '#f '#f))
           _%obj95803%_
           _%id95815%_))))
    (define bind-method!__%
      (lambda (_%klass95761%_ _%id95762%_ _%proc95763%_ _%rebind?95764%_)
        (if (symbol? _%id95762%_)
            (let ((_%id95768%_ _%id95762%_))
              (if (procedure? _%proc95763%_)
                  (let ((_%proc95778%_ _%proc95763%_))
                    (__bind-method!__%
                     _%klass95761%_
                     _%id95768%_
                     _%proc95778%_
                     _%rebind?95764%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@945.42-945.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc95763%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@945.27-945.29"
               'contract:
               'symbol?
               'value:
               _%id95762%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass95791%_ _%id95792%_ _%proc95793%_)
        (let ((_%rebind?95795%_ '#f))
          (bind-method!__%
           _%klass95791%_
           _%id95792%_
           _%proc95793%_
           _%rebind?95795%_))))
    (define bind-method!
      (lambda _g100127_
        (let ((_g100126_ (let () (declare (not safe)) (##length _g100127_))))
          (cond ((let () (declare (not safe)) (##fx= _g100126_ 3))
                 (apply bind-method!__0 _g100127_))
                ((let () (declare (not safe)) (##fx= _g100126_ 4))
                 (apply bind-method!__% _g100127_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g100127_))))))
    (define __bind-method!__%
      (lambda (_%klass95712%_ _%id95713%_ _%proc95714%_ _%rebind?95715%_)
        (let* ((_%id95718%_ _%id95713%_) (_%proc95726%_ _%proc95714%_))
          (letrec ((_%bind!95735%_
                    (lambda (_%ht95744%_)
                      (if (and (not _%rebind?95715%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht95744%_
                                  _%id95718%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass95712%_
                                 'method:
                                 _%id95718%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht95744%_
                               _%id95718%_
                               _%proc95726%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass95712%_ 'class))
                (let ((_%ht95738%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass95712%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht95738%_
                      (_%bind!95735%_ _%ht95738%_)
                      (let ((_%ht95740%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass95712%_
                           _%ht95740%_
                           '11
                           '#f
                           '#f))
                        (_%bind!95735%_ _%ht95740%_))))
                (if (let () (declare (not safe)) (##type? _%klass95712%_))
                    (__bind-method!__%
                     (__shadow-class _%klass95712%_)
                     _%id95718%_
                     _%proc95726%_
                     _%rebind?95715%_)
                    (error '"bad class; expected class or builtin type"
                           _%klass95712%_)))))))
    (define __bind-method!__0
      (lambda (_%klass95749%_ _%id95750%_ _%proc95751%_)
        (let ((_%rebind?95753%_ '#f))
          (__bind-method!__%
           _%klass95749%_
           _%id95750%_
           _%proc95751%_
           _%rebind?95753%_))))
    (define __bind-method!
      (lambda _g100129_
        (let ((_g100128_ (let () (declare (not safe)) (##length _g100129_))))
          (cond ((let () (declare (not safe)) (##fx= _g100128_ 3))
                 (apply __bind-method!__0 _g100129_))
                ((let () (declare (not safe)) (##fx= _g100128_ 4))
                 (apply __bind-method!__% _g100129_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g100129_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint95692%_ _%seed95694%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint95692%_
           procedure-hash
           eq?
           _%seed95694%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint95700%_ '#f) (_%seed95702%_ '0))
          (make-method-specializer-table__%
           _%size-hint95700%_
           _%seed95702%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint95704%_)
        (let ((_%seed95706%_ '0))
          (make-method-specializer-table__%
           _%size-hint95704%_
           _%seed95706%_))))
    (define make-method-specializer-table
      (lambda _g100131_
        (let ((_g100130_ (let () (declare (not safe)) (##length _g100131_))))
          (cond ((let () (declare (not safe)) (##fx= _g100130_ 0))
                 (apply make-method-specializer-table__0 _g100131_))
                ((let () (declare (not safe)) (##fx= _g100130_ 1))
                 (apply make-method-specializer-table__1 _g100131_))
                ((let () (declare (not safe)) (##fx= _g100130_ 2))
                 (apply make-method-specializer-table__% _g100131_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g100131_))))))
    (define method-specializer-table-ref
      (lambda (_%tab95645%_ _%key95646%_ _%default95647%_)
        (let ((_%table95649%_
               (let () (declare (not safe)) (&raw-table-table _%tab95645%_)))
              (_%seed95650%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95645%_))))
          (let* ((_%h95652%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key95646%_))
                         _%seed95650%_))
                 (_%size95655%_ (vector-length _%table95649%_))
                 (_%entries95658%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95655%_ '2)))
                 (_%start95661%_
                  (let ((__tmp100132
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95652%_ _%entries95658%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100132 '1))))
            (let _%loop95665%_ ((_%probe95668%_ _%start95661%_)
                                (_%i95670%_ '1)
                                (_%deleted95672%_ '#f))
              (let ((_%k95675%_ (vector-ref _%table95649%_ _%probe95668%_)))
                (if (eq? _%k95675%_ (macro-unused-obj))
                    _%default95647%_
                    (if (eq? _%k95675%_ (macro-deleted-obj))
                        (_%loop95665%_
                         (let ((_%next-probe95680%_
                                (fx+ _%start95661%_
                                     _%i95670%_
                                     (fx* _%i95670%_ _%i95670%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95680%_ _%size95655%_))
                         (let () (declare (not safe)) (##fx+ _%i95670%_ '1))
                         (let ((_%$e95683%_ _%deleted95672%_))
                           (if _%$e95683%_ _%$e95683%_ _%probe95668%_)))
                        (if (eq? _%key95646%_ _%k95675%_)
                            (vector-ref
                             _%table95649%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe95668%_ '1)))
                            (_%loop95665%_
                             (let ((_%next-probe95688%_
                                    (fx+ _%start95661%_
                                         _%i95670%_
                                         (fx* _%i95670%_ _%i95670%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95688%_ _%size95655%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95670%_ '1))
                             _%deleted95672%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab95641%_ _%key95642%_ _%value95643%_)
        (if (let ((__tmp100135
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab95641%_)))
                  (__tmp100133
                   (let ((__tmp100134
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab95641%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp100134 '4))))
              (declare (not safe))
              (##fx< __tmp100135 __tmp100133))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab95641%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab95641%_
         _%key95642%_
         _%value95643%_)))
    (define __method-specializer-table-set!
      (lambda (_%tab95592%_ _%key95593%_ _%value95594%_)
        (let ((_%table95597%_
               (let () (declare (not safe)) (&raw-table-table _%tab95592%_)))
              (_%seed95598%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95592%_))))
          (let* ((_%h95600%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key95593%_))
                         _%seed95598%_))
                 (_%size95603%_ (vector-length _%table95597%_))
                 (_%entries95606%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95603%_ '2)))
                 (_%start95609%_
                  (let ((__tmp100136
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95600%_ _%entries95606%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100136 '1))))
            (let _%loop95613%_ ((_%probe95616%_ _%start95609%_)
                                (_%i95618%_ '1)
                                (_%deleted95620%_ '#f))
              (let ((_%k95623%_ (vector-ref _%table95597%_ _%probe95616%_)))
                (if (eq? _%k95623%_ (macro-unused-obj))
                    (if _%deleted95620%_
                        (begin
                          (vector-set!
                           _%table95597%_
                           _%deleted95620%_
                           _%key95593%_)
                          (vector-set!
                           _%table95597%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted95620%_ '1))
                           _%value95594%_)
                          ((lambda ()
                             (let ((__tmp100137
                                    (let ((__tmp100138
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95592%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100138 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95592%_
                                __tmp100137)))))
                        (begin
                          (vector-set!
                           _%table95597%_
                           _%probe95616%_
                           _%key95593%_)
                          (vector-set!
                           _%table95597%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe95616%_ '1))
                           _%value95594%_)
                          ((lambda ()
                             (let ((__tmp100139
                                    (let ((__tmp100140
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab95592%_))))
                                      (declare (not safe))
                                      (##fx- __tmp100140 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab95592%_ __tmp100139))
                             (let ((__tmp100141
                                    (let ((__tmp100142
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95592%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100142 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95592%_
                                __tmp100141))))))
                    (if (eq? _%k95623%_ (macro-deleted-obj))
                        (_%loop95613%_
                         (let ((_%next-probe95630%_
                                (fx+ _%start95609%_
                                     _%i95618%_
                                     (fx* _%i95618%_ _%i95618%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95630%_ _%size95603%_))
                         (let () (declare (not safe)) (##fx+ _%i95618%_ '1))
                         (let ((_%$e95633%_ _%deleted95620%_))
                           (if _%$e95633%_ _%$e95633%_ _%probe95616%_)))
                        (if (eq? _%key95593%_ _%k95623%_)
                            (let ()
                              (vector-set!
                               _%table95597%_
                               _%probe95616%_
                               _%key95593%_)
                              (vector-set!
                               _%table95597%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95616%_ '1))
                               _%value95594%_))
                            (_%loop95613%_
                             (let ((_%next-probe95638%_
                                    (fx+ _%start95609%_
                                         _%i95618%_
                                         (fx* _%i95618%_ _%i95618%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95638%_ _%size95603%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95618%_ '1))
                             _%deleted95620%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab95587%_
               _%key95588%_
               _%method-specializer-table-update!95589%_
               _%default95590%_)
        (if (let ((__tmp100145
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab95587%_)))
                  (__tmp100143
                   (let ((__tmp100144
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab95587%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp100144 '4))))
              (declare (not safe))
              (##fx< __tmp100145 __tmp100143))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab95587%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab95587%_
         _%key95588%_
         _%method-specializer-table-update!95589%_
         _%default95590%_)))
    (define __method-specializer-table-update!
      (lambda (_%tab95537%_
               _%key95538%_
               _%method-specializer-table-update!95539%_
               _%default95540%_)
        (let ((_%table95543%_
               (let () (declare (not safe)) (&raw-table-table _%tab95537%_)))
              (_%seed95544%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95537%_))))
          (let* ((_%h95546%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key95538%_))
                         _%seed95544%_))
                 (_%size95549%_ (vector-length _%table95543%_))
                 (_%entries95552%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95549%_ '2)))
                 (_%start95555%_
                  (let ((__tmp100146
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95546%_ _%entries95552%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100146 '1))))
            (let _%loop95559%_ ((_%probe95562%_ _%start95555%_)
                                (_%i95564%_ '1)
                                (_%deleted95566%_ '#f))
              (let ((_%k95569%_ (vector-ref _%table95543%_ _%probe95562%_)))
                (if (eq? _%k95569%_ (macro-unused-obj))
                    (if _%deleted95566%_
                        (begin
                          (vector-set!
                           _%table95543%_
                           _%deleted95566%_
                           _%key95538%_)
                          (vector-set!
                           _%table95543%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted95566%_ '1))
                           (_%method-specializer-table-update!95539%_
                            _%default95540%_))
                          ((lambda ()
                             (let ((__tmp100147
                                    (let ((__tmp100148
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95537%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100148 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95537%_
                                __tmp100147)))))
                        (begin
                          (vector-set!
                           _%table95543%_
                           _%probe95562%_
                           _%key95538%_)
                          (vector-set!
                           _%table95543%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe95562%_ '1))
                           (_%method-specializer-table-update!95539%_
                            _%default95540%_))
                          ((lambda ()
                             (let ((__tmp100149
                                    (let ((__tmp100150
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab95537%_))))
                                      (declare (not safe))
                                      (##fx- __tmp100150 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab95537%_ __tmp100149))
                             (let ((__tmp100151
                                    (let ((__tmp100152
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95537%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100152 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95537%_
                                __tmp100151))))))
                    (if (eq? _%k95569%_ (macro-deleted-obj))
                        (_%loop95559%_
                         (let ((_%next-probe95576%_
                                (fx+ _%start95555%_
                                     _%i95564%_
                                     (fx* _%i95564%_ _%i95564%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95576%_ _%size95549%_))
                         (let () (declare (not safe)) (##fx+ _%i95564%_ '1))
                         (let ((_%$e95579%_ _%deleted95566%_))
                           (if _%$e95579%_ _%$e95579%_ _%probe95562%_)))
                        (if (eq? _%key95538%_ _%k95569%_)
                            (let ()
                              (vector-set!
                               _%table95543%_
                               _%probe95562%_
                               _%key95538%_)
                              (vector-set!
                               _%table95543%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95562%_ '1))
                               (_%method-specializer-table-update!95539%_
                                (vector-ref
                                 _%table95543%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe95562%_ '1))))))
                            (_%loop95559%_
                             (let ((_%next-probe95584%_
                                    (fx+ _%start95555%_
                                         _%i95564%_
                                         (fx* _%i95564%_ _%i95564%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95584%_ _%size95549%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95564%_ '1))
                             _%deleted95566%_))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab95492%_ _%key95494%_)
        (let ((_%table95497%_
               (let () (declare (not safe)) (&raw-table-table _%tab95492%_)))
              (_%seed95499%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95492%_))))
          (let* ((_%h95502%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key95494%_))
                         _%seed95499%_))
                 (_%size95505%_ (vector-length _%table95497%_))
                 (_%entries95508%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95505%_ '2)))
                 (_%start95511%_
                  (let ((__tmp100153
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95502%_ _%entries95508%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100153 '1))))
            (let _%loop95515%_ ((_%probe95518%_ _%start95511%_)
                                (_%i95520%_ '1))
              (let ((_%k95523%_ (vector-ref _%table95497%_ _%probe95518%_)))
                (if (eq? _%k95523%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k95523%_ (macro-deleted-obj))
                        (_%loop95515%_
                         (let ((_%next-probe95528%_
                                (fx+ _%start95511%_
                                     _%i95520%_
                                     (fx* _%i95520%_ _%i95520%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95528%_ _%size95505%_))
                         (let () (declare (not safe)) (##fx+ _%i95520%_ '1)))
                        (if (eq? _%key95494%_ _%k95523%_)
                            (let ()
                              (vector-set!
                               _%table95497%_
                               _%probe95518%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table95497%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95518%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp100154
                                        (let ((__tmp100155
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab95492%_))))
                                          (declare (not safe))
                                          (##fx- __tmp100155 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab95492%_
                                    __tmp100154)))))
                            (_%loop95515%_
                             (let ((_%next-probe95534%_
                                    (fx+ _%start95511%_
                                         _%i95520%_
                                         (fx* _%i95520%_ _%i95520%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95534%_ _%size95505%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95520%_ '1))))))))))))
    (define __method-specializers (make-method-specializer-table__% '#f '0))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc95483%_ _%specializer95484%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again95488%_ ()
            (if (let ((__tmp100156
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp100156 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again95488%_)))))
        (method-specializer-table-set!
         __method-specializers
         _%method-proc95483%_
         _%specializer95484%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc95473%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again95477%_ ()
            (if (let ((__tmp100157
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp100157 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again95477%_)))))
        (let ((_%specializer95481%_
               (method-specializer-table-ref
                __method-specializers
                _%proc95473%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer95481%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass95471%_)
        (let ((__tmp100158
               (let () (declare (not safe)) (##type-id _%klass95471%_))))
          (declare (not safe))
          (symbolic-hash __tmp100158))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint95452%_ _%seed95454%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint95452%_
           __class-specializer-hash-key
           eq?
           _%seed95454%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint95460%_ '#f) (_%seed95462%_ '0))
          (make-class-specializer-table__% _%size-hint95460%_ _%seed95462%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint95464%_)
        (let ((_%seed95466%_ '0))
          (make-class-specializer-table__% _%size-hint95464%_ _%seed95466%_))))
    (define make-class-specializer-table
      (lambda _g100160_
        (let ((_g100159_ (let () (declare (not safe)) (##length _g100160_))))
          (cond ((let () (declare (not safe)) (##fx= _g100159_ 0))
                 (apply make-class-specializer-table__0 _g100160_))
                ((let () (declare (not safe)) (##fx= _g100159_ 1))
                 (apply make-class-specializer-table__1 _g100160_))
                ((let () (declare (not safe)) (##fx= _g100159_ 2))
                 (apply make-class-specializer-table__% _g100160_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g100160_))))))
    (define class-specializer-table-ref
      (lambda (_%tab95405%_ _%key95406%_ _%default95407%_)
        (let ((_%table95409%_
               (let () (declare (not safe)) (&raw-table-table _%tab95405%_)))
              (_%seed95410%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95405%_))))
          (let* ((_%h95412%_
                  (fxxor (__class-specializer-hash-key _%key95406%_)
                         _%seed95410%_))
                 (_%size95415%_ (vector-length _%table95409%_))
                 (_%entries95418%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95415%_ '2)))
                 (_%start95421%_
                  (let ((__tmp100161
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95412%_ _%entries95418%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100161 '1))))
            (let _%loop95425%_ ((_%probe95428%_ _%start95421%_)
                                (_%i95430%_ '1)
                                (_%deleted95432%_ '#f))
              (let ((_%k95435%_ (vector-ref _%table95409%_ _%probe95428%_)))
                (if (eq? _%k95435%_ (macro-unused-obj))
                    _%default95407%_
                    (if (eq? _%k95435%_ (macro-deleted-obj))
                        (_%loop95425%_
                         (let ((_%next-probe95440%_
                                (fx+ _%start95421%_
                                     _%i95430%_
                                     (fx* _%i95430%_ _%i95430%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95440%_ _%size95415%_))
                         (let () (declare (not safe)) (##fx+ _%i95430%_ '1))
                         (let ((_%$e95443%_ _%deleted95432%_))
                           (if _%$e95443%_ _%$e95443%_ _%probe95428%_)))
                        (if (eq? _%key95406%_ _%k95435%_)
                            (vector-ref
                             _%table95409%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe95428%_ '1)))
                            (_%loop95425%_
                             (let ((_%next-probe95448%_
                                    (fx+ _%start95421%_
                                         _%i95430%_
                                         (fx* _%i95430%_ _%i95430%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95448%_ _%size95415%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95430%_ '1))
                             _%deleted95432%_))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab95401%_ _%key95402%_ _%value95403%_)
        (if (let ((__tmp100164
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab95401%_)))
                  (__tmp100162
                   (let ((__tmp100163
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab95401%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp100163 '4))))
              (declare (not safe))
              (##fx< __tmp100164 __tmp100162))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab95401%_))
            '#!void)
        (__class-specializer-table-set!
         _%tab95401%_
         _%key95402%_
         _%value95403%_)))
    (define __class-specializer-table-set!
      (lambda (_%tab95352%_ _%key95353%_ _%value95354%_)
        (let ((_%table95357%_
               (let () (declare (not safe)) (&raw-table-table _%tab95352%_)))
              (_%seed95358%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95352%_))))
          (let* ((_%h95360%_
                  (fxxor (__class-specializer-hash-key _%key95353%_)
                         _%seed95358%_))
                 (_%size95363%_ (vector-length _%table95357%_))
                 (_%entries95366%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95363%_ '2)))
                 (_%start95369%_
                  (let ((__tmp100165
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95360%_ _%entries95366%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100165 '1))))
            (let _%loop95373%_ ((_%probe95376%_ _%start95369%_)
                                (_%i95378%_ '1)
                                (_%deleted95380%_ '#f))
              (let ((_%k95383%_ (vector-ref _%table95357%_ _%probe95376%_)))
                (if (eq? _%k95383%_ (macro-unused-obj))
                    (if _%deleted95380%_
                        (begin
                          (vector-set!
                           _%table95357%_
                           _%deleted95380%_
                           _%key95353%_)
                          (vector-set!
                           _%table95357%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted95380%_ '1))
                           _%value95354%_)
                          ((lambda ()
                             (let ((__tmp100166
                                    (let ((__tmp100167
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95352%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100167 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95352%_
                                __tmp100166)))))
                        (begin
                          (vector-set!
                           _%table95357%_
                           _%probe95376%_
                           _%key95353%_)
                          (vector-set!
                           _%table95357%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe95376%_ '1))
                           _%value95354%_)
                          ((lambda ()
                             (let ((__tmp100168
                                    (let ((__tmp100169
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab95352%_))))
                                      (declare (not safe))
                                      (##fx- __tmp100169 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab95352%_ __tmp100168))
                             (let ((__tmp100170
                                    (let ((__tmp100171
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95352%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100171 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95352%_
                                __tmp100170))))))
                    (if (eq? _%k95383%_ (macro-deleted-obj))
                        (_%loop95373%_
                         (let ((_%next-probe95390%_
                                (fx+ _%start95369%_
                                     _%i95378%_
                                     (fx* _%i95378%_ _%i95378%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95390%_ _%size95363%_))
                         (let () (declare (not safe)) (##fx+ _%i95378%_ '1))
                         (let ((_%$e95393%_ _%deleted95380%_))
                           (if _%$e95393%_ _%$e95393%_ _%probe95376%_)))
                        (if (eq? _%key95353%_ _%k95383%_)
                            (let ()
                              (vector-set!
                               _%table95357%_
                               _%probe95376%_
                               _%key95353%_)
                              (vector-set!
                               _%table95357%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95376%_ '1))
                               _%value95354%_))
                            (_%loop95373%_
                             (let ((_%next-probe95398%_
                                    (fx+ _%start95369%_
                                         _%i95378%_
                                         (fx* _%i95378%_ _%i95378%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95398%_ _%size95363%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95378%_ '1))
                             _%deleted95380%_))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab95347%_
               _%key95348%_
               _%class-specializer-table-update!95349%_
               _%default95350%_)
        (if (let ((__tmp100174
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab95347%_)))
                  (__tmp100172
                   (let ((__tmp100173
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab95347%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp100173 '4))))
              (declare (not safe))
              (##fx< __tmp100174 __tmp100172))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab95347%_))
            '#!void)
        (__class-specializer-table-update!
         _%tab95347%_
         _%key95348%_
         _%class-specializer-table-update!95349%_
         _%default95350%_)))
    (define __class-specializer-table-update!
      (lambda (_%tab95297%_
               _%key95298%_
               _%class-specializer-table-update!95299%_
               _%default95300%_)
        (let ((_%table95303%_
               (let () (declare (not safe)) (&raw-table-table _%tab95297%_)))
              (_%seed95304%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95297%_))))
          (let* ((_%h95306%_
                  (fxxor (__class-specializer-hash-key _%key95298%_)
                         _%seed95304%_))
                 (_%size95309%_ (vector-length _%table95303%_))
                 (_%entries95312%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95309%_ '2)))
                 (_%start95315%_
                  (let ((__tmp100175
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95306%_ _%entries95312%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100175 '1))))
            (let _%loop95319%_ ((_%probe95322%_ _%start95315%_)
                                (_%i95324%_ '1)
                                (_%deleted95326%_ '#f))
              (let ((_%k95329%_ (vector-ref _%table95303%_ _%probe95322%_)))
                (if (eq? _%k95329%_ (macro-unused-obj))
                    (if _%deleted95326%_
                        (begin
                          (vector-set!
                           _%table95303%_
                           _%deleted95326%_
                           _%key95298%_)
                          (vector-set!
                           _%table95303%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted95326%_ '1))
                           (_%class-specializer-table-update!95299%_
                            _%default95300%_))
                          ((lambda ()
                             (let ((__tmp100176
                                    (let ((__tmp100177
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95297%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100177 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95297%_
                                __tmp100176)))))
                        (begin
                          (vector-set!
                           _%table95303%_
                           _%probe95322%_
                           _%key95298%_)
                          (vector-set!
                           _%table95303%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe95322%_ '1))
                           (_%class-specializer-table-update!95299%_
                            _%default95300%_))
                          ((lambda ()
                             (let ((__tmp100178
                                    (let ((__tmp100179
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab95297%_))))
                                      (declare (not safe))
                                      (##fx- __tmp100179 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab95297%_ __tmp100178))
                             (let ((__tmp100180
                                    (let ((__tmp100181
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95297%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100181 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95297%_
                                __tmp100180))))))
                    (if (eq? _%k95329%_ (macro-deleted-obj))
                        (_%loop95319%_
                         (let ((_%next-probe95336%_
                                (fx+ _%start95315%_
                                     _%i95324%_
                                     (fx* _%i95324%_ _%i95324%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95336%_ _%size95309%_))
                         (let () (declare (not safe)) (##fx+ _%i95324%_ '1))
                         (let ((_%$e95339%_ _%deleted95326%_))
                           (if _%$e95339%_ _%$e95339%_ _%probe95322%_)))
                        (if (eq? _%key95298%_ _%k95329%_)
                            (let ()
                              (vector-set!
                               _%table95303%_
                               _%probe95322%_
                               _%key95298%_)
                              (vector-set!
                               _%table95303%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95322%_ '1))
                               (_%class-specializer-table-update!95299%_
                                (vector-ref
                                 _%table95303%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe95322%_ '1))))))
                            (_%loop95319%_
                             (let ((_%next-probe95344%_
                                    (fx+ _%start95315%_
                                         _%i95324%_
                                         (fx* _%i95324%_ _%i95324%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95344%_ _%size95309%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95324%_ '1))
                             _%deleted95326%_))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab95252%_ _%key95254%_)
        (let ((_%table95257%_
               (let () (declare (not safe)) (&raw-table-table _%tab95252%_)))
              (_%seed95259%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95252%_))))
          (let* ((_%h95262%_
                  (fxxor (__class-specializer-hash-key _%key95254%_)
                         _%seed95259%_))
                 (_%size95265%_ (vector-length _%table95257%_))
                 (_%entries95268%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95265%_ '2)))
                 (_%start95271%_
                  (let ((__tmp100182
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95262%_ _%entries95268%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100182 '1))))
            (let _%loop95275%_ ((_%probe95278%_ _%start95271%_)
                                (_%i95280%_ '1))
              (let ((_%k95283%_ (vector-ref _%table95257%_ _%probe95278%_)))
                (if (eq? _%k95283%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k95283%_ (macro-deleted-obj))
                        (_%loop95275%_
                         (let ((_%next-probe95288%_
                                (fx+ _%start95271%_
                                     _%i95280%_
                                     (fx* _%i95280%_ _%i95280%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95288%_ _%size95265%_))
                         (let () (declare (not safe)) (##fx+ _%i95280%_ '1)))
                        (if (eq? _%key95254%_ _%k95283%_)
                            (let ()
                              (vector-set!
                               _%table95257%_
                               _%probe95278%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table95257%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95278%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp100183
                                        (let ((__tmp100184
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab95252%_))))
                                          (declare (not safe))
                                          (##fx- __tmp100184 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab95252%_
                                    __tmp100183)))))
                            (_%loop95275%_
                             (let ((_%next-probe95294%_
                                    (fx+ _%start95271%_
                                         _%i95280%_
                                         (fx* _%i95280%_ _%i95280%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95294%_ _%size95265%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95280%_ '1))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers (make-class-specializer-table__% '#f '0))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass95238%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95238%_ 'class))
            (let ((_%klass95242%_ _%klass95238%_))
              (__specialize-class _%klass95242%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1020.25-1020.30"
               'contract:
               'class-type?
               'value:
               _%klass95238%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass95220%_)
        (let* ((_%klass95223%_ _%klass95220%_)
               (_%$e95232%_ (__lookup-class-specializer _%klass95223%_)))
          (if _%$e95232%_
              _%$e95232%_
              (let ((_%method-table95236%_
                     (___specialize-class _%klass95223%_)))
                (__bind-class-specializer!
                 _%klass95223%_
                 _%method-table95236%_)
                _%method-table95236%_)))))
    (define __lookup-class-specializer
      (lambda (_%klass95210%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again95214%_ ()
            (if (let ((__tmp100185
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp100185 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again95214%_)))))
        (let ((_%method-table95218%_
               (class-specializer-table-ref
                __class-specializers
                _%klass95210%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table95218%_)))
    (define __bind-class-specializer!
      (lambda (_%klass95201%_ _%method-table95202%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again95206%_ ()
            (if (let ((__tmp100186
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp100186 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again95206%_)))))
        (class-specializer-table-set!
         __class-specializers
         _%klass95201%_
         _%method-table95202%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass95185%_
               _%method-table95186%_
               _%method95187%_
               _%proc95188%_)
        (let ((_%$e95190%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table95186%_
                  _%method95187%_
                  '#f))))
          (if _%$e95190%_
              _%$e95190%_
              (let ((_%$e95193%_ (__lookup-method-specializer _%proc95188%_)))
                (if _%$e95193%_
                    ((lambda (_%specialize95196%_)
                       (let ((_%specialized-proc95198%_
                              (_%specialize95196%_
                               _%klass95185%_
                               _%method-table95186%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table95186%_
                          _%method95187%_
                          _%specialized-proc95198%_)))
                     _%$e95193%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table95186%_
                       _%method95187%_
                       _%proc95188%_))))))))
    (define ___specialize-class
      (lambda (_%klass95127%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95127%_ 'class))
            (if (__class-type-metaclass? _%klass95127%_)
                (let ((__method100032
                       (__method-ref _%klass95127%_ 'specialize-class)))
                  (if __method100032
                      (let ()
                        (declare (not safe))
                        (__method100032 _%klass95127%_))
                      (begin
                        (error '"Missing method"
                               _%klass95127%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp100187
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass95127%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp100187))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass95127%_)
                    (let ((_%method-table95133%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop95135%_ ((_%rest95137%_
                                           (__class-precedence-list
                                            _%klass95127%_)))
                        (let* ((_%rest9513895146%_ _%rest95137%_)
                               (_%else9514095154%_
                                (lambda () _%method-table95133%_))
                               (_%K9514295173%_
                                (lambda (_%rest95157%_ _%xklass95158%_)
                                  (let ((_%xmethod-table9515995161%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass95158%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table9515995161%_
                                        (let* ((_%xmethod-table95164%_
                                                _%xmethod-table9515995161%_)
                                               (__tmp100188
                                                (lambda (_%g9516595168%_
                                                         _%g9516695170%_)
                                                  (__specialize-method
                                                   _%klass95127%_
                                                   _%method-table95133%_
                                                   _%g9516595168%_
                                                   _%g9516695170%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table95164%_
                                           __tmp100188))
                                        '#f))
                                  (_%loop95135%_ _%rest95157%_))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9513895146%_))
                              (let ((_%hd9514395176%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9513895146%_)))
                                    (_%tl9514495178%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9513895146%_))))
                                (let* ((_%xklass95181%_ _%hd9514395176%_)
                                       (_%rest95183%_ _%tl9514495178%_))
                                  (_%K9514295173%_
                                   _%rest95183%_
                                   _%xklass95181%_)))
                              (_%else9514095154%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass95127%_))
                (__specialize-class (__shadow-class _%klass95127%_))
                (error '"bad class; cannot specialize" _%klass95127%_)))))
    (define seal-class!
      (lambda (_%klass95113%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95113%_ 'class))
            (let ((_%klass95117%_ _%klass95113%_))
              (__seal-class! _%klass95117%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1077.20-1077.25"
               'contract:
               'class-type?
               'value:
               _%klass95113%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass95096%_)
        (let ((_%klass95099%_ _%klass95096%_))
          (if (__class-type-sealed? _%klass95099%_)
              '#!void
              (begin
                (if (__class-type-final? _%klass95099%_)
                    '#!void
                    (error '"cannot seal non-final class" _%klass95099%_))
                (if (__class-type-metaclass? _%klass95099%_)
                    (let ((__method100033
                           (__method-ref _%klass95099%_ 'seal-class!)))
                      (if __method100033
                          (let ()
                            (declare (not safe))
                            (__method100033 _%klass95099%_))
                          (begin
                            (error '"Missing method"
                                   _%klass95099%_
                                   'seal-class!)
                            '#!void)))
                    (if (let ((__tmp100189
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass95099%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp100189))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass95099%_)
                        (let ((_%method-table95111%_
                               (__specialize-class _%klass95099%_)))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass95099%_
                           _%method-table95111%_
                           '11
                           '#f
                           '#f))))
                (__class-type-seal! _%klass95099%_))))))
    (define next-method
      (lambda (_%subklass95070%_ _%obj95071%_ _%id95072%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass95070%_ 'class))
            (let ((_%subklass95076%_ _%subklass95070%_))
              (if (symbol? _%id95072%_)
                  (let ((_%id95086%_ _%id95072%_))
                    (__next-method _%subklass95076%_ _%obj95071%_ _%id95086%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1101.44-1101.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id95072%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1101.20-1101.28"
               'contract:
               'class-type?
               'value:
               _%subklass95070%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass95007%_ _%obj95008%_ _%id95009%_)
        (let* ((_%subklass95012%_ _%subklass95007%_) (_%id95020%_ _%id95009%_))
          (letrec ((_%find-next-method95029%_
                    (lambda (_%klass95031%_)
                      (let _%lp95033%_ ((_%rest95035%_
                                         (class-precedence-list
                                          _%klass95031%_)))
                        (let* ((_%rest9503695044%_ _%rest95035%_)
                               (_%else9503895052%_ (lambda () '#f))
                               (_%K9504095058%_
                                (lambda (_%rest95055%_ _%klass95056%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass95012%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass95056%_)))
                                      (__mixin-find-method
                                       _%rest95055%_
                                       _%obj95008%_
                                       _%id95020%_)
                                      (_%lp95033%_ _%rest95055%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9503695044%_))
                              (let ((_%hd9504195061%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9503695044%_)))
                                    (_%tl9504295063%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9503695044%_))))
                                (let* ((_%klass95066%_ _%hd9504195061%_)
                                       (_%rest95068%_ _%tl9504295063%_))
                                  (_%K9504095058%_
                                   _%rest95068%_
                                   _%klass95066%_)))
                              (_%else9503895052%_)))))))
            (_%find-next-method95029%_ (class-of _%obj95008%_))))))
    (define call-next-method
      (lambda (_%subklass94980%_ _%obj94981%_ _%id94982%_ . _%args94983%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass94980%_ 'class))
            (let ((_%subklass94987%_ _%subklass94980%_))
              (if (symbol? _%id94982%_)
                  (let ((_%id94997%_ _%id94982%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass94987%_
                             _%obj94981%_
                             _%id94997%_
                             _%args94983%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1112.49-1112.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id94982%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1112.25-1112.33"
               'contract:
               'class-type?
               'value:
               _%subklass94980%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass94951%_ _%obj94952%_ _%id94953%_ . _%args94954%_)
        (let* ((_%subklass94957%_ _%subklass94951%_)
               (_%id94965%_ _%id94953%_)
               (_%$e94974%_
                (__next-method _%subklass94957%_ _%obj94952%_ _%id94965%_)))
          (if _%$e94974%_
              ((lambda (_%methodf94977%_)
                 (apply _%methodf94977%_ _%obj94952%_ _%args94954%_))
               _%$e94974%_)
              (error '"cannot find next method"
                     'object:
                     _%obj94952%_
                     'method:
                     _%id94965%_)))))
    (define write-style
      (lambda (_%we94949%_) (macro-writeenv-style _%we94949%_)))
    (define write-object
      (lambda (_%we94940%_ _%obj94941%_)
        (let ((_%$e94943%_ (__method-ref _%obj94941%_ ':wr)))
          (if _%$e94943%_
              ((lambda (_%method94946%_)
                 (_%method94946%_ _%obj94941%_ _%we94940%_))
               _%$e94943%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we94940%_ _%obj94941%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type94855%_)
        (letrec ((_%shadow-type-id94857%_
                  (lambda (_%type94938%_)
                    (let ((__tmp100190
                           (let ()
                             (declare (not safe))
                             (##type-name _%type94938%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp100190 '"::t"))))
                 (_%shadow-type-name94858%_
                  (lambda (_%type94936%_)
                    (let () (declare (not safe)) (##type-name _%type94936%_))))
                 (_%make-shadow-class94859%_
                  (lambda (_%type94928%_ _%precedence-list94929%_)
                    (let* ((_%super94931%_
                            (if (pair? _%precedence-list94929%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list94929%_))
                                      '())
                                '()))
                           (_%klass94933%_
                            (make-class-type
                             (_%shadow-type-id94857%_ _%type94928%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type94928%_))
                             _%super94931%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (if (__type-extensible? _%type94928%_)
                                             '()
                                             (cons (cons 'final: '#t) '()))))
                             '#f)))
                      (let ((__tmp100191
                             (let ()
                               (declare (not safe))
                               (##type-id _%type94928%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp100191
                         _%klass94933%_))
                      _%klass94933%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again94863%_ ()
              (if (let ((__tmp100192
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp100192 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (_%again94863%_)))))
          (let ((_%$e94867%_
                 (let ((__tmp100193
                        (let ()
                          (declare (not safe))
                          (##type-id _%type94855%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp100193 '#f))))
            (if _%$e94867%_
                ((lambda (_%klass94870%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass94870%_)
                 _%$e94867%_)
                (let _%loop94873%_ ((_%super94875%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-super _%type94855%_)))
                                    (_%hierarchy94876%_ '()))
                  (if (not _%super94875%_)
                      (let _%loop94879%_ ((_%rest94881%_ _%hierarchy94876%_)
                                          (_%precedence-list94882%_ '()))
                        (let* ((_%rest9488394891%_ _%rest94881%_)
                               (_%else9488594901%_
                                (lambda ()
                                  (let ((_%klass94899%_
                                         (_%make-shadow-class94859%_
                                          _%type94855%_
                                          _%precedence-list94882%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass94899%_)))
                               (_%K9488794915%_
                                (lambda (_%rest94904%_ _%type94905%_)
                                  (let ((_%$e94907%_
                                         (let ((__tmp100194
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type94905%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp100194
                                            '#f))))
                                    (if _%$e94907%_
                                        ((lambda (_%klass94910%_)
                                           (_%loop94879%_
                                            _%rest94904%_
                                            (cons _%klass94910%_
                                                  _%precedence-list94882%_)))
                                         _%$e94907%_)
                                        (let ((_%klass94913%_
                                               (_%make-shadow-class94859%_
                                                _%type94905%_
                                                _%precedence-list94882%_)))
                                          (_%loop94879%_
                                           _%rest94904%_
                                           (cons _%klass94913%_
                                                 _%precedence-list94882%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9488394891%_))
                              (let ((_%hd9488894918%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9488394891%_)))
                                    (_%tl9488994920%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9488394891%_))))
                                (let* ((_%type94923%_ _%hd9488894918%_)
                                       (_%rest94925%_ _%tl9488994920%_))
                                  (_%K9488794915%_
                                   _%rest94925%_
                                   _%type94923%_)))
                              (_%else9488594901%_))))
                      (_%loop94873%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super94875%_))
                       (cons _%super94875%_ _%hierarchy94876%_)))))))))
    (define class-of
      (lambda (_%obj94828%_)
        (let ()
          (declare (not interrupts-enabled))
          (let ((_%t94832%_
                 (let () (declare (not safe)) (##type _%obj94828%_))))
            (if (fx= _%t94832%_ (macro-type-subtyped))
                (let ((_%st94835%_
                       (let () (declare (not safe)) (##subtype _%obj94828%_))))
                  (if (fx= _%st94835%_ (macro-subtype-structure))
                      (let ((_%klass94838%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj94828%_))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of? _%klass94838%_ 'class))
                            _%klass94838%_
                            (__shadow-class _%klass94838%_)))
                      (if (fx= _%st94835%_ (macro-subtype-boxvalues))
                          (if (let ((__tmp100195
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _%obj94828%_))))
                                (declare (not safe))
                                (##fx= __tmp100195 '1))
                              (__system-class 'box)
                              (__system-class 'values))
                          (let ((_%$e94841%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref __subtype-id _%st94835%_))))
                            (if _%$e94841%_
                                (__system-class _%$e94841%_)
                                (error '"unknown class"
                                       'subtype:
                                       _%st94835%_
                                       'object:
                                       _%obj94828%_))))))
                (if (fx= _%t94832%_ (macro-type-mem2))
                    (__system-class 'pair)
                    (if (fx= _%t94832%_ (macro-type-fixnum))
                        (__system-class 'fixnum)
                        (if (char? _%obj94828%_)
                            (__system-class 'char)
                            (if (eq? _%obj94828%_ '())
                                (__system-class 'null)
                                (if (eq? _%obj94828%_ '#f)
                                    (__system-class 'boolean)
                                    (if (eq? _%obj94828%_ '#t)
                                        (__system-class 'boolean)
                                        (if (eq? _%obj94828%_ '#!void)
                                            (__system-class 'void)
                                            (if (eq? _%obj94828%_ '#!eof)
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
      (lambda (_%id94822%_)
        (let ((_%$e94824%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id94822%_ '#f))))
          (if _%$e94824%_
              _%$e94824%_
              (error '"unknown system class" _%id94822%_)))))
    (define __make-system-class
      (lambda (_%id94817%_ _%super94818%_)
        (let ((_%klass94820%_
               (make-class-type
                _%id94817%_
                _%id94817%_
                _%super94818%_
                '()
                '((system: . #t))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id94817%_ _%klass94820%_))
          _%klass94820%_)))))
