(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1712697254)
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
      (let ((_%flags96338%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties96339%_ '((direct-slots:) (system: . #t)))
            (_%slot-table96340%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags96338%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table96340%_
           _%properties96339%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots96314%_
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
             (_%slot-vector96316%_ (list->vector (cons '#f _%slots96314%_)))
             (_%slot-table96323%_
              (let ((_%slot-table96318%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp97786
                       (lambda (_%slot96320%_ _%field96321%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table96318%_
                            _%slot96320%_
                            _%field96321%_))
                         (let ((__tmp97787
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot96320%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table96318%_
                            __tmp97787
                            _%field96321%_))))
                      (__tmp97784
                       (let ((__tmp97785
                              (let ()
                                (declare (not safe))
                                (##length _%slots96314%_))))
                         (declare (not safe))
                         (##iota __tmp97785 '1))))
                  (declare (not safe))
                  (##for-each __tmp97786 _%slots96314%_ __tmp97784))
                _%slot-table96318%_))
             (_%flags96325%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields96331%_
              (list->vector
               (let ((__tmp97788
                      (map (lambda (_%g9632696328%_)
                             (list _%g9632696328%_ '5 '#f))
                           (drop _%slots96314%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp97788))))
             (_%properties96333%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots96314%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t96335%_
              (let ((__tmp97789 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags96325%_
                 ##type-type
                 _%fields96331%_
                 __tmp97789
                 _%slot-vector96316%_
                 _%slot-table96323%_
                 _%properties96333%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t96335%_ _%t96335%_))
        _%t96335%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags96310%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties96311%_ '((direct-slots:) (system: . #t)))
            (_%slot-table96312%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp97790 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags96310%_
           '#f
           '#()
           __tmp97790
           '#(#f)
           _%slot-table96312%_
           _%properties96311%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj96308%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj96308%_ 'class))))
    (define class-type=?
      (lambda (_%x96283%_ _%y96284%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x96283%_ 'class))
            (let ((_%x96288%_ _%x96283%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y96284%_ 'class))
                  (let ((_%y96298%_ _%y96284%_))
                    (__class-type=? _%x96288%_ _%y96298%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y96284%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x96283%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x96262%_ _%y96263%_)
        (let* ((_%x96266%_ _%x96262%_) (_%y96274%_ _%y96263%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x96266%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y96274%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type96248%_)
        (if (let () (declare (not safe)) (##type? _%type96248%_))
            (let ((_%type96252%_ _%type96248%_))
              (__type-opaque? _%type96252%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type96248%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type96236%_)
        (let* ((_%type96239%_ _%type96236%_)
               (__tmp97791
                (let ((__tmp97792
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type96239%_))))
                  (declare (not safe))
                  (##fxand __tmp97792 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp97791 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type96222%_)
        (if (let () (declare (not safe)) (##type? _%type96222%_))
            (let ((_%type96226%_ _%type96222%_))
              (__type-extensible? _%type96226%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type96222%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type96210%_)
        (let* ((_%type96213%_ _%type96210%_)
               (__tmp97793
                (let ((__tmp97794
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type96213%_))))
                  (declare (not safe))
                  (##fxand __tmp97794 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp97793 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type96196%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type96196%_ 'class))
            (let ((_%type96200%_ _%type96196%_))
              (__class-type-final? _%type96200%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type96196%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type96184%_)
        (let* ((_%type96187%_ _%type96184%_)
               (__tmp97795
                (let ((__tmp97796
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type96187%_))))
                  (declare (not safe))
                  (##fxand __tmp97796 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp97795 '0))))
    (define class-type-struct?
      (lambda (_%klass96170%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96170%_ 'class))
            (let ((_%klass96174%_ _%klass96170%_))
              (__class-type-struct? _%klass96174%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass96170%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass96158%_)
        (let* ((_%klass96161%_ _%klass96158%_)
               (__tmp97797
                (let ((__tmp97798
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass96161%_))))
                  (declare (not safe))
                  (##fxand __tmp97798 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp97797 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass96144%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96144%_ 'class))
            (let ((_%klass96148%_ _%klass96144%_))
              (__class-type-sealed? _%klass96148%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass96144%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass96132%_)
        (let* ((_%klass96135%_ _%klass96132%_)
               (__tmp97799
                (let ((__tmp97800
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass96135%_))))
                  (declare (not safe))
                  (##fxand __tmp97800 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp97799 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass96118%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96118%_ 'class))
            (let ((_%klass96122%_ _%klass96118%_))
              (__class-type-metaclass? _%klass96122%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass96118%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass96106%_)
        (let* ((_%klass96109%_ _%klass96106%_)
               (__tmp97801
                (let ((__tmp97802
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass96109%_))))
                  (declare (not safe))
                  (##fxand __tmp97802 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp97801 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass96092%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96092%_ 'class))
            (let ((_%klass96096%_ _%klass96092%_))
              (__class-type-system? _%klass96096%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass96092%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass96080%_)
        (let* ((_%klass96083%_ _%klass96080%_)
               (__tmp97803
                (let ((__tmp97804
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass96083%_))))
                  (declare (not safe))
                  (##fxand __tmp97804 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp97803 class-type-flag-system))))
    (define make-class-type-descriptor
      (lambda (_%type-id95965%_
               _%type-name95966%_
               _%type-super95967%_
               _%precedence-list95968%_
               _%slot-vector95969%_
               _%properties95970%_
               _%constructor95971%_
               _%slot-table95972%_
               _%methods95973%_)
        (letrec ((_%make-props!95976%_
                  (lambda (_%key96049%_)
                    (letrec* ((_%ht96051%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!96052%_
                               (lambda (_%ht96073%_ _%slots96074%_)
                                 (for-each
                                  (lambda (_%g9607596077%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht96073%_
                                       _%g9607596077%_
                                       '#t)))
                                  _%slots96074%_)))
                              (_%put-alist!96053%_
                               (lambda (_%ht96062%_
                                        _%key96063%_
                                        _%alist96064%_)
                                 (let ((_%$e96066%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key96063%_
                                           _%alist96064%_))))
                                   (if _%$e96066%_
                                       ((lambda (_%g9606896070%_)
                                          (_%put-slots!96052%_
                                           _%ht96062%_
                                           _%g9606896070%_))
                                        _%$e96066%_)
                                       '#!void)))))
                      (_%put-alist!96053%_
                       _%ht96051%_
                       _%key96049%_
                       _%properties95970%_)
                      (for-each
                       (lambda (_%mixin96055%_)
                         (let ((_%alist96057%_
                                (##structure-ref
                                 _%mixin96055%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist96057%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key96049%_
                                           _%alist96057%_))))
                               (_%put-slots!96052%_
                                _%ht96051%_
                                (class-type-slot-list _%mixin96055%_))
                               (_%put-alist!96053%_
                                _%ht96051%_
                                _%key96049%_
                                _%alist96057%_))))
                       _%precedence-list95968%_)
                      _%ht96051%_))))
          (let* ((_%transparent?95978%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties95970%_)))
                 (_%all-slots-printable?95983%_
                  (let ((_%$e95980%_ _%transparent?95978%_))
                    (if _%$e95980%_
                        _%$e95980%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties95970%_))))))
                 (_%printable95985%_
                  (if (not _%all-slots-printable?95983%_)
                      (_%make-props!95976%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?95990%_
                  (let ((_%$e95987%_ _%transparent?95978%_))
                    (if _%$e95987%_
                        _%$e95987%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties95970%_))))))
                 (_%equalable95992%_
                  (if (not _%all-slots-equalable?95990%_)
                      (_%make-props!95976%_ 'equal:)
                      '#f))
                 (_%first-new-field95994%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super95967%_ 'class))
                      (let ((__tmp97805
                             (##structure-ref
                              _%type-super95967%_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp97805))
                      '1))
                 (_%field-info-length95996%_
                  (let ((__tmp97806
                         (let ((__tmp97807
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector95969%_))))
                           (declare (not safe))
                           (##fx- __tmp97807 _%first-new-field95994%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp97806)))
                 (_%field-info95998%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length95996%_ '#f)))
                 (_%struct?96000%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties95970%_)))
                 (_%final?96002%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties95970%_)))
                 (_%metaclass96010%_
                  (let ((_%metaclass9600396005%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties95970%_))))
                    (if _%metaclass9600396005%_
                        (let ((_%metaclass96008%_ _%metaclass9600396005%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass96008%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id95965%_
                                     'metaclass:
                                     _%metaclass96008%_))
                          _%metaclass96008%_)
                        '#f)))
                 (_%system?96012%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties95970%_)))
                 (_%opaque?96017%_
                  (let ((_%$e96014%_ (not _%all-slots-equalable?95990%_)))
                    (if _%$e96014%_
                        _%$e96014%_
                        (if _%type-super95967%_
                            (__type-opaque? _%type-super95967%_)
                            '#f))))
                 (_%type-flags96019%_
                  (let ((__tmp97812
                         (if _%final?96002%_ '0 type-flag-extensible))
                        (__tmp97811 (if _%opaque?96017%_ type-flag-opaque '0))
                        (__tmp97810
                         (if _%struct?96000%_ class-type-flag-struct '0))
                        (__tmp97809
                         (if _%metaclass96010%_ class-type-flag-metaclass '0))
                        (__tmp97808
                         (if _%system?96012%_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp97812
                             __tmp97811
                             __tmp97810
                             __tmp97809
                             __tmp97808)))
                 (_%precedence-list96027%_
                  (let ((_%$e96021%_ (memq t::t _%precedence-list95968%_)))
                    (if _%$e96021%_
                        ((lambda (_%tail96024%_)
                           (if (null? (cdr _%tail96024%_))
                               _%precedence-list95968%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list95968%_)))
                         _%$e96021%_)
                        (let ((__tmp97813 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list95968%_ __tmp97813))))))
            (let _%loop96030%_ ((_%i96032%_ _%first-new-field95994%_)
                                (_%j96033%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j96033%_ _%field-info-length95996%_))
                  (let* ((_%slot96035%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector95969%_ _%i96032%_)))
                         (_%flags96043%_
                          (if _%transparent?95978%_
                              '0
                              (let ((__tmp97815
                                     (if (or _%all-slots-printable?95983%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable95985%_
                                                _%slot96035%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp97814
                                     (if (or _%all-slots-equalable?95990%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable95992%_
                                                _%slot96035%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp97815 __tmp97814)))))
                    (vector-set! _%field-info95998%_ _%j96033%_ _%slot96035%_)
                    (vector-set!
                     _%field-info95998%_
                     (let () (declare (not safe)) (##fx+ _%j96033%_ '1))
                     _%flags96043%_)
                    (_%loop96030%_
                     (let () (declare (not safe)) (##fx+ _%i96032%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j96033%_ '3))))
                  '#!void))
            (if _%metaclass96010%_
                (let ((_%val96046%_
                       (make-instance
                        _%metaclass96010%_
                        _%type-id95965%_
                        _%type-name95966%_
                        _%type-flags96019%_
                        _%type-super95967%_
                        _%field-info95998%_
                        _%precedence-list96027%_
                        _%slot-vector95969%_
                        _%slot-table95972%_
                        _%properties95970%_
                        _%constructor95971%_
                        _%methods95973%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val96046%_ 'class))
                      _%val96046%_
                      (error '"bad cast" class::t _%val96046%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id95965%_
                   _%type-name95966%_
                   _%type-flags96019%_
                   _%type-super95967%_
                   _%field-info95998%_
                   _%precedence-list96027%_
                   _%slot-vector95969%_
                   _%slot-table95972%_
                   _%properties95970%_
                   _%constructor95971%_
                   _%methods95973%_)))))))
    (define class-type-id
      (lambda (_%klass95963%_)
        (##structure-ref _%klass95963%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass95961%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95961%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass95958%_ _%val95959%_)
        (##structure-set! _%klass95958%_ _%val95959%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass95953%_ _%val95955%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95953%_
           _%val95955%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass95951%_)
        (##structure-ref _%klass95951%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass95949%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95949%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass95946%_ _%val95947%_)
        (##structure-set! _%klass95946%_ _%val95947%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass95941%_ _%val95943%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95941%_
           _%val95943%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass95939%_)
        (##structure-ref _%klass95939%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass95937%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95937%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass95934%_ _%val95935%_)
        (##structure-set! _%klass95934%_ _%val95935%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass95929%_ _%val95931%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95929%_
           _%val95931%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass95927%_)
        (##structure-ref _%klass95927%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass95925%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95925%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass95922%_ _%val95923%_)
        (##structure-set! _%klass95922%_ _%val95923%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass95917%_ _%val95919%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95917%_
           _%val95919%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass95915%_)
        (##structure-ref _%klass95915%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass95913%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95913%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass95910%_ _%val95911%_)
        (##structure-set! _%klass95910%_ _%val95911%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass95905%_ _%val95907%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95905%_
           _%val95907%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass95903%_)
        (##structure-ref _%klass95903%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass95901%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass95901%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass95898%_ _%val95899%_)
        (##structure-set!
         _%klass95898%_
         _%val95899%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass95893%_ _%val95895%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95893%_
           _%val95895%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass95891%_)
        (##structure-ref _%klass95891%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass95889%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass95889%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass95886%_ _%val95887%_)
        (##structure-set!
         _%klass95886%_
         _%val95887%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass95881%_ _%val95883%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95881%_
           _%val95883%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass95879%_)
        (##structure-ref _%klass95879%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass95877%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95877%_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass95874%_ _%val95875%_)
        (##structure-set!
         _%klass95874%_
         _%val95875%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass95869%_ _%val95871%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95869%_
           _%val95871%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass95867%_)
        (##structure-ref _%klass95867%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass95865%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95865%_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_%klass95862%_ _%val95863%_)
        (##structure-set!
         _%klass95862%_
         _%val95863%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass95857%_ _%val95859%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95857%_
           _%val95859%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass95855%_)
        (##structure-ref _%klass95855%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass95853%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass95853%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass95850%_ _%val95851%_)
        (##structure-set!
         _%klass95850%_
         _%val95851%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass95845%_ _%val95847%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95845%_
           _%val95847%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass95843%_)
        (##structure-ref _%klass95843%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass95841%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass95841%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass95838%_ _%val95839%_)
        (##structure-set! _%klass95838%_ _%val95839%_ '11 class::t 'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass95833%_ _%val95835%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass95833%_
           _%val95835%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass95819%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95819%_ 'class))
            (let ((_%klass95823%_ _%klass95819%_))
              (__class-type-slot-list _%klass95823%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass95819%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass95807%_)
        (let ((_%klass95810%_ _%klass95807%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass95810%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass95793%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95793%_ 'class))
            (let ((_%klass95797%_ _%klass95793%_))
              (__class-type-field-count _%klass95797%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass95793%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass95781%_)
        (let* ((_%klass95784%_ _%klass95781%_)
               (__tmp97816
                (let ((__tmp97817
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass95784%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp97817))))
          (declare (not safe))
          (##fx- __tmp97816 '1))))
    (define class-type-seal!
      (lambda (_%klass95767%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95767%_ 'class))
            (let ((_%klass95771%_ _%klass95767%_))
              (__class-type-seal! _%klass95771%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass95767%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass95755%_)
        (let ((_%klass95758%_ _%klass95755%_))
          (let ((__tmp97818
                 (let ((__tmp97819
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass95758%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp97819))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass95758%_
             __tmp97818
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct95730%_ _%maybe-super-struct95731%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct95730%_ 'class))
            (let ((_%maybe-sub-struct95735%_ _%maybe-sub-struct95730%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct95731%_
                     'class))
                  (let ((_%maybe-super-struct95745%_
                         _%maybe-super-struct95731%_))
                    (__substruct?
                     _%maybe-sub-struct95735%_
                     _%maybe-super-struct95745%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct95731%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct95730%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct95699%_ _%maybe-super-struct95700%_)
        (let* ((_%maybe-sub-struct95703%_ _%maybe-sub-struct95699%_)
               (_%maybe-super-struct95711%_ _%maybe-super-struct95700%_)
               (_%maybe-super-struct-id95720%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct95711%_))))
          (let _%lp95722%_ ((_%super-struct95724%_ _%maybe-sub-struct95703%_))
            (if (not _%super-struct95724%_)
                '#f
                (if (eq? _%maybe-super-struct-id95720%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct95724%_)))
                    '#t
                    (_%lp95722%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct95724%_)))))))))
    (define base-struct/1
      (lambda (_%klass95694%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95694%_ 'class))
            (if (class-type-struct? _%klass95694%_)
                _%klass95694%_
                (let () (declare (not safe)) (##type-super _%klass95694%_)))
            (if (not _%klass95694%_)
                '#f
                (error '"not a class or false" _%klass95694%_)))))
    (define base-struct/2
      (lambda (_%klass195679%_ _%klass295680%_)
        (let ((_%s195682%_ (base-struct/1 _%klass195679%_))
              (_%s295683%_ (base-struct/1 _%klass295680%_)))
          (if (or (not _%s195682%_)
                  (and _%s295683%_ (substruct? _%s195682%_ _%s295683%_)))
              _%s295683%_
              (if (or (not _%s295683%_)
                      (and _%s195682%_ (substruct? _%s295683%_ _%s195682%_)))
                  _%s195682%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass195679%_
                         _%klass295680%_
                         _%s195682%_
                         _%s295683%_))))))
    (define base-struct/list
      (lambda (_%all-supers95563%_)
        (let* ((_%all-supers9556495589%_ _%all-supers95563%_)
               (_%E9556995593%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers9556495589%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K9558795676%_ (lambda () '#f))
                (_%K9558495662%_
                 (lambda (_%x95660%_) (base-struct/1 _%x95660%_)))
                (_%K9557995639%_
                 (lambda (_%y95636%_ _%x95637%_)
                   (base-struct/2 _%x95637%_ _%y95636%_)))
                (_%K9557095600%_
                 (lambda (_%y95597%_ _%x95598%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x95598%_ _%y95597%_)))))
            (let* ((_%__match9777897779%_
                    (lambda (_%hd9557195603%_ _%tl9557295605%_)
                      (let ((_%x95608%_ _%hd9557195603%_))
                        (letrec ((_%splice-rest9557495610%_
                                  (lambda (_%rest9557895617%_ _%y95619%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%rest9557895617%_))
                                        (_%K9557095600%_ _%y95619%_ _%x95608%_)
                                        (_%E9556995593%_))))
                                 (_%splice-try9557695612%_
                                  (lambda (_%hd9557795621%_
                                           _%rest9557895623%_
                                           _%y9557395624%_)
                                    (let ((_%y95627%_ _%hd9557795621%_))
                                      (_%splice-loop9557595614%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest9557895623%_))
                                       (cons _%y95627%_ _%y9557395624%_)))))
                                 (_%splice-loop9557595614%_
                                  (lambda (_%rest9557895629%_ _%y9557395630%_)
                                    (if (pair? _%rest9557895629%_)
                                        (_%splice-try9557695612%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest9557895629%_))
                                         _%rest9557895629%_
                                         _%y9557395630%_)
                                        (_%splice-rest9557495610%_
                                         _%rest9557895629%_
                                         (reverse _%y9557395630%_))))))
                          (_%splice-loop9557595614%_ _%tl9557295605%_ '())))))
                   (_%try-match9556695672%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all-supers9556495589%_))
                          (let ((_%tl9558695667%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers9556495589%_)))
                                (_%hd9558595665%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers9556495589%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl9558695667%_))
                                (let ((_%x95670%_ _%hd9558595665%_))
                                  (base-struct/1 _%x95670%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl9558695667%_))
                                    (let ((_%tl9558395651%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl9558695667%_)))
                                          (_%hd9558295649%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl9558695667%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl9558395651%_))
                                          (let ((_%x95647%_ _%hd9558595665%_)
                                                (_%y95654%_ _%hd9558295649%_))
                                            (_%K9557995639%_
                                             _%y95654%_
                                             _%x95647%_))
                                          (_%__match9777897779%_
                                           _%hd9558595665%_
                                           _%tl9558695667%_)))
                                    (_%__match9777897779%_
                                     _%hd9558595665%_
                                     _%tl9558695667%_))))
                          (_%E9556995593%_)))))
              (if (let ()
                    (declare (not safe))
                    (##null? _%all-supers9556495589%_))
                  (_%K9558795676%_)
                  (_%try-match9556695672%_)))))))
    (define base-struct
      (lambda _%all-supers95561%_ (base-struct/list _%all-supers95561%_)))
    (define find-super-constructor
      (lambda (_%super95512%_)
        (let _%lp95514%_ ((_%rest95516%_ _%super95512%_)
                          (_%constructor95517%_ '#f))
          (let* ((_%rest9551895526%_ _%rest95516%_)
                 (_%else9552095534%_ (lambda () _%constructor95517%_))
                 (_%K9552295549%_
                  (lambda (_%rest95537%_ _%hd95538%_)
                    (let ((_%$e95540%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd95538%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e95540%_
                          ((lambda (_%xconstructor95543%_)
                             (if (or (not _%constructor95517%_)
                                     (eq? _%constructor95517%_
                                          _%xconstructor95543%_))
                                 (_%lp95514%_
                                  _%rest95537%_
                                  _%xconstructor95543%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor95517%_
                                        _%xconstructor95543%_)))
                           _%$e95540%_)
                          (_%lp95514%_ _%rest95537%_ _%constructor95517%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest9551895526%_))
                (let ((_%hd9552395552%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9551895526%_)))
                      (_%tl9552495554%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9551895526%_))))
                  (let* ((_%hd95557%_ _%hd9552395552%_)
                         (_%rest95559%_ _%tl9552495554%_))
                    (_%K9552295549%_ _%rest95559%_ _%hd95557%_)))
                (_%else9552095534%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list95488%_ _%direct-slots95489%_)
        (let* ((_%next-slot95491%_ '1)
               (_%slot-table95493%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots95495%_ '(__class))
               (_%process-slot95499%_
                (lambda (_%slot95497%_)
                  (if (symbol? _%slot95497%_)
                      '#!void
                      (error '"invalid slot name" _%slot95497%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table95493%_
                              _%slot95497%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table95493%_
                           _%slot95497%_
                           _%next-slot95491%_))
                        (let ((__tmp97820
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot95497%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table95493%_
                           __tmp97820
                           _%next-slot95491%_))
                        (set! _%r-slots95495%_
                              (cons _%slot95497%_ _%r-slots95495%_))
                        (set! _%next-slot95491%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot95491%_ '1))))
                      '#!void)))
               (_%process-slots95505%_
                (lambda (_%g9550095502%_)
                  (for-each _%process-slot95499%_ _%g9550095502%_))))
          (let ((__tmp97822
                 (lambda (_%mixin95508%_)
                   (_%process-slots95505%_
                    (let ((__tmp97823
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin95508%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp97823 '())))))
                (__tmp97821 (reverse _%class-precedence-list95488%_)))
            (declare (not safe))
            (##for-each __tmp97822 __tmp97821))
          (_%process-slots95505%_ _%direct-slots95489%_)
          (let ((_%slot-vector95510%_
                 (list->vector
                  (let () (declare (not safe)) (##reverse _%r-slots95495%_)))))
            (values _%slot-vector95510%_ _%slot-table95493%_)))))
    (define make-class-type
      (lambda (_%id95413%_
               _%name95414%_
               _%direct-supers95415%_
               _%direct-slots95416%_
               _%properties95417%_
               _%constructor95418%_)
        (if (symbol? _%id95413%_)
            (let ((_%id95422%_ _%id95413%_))
              (if (symbol? _%name95414%_)
                  (let ((_%name95432%_ _%name95414%_))
                    (if (list? _%direct-supers95415%_)
                        (let ((_%direct-supers95442%_ _%direct-supers95415%_))
                          (if (list? _%direct-slots95416%_)
                              (let ((_%direct-slots95452%_
                                     _%direct-slots95416%_))
                                (if (list? _%properties95417%_)
                                    (let ((_%properties95462%_
                                           _%properties95417%_))
                                      (if ((lambda (_%$obj95471%_)
                                             (or (not _%$obj95471%_)
                                                 (symbol? _%$obj95471%_)))
                                           _%constructor95418%_)
                                          (let ((_%constructor95478%_
                                                 _%constructor95418%_))
                                            (__make-class-type
                                             _%id95422%_
                                             _%name95432%_
                                             _%direct-supers95442%_
                                             _%direct-slots95452%_
                                             _%properties95462%_
                                             _%constructor95478%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor95418%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties95417%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots95416%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers95415%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name95414%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id95413%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id95282%_
               _%name95283%_
               _%direct-supers95284%_
               _%direct-slots95285%_
               _%properties95286%_
               _%constructor95287%_)
        (let* ((_%id95290%_ _%id95282%_)
               (_%name95298%_ _%name95283%_)
               (_%direct-supers95306%_ _%direct-supers95284%_)
               (_%direct-slots95314%_ _%direct-slots95285%_)
               (_%properties95322%_ _%properties95286%_)
               (_%constructor95330%_ _%constructor95287%_))
          (let ((_%$e95342%_
                 (let ((__tmp97824
                        (lambda (_%$obj95339%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj95339%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp97824 _%direct-supers95306%_))))
            (if _%$e95342%_
                ((lambda (_%g9534495346%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g9534495346%_))
                 _%$e95342%_)
                (let ((_%$e95349%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final? _%direct-supers95306%_))))
                  (if _%$e95349%_
                      ((lambda (_%g9535195353%_)
                         (error '"Cannot extend final class" _%g9535195353%_))
                       _%$e95349%_)
                      '#!void))))
          (let ((_g97825_ (compute-precedence-list _%direct-supers95306%_)))
            (begin
              (let ((_g97826_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g97825_)
                           (##vector-length _g97825_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g97826_ 2)))
                    (error "Context expects 2 values" _g97826_)))
              (let ((_%precedence-list95356%_
                     (let () (declare (not safe)) (##vector-ref _g97825_ 0)))
                    (_%struct-super95357%_
                     (let () (declare (not safe)) (##vector-ref _g97825_ 1))))
                (let ((_g97827_
                       (compute-class-slots
                        _%precedence-list95356%_
                        _%direct-slots95314%_)))
                  (begin
                    (let ((_g97828_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g97827_)
                                 (##vector-length _g97827_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g97828_ 2)))
                          (error "Context expects 2 values" _g97828_)))
                    (let ((_%slot-vector95359%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g97827_ 0)))
                          (_%slot-table95360%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g97827_ 1))))
                      (let* ((_%properties95362%_
                              (cons (cons 'direct-slots: _%direct-slots95314%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers95306%_)
                                          _%properties95322%_)))
                             (_%constructor*95367%_
                              (let ((_%$e95364%_ _%constructor95330%_))
                                (if _%$e95364%_
                                    _%$e95364%_
                                    (find-super-constructor
                                     _%direct-supers95306%_))))
                             (_%precedence-list95410%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties95362%_))
                                      (memq object::t
                                            _%precedence-list95356%_))
                                  _%precedence-list95356%_
                                  (let _%loop95372%_ ((_%tail95374%_
                                                       _%precedence-list95356%_)
                                                      (_%head95375%_ '()))
                                    (let* ((_%tail9537695384%_ _%tail95374%_)
                                           (_%else9537895392%_
                                            (lambda ()
                                              (let ((__tmp97829
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp97829
                                                 _%head95375%_))))
                                           (_%K9538095398%_
                                            (lambda (_%rest95395%_ _%hd95396%_)
                                              (if (eq? _%hd95396%_ t::t)
                                                  (let ((__tmp97830
                                                         (cons object::t
                                                               _%tail95374%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp97830
                                                     _%head95375%_))
                                                  (_%loop95372%_
                                                   _%rest95395%_
                                                   (cons _%hd95396%_
                                                         _%head95375%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tail9537695384%_))
                                          (let ((_%hd9538195401%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail9537695384%_)))
                                                (_%tl9538295403%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail9537695384%_))))
                                            (let* ((_%hd95406%_
                                                    _%hd9538195401%_)
                                                   (_%rest95408%_
                                                    _%tl9538295403%_))
                                              (_%K9538095398%_
                                               _%rest95408%_
                                               _%hd95406%_)))
                                          (_%else9537895392%_)))))))
                        (make-class-type-descriptor
                         _%id95290%_
                         _%name95298%_
                         _%struct-super95357%_
                         _%precedence-list95410%_
                         _%slot-vector95359%_
                         _%properties95362%_
                         _%constructor*95367%_
                         _%slot-table95360%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass95268%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95268%_ 'class))
            (let ((_%klass95272%_ _%klass95268%_))
              (__class-precedence-list _%klass95272%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass95268%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass95256%_)
        (let ((_%klass95259%_ _%klass95256%_))
          (cons _%klass95259%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass95259%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers95253%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers95253%_))))
    (define make-class-predicate
      (lambda (_%klass95239%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95239%_ 'class))
            (let ((_%klass95243%_ _%klass95239%_))
              (__make-class-predicate _%klass95243%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass95239%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass95210%_)
        (let* ((_%klass95213%_ _%klass95210%_)
               (_%tid95222%_
                (let () (declare (not safe)) (##type-id _%klass95213%_))))
          (if (__class-type-final? _%klass95213%_)
              (lambda (_%g9522495226%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g9522495226%_
                   _%tid95222%_)))
              (if (__class-type-struct? _%klass95213%_)
                  (lambda (_%g9522995231%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%g9522995231%_ _%tid95222%_)))
                  (lambda (_%g9523495236%_)
                    (__class-instance? _%klass95213%_ _%g9523495236%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass95185%_ _%slot95186%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95185%_ 'class))
            (let ((_%klass95190%_ _%klass95185%_))
              (if (symbol? _%slot95186%_)
                  (let ((_%slot95200%_ _%slot95186%_))
                    (__make-class-slot-accessor _%klass95190%_ _%slot95200%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot95186%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass95185%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass95153%_ _%slot95154%_)
        (let* ((_%klass95157%_ _%klass95153%_)
               (_%slot95165%_ _%slot95154%_)
               (_%field95174%_
                (let ((__tmp97831
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass95157%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp97831 _%slot95165%_ '#f))))
          (if (not _%field95174%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass95157%_
                       'slot:
                       _%slot95165%_)
                '#!void)
              (if (__class-type-final? _%klass95157%_)
                  (make-final-slot-accessor
                   _%klass95157%_
                   _%slot95165%_
                   _%field95174%_)
                  (if (__class-type-struct? _%klass95157%_)
                      (make-struct-slot-accessor
                       _%klass95157%_
                       _%slot95165%_
                       _%field95174%_)
                      (if (let ((_%strukt95180%_
                                 (base-struct/1 _%klass95157%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt95180%_
                                    'class))
                                 (let ((__tmp97832
                                        (let ((__tmp97833
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt95180%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp97833))))
                                   (declare (not safe))
                                   (##fx< _%field95174%_ __tmp97832))))
                          (make-struct-subclass-slot-accessor
                           _%klass95157%_
                           _%slot95165%_
                           _%field95174%_)
                          (make-class-cached-slot-accessor
                           _%klass95157%_
                           _%slot95165%_
                           _%field95174%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass95128%_ _%slot95129%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95128%_ 'class))
            (let ((_%klass95133%_ _%klass95128%_))
              (if (symbol? _%slot95129%_)
                  (let ((_%slot95143%_ _%slot95129%_))
                    (__make-class-slot-mutator _%klass95133%_ _%slot95143%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot95129%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass95128%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass95096%_ _%slot95097%_)
        (let* ((_%klass95100%_ _%klass95096%_)
               (_%slot95108%_ _%slot95097%_)
               (_%field95117%_
                (let ((__tmp97834
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass95100%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp97834 _%slot95108%_ '#f))))
          (if (not _%field95117%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass95100%_
                       'slot:
                       _%slot95108%_)
                '#!void)
              (if (__class-type-final? _%klass95100%_)
                  (make-final-slot-mutator
                   _%klass95100%_
                   _%slot95108%_
                   _%field95117%_)
                  (if (__class-type-struct? _%klass95100%_)
                      (make-struct-slot-mutator
                       _%klass95100%_
                       _%slot95108%_
                       _%field95117%_)
                      (if (let ((_%strukt95123%_
                                 (base-struct/1 _%klass95100%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt95123%_
                                    'class))
                                 (let ((__tmp97835
                                        (let ((__tmp97836
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt95123%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp97836))))
                                   (declare (not safe))
                                   (##fx< _%field95117%_ __tmp97835))))
                          (make-struct-subclass-slot-mutator
                           _%klass95100%_
                           _%slot95108%_
                           _%field95117%_)
                          (make-class-cached-slot-mutator
                           _%klass95100%_
                           _%slot95108%_
                           _%field95117%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass95071%_ _%slot95072%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95071%_ 'class))
            (let ((_%klass95076%_ _%klass95071%_))
              (if (symbol? _%slot95072%_)
                  (let ((_%slot95086%_ _%slot95072%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass95076%_
                     _%slot95086%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot95072%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass95071%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass95039%_ _%slot95040%_)
        (let* ((_%klass95043%_ _%klass95039%_)
               (_%slot95051%_ _%slot95040%_)
               (_%field95060%_
                (let ((__tmp97837
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass95043%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp97837 _%slot95051%_ '#f))))
          (if (not _%field95060%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass95043%_
                       'slot:
                       _%slot95051%_)
                '#!void)
              (if (__class-type-final? _%klass95043%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass95043%_
                   _%slot95051%_
                   _%field95060%_)
                  (if (__class-type-struct? _%klass95043%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass95043%_
                       _%slot95051%_
                       _%field95060%_)
                      (if (let ((_%strukt95066%_
                                 (base-struct/1 _%klass95043%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt95066%_
                                    'class))
                                 (let ((__tmp97838
                                        (let ((__tmp97839
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt95066%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp97839))))
                                   (declare (not safe))
                                   (##fx< _%field95060%_ __tmp97838))))
                          (make-struct-slot-unchecked-accessor
                           _%klass95043%_
                           _%slot95051%_
                           _%field95060%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass95043%_
                           _%slot95051%_
                           _%field95060%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass95014%_ _%slot95015%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95014%_ 'class))
            (let ((_%klass95019%_ _%klass95014%_))
              (if (symbol? _%slot95015%_)
                  (let ((_%slot95029%_ _%slot95015%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass95019%_
                     _%slot95029%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot95015%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass95014%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass94982%_ _%slot94983%_)
        (let* ((_%klass94986%_ _%klass94982%_)
               (_%slot94994%_ _%slot94983%_)
               (_%field95003%_
                (let ((__tmp97840
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass94986%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp97840 _%slot94994%_ '#f))))
          (if (not _%field95003%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass94986%_
                       'slot:
                       _%slot94994%_)
                '#!void)
              (if (__class-type-final? _%klass94986%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass94986%_
                   _%slot94994%_
                   _%field95003%_)
                  (if (__class-type-struct? _%klass94986%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass94986%_
                       _%slot94994%_
                       _%field95003%_)
                      (if (let ((_%strukt95009%_
                                 (base-struct/1 _%klass94986%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt95009%_
                                    'class))
                                 (let ((__tmp97841
                                        (let ((__tmp97842
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt95009%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp97842))))
                                   (declare (not safe))
                                   (##fx< _%field95003%_ __tmp97841))))
                          (make-struct-slot-unchecked-mutator
                           _%klass94986%_
                           _%slot94994%_
                           _%field95003%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass94986%_
                           _%slot94994%_
                           _%field95003%_))))))))
    (define not-an-instance__%
      (lambda (_%object94966%_ _%class94967%_ _%slot94968%_)
        (apply error
               '"not an instance"
               'object:
               _%object94966%_
               'class:
               _%class94967%_
               (if _%slot94968%_ (cons 'slot: (cons _%slot94968%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object94973%_ _%class94974%_)
        (let ((_%slot94976%_ '#f))
          (not-an-instance__% _%object94973%_ _%class94974%_ _%slot94976%_))))
    (define not-an-instance
      (lambda _g97844_
        (let ((_g97843_ (let () (declare (not safe)) (##length _g97844_))))
          (cond ((let () (declare (not safe)) (##fx= _g97843_ 2))
                 (apply not-an-instance__0 _g97844_))
                ((let () (declare (not safe)) (##fx= _g97843_ 3))
                 (apply not-an-instance__% _g97844_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g97844_))))))
    (define make-final-slot-accessor
      (lambda (_%klass94959%_ _%slot94960%_ _%field94961%_)
        (lambda (_%obj94963%_)
          (##direct-structure-ref
           _%obj94963%_
           _%field94961%_
           _%klass94959%_
           _%slot94960%_))))
    (define make-final-slot-mutator
      (lambda (_%klass94952%_ _%slot94953%_ _%field94954%_)
        (lambda (_%obj94956%_ _%val94957%_)
          (##direct-structure-set!
           _%obj94956%_
           _%val94957%_
           _%field94954%_
           _%klass94952%_
           _%slot94953%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass94946%_ _%slot94947%_ _%field94948%_)
        (lambda (_%obj94950%_)
          (##structure-ref
           _%obj94950%_
           _%field94948%_
           _%klass94946%_
           _%slot94947%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass94939%_ _%slot94940%_ _%field94941%_)
        (lambda (_%obj94943%_ _%val94944%_)
          (##structure-set!
           _%obj94943%_
           _%val94944%_
           _%field94941%_
           _%klass94939%_
           _%slot94940%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass94933%_ _%slot94934%_ _%field94935%_)
        (lambda (_%obj94937%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj94937%_
             _%field94935%_
             _%klass94933%_
             _%slot94934%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass94926%_ _%slot94927%_ _%field94928%_)
        (lambda (_%obj94930%_ _%val94931%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj94930%_
             _%val94931%_
             _%field94928%_
             _%klass94926%_
             _%slot94927%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass94920%_ _%slot94921%_ _%field94922%_)
        (lambda (_%obj94924%_)
          (if (class-instance? _%klass94920%_ _%obj94924%_)
              (unchecked-slot-ref _%obj94924%_ _%field94922%_)
              (not-an-instance__%
               _%obj94924%_
               _%klass94920%_
               _%slot94921%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass94913%_ _%slot94914%_ _%field94915%_)
        (lambda (_%obj94917%_ _%val94918%_)
          (if (class-instance? _%klass94913%_ _%obj94917%_)
              (unchecked-field-set! _%obj94917%_ _%field94915%_ _%val94918%_)
              (not-an-instance__%
               _%obj94917%_
               _%klass94913%_
               _%slot94914%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass94904%_ _%slot94905%_ _%field94906%_)
        (lambda (_%obj94908%_)
          (if (let ((__tmp97845
                     (let () (declare (not safe)) (##type-id _%klass94904%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94908%_ __tmp97845))
              (unchecked-field-ref _%obj94908%_ _%field94906%_)
              (if (class-instance? _%klass94904%_ _%obj94908%_)
                  (unchecked-slot-ref _%obj94908%_ _%slot94905%_)
                  (not-an-instance__%
                   _%obj94908%_
                   _%klass94904%_
                   _%slot94905%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass94894%_ _%slot94895%_ _%field94896%_)
        (lambda (_%obj94898%_ _%val94899%_)
          (if (let ((__tmp97846
                     (let () (declare (not safe)) (##type-id _%klass94894%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94898%_ __tmp97846))
              (unchecked-field-set! _%obj94898%_ _%field94896%_ _%val94899%_)
              (if (class-instance? _%klass94894%_ _%obj94898%_)
                  (unchecked-slot-set! _%obj94898%_ _%slot94895%_ _%val94899%_)
                  (not-an-instance__%
                   _%obj94898%_
                   _%klass94894%_
                   _%slot94895%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass94888%_ _%slot94889%_ _%field94890%_)
        (lambda (_%obj94892%_)
          (if (let ((__tmp97847
                     (let () (declare (not safe)) (##type-id _%klass94888%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94892%_ __tmp97847))
              (unchecked-field-ref _%obj94892%_ _%field94890%_)
              (unchecked-slot-ref _%obj94892%_ _%slot94889%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass94881%_ _%slot94882%_ _%field94883%_)
        (lambda (_%obj94885%_ _%val94886%_)
          (if (let ((__tmp97848
                     (let () (declare (not safe)) (##type-id _%klass94881%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj94885%_ __tmp97848))
              (unchecked-field-set! _%obj94885%_ _%field94883%_ _%val94886%_)
              (unchecked-slot-set! _%obj94885%_ _%slot94882%_ _%val94886%_)))))
    (define class-slot-offset
      (lambda (_%klass94856%_ _%slot94857%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94856%_ 'class))
            (let ((_%klass94861%_ _%klass94856%_))
              (if (let () (declare (not safe)) (symbolic? _%slot94857%_))
                  (let ((_%slot94871%_ _%slot94857%_))
                    (__class-slot-offset _%klass94861%_ _%slot94871%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot94857%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass94856%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass94835%_ _%slot94836%_)
        (let* ((_%klass94839%_ _%klass94835%_)
               (_%slot94847%_ _%slot94836%_)
               (__tmp97849
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass94839%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp97849 _%slot94847%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass94809%_ _%obj94810%_ _%slot94811%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94809%_ 'class))
            (let ((_%klass94815%_ _%klass94809%_))
              (if (let () (declare (not safe)) (symbolic? _%slot94811%_))
                  (let ((_%slot94825%_ _%slot94811%_))
                    (__class-slot-ref
                     _%klass94815%_
                     _%obj94810%_
                     _%slot94825%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot94811%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass94809%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass94785%_ _%obj94786%_ _%slot94787%_)
        (let* ((_%klass94790%_ _%klass94785%_) (_%slot94798%_ _%slot94787%_))
          (if (__class-instance? _%klass94790%_ _%obj94786%_)
              (let ((_%off94807%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj94786%_))
                      _%slot94798%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj94786%_
                 _%off94807%_
                 _%klass94790%_
                 _%slot94798%_))
              (not-an-instance__0 _%obj94786%_ _%klass94790%_)))))
    (define class-slot-set!
      (lambda (_%klass94758%_ _%obj94759%_ _%slot94760%_ _%val94761%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94758%_ 'class))
            (let ((_%klass94765%_ _%klass94758%_))
              (if (let () (declare (not safe)) (symbolic? _%slot94760%_))
                  (let ((_%slot94775%_ _%slot94760%_))
                    (__class-slot-set!
                     _%klass94765%_
                     _%obj94759%_
                     _%slot94775%_
                     _%val94761%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot94760%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass94758%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass94733%_ _%obj94734%_ _%slot94735%_ _%val94736%_)
        (let* ((_%klass94739%_ _%klass94733%_) (_%slot94747%_ _%slot94735%_))
          (if (__class-instance? _%klass94739%_ _%obj94734%_)
              (let ((_%off94756%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj94734%_))
                      _%slot94747%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj94734%_
                 _%val94736%_
                 _%off94756%_
                 _%klass94739%_
                 _%slot94747%_))
              (not-an-instance__0 _%obj94734%_ _%klass94739%_)))))
    (define unchecked-field-ref
      (lambda (_%obj94730%_ _%off94731%_)
        (let ((__tmp97850
               (let () (declare (not safe)) (##structure-type _%obj94730%_))))
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj94730%_
           _%off94731%_
           __tmp97850
           '#f))))
    (define unchecked-field-set!
      (lambda (_%obj94726%_ _%off94727%_ _%val94728%_)
        (let ((__tmp97851
               (let () (declare (not safe)) (##structure-type _%obj94726%_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj94726%_
           _%val94728%_
           _%off94727%_
           __tmp97851
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj94723%_ _%slot94724%_)
        (unchecked-field-ref
         _%obj94723%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj94723%_))
          _%slot94724%_))))
    (define unchecked-slot-set!
      (lambda (_%obj94719%_ _%slot94720%_ _%val94721%_)
        (unchecked-field-set!
         _%obj94719%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj94719%_))
          _%slot94720%_)
         _%val94721%_)))
    (define slot-ref__%
      (lambda (_%obj94681%_ _%slot94682%_ _%E94683%_)
        (if (symbol? _%slot94682%_)
            (let ((_%slot94687%_ _%slot94682%_))
              (if (procedure? _%E94683%_)
                  (let ((_%E94697%_ _%E94683%_))
                    (__slot-ref__% _%obj94681%_ _%slot94687%_ _%E94697%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E94683%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot94682%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj94710%_ _%slot94711%_)
        (let ((_%E94713%_ __slot-error))
          (slot-ref__% _%obj94710%_ _%slot94711%_ _%E94713%_))))
    (define slot-ref
      (lambda _g97853_
        (let ((_g97852_ (let () (declare (not safe)) (##length _g97853_))))
          (cond ((let () (declare (not safe)) (##fx= _g97852_ 2))
                 (apply slot-ref__0 _g97853_))
                ((let () (declare (not safe)) (##fx= _g97852_ 3))
                 (apply slot-ref__% _g97853_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g97853_))))))
    (define __slot-ref__%
      (lambda (_%obj94637%_ _%slot94638%_ _%E94639%_)
        (let* ((_%slot94642%_ _%slot94638%_)
               (_%E94650%_ _%E94639%_)
               (_%klass94659%_ (class-of _%obj94637%_))
               (_%$e94662%_ (class-slot-offset _%klass94659%_ _%slot94642%_)))
          (if _%$e94662%_
              ((lambda (_%off94665%_)
                 (unchecked-field-ref _%obj94637%_ _%off94665%_))
               _%$e94662%_)
              (let ()
                (declare (not safe))
                (_%E94650%_ _%obj94637%_ _%slot94642%_))))))
    (define __slot-ref__0
      (lambda (_%obj94671%_ _%slot94672%_)
        (let ((_%E94674%_ __slot-error))
          (__slot-ref__% _%obj94671%_ _%slot94672%_ _%E94674%_))))
    (define __slot-ref
      (lambda _g97855_
        (let ((_g97854_ (let () (declare (not safe)) (##length _g97855_))))
          (cond ((let () (declare (not safe)) (##fx= _g97854_ 2))
                 (apply __slot-ref__0 _g97855_))
                ((let () (declare (not safe)) (##fx= _g97854_ 3))
                 (apply __slot-ref__% _g97855_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g97855_))))))
    (define slot-set!__%
      (lambda (_%obj94595%_ _%slot94596%_ _%val94597%_ _%E94598%_)
        (if (symbol? _%slot94596%_)
            (let ((_%slot94602%_ _%slot94596%_))
              (if (procedure? _%E94598%_)
                  (let ((_%E94612%_ _%E94598%_))
                    (__slot-set!__%
                     _%obj94595%_
                     _%slot94602%_
                     _%val94597%_
                     _%E94612%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E94598%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot94596%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj94625%_ _%slot94626%_ _%val94627%_)
        (let ((_%E94629%_ __slot-error))
          (slot-set!__% _%obj94625%_ _%slot94626%_ _%val94627%_ _%E94629%_))))
    (define slot-set!
      (lambda _g97857_
        (let ((_g97856_ (let () (declare (not safe)) (##length _g97857_))))
          (cond ((let () (declare (not safe)) (##fx= _g97856_ 3))
                 (apply slot-set!__0 _g97857_))
                ((let () (declare (not safe)) (##fx= _g97856_ 4))
                 (apply slot-set!__% _g97857_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g97857_))))))
    (define __slot-set!__%
      (lambda (_%obj94548%_ _%slot94549%_ _%val94550%_ _%E94551%_)
        (let* ((_%slot94554%_ _%slot94549%_)
               (_%E94562%_ _%E94551%_)
               (_%klass94571%_ (class-of _%obj94548%_))
               (_%$e94574%_ (class-slot-offset _%klass94571%_ _%slot94554%_)))
          (if _%$e94574%_
              ((lambda (_%off94577%_)
                 (unchecked-field-set! _%obj94548%_ _%off94577%_ _%val94550%_))
               _%$e94574%_)
              (let ()
                (declare (not safe))
                (_%E94562%_ _%obj94548%_ _%slot94554%_))))))
    (define __slot-set!__0
      (lambda (_%obj94583%_ _%slot94584%_ _%val94585%_)
        (let ((_%E94587%_ __slot-error))
          (__slot-set!__%
           _%obj94583%_
           _%slot94584%_
           _%val94585%_
           _%E94587%_))))
    (define __slot-set!
      (lambda _g97859_
        (let ((_g97858_ (let () (declare (not safe)) (##length _g97859_))))
          (cond ((let () (declare (not safe)) (##fx= _g97858_ 3))
                 (apply __slot-set!__0 _g97859_))
                ((let () (declare (not safe)) (##fx= _g97858_ 4))
                 (apply __slot-set!__% _g97859_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g97859_))))))
    (define __slot-error
      (lambda (_%obj94544%_ _%slot94545%_)
        (error '"Cannot find slot"
               'object:
               _%obj94544%_
               'slot:
               _%slot94545%_)))
    (define subclass?
      (lambda (_%maybe-sub-class94519%_ _%maybe-super-class94520%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class94519%_ 'class))
            (let ((_%maybe-sub-class94524%_ _%maybe-sub-class94519%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class94520%_
                     'class))
                  (let ((_%maybe-super-class94534%_
                         _%maybe-super-class94520%_))
                    (__subclass?
                     _%maybe-sub-class94524%_
                     _%maybe-super-class94534%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class94520%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class94519%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class94491%_ _%maybe-super-class94492%_)
        (let* ((_%maybe-sub-class94495%_ _%maybe-sub-class94491%_)
               (_%maybe-super-class94503%_ _%maybe-super-class94492%_)
               (_%maybe-super-class-id94512%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class94503%_)))
               (_%$e94514%_
                (eq? _%maybe-super-class-id94512%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class94495%_)))))
          (if _%$e94514%_
              _%$e94514%_
              (let ((__tmp97861
                     (lambda (_%super-class94517%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class94517%_))
                            _%maybe-super-class-id94512%_)))
                    (__tmp97860
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class94495%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp97861 __tmp97860))))))
    (define object?
      (lambda (_%o94488%_)
        (if (let () (declare (not safe)) (##structure? _%o94488%_))
            (let ((__tmp97862
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o94488%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp97862 'class))
            '#f)))
    (define object-type
      (lambda (_%o94483%_)
        (if (let () (declare (not safe)) (##structure? _%o94483%_))
            (let ((_%klass94486%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o94483%_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass94486%_ 'class))
                  _%klass94486%_
                  (begin
                    (error '"not an object" _%o94483%_ _%klass94486%_)
                    '#!void)))
            (begin (error '"not an object" _%o94483%_) '#!void))))
    (define direct-instance?
      (lambda (_%klass94468%_ _%obj94469%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94468%_ 'class))
            (let ((_%klass94473%_ _%klass94468%_))
              (__direct-instance? _%klass94473%_ _%obj94469%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass94468%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass94455%_ _%obj94456%_)
        (let* ((_%klass94459%_ _%klass94455%_)
               (__tmp97863
                (let () (declare (not safe)) (##type-id _%klass94459%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj94456%_ __tmp97863))))
    (define immediate-instance-of?
      (lambda (_%klass94451%_ _%obj94452%_)
        (if (let () (declare (not safe)) (##structure? _%obj94452%_))
            (eq? _%klass94451%_
                 (let () (declare (not safe)) (##structure-type _%obj94452%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass94436%_ _%obj94437%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94436%_ 'class))
            (let ((_%klass94441%_ _%klass94436%_))
              (__struct-instance? _%klass94441%_ _%obj94437%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass94436%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass94423%_ _%obj94424%_)
        (let* ((_%klass94427%_ _%klass94423%_)
               (__tmp97864
                (let () (declare (not safe)) (##type-id _%klass94427%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj94424%_ __tmp97864))))
    (define class-instance?
      (lambda (_%klass94408%_ _%obj94409%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94408%_ 'class))
            (let ((_%klass94413%_ _%klass94408%_))
              (__class-instance? _%klass94413%_ _%obj94409%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass94408%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass94393%_ _%obj94394%_)
        (let* ((_%klass94397%_ _%klass94393%_)
               (_%type94406%_ (class-of _%obj94394%_)))
          (subclass? _%type94406%_ _%klass94397%_))))
    (define make-object
      (lambda (_%klass94368%_ _%k94369%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94368%_ 'class))
            (let ((_%klass94373%_ _%klass94368%_))
              (if (fixnum? _%k94369%_)
                  (let ((_%k94383%_ _%k94369%_))
                    (__make-object _%klass94373%_ _%k94383%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k94369%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass94368%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass94345%_ _%k94346%_)
        (let* ((_%klass94349%_ _%klass94345%_) (_%k94357%_ _%k94346%_))
          (if (__class-type-system? _%klass94349%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass94349%_)
                '#!void)
              (let ((_%obj94366%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass94349%_ _%k94357%_))))
                (object-fill! _%obj94366%_ '#f))))))
    (define object-fill!
      (lambda (_%obj94330%_ _%fill94331%_)
        (if '#t
            (let ((_%obj94335%_ _%obj94330%_))
              (__object-fill! _%obj94335%_ _%fill94331%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj94330%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj94312%_ _%fill94313%_)
        (let ((_%obj94316%_ _%obj94312%_))
          (let _%loop94325%_ ((_%i94327%_
                               (let ((__tmp97865
                                      (let ()
                                        (declare (not safe))
                                        (##structure-length _%obj94316%_))))
                                 (declare (not safe))
                                 (##fx- __tmp97865 '1))))
            (if (let () (declare (not safe)) (##fx> _%i94327%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj94316%_
                     _%fill94313%_
                     _%i94327%_
                     '#f
                     '#f))
                  (_%loop94325%_
                   (let () (declare (not safe)) (##fx- _%i94327%_ '1))))
                _%obj94316%_)))))
    (define new-instance
      (lambda (_%klass94298%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94298%_ 'class))
            (let ((_%klass94302%_ _%klass94298%_))
              (__new-instance _%klass94302%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass94298%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass94286%_)
        (let* ((_%klass94289%_ _%klass94286%_)
               (__obj97780
                (let ((__tmp97866
                       (let ((__tmp97867
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass94289%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp97867))))
                  (declare (not safe))
                  (##make-structure _%klass94289%_ __tmp97866))))
          (object-fill! __obj97780 '#f)
          __obj97780)))
    (define make-instance
      (lambda (_%klass94271%_ . _%args94272%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94271%_ 'class))
            (let ((_%klass94276%_ _%klass94271%_))
              (declare (not safe))
              (##apply __make-instance _%klass94276%_ _%args94272%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass94271%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass94243%_ . _%args94244%_)
        (let* ((_%klass94247%_ _%klass94243%_)
               (_%$e94256%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass94247%_ '10 '#f '#f))))
          (if _%$e94256%_
              ((lambda (_%kons-id94259%_)
                 (let ((_%obj94261%_ (__new-instance _%klass94247%_)))
                   (___constructor-init!
                    _%klass94247%_
                    _%kons-id94259%_
                    _%obj94261%_
                    _%args94244%_)
                   _%obj94261%_))
               _%$e94256%_)
              (if (__class-type-metaclass? _%klass94247%_)
                  (let ((_%obj94264%_ (__new-instance _%klass94247%_)))
                    (__metaclass-instance-init!
                     _%klass94247%_
                     _%obj94264%_
                     _%args94244%_)
                    _%obj94264%_)
                  (if (not (__class-type-struct? _%klass94247%_))
                      (let ((_%obj94267%_ (__new-instance _%klass94247%_)))
                        (___class-instance-init!
                         _%klass94247%_
                         _%obj94267%_
                         _%args94244%_)
                        _%obj94267%_)
                      (if (let ((__tmp97869
                                 (__class-type-field-count _%klass94247%_))
                                (__tmp97868 (length _%args94244%_)))
                            (declare (not safe))
                            (##fx= __tmp97869 __tmp97868))
                          (apply ##structure _%klass94247%_ _%args94244%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass94247%_
                                   'slots:
                                   (__class-type-slot-list _%klass94247%_)
                                   'args:
                                   _%args94244%_)
                            '#!void))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj94228%_ . _%args94229%_)
        (if '#t
            (let ((_%obj94233%_ _%obj94228%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj94233%_ _%args94229%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj94228%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj94215%_ . _%args94216%_)
        (let ((_%obj94219%_ _%obj94215%_))
          (if (let ((__tmp97871 (length _%args94216%_))
                    (__tmp97870
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj94219%_))))
                (declare (not safe))
                (##fx< __tmp97871 __tmp97870))
              (___struct-instance-init! _%obj94219%_ _%args94216%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj94219%_
                     'args:
                     _%args94216%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj94174%_ _%args94175%_)
        (let _%lp94177%_ ((_%k94179%_ '1) (_%rest94180%_ _%args94175%_))
          (let* ((_%rest9418194189%_ _%rest94180%_)
                 (_%else9418394197%_ (lambda () _%obj94174%_))
                 (_%K9418594203%_
                  (lambda (_%rest94200%_ _%hd94201%_)
                    (unchecked-field-set! _%obj94174%_ _%k94179%_ _%hd94201%_)
                    (_%lp94177%_
                     (let () (declare (not safe)) (##fx+ _%k94179%_ '1))
                     _%rest94200%_))))
            (if (let () (declare (not safe)) (##pair? _%rest9418194189%_))
                (let ((_%hd9418694206%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9418194189%_)))
                      (_%tl9418794208%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9418194189%_))))
                  (let* ((_%hd94211%_ _%hd9418694206%_)
                         (_%rest94213%_ _%tl9418794208%_))
                    (_%K9418594203%_ _%rest94213%_ _%hd94211%_)))
                (_%else9418394197%_))))))
    (define class-instance-init!
      (lambda (_%obj94159%_ . _%args94160%_)
        (if '#t
            (let ((_%obj94164%_ _%obj94159%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj94164%_ _%args94160%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj94159%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj94146%_ . _%args94147%_)
        (let ((_%obj94150%_ _%obj94146%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj94150%_))
           _%obj94150%_
           _%args94147%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass94088%_ _%obj94089%_ _%args94090%_)
        (let _%lp94092%_ ((_%rest94094%_ _%args94090%_))
          (let* ((_%rest9409594105%_ _%rest94094%_)
                 (_%else9409794113%_
                  (lambda ()
                    (if (null? _%rest94094%_)
                        _%obj94089%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass94088%_
                               'rest:
                               _%rest94094%_))))
                 (_%K9409994127%_
                  (lambda (_%rest94116%_ _%val94117%_ _%key94118%_)
                    (if (not (keyword? _%key94118%_))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key94118%_)
                        (let ((_%$e94121%_
                               (__class-slot-offset
                                _%klass94088%_
                                _%key94118%_)))
                          (if _%$e94121%_
                              ((lambda (_%off94124%_)
                                 (unchecked-field-set!
                                  _%obj94089%_
                                  _%off94124%_
                                  _%val94117%_)
                                 (_%lp94092%_ _%rest94116%_))
                               _%$e94121%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass94088%_
                                     'slot:
                                     _%key94118%_)))))))
            (if (let () (declare (not safe)) (##pair? _%rest9409594105%_))
                (let ((_%hd9410094130%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9409594105%_)))
                      (_%tl9410194132%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9409594105%_))))
                  (let ((_%key94135%_ _%hd9410094130%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9410194132%_))
                        (let ((_%hd9410294137%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9410194132%_)))
                              (_%tl9410394139%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9410194132%_))))
                          (let* ((_%val94142%_ _%hd9410294137%_)
                                 (_%rest94144%_ _%tl9410394139%_))
                            (_%K9409994127%_
                             _%rest94144%_
                             _%val94142%_
                             _%key94135%_)))
                        (_%else9409794113%_))))
                (_%else9409794113%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass94084%_ _%obj94085%_ _%args94086%_)
        (apply call-method
               _%klass94084%_
               'instance-init!
               _%obj94085%_
               _%args94086%_)))
    (define constructor-init!
      (lambda (_%klass94047%_ _%kons-id94048%_ _%obj94049%_ . _%args94050%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94047%_ 'class))
            (let ((_%klass94054%_ _%klass94047%_))
              (if (symbol? _%kons-id94048%_)
                  (let ((_%kons-id94064%_ _%kons-id94048%_))
                    (if '#t
                        (let ((_%obj94074%_ _%obj94049%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass94054%_
                                   _%kons-id94064%_
                                   _%obj94074%_
                                   _%args94050%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                           'contract:
                           'true
                           'value:
                           _%obj94049%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id94048%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass94047%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass94016%_ _%kons-id94017%_ _%obj94018%_ . _%args94019%_)
        (let* ((_%klass94022%_ _%klass94016%_)
               (_%kons-id94030%_ _%kons-id94017%_)
               (_%obj94038%_ _%obj94018%_))
          (___constructor-init!
           _%klass94022%_
           _%kons-id94030%_
           _%obj94038%_
           _%args94019%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass94005%_ _%kons-id94006%_ _%obj94007%_ _%args94008%_)
        (let ((_%$e94010%_
               (__find-method _%klass94005%_ _%obj94007%_ _%kons-id94006%_)))
          (if _%$e94010%_
              ((lambda (_%kons94013%_)
                 (apply _%kons94013%_ _%obj94007%_ _%args94008%_)
                 _%obj94007%_)
               _%$e94010%_)
              (error '"missing constructor"
                     'class:
                     _%klass94005%_
                     'method:
                     _%kons-id94006%_)))))
    (define struct-copy
      (lambda (_%struct93991%_)
        (if '#t
            (let ((_%struct93995%_ _%struct93991%_))
              (__struct-copy _%struct93995%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct93991%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct93979%_)
        (let ((_%struct93982%_ _%struct93979%_))
          (declare (not safe))
          (##structure-copy _%struct93982%_))))
    (define struct->list
      (lambda (_%obj93965%_)
        (if '#t
            (let ((_%obj93969%_ _%obj93965%_)) (__struct->list _%obj93969%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj93965%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj93953%_)
        (let ((_%obj93956%_ _%obj93953%_))
          (declare (not safe))
          (##vector->list _%obj93956%_))))
    (define class->list
      (lambda (_%obj93939%_)
        (if '#t
            (let ((_%obj93943%_ _%obj93939%_)) (__class->list _%obj93943%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@837.20-837.23"
               'contract:
               'true
               'value:
               _%obj93939%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj93915%_)
        (let* ((_%obj93918%_ _%obj93915%_)
               (_%klass93927%_
                (let () (declare (not safe)) (##structure-type _%obj93918%_)))
               (_%slot-vector93929%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass93927%_ '7 '#f '#f))))
          (let _%loop93931%_ ((_%index93933%_
                               (let ((__tmp97872
                                      (let ()
                                        (declare (not safe))
                                        (##vector-length
                                         _%slot-vector93929%_))))
                                 (declare (not safe))
                                 (##fx- __tmp97872 '1)))
                              (_%plist93934%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index93933%_ '1))
                (cons _%klass93927%_ _%plist93934%_)
                (let ((_%slot93937%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%slot-vector93929%_ _%index93933%_))))
                  (_%loop93931%_
                   (let () (declare (not safe)) (##fx- _%index93933%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot93937%_))
                         (cons (unchecked-field-ref
                                _%obj93918%_
                                _%index93933%_)
                               _%plist93934%_)))))))))
    (define call-method
      (lambda (_%obj93899%_ _%id93900%_ . _%args93901%_)
        (if (symbol? _%id93900%_)
            (let ((_%id93905%_ _%id93900%_))
              (declare (not safe))
              (##apply __call-method _%obj93899%_ _%id93905%_ _%args93901%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.24-852.26"
               'contract:
               'symbol?
               'value:
               _%id93900%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj93868%_ _%id93869%_ . _%args93870%_)
        (let* ((_%id93873%_ _%id93869%_)
               (_%$e93882%_ (__method-ref _%obj93868%_ _%id93873%_)))
          (if _%$e93882%_
              ((lambda (_%method93885%_)
                 (let ((_%method93887%_ _%method93885%_))
                   (apply _%method93887%_ _%obj93868%_ _%args93870%_)))
               _%$e93882%_)
              (error '"cannot find method"
                     'object:
                     _%obj93868%_
                     'method:
                     _%id93873%_)))))
    (define method-ref
      (lambda (_%obj93853%_ _%id93854%_)
        (if (symbol? _%id93854%_)
            (let ((_%id93858%_ _%id93854%_))
              (__method-ref _%obj93853%_ _%id93858%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@876.23-876.25"
               'contract:
               'symbol?
               'value:
               _%id93854%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj93840%_ _%id93841%_)
        (let ((_%id93844%_ _%id93841%_))
          (__find-method (class-of _%obj93840%_) _%obj93840%_ _%id93844%_))))
    (define checked-method-ref
      (lambda (_%obj93833%_ _%id93834%_)
        (let ((_%$e93837%_ (method-ref _%obj93833%_ _%id93834%_)))
          (if _%$e93837%_
              _%$e93837%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj93833%_
                       'method:
                       _%id93834%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj93818%_ _%id93819%_)
        (if (symbol? _%id93819%_)
            (let ((_%id93823%_ _%id93819%_))
              (__bound-method-ref _%obj93818%_ _%id93823%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@884.29-884.31"
               'contract:
               'symbol?
               'value:
               _%id93819%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj93786%_ _%id93787%_)
        (let* ((_%id93790%_ _%id93787%_)
               (_%$e93799%_ (__method-ref _%obj93786%_ _%id93790%_)))
          (if _%$e93799%_
              ((lambda (_%method93802%_)
                 (let ((_%method93804%_ _%method93802%_))
                   (lambda _%args93815%_
                     (apply _%method93804%_ _%obj93786%_ _%args93815%_))))
               _%$e93799%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj93771%_ _%id93772%_)
        (if (symbol? _%id93772%_)
            (let ((_%id93776%_ _%id93772%_))
              (__checked-bound-method-ref _%obj93771%_ _%id93776%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@893.37-893.39"
               'contract:
               'symbol?
               'value:
               _%id93772%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj93754%_ _%id93755%_)
        (let* ((_%id93758%_ _%id93755%_)
               (_%method93767%_ (checked-method-ref _%obj93754%_ _%id93758%_)))
          (lambda _%args93769%_
            (apply _%method93767%_ _%obj93754%_ _%args93769%_)))))
    (define find-method
      (lambda (_%klass93728%_ _%obj93729%_ _%id93730%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass93728%_ 'class))
            (let ((_%klass93734%_ _%klass93728%_))
              (if (symbol? _%id93730%_)
                  (let ((_%id93744%_ _%id93730%_))
                    (__find-method _%klass93734%_ _%obj93729%_ _%id93744%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@898.41-898.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id93730%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@898.20-898.25"
               'contract:
               'class-type?
               'value:
               _%klass93728%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass93701%_ _%obj93702%_ _%id93703%_)
        (let* ((_%klass93706%_ _%klass93701%_)
               (_%id93714%_ _%id93703%_)
               (_%$e93723%_
                (__direct-method-ref _%klass93706%_ _%obj93702%_ _%id93714%_)))
          (if _%$e93723%_
              _%$e93723%_
              (if (__class-type-sealed? _%klass93706%_)
                  '#f
                  (__mixin-method-ref
                   _%klass93706%_
                   _%obj93702%_
                   _%id93714%_))))))
    (define mixin-find-method
      (lambda (_%mixins93685%_ _%obj93686%_ _%id93687%_)
        (if (symbol? _%id93687%_)
            (let ((_%id93691%_ _%id93687%_))
              (__mixin-find-method _%mixins93685%_ _%obj93686%_ _%id93691%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@906.37-906.39"
               'contract:
               'symbol?
               'value:
               _%id93687%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins93667%_ _%obj93668%_ _%id93669%_)
        (let* ((_%id93672%_ _%id93669%_)
               (__tmp97873
                (lambda (_%g9368093682%_)
                  (direct-method-ref
                   _%g9368093682%_
                   _%obj93668%_
                   _%id93672%_))))
          (declare (not safe))
          (__ormap1 __tmp97873 _%mixins93667%_))))
    (define direct-method-ref
      (lambda (_%klass93641%_ _%obj93642%_ _%id93643%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass93641%_ 'class))
            (let ((_%klass93647%_ _%klass93641%_))
              (if (symbol? _%id93643%_)
                  (let ((_%id93657%_ _%id93643%_))
                    (__direct-method-ref
                     _%klass93647%_
                     _%obj93642%_
                     _%id93657%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@909.47-909.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id93643%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@909.26-909.31"
               'contract:
               'class-type?
               'value:
               _%klass93641%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass93595%_ _%obj93596%_ _%id93597%_)
        (let* ((_%klass93600%_ _%klass93595%_) (_%id93608%_ _%id93597%_))
          (letrec ((_%metaclass-resolve-method93617%_
                    (lambda ()
                      (let ((__method97781
                             (__method-ref _%klass93600%_ 'direct-method-ref)))
                        (if __method97781
                            (__method97781
                             _%klass93600%_
                             _%obj93596%_
                             _%id93608%_)
                            (error '"Missing method"
                                   _%klass93600%_
                                   'direct-method-ref)))))
                   (_%metaclass-resolve-method!93618%_
                    (lambda ()
                      (let ((_%method93638%_
                             (_%metaclass-resolve-method93617%_)))
                        (let ((__tmp97875
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass93600%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp97874
                               (if _%method93638%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp97875
                           _%id93608%_
                           __tmp97874))
                        _%method93638%_))))
            (let ((_%$e93620%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass93600%_ '11 '#f '#f))))
              (if _%$e93620%_
                  ((lambda (_%ht93623%_)
                     (let ((_%method93625%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht93623%_
                               _%id93608%_
                               '#f))))
                       (if (procedure? _%method93625%_)
                           _%method93625%_
                           (if (__class-type-metaclass? _%klass93600%_)
                               (let ((_%$e93629%_ _%method93625%_))
                                 (if (eq? 'resolved _%$e93629%_)
                                     (_%metaclass-resolve-method93617%_)
                                     (if (eq? 'unknown _%$e93629%_)
                                         '#f
                                         (_%metaclass-resolve-method!93618%_))))
                               '#f))))
                   _%$e93620%_)
                  (if (__class-type-metaclass? _%klass93600%_)
                      (let ((_%tab93634%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass93600%_
                           _%tab93634%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!93618%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass93569%_ _%obj93570%_ _%id93571%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass93569%_ 'class))
            (let ((_%klass93575%_ _%klass93569%_))
              (if (symbol? _%id93571%_)
                  (let ((_%id93585%_ _%id93571%_))
                    (__mixin-method-ref
                     _%klass93575%_
                     _%obj93570%_
                     _%id93585%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@939.46-939.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id93571%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@939.25-939.30"
               'contract:
               'class-type?
               'value:
               _%klass93569%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass93547%_ _%obj93548%_ _%id93549%_)
        (let* ((_%klass93552%_ _%klass93547%_) (_%id93560%_ _%id93549%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass93552%_ '6 '#f '#f))
           _%obj93548%_
           _%id93560%_))))
    (define bind-method!__%
      (lambda (_%klass93506%_ _%id93507%_ _%proc93508%_ _%rebind?93509%_)
        (if (symbol? _%id93507%_)
            (let ((_%id93513%_ _%id93507%_))
              (if (procedure? _%proc93508%_)
                  (let ((_%proc93523%_ _%proc93508%_))
                    (__bind-method!__%
                     _%klass93506%_
                     _%id93513%_
                     _%proc93523%_
                     _%rebind?93509%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@942.42-942.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc93508%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@942.27-942.29"
               'contract:
               'symbol?
               'value:
               _%id93507%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass93536%_ _%id93537%_ _%proc93538%_)
        (let ((_%rebind?93540%_ '#f))
          (bind-method!__%
           _%klass93536%_
           _%id93537%_
           _%proc93538%_
           _%rebind?93540%_))))
    (define bind-method!
      (lambda _g97877_
        (let ((_g97876_ (let () (declare (not safe)) (##length _g97877_))))
          (cond ((let () (declare (not safe)) (##fx= _g97876_ 3))
                 (apply bind-method!__0 _g97877_))
                ((let () (declare (not safe)) (##fx= _g97876_ 4))
                 (apply bind-method!__% _g97877_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g97877_))))))
    (define __bind-method!__%
      (lambda (_%klass93457%_ _%id93458%_ _%proc93459%_ _%rebind?93460%_)
        (let* ((_%id93463%_ _%id93458%_) (_%proc93471%_ _%proc93459%_))
          (letrec ((_%bind!93480%_
                    (lambda (_%ht93489%_)
                      (if (and (not _%rebind?93460%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht93489%_
                                  _%id93463%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass93457%_
                                 'method:
                                 _%id93463%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht93489%_
                               _%id93463%_
                               _%proc93471%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass93457%_ 'class))
                (let ((_%ht93483%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass93457%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht93483%_
                      (_%bind!93480%_ _%ht93483%_)
                      (let ((_%ht93485%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass93457%_
                           _%ht93485%_
                           '11
                           '#f
                           '#f))
                        (_%bind!93480%_ _%ht93485%_))))
                (if (let () (declare (not safe)) (##type? _%klass93457%_))
                    (let ((__tmp97878 (__shadow-class _%klass93457%_)))
                      (declare (not safe))
                      (__bind-method!
                       __tmp97878
                       _%id93463%_
                       _%proc93471%_
                       _%rebind?93460%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass93457%_)))))))
    (define __bind-method!__0
      (lambda (_%klass93494%_ _%id93495%_ _%proc93496%_)
        (let ((_%rebind?93498%_ '#f))
          (__bind-method!__%
           _%klass93494%_
           _%id93495%_
           _%proc93496%_
           _%rebind?93498%_))))
    (define __bind-method!
      (lambda _g97880_
        (let ((_g97879_ (let () (declare (not safe)) (##length _g97880_))))
          (cond ((let () (declare (not safe)) (##fx= _g97879_ 3))
                 (apply __bind-method!__0 _g97880_))
                ((let () (declare (not safe)) (##fx= _g97879_ 4))
                 (apply __bind-method!__% _g97880_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g97880_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint93437%_ _%seed93439%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint93437%_
           procedure-hash
           eq?
           _%seed93439%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint93445%_ '#f) (_%seed93447%_ '0))
          (make-method-specializer-table__%
           _%size-hint93445%_
           _%seed93447%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint93449%_)
        (let ((_%seed93451%_ '0))
          (make-method-specializer-table__%
           _%size-hint93449%_
           _%seed93451%_))))
    (define make-method-specializer-table
      (lambda _g97882_
        (let ((_g97881_ (let () (declare (not safe)) (##length _g97882_))))
          (cond ((let () (declare (not safe)) (##fx= _g97881_ 0))
                 (apply make-method-specializer-table__0 _g97882_))
                ((let () (declare (not safe)) (##fx= _g97881_ 1))
                 (apply make-method-specializer-table__1 _g97882_))
                ((let () (declare (not safe)) (##fx= _g97881_ 2))
                 (apply make-method-specializer-table__% _g97882_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g97882_))))))
    (define method-specializer-table-ref
      (lambda (_%tab93390%_ _%key93391%_ _%default93392%_)
        (let ((_%table93394%_
               (let () (declare (not safe)) (&raw-table-table _%tab93390%_)))
              (_%seed93395%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93390%_))))
          (let* ((_%h93397%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93391%_))
                         _%seed93395%_))
                 (_%size93400%_ (vector-length _%table93394%_))
                 (_%entries93403%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93400%_ '2)))
                 (_%start93406%_
                  (let ((__tmp97883
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93397%_ _%entries93403%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97883 '1))))
            (let _%loop93410%_ ((_%probe93413%_ _%start93406%_)
                                (_%i93415%_ '1)
                                (_%deleted93417%_ '#f))
              (let ((_%k93420%_ (vector-ref _%table93394%_ _%probe93413%_)))
                (if (eq? _%k93420%_ (macro-unused-obj))
                    _%default93392%_
                    (if (eq? _%k93420%_ (macro-deleted-obj))
                        (_%loop93410%_
                         (let ((_%next-probe93425%_
                                (fx+ _%start93406%_
                                     _%i93415%_
                                     (fx* _%i93415%_ _%i93415%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe93425%_ _%size93400%_))
                         (let () (declare (not safe)) (##fx+ _%i93415%_ '1))
                         (let ((_%$e93428%_ _%deleted93417%_))
                           (if _%$e93428%_ _%$e93428%_ _%probe93413%_)))
                        (if (eq? _%key93391%_ _%k93420%_)
                            (vector-ref
                             _%table93394%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93413%_ '1)))
                            (_%loop93410%_
                             (let ((_%next-probe93433%_
                                    (fx+ _%start93406%_
                                         _%i93415%_
                                         (fx* _%i93415%_ _%i93415%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe93433%_ _%size93400%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i93415%_ '1))
                             _%deleted93417%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab93386%_ _%key93387%_ _%value93388%_)
        (if (let ((__tmp97886
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93386%_)))
                  (__tmp97884
                   (let ((__tmp97885
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93386%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp97885 '4))))
              (declare (not safe))
              (##fx< __tmp97886 __tmp97884))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93386%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab93386%_
         _%key93387%_
         _%value93388%_)))
    (define __method-specializer-table-set!
      (lambda (_%tab93337%_ _%key93338%_ _%value93339%_)
        (let ((_%table93342%_
               (let () (declare (not safe)) (&raw-table-table _%tab93337%_)))
              (_%seed93343%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93337%_))))
          (let* ((_%h93345%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93338%_))
                         _%seed93343%_))
                 (_%size93348%_ (vector-length _%table93342%_))
                 (_%entries93351%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93348%_ '2)))
                 (_%start93354%_
                  (let ((__tmp97887
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93345%_ _%entries93351%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97887 '1))))
            (let _%loop93358%_ ((_%probe93361%_ _%start93354%_)
                                (_%i93363%_ '1)
                                (_%deleted93365%_ '#f))
              (let ((_%k93368%_ (vector-ref _%table93342%_ _%probe93361%_)))
                (if (eq? _%k93368%_ (macro-unused-obj))
                    (if _%deleted93365%_
                        (begin
                          (vector-set!
                           _%table93342%_
                           _%deleted93365%_
                           _%key93338%_)
                          (vector-set!
                           _%table93342%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted93365%_ '1))
                           _%value93339%_)
                          ((lambda ()
                             (let ((__tmp97888
                                    (let ((__tmp97889
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab93337%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp97889 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab93337%_
                                __tmp97888)))))
                        (begin
                          (vector-set!
                           _%table93342%_
                           _%probe93361%_
                           _%key93338%_)
                          (vector-set!
                           _%table93342%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe93361%_ '1))
                           _%value93339%_)
                          ((lambda ()
                             (let ((__tmp97890
                                    (let ((__tmp97891
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab93337%_))))
                                      (declare (not safe))
                                      (##fx- __tmp97891 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab93337%_ __tmp97890))
                             (let ((__tmp97892
                                    (let ((__tmp97893
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab93337%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp97893 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab93337%_
                                __tmp97892))))))
                    (if (eq? _%k93368%_ (macro-deleted-obj))
                        (_%loop93358%_
                         (let ((_%next-probe93375%_
                                (fx+ _%start93354%_
                                     _%i93363%_
                                     (fx* _%i93363%_ _%i93363%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe93375%_ _%size93348%_))
                         (let () (declare (not safe)) (##fx+ _%i93363%_ '1))
                         (let ((_%$e93378%_ _%deleted93365%_))
                           (if _%$e93378%_ _%$e93378%_ _%probe93361%_)))
                        (if (eq? _%key93338%_ _%k93368%_)
                            (let ()
                              (vector-set!
                               _%table93342%_
                               _%probe93361%_
                               _%key93338%_)
                              (vector-set!
                               _%table93342%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93361%_ '1))
                               _%value93339%_))
                            (_%loop93358%_
                             (let ((_%next-probe93383%_
                                    (fx+ _%start93354%_
                                         _%i93363%_
                                         (fx* _%i93363%_ _%i93363%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe93383%_ _%size93348%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i93363%_ '1))
                             _%deleted93365%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab93332%_
               _%key93333%_
               _%method-specializer-table-update!93334%_
               _%default93335%_)
        (if (let ((__tmp97896
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93332%_)))
                  (__tmp97894
                   (let ((__tmp97895
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93332%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp97895 '4))))
              (declare (not safe))
              (##fx< __tmp97896 __tmp97894))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93332%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab93332%_
         _%key93333%_
         _%method-specializer-table-update!93334%_
         _%default93335%_)))
    (define __method-specializer-table-update!
      (lambda (_%tab93282%_
               _%key93283%_
               _%method-specializer-table-update!93284%_
               _%default93285%_)
        (let ((_%table93288%_
               (let () (declare (not safe)) (&raw-table-table _%tab93282%_)))
              (_%seed93289%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93282%_))))
          (let* ((_%h93291%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93283%_))
                         _%seed93289%_))
                 (_%size93294%_ (vector-length _%table93288%_))
                 (_%entries93297%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93294%_ '2)))
                 (_%start93300%_
                  (let ((__tmp97897
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93291%_ _%entries93297%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97897 '1))))
            (let _%loop93304%_ ((_%probe93307%_ _%start93300%_)
                                (_%i93309%_ '1)
                                (_%deleted93311%_ '#f))
              (let ((_%k93314%_ (vector-ref _%table93288%_ _%probe93307%_)))
                (if (eq? _%k93314%_ (macro-unused-obj))
                    (if _%deleted93311%_
                        (begin
                          (vector-set!
                           _%table93288%_
                           _%deleted93311%_
                           _%key93283%_)
                          (vector-set!
                           _%table93288%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted93311%_ '1))
                           (_%method-specializer-table-update!93284%_
                            _%default93285%_))
                          ((lambda ()
                             (let ((__tmp97898
                                    (let ((__tmp97899
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab93282%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp97899 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab93282%_
                                __tmp97898)))))
                        (begin
                          (vector-set!
                           _%table93288%_
                           _%probe93307%_
                           _%key93283%_)
                          (vector-set!
                           _%table93288%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe93307%_ '1))
                           (_%method-specializer-table-update!93284%_
                            _%default93285%_))
                          ((lambda ()
                             (let ((__tmp97900
                                    (let ((__tmp97901
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab93282%_))))
                                      (declare (not safe))
                                      (##fx- __tmp97901 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab93282%_ __tmp97900))
                             (let ((__tmp97902
                                    (let ((__tmp97903
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab93282%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp97903 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab93282%_
                                __tmp97902))))))
                    (if (eq? _%k93314%_ (macro-deleted-obj))
                        (_%loop93304%_
                         (let ((_%next-probe93321%_
                                (fx+ _%start93300%_
                                     _%i93309%_
                                     (fx* _%i93309%_ _%i93309%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe93321%_ _%size93294%_))
                         (let () (declare (not safe)) (##fx+ _%i93309%_ '1))
                         (let ((_%$e93324%_ _%deleted93311%_))
                           (if _%$e93324%_ _%$e93324%_ _%probe93307%_)))
                        (if (eq? _%key93283%_ _%k93314%_)
                            (let ()
                              (vector-set!
                               _%table93288%_
                               _%probe93307%_
                               _%key93283%_)
                              (vector-set!
                               _%table93288%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93307%_ '1))
                               (_%method-specializer-table-update!93284%_
                                (vector-ref
                                 _%table93288%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe93307%_ '1))))))
                            (_%loop93304%_
                             (let ((_%next-probe93329%_
                                    (fx+ _%start93300%_
                                         _%i93309%_
                                         (fx* _%i93309%_ _%i93309%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe93329%_ _%size93294%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i93309%_ '1))
                             _%deleted93311%_))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab93237%_ _%key93239%_)
        (let ((_%table93242%_
               (let () (declare (not safe)) (&raw-table-table _%tab93237%_)))
              (_%seed93244%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93237%_))))
          (let* ((_%h93247%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93239%_))
                         _%seed93244%_))
                 (_%size93250%_ (vector-length _%table93242%_))
                 (_%entries93253%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93250%_ '2)))
                 (_%start93256%_
                  (let ((__tmp97904
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93247%_ _%entries93253%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97904 '1))))
            (let _%loop93260%_ ((_%probe93263%_ _%start93256%_)
                                (_%i93265%_ '1))
              (let ((_%k93268%_ (vector-ref _%table93242%_ _%probe93263%_)))
                (if (eq? _%k93268%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93268%_ (macro-deleted-obj))
                        (_%loop93260%_
                         (let ((_%next-probe93273%_
                                (fx+ _%start93256%_
                                     _%i93265%_
                                     (fx* _%i93265%_ _%i93265%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe93273%_ _%size93250%_))
                         (let () (declare (not safe)) (##fx+ _%i93265%_ '1)))
                        (if (eq? _%key93239%_ _%k93268%_)
                            (let ()
                              (vector-set!
                               _%table93242%_
                               _%probe93263%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93242%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93263%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp97905
                                        (let ((__tmp97906
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab93237%_))))
                                          (declare (not safe))
                                          (##fx- __tmp97906 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab93237%_
                                    __tmp97905)))))
                            (_%loop93260%_
                             (let ((_%next-probe93279%_
                                    (fx+ _%start93256%_
                                         _%i93265%_
                                         (fx* _%i93265%_ _%i93265%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe93279%_ _%size93250%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i93265%_ '1))))))))))))
    (define __method-specializers (make-method-specializer-table__% '#f '0))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc93228%_ _%specializer93229%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93233%_ ()
            (if (let ((__tmp97907
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp97907 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again93233%_)))))
        (method-specializer-table-set!
         __method-specializers
         _%method-proc93228%_
         _%specializer93229%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc93218%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93222%_ ()
            (if (let ((__tmp97908
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp97908 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again93222%_)))))
        (let ((_%specializer93226%_
               (method-specializer-table-ref
                __method-specializers
                _%proc93218%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer93226%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass93216%_)
        (let ((__tmp97909
               (let () (declare (not safe)) (##type-id _%klass93216%_))))
          (declare (not safe))
          (symbolic-hash __tmp97909))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint93197%_ _%seed93199%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint93197%_
           __class-specializer-hash-key
           eq?
           _%seed93199%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint93205%_ '#f) (_%seed93207%_ '0))
          (make-class-specializer-table__% _%size-hint93205%_ _%seed93207%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint93209%_)
        (let ((_%seed93211%_ '0))
          (make-class-specializer-table__% _%size-hint93209%_ _%seed93211%_))))
    (define make-class-specializer-table
      (lambda _g97911_
        (let ((_g97910_ (let () (declare (not safe)) (##length _g97911_))))
          (cond ((let () (declare (not safe)) (##fx= _g97910_ 0))
                 (apply make-class-specializer-table__0 _g97911_))
                ((let () (declare (not safe)) (##fx= _g97910_ 1))
                 (apply make-class-specializer-table__1 _g97911_))
                ((let () (declare (not safe)) (##fx= _g97910_ 2))
                 (apply make-class-specializer-table__% _g97911_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g97911_))))))
    (define class-specializer-table-ref
      (lambda (_%tab93150%_ _%key93151%_ _%default93152%_)
        (let ((_%table93154%_
               (let () (declare (not safe)) (&raw-table-table _%tab93150%_)))
              (_%seed93155%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93150%_))))
          (let* ((_%h93157%_
                  (fxxor (__class-specializer-hash-key _%key93151%_)
                         _%seed93155%_))
                 (_%size93160%_ (vector-length _%table93154%_))
                 (_%entries93163%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93160%_ '2)))
                 (_%start93166%_
                  (let ((__tmp97912
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93157%_ _%entries93163%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97912 '1))))
            (let _%loop93170%_ ((_%probe93173%_ _%start93166%_)
                                (_%i93175%_ '1)
                                (_%deleted93177%_ '#f))
              (let ((_%k93180%_ (vector-ref _%table93154%_ _%probe93173%_)))
                (if (eq? _%k93180%_ (macro-unused-obj))
                    _%default93152%_
                    (if (eq? _%k93180%_ (macro-deleted-obj))
                        (_%loop93170%_
                         (let ((_%next-probe93185%_
                                (fx+ _%start93166%_
                                     _%i93175%_
                                     (fx* _%i93175%_ _%i93175%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe93185%_ _%size93160%_))
                         (let () (declare (not safe)) (##fx+ _%i93175%_ '1))
                         (let ((_%$e93188%_ _%deleted93177%_))
                           (if _%$e93188%_ _%$e93188%_ _%probe93173%_)))
                        (if (eq? _%key93151%_ _%k93180%_)
                            (vector-ref
                             _%table93154%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93173%_ '1)))
                            (_%loop93170%_
                             (let ((_%next-probe93193%_
                                    (fx+ _%start93166%_
                                         _%i93175%_
                                         (fx* _%i93175%_ _%i93175%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe93193%_ _%size93160%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i93175%_ '1))
                             _%deleted93177%_))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab93146%_ _%key93147%_ _%value93148%_)
        (if (let ((__tmp97915
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93146%_)))
                  (__tmp97913
                   (let ((__tmp97914
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93146%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp97914 '4))))
              (declare (not safe))
              (##fx< __tmp97915 __tmp97913))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93146%_))
            '#!void)
        (__class-specializer-table-set!
         _%tab93146%_
         _%key93147%_
         _%value93148%_)))
    (define __class-specializer-table-set!
      (lambda (_%tab93097%_ _%key93098%_ _%value93099%_)
        (let ((_%table93102%_
               (let () (declare (not safe)) (&raw-table-table _%tab93097%_)))
              (_%seed93103%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93097%_))))
          (let* ((_%h93105%_
                  (fxxor (__class-specializer-hash-key _%key93098%_)
                         _%seed93103%_))
                 (_%size93108%_ (vector-length _%table93102%_))
                 (_%entries93111%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93108%_ '2)))
                 (_%start93114%_
                  (let ((__tmp97916
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93105%_ _%entries93111%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97916 '1))))
            (let _%loop93118%_ ((_%probe93121%_ _%start93114%_)
                                (_%i93123%_ '1)
                                (_%deleted93125%_ '#f))
              (let ((_%k93128%_ (vector-ref _%table93102%_ _%probe93121%_)))
                (if (eq? _%k93128%_ (macro-unused-obj))
                    (if _%deleted93125%_
                        (begin
                          (vector-set!
                           _%table93102%_
                           _%deleted93125%_
                           _%key93098%_)
                          (vector-set!
                           _%table93102%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted93125%_ '1))
                           _%value93099%_)
                          ((lambda ()
                             (let ((__tmp97917
                                    (let ((__tmp97918
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab93097%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp97918 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab93097%_
                                __tmp97917)))))
                        (begin
                          (vector-set!
                           _%table93102%_
                           _%probe93121%_
                           _%key93098%_)
                          (vector-set!
                           _%table93102%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe93121%_ '1))
                           _%value93099%_)
                          ((lambda ()
                             (let ((__tmp97919
                                    (let ((__tmp97920
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab93097%_))))
                                      (declare (not safe))
                                      (##fx- __tmp97920 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab93097%_ __tmp97919))
                             (let ((__tmp97921
                                    (let ((__tmp97922
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab93097%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp97922 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab93097%_
                                __tmp97921))))))
                    (if (eq? _%k93128%_ (macro-deleted-obj))
                        (_%loop93118%_
                         (let ((_%next-probe93135%_
                                (fx+ _%start93114%_
                                     _%i93123%_
                                     (fx* _%i93123%_ _%i93123%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe93135%_ _%size93108%_))
                         (let () (declare (not safe)) (##fx+ _%i93123%_ '1))
                         (let ((_%$e93138%_ _%deleted93125%_))
                           (if _%$e93138%_ _%$e93138%_ _%probe93121%_)))
                        (if (eq? _%key93098%_ _%k93128%_)
                            (let ()
                              (vector-set!
                               _%table93102%_
                               _%probe93121%_
                               _%key93098%_)
                              (vector-set!
                               _%table93102%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93121%_ '1))
                               _%value93099%_))
                            (_%loop93118%_
                             (let ((_%next-probe93143%_
                                    (fx+ _%start93114%_
                                         _%i93123%_
                                         (fx* _%i93123%_ _%i93123%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe93143%_ _%size93108%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i93123%_ '1))
                             _%deleted93125%_))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab93092%_
               _%key93093%_
               _%class-specializer-table-update!93094%_
               _%default93095%_)
        (if (let ((__tmp97925
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93092%_)))
                  (__tmp97923
                   (let ((__tmp97924
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93092%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp97924 '4))))
              (declare (not safe))
              (##fx< __tmp97925 __tmp97923))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93092%_))
            '#!void)
        (__class-specializer-table-update!
         _%tab93092%_
         _%key93093%_
         _%class-specializer-table-update!93094%_
         _%default93095%_)))
    (define __class-specializer-table-update!
      (lambda (_%tab93042%_
               _%key93043%_
               _%class-specializer-table-update!93044%_
               _%default93045%_)
        (let ((_%table93048%_
               (let () (declare (not safe)) (&raw-table-table _%tab93042%_)))
              (_%seed93049%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93042%_))))
          (let* ((_%h93051%_
                  (fxxor (__class-specializer-hash-key _%key93043%_)
                         _%seed93049%_))
                 (_%size93054%_ (vector-length _%table93048%_))
                 (_%entries93057%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93054%_ '2)))
                 (_%start93060%_
                  (let ((__tmp97926
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93051%_ _%entries93057%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97926 '1))))
            (let _%loop93064%_ ((_%probe93067%_ _%start93060%_)
                                (_%i93069%_ '1)
                                (_%deleted93071%_ '#f))
              (let ((_%k93074%_ (vector-ref _%table93048%_ _%probe93067%_)))
                (if (eq? _%k93074%_ (macro-unused-obj))
                    (if _%deleted93071%_
                        (begin
                          (vector-set!
                           _%table93048%_
                           _%deleted93071%_
                           _%key93043%_)
                          (vector-set!
                           _%table93048%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted93071%_ '1))
                           (_%class-specializer-table-update!93044%_
                            _%default93045%_))
                          ((lambda ()
                             (let ((__tmp97927
                                    (let ((__tmp97928
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab93042%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp97928 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab93042%_
                                __tmp97927)))))
                        (begin
                          (vector-set!
                           _%table93048%_
                           _%probe93067%_
                           _%key93043%_)
                          (vector-set!
                           _%table93048%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe93067%_ '1))
                           (_%class-specializer-table-update!93044%_
                            _%default93045%_))
                          ((lambda ()
                             (let ((__tmp97929
                                    (let ((__tmp97930
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab93042%_))))
                                      (declare (not safe))
                                      (##fx- __tmp97930 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab93042%_ __tmp97929))
                             (let ((__tmp97931
                                    (let ((__tmp97932
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab93042%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp97932 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab93042%_
                                __tmp97931))))))
                    (if (eq? _%k93074%_ (macro-deleted-obj))
                        (_%loop93064%_
                         (let ((_%next-probe93081%_
                                (fx+ _%start93060%_
                                     _%i93069%_
                                     (fx* _%i93069%_ _%i93069%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe93081%_ _%size93054%_))
                         (let () (declare (not safe)) (##fx+ _%i93069%_ '1))
                         (let ((_%$e93084%_ _%deleted93071%_))
                           (if _%$e93084%_ _%$e93084%_ _%probe93067%_)))
                        (if (eq? _%key93043%_ _%k93074%_)
                            (let ()
                              (vector-set!
                               _%table93048%_
                               _%probe93067%_
                               _%key93043%_)
                              (vector-set!
                               _%table93048%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93067%_ '1))
                               (_%class-specializer-table-update!93044%_
                                (vector-ref
                                 _%table93048%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe93067%_ '1))))))
                            (_%loop93064%_
                             (let ((_%next-probe93089%_
                                    (fx+ _%start93060%_
                                         _%i93069%_
                                         (fx* _%i93069%_ _%i93069%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe93089%_ _%size93054%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i93069%_ '1))
                             _%deleted93071%_))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab92997%_ _%key92999%_)
        (let ((_%table93002%_
               (let () (declare (not safe)) (&raw-table-table _%tab92997%_)))
              (_%seed93004%_
               (let () (declare (not safe)) (&raw-table-seed _%tab92997%_))))
          (let* ((_%h93007%_
                  (fxxor (__class-specializer-hash-key _%key92999%_)
                         _%seed93004%_))
                 (_%size93010%_ (vector-length _%table93002%_))
                 (_%entries93013%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93010%_ '2)))
                 (_%start93016%_
                  (let ((__tmp97933
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93007%_ _%entries93013%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp97933 '1))))
            (let _%loop93020%_ ((_%probe93023%_ _%start93016%_)
                                (_%i93025%_ '1))
              (let ((_%k93028%_ (vector-ref _%table93002%_ _%probe93023%_)))
                (if (eq? _%k93028%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93028%_ (macro-deleted-obj))
                        (_%loop93020%_
                         (let ((_%next-probe93033%_
                                (fx+ _%start93016%_
                                     _%i93025%_
                                     (fx* _%i93025%_ _%i93025%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe93033%_ _%size93010%_))
                         (let () (declare (not safe)) (##fx+ _%i93025%_ '1)))
                        (if (eq? _%key92999%_ _%k93028%_)
                            (let ()
                              (vector-set!
                               _%table93002%_
                               _%probe93023%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93002%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93023%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp97934
                                        (let ((__tmp97935
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab92997%_))))
                                          (declare (not safe))
                                          (##fx- __tmp97935 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab92997%_
                                    __tmp97934)))))
                            (_%loop93020%_
                             (let ((_%next-probe93039%_
                                    (fx+ _%start93016%_
                                         _%i93025%_
                                         (fx* _%i93025%_ _%i93025%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe93039%_ _%size93010%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i93025%_ '1))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers (make-class-specializer-table__% '#f '0))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass92983%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass92983%_ 'class))
            (let ((_%klass92987%_ _%klass92983%_))
              (__specialize-class _%klass92987%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1017.25-1017.30"
               'contract:
               'class-type?
               'value:
               _%klass92983%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass92965%_)
        (let* ((_%klass92968%_ _%klass92965%_)
               (_%$e92977%_ (__lookup-class-specializer _%klass92968%_)))
          (if _%$e92977%_
              _%$e92977%_
              (let ((_%method-table92981%_
                     (___specialize-class _%klass92968%_)))
                (__bind-class-specializer!
                 _%klass92968%_
                 _%method-table92981%_)
                _%method-table92981%_)))))
    (define __lookup-class-specializer
      (lambda (_%klass92955%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again92959%_ ()
            (if (let ((__tmp97936
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp97936 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again92959%_)))))
        (let ((_%method-table92963%_
               (class-specializer-table-ref
                __class-specializers
                _%klass92955%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table92963%_)))
    (define __bind-class-specializer!
      (lambda (_%klass92946%_ _%method-table92947%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again92951%_ ()
            (if (let ((__tmp97937
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp97937 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again92951%_)))))
        (class-specializer-table-set!
         __class-specializers
         _%klass92946%_
         _%method-table92947%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass92930%_
               _%method-table92931%_
               _%method92932%_
               _%proc92933%_)
        (let ((_%$e92935%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table92931%_
                  _%method92932%_
                  '#f))))
          (if _%$e92935%_
              _%$e92935%_
              (let ((_%$e92938%_ (__lookup-method-specializer _%proc92933%_)))
                (if _%$e92938%_
                    ((lambda (_%specialize92941%_)
                       (let ((_%specialized-proc92943%_
                              (_%specialize92941%_
                               _%klass92930%_
                               _%method-table92931%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table92931%_
                          _%method92932%_
                          _%specialized-proc92943%_)))
                     _%$e92938%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table92931%_
                       _%method92932%_
                       _%proc92933%_))))))))
    (define ___specialize-class
      (lambda (_%klass92872%_)
        (if (not (let ()
                   (declare (not safe))
                   (##structure-instance-of? _%klass92872%_ 'class)))
            (if (let () (declare (not safe)) (##type? _%klass92872%_))
                (__specialize-class (__shadow-class _%klass92872%_))
                (error '"bad class; cannot specialize" _%klass92872%_))
            (if (class-type-metaclass? _%klass92872%_)
                (let ((__method97782
                       (__method-ref _%klass92872%_ 'specialize-class)))
                  (if __method97782
                      (__method97782 _%klass92872%_)
                      (error '"Missing method"
                             _%klass92872%_
                             'specialize-class)))
                (if (let ((__tmp97938
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass92872%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp97938))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass92872%_)
                    (let ((_%method-table92878%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop92880%_ ((_%rest92882%_
                                           (class-precedence-list
                                            _%klass92872%_)))
                        (let* ((_%rest9288392891%_ _%rest92882%_)
                               (_%else9288592899%_
                                (lambda () _%method-table92878%_))
                               (_%K9288792918%_
                                (lambda (_%rest92902%_ _%xklass92903%_)
                                  (let ((_%xmethod-table9290492906%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass92903%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table9290492906%_
                                        (let* ((_%xmethod-table92909%_
                                                _%xmethod-table9290492906%_)
                                               (__tmp97939
                                                (lambda (_%g9291092913%_
                                                         _%g9291192915%_)
                                                  (__specialize-method
                                                   _%klass92872%_
                                                   _%method-table92878%_
                                                   _%g9291092913%_
                                                   _%g9291192915%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table92909%_
                                           __tmp97939))
                                        '#f))
                                  (_%loop92880%_ _%rest92902%_))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9288392891%_))
                              (let ((_%hd9288892921%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9288392891%_)))
                                    (_%tl9288992923%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9288392891%_))))
                                (let* ((_%xklass92926%_ _%hd9288892921%_)
                                       (_%rest92928%_ _%tl9288992923%_))
                                  (_%K9288792918%_
                                   _%rest92928%_
                                   _%xklass92926%_)))
                              (_%else9288592899%_))))))))))
    (define seal-class!
      (lambda (_%klass92858%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass92858%_ 'class))
            (let ((_%klass92862%_ _%klass92858%_))
              (__seal-class! _%klass92862%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1074.20-1074.25"
               'contract:
               'class-type?
               'value:
               _%klass92858%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass92841%_)
        (let ((_%klass92844%_ _%klass92841%_))
          (if (__class-type-sealed? _%klass92844%_)
              '#!void
              (begin
                (if (__class-type-final? _%klass92844%_)
                    '#!void
                    (error '"cannot seal non-final class" _%klass92844%_))
                (if (__class-type-metaclass? _%klass92844%_)
                    (let ((__method97783
                           (__method-ref _%klass92844%_ 'seal-class!)))
                      (if __method97783
                          (__method97783 _%klass92844%_)
                          (error '"Missing method"
                                 _%klass92844%_
                                 'seal-class!)))
                    (if (let ((__tmp97940
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass92844%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp97940))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass92844%_)
                        (let ((_%method-table92856%_
                               (__specialize-class _%klass92844%_)))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass92844%_
                           _%method-table92856%_
                           '11
                           '#f
                           '#f))))
                (__class-type-seal! _%klass92844%_))))))
    (define next-method
      (lambda (_%subklass92815%_ _%obj92816%_ _%id92817%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass92815%_ 'class))
            (let ((_%subklass92821%_ _%subklass92815%_))
              (if (symbol? _%id92817%_)
                  (let ((_%id92831%_ _%id92817%_))
                    (__next-method _%subklass92821%_ _%obj92816%_ _%id92831%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1098.44-1098.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id92817%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1098.20-1098.28"
               'contract:
               'class-type?
               'value:
               _%subklass92815%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass92752%_ _%obj92753%_ _%id92754%_)
        (let* ((_%subklass92757%_ _%subklass92752%_) (_%id92765%_ _%id92754%_))
          (letrec ((_%find-next-method92774%_
                    (lambda (_%klass92776%_)
                      (let _%lp92778%_ ((_%rest92780%_
                                         (class-precedence-list
                                          _%klass92776%_)))
                        (let* ((_%rest9278192789%_ _%rest92780%_)
                               (_%else9278392797%_ (lambda () '#f))
                               (_%K9278592803%_
                                (lambda (_%rest92800%_ _%klass92801%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass92757%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass92801%_)))
                                      (__mixin-find-method
                                       _%rest92800%_
                                       _%obj92753%_
                                       _%id92765%_)
                                      (_%lp92778%_ _%rest92800%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9278192789%_))
                              (let ((_%hd9278692806%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9278192789%_)))
                                    (_%tl9278792808%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9278192789%_))))
                                (let* ((_%klass92811%_ _%hd9278692806%_)
                                       (_%rest92813%_ _%tl9278792808%_))
                                  (_%K9278592803%_
                                   _%rest92813%_
                                   _%klass92811%_)))
                              (_%else9278392797%_)))))))
            (_%find-next-method92774%_ (class-of _%obj92753%_))))))
    (define call-next-method
      (lambda (_%subklass92725%_ _%obj92726%_ _%id92727%_ . _%args92728%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass92725%_ 'class))
            (let ((_%subklass92732%_ _%subklass92725%_))
              (if (symbol? _%id92727%_)
                  (let ((_%id92742%_ _%id92727%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass92732%_
                             _%obj92726%_
                             _%id92742%_
                             _%args92728%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1109.49-1109.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id92727%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1109.25-1109.33"
               'contract:
               'class-type?
               'value:
               _%subklass92725%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass92696%_ _%obj92697%_ _%id92698%_ . _%args92699%_)
        (let* ((_%subklass92702%_ _%subklass92696%_)
               (_%id92710%_ _%id92698%_)
               (_%$e92719%_
                (__next-method _%subklass92702%_ _%obj92697%_ _%id92710%_)))
          (if _%$e92719%_
              ((lambda (_%methodf92722%_)
                 (apply _%methodf92722%_ _%obj92697%_ _%args92699%_))
               _%$e92719%_)
              (error '"cannot find next method"
                     'object:
                     _%obj92697%_
                     'method:
                     _%id92710%_)))))
    (define write-style
      (lambda (_%we92694%_) (macro-writeenv-style _%we92694%_)))
    (define write-object
      (lambda (_%we92685%_ _%obj92686%_)
        (let ((_%$e92688%_ (__method-ref _%obj92686%_ ':wr)))
          (if _%$e92688%_
              ((lambda (_%method92691%_)
                 (_%method92691%_ _%obj92686%_ _%we92685%_))
               _%$e92688%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we92685%_ _%obj92686%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type92600%_)
        (letrec ((_%shadow-type-id92602%_
                  (lambda (_%type92683%_)
                    (let ((__tmp97941
                           (let ()
                             (declare (not safe))
                             (##type-name _%type92683%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp97941 '"::t"))))
                 (_%shadow-type-name92603%_
                  (lambda (_%type92681%_)
                    (let () (declare (not safe)) (##type-name _%type92681%_))))
                 (_%make-shadow-class92604%_
                  (lambda (_%type92673%_ _%precedence-list92674%_)
                    (let* ((_%super92676%_
                            (if (pair? _%precedence-list92674%_)
                                (cons (car _%precedence-list92674%_) '())
                                '()))
                           (_%klass92678%_
                            (make-class-type
                             (_%shadow-type-id92602%_ _%type92673%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type92673%_))
                             _%super92676%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (if (__type-extensible? _%type92673%_)
                                             '()
                                             (cons (cons 'final: '#t) '()))))
                             '#f)))
                      (let ((__tmp97942
                             (let ()
                               (declare (not safe))
                               (##type-id _%type92673%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp97942
                         _%klass92678%_))
                      _%klass92678%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again92608%_ ()
              (if (let ((__tmp97943
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp97943 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (_%again92608%_)))))
          (let ((_%$e92612%_
                 (let ((__tmp97944
                        (let ()
                          (declare (not safe))
                          (##type-id _%type92600%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp97944 '#f))))
            (if _%$e92612%_
                ((lambda (_%klass92615%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass92615%_)
                 _%$e92612%_)
                (let _%loop92618%_ ((_%super92620%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-super _%type92600%_)))
                                    (_%hierarchy92621%_ '()))
                  (if (not _%super92620%_)
                      (let _%loop92624%_ ((_%rest92626%_ _%hierarchy92621%_)
                                          (_%precedence-list92627%_ '()))
                        (let* ((_%rest9262892636%_ _%rest92626%_)
                               (_%else9263092646%_
                                (lambda ()
                                  (let ((_%klass92644%_
                                         (_%make-shadow-class92604%_
                                          _%type92600%_
                                          _%precedence-list92627%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass92644%_)))
                               (_%K9263292660%_
                                (lambda (_%rest92649%_ _%type92650%_)
                                  (let ((_%$e92652%_
                                         (let ((__tmp97945
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type92650%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp97945
                                            '#f))))
                                    (if _%$e92652%_
                                        ((lambda (_%klass92655%_)
                                           (_%loop92624%_
                                            _%rest92649%_
                                            (cons _%klass92655%_
                                                  _%precedence-list92627%_)))
                                         _%$e92652%_)
                                        (let ((_%klass92658%_
                                               (_%make-shadow-class92604%_
                                                _%type92650%_
                                                _%precedence-list92627%_)))
                                          (_%loop92624%_
                                           _%rest92649%_
                                           (cons _%klass92658%_
                                                 _%precedence-list92627%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9262892636%_))
                              (let ((_%hd9263392663%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9262892636%_)))
                                    (_%tl9263492665%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9262892636%_))))
                                (let* ((_%type92668%_ _%hd9263392663%_)
                                       (_%rest92670%_ _%tl9263492665%_))
                                  (_%K9263292660%_
                                   _%rest92670%_
                                   _%type92668%_)))
                              (_%else9263092646%_))))
                      (_%loop92618%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super92620%_))
                       (cons _%super92620%_ _%hierarchy92621%_)))))))))
    (define class-of
      (lambda (_%obj92573%_)
        (let ()
          (declare (not interrupts-enabled))
          (let ((_%t92577%_
                 (let () (declare (not safe)) (##type _%obj92573%_))))
            (if (fx= _%t92577%_ (macro-type-subtyped))
                (let ((_%st92580%_
                       (let () (declare (not safe)) (##subtype _%obj92573%_))))
                  (if (fx= _%st92580%_ (macro-subtype-structure))
                      (let ((_%klass92583%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj92573%_))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of? _%klass92583%_ 'class))
                            _%klass92583%_
                            (__shadow-class _%klass92583%_)))
                      (if (fx= _%st92580%_ (macro-subtype-boxvalues))
                          (if (let ((__tmp97946
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _%obj92573%_))))
                                (declare (not safe))
                                (##fx= __tmp97946 '1))
                              (__system-class 'box)
                              (__system-class 'values))
                          (let ((_%$e92586%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref __subtype-id _%st92580%_))))
                            (if _%$e92586%_
                                (__system-class _%$e92586%_)
                                (error '"unknown class"
                                       'subtype:
                                       _%st92580%_
                                       'object:
                                       _%obj92573%_))))))
                (if (fx= _%t92577%_ (macro-type-mem2))
                    (__system-class 'pair)
                    (if (fx= _%t92577%_ (macro-type-fixnum))
                        (__system-class 'fixnum)
                        (if (char? _%obj92573%_)
                            (__system-class 'char)
                            (if (eq? _%obj92573%_ '())
                                (__system-class 'null)
                                (if (eq? _%obj92573%_ '#f)
                                    (__system-class 'boolean)
                                    (if (eq? _%obj92573%_ '#t)
                                        (__system-class 'boolean)
                                        (if (eq? _%obj92573%_ '#!void)
                                            (__system-class 'void)
                                            (if (eq? _%obj92573%_ '#!eof)
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
      (lambda (_%id92567%_)
        (let ((_%$e92569%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id92567%_ '#f))))
          (if _%$e92569%_
              _%$e92569%_
              (error '"unknown system class" _%id92567%_)))))
    (define __make-system-class
      (lambda (_%id92562%_ _%super92563%_)
        (let ((_%klass92565%_
               (make-class-type
                _%id92562%_
                _%id92562%_
                _%super92563%_
                '()
                '((system: . #t))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id92562%_ _%klass92565%_))
          _%klass92565%_)))))
