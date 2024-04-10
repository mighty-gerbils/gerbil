(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1712784664)
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
      (let ((_%flags97484%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties97485%_ '((direct-slots:) (system: . #t)))
            (_%slot-table97486%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags97484%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table97486%_
           _%properties97485%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots97460%_
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
             (_%slot-vector97462%_ (list->vector (cons '#f _%slots97460%_)))
             (_%slot-table97469%_
              (let ((_%slot-table97464%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp98927
                       (lambda (_%slot97466%_ _%field97467%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table97464%_
                            _%slot97466%_
                            _%field97467%_))
                         (let ((__tmp98928
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot97466%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table97464%_
                            __tmp98928
                            _%field97467%_))))
                      (__tmp98925
                       (let ((__tmp98926
                              (let ()
                                (declare (not safe))
                                (##length _%slots97460%_))))
                         (declare (not safe))
                         (##iota __tmp98926 '1))))
                  (declare (not safe))
                  (##for-each __tmp98927 _%slots97460%_ __tmp98925))
                _%slot-table97464%_))
             (_%flags97471%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields97477%_
              (list->vector
               (let ((__tmp98929
                      (map (lambda (_%g9747297474%_)
                             (list _%g9747297474%_ '5 '#f))
                           (drop _%slots97460%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp98929))))
             (_%properties97479%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots97460%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t97481%_
              (let ((__tmp98930 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags97471%_
                 ##type-type
                 _%fields97477%_
                 __tmp98930
                 _%slot-vector97462%_
                 _%slot-table97469%_
                 _%properties97479%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t97481%_ _%t97481%_))
        _%t97481%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags97456%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties97457%_ '((direct-slots:) (system: . #t)))
            (_%slot-table97458%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp98931 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags97456%_
           '#f
           '#()
           __tmp98931
           '#(#f)
           _%slot-table97458%_
           _%properties97457%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj97454%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj97454%_ 'class))))
    (define class-type=?
      (lambda (_%x97429%_ _%y97430%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x97429%_ 'class))
            (let ((_%x97434%_ _%x97429%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y97430%_ 'class))
                  (let ((_%y97444%_ _%y97430%_))
                    (__class-type=? _%x97434%_ _%y97444%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y97430%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x97429%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x97408%_ _%y97409%_)
        (let* ((_%x97412%_ _%x97408%_) (_%y97420%_ _%y97409%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x97412%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y97420%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type97394%_)
        (if (let () (declare (not safe)) (##type? _%type97394%_))
            (let ((_%type97398%_ _%type97394%_))
              (__type-opaque? _%type97398%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type97394%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type97382%_)
        (let* ((_%type97385%_ _%type97382%_)
               (__tmp98932
                (let ((__tmp98933
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type97385%_))))
                  (declare (not safe))
                  (##fxand __tmp98933 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp98932 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type97368%_)
        (if (let () (declare (not safe)) (##type? _%type97368%_))
            (let ((_%type97372%_ _%type97368%_))
              (__type-extensible? _%type97372%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type97368%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type97356%_)
        (let* ((_%type97359%_ _%type97356%_)
               (__tmp98934
                (let ((__tmp98935
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type97359%_))))
                  (declare (not safe))
                  (##fxand __tmp98935 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp98934 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type97342%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type97342%_ 'class))
            (let ((_%type97346%_ _%type97342%_))
              (__class-type-final? _%type97346%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type97342%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type97330%_)
        (let* ((_%type97333%_ _%type97330%_)
               (__tmp98936
                (let ((__tmp98937
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type97333%_))))
                  (declare (not safe))
                  (##fxand __tmp98937 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp98936 '0))))
    (define class-type-struct?
      (lambda (_%klass97316%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97316%_ 'class))
            (let ((_%klass97320%_ _%klass97316%_))
              (__class-type-struct? _%klass97320%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass97316%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass97304%_)
        (let* ((_%klass97307%_ _%klass97304%_)
               (__tmp98938
                (let ((__tmp98939
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass97307%_))))
                  (declare (not safe))
                  (##fxand __tmp98939 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp98938 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass97290%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97290%_ 'class))
            (let ((_%klass97294%_ _%klass97290%_))
              (__class-type-sealed? _%klass97294%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass97290%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass97278%_)
        (let* ((_%klass97281%_ _%klass97278%_)
               (__tmp98940
                (let ((__tmp98941
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass97281%_))))
                  (declare (not safe))
                  (##fxand __tmp98941 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp98940 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass97264%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97264%_ 'class))
            (let ((_%klass97268%_ _%klass97264%_))
              (__class-type-metaclass? _%klass97268%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass97264%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass97252%_)
        (let* ((_%klass97255%_ _%klass97252%_)
               (__tmp98942
                (let ((__tmp98943
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass97255%_))))
                  (declare (not safe))
                  (##fxand __tmp98943 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp98942 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass97238%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97238%_ 'class))
            (let ((_%klass97242%_ _%klass97238%_))
              (__class-type-system? _%klass97242%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass97238%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass97226%_)
        (let* ((_%klass97229%_ _%klass97226%_)
               (__tmp98944
                (let ((__tmp98945
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass97229%_))))
                  (declare (not safe))
                  (##fxand __tmp98945 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp98944 class-type-flag-system))))
    (define make-class-type-descriptor
      (lambda (_%type-id97111%_
               _%type-name97112%_
               _%type-super97113%_
               _%precedence-list97114%_
               _%slot-vector97115%_
               _%properties97116%_
               _%constructor97117%_
               _%slot-table97118%_
               _%methods97119%_)
        (letrec ((_%make-props!97122%_
                  (lambda (_%key97195%_)
                    (letrec* ((_%ht97197%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!97198%_
                               (lambda (_%ht97219%_ _%slots97220%_)
                                 (for-each
                                  (lambda (_%g9722197223%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht97219%_
                                       _%g9722197223%_
                                       '#t)))
                                  _%slots97220%_)))
                              (_%put-alist!97199%_
                               (lambda (_%ht97208%_
                                        _%key97209%_
                                        _%alist97210%_)
                                 (let ((_%$e97212%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key97209%_
                                           _%alist97210%_))))
                                   (if _%$e97212%_
                                       ((lambda (_%g9721497216%_)
                                          (_%put-slots!97198%_
                                           _%ht97208%_
                                           _%g9721497216%_))
                                        _%$e97212%_)
                                       '#!void)))))
                      (_%put-alist!97199%_
                       _%ht97197%_
                       _%key97195%_
                       _%properties97116%_)
                      (for-each
                       (lambda (_%mixin97201%_)
                         (let ((_%alist97203%_
                                (##structure-ref
                                 _%mixin97201%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist97203%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key97195%_
                                           _%alist97203%_))))
                               (_%put-slots!97198%_
                                _%ht97197%_
                                (class-type-slot-list _%mixin97201%_))
                               (_%put-alist!97199%_
                                _%ht97197%_
                                _%key97195%_
                                _%alist97203%_))))
                       _%precedence-list97114%_)
                      _%ht97197%_))))
          (let* ((_%transparent?97124%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties97116%_)))
                 (_%all-slots-printable?97129%_
                  (let ((_%$e97126%_ _%transparent?97124%_))
                    (if _%$e97126%_
                        _%$e97126%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties97116%_))))))
                 (_%printable97131%_
                  (if (not _%all-slots-printable?97129%_)
                      (_%make-props!97122%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?97136%_
                  (let ((_%$e97133%_ _%transparent?97124%_))
                    (if _%$e97133%_
                        _%$e97133%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties97116%_))))))
                 (_%equalable97138%_
                  (if (not _%all-slots-equalable?97136%_)
                      (_%make-props!97122%_ 'equal:)
                      '#f))
                 (_%first-new-field97140%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super97113%_ 'class))
                      (let ((__tmp98946
                             (##structure-ref
                              _%type-super97113%_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp98946))
                      '1))
                 (_%field-info-length97142%_
                  (let ((__tmp98947
                         (let ((__tmp98948
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector97115%_))))
                           (declare (not safe))
                           (##fx- __tmp98948 _%first-new-field97140%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp98947)))
                 (_%field-info97144%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length97142%_ '#f)))
                 (_%struct?97146%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties97116%_)))
                 (_%final?97148%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties97116%_)))
                 (_%metaclass97156%_
                  (let ((_%metaclass9714997151%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties97116%_))))
                    (if _%metaclass9714997151%_
                        (let ((_%metaclass97154%_ _%metaclass9714997151%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass97154%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id97111%_
                                     'metaclass:
                                     _%metaclass97154%_))
                          _%metaclass97154%_)
                        '#f)))
                 (_%system?97158%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties97116%_)))
                 (_%opaque?97163%_
                  (let ((_%$e97160%_ (not _%all-slots-equalable?97136%_)))
                    (if _%$e97160%_
                        _%$e97160%_
                        (if _%type-super97113%_
                            (__type-opaque? _%type-super97113%_)
                            '#f))))
                 (_%type-flags97165%_
                  (let ((__tmp98953
                         (if _%final?97148%_ '0 type-flag-extensible))
                        (__tmp98952 (if _%opaque?97163%_ type-flag-opaque '0))
                        (__tmp98951
                         (if _%struct?97146%_ class-type-flag-struct '0))
                        (__tmp98950
                         (if _%metaclass97156%_ class-type-flag-metaclass '0))
                        (__tmp98949
                         (if _%system?97158%_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp98953
                             __tmp98952
                             __tmp98951
                             __tmp98950
                             __tmp98949)))
                 (_%precedence-list97173%_
                  (let ((_%$e97167%_ (memq t::t _%precedence-list97114%_)))
                    (if _%$e97167%_
                        ((lambda (_%tail97170%_)
                           (if (null? (cdr _%tail97170%_))
                               _%precedence-list97114%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list97114%_)))
                         _%$e97167%_)
                        (let ((__tmp98954 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list97114%_ __tmp98954))))))
            (let _%loop97176%_ ((_%i97178%_ _%first-new-field97140%_)
                                (_%j97179%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j97179%_ _%field-info-length97142%_))
                  (let* ((_%slot97181%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector97115%_ _%i97178%_)))
                         (_%flags97189%_
                          (if _%transparent?97124%_
                              '0
                              (let ((__tmp98956
                                     (if (or _%all-slots-printable?97129%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable97131%_
                                                _%slot97181%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp98955
                                     (if (or _%all-slots-equalable?97136%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable97138%_
                                                _%slot97181%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp98956 __tmp98955)))))
                    (vector-set! _%field-info97144%_ _%j97179%_ _%slot97181%_)
                    (vector-set!
                     _%field-info97144%_
                     (let () (declare (not safe)) (##fx+ _%j97179%_ '1))
                     _%flags97189%_)
                    (_%loop97176%_
                     (let () (declare (not safe)) (##fx+ _%i97178%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j97179%_ '3))))
                  '#!void))
            (if _%metaclass97156%_
                (let ((_%val97192%_
                       (make-instance
                        _%metaclass97156%_
                        _%type-id97111%_
                        _%type-name97112%_
                        _%type-flags97165%_
                        _%type-super97113%_
                        _%field-info97144%_
                        _%precedence-list97173%_
                        _%slot-vector97115%_
                        _%slot-table97118%_
                        _%properties97116%_
                        _%constructor97117%_
                        _%methods97119%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val97192%_ 'class))
                      _%val97192%_
                      (error '"bad cast" class::t _%val97192%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id97111%_
                   _%type-name97112%_
                   _%type-flags97165%_
                   _%type-super97113%_
                   _%field-info97144%_
                   _%precedence-list97173%_
                   _%slot-vector97115%_
                   _%slot-table97118%_
                   _%properties97116%_
                   _%constructor97117%_
                   _%methods97119%_)))))))
    (define class-type-id
      (lambda (_%klass97109%_)
        (##structure-ref _%klass97109%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass97107%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97107%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass97104%_ _%val97105%_)
        (##structure-set! _%klass97104%_ _%val97105%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass97099%_ _%val97101%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97099%_
           _%val97101%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass97097%_)
        (##structure-ref _%klass97097%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass97095%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97095%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass97092%_ _%val97093%_)
        (##structure-set! _%klass97092%_ _%val97093%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass97087%_ _%val97089%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97087%_
           _%val97089%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass97085%_)
        (##structure-ref _%klass97085%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass97083%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97083%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass97080%_ _%val97081%_)
        (##structure-set! _%klass97080%_ _%val97081%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass97075%_ _%val97077%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97075%_
           _%val97077%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass97073%_)
        (##structure-ref _%klass97073%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass97071%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97071%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass97068%_ _%val97069%_)
        (##structure-set! _%klass97068%_ _%val97069%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass97063%_ _%val97065%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97063%_
           _%val97065%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass97061%_)
        (##structure-ref _%klass97061%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass97059%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97059%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass97056%_ _%val97057%_)
        (##structure-set! _%klass97056%_ _%val97057%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass97051%_ _%val97053%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97051%_
           _%val97053%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass97049%_)
        (##structure-ref _%klass97049%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass97047%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass97047%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass97044%_ _%val97045%_)
        (##structure-set!
         _%klass97044%_
         _%val97045%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass97039%_ _%val97041%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97039%_
           _%val97041%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass97037%_)
        (##structure-ref _%klass97037%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass97035%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass97035%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass97032%_ _%val97033%_)
        (##structure-set!
         _%klass97032%_
         _%val97033%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass97027%_ _%val97029%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97027%_
           _%val97029%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass97025%_)
        (##structure-ref _%klass97025%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass97023%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97023%_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass97020%_ _%val97021%_)
        (##structure-set!
         _%klass97020%_
         _%val97021%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass97015%_ _%val97017%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97015%_
           _%val97017%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass97013%_)
        (##structure-ref _%klass97013%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass97011%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97011%_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_%klass97008%_ _%val97009%_)
        (##structure-set!
         _%klass97008%_
         _%val97009%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass97003%_ _%val97005%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97003%_
           _%val97005%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass97001%_)
        (##structure-ref _%klass97001%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass96999%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass96999%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass96996%_ _%val96997%_)
        (##structure-set!
         _%klass96996%_
         _%val96997%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass96991%_ _%val96993%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96991%_
           _%val96993%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass96989%_)
        (##structure-ref _%klass96989%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass96987%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96987%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass96984%_ _%val96985%_)
        (##structure-set! _%klass96984%_ _%val96985%_ '11 class::t 'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass96979%_ _%val96981%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96979%_
           _%val96981%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass96965%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96965%_ 'class))
            (let ((_%klass96969%_ _%klass96965%_))
              (__class-type-slot-list _%klass96969%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass96965%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass96953%_)
        (let ((_%klass96956%_ _%klass96953%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass96956%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass96939%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96939%_ 'class))
            (let ((_%klass96943%_ _%klass96939%_))
              (__class-type-field-count _%klass96943%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass96939%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass96927%_)
        (let* ((_%klass96930%_ _%klass96927%_)
               (__tmp98957
                (let ((__tmp98958
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass96930%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp98958))))
          (declare (not safe))
          (##fx- __tmp98957 '1))))
    (define class-type-seal!
      (lambda (_%klass96913%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96913%_ 'class))
            (let ((_%klass96917%_ _%klass96913%_))
              (__class-type-seal! _%klass96917%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass96913%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass96901%_)
        (let ((_%klass96904%_ _%klass96901%_))
          (let ((__tmp98959
                 (let ((__tmp98960
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass96904%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp98960))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass96904%_
             __tmp98959
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct96876%_ _%maybe-super-struct96877%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct96876%_ 'class))
            (let ((_%maybe-sub-struct96881%_ _%maybe-sub-struct96876%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct96877%_
                     'class))
                  (let ((_%maybe-super-struct96891%_
                         _%maybe-super-struct96877%_))
                    (__substruct?
                     _%maybe-sub-struct96881%_
                     _%maybe-super-struct96891%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct96877%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct96876%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct96845%_ _%maybe-super-struct96846%_)
        (let* ((_%maybe-sub-struct96849%_ _%maybe-sub-struct96845%_)
               (_%maybe-super-struct96857%_ _%maybe-super-struct96846%_)
               (_%maybe-super-struct-id96866%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct96857%_))))
          (let _%lp96868%_ ((_%super-struct96870%_ _%maybe-sub-struct96849%_))
            (if (not _%super-struct96870%_)
                '#f
                (if (eq? _%maybe-super-struct-id96866%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct96870%_)))
                    '#t
                    (_%lp96868%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct96870%_)))))))))
    (define base-struct/1
      (lambda (_%klass96840%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96840%_ 'class))
            (if (class-type-struct? _%klass96840%_)
                _%klass96840%_
                (let () (declare (not safe)) (##type-super _%klass96840%_)))
            (if (not _%klass96840%_)
                '#f
                (error '"not a class or false" _%klass96840%_)))))
    (define base-struct/2
      (lambda (_%klass196825%_ _%klass296826%_)
        (let ((_%s196828%_ (base-struct/1 _%klass196825%_))
              (_%s296829%_ (base-struct/1 _%klass296826%_)))
          (if (or (not _%s196828%_)
                  (and _%s296829%_ (substruct? _%s196828%_ _%s296829%_)))
              _%s296829%_
              (if (or (not _%s296829%_)
                      (and _%s196828%_ (substruct? _%s296829%_ _%s196828%_)))
                  _%s196828%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass196825%_
                         _%klass296826%_
                         _%s196828%_
                         _%s296829%_))))))
    (define base-struct/list
      (lambda (_%all-supers96709%_)
        (let* ((_%all-supers9671096735%_ _%all-supers96709%_)
               (_%E9671596739%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers9671096735%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K9673396822%_ (lambda () '#f))
                (_%K9673096808%_
                 (lambda (_%x96806%_) (base-struct/1 _%x96806%_)))
                (_%K9672596785%_
                 (lambda (_%y96782%_ _%x96783%_)
                   (base-struct/2 _%x96783%_ _%y96782%_)))
                (_%K9671696746%_
                 (lambda (_%y96743%_ _%x96744%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x96744%_ _%y96743%_)))))
            (let* ((_%__match9891998920%_
                    (lambda (_%hd9671796749%_ _%tl9671896751%_)
                      (let ((_%x96754%_ _%hd9671796749%_))
                        (letrec ((_%splice-rest9672096756%_
                                  (lambda (_%rest9672496763%_ _%y96765%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%rest9672496763%_))
                                        (_%K9671696746%_ _%y96765%_ _%x96754%_)
                                        (_%E9671596739%_))))
                                 (_%splice-try9672296758%_
                                  (lambda (_%hd9672396767%_
                                           _%rest9672496769%_
                                           _%y9671996770%_)
                                    (let ((_%y96773%_ _%hd9672396767%_))
                                      (_%splice-loop9672196760%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest9672496769%_))
                                       (cons _%y96773%_ _%y9671996770%_)))))
                                 (_%splice-loop9672196760%_
                                  (lambda (_%rest9672496775%_ _%y9671996776%_)
                                    (if (pair? _%rest9672496775%_)
                                        (_%splice-try9672296758%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest9672496775%_))
                                         _%rest9672496775%_
                                         _%y9671996776%_)
                                        (_%splice-rest9672096756%_
                                         _%rest9672496775%_
                                         (reverse _%y9671996776%_))))))
                          (_%splice-loop9672196760%_ _%tl9671896751%_ '())))))
                   (_%try-match9671296818%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all-supers9671096735%_))
                          (let ((_%tl9673296813%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers9671096735%_)))
                                (_%hd9673196811%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers9671096735%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl9673296813%_))
                                (let ((_%x96816%_ _%hd9673196811%_))
                                  (base-struct/1 _%x96816%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl9673296813%_))
                                    (let ((_%tl9672996797%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl9673296813%_)))
                                          (_%hd9672896795%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl9673296813%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl9672996797%_))
                                          (let ((_%x96793%_ _%hd9673196811%_)
                                                (_%y96800%_ _%hd9672896795%_))
                                            (_%K9672596785%_
                                             _%y96800%_
                                             _%x96793%_))
                                          (_%__match9891998920%_
                                           _%hd9673196811%_
                                           _%tl9673296813%_)))
                                    (_%__match9891998920%_
                                     _%hd9673196811%_
                                     _%tl9673296813%_))))
                          (_%E9671596739%_)))))
              (if (let ()
                    (declare (not safe))
                    (##null? _%all-supers9671096735%_))
                  (_%K9673396822%_)
                  (_%try-match9671296818%_)))))))
    (define base-struct
      (lambda _%all-supers96707%_ (base-struct/list _%all-supers96707%_)))
    (define find-super-constructor
      (lambda (_%super96658%_)
        (let _%lp96660%_ ((_%rest96662%_ _%super96658%_)
                          (_%constructor96663%_ '#f))
          (let* ((_%rest9666496672%_ _%rest96662%_)
                 (_%else9666696680%_ (lambda () _%constructor96663%_))
                 (_%K9666896695%_
                  (lambda (_%rest96683%_ _%hd96684%_)
                    (let ((_%$e96686%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd96684%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e96686%_
                          ((lambda (_%xconstructor96689%_)
                             (if (or (not _%constructor96663%_)
                                     (eq? _%constructor96663%_
                                          _%xconstructor96689%_))
                                 (_%lp96660%_
                                  _%rest96683%_
                                  _%xconstructor96689%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor96663%_
                                        _%xconstructor96689%_)))
                           _%$e96686%_)
                          (_%lp96660%_ _%rest96683%_ _%constructor96663%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest9666496672%_))
                (let ((_%hd9666996698%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9666496672%_)))
                      (_%tl9667096700%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9666496672%_))))
                  (let* ((_%hd96703%_ _%hd9666996698%_)
                         (_%rest96705%_ _%tl9667096700%_))
                    (_%K9666896695%_ _%rest96705%_ _%hd96703%_)))
                (_%else9666696680%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list96634%_ _%direct-slots96635%_)
        (let* ((_%next-slot96637%_ '1)
               (_%slot-table96639%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots96641%_ '(__class))
               (_%process-slot96645%_
                (lambda (_%slot96643%_)
                  (if (symbol? _%slot96643%_)
                      '#!void
                      (error '"invalid slot name" _%slot96643%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table96639%_
                              _%slot96643%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table96639%_
                           _%slot96643%_
                           _%next-slot96637%_))
                        (let ((__tmp98961
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot96643%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table96639%_
                           __tmp98961
                           _%next-slot96637%_))
                        (set! _%r-slots96641%_
                              (cons _%slot96643%_ _%r-slots96641%_))
                        (set! _%next-slot96637%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot96637%_ '1))))
                      '#!void)))
               (_%process-slots96651%_
                (lambda (_%g9664696648%_)
                  (for-each _%process-slot96645%_ _%g9664696648%_))))
          (let ((__tmp98963
                 (lambda (_%mixin96654%_)
                   (_%process-slots96651%_
                    (let ((__tmp98964
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin96654%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp98964 '())))))
                (__tmp98962 (reverse _%class-precedence-list96634%_)))
            (declare (not safe))
            (##for-each __tmp98963 __tmp98962))
          (_%process-slots96651%_ _%direct-slots96635%_)
          (let ((_%slot-vector96656%_
                 (list->vector
                  (let () (declare (not safe)) (##reverse _%r-slots96641%_)))))
            (values _%slot-vector96656%_ _%slot-table96639%_)))))
    (define make-class-type
      (lambda (_%id96559%_
               _%name96560%_
               _%direct-supers96561%_
               _%direct-slots96562%_
               _%properties96563%_
               _%constructor96564%_)
        (if (symbol? _%id96559%_)
            (let ((_%id96568%_ _%id96559%_))
              (if (symbol? _%name96560%_)
                  (let ((_%name96578%_ _%name96560%_))
                    (if (list? _%direct-supers96561%_)
                        (let ((_%direct-supers96588%_ _%direct-supers96561%_))
                          (if (list? _%direct-slots96562%_)
                              (let ((_%direct-slots96598%_
                                     _%direct-slots96562%_))
                                (if (list? _%properties96563%_)
                                    (let ((_%properties96608%_
                                           _%properties96563%_))
                                      (if ((lambda (_%$obj96617%_)
                                             (or (not _%$obj96617%_)
                                                 (symbol? _%$obj96617%_)))
                                           _%constructor96564%_)
                                          (let ((_%constructor96624%_
                                                 _%constructor96564%_))
                                            (__make-class-type
                                             _%id96568%_
                                             _%name96578%_
                                             _%direct-supers96588%_
                                             _%direct-slots96598%_
                                             _%properties96608%_
                                             _%constructor96624%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor96564%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties96563%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots96562%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers96561%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name96560%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id96559%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id96428%_
               _%name96429%_
               _%direct-supers96430%_
               _%direct-slots96431%_
               _%properties96432%_
               _%constructor96433%_)
        (let* ((_%id96436%_ _%id96428%_)
               (_%name96444%_ _%name96429%_)
               (_%direct-supers96452%_ _%direct-supers96430%_)
               (_%direct-slots96460%_ _%direct-slots96431%_)
               (_%properties96468%_ _%properties96432%_)
               (_%constructor96476%_ _%constructor96433%_))
          (let ((_%$e96488%_
                 (let ((__tmp98965
                        (lambda (_%$obj96485%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj96485%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp98965 _%direct-supers96452%_))))
            (if _%$e96488%_
                ((lambda (_%g9649096492%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g9649096492%_))
                 _%$e96488%_)
                (let ((_%$e96495%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final? _%direct-supers96452%_))))
                  (if _%$e96495%_
                      ((lambda (_%g9649796499%_)
                         (error '"Cannot extend final class" _%g9649796499%_))
                       _%$e96495%_)
                      '#!void))))
          (let ((_g98966_ (compute-precedence-list _%direct-supers96452%_)))
            (begin
              (let ((_g98967_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g98966_)
                           (##vector-length _g98966_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g98967_ 2)))
                    (error "Context expects 2 values" _g98967_)))
              (let ((_%precedence-list96502%_
                     (let () (declare (not safe)) (##vector-ref _g98966_ 0)))
                    (_%struct-super96503%_
                     (let () (declare (not safe)) (##vector-ref _g98966_ 1))))
                (let ((_g98968_
                       (compute-class-slots
                        _%precedence-list96502%_
                        _%direct-slots96460%_)))
                  (begin
                    (let ((_g98969_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g98968_)
                                 (##vector-length _g98968_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g98969_ 2)))
                          (error "Context expects 2 values" _g98969_)))
                    (let ((_%slot-vector96505%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g98968_ 0)))
                          (_%slot-table96506%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g98968_ 1))))
                      (let* ((_%properties96508%_
                              (cons (cons 'direct-slots: _%direct-slots96460%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers96452%_)
                                          _%properties96468%_)))
                             (_%constructor*96513%_
                              (let ((_%$e96510%_ _%constructor96476%_))
                                (if _%$e96510%_
                                    _%$e96510%_
                                    (find-super-constructor
                                     _%direct-supers96452%_))))
                             (_%precedence-list96556%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties96508%_))
                                      (memq object::t
                                            _%precedence-list96502%_))
                                  _%precedence-list96502%_
                                  (let _%loop96518%_ ((_%tail96520%_
                                                       _%precedence-list96502%_)
                                                      (_%head96521%_ '()))
                                    (let* ((_%tail9652296530%_ _%tail96520%_)
                                           (_%else9652496538%_
                                            (lambda ()
                                              (let ((__tmp98970
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp98970
                                                 _%head96521%_))))
                                           (_%K9652696544%_
                                            (lambda (_%rest96541%_ _%hd96542%_)
                                              (if (eq? _%hd96542%_ t::t)
                                                  (let ((__tmp98971
                                                         (cons object::t
                                                               _%tail96520%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp98971
                                                     _%head96521%_))
                                                  (_%loop96518%_
                                                   _%rest96541%_
                                                   (cons _%hd96542%_
                                                         _%head96521%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tail9652296530%_))
                                          (let ((_%hd9652796547%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail9652296530%_)))
                                                (_%tl9652896549%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail9652296530%_))))
                                            (let* ((_%hd96552%_
                                                    _%hd9652796547%_)
                                                   (_%rest96554%_
                                                    _%tl9652896549%_))
                                              (_%K9652696544%_
                                               _%rest96554%_
                                               _%hd96552%_)))
                                          (_%else9652496538%_)))))))
                        (make-class-type-descriptor
                         _%id96436%_
                         _%name96444%_
                         _%struct-super96503%_
                         _%precedence-list96556%_
                         _%slot-vector96505%_
                         _%properties96508%_
                         _%constructor*96513%_
                         _%slot-table96506%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass96414%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96414%_ 'class))
            (let ((_%klass96418%_ _%klass96414%_))
              (__class-precedence-list _%klass96418%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass96414%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass96402%_)
        (let ((_%klass96405%_ _%klass96402%_))
          (cons _%klass96405%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass96405%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers96399%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers96399%_))))
    (define make-class-predicate
      (lambda (_%klass96385%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96385%_ 'class))
            (let ((_%klass96389%_ _%klass96385%_))
              (__make-class-predicate _%klass96389%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass96385%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass96356%_)
        (let* ((_%klass96359%_ _%klass96356%_)
               (_%tid96368%_
                (let () (declare (not safe)) (##type-id _%klass96359%_))))
          (if (__class-type-final? _%klass96359%_)
              (lambda (_%g9637096372%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g9637096372%_
                   _%tid96368%_)))
              (if (__class-type-struct? _%klass96359%_)
                  (lambda (_%g9637596377%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%g9637596377%_ _%tid96368%_)))
                  (lambda (_%g9638096382%_)
                    (__class-instance? _%klass96359%_ _%g9638096382%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass96331%_ _%slot96332%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96331%_ 'class))
            (let ((_%klass96336%_ _%klass96331%_))
              (if (symbol? _%slot96332%_)
                  (let ((_%slot96346%_ _%slot96332%_))
                    (__make-class-slot-accessor _%klass96336%_ _%slot96346%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot96332%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass96331%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass96299%_ _%slot96300%_)
        (let* ((_%klass96303%_ _%klass96299%_)
               (_%slot96311%_ _%slot96300%_)
               (_%field96320%_
                (let ((__tmp98972
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass96303%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp98972 _%slot96311%_ '#f))))
          (if (not _%field96320%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass96303%_
                       'slot:
                       _%slot96311%_)
                '#!void)
              (if (__class-type-final? _%klass96303%_)
                  (make-final-slot-accessor
                   _%klass96303%_
                   _%slot96311%_
                   _%field96320%_)
                  (if (__class-type-struct? _%klass96303%_)
                      (make-struct-slot-accessor
                       _%klass96303%_
                       _%slot96311%_
                       _%field96320%_)
                      (if (let ((_%strukt96326%_
                                 (base-struct/1 _%klass96303%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt96326%_
                                    'class))
                                 (let ((__tmp98973
                                        (let ((__tmp98974
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt96326%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp98974))))
                                   (declare (not safe))
                                   (##fx< _%field96320%_ __tmp98973))))
                          (make-struct-subclass-slot-accessor
                           _%klass96303%_
                           _%slot96311%_
                           _%field96320%_)
                          (make-class-cached-slot-accessor
                           _%klass96303%_
                           _%slot96311%_
                           _%field96320%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass96274%_ _%slot96275%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96274%_ 'class))
            (let ((_%klass96279%_ _%klass96274%_))
              (if (symbol? _%slot96275%_)
                  (let ((_%slot96289%_ _%slot96275%_))
                    (__make-class-slot-mutator _%klass96279%_ _%slot96289%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot96275%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass96274%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass96242%_ _%slot96243%_)
        (let* ((_%klass96246%_ _%klass96242%_)
               (_%slot96254%_ _%slot96243%_)
               (_%field96263%_
                (let ((__tmp98975
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass96246%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp98975 _%slot96254%_ '#f))))
          (if (not _%field96263%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass96246%_
                       'slot:
                       _%slot96254%_)
                '#!void)
              (if (__class-type-final? _%klass96246%_)
                  (make-final-slot-mutator
                   _%klass96246%_
                   _%slot96254%_
                   _%field96263%_)
                  (if (__class-type-struct? _%klass96246%_)
                      (make-struct-slot-mutator
                       _%klass96246%_
                       _%slot96254%_
                       _%field96263%_)
                      (if (let ((_%strukt96269%_
                                 (base-struct/1 _%klass96246%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt96269%_
                                    'class))
                                 (let ((__tmp98976
                                        (let ((__tmp98977
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt96269%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp98977))))
                                   (declare (not safe))
                                   (##fx< _%field96263%_ __tmp98976))))
                          (make-struct-subclass-slot-mutator
                           _%klass96246%_
                           _%slot96254%_
                           _%field96263%_)
                          (make-class-cached-slot-mutator
                           _%klass96246%_
                           _%slot96254%_
                           _%field96263%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass96217%_ _%slot96218%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96217%_ 'class))
            (let ((_%klass96222%_ _%klass96217%_))
              (if (symbol? _%slot96218%_)
                  (let ((_%slot96232%_ _%slot96218%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass96222%_
                     _%slot96232%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot96218%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass96217%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass96185%_ _%slot96186%_)
        (let* ((_%klass96189%_ _%klass96185%_)
               (_%slot96197%_ _%slot96186%_)
               (_%field96206%_
                (let ((__tmp98978
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass96189%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp98978 _%slot96197%_ '#f))))
          (if (not _%field96206%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass96189%_
                       'slot:
                       _%slot96197%_)
                '#!void)
              (if (__class-type-final? _%klass96189%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass96189%_
                   _%slot96197%_
                   _%field96206%_)
                  (if (__class-type-struct? _%klass96189%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass96189%_
                       _%slot96197%_
                       _%field96206%_)
                      (if (let ((_%strukt96212%_
                                 (base-struct/1 _%klass96189%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt96212%_
                                    'class))
                                 (let ((__tmp98979
                                        (let ((__tmp98980
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt96212%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp98980))))
                                   (declare (not safe))
                                   (##fx< _%field96206%_ __tmp98979))))
                          (make-struct-slot-unchecked-accessor
                           _%klass96189%_
                           _%slot96197%_
                           _%field96206%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass96189%_
                           _%slot96197%_
                           _%field96206%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass96160%_ _%slot96161%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96160%_ 'class))
            (let ((_%klass96165%_ _%klass96160%_))
              (if (symbol? _%slot96161%_)
                  (let ((_%slot96175%_ _%slot96161%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass96165%_
                     _%slot96175%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot96161%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass96160%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass96128%_ _%slot96129%_)
        (let* ((_%klass96132%_ _%klass96128%_)
               (_%slot96140%_ _%slot96129%_)
               (_%field96149%_
                (let ((__tmp98981
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass96132%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp98981 _%slot96140%_ '#f))))
          (if (not _%field96149%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass96132%_
                       'slot:
                       _%slot96140%_)
                '#!void)
              (if (__class-type-final? _%klass96132%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass96132%_
                   _%slot96140%_
                   _%field96149%_)
                  (if (__class-type-struct? _%klass96132%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass96132%_
                       _%slot96140%_
                       _%field96149%_)
                      (if (let ((_%strukt96155%_
                                 (base-struct/1 _%klass96132%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt96155%_
                                    'class))
                                 (let ((__tmp98982
                                        (let ((__tmp98983
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt96155%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp98983))))
                                   (declare (not safe))
                                   (##fx< _%field96149%_ __tmp98982))))
                          (make-struct-slot-unchecked-mutator
                           _%klass96132%_
                           _%slot96140%_
                           _%field96149%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass96132%_
                           _%slot96140%_
                           _%field96149%_))))))))
    (define not-an-instance__%
      (lambda (_%object96112%_ _%class96113%_ _%slot96114%_)
        (apply error
               '"not an instance"
               'object:
               _%object96112%_
               'class:
               _%class96113%_
               (if _%slot96114%_ (cons 'slot: (cons _%slot96114%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object96119%_ _%class96120%_)
        (let ((_%slot96122%_ '#f))
          (not-an-instance__% _%object96119%_ _%class96120%_ _%slot96122%_))))
    (define not-an-instance
      (lambda _g98985_
        (let ((_g98984_ (let () (declare (not safe)) (##length _g98985_))))
          (cond ((let () (declare (not safe)) (##fx= _g98984_ 2))
                 (apply not-an-instance__0 _g98985_))
                ((let () (declare (not safe)) (##fx= _g98984_ 3))
                 (apply not-an-instance__% _g98985_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g98985_))))))
    (define make-final-slot-accessor
      (lambda (_%klass96105%_ _%slot96106%_ _%field96107%_)
        (lambda (_%obj96109%_)
          (##direct-structure-ref
           _%obj96109%_
           _%field96107%_
           _%klass96105%_
           _%slot96106%_))))
    (define make-final-slot-mutator
      (lambda (_%klass96098%_ _%slot96099%_ _%field96100%_)
        (lambda (_%obj96102%_ _%val96103%_)
          (##direct-structure-set!
           _%obj96102%_
           _%val96103%_
           _%field96100%_
           _%klass96098%_
           _%slot96099%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass96092%_ _%slot96093%_ _%field96094%_)
        (lambda (_%obj96096%_)
          (##structure-ref
           _%obj96096%_
           _%field96094%_
           _%klass96092%_
           _%slot96093%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass96085%_ _%slot96086%_ _%field96087%_)
        (lambda (_%obj96089%_ _%val96090%_)
          (##structure-set!
           _%obj96089%_
           _%val96090%_
           _%field96087%_
           _%klass96085%_
           _%slot96086%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass96079%_ _%slot96080%_ _%field96081%_)
        (lambda (_%obj96083%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj96083%_
             _%field96081%_
             _%klass96079%_
             _%slot96080%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass96072%_ _%slot96073%_ _%field96074%_)
        (lambda (_%obj96076%_ _%val96077%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj96076%_
             _%val96077%_
             _%field96074%_
             _%klass96072%_
             _%slot96073%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass96066%_ _%slot96067%_ _%field96068%_)
        (lambda (_%obj96070%_)
          (if (class-instance? _%klass96066%_ _%obj96070%_)
              (unchecked-slot-ref _%obj96070%_ _%field96068%_)
              (not-an-instance__%
               _%obj96070%_
               _%klass96066%_
               _%slot96067%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass96059%_ _%slot96060%_ _%field96061%_)
        (lambda (_%obj96063%_ _%val96064%_)
          (if (class-instance? _%klass96059%_ _%obj96063%_)
              (unchecked-field-set! _%obj96063%_ _%field96061%_ _%val96064%_)
              (not-an-instance__%
               _%obj96063%_
               _%klass96059%_
               _%slot96060%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass96050%_ _%slot96051%_ _%field96052%_)
        (lambda (_%obj96054%_)
          (if (let ((__tmp98986
                     (let () (declare (not safe)) (##type-id _%klass96050%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj96054%_ __tmp98986))
              (unchecked-field-ref _%obj96054%_ _%field96052%_)
              (if (class-instance? _%klass96050%_ _%obj96054%_)
                  (unchecked-slot-ref _%obj96054%_ _%slot96051%_)
                  (not-an-instance__%
                   _%obj96054%_
                   _%klass96050%_
                   _%slot96051%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass96040%_ _%slot96041%_ _%field96042%_)
        (lambda (_%obj96044%_ _%val96045%_)
          (if (let ((__tmp98987
                     (let () (declare (not safe)) (##type-id _%klass96040%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj96044%_ __tmp98987))
              (unchecked-field-set! _%obj96044%_ _%field96042%_ _%val96045%_)
              (if (class-instance? _%klass96040%_ _%obj96044%_)
                  (unchecked-slot-set! _%obj96044%_ _%slot96041%_ _%val96045%_)
                  (not-an-instance__%
                   _%obj96044%_
                   _%klass96040%_
                   _%slot96041%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass96034%_ _%slot96035%_ _%field96036%_)
        (lambda (_%obj96038%_)
          (if (let ((__tmp98988
                     (let () (declare (not safe)) (##type-id _%klass96034%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj96038%_ __tmp98988))
              (unchecked-field-ref _%obj96038%_ _%field96036%_)
              (unchecked-slot-ref _%obj96038%_ _%slot96035%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass96027%_ _%slot96028%_ _%field96029%_)
        (lambda (_%obj96031%_ _%val96032%_)
          (if (let ((__tmp98989
                     (let () (declare (not safe)) (##type-id _%klass96027%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj96031%_ __tmp98989))
              (unchecked-field-set! _%obj96031%_ _%field96029%_ _%val96032%_)
              (unchecked-slot-set! _%obj96031%_ _%slot96028%_ _%val96032%_)))))
    (define class-slot-offset
      (lambda (_%klass96002%_ _%slot96003%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96002%_ 'class))
            (let ((_%klass96007%_ _%klass96002%_))
              (if (let () (declare (not safe)) (symbolic? _%slot96003%_))
                  (let ((_%slot96017%_ _%slot96003%_))
                    (__class-slot-offset _%klass96007%_ _%slot96017%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot96003%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass96002%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass95981%_ _%slot95982%_)
        (let* ((_%klass95985%_ _%klass95981%_)
               (_%slot95993%_ _%slot95982%_)
               (__tmp98990
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass95985%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp98990 _%slot95993%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass95955%_ _%obj95956%_ _%slot95957%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95955%_ 'class))
            (let ((_%klass95961%_ _%klass95955%_))
              (if (let () (declare (not safe)) (symbolic? _%slot95957%_))
                  (let ((_%slot95971%_ _%slot95957%_))
                    (__class-slot-ref
                     _%klass95961%_
                     _%obj95956%_
                     _%slot95971%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot95957%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass95955%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass95931%_ _%obj95932%_ _%slot95933%_)
        (let* ((_%klass95936%_ _%klass95931%_) (_%slot95944%_ _%slot95933%_))
          (if (__class-instance? _%klass95936%_ _%obj95932%_)
              (let ((_%off95953%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj95932%_))
                      _%slot95944%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj95932%_
                 _%off95953%_
                 _%klass95936%_
                 _%slot95944%_))
              (not-an-instance__0 _%obj95932%_ _%klass95936%_)))))
    (define class-slot-set!
      (lambda (_%klass95904%_ _%obj95905%_ _%slot95906%_ _%val95907%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95904%_ 'class))
            (let ((_%klass95911%_ _%klass95904%_))
              (if (let () (declare (not safe)) (symbolic? _%slot95906%_))
                  (let ((_%slot95921%_ _%slot95906%_))
                    (__class-slot-set!
                     _%klass95911%_
                     _%obj95905%_
                     _%slot95921%_
                     _%val95907%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot95906%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass95904%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass95879%_ _%obj95880%_ _%slot95881%_ _%val95882%_)
        (let* ((_%klass95885%_ _%klass95879%_) (_%slot95893%_ _%slot95881%_))
          (if (__class-instance? _%klass95885%_ _%obj95880%_)
              (let ((_%off95902%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj95880%_))
                      _%slot95893%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj95880%_
                 _%val95882%_
                 _%off95902%_
                 _%klass95885%_
                 _%slot95893%_))
              (not-an-instance__0 _%obj95880%_ _%klass95885%_)))))
    (define unchecked-field-ref
      (lambda (_%obj95876%_ _%off95877%_)
        (let ((__tmp98991
               (let () (declare (not safe)) (##structure-type _%obj95876%_))))
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj95876%_
           _%off95877%_
           __tmp98991
           '#f))))
    (define unchecked-field-set!
      (lambda (_%obj95872%_ _%off95873%_ _%val95874%_)
        (let ((__tmp98992
               (let () (declare (not safe)) (##structure-type _%obj95872%_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj95872%_
           _%val95874%_
           _%off95873%_
           __tmp98992
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj95869%_ _%slot95870%_)
        (unchecked-field-ref
         _%obj95869%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj95869%_))
          _%slot95870%_))))
    (define unchecked-slot-set!
      (lambda (_%obj95865%_ _%slot95866%_ _%val95867%_)
        (unchecked-field-set!
         _%obj95865%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj95865%_))
          _%slot95866%_)
         _%val95867%_)))
    (define slot-ref__%
      (lambda (_%obj95827%_ _%slot95828%_ _%E95829%_)
        (if (symbol? _%slot95828%_)
            (let ((_%slot95833%_ _%slot95828%_))
              (if (procedure? _%E95829%_)
                  (let ((_%E95843%_ _%E95829%_))
                    (__slot-ref__% _%obj95827%_ _%slot95833%_ _%E95843%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E95829%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot95828%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj95856%_ _%slot95857%_)
        (let ((_%E95859%_ __slot-error))
          (slot-ref__% _%obj95856%_ _%slot95857%_ _%E95859%_))))
    (define slot-ref
      (lambda _g98994_
        (let ((_g98993_ (let () (declare (not safe)) (##length _g98994_))))
          (cond ((let () (declare (not safe)) (##fx= _g98993_ 2))
                 (apply slot-ref__0 _g98994_))
                ((let () (declare (not safe)) (##fx= _g98993_ 3))
                 (apply slot-ref__% _g98994_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g98994_))))))
    (define __slot-ref__%
      (lambda (_%obj95783%_ _%slot95784%_ _%E95785%_)
        (let* ((_%slot95788%_ _%slot95784%_)
               (_%E95796%_ _%E95785%_)
               (_%klass95805%_ (class-of _%obj95783%_))
               (_%$e95808%_
                (__class-slot-offset _%klass95805%_ _%slot95788%_)))
          (if _%$e95808%_
              ((lambda (_%off95811%_)
                 (unchecked-field-ref _%obj95783%_ _%off95811%_))
               _%$e95808%_)
              (let ()
                (declare (not safe))
                (_%E95796%_ _%obj95783%_ _%slot95788%_))))))
    (define __slot-ref__0
      (lambda (_%obj95817%_ _%slot95818%_)
        (let ((_%E95820%_ __slot-error))
          (__slot-ref__% _%obj95817%_ _%slot95818%_ _%E95820%_))))
    (define __slot-ref
      (lambda _g98996_
        (let ((_g98995_ (let () (declare (not safe)) (##length _g98996_))))
          (cond ((let () (declare (not safe)) (##fx= _g98995_ 2))
                 (apply __slot-ref__0 _g98996_))
                ((let () (declare (not safe)) (##fx= _g98995_ 3))
                 (apply __slot-ref__% _g98996_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g98996_))))))
    (define slot-set!__%
      (lambda (_%obj95741%_ _%slot95742%_ _%val95743%_ _%E95744%_)
        (if (symbol? _%slot95742%_)
            (let ((_%slot95748%_ _%slot95742%_))
              (if (procedure? _%E95744%_)
                  (let ((_%E95758%_ _%E95744%_))
                    (__slot-set!__%
                     _%obj95741%_
                     _%slot95748%_
                     _%val95743%_
                     _%E95758%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E95744%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot95742%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj95771%_ _%slot95772%_ _%val95773%_)
        (let ((_%E95775%_ __slot-error))
          (slot-set!__% _%obj95771%_ _%slot95772%_ _%val95773%_ _%E95775%_))))
    (define slot-set!
      (lambda _g98998_
        (let ((_g98997_ (let () (declare (not safe)) (##length _g98998_))))
          (cond ((let () (declare (not safe)) (##fx= _g98997_ 3))
                 (apply slot-set!__0 _g98998_))
                ((let () (declare (not safe)) (##fx= _g98997_ 4))
                 (apply slot-set!__% _g98998_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g98998_))))))
    (define __slot-set!__%
      (lambda (_%obj95694%_ _%slot95695%_ _%val95696%_ _%E95697%_)
        (let* ((_%slot95700%_ _%slot95695%_)
               (_%E95708%_ _%E95697%_)
               (_%klass95717%_ (class-of _%obj95694%_))
               (_%$e95720%_
                (__class-slot-offset _%klass95717%_ _%slot95700%_)))
          (if _%$e95720%_
              ((lambda (_%off95723%_)
                 (unchecked-field-set! _%obj95694%_ _%off95723%_ _%val95696%_))
               _%$e95720%_)
              (let ()
                (declare (not safe))
                (_%E95708%_ _%obj95694%_ _%slot95700%_))))))
    (define __slot-set!__0
      (lambda (_%obj95729%_ _%slot95730%_ _%val95731%_)
        (let ((_%E95733%_ __slot-error))
          (__slot-set!__%
           _%obj95729%_
           _%slot95730%_
           _%val95731%_
           _%E95733%_))))
    (define __slot-set!
      (lambda _g99000_
        (let ((_g98999_ (let () (declare (not safe)) (##length _g99000_))))
          (cond ((let () (declare (not safe)) (##fx= _g98999_ 3))
                 (apply __slot-set!__0 _g99000_))
                ((let () (declare (not safe)) (##fx= _g98999_ 4))
                 (apply __slot-set!__% _g99000_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g99000_))))))
    (define __slot-error
      (lambda (_%obj95690%_ _%slot95691%_)
        (error '"Cannot find slot"
               'object:
               _%obj95690%_
               'slot:
               _%slot95691%_)))
    (define subclass?
      (lambda (_%maybe-sub-class95665%_ _%maybe-super-class95666%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class95665%_ 'class))
            (let ((_%maybe-sub-class95670%_ _%maybe-sub-class95665%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class95666%_
                     'class))
                  (let ((_%maybe-super-class95680%_
                         _%maybe-super-class95666%_))
                    (__subclass?
                     _%maybe-sub-class95670%_
                     _%maybe-super-class95680%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class95666%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class95665%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class95637%_ _%maybe-super-class95638%_)
        (let* ((_%maybe-sub-class95641%_ _%maybe-sub-class95637%_)
               (_%maybe-super-class95649%_ _%maybe-super-class95638%_)
               (_%maybe-super-class-id95658%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class95649%_)))
               (_%$e95660%_
                (eq? _%maybe-super-class-id95658%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class95641%_)))))
          (if _%$e95660%_
              _%$e95660%_
              (let ((__tmp99002
                     (lambda (_%super-class95663%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class95663%_))
                            _%maybe-super-class-id95658%_)))
                    (__tmp99001
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class95641%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp99002 __tmp99001))))))
    (define object?
      (lambda (_%o95634%_)
        (if (let () (declare (not safe)) (##structure? _%o95634%_))
            (let ((__tmp99003
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o95634%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp99003 'class))
            '#f)))
    (define object-type
      (lambda (_%o95629%_)
        (if (let () (declare (not safe)) (##structure? _%o95629%_))
            (let ((_%klass95632%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o95629%_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass95632%_ 'class))
                  _%klass95632%_
                  (begin
                    (error '"not an object" _%o95629%_ _%klass95632%_)
                    '#!void)))
            (begin (error '"not an object" _%o95629%_) '#!void))))
    (define direct-instance?
      (lambda (_%klass95614%_ _%obj95615%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95614%_ 'class))
            (let ((_%klass95619%_ _%klass95614%_))
              (__direct-instance? _%klass95619%_ _%obj95615%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass95614%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass95601%_ _%obj95602%_)
        (let* ((_%klass95605%_ _%klass95601%_)
               (__tmp99004
                (let () (declare (not safe)) (##type-id _%klass95605%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj95602%_ __tmp99004))))
    (define immediate-instance-of?
      (lambda (_%klass95597%_ _%obj95598%_)
        (if (let () (declare (not safe)) (##structure? _%obj95598%_))
            (eq? _%klass95597%_
                 (let () (declare (not safe)) (##structure-type _%obj95598%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass95582%_ _%obj95583%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95582%_ 'class))
            (let ((_%klass95587%_ _%klass95582%_))
              (__struct-instance? _%klass95587%_ _%obj95583%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass95582%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass95569%_ _%obj95570%_)
        (let* ((_%klass95573%_ _%klass95569%_)
               (__tmp99005
                (let () (declare (not safe)) (##type-id _%klass95573%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj95570%_ __tmp99005))))
    (define class-instance?
      (lambda (_%klass95554%_ _%obj95555%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95554%_ 'class))
            (let ((_%klass95559%_ _%klass95554%_))
              (__class-instance? _%klass95559%_ _%obj95555%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass95554%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass95539%_ _%obj95540%_)
        (let* ((_%klass95543%_ _%klass95539%_)
               (_%type95552%_ (class-of _%obj95540%_)))
          (__subclass? _%type95552%_ _%klass95543%_))))
    (define make-object
      (lambda (_%klass95514%_ _%k95515%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95514%_ 'class))
            (let ((_%klass95519%_ _%klass95514%_))
              (if (fixnum? _%k95515%_)
                  (let ((_%k95529%_ _%k95515%_))
                    (__make-object _%klass95519%_ _%k95529%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k95515%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass95514%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass95491%_ _%k95492%_)
        (let* ((_%klass95495%_ _%klass95491%_) (_%k95503%_ _%k95492%_))
          (if (__class-type-system? _%klass95495%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass95495%_)
                '#!void)
              (let ((_%obj95512%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass95495%_ _%k95503%_))))
                (object-fill! _%obj95512%_ '#f))))))
    (define object-fill!
      (lambda (_%obj95476%_ _%fill95477%_)
        (if '#t
            (let ((_%obj95481%_ _%obj95476%_))
              (__object-fill! _%obj95481%_ _%fill95477%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj95476%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj95458%_ _%fill95459%_)
        (let ((_%obj95462%_ _%obj95458%_))
          (let _%loop95471%_ ((_%i95473%_
                               (let ((__tmp99006
                                      (let ()
                                        (declare (not safe))
                                        (##structure-length _%obj95462%_))))
                                 (declare (not safe))
                                 (##fx- __tmp99006 '1))))
            (if (let () (declare (not safe)) (##fx> _%i95473%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj95462%_
                     _%fill95459%_
                     _%i95473%_
                     '#f
                     '#f))
                  (_%loop95471%_
                   (let () (declare (not safe)) (##fx- _%i95473%_ '1))))
                _%obj95462%_)))))
    (define new-instance
      (lambda (_%klass95444%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95444%_ 'class))
            (let ((_%klass95448%_ _%klass95444%_))
              (__new-instance _%klass95448%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass95444%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass95432%_)
        (let* ((_%klass95435%_ _%klass95432%_)
               (__obj98921
                (let ((__tmp99007
                       (let ((__tmp99008
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass95435%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp99008))))
                  (declare (not safe))
                  (##make-structure _%klass95435%_ __tmp99007))))
          (object-fill! __obj98921 '#f)
          __obj98921)))
    (define make-instance
      (lambda (_%klass95417%_ . _%args95418%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95417%_ 'class))
            (let ((_%klass95422%_ _%klass95417%_))
              (declare (not safe))
              (##apply __make-instance _%klass95422%_ _%args95418%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass95417%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass95389%_ . _%args95390%_)
        (let* ((_%klass95393%_ _%klass95389%_)
               (_%$e95402%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass95393%_ '10 '#f '#f))))
          (if _%$e95402%_
              ((lambda (_%kons-id95405%_)
                 (let ((_%obj95407%_ (__new-instance _%klass95393%_)))
                   (___constructor-init!
                    _%klass95393%_
                    _%kons-id95405%_
                    _%obj95407%_
                    _%args95390%_)
                   _%obj95407%_))
               _%$e95402%_)
              (if (__class-type-metaclass? _%klass95393%_)
                  (let ((_%obj95410%_ (__new-instance _%klass95393%_)))
                    (__metaclass-instance-init!
                     _%klass95393%_
                     _%obj95410%_
                     _%args95390%_)
                    _%obj95410%_)
                  (if (not (__class-type-struct? _%klass95393%_))
                      (let ((_%obj95413%_ (__new-instance _%klass95393%_)))
                        (___class-instance-init!
                         _%klass95393%_
                         _%obj95413%_
                         _%args95390%_)
                        _%obj95413%_)
                      (if (let ((__tmp99010
                                 (__class-type-field-count _%klass95393%_))
                                (__tmp99009
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args95390%_))))
                            (declare (not safe))
                            (##fx= __tmp99010 __tmp99009))
                          (apply ##structure _%klass95393%_ _%args95390%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass95393%_
                                   'slots:
                                   (__class-type-slot-list _%klass95393%_)
                                   'args:
                                   _%args95390%_)
                            '#!void))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj95374%_ . _%args95375%_)
        (if '#t
            (let ((_%obj95379%_ _%obj95374%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj95379%_ _%args95375%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj95374%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj95361%_ . _%args95362%_)
        (let ((_%obj95365%_ _%obj95361%_))
          (if (let ((__tmp99012
                     (let () (declare (not safe)) (##length _%args95362%_)))
                    (__tmp99011
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj95365%_))))
                (declare (not safe))
                (##fx< __tmp99012 __tmp99011))
              (___struct-instance-init! _%obj95365%_ _%args95362%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj95365%_
                     'args:
                     _%args95362%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj95320%_ _%args95321%_)
        (let _%lp95323%_ ((_%k95325%_ '1) (_%rest95326%_ _%args95321%_))
          (let* ((_%rest9532795335%_ _%rest95326%_)
                 (_%else9532995343%_ (lambda () _%obj95320%_))
                 (_%K9533195349%_
                  (lambda (_%rest95346%_ _%hd95347%_)
                    (unchecked-field-set! _%obj95320%_ _%k95325%_ _%hd95347%_)
                    (_%lp95323%_
                     (let () (declare (not safe)) (##fx+ _%k95325%_ '1))
                     _%rest95346%_))))
            (if (let () (declare (not safe)) (##pair? _%rest9532795335%_))
                (let ((_%hd9533295352%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9532795335%_)))
                      (_%tl9533395354%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9532795335%_))))
                  (let* ((_%hd95357%_ _%hd9533295352%_)
                         (_%rest95359%_ _%tl9533395354%_))
                    (_%K9533195349%_ _%rest95359%_ _%hd95357%_)))
                (_%else9532995343%_))))))
    (define class-instance-init!
      (lambda (_%obj95305%_ . _%args95306%_)
        (if '#t
            (let ((_%obj95310%_ _%obj95305%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj95310%_ _%args95306%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj95305%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj95292%_ . _%args95293%_)
        (let ((_%obj95296%_ _%obj95292%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj95296%_))
           _%obj95296%_
           _%args95293%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass95234%_ _%obj95235%_ _%args95236%_)
        (let _%lp95238%_ ((_%rest95240%_ _%args95236%_))
          (let* ((_%rest9524195251%_ _%rest95240%_)
                 (_%else9524395259%_
                  (lambda ()
                    (if (null? _%rest95240%_)
                        _%obj95235%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass95234%_
                               'rest:
                               _%rest95240%_))))
                 (_%K9524595273%_
                  (lambda (_%rest95262%_ _%val95263%_ _%key95264%_)
                    (if (not (keyword? _%key95264%_))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key95264%_)
                        (let ((_%$e95267%_
                               (__class-slot-offset
                                _%klass95234%_
                                _%key95264%_)))
                          (if _%$e95267%_
                              ((lambda (_%off95270%_)
                                 (unchecked-field-set!
                                  _%obj95235%_
                                  _%off95270%_
                                  _%val95263%_)
                                 (_%lp95238%_ _%rest95262%_))
                               _%$e95267%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass95234%_
                                     'slot:
                                     _%key95264%_)))))))
            (if (let () (declare (not safe)) (##pair? _%rest9524195251%_))
                (let ((_%hd9524695276%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9524195251%_)))
                      (_%tl9524795278%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9524195251%_))))
                  (let ((_%key95281%_ _%hd9524695276%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9524795278%_))
                        (let ((_%hd9524895283%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9524795278%_)))
                              (_%tl9524995285%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9524795278%_))))
                          (let* ((_%val95288%_ _%hd9524895283%_)
                                 (_%rest95290%_ _%tl9524995285%_))
                            (_%K9524595273%_
                             _%rest95290%_
                             _%val95288%_
                             _%key95281%_)))
                        (_%else9524395259%_))))
                (_%else9524395259%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass95230%_ _%obj95231%_ _%args95232%_)
        (apply call-method
               _%klass95230%_
               'instance-init!
               _%obj95231%_
               _%args95232%_)))
    (define constructor-init!
      (lambda (_%klass95193%_ _%kons-id95194%_ _%obj95195%_ . _%args95196%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95193%_ 'class))
            (let ((_%klass95200%_ _%klass95193%_))
              (if (symbol? _%kons-id95194%_)
                  (let ((_%kons-id95210%_ _%kons-id95194%_))
                    (if '#t
                        (let ((_%obj95220%_ _%obj95195%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass95200%_
                                   _%kons-id95210%_
                                   _%obj95220%_
                                   _%args95196%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                           'contract:
                           'true
                           'value:
                           _%obj95195%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id95194%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass95193%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass95162%_ _%kons-id95163%_ _%obj95164%_ . _%args95165%_)
        (let* ((_%klass95168%_ _%klass95162%_)
               (_%kons-id95176%_ _%kons-id95163%_)
               (_%obj95184%_ _%obj95164%_))
          (___constructor-init!
           _%klass95168%_
           _%kons-id95176%_
           _%obj95184%_
           _%args95165%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass95151%_ _%kons-id95152%_ _%obj95153%_ _%args95154%_)
        (let ((_%$e95156%_
               (__find-method _%klass95151%_ _%obj95153%_ _%kons-id95152%_)))
          (if _%$e95156%_
              ((lambda (_%kons95159%_)
                 (apply _%kons95159%_ _%obj95153%_ _%args95154%_)
                 _%obj95153%_)
               _%$e95156%_)
              (error '"missing constructor"
                     'class:
                     _%klass95151%_
                     'method:
                     _%kons-id95152%_)))))
    (define struct-copy
      (lambda (_%struct95137%_)
        (if '#t
            (let ((_%struct95141%_ _%struct95137%_))
              (__struct-copy _%struct95141%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct95137%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct95125%_)
        (let ((_%struct95128%_ _%struct95125%_))
          (declare (not safe))
          (##structure-copy _%struct95128%_))))
    (define struct->list
      (lambda (_%obj95111%_)
        (if '#t
            (let ((_%obj95115%_ _%obj95111%_)) (__struct->list _%obj95115%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj95111%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj95099%_)
        (let ((_%obj95102%_ _%obj95099%_))
          (declare (not safe))
          (##vector->list _%obj95102%_))))
    (define class->list
      (lambda (_%obj95085%_)
        (if '#t
            (let ((_%obj95089%_ _%obj95085%_)) (__class->list _%obj95089%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@837.20-837.23"
               'contract:
               'true
               'value:
               _%obj95085%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj95061%_)
        (let* ((_%obj95064%_ _%obj95061%_)
               (_%klass95073%_
                (let () (declare (not safe)) (##structure-type _%obj95064%_)))
               (_%slot-vector95075%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass95073%_ '7 '#f '#f))))
          (let _%loop95077%_ ((_%index95079%_
                               (let ((__tmp99013
                                      (let ()
                                        (declare (not safe))
                                        (##vector-length
                                         _%slot-vector95075%_))))
                                 (declare (not safe))
                                 (##fx- __tmp99013 '1)))
                              (_%plist95080%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index95079%_ '1))
                (cons _%klass95073%_ _%plist95080%_)
                (let ((_%slot95083%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%slot-vector95075%_ _%index95079%_))))
                  (_%loop95077%_
                   (let () (declare (not safe)) (##fx- _%index95079%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot95083%_))
                         (cons (unchecked-field-ref
                                _%obj95064%_
                                _%index95079%_)
                               _%plist95080%_)))))))))
    (define call-method
      (lambda (_%obj95045%_ _%id95046%_ . _%args95047%_)
        (if (symbol? _%id95046%_)
            (let ((_%id95051%_ _%id95046%_))
              (declare (not safe))
              (##apply __call-method _%obj95045%_ _%id95051%_ _%args95047%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.24-852.26"
               'contract:
               'symbol?
               'value:
               _%id95046%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj95014%_ _%id95015%_ . _%args95016%_)
        (let* ((_%id95019%_ _%id95015%_)
               (_%$e95028%_ (__method-ref _%obj95014%_ _%id95019%_)))
          (if _%$e95028%_
              ((lambda (_%method95031%_)
                 (let ((_%method95033%_ _%method95031%_))
                   (apply _%method95033%_ _%obj95014%_ _%args95016%_)))
               _%$e95028%_)
              (error '"cannot find method"
                     'object:
                     _%obj95014%_
                     'method:
                     _%id95019%_)))))
    (define method-ref
      (lambda (_%obj94999%_ _%id95000%_)
        (if (symbol? _%id95000%_)
            (let ((_%id95004%_ _%id95000%_))
              (__method-ref _%obj94999%_ _%id95004%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@879.23-879.25"
               'contract:
               'symbol?
               'value:
               _%id95000%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj94986%_ _%id94987%_)
        (let ((_%id94990%_ _%id94987%_))
          (__find-method (class-of _%obj94986%_) _%obj94986%_ _%id94990%_))))
    (define checked-method-ref
      (lambda (_%obj94979%_ _%id94980%_)
        (let ((_%$e94983%_ (method-ref _%obj94979%_ _%id94980%_)))
          (if _%$e94983%_
              _%$e94983%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj94979%_
                       'method:
                       _%id94980%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj94964%_ _%id94965%_)
        (if (symbol? _%id94965%_)
            (let ((_%id94969%_ _%id94965%_))
              (__bound-method-ref _%obj94964%_ _%id94969%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@887.29-887.31"
               'contract:
               'symbol?
               'value:
               _%id94965%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj94932%_ _%id94933%_)
        (let* ((_%id94936%_ _%id94933%_)
               (_%$e94945%_ (__method-ref _%obj94932%_ _%id94936%_)))
          (if _%$e94945%_
              ((lambda (_%method94948%_)
                 (let ((_%method94950%_ _%method94948%_))
                   (lambda _%args94961%_
                     (apply _%method94950%_ _%obj94932%_ _%args94961%_))))
               _%$e94945%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj94917%_ _%id94918%_)
        (if (symbol? _%id94918%_)
            (let ((_%id94922%_ _%id94918%_))
              (__checked-bound-method-ref _%obj94917%_ _%id94922%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@896.37-896.39"
               'contract:
               'symbol?
               'value:
               _%id94918%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj94900%_ _%id94901%_)
        (let* ((_%id94904%_ _%id94901%_)
               (_%method94913%_ (checked-method-ref _%obj94900%_ _%id94904%_)))
          (lambda _%args94915%_
            (apply _%method94913%_ _%obj94900%_ _%args94915%_)))))
    (define find-method
      (lambda (_%klass94874%_ _%obj94875%_ _%id94876%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94874%_ 'class))
            (let ((_%klass94880%_ _%klass94874%_))
              (if (symbol? _%id94876%_)
                  (let ((_%id94890%_ _%id94876%_))
                    (__find-method _%klass94880%_ _%obj94875%_ _%id94890%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@901.41-901.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id94876%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@901.20-901.25"
               'contract:
               'class-type?
               'value:
               _%klass94874%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass94847%_ _%obj94848%_ _%id94849%_)
        (let* ((_%klass94852%_ _%klass94847%_)
               (_%id94860%_ _%id94849%_)
               (_%$e94869%_
                (__direct-method-ref _%klass94852%_ _%obj94848%_ _%id94860%_)))
          (if _%$e94869%_
              _%$e94869%_
              (if (__class-type-sealed? _%klass94852%_)
                  '#f
                  (__mixin-method-ref
                   _%klass94852%_
                   _%obj94848%_
                   _%id94860%_))))))
    (define mixin-find-method
      (lambda (_%mixins94831%_ _%obj94832%_ _%id94833%_)
        (if (symbol? _%id94833%_)
            (let ((_%id94837%_ _%id94833%_))
              (__mixin-find-method _%mixins94831%_ _%obj94832%_ _%id94837%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@909.37-909.39"
               'contract:
               'symbol?
               'value:
               _%id94833%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins94813%_ _%obj94814%_ _%id94815%_)
        (let* ((_%id94818%_ _%id94815%_)
               (__tmp99014
                (lambda (_%g9482694828%_)
                  (direct-method-ref
                   _%g9482694828%_
                   _%obj94814%_
                   _%id94818%_))))
          (declare (not safe))
          (__ormap1 __tmp99014 _%mixins94813%_))))
    (define direct-method-ref
      (lambda (_%klass94787%_ _%obj94788%_ _%id94789%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94787%_ 'class))
            (let ((_%klass94793%_ _%klass94787%_))
              (if (symbol? _%id94789%_)
                  (let ((_%id94803%_ _%id94789%_))
                    (__direct-method-ref
                     _%klass94793%_
                     _%obj94788%_
                     _%id94803%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@912.47-912.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id94789%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@912.26-912.31"
               'contract:
               'class-type?
               'value:
               _%klass94787%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass94741%_ _%obj94742%_ _%id94743%_)
        (let* ((_%klass94746%_ _%klass94741%_) (_%id94754%_ _%id94743%_))
          (letrec ((_%metaclass-resolve-method94763%_
                    (lambda ()
                      (let ((__method98922
                             (__method-ref _%klass94746%_ 'direct-method-ref)))
                        (if __method98922
                            (let ()
                              (declare (not safe))
                              (__method98922
                               _%klass94746%_
                               _%obj94742%_
                               _%id94754%_))
                            (begin
                              (error '"Missing method"
                                     _%klass94746%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!94764%_
                    (lambda ()
                      (let ((_%method94784%_
                             (_%metaclass-resolve-method94763%_)))
                        (let ((__tmp99016
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass94746%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp99015
                               (if _%method94784%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp99016
                           _%id94754%_
                           __tmp99015))
                        _%method94784%_))))
            (let ((_%$e94766%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass94746%_ '11 '#f '#f))))
              (if _%$e94766%_
                  ((lambda (_%ht94769%_)
                     (let ((_%method94771%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht94769%_
                               _%id94754%_
                               '#f))))
                       (if (procedure? _%method94771%_)
                           _%method94771%_
                           (if (__class-type-metaclass? _%klass94746%_)
                               (let ((_%$e94775%_ _%method94771%_))
                                 (if (eq? 'resolved _%$e94775%_)
                                     (_%metaclass-resolve-method94763%_)
                                     (if (eq? 'unknown _%$e94775%_)
                                         '#f
                                         (_%metaclass-resolve-method!94764%_))))
                               '#f))))
                   _%$e94766%_)
                  (if (__class-type-metaclass? _%klass94746%_)
                      (let ((_%tab94780%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass94746%_
                           _%tab94780%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!94764%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass94715%_ _%obj94716%_ _%id94717%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94715%_ 'class))
            (let ((_%klass94721%_ _%klass94715%_))
              (if (symbol? _%id94717%_)
                  (let ((_%id94731%_ _%id94717%_))
                    (__mixin-method-ref
                     _%klass94721%_
                     _%obj94716%_
                     _%id94731%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@942.46-942.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id94717%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@942.25-942.30"
               'contract:
               'class-type?
               'value:
               _%klass94715%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass94693%_ _%obj94694%_ _%id94695%_)
        (let* ((_%klass94698%_ _%klass94693%_) (_%id94706%_ _%id94695%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass94698%_ '6 '#f '#f))
           _%obj94694%_
           _%id94706%_))))
    (define bind-method!__%
      (lambda (_%klass94652%_ _%id94653%_ _%proc94654%_ _%rebind?94655%_)
        (if (symbol? _%id94653%_)
            (let ((_%id94659%_ _%id94653%_))
              (if (procedure? _%proc94654%_)
                  (let ((_%proc94669%_ _%proc94654%_))
                    (__bind-method!__%
                     _%klass94652%_
                     _%id94659%_
                     _%proc94669%_
                     _%rebind?94655%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@945.42-945.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc94654%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@945.27-945.29"
               'contract:
               'symbol?
               'value:
               _%id94653%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass94682%_ _%id94683%_ _%proc94684%_)
        (let ((_%rebind?94686%_ '#f))
          (bind-method!__%
           _%klass94682%_
           _%id94683%_
           _%proc94684%_
           _%rebind?94686%_))))
    (define bind-method!
      (lambda _g99018_
        (let ((_g99017_ (let () (declare (not safe)) (##length _g99018_))))
          (cond ((let () (declare (not safe)) (##fx= _g99017_ 3))
                 (apply bind-method!__0 _g99018_))
                ((let () (declare (not safe)) (##fx= _g99017_ 4))
                 (apply bind-method!__% _g99018_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g99018_))))))
    (define __bind-method!__%
      (lambda (_%klass94603%_ _%id94604%_ _%proc94605%_ _%rebind?94606%_)
        (let* ((_%id94609%_ _%id94604%_) (_%proc94617%_ _%proc94605%_))
          (letrec ((_%bind!94626%_
                    (lambda (_%ht94635%_)
                      (if (and (not _%rebind?94606%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht94635%_
                                  _%id94609%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass94603%_
                                 'method:
                                 _%id94609%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht94635%_
                               _%id94609%_
                               _%proc94617%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass94603%_ 'class))
                (let ((_%ht94629%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass94603%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht94629%_
                      (_%bind!94626%_ _%ht94629%_)
                      (let ((_%ht94631%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass94603%_
                           _%ht94631%_
                           '11
                           '#f
                           '#f))
                        (_%bind!94626%_ _%ht94631%_))))
                (if (let () (declare (not safe)) (##type? _%klass94603%_))
                    (let ((__tmp99019 (__shadow-class _%klass94603%_)))
                      (declare (not safe))
                      (__bind-method!
                       __tmp99019
                       _%id94609%_
                       _%proc94617%_
                       _%rebind?94606%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass94603%_)))))))
    (define __bind-method!__0
      (lambda (_%klass94640%_ _%id94641%_ _%proc94642%_)
        (let ((_%rebind?94644%_ '#f))
          (__bind-method!__%
           _%klass94640%_
           _%id94641%_
           _%proc94642%_
           _%rebind?94644%_))))
    (define __bind-method!
      (lambda _g99021_
        (let ((_g99020_ (let () (declare (not safe)) (##length _g99021_))))
          (cond ((let () (declare (not safe)) (##fx= _g99020_ 3))
                 (apply __bind-method!__0 _g99021_))
                ((let () (declare (not safe)) (##fx= _g99020_ 4))
                 (apply __bind-method!__% _g99021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g99021_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint94583%_ _%seed94585%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint94583%_
           procedure-hash
           eq?
           _%seed94585%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint94591%_ '#f) (_%seed94593%_ '0))
          (make-method-specializer-table__%
           _%size-hint94591%_
           _%seed94593%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint94595%_)
        (let ((_%seed94597%_ '0))
          (make-method-specializer-table__%
           _%size-hint94595%_
           _%seed94597%_))))
    (define make-method-specializer-table
      (lambda _g99023_
        (let ((_g99022_ (let () (declare (not safe)) (##length _g99023_))))
          (cond ((let () (declare (not safe)) (##fx= _g99022_ 0))
                 (apply make-method-specializer-table__0 _g99023_))
                ((let () (declare (not safe)) (##fx= _g99022_ 1))
                 (apply make-method-specializer-table__1 _g99023_))
                ((let () (declare (not safe)) (##fx= _g99022_ 2))
                 (apply make-method-specializer-table__% _g99023_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g99023_))))))
    (define method-specializer-table-ref
      (lambda (_%tab94536%_ _%key94537%_ _%default94538%_)
        (let ((_%table94540%_
               (let () (declare (not safe)) (&raw-table-table _%tab94536%_)))
              (_%seed94541%_
               (let () (declare (not safe)) (&raw-table-seed _%tab94536%_))))
          (let* ((_%h94543%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key94537%_))
                         _%seed94541%_))
                 (_%size94546%_ (vector-length _%table94540%_))
                 (_%entries94549%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size94546%_ '2)))
                 (_%start94552%_
                  (let ((__tmp99024
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h94543%_ _%entries94549%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99024 '1))))
            (let _%loop94556%_ ((_%probe94559%_ _%start94552%_)
                                (_%i94561%_ '1)
                                (_%deleted94563%_ '#f))
              (let ((_%k94566%_ (vector-ref _%table94540%_ _%probe94559%_)))
                (if (eq? _%k94566%_ (macro-unused-obj))
                    _%default94538%_
                    (if (eq? _%k94566%_ (macro-deleted-obj))
                        (_%loop94556%_
                         (let ((_%next-probe94571%_
                                (fx+ _%start94552%_
                                     _%i94561%_
                                     (fx* _%i94561%_ _%i94561%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe94571%_ _%size94546%_))
                         (let () (declare (not safe)) (##fx+ _%i94561%_ '1))
                         (let ((_%$e94574%_ _%deleted94563%_))
                           (if _%$e94574%_ _%$e94574%_ _%probe94559%_)))
                        (if (eq? _%key94537%_ _%k94566%_)
                            (vector-ref
                             _%table94540%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe94559%_ '1)))
                            (_%loop94556%_
                             (let ((_%next-probe94579%_
                                    (fx+ _%start94552%_
                                         _%i94561%_
                                         (fx* _%i94561%_ _%i94561%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe94579%_ _%size94546%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i94561%_ '1))
                             _%deleted94563%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab94532%_ _%key94533%_ _%value94534%_)
        (if (let ((__tmp99027
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab94532%_)))
                  (__tmp99025
                   (let ((__tmp99026
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab94532%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp99026 '4))))
              (declare (not safe))
              (##fx< __tmp99027 __tmp99025))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab94532%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab94532%_
         _%key94533%_
         _%value94534%_)))
    (define __method-specializer-table-set!
      (lambda (_%tab94483%_ _%key94484%_ _%value94485%_)
        (let ((_%table94488%_
               (let () (declare (not safe)) (&raw-table-table _%tab94483%_)))
              (_%seed94489%_
               (let () (declare (not safe)) (&raw-table-seed _%tab94483%_))))
          (let* ((_%h94491%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key94484%_))
                         _%seed94489%_))
                 (_%size94494%_ (vector-length _%table94488%_))
                 (_%entries94497%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size94494%_ '2)))
                 (_%start94500%_
                  (let ((__tmp99028
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h94491%_ _%entries94497%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99028 '1))))
            (let _%loop94504%_ ((_%probe94507%_ _%start94500%_)
                                (_%i94509%_ '1)
                                (_%deleted94511%_ '#f))
              (let ((_%k94514%_ (vector-ref _%table94488%_ _%probe94507%_)))
                (if (eq? _%k94514%_ (macro-unused-obj))
                    (if _%deleted94511%_
                        (begin
                          (vector-set!
                           _%table94488%_
                           _%deleted94511%_
                           _%key94484%_)
                          (vector-set!
                           _%table94488%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted94511%_ '1))
                           _%value94485%_)
                          ((lambda ()
                             (let ((__tmp99029
                                    (let ((__tmp99030
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab94483%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99030 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab94483%_
                                __tmp99029)))))
                        (begin
                          (vector-set!
                           _%table94488%_
                           _%probe94507%_
                           _%key94484%_)
                          (vector-set!
                           _%table94488%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe94507%_ '1))
                           _%value94485%_)
                          ((lambda ()
                             (let ((__tmp99031
                                    (let ((__tmp99032
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab94483%_))))
                                      (declare (not safe))
                                      (##fx- __tmp99032 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab94483%_ __tmp99031))
                             (let ((__tmp99033
                                    (let ((__tmp99034
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab94483%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99034 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab94483%_
                                __tmp99033))))))
                    (if (eq? _%k94514%_ (macro-deleted-obj))
                        (_%loop94504%_
                         (let ((_%next-probe94521%_
                                (fx+ _%start94500%_
                                     _%i94509%_
                                     (fx* _%i94509%_ _%i94509%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe94521%_ _%size94494%_))
                         (let () (declare (not safe)) (##fx+ _%i94509%_ '1))
                         (let ((_%$e94524%_ _%deleted94511%_))
                           (if _%$e94524%_ _%$e94524%_ _%probe94507%_)))
                        (if (eq? _%key94484%_ _%k94514%_)
                            (let ()
                              (vector-set!
                               _%table94488%_
                               _%probe94507%_
                               _%key94484%_)
                              (vector-set!
                               _%table94488%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe94507%_ '1))
                               _%value94485%_))
                            (_%loop94504%_
                             (let ((_%next-probe94529%_
                                    (fx+ _%start94500%_
                                         _%i94509%_
                                         (fx* _%i94509%_ _%i94509%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe94529%_ _%size94494%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i94509%_ '1))
                             _%deleted94511%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab94478%_
               _%key94479%_
               _%method-specializer-table-update!94480%_
               _%default94481%_)
        (if (let ((__tmp99037
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab94478%_)))
                  (__tmp99035
                   (let ((__tmp99036
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab94478%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp99036 '4))))
              (declare (not safe))
              (##fx< __tmp99037 __tmp99035))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab94478%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab94478%_
         _%key94479%_
         _%method-specializer-table-update!94480%_
         _%default94481%_)))
    (define __method-specializer-table-update!
      (lambda (_%tab94428%_
               _%key94429%_
               _%method-specializer-table-update!94430%_
               _%default94431%_)
        (let ((_%table94434%_
               (let () (declare (not safe)) (&raw-table-table _%tab94428%_)))
              (_%seed94435%_
               (let () (declare (not safe)) (&raw-table-seed _%tab94428%_))))
          (let* ((_%h94437%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key94429%_))
                         _%seed94435%_))
                 (_%size94440%_ (vector-length _%table94434%_))
                 (_%entries94443%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size94440%_ '2)))
                 (_%start94446%_
                  (let ((__tmp99038
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h94437%_ _%entries94443%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99038 '1))))
            (let _%loop94450%_ ((_%probe94453%_ _%start94446%_)
                                (_%i94455%_ '1)
                                (_%deleted94457%_ '#f))
              (let ((_%k94460%_ (vector-ref _%table94434%_ _%probe94453%_)))
                (if (eq? _%k94460%_ (macro-unused-obj))
                    (if _%deleted94457%_
                        (begin
                          (vector-set!
                           _%table94434%_
                           _%deleted94457%_
                           _%key94429%_)
                          (vector-set!
                           _%table94434%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted94457%_ '1))
                           (_%method-specializer-table-update!94430%_
                            _%default94431%_))
                          ((lambda ()
                             (let ((__tmp99039
                                    (let ((__tmp99040
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab94428%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99040 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab94428%_
                                __tmp99039)))))
                        (begin
                          (vector-set!
                           _%table94434%_
                           _%probe94453%_
                           _%key94429%_)
                          (vector-set!
                           _%table94434%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe94453%_ '1))
                           (_%method-specializer-table-update!94430%_
                            _%default94431%_))
                          ((lambda ()
                             (let ((__tmp99041
                                    (let ((__tmp99042
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab94428%_))))
                                      (declare (not safe))
                                      (##fx- __tmp99042 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab94428%_ __tmp99041))
                             (let ((__tmp99043
                                    (let ((__tmp99044
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab94428%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99044 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab94428%_
                                __tmp99043))))))
                    (if (eq? _%k94460%_ (macro-deleted-obj))
                        (_%loop94450%_
                         (let ((_%next-probe94467%_
                                (fx+ _%start94446%_
                                     _%i94455%_
                                     (fx* _%i94455%_ _%i94455%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe94467%_ _%size94440%_))
                         (let () (declare (not safe)) (##fx+ _%i94455%_ '1))
                         (let ((_%$e94470%_ _%deleted94457%_))
                           (if _%$e94470%_ _%$e94470%_ _%probe94453%_)))
                        (if (eq? _%key94429%_ _%k94460%_)
                            (let ()
                              (vector-set!
                               _%table94434%_
                               _%probe94453%_
                               _%key94429%_)
                              (vector-set!
                               _%table94434%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe94453%_ '1))
                               (_%method-specializer-table-update!94430%_
                                (vector-ref
                                 _%table94434%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe94453%_ '1))))))
                            (_%loop94450%_
                             (let ((_%next-probe94475%_
                                    (fx+ _%start94446%_
                                         _%i94455%_
                                         (fx* _%i94455%_ _%i94455%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe94475%_ _%size94440%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i94455%_ '1))
                             _%deleted94457%_))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab94383%_ _%key94385%_)
        (let ((_%table94388%_
               (let () (declare (not safe)) (&raw-table-table _%tab94383%_)))
              (_%seed94390%_
               (let () (declare (not safe)) (&raw-table-seed _%tab94383%_))))
          (let* ((_%h94393%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key94385%_))
                         _%seed94390%_))
                 (_%size94396%_ (vector-length _%table94388%_))
                 (_%entries94399%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size94396%_ '2)))
                 (_%start94402%_
                  (let ((__tmp99045
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h94393%_ _%entries94399%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99045 '1))))
            (let _%loop94406%_ ((_%probe94409%_ _%start94402%_)
                                (_%i94411%_ '1))
              (let ((_%k94414%_ (vector-ref _%table94388%_ _%probe94409%_)))
                (if (eq? _%k94414%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k94414%_ (macro-deleted-obj))
                        (_%loop94406%_
                         (let ((_%next-probe94419%_
                                (fx+ _%start94402%_
                                     _%i94411%_
                                     (fx* _%i94411%_ _%i94411%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe94419%_ _%size94396%_))
                         (let () (declare (not safe)) (##fx+ _%i94411%_ '1)))
                        (if (eq? _%key94385%_ _%k94414%_)
                            (let ()
                              (vector-set!
                               _%table94388%_
                               _%probe94409%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table94388%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe94409%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp99046
                                        (let ((__tmp99047
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab94383%_))))
                                          (declare (not safe))
                                          (##fx- __tmp99047 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab94383%_
                                    __tmp99046)))))
                            (_%loop94406%_
                             (let ((_%next-probe94425%_
                                    (fx+ _%start94402%_
                                         _%i94411%_
                                         (fx* _%i94411%_ _%i94411%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe94425%_ _%size94396%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i94411%_ '1))))))))))))
    (define __method-specializers (make-method-specializer-table__% '#f '0))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc94374%_ _%specializer94375%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again94379%_ ()
            (if (let ((__tmp99048
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp99048 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again94379%_)))))
        (method-specializer-table-set!
         __method-specializers
         _%method-proc94374%_
         _%specializer94375%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc94364%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again94368%_ ()
            (if (let ((__tmp99049
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp99049 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again94368%_)))))
        (let ((_%specializer94372%_
               (method-specializer-table-ref
                __method-specializers
                _%proc94364%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer94372%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass94362%_)
        (let ((__tmp99050
               (let () (declare (not safe)) (##type-id _%klass94362%_))))
          (declare (not safe))
          (symbolic-hash __tmp99050))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint94343%_ _%seed94345%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint94343%_
           __class-specializer-hash-key
           eq?
           _%seed94345%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint94351%_ '#f) (_%seed94353%_ '0))
          (make-class-specializer-table__% _%size-hint94351%_ _%seed94353%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint94355%_)
        (let ((_%seed94357%_ '0))
          (make-class-specializer-table__% _%size-hint94355%_ _%seed94357%_))))
    (define make-class-specializer-table
      (lambda _g99052_
        (let ((_g99051_ (let () (declare (not safe)) (##length _g99052_))))
          (cond ((let () (declare (not safe)) (##fx= _g99051_ 0))
                 (apply make-class-specializer-table__0 _g99052_))
                ((let () (declare (not safe)) (##fx= _g99051_ 1))
                 (apply make-class-specializer-table__1 _g99052_))
                ((let () (declare (not safe)) (##fx= _g99051_ 2))
                 (apply make-class-specializer-table__% _g99052_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g99052_))))))
    (define class-specializer-table-ref
      (lambda (_%tab94296%_ _%key94297%_ _%default94298%_)
        (let ((_%table94300%_
               (let () (declare (not safe)) (&raw-table-table _%tab94296%_)))
              (_%seed94301%_
               (let () (declare (not safe)) (&raw-table-seed _%tab94296%_))))
          (let* ((_%h94303%_
                  (fxxor (__class-specializer-hash-key _%key94297%_)
                         _%seed94301%_))
                 (_%size94306%_ (vector-length _%table94300%_))
                 (_%entries94309%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size94306%_ '2)))
                 (_%start94312%_
                  (let ((__tmp99053
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h94303%_ _%entries94309%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99053 '1))))
            (let _%loop94316%_ ((_%probe94319%_ _%start94312%_)
                                (_%i94321%_ '1)
                                (_%deleted94323%_ '#f))
              (let ((_%k94326%_ (vector-ref _%table94300%_ _%probe94319%_)))
                (if (eq? _%k94326%_ (macro-unused-obj))
                    _%default94298%_
                    (if (eq? _%k94326%_ (macro-deleted-obj))
                        (_%loop94316%_
                         (let ((_%next-probe94331%_
                                (fx+ _%start94312%_
                                     _%i94321%_
                                     (fx* _%i94321%_ _%i94321%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe94331%_ _%size94306%_))
                         (let () (declare (not safe)) (##fx+ _%i94321%_ '1))
                         (let ((_%$e94334%_ _%deleted94323%_))
                           (if _%$e94334%_ _%$e94334%_ _%probe94319%_)))
                        (if (eq? _%key94297%_ _%k94326%_)
                            (vector-ref
                             _%table94300%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe94319%_ '1)))
                            (_%loop94316%_
                             (let ((_%next-probe94339%_
                                    (fx+ _%start94312%_
                                         _%i94321%_
                                         (fx* _%i94321%_ _%i94321%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe94339%_ _%size94306%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i94321%_ '1))
                             _%deleted94323%_))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab94292%_ _%key94293%_ _%value94294%_)
        (if (let ((__tmp99056
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab94292%_)))
                  (__tmp99054
                   (let ((__tmp99055
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab94292%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp99055 '4))))
              (declare (not safe))
              (##fx< __tmp99056 __tmp99054))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab94292%_))
            '#!void)
        (__class-specializer-table-set!
         _%tab94292%_
         _%key94293%_
         _%value94294%_)))
    (define __class-specializer-table-set!
      (lambda (_%tab94243%_ _%key94244%_ _%value94245%_)
        (let ((_%table94248%_
               (let () (declare (not safe)) (&raw-table-table _%tab94243%_)))
              (_%seed94249%_
               (let () (declare (not safe)) (&raw-table-seed _%tab94243%_))))
          (let* ((_%h94251%_
                  (fxxor (__class-specializer-hash-key _%key94244%_)
                         _%seed94249%_))
                 (_%size94254%_ (vector-length _%table94248%_))
                 (_%entries94257%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size94254%_ '2)))
                 (_%start94260%_
                  (let ((__tmp99057
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h94251%_ _%entries94257%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99057 '1))))
            (let _%loop94264%_ ((_%probe94267%_ _%start94260%_)
                                (_%i94269%_ '1)
                                (_%deleted94271%_ '#f))
              (let ((_%k94274%_ (vector-ref _%table94248%_ _%probe94267%_)))
                (if (eq? _%k94274%_ (macro-unused-obj))
                    (if _%deleted94271%_
                        (begin
                          (vector-set!
                           _%table94248%_
                           _%deleted94271%_
                           _%key94244%_)
                          (vector-set!
                           _%table94248%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted94271%_ '1))
                           _%value94245%_)
                          ((lambda ()
                             (let ((__tmp99058
                                    (let ((__tmp99059
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab94243%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99059 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab94243%_
                                __tmp99058)))))
                        (begin
                          (vector-set!
                           _%table94248%_
                           _%probe94267%_
                           _%key94244%_)
                          (vector-set!
                           _%table94248%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe94267%_ '1))
                           _%value94245%_)
                          ((lambda ()
                             (let ((__tmp99060
                                    (let ((__tmp99061
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab94243%_))))
                                      (declare (not safe))
                                      (##fx- __tmp99061 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab94243%_ __tmp99060))
                             (let ((__tmp99062
                                    (let ((__tmp99063
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab94243%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99063 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab94243%_
                                __tmp99062))))))
                    (if (eq? _%k94274%_ (macro-deleted-obj))
                        (_%loop94264%_
                         (let ((_%next-probe94281%_
                                (fx+ _%start94260%_
                                     _%i94269%_
                                     (fx* _%i94269%_ _%i94269%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe94281%_ _%size94254%_))
                         (let () (declare (not safe)) (##fx+ _%i94269%_ '1))
                         (let ((_%$e94284%_ _%deleted94271%_))
                           (if _%$e94284%_ _%$e94284%_ _%probe94267%_)))
                        (if (eq? _%key94244%_ _%k94274%_)
                            (let ()
                              (vector-set!
                               _%table94248%_
                               _%probe94267%_
                               _%key94244%_)
                              (vector-set!
                               _%table94248%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe94267%_ '1))
                               _%value94245%_))
                            (_%loop94264%_
                             (let ((_%next-probe94289%_
                                    (fx+ _%start94260%_
                                         _%i94269%_
                                         (fx* _%i94269%_ _%i94269%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe94289%_ _%size94254%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i94269%_ '1))
                             _%deleted94271%_))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab94238%_
               _%key94239%_
               _%class-specializer-table-update!94240%_
               _%default94241%_)
        (if (let ((__tmp99066
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab94238%_)))
                  (__tmp99064
                   (let ((__tmp99065
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab94238%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp99065 '4))))
              (declare (not safe))
              (##fx< __tmp99066 __tmp99064))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab94238%_))
            '#!void)
        (__class-specializer-table-update!
         _%tab94238%_
         _%key94239%_
         _%class-specializer-table-update!94240%_
         _%default94241%_)))
    (define __class-specializer-table-update!
      (lambda (_%tab94188%_
               _%key94189%_
               _%class-specializer-table-update!94190%_
               _%default94191%_)
        (let ((_%table94194%_
               (let () (declare (not safe)) (&raw-table-table _%tab94188%_)))
              (_%seed94195%_
               (let () (declare (not safe)) (&raw-table-seed _%tab94188%_))))
          (let* ((_%h94197%_
                  (fxxor (__class-specializer-hash-key _%key94189%_)
                         _%seed94195%_))
                 (_%size94200%_ (vector-length _%table94194%_))
                 (_%entries94203%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size94200%_ '2)))
                 (_%start94206%_
                  (let ((__tmp99067
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h94197%_ _%entries94203%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99067 '1))))
            (let _%loop94210%_ ((_%probe94213%_ _%start94206%_)
                                (_%i94215%_ '1)
                                (_%deleted94217%_ '#f))
              (let ((_%k94220%_ (vector-ref _%table94194%_ _%probe94213%_)))
                (if (eq? _%k94220%_ (macro-unused-obj))
                    (if _%deleted94217%_
                        (begin
                          (vector-set!
                           _%table94194%_
                           _%deleted94217%_
                           _%key94189%_)
                          (vector-set!
                           _%table94194%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted94217%_ '1))
                           (_%class-specializer-table-update!94190%_
                            _%default94191%_))
                          ((lambda ()
                             (let ((__tmp99068
                                    (let ((__tmp99069
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab94188%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99069 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab94188%_
                                __tmp99068)))))
                        (begin
                          (vector-set!
                           _%table94194%_
                           _%probe94213%_
                           _%key94189%_)
                          (vector-set!
                           _%table94194%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe94213%_ '1))
                           (_%class-specializer-table-update!94190%_
                            _%default94191%_))
                          ((lambda ()
                             (let ((__tmp99070
                                    (let ((__tmp99071
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab94188%_))))
                                      (declare (not safe))
                                      (##fx- __tmp99071 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab94188%_ __tmp99070))
                             (let ((__tmp99072
                                    (let ((__tmp99073
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab94188%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99073 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab94188%_
                                __tmp99072))))))
                    (if (eq? _%k94220%_ (macro-deleted-obj))
                        (_%loop94210%_
                         (let ((_%next-probe94227%_
                                (fx+ _%start94206%_
                                     _%i94215%_
                                     (fx* _%i94215%_ _%i94215%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe94227%_ _%size94200%_))
                         (let () (declare (not safe)) (##fx+ _%i94215%_ '1))
                         (let ((_%$e94230%_ _%deleted94217%_))
                           (if _%$e94230%_ _%$e94230%_ _%probe94213%_)))
                        (if (eq? _%key94189%_ _%k94220%_)
                            (let ()
                              (vector-set!
                               _%table94194%_
                               _%probe94213%_
                               _%key94189%_)
                              (vector-set!
                               _%table94194%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe94213%_ '1))
                               (_%class-specializer-table-update!94190%_
                                (vector-ref
                                 _%table94194%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe94213%_ '1))))))
                            (_%loop94210%_
                             (let ((_%next-probe94235%_
                                    (fx+ _%start94206%_
                                         _%i94215%_
                                         (fx* _%i94215%_ _%i94215%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe94235%_ _%size94200%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i94215%_ '1))
                             _%deleted94217%_))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab94143%_ _%key94145%_)
        (let ((_%table94148%_
               (let () (declare (not safe)) (&raw-table-table _%tab94143%_)))
              (_%seed94150%_
               (let () (declare (not safe)) (&raw-table-seed _%tab94143%_))))
          (let* ((_%h94153%_
                  (fxxor (__class-specializer-hash-key _%key94145%_)
                         _%seed94150%_))
                 (_%size94156%_ (vector-length _%table94148%_))
                 (_%entries94159%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size94156%_ '2)))
                 (_%start94162%_
                  (let ((__tmp99074
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h94153%_ _%entries94159%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99074 '1))))
            (let _%loop94166%_ ((_%probe94169%_ _%start94162%_)
                                (_%i94171%_ '1))
              (let ((_%k94174%_ (vector-ref _%table94148%_ _%probe94169%_)))
                (if (eq? _%k94174%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k94174%_ (macro-deleted-obj))
                        (_%loop94166%_
                         (let ((_%next-probe94179%_
                                (fx+ _%start94162%_
                                     _%i94171%_
                                     (fx* _%i94171%_ _%i94171%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe94179%_ _%size94156%_))
                         (let () (declare (not safe)) (##fx+ _%i94171%_ '1)))
                        (if (eq? _%key94145%_ _%k94174%_)
                            (let ()
                              (vector-set!
                               _%table94148%_
                               _%probe94169%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table94148%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe94169%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp99075
                                        (let ((__tmp99076
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab94143%_))))
                                          (declare (not safe))
                                          (##fx- __tmp99076 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab94143%_
                                    __tmp99075)))))
                            (_%loop94166%_
                             (let ((_%next-probe94185%_
                                    (fx+ _%start94162%_
                                         _%i94171%_
                                         (fx* _%i94171%_ _%i94171%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe94185%_ _%size94156%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i94171%_ '1))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers (make-class-specializer-table__% '#f '0))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass94129%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94129%_ 'class))
            (let ((_%klass94133%_ _%klass94129%_))
              (__specialize-class _%klass94133%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1020.25-1020.30"
               'contract:
               'class-type?
               'value:
               _%klass94129%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass94111%_)
        (let* ((_%klass94114%_ _%klass94111%_)
               (_%$e94123%_ (__lookup-class-specializer _%klass94114%_)))
          (if _%$e94123%_
              _%$e94123%_
              (let ((_%method-table94127%_
                     (___specialize-class _%klass94114%_)))
                (__bind-class-specializer!
                 _%klass94114%_
                 _%method-table94127%_)
                _%method-table94127%_)))))
    (define __lookup-class-specializer
      (lambda (_%klass94101%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again94105%_ ()
            (if (let ((__tmp99077
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp99077 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again94105%_)))))
        (let ((_%method-table94109%_
               (class-specializer-table-ref
                __class-specializers
                _%klass94101%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table94109%_)))
    (define __bind-class-specializer!
      (lambda (_%klass94092%_ _%method-table94093%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again94097%_ ()
            (if (let ((__tmp99078
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp99078 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again94097%_)))))
        (class-specializer-table-set!
         __class-specializers
         _%klass94092%_
         _%method-table94093%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass94076%_
               _%method-table94077%_
               _%method94078%_
               _%proc94079%_)
        (let ((_%$e94081%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table94077%_
                  _%method94078%_
                  '#f))))
          (if _%$e94081%_
              _%$e94081%_
              (let ((_%$e94084%_ (__lookup-method-specializer _%proc94079%_)))
                (if _%$e94084%_
                    ((lambda (_%specialize94087%_)
                       (let ((_%specialized-proc94089%_
                              (_%specialize94087%_
                               _%klass94076%_
                               _%method-table94077%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table94077%_
                          _%method94078%_
                          _%specialized-proc94089%_)))
                     _%$e94084%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table94077%_
                       _%method94078%_
                       _%proc94079%_))))))))
    (define ___specialize-class
      (lambda (_%klass94018%_)
        (if (not (let ()
                   (declare (not safe))
                   (##structure-instance-of? _%klass94018%_ 'class)))
            (if (let () (declare (not safe)) (##type? _%klass94018%_))
                (__specialize-class (__shadow-class _%klass94018%_))
                (error '"bad class; cannot specialize" _%klass94018%_))
            (if (class-type-metaclass? _%klass94018%_)
                (let ((__method98923
                       (__method-ref _%klass94018%_ 'specialize-class)))
                  (if __method98923
                      (let ()
                        (declare (not safe))
                        (__method98923 _%klass94018%_))
                      (begin
                        (error '"Missing method"
                               _%klass94018%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp99079
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass94018%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp99079))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass94018%_)
                    (let ((_%method-table94024%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop94026%_ ((_%rest94028%_
                                           (class-precedence-list
                                            _%klass94018%_)))
                        (let* ((_%rest9402994037%_ _%rest94028%_)
                               (_%else9403194045%_
                                (lambda () _%method-table94024%_))
                               (_%K9403394064%_
                                (lambda (_%rest94048%_ _%xklass94049%_)
                                  (let ((_%xmethod-table9405094052%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass94049%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table9405094052%_
                                        (let* ((_%xmethod-table94055%_
                                                _%xmethod-table9405094052%_)
                                               (__tmp99080
                                                (lambda (_%g9405694059%_
                                                         _%g9405794061%_)
                                                  (__specialize-method
                                                   _%klass94018%_
                                                   _%method-table94024%_
                                                   _%g9405694059%_
                                                   _%g9405794061%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table94055%_
                                           __tmp99080))
                                        '#f))
                                  (_%loop94026%_ _%rest94048%_))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9402994037%_))
                              (let ((_%hd9403494067%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9402994037%_)))
                                    (_%tl9403594069%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9402994037%_))))
                                (let* ((_%xklass94072%_ _%hd9403494067%_)
                                       (_%rest94074%_ _%tl9403594069%_))
                                  (_%K9403394064%_
                                   _%rest94074%_
                                   _%xklass94072%_)))
                              (_%else9403194045%_))))))))))
    (define seal-class!
      (lambda (_%klass94004%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94004%_ 'class))
            (let ((_%klass94008%_ _%klass94004%_))
              (__seal-class! _%klass94008%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1077.20-1077.25"
               'contract:
               'class-type?
               'value:
               _%klass94004%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass93987%_)
        (let ((_%klass93990%_ _%klass93987%_))
          (if (__class-type-sealed? _%klass93990%_)
              '#!void
              (begin
                (if (__class-type-final? _%klass93990%_)
                    '#!void
                    (error '"cannot seal non-final class" _%klass93990%_))
                (if (__class-type-metaclass? _%klass93990%_)
                    (let ((__method98924
                           (__method-ref _%klass93990%_ 'seal-class!)))
                      (if __method98924
                          (let ()
                            (declare (not safe))
                            (__method98924 _%klass93990%_))
                          (begin
                            (error '"Missing method"
                                   _%klass93990%_
                                   'seal-class!)
                            '#!void)))
                    (if (let ((__tmp99081
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass93990%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp99081))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass93990%_)
                        (let ((_%method-table94002%_
                               (__specialize-class _%klass93990%_)))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass93990%_
                           _%method-table94002%_
                           '11
                           '#f
                           '#f))))
                (__class-type-seal! _%klass93990%_))))))
    (define next-method
      (lambda (_%subklass93961%_ _%obj93962%_ _%id93963%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass93961%_ 'class))
            (let ((_%subklass93967%_ _%subklass93961%_))
              (if (symbol? _%id93963%_)
                  (let ((_%id93977%_ _%id93963%_))
                    (__next-method _%subklass93967%_ _%obj93962%_ _%id93977%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1101.44-1101.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id93963%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1101.20-1101.28"
               'contract:
               'class-type?
               'value:
               _%subklass93961%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass93898%_ _%obj93899%_ _%id93900%_)
        (let* ((_%subklass93903%_ _%subklass93898%_) (_%id93911%_ _%id93900%_))
          (letrec ((_%find-next-method93920%_
                    (lambda (_%klass93922%_)
                      (let _%lp93924%_ ((_%rest93926%_
                                         (class-precedence-list
                                          _%klass93922%_)))
                        (let* ((_%rest9392793935%_ _%rest93926%_)
                               (_%else9392993943%_ (lambda () '#f))
                               (_%K9393193949%_
                                (lambda (_%rest93946%_ _%klass93947%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass93903%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass93947%_)))
                                      (__mixin-find-method
                                       _%rest93946%_
                                       _%obj93899%_
                                       _%id93911%_)
                                      (_%lp93924%_ _%rest93946%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9392793935%_))
                              (let ((_%hd9393293952%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9392793935%_)))
                                    (_%tl9393393954%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9392793935%_))))
                                (let* ((_%klass93957%_ _%hd9393293952%_)
                                       (_%rest93959%_ _%tl9393393954%_))
                                  (_%K9393193949%_
                                   _%rest93959%_
                                   _%klass93957%_)))
                              (_%else9392993943%_)))))))
            (_%find-next-method93920%_ (class-of _%obj93899%_))))))
    (define call-next-method
      (lambda (_%subklass93871%_ _%obj93872%_ _%id93873%_ . _%args93874%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass93871%_ 'class))
            (let ((_%subklass93878%_ _%subklass93871%_))
              (if (symbol? _%id93873%_)
                  (let ((_%id93888%_ _%id93873%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass93878%_
                             _%obj93872%_
                             _%id93888%_
                             _%args93874%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1112.49-1112.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id93873%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1112.25-1112.33"
               'contract:
               'class-type?
               'value:
               _%subklass93871%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass93842%_ _%obj93843%_ _%id93844%_ . _%args93845%_)
        (let* ((_%subklass93848%_ _%subklass93842%_)
               (_%id93856%_ _%id93844%_)
               (_%$e93865%_
                (__next-method _%subklass93848%_ _%obj93843%_ _%id93856%_)))
          (if _%$e93865%_
              ((lambda (_%methodf93868%_)
                 (apply _%methodf93868%_ _%obj93843%_ _%args93845%_))
               _%$e93865%_)
              (error '"cannot find next method"
                     'object:
                     _%obj93843%_
                     'method:
                     _%id93856%_)))))
    (define write-style
      (lambda (_%we93840%_) (macro-writeenv-style _%we93840%_)))
    (define write-object
      (lambda (_%we93831%_ _%obj93832%_)
        (let ((_%$e93834%_ (__method-ref _%obj93832%_ ':wr)))
          (if _%$e93834%_
              ((lambda (_%method93837%_)
                 (_%method93837%_ _%obj93832%_ _%we93831%_))
               _%$e93834%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we93831%_ _%obj93832%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type93746%_)
        (letrec ((_%shadow-type-id93748%_
                  (lambda (_%type93829%_)
                    (let ((__tmp99082
                           (let ()
                             (declare (not safe))
                             (##type-name _%type93829%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp99082 '"::t"))))
                 (_%shadow-type-name93749%_
                  (lambda (_%type93827%_)
                    (let () (declare (not safe)) (##type-name _%type93827%_))))
                 (_%make-shadow-class93750%_
                  (lambda (_%type93819%_ _%precedence-list93820%_)
                    (let* ((_%super93822%_
                            (if (pair? _%precedence-list93820%_)
                                (cons (car _%precedence-list93820%_) '())
                                '()))
                           (_%klass93824%_
                            (make-class-type
                             (_%shadow-type-id93748%_ _%type93819%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type93819%_))
                             _%super93822%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (if (__type-extensible? _%type93819%_)
                                             '()
                                             (cons (cons 'final: '#t) '()))))
                             '#f)))
                      (let ((__tmp99083
                             (let ()
                               (declare (not safe))
                               (##type-id _%type93819%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp99083
                         _%klass93824%_))
                      _%klass93824%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again93754%_ ()
              (if (let ((__tmp99084
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp99084 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (_%again93754%_)))))
          (let ((_%$e93758%_
                 (let ((__tmp99085
                        (let ()
                          (declare (not safe))
                          (##type-id _%type93746%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp99085 '#f))))
            (if _%$e93758%_
                ((lambda (_%klass93761%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass93761%_)
                 _%$e93758%_)
                (let _%loop93764%_ ((_%super93766%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-super _%type93746%_)))
                                    (_%hierarchy93767%_ '()))
                  (if (not _%super93766%_)
                      (let _%loop93770%_ ((_%rest93772%_ _%hierarchy93767%_)
                                          (_%precedence-list93773%_ '()))
                        (let* ((_%rest9377493782%_ _%rest93772%_)
                               (_%else9377693792%_
                                (lambda ()
                                  (let ((_%klass93790%_
                                         (_%make-shadow-class93750%_
                                          _%type93746%_
                                          _%precedence-list93773%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass93790%_)))
                               (_%K9377893806%_
                                (lambda (_%rest93795%_ _%type93796%_)
                                  (let ((_%$e93798%_
                                         (let ((__tmp99086
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type93796%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp99086
                                            '#f))))
                                    (if _%$e93798%_
                                        ((lambda (_%klass93801%_)
                                           (_%loop93770%_
                                            _%rest93795%_
                                            (cons _%klass93801%_
                                                  _%precedence-list93773%_)))
                                         _%$e93798%_)
                                        (let ((_%klass93804%_
                                               (_%make-shadow-class93750%_
                                                _%type93796%_
                                                _%precedence-list93773%_)))
                                          (_%loop93770%_
                                           _%rest93795%_
                                           (cons _%klass93804%_
                                                 _%precedence-list93773%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9377493782%_))
                              (let ((_%hd9377993809%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9377493782%_)))
                                    (_%tl9378093811%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9377493782%_))))
                                (let* ((_%type93814%_ _%hd9377993809%_)
                                       (_%rest93816%_ _%tl9378093811%_))
                                  (_%K9377893806%_
                                   _%rest93816%_
                                   _%type93814%_)))
                              (_%else9377693792%_))))
                      (_%loop93764%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super93766%_))
                       (cons _%super93766%_ _%hierarchy93767%_)))))))))
    (define class-of
      (lambda (_%obj93719%_)
        (let ()
          (declare (not interrupts-enabled))
          (let ((_%t93723%_
                 (let () (declare (not safe)) (##type _%obj93719%_))))
            (if (fx= _%t93723%_ (macro-type-subtyped))
                (let ((_%st93726%_
                       (let () (declare (not safe)) (##subtype _%obj93719%_))))
                  (if (fx= _%st93726%_ (macro-subtype-structure))
                      (let ((_%klass93729%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj93719%_))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of? _%klass93729%_ 'class))
                            _%klass93729%_
                            (__shadow-class _%klass93729%_)))
                      (if (fx= _%st93726%_ (macro-subtype-boxvalues))
                          (if (let ((__tmp99087
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _%obj93719%_))))
                                (declare (not safe))
                                (##fx= __tmp99087 '1))
                              (__system-class 'box)
                              (__system-class 'values))
                          (let ((_%$e93732%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref __subtype-id _%st93726%_))))
                            (if _%$e93732%_
                                (__system-class _%$e93732%_)
                                (error '"unknown class"
                                       'subtype:
                                       _%st93726%_
                                       'object:
                                       _%obj93719%_))))))
                (if (fx= _%t93723%_ (macro-type-mem2))
                    (__system-class 'pair)
                    (if (fx= _%t93723%_ (macro-type-fixnum))
                        (__system-class 'fixnum)
                        (if (char? _%obj93719%_)
                            (__system-class 'char)
                            (if (eq? _%obj93719%_ '())
                                (__system-class 'null)
                                (if (eq? _%obj93719%_ '#f)
                                    (__system-class 'boolean)
                                    (if (eq? _%obj93719%_ '#t)
                                        (__system-class 'boolean)
                                        (if (eq? _%obj93719%_ '#!void)
                                            (__system-class 'void)
                                            (if (eq? _%obj93719%_ '#!eof)
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
      (lambda (_%id93713%_)
        (let ((_%$e93715%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id93713%_ '#f))))
          (if _%$e93715%_
              _%$e93715%_
              (error '"unknown system class" _%id93713%_)))))
    (define __make-system-class
      (lambda (_%id93708%_ _%super93709%_)
        (let ((_%klass93711%_
               (make-class-type
                _%id93708%_
                _%id93708%_
                _%super93709%_
                '()
                '((system: . #t))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id93708%_ _%klass93711%_))
          _%klass93711%_)))))
