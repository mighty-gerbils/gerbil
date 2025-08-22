(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1755903074)
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
      (let ((_%flags104476%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties104477%_ '((direct-slots:) (system: . #t)))
            (_%slot-table104478%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags104476%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table104478%_
           _%properties104477%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots104452%_
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
             (_%slot-vector104454%_ (list->vector (cons '#f _%slots104452%_)))
             (_%slot-table104461%_
              (let ((_%slot-table104456%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp105919
                       (lambda (_%slot104458%_ _%field104459%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table104456%_
                            _%slot104458%_
                            _%field104459%_))
                         (let ((__tmp105920
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot104458%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table104456%_
                            __tmp105920
                            _%field104459%_))))
                      (__tmp105917
                       (let ((__tmp105918
                              (let ()
                                (declare (not safe))
                                (##length _%slots104452%_))))
                         (declare (not safe))
                         (##iota __tmp105918 '1))))
                  (declare (not safe))
                  (##for-each __tmp105919 _%slots104452%_ __tmp105917))
                _%slot-table104456%_))
             (_%flags104463%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields104469%_
              (list->vector
               (let ((__tmp105921
                      (map (lambda (_%g104464104466%_)
                             (list _%g104464104466%_ '5 '#f))
                           (drop _%slots104452%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp105921))))
             (_%properties104471%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots104452%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t104473%_
              (let ((__tmp105922 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags104463%_
                 ##type-type
                 _%fields104469%_
                 __tmp105922
                 _%slot-vector104454%_
                 _%slot-table104461%_
                 _%properties104471%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t104473%_ _%t104473%_))
        _%t104473%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags104448%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties104449%_ '((direct-slots:) (system: . #t)))
            (_%slot-table104450%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp105923 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags104448%_
           '#f
           '#()
           __tmp105923
           '#(#f)
           _%slot-table104450%_
           _%properties104449%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj104446%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj104446%_ 'class))))
    (define class-type=?
      (lambda (_%x104421%_ _%y104422%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x104421%_ 'class))
            (let ((_%x104426%_ _%x104421%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y104422%_ 'class))
                  (let ((_%y104436%_ _%y104422%_))
                    (__class-type=? _%x104426%_ _%y104436%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y104422%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x104421%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x104400%_ _%y104401%_)
        (let* ((_%x104404%_ _%x104400%_) (_%y104412%_ _%y104401%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x104404%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y104412%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type104386%_)
        (if (let () (declare (not safe)) (##type? _%type104386%_))
            (let ((_%type104390%_ _%type104386%_))
              (__type-opaque? _%type104390%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type104386%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type104374%_)
        (let* ((_%type104377%_ _%type104374%_)
               (__tmp105924
                (let ((__tmp105925
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type104377%_))))
                  (declare (not safe))
                  (##fxand __tmp105925 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp105924 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type104360%_)
        (if (let () (declare (not safe)) (##type? _%type104360%_))
            (let ((_%type104364%_ _%type104360%_))
              (__type-extensible? _%type104364%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type104360%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type104348%_)
        (let* ((_%type104351%_ _%type104348%_)
               (__tmp105926
                (let ((__tmp105927
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type104351%_))))
                  (declare (not safe))
                  (##fxand __tmp105927 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp105926 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type104334%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type104334%_ 'class))
            (let ((_%type104338%_ _%type104334%_))
              (__class-type-final? _%type104338%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type104334%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type104322%_)
        (let* ((_%type104325%_ _%type104322%_)
               (__tmp105928
                (let ((__tmp105929
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type104325%_))))
                  (declare (not safe))
                  (##fxand __tmp105929 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp105928 '0))))
    (define class-type-struct?
      (lambda (_%klass104308%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass104308%_ 'class))
            (let ((_%klass104312%_ _%klass104308%_))
              (__class-type-struct? _%klass104312%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass104308%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass104296%_)
        (let* ((_%klass104299%_ _%klass104296%_)
               (__tmp105930
                (let ((__tmp105931
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass104299%_))))
                  (declare (not safe))
                  (##fxand __tmp105931 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp105930 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass104282%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass104282%_ 'class))
            (let ((_%klass104286%_ _%klass104282%_))
              (__class-type-sealed? _%klass104286%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass104282%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass104270%_)
        (let* ((_%klass104273%_ _%klass104270%_)
               (__tmp105932
                (let ((__tmp105933
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass104273%_))))
                  (declare (not safe))
                  (##fxand __tmp105933 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp105932 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass104256%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass104256%_ 'class))
            (let ((_%klass104260%_ _%klass104256%_))
              (__class-type-metaclass? _%klass104260%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass104256%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass104244%_)
        (let* ((_%klass104247%_ _%klass104244%_)
               (__tmp105934
                (let ((__tmp105935
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass104247%_))))
                  (declare (not safe))
                  (##fxand __tmp105935 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp105934 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass104230%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass104230%_ 'class))
            (let ((_%klass104234%_ _%klass104230%_))
              (__class-type-system? _%klass104234%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass104230%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass104218%_)
        (let* ((_%klass104221%_ _%klass104218%_)
               (__tmp105936
                (let ((__tmp105937
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass104221%_))))
                  (declare (not safe))
                  (##fxand __tmp105937 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp105936 class-type-flag-system))))
    (define make-class-type-descriptor
      (lambda (_%type-id104100%_
               _%type-name104101%_
               _%type-super104102%_
               _%precedence-list104103%_
               _%slot-vector104104%_
               _%properties104105%_
               _%constructor104106%_
               _%slot-table104107%_
               _%methods104108%_)
        (letrec ((_%make-props!104111%_
                  (lambda (_%key104187%_)
                    (letrec* ((_%ht104189%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!104190%_
                               (lambda (_%ht104211%_ _%slots104212%_)
                                 (for-each
                                  (lambda (_%g104213104215%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht104211%_
                                       _%g104213104215%_
                                       '#t)))
                                  _%slots104212%_)))
                              (_%put-alist!104191%_
                               (lambda (_%ht104200%_
                                        _%key104201%_
                                        _%alist104202%_)
                                 (let ((_%$e104204%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key104201%_
                                           _%alist104202%_))))
                                   (if _%$e104204%_
                                       ((lambda (_%g104206104208%_)
                                          (_%put-slots!104190%_
                                           _%ht104200%_
                                           _%g104206104208%_))
                                        _%$e104204%_)
                                       '#!void)))))
                      (_%put-alist!104191%_
                       _%ht104189%_
                       _%key104187%_
                       _%properties104105%_)
                      (for-each
                       (lambda (_%mixin104193%_)
                         (let ((_%alist104195%_
                                (##structure-ref
                                 _%mixin104193%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist104195%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key104187%_
                                           _%alist104195%_))))
                               (_%put-slots!104190%_
                                _%ht104189%_
                                (class-type-slot-list _%mixin104193%_))
                               (_%put-alist!104191%_
                                _%ht104189%_
                                _%key104187%_
                                _%alist104195%_))))
                       _%precedence-list104103%_)
                      _%ht104189%_))))
          (let* ((_%transparent?104113%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties104105%_)))
                 (_%all-slots-printable?104118%_
                  (let ((_%$e104115%_ _%transparent?104113%_))
                    (if _%$e104115%_
                        _%$e104115%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties104105%_))))))
                 (_%printable104120%_
                  (if (not _%all-slots-printable?104118%_)
                      (_%make-props!104111%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?104125%_
                  (let ((_%$e104122%_ _%transparent?104113%_))
                    (if _%$e104122%_
                        _%$e104122%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties104105%_))))))
                 (_%equalable104127%_
                  (if (not _%all-slots-equalable?104125%_)
                      (_%make-props!104111%_ 'equal:)
                      '#f))
                 (_%first-new-field104129%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super104102%_ 'class))
                      (let ((__tmp105938
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super104102%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp105938))
                      '1))
                 (_%field-info-length104131%_
                  (let ((__tmp105939
                         (let ((__tmp105940
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector104104%_))))
                           (declare (not safe))
                           (##fx- __tmp105940 _%first-new-field104129%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp105939)))
                 (_%field-info104133%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length104131%_ '#f)))
                 (_%struct?104135%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties104105%_)))
                 (_%final?104137%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties104105%_)))
                 (_%metaclass104145%_
                  (let ((_%metaclass104138104140%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties104105%_))))
                    (if _%metaclass104138104140%_
                        (let ((_%metaclass104143%_ _%metaclass104138104140%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass104143%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id104100%_
                                     'metaclass:
                                     _%metaclass104143%_))
                          _%metaclass104143%_)
                        '#f)))
                 (_%system?104147%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties104105%_)))
                 (_%opaque?104155%_
                  (if (or _%transparent?104113%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties104105%_)))
                      '#f
                      (let ((_%$e104152%_ (not _%type-super104102%_)))
                        (if _%$e104152%_
                            _%$e104152%_
                            (__type-opaque? _%type-super104102%_)))))
                 (_%type-flags104157%_
                  (let ((__tmp105945
                         (if _%final?104137%_ '0 type-flag-extensible))
                        (__tmp105944
                         (if _%opaque?104155%_ type-flag-opaque '0))
                        (__tmp105943
                         (if _%struct?104135%_ class-type-flag-struct '0))
                        (__tmp105942
                         (if _%metaclass104145%_ class-type-flag-metaclass '0))
                        (__tmp105941
                         (if _%system?104147%_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp105945
                             __tmp105944
                             __tmp105943
                             __tmp105942
                             __tmp105941)))
                 (_%precedence-list104165%_
                  (let ((_%$e104159%_ (memq t::t _%precedence-list104103%_)))
                    (if _%$e104159%_
                        ((lambda (_%tail104162%_)
                           (if (null? (cdr _%tail104162%_))
                               _%precedence-list104103%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list104103%_)))
                         _%$e104159%_)
                        (let ((__tmp105946 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list104103%_ __tmp105946))))))
            (let _%loop104168%_ ((_%i104170%_ _%first-new-field104129%_)
                                 (_%j104171%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j104171%_ _%field-info-length104131%_))
                  (let* ((_%slot104173%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector104104%_ _%i104170%_)))
                         (_%flags104181%_
                          (if _%transparent?104113%_
                              '0
                              (let ((__tmp105948
                                     (if (or _%all-slots-printable?104118%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable104120%_
                                                _%slot104173%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp105947
                                     (if (or _%all-slots-equalable?104125%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable104127%_
                                                _%slot104173%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp105948 __tmp105947)))))
                    (vector-set!
                     _%field-info104133%_
                     _%j104171%_
                     _%slot104173%_)
                    (vector-set!
                     _%field-info104133%_
                     (let () (declare (not safe)) (##fx+ _%j104171%_ '1))
                     _%flags104181%_)
                    (_%loop104168%_
                     (let () (declare (not safe)) (##fx+ _%i104170%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j104171%_ '3))))
                  '#!void))
            (if _%metaclass104145%_
                (let ((_%val104184%_
                       (make-instance
                        _%metaclass104145%_
                        _%type-id104100%_
                        _%type-name104101%_
                        _%type-flags104157%_
                        _%type-super104102%_
                        _%field-info104133%_
                        _%precedence-list104165%_
                        _%slot-vector104104%_
                        _%slot-table104107%_
                        _%properties104105%_
                        _%constructor104106%_
                        _%methods104108%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val104184%_ 'class))
                      _%val104184%_
                      (error '"bad cast" class::t _%val104184%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id104100%_
                   _%type-name104101%_
                   _%type-flags104157%_
                   _%type-super104102%_
                   _%field-info104133%_
                   _%precedence-list104165%_
                   _%slot-vector104104%_
                   _%slot-table104107%_
                   _%properties104105%_
                   _%constructor104106%_
                   _%methods104108%_)))))))
    (define class-type-id
      (lambda (_%klass104098%_)
        (##structure-ref _%klass104098%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass104096%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass104096%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass104093%_ _%val104094%_)
        (##structure-set! _%klass104093%_ _%val104094%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass104088%_ _%val104090%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass104088%_
           _%val104090%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass104086%_)
        (##structure-ref _%klass104086%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass104084%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass104084%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass104081%_ _%val104082%_)
        (##structure-set! _%klass104081%_ _%val104082%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass104076%_ _%val104078%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass104076%_
           _%val104078%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass104074%_)
        (##structure-ref _%klass104074%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass104072%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass104072%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass104069%_ _%val104070%_)
        (##structure-set! _%klass104069%_ _%val104070%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass104064%_ _%val104066%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass104064%_
           _%val104066%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass104062%_)
        (##structure-ref _%klass104062%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass104060%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass104060%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass104057%_ _%val104058%_)
        (##structure-set! _%klass104057%_ _%val104058%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass104052%_ _%val104054%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass104052%_
           _%val104054%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass104050%_)
        (##structure-ref _%klass104050%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass104048%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass104048%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass104045%_ _%val104046%_)
        (##structure-set! _%klass104045%_ _%val104046%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass104040%_ _%val104042%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass104040%_
           _%val104042%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass104038%_)
        (##structure-ref _%klass104038%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass104036%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass104036%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass104033%_ _%val104034%_)
        (##structure-set!
         _%klass104033%_
         _%val104034%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass104028%_ _%val104030%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass104028%_
           _%val104030%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass104026%_)
        (##structure-ref _%klass104026%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass104024%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass104024%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass104021%_ _%val104022%_)
        (##structure-set!
         _%klass104021%_
         _%val104022%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass104016%_ _%val104018%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass104016%_
           _%val104018%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass104014%_)
        (##structure-ref _%klass104014%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass104012%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass104012%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass104009%_ _%val104010%_)
        (##structure-set!
         _%klass104009%_
         _%val104010%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass104004%_ _%val104006%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass104004%_
           _%val104006%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass104002%_)
        (##structure-ref _%klass104002%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass104000%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass104000%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass103997%_ _%val103998%_)
        (##structure-set!
         _%klass103997%_
         _%val103998%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass103992%_ _%val103994%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass103992%_
           _%val103994%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass103990%_)
        (##structure-ref _%klass103990%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass103988%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass103988%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass103985%_ _%val103986%_)
        (##structure-set!
         _%klass103985%_
         _%val103986%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass103980%_ _%val103982%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass103980%_
           _%val103982%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass103978%_)
        (##structure-ref _%klass103978%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass103976%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass103976%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass103973%_ _%val103974%_)
        (##structure-set!
         _%klass103973%_
         _%val103974%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass103968%_ _%val103970%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass103968%_
           _%val103970%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass103954%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass103954%_ 'class))
            (let ((_%klass103958%_ _%klass103954%_))
              (__class-type-slot-list _%klass103958%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass103954%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass103942%_)
        (let ((_%klass103945%_ _%klass103942%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass103945%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass103928%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass103928%_ 'class))
            (let ((_%klass103932%_ _%klass103928%_))
              (__class-type-field-count _%klass103932%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass103928%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass103916%_)
        (let* ((_%klass103919%_ _%klass103916%_)
               (__tmp105949
                (let ((__tmp105950
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass103919%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp105950))))
          (declare (not safe))
          (##fx- __tmp105949 '1))))
    (define class-type-seal!
      (lambda (_%klass103902%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass103902%_ 'class))
            (let ((_%klass103906%_ _%klass103902%_))
              (__class-type-seal! _%klass103906%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass103902%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass103890%_)
        (let ((_%klass103893%_ _%klass103890%_))
          (let ((__tmp105951
                 (let ((__tmp105952
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass103893%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp105952))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass103893%_
             __tmp105951
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct103865%_ _%maybe-super-struct103866%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct103865%_ 'class))
            (let ((_%maybe-sub-struct103870%_ _%maybe-sub-struct103865%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct103866%_
                     'class))
                  (let ((_%maybe-super-struct103880%_
                         _%maybe-super-struct103866%_))
                    (__substruct?
                     _%maybe-sub-struct103870%_
                     _%maybe-super-struct103880%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct103866%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct103865%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct103834%_ _%maybe-super-struct103835%_)
        (let* ((_%maybe-sub-struct103838%_ _%maybe-sub-struct103834%_)
               (_%maybe-super-struct103846%_ _%maybe-super-struct103835%_)
               (_%maybe-super-struct-id103855%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct103846%_))))
          (let _%lp103857%_ ((_%super-struct103859%_
                              _%maybe-sub-struct103838%_))
            (if (not _%super-struct103859%_)
                '#f
                (if (eq? _%maybe-super-struct-id103855%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct103859%_)))
                    '#t
                    (_%lp103857%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct103859%_)))))))))
    (define base-struct/1
      (lambda (_%klass103829%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass103829%_ 'class))
            (if (__class-type-struct? _%klass103829%_)
                _%klass103829%_
                (let () (declare (not safe)) (##type-super _%klass103829%_)))
            (if (not _%klass103829%_)
                '#f
                (error '"not a class or false" _%klass103829%_)))))
    (define base-struct/2
      (lambda (_%klass1103814%_ _%klass2103815%_)
        (let ((_%s1103817%_ (base-struct/1 _%klass1103814%_))
              (_%s2103818%_ (base-struct/1 _%klass2103815%_)))
          (if (or (not _%s1103817%_)
                  (and _%s2103818%_ (substruct? _%s1103817%_ _%s2103818%_)))
              _%s2103818%_
              (if (or (not _%s2103818%_)
                      (and _%s1103817%_
                           (substruct? _%s2103818%_ _%s1103817%_)))
                  _%s1103817%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1103814%_
                         _%klass2103815%_
                         _%s1103817%_
                         _%s2103818%_))))))
    (define base-struct/list
      (lambda (_%all-supers103698%_)
        (let* ((_%all-supers103699103724%_ _%all-supers103698%_)
               (_%E103704103728%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers103699103724%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K103722103811%_ (lambda () '#f))
                (_%K103719103797%_
                 (lambda (_%x103795%_) (base-struct/1 _%x103795%_)))
                (_%K103714103774%_
                 (lambda (_%y103771%_ _%x103772%_)
                   (base-struct/2 _%x103772%_ _%y103771%_)))
                (_%K103705103735%_
                 (lambda (_%y103732%_ _%x103733%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x103733%_ _%y103732%_)))))
            (let* ((_%__match105911105912%_
                    (lambda (_%hd103706103738%_ _%tl103707103740%_)
                      (let ((_%x103743%_ _%hd103706103738%_))
                        (letrec ((_%splice-rest103709103745%_
                                  (lambda (_%rest103713103752%_ _%y103754%_)
                                    (if (null? _%rest103713103752%_)
                                        (_%K103705103735%_
                                         _%y103754%_
                                         _%x103743%_)
                                        (_%E103704103728%_))))
                                 (_%splice-try103711103747%_
                                  (lambda (_%hd103712103756%_
                                           _%rest103713103758%_
                                           _%y103708103759%_)
                                    (let ((_%y103762%_ _%hd103712103756%_))
                                      (_%splice-loop103710103749%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest103713103758%_))
                                       (cons _%y103762%_ _%y103708103759%_)))))
                                 (_%splice-loop103710103749%_
                                  (lambda (_%rest103713103764%_
                                           _%y103708103765%_)
                                    (if (pair? _%rest103713103764%_)
                                        (_%splice-try103711103747%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest103713103764%_))
                                         _%rest103713103764%_
                                         _%y103708103765%_)
                                        (_%splice-rest103709103745%_
                                         _%rest103713103764%_
                                         (reverse _%y103708103765%_))))))
                          (_%splice-loop103710103749%_
                           _%tl103707103740%_
                           '())))))
                   (_%try-match103701103807%_
                    (lambda ()
                      (if (pair? _%all-supers103699103724%_)
                          (let ((_%tl103721103802%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers103699103724%_)))
                                (_%hd103720103800%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers103699103724%_))))
                            (if (null? _%tl103721103802%_)
                                (let ((_%x103805%_ _%hd103720103800%_))
                                  (base-struct/1 _%x103805%_))
                                (if (pair? _%tl103721103802%_)
                                    (let ((_%tl103718103786%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl103721103802%_)))
                                          (_%hd103717103784%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl103721103802%_))))
                                      (if (null? _%tl103718103786%_)
                                          (let ((_%x103782%_
                                                 _%hd103720103800%_)
                                                (_%y103789%_
                                                 _%hd103717103784%_))
                                            (_%K103714103774%_
                                             _%y103789%_
                                             _%x103782%_))
                                          (_%__match105911105912%_
                                           _%hd103720103800%_
                                           _%tl103721103802%_)))
                                    (_%__match105911105912%_
                                     _%hd103720103800%_
                                     _%tl103721103802%_))))
                          (_%E103704103728%_)))))
              (if (null? _%all-supers103699103724%_)
                  (_%K103722103811%_)
                  (_%try-match103701103807%_)))))))
    (define base-struct
      (lambda _%all-supers103696%_ (base-struct/list _%all-supers103696%_)))
    (define find-super-constructor
      (lambda (_%super103647%_)
        (let _%lp103649%_ ((_%rest103651%_ _%super103647%_)
                           (_%constructor103652%_ '#f))
          (let* ((_%rest103653103661%_ _%rest103651%_)
                 (_%else103655103669%_ (lambda () _%constructor103652%_))
                 (_%K103657103684%_
                  (lambda (_%rest103672%_ _%hd103673%_)
                    (let ((_%$e103675%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd103673%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e103675%_
                          ((lambda (_%xconstructor103678%_)
                             (if (or (not _%constructor103652%_)
                                     (eq? _%constructor103652%_
                                          _%xconstructor103678%_))
                                 (_%lp103649%_
                                  _%rest103672%_
                                  _%xconstructor103678%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor103652%_
                                        _%xconstructor103678%_)))
                           _%$e103675%_)
                          (_%lp103649%_
                           _%rest103672%_
                           _%constructor103652%_))))))
            (if (pair? _%rest103653103661%_)
                (let ((_%hd103658103687%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest103653103661%_)))
                      (_%tl103659103689%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest103653103661%_))))
                  (let* ((_%hd103692%_ _%hd103658103687%_)
                         (_%rest103694%_ _%tl103659103689%_))
                    (_%K103657103684%_ _%rest103694%_ _%hd103692%_)))
                (_%else103655103669%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list103623%_ _%direct-slots103624%_)
        (let* ((_%next-slot103626%_ '1)
               (_%slot-table103628%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots103630%_ '(__class))
               (_%process-slot103634%_
                (lambda (_%slot103632%_)
                  (if (symbol? _%slot103632%_)
                      '#!void
                      (error '"invalid slot name" _%slot103632%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table103628%_
                              _%slot103632%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table103628%_
                           _%slot103632%_
                           _%next-slot103626%_))
                        (let ((__tmp105953
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot103632%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table103628%_
                           __tmp105953
                           _%next-slot103626%_))
                        (set! _%r-slots103630%_
                              (cons _%slot103632%_ _%r-slots103630%_))
                        (set! _%next-slot103626%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot103626%_ '1))))
                      '#!void)))
               (_%process-slots103640%_
                (lambda (_%g103635103637%_)
                  (for-each _%process-slot103634%_ _%g103635103637%_))))
          (let ((__tmp105955
                 (lambda (_%mixin103643%_)
                   (_%process-slots103640%_
                    (let ((__tmp105956
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin103643%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp105956 '())))))
                (__tmp105954 (reverse _%class-precedence-list103623%_)))
            (declare (not safe))
            (##for-each __tmp105955 __tmp105954))
          (_%process-slots103640%_ _%direct-slots103624%_)
          (let ((_%slot-vector103645%_
                 (list->vector
                  (let ()
                    (declare (not safe))
                    (##reverse _%r-slots103630%_)))))
            (values _%slot-vector103645%_ _%slot-table103628%_)))))
    (define make-class-type
      (lambda (_%id103548%_
               _%name103549%_
               _%direct-supers103550%_
               _%direct-slots103551%_
               _%properties103552%_
               _%constructor103553%_)
        (if (symbol? _%id103548%_)
            (let ((_%id103557%_ _%id103548%_))
              (if (symbol? _%name103549%_)
                  (let ((_%name103567%_ _%name103549%_))
                    (if (list? _%direct-supers103550%_)
                        (let ((_%direct-supers103577%_
                               _%direct-supers103550%_))
                          (if (list? _%direct-slots103551%_)
                              (let ((_%direct-slots103587%_
                                     _%direct-slots103551%_))
                                (if (list? _%properties103552%_)
                                    (let ((_%properties103597%_
                                           _%properties103552%_))
                                      (if ((lambda (_%$obj103606%_)
                                             (or (not _%$obj103606%_)
                                                 (symbol? _%$obj103606%_)))
                                           _%constructor103553%_)
                                          (let ((_%constructor103613%_
                                                 _%constructor103553%_))
                                            (__make-class-type
                                             _%id103557%_
                                             _%name103567%_
                                             _%direct-supers103577%_
                                             _%direct-slots103587%_
                                             _%properties103597%_
                                             _%constructor103613%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor103553%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties103552%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots103551%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers103550%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name103549%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id103548%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id103417%_
               _%name103418%_
               _%direct-supers103419%_
               _%direct-slots103420%_
               _%properties103421%_
               _%constructor103422%_)
        (let* ((_%id103425%_ _%id103417%_)
               (_%name103433%_ _%name103418%_)
               (_%direct-supers103441%_ _%direct-supers103419%_)
               (_%direct-slots103449%_ _%direct-slots103420%_)
               (_%properties103457%_ _%properties103421%_)
               (_%constructor103465%_ _%constructor103422%_))
          (let ((_%$e103477%_
                 (let ((__tmp105957
                        (lambda (_%$obj103474%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj103474%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp105957 _%direct-supers103441%_))))
            (if _%$e103477%_
                ((lambda (_%g103479103481%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g103479103481%_))
                 _%$e103477%_)
                (let ((_%$e103484%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final?
                                 _%direct-supers103441%_))))
                  (if _%$e103484%_
                      ((lambda (_%g103486103488%_)
                         (error '"Cannot extend final class"
                                _%g103486103488%_))
                       _%$e103484%_)
                      '#!void))))
          (let ((_g105958_ (compute-precedence-list _%direct-supers103441%_)))
            (begin
              (let ((_g105959_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g105958_)
                           (##values-length _g105958_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g105959_ 2)))
                    (error "Context expects 2 values" _g105959_)))
              (let ((_%precedence-list103491%_
                     (let () (declare (not safe)) (##values-ref _g105958_ 0)))
                    (_%struct-super103492%_
                     (let () (declare (not safe)) (##values-ref _g105958_ 1))))
                (let ((_g105960_
                       (compute-class-slots
                        _%precedence-list103491%_
                        _%direct-slots103449%_)))
                  (begin
                    (let ((_g105961_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g105960_)
                                 (##values-length _g105960_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g105961_ 2)))
                          (error "Context expects 2 values" _g105961_)))
                    (let ((_%slot-vector103494%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g105960_ 0)))
                          (_%slot-table103495%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g105960_ 1))))
                      (let* ((_%properties103497%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots103449%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers103441%_)
                                          _%properties103457%_)))
                             (_%constructor*103502%_
                              (let ((_%$e103499%_ _%constructor103465%_))
                                (if _%$e103499%_
                                    _%$e103499%_
                                    (find-super-constructor
                                     _%direct-supers103441%_))))
                             (_%precedence-list103545%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties103497%_))
                                      (memq object::t
                                            _%precedence-list103491%_))
                                  _%precedence-list103491%_
                                  (let _%loop103507%_ ((_%tail103509%_
                                                        _%precedence-list103491%_)
                                                       (_%head103510%_ '()))
                                    (let* ((_%tail103511103519%_
                                            _%tail103509%_)
                                           (_%else103513103527%_
                                            (lambda ()
                                              (let ((__tmp105962
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp105962
                                                 _%head103510%_))))
                                           (_%K103515103533%_
                                            (lambda (_%rest103530%_
                                                     _%hd103531%_)
                                              (if (eq? _%hd103531%_ t::t)
                                                  (let ((__tmp105963
                                                         (cons object::t
                                                               _%tail103509%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp105963
                                                     _%head103510%_))
                                                  (_%loop103507%_
                                                   _%rest103530%_
                                                   (cons _%hd103531%_
                                                         _%head103510%_))))))
                                      (if (pair? _%tail103511103519%_)
                                          (let ((_%hd103516103536%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail103511103519%_)))
                                                (_%tl103517103538%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail103511103519%_))))
                                            (let* ((_%hd103541%_
                                                    _%hd103516103536%_)
                                                   (_%rest103543%_
                                                    _%tl103517103538%_))
                                              (_%K103515103533%_
                                               _%rest103543%_
                                               _%hd103541%_)))
                                          (_%else103513103527%_)))))))
                        (make-class-type-descriptor
                         _%id103425%_
                         _%name103433%_
                         _%struct-super103492%_
                         _%precedence-list103545%_
                         _%slot-vector103494%_
                         _%properties103497%_
                         _%constructor*103502%_
                         _%slot-table103495%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass103403%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass103403%_ 'class))
            (let ((_%klass103407%_ _%klass103403%_))
              (__class-precedence-list _%klass103407%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass103403%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass103391%_)
        (let ((_%klass103394%_ _%klass103391%_))
          (cons _%klass103394%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass103394%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers103388%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers103388%_))))
    (define make-class-predicate
      (lambda (_%klass103374%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass103374%_ 'class))
            (let ((_%klass103378%_ _%klass103374%_))
              (__make-class-predicate _%klass103378%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass103374%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass103345%_)
        (let* ((_%klass103348%_ _%klass103345%_)
               (_%tid103357%_
                (let () (declare (not safe)) (##type-id _%klass103348%_))))
          (if (__class-type-final? _%klass103348%_)
              (lambda (_%g103359103361%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g103359103361%_
                   _%tid103357%_)))
              (if (__class-type-struct? _%klass103348%_)
                  (lambda (_%g103364103366%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%g103364103366%_
                       _%tid103357%_)))
                  (lambda (_%g103369103371%_)
                    (__class-instance? _%klass103348%_ _%g103369103371%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass103320%_ _%slot103321%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass103320%_ 'class))
            (let ((_%klass103325%_ _%klass103320%_))
              (if (symbol? _%slot103321%_)
                  (let ((_%slot103335%_ _%slot103321%_))
                    (__make-class-slot-accessor
                     _%klass103325%_
                     _%slot103335%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot103321%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass103320%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass103288%_ _%slot103289%_)
        (let* ((_%klass103292%_ _%klass103288%_)
               (_%slot103300%_ _%slot103289%_)
               (_%field103309%_
                (let ((__tmp105964
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass103292%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp105964 _%slot103300%_ '#f))))
          (if (not _%field103309%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass103292%_
                       'slot:
                       _%slot103300%_)
                '#!void)
              (if (__class-type-final? _%klass103292%_)
                  (make-final-slot-accessor
                   _%klass103292%_
                   _%slot103300%_
                   _%field103309%_)
                  (if (__class-type-struct? _%klass103292%_)
                      (make-struct-slot-accessor
                       _%klass103292%_
                       _%slot103300%_
                       _%field103309%_)
                      (if (let ((_%strukt103315%_
                                 (base-struct/1 _%klass103292%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt103315%_
                                    'class))
                                 (let ((__tmp105965
                                        (let ((__tmp105966
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt103315%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp105966))))
                                   (declare (not safe))
                                   (##fx< _%field103309%_ __tmp105965))))
                          (make-struct-subclass-slot-accessor
                           _%klass103292%_
                           _%slot103300%_
                           _%field103309%_)
                          (make-class-cached-slot-accessor
                           _%klass103292%_
                           _%slot103300%_
                           _%field103309%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass103263%_ _%slot103264%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass103263%_ 'class))
            (let ((_%klass103268%_ _%klass103263%_))
              (if (symbol? _%slot103264%_)
                  (let ((_%slot103278%_ _%slot103264%_))
                    (__make-class-slot-mutator _%klass103268%_ _%slot103278%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot103264%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass103263%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass103231%_ _%slot103232%_)
        (let* ((_%klass103235%_ _%klass103231%_)
               (_%slot103243%_ _%slot103232%_)
               (_%field103252%_
                (let ((__tmp105967
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass103235%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp105967 _%slot103243%_ '#f))))
          (if (not _%field103252%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass103235%_
                       'slot:
                       _%slot103243%_)
                '#!void)
              (if (__class-type-final? _%klass103235%_)
                  (make-final-slot-mutator
                   _%klass103235%_
                   _%slot103243%_
                   _%field103252%_)
                  (if (__class-type-struct? _%klass103235%_)
                      (make-struct-slot-mutator
                       _%klass103235%_
                       _%slot103243%_
                       _%field103252%_)
                      (if (let ((_%strukt103258%_
                                 (base-struct/1 _%klass103235%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt103258%_
                                    'class))
                                 (let ((__tmp105968
                                        (let ((__tmp105969
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt103258%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp105969))))
                                   (declare (not safe))
                                   (##fx< _%field103252%_ __tmp105968))))
                          (make-struct-subclass-slot-mutator
                           _%klass103235%_
                           _%slot103243%_
                           _%field103252%_)
                          (make-class-cached-slot-mutator
                           _%klass103235%_
                           _%slot103243%_
                           _%field103252%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass103206%_ _%slot103207%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass103206%_ 'class))
            (let ((_%klass103211%_ _%klass103206%_))
              (if (symbol? _%slot103207%_)
                  (let ((_%slot103221%_ _%slot103207%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass103211%_
                     _%slot103221%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot103207%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass103206%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass103174%_ _%slot103175%_)
        (let* ((_%klass103178%_ _%klass103174%_)
               (_%slot103186%_ _%slot103175%_)
               (_%field103195%_
                (let ((__tmp105970
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass103178%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp105970 _%slot103186%_ '#f))))
          (if (not _%field103195%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass103178%_
                       'slot:
                       _%slot103186%_)
                '#!void)
              (if (__class-type-final? _%klass103178%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass103178%_
                   _%slot103186%_
                   _%field103195%_)
                  (if (__class-type-struct? _%klass103178%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass103178%_
                       _%slot103186%_
                       _%field103195%_)
                      (if (let ((_%strukt103201%_
                                 (base-struct/1 _%klass103178%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt103201%_
                                    'class))
                                 (let ((__tmp105971
                                        (let ((__tmp105972
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt103201%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp105972))))
                                   (declare (not safe))
                                   (##fx< _%field103195%_ __tmp105971))))
                          (make-struct-slot-unchecked-accessor
                           _%klass103178%_
                           _%slot103186%_
                           _%field103195%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass103178%_
                           _%slot103186%_
                           _%field103195%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass103149%_ _%slot103150%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass103149%_ 'class))
            (let ((_%klass103154%_ _%klass103149%_))
              (if (symbol? _%slot103150%_)
                  (let ((_%slot103164%_ _%slot103150%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass103154%_
                     _%slot103164%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot103150%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass103149%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass103117%_ _%slot103118%_)
        (let* ((_%klass103121%_ _%klass103117%_)
               (_%slot103129%_ _%slot103118%_)
               (_%field103138%_
                (let ((__tmp105973
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass103121%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp105973 _%slot103129%_ '#f))))
          (if (not _%field103138%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass103121%_
                       'slot:
                       _%slot103129%_)
                '#!void)
              (if (__class-type-final? _%klass103121%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass103121%_
                   _%slot103129%_
                   _%field103138%_)
                  (if (__class-type-struct? _%klass103121%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass103121%_
                       _%slot103129%_
                       _%field103138%_)
                      (if (let ((_%strukt103144%_
                                 (base-struct/1 _%klass103121%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt103144%_
                                    'class))
                                 (let ((__tmp105974
                                        (let ((__tmp105975
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt103144%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp105975))))
                                   (declare (not safe))
                                   (##fx< _%field103138%_ __tmp105974))))
                          (make-struct-slot-unchecked-mutator
                           _%klass103121%_
                           _%slot103129%_
                           _%field103138%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass103121%_
                           _%slot103129%_
                           _%field103138%_))))))))
    (define not-an-instance__%
      (lambda (_%object103101%_ _%class103102%_ _%slot103103%_)
        (apply error
               '"not an instance"
               'object:
               _%object103101%_
               'class:
               _%class103102%_
               (if _%slot103103%_
                   (cons 'slot: (cons _%slot103103%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object103108%_ _%class103109%_)
        (let ((_%slot103111%_ '#f))
          (not-an-instance__%
           _%object103108%_
           _%class103109%_
           _%slot103111%_))))
    (define not-an-instance
      (lambda _g105976_
        (let ((_g105977_ (let () (declare (not safe)) (##length _g105976_))))
          (cond ((let () (declare (not safe)) (##fx= _g105977_ 2))
                 (apply not-an-instance__0 _g105976_))
                ((let () (declare (not safe)) (##fx= _g105977_ 3))
                 (apply not-an-instance__% _g105976_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g105976_))))))
    (define make-final-slot-accessor
      (lambda (_%klass103094%_ _%slot103095%_ _%field103096%_)
        (lambda (_%obj103098%_)
          (##direct-structure-ref
           _%obj103098%_
           _%field103096%_
           _%klass103094%_
           _%slot103095%_))))
    (define make-final-slot-mutator
      (lambda (_%klass103087%_ _%slot103088%_ _%field103089%_)
        (lambda (_%obj103091%_ _%val103092%_)
          (##direct-structure-set!
           _%obj103091%_
           _%val103092%_
           _%field103089%_
           _%klass103087%_
           _%slot103088%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass103081%_ _%slot103082%_ _%field103083%_)
        (lambda (_%obj103085%_)
          (##structure-ref
           _%obj103085%_
           _%field103083%_
           _%klass103081%_
           _%slot103082%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass103074%_ _%slot103075%_ _%field103076%_)
        (lambda (_%obj103078%_ _%val103079%_)
          (##structure-set!
           _%obj103078%_
           _%val103079%_
           _%field103076%_
           _%klass103074%_
           _%slot103075%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass103068%_ _%slot103069%_ _%field103070%_)
        (lambda (_%obj103072%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj103072%_
             _%field103070%_
             _%klass103068%_
             _%slot103069%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass103061%_ _%slot103062%_ _%field103063%_)
        (lambda (_%obj103065%_ _%val103066%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj103065%_
             _%val103066%_
             _%field103063%_
             _%klass103061%_
             _%slot103062%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass103055%_ _%slot103056%_ _%field103057%_)
        (lambda (_%obj103059%_)
          (if (class-instance? _%klass103055%_ _%obj103059%_)
              (unchecked-slot-ref _%obj103059%_ _%field103057%_)
              (not-an-instance__%
               _%obj103059%_
               _%klass103055%_
               _%slot103056%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass103048%_ _%slot103049%_ _%field103050%_)
        (lambda (_%obj103052%_ _%val103053%_)
          (if (class-instance? _%klass103048%_ _%obj103052%_)
              (unchecked-field-set!
               _%obj103052%_
               _%field103050%_
               _%val103053%_)
              (not-an-instance__%
               _%obj103052%_
               _%klass103048%_
               _%slot103049%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass103039%_ _%slot103040%_ _%field103041%_)
        (lambda (_%obj103043%_)
          (if (let ((__tmp105978
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass103039%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj103043%_ __tmp105978))
              (unchecked-field-ref _%obj103043%_ _%field103041%_)
              (if (class-instance? _%klass103039%_ _%obj103043%_)
                  (unchecked-slot-ref _%obj103043%_ _%slot103040%_)
                  (not-an-instance__%
                   _%obj103043%_
                   _%klass103039%_
                   _%slot103040%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass103029%_ _%slot103030%_ _%field103031%_)
        (lambda (_%obj103033%_ _%val103034%_)
          (if (let ((__tmp105979
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass103029%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj103033%_ __tmp105979))
              (unchecked-field-set!
               _%obj103033%_
               _%field103031%_
               _%val103034%_)
              (if (class-instance? _%klass103029%_ _%obj103033%_)
                  (unchecked-slot-set!
                   _%obj103033%_
                   _%slot103030%_
                   _%val103034%_)
                  (not-an-instance__%
                   _%obj103033%_
                   _%klass103029%_
                   _%slot103030%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass103023%_ _%slot103024%_ _%field103025%_)
        (lambda (_%obj103027%_)
          (if (let ((__tmp105980
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass103023%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj103027%_ __tmp105980))
              (unchecked-field-ref _%obj103027%_ _%field103025%_)
              (unchecked-slot-ref _%obj103027%_ _%slot103024%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass103016%_ _%slot103017%_ _%field103018%_)
        (lambda (_%obj103020%_ _%val103021%_)
          (if (let ((__tmp105981
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass103016%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj103020%_ __tmp105981))
              (unchecked-field-set!
               _%obj103020%_
               _%field103018%_
               _%val103021%_)
              (unchecked-slot-set!
               _%obj103020%_
               _%slot103017%_
               _%val103021%_)))))
    (define class-slot-offset
      (lambda (_%klass102991%_ _%slot102992%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass102991%_ 'class))
            (let ((_%klass102996%_ _%klass102991%_))
              (if (let () (declare (not safe)) (symbolic? _%slot102992%_))
                  (let ((_%slot103006%_ _%slot102992%_))
                    (__class-slot-offset _%klass102996%_ _%slot103006%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot102992%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass102991%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass102970%_ _%slot102971%_)
        (let* ((_%klass102974%_ _%klass102970%_)
               (_%slot102982%_ _%slot102971%_)
               (__tmp105982
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass102974%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp105982 _%slot102982%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass102944%_ _%obj102945%_ _%slot102946%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass102944%_ 'class))
            (let ((_%klass102950%_ _%klass102944%_))
              (if (let () (declare (not safe)) (symbolic? _%slot102946%_))
                  (let ((_%slot102960%_ _%slot102946%_))
                    (__class-slot-ref
                     _%klass102950%_
                     _%obj102945%_
                     _%slot102960%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot102946%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass102944%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass102920%_ _%obj102921%_ _%slot102922%_)
        (let* ((_%klass102925%_ _%klass102920%_)
               (_%slot102933%_ _%slot102922%_))
          (if (__class-instance? _%klass102925%_ _%obj102921%_)
              (let ((_%off102942%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj102921%_))
                      _%slot102933%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj102921%_
                 _%off102942%_
                 _%klass102925%_
                 _%slot102933%_))
              (not-an-instance__0 _%obj102921%_ _%klass102925%_)))))
    (define class-slot-set!
      (lambda (_%klass102893%_ _%obj102894%_ _%slot102895%_ _%val102896%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass102893%_ 'class))
            (let ((_%klass102900%_ _%klass102893%_))
              (if (let () (declare (not safe)) (symbolic? _%slot102895%_))
                  (let ((_%slot102910%_ _%slot102895%_))
                    (__class-slot-set!
                     _%klass102900%_
                     _%obj102894%_
                     _%slot102910%_
                     _%val102896%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot102895%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass102893%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass102868%_ _%obj102869%_ _%slot102870%_ _%val102871%_)
        (let* ((_%klass102874%_ _%klass102868%_)
               (_%slot102882%_ _%slot102870%_))
          (if (__class-instance? _%klass102874%_ _%obj102869%_)
              (let ((_%off102891%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj102869%_))
                      _%slot102882%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj102869%_
                 _%val102871%_
                 _%off102891%_
                 _%klass102874%_
                 _%slot102882%_))
              (not-an-instance__0 _%obj102869%_ _%klass102874%_)))))
    (define unchecked-field-ref
      (lambda (_%obj102865%_ _%off102866%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj102865%_ _%off102866%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj102861%_ _%off102862%_ _%val102863%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj102861%_
           _%val102863%_
           _%off102862%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj102858%_ _%slot102859%_)
        (unchecked-field-ref
         _%obj102858%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj102858%_))
          _%slot102859%_))))
    (define unchecked-slot-set!
      (lambda (_%obj102854%_ _%slot102855%_ _%val102856%_)
        (unchecked-field-set!
         _%obj102854%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj102854%_))
          _%slot102855%_)
         _%val102856%_)))
    (define slot-ref__%
      (lambda (_%obj102816%_ _%slot102817%_ _%E102818%_)
        (if (symbol? _%slot102817%_)
            (let ((_%slot102822%_ _%slot102817%_))
              (if (procedure? _%E102818%_)
                  (let ((_%E102832%_ _%E102818%_))
                    (__slot-ref__% _%obj102816%_ _%slot102822%_ _%E102832%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E102818%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot102817%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj102845%_ _%slot102846%_)
        (let ((_%E102848%_ __slot-error))
          (slot-ref__% _%obj102845%_ _%slot102846%_ _%E102848%_))))
    (define slot-ref
      (lambda _g105983_
        (let ((_g105984_ (let () (declare (not safe)) (##length _g105983_))))
          (cond ((let () (declare (not safe)) (##fx= _g105984_ 2))
                 (apply slot-ref__0 _g105983_))
                ((let () (declare (not safe)) (##fx= _g105984_ 3))
                 (apply slot-ref__% _g105983_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g105983_))))))
    (define __slot-ref__%
      (lambda (_%obj102772%_ _%slot102773%_ _%E102774%_)
        (let* ((_%slot102777%_ _%slot102773%_)
               (_%E102785%_ _%E102774%_)
               (_%klass102794%_ (class-of _%obj102772%_))
               (_%$e102797%_
                (__class-slot-offset _%klass102794%_ _%slot102777%_)))
          (if _%$e102797%_
              ((lambda (_%off102800%_)
                 (unchecked-field-ref _%obj102772%_ _%off102800%_))
               _%$e102797%_)
              (let ()
                (declare (not safe))
                (_%E102785%_ _%obj102772%_ _%slot102777%_))))))
    (define __slot-ref__0
      (lambda (_%obj102806%_ _%slot102807%_)
        (let ((_%E102809%_ __slot-error))
          (__slot-ref__% _%obj102806%_ _%slot102807%_ _%E102809%_))))
    (define __slot-ref
      (lambda _g105985_
        (let ((_g105986_ (let () (declare (not safe)) (##length _g105985_))))
          (cond ((let () (declare (not safe)) (##fx= _g105986_ 2))
                 (apply __slot-ref__0 _g105985_))
                ((let () (declare (not safe)) (##fx= _g105986_ 3))
                 (apply __slot-ref__% _g105985_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g105985_))))))
    (define slot-set!__%
      (lambda (_%obj102730%_ _%slot102731%_ _%val102732%_ _%E102733%_)
        (if (symbol? _%slot102731%_)
            (let ((_%slot102737%_ _%slot102731%_))
              (if (procedure? _%E102733%_)
                  (let ((_%E102747%_ _%E102733%_))
                    (__slot-set!__%
                     _%obj102730%_
                     _%slot102737%_
                     _%val102732%_
                     _%E102747%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E102733%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot102731%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj102760%_ _%slot102761%_ _%val102762%_)
        (let ((_%E102764%_ __slot-error))
          (slot-set!__%
           _%obj102760%_
           _%slot102761%_
           _%val102762%_
           _%E102764%_))))
    (define slot-set!
      (lambda _g105987_
        (let ((_g105988_ (let () (declare (not safe)) (##length _g105987_))))
          (cond ((let () (declare (not safe)) (##fx= _g105988_ 3))
                 (apply slot-set!__0 _g105987_))
                ((let () (declare (not safe)) (##fx= _g105988_ 4))
                 (apply slot-set!__% _g105987_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g105987_))))))
    (define __slot-set!__%
      (lambda (_%obj102683%_ _%slot102684%_ _%val102685%_ _%E102686%_)
        (let* ((_%slot102689%_ _%slot102684%_)
               (_%E102697%_ _%E102686%_)
               (_%klass102706%_ (class-of _%obj102683%_))
               (_%$e102709%_
                (__class-slot-offset _%klass102706%_ _%slot102689%_)))
          (if _%$e102709%_
              ((lambda (_%off102712%_)
                 (unchecked-field-set!
                  _%obj102683%_
                  _%off102712%_
                  _%val102685%_))
               _%$e102709%_)
              (let ()
                (declare (not safe))
                (_%E102697%_ _%obj102683%_ _%slot102689%_))))))
    (define __slot-set!__0
      (lambda (_%obj102718%_ _%slot102719%_ _%val102720%_)
        (let ((_%E102722%_ __slot-error))
          (__slot-set!__%
           _%obj102718%_
           _%slot102719%_
           _%val102720%_
           _%E102722%_))))
    (define __slot-set!
      (lambda _g105989_
        (let ((_g105990_ (let () (declare (not safe)) (##length _g105989_))))
          (cond ((let () (declare (not safe)) (##fx= _g105990_ 3))
                 (apply __slot-set!__0 _g105989_))
                ((let () (declare (not safe)) (##fx= _g105990_ 4))
                 (apply __slot-set!__% _g105989_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g105989_))))))
    (define __slot-error
      (lambda (_%obj102679%_ _%slot102680%_)
        (error '"Cannot find slot"
               'object:
               _%obj102679%_
               'slot:
               _%slot102680%_)))
    (define subclass?
      (lambda (_%maybe-sub-class102654%_ _%maybe-super-class102655%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class102654%_ 'class))
            (let ((_%maybe-sub-class102659%_ _%maybe-sub-class102654%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class102655%_
                     'class))
                  (let ((_%maybe-super-class102669%_
                         _%maybe-super-class102655%_))
                    (__subclass?
                     _%maybe-sub-class102659%_
                     _%maybe-super-class102669%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class102655%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class102654%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class102626%_ _%maybe-super-class102627%_)
        (let* ((_%maybe-sub-class102630%_ _%maybe-sub-class102626%_)
               (_%maybe-super-class102638%_ _%maybe-super-class102627%_)
               (_%maybe-super-class-id102647%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class102638%_)))
               (_%$e102649%_
                (eq? _%maybe-super-class-id102647%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class102630%_)))))
          (if _%$e102649%_
              _%$e102649%_
              (let ((__tmp105992
                     (lambda (_%super-class102652%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class102652%_))
                            _%maybe-super-class-id102647%_)))
                    (__tmp105991
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class102630%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp105992 __tmp105991))))))
    (define object?
      (lambda (_%o102623%_)
        (if (let () (declare (not safe)) (##structure? _%o102623%_))
            (let ((__tmp105993
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o102623%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp105993 'class))
            '#f)))
    (define object-type
      (lambda (_%o102618%_)
        (if (let () (declare (not safe)) (##structure? _%o102618%_))
            (let ((_%klass102621%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o102618%_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass102621%_ 'class))
                  _%klass102621%_
                  (begin
                    (error '"not an object" _%o102618%_ _%klass102621%_)
                    '#!void)))
            (begin (error '"not an object" _%o102618%_) '#!void))))
    (define direct-instance?
      (lambda (_%klass102603%_ _%obj102604%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass102603%_ 'class))
            (let ((_%klass102608%_ _%klass102603%_))
              (__direct-instance? _%klass102608%_ _%obj102604%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass102603%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass102590%_ _%obj102591%_)
        (let* ((_%klass102594%_ _%klass102590%_)
               (__tmp105994
                (let () (declare (not safe)) (##type-id _%klass102594%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj102591%_ __tmp105994))))
    (define immediate-instance-of?
      (lambda (_%klass102586%_ _%obj102587%_)
        (if (let () (declare (not safe)) (##structure? _%obj102587%_))
            (eq? _%klass102586%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj102587%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass102571%_ _%obj102572%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass102571%_ 'class))
            (let ((_%klass102576%_ _%klass102571%_))
              (__struct-instance? _%klass102576%_ _%obj102572%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass102571%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass102558%_ _%obj102559%_)
        (let* ((_%klass102562%_ _%klass102558%_)
               (__tmp105995
                (let () (declare (not safe)) (##type-id _%klass102562%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj102559%_ __tmp105995))))
    (define class-instance?
      (lambda (_%klass102543%_ _%obj102544%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass102543%_ 'class))
            (let ((_%klass102548%_ _%klass102543%_))
              (__class-instance? _%klass102548%_ _%obj102544%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass102543%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass102528%_ _%obj102529%_)
        (let* ((_%klass102532%_ _%klass102528%_)
               (_%type102541%_ (class-of _%obj102529%_)))
          (__subclass? _%type102541%_ _%klass102532%_))))
    (define make-object
      (lambda (_%klass102503%_ _%k102504%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass102503%_ 'class))
            (let ((_%klass102508%_ _%klass102503%_))
              (if (fixnum? _%k102504%_)
                  (let ((_%k102518%_ _%k102504%_))
                    (__make-object _%klass102508%_ _%k102518%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k102504%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass102503%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass102480%_ _%k102481%_)
        (let* ((_%klass102484%_ _%klass102480%_) (_%k102492%_ _%k102481%_))
          (if (__class-type-system? _%klass102484%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass102484%_)
                '#!void)
              (let ((_%obj102501%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass102484%_ _%k102492%_))))
                (object-fill! _%obj102501%_ '#f))))))
    (define object-fill!
      (lambda (_%obj102465%_ _%fill102466%_)
        (if '#t
            (let ((_%obj102470%_ _%obj102465%_))
              (__object-fill! _%obj102470%_ _%fill102466%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj102465%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj102447%_ _%fill102448%_)
        (let ((_%obj102451%_ _%obj102447%_))
          (let _%loop102460%_ ((_%i102462%_
                                (let ((__tmp105996
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj102451%_))))
                                  (declare (not safe))
                                  (##fx- __tmp105996 '1))))
            (if (let () (declare (not safe)) (##fx> _%i102462%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj102451%_
                     _%fill102448%_
                     _%i102462%_
                     '#f
                     '#f))
                  (_%loop102460%_
                   (let () (declare (not safe)) (##fx- _%i102462%_ '1))))
                _%obj102451%_)))))
    (define new-instance
      (lambda (_%klass102433%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass102433%_ 'class))
            (let ((_%klass102437%_ _%klass102433%_))
              (__new-instance _%klass102437%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass102433%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass102421%_)
        (let* ((_%klass102424%_ _%klass102421%_)
               (__obj105913
                (let ((__tmp105997
                       (let ((__tmp105998
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass102424%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp105998))))
                  (declare (not safe))
                  (##make-structure _%klass102424%_ __tmp105997))))
          (object-fill! __obj105913 '#f)
          __obj105913)))
    (define make-instance
      (lambda (_%klass102406%_ . _%args102407%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass102406%_ 'class))
            (let ((_%klass102411%_ _%klass102406%_))
              (declare (not safe))
              (##apply __make-instance _%klass102411%_ _%args102407%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass102406%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass102378%_ . _%args102379%_)
        (let* ((_%klass102382%_ _%klass102378%_)
               (_%$e102391%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass102382%_ '10 '#f '#f))))
          (if _%$e102391%_
              ((lambda (_%kons-id102394%_)
                 (let ((_%obj102396%_ (__new-instance _%klass102382%_)))
                   (___constructor-init!
                    _%klass102382%_
                    _%kons-id102394%_
                    _%obj102396%_
                    _%args102379%_)
                   _%obj102396%_))
               _%$e102391%_)
              (if (__class-type-metaclass? _%klass102382%_)
                  (let ((_%obj102399%_ (__new-instance _%klass102382%_)))
                    (__metaclass-instance-init!
                     _%klass102382%_
                     _%obj102399%_
                     _%args102379%_)
                    _%obj102399%_)
                  (if (__class-type-struct? _%klass102382%_)
                      (if (let ((__tmp106000
                                 (__class-type-field-count _%klass102382%_))
                                (__tmp105999
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args102379%_))))
                            (declare (not safe))
                            (##fx= __tmp106000 __tmp105999))
                          (apply ##structure _%klass102382%_ _%args102379%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass102382%_
                                   'slots:
                                   (__class-type-slot-list _%klass102382%_)
                                   'args:
                                   _%args102379%_)
                            '#!void))
                      (let ((_%obj102402%_ (__new-instance _%klass102382%_)))
                        (___class-instance-init!
                         _%klass102382%_
                         _%obj102402%_
                         _%args102379%_)
                        _%obj102402%_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj102363%_ . _%args102364%_)
        (if '#t
            (let ((_%obj102368%_ _%obj102363%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj102368%_ _%args102364%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj102363%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj102350%_ . _%args102351%_)
        (let ((_%obj102354%_ _%obj102350%_))
          (if (let ((__tmp106002
                     (let () (declare (not safe)) (##length _%args102351%_)))
                    (__tmp106001
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj102354%_))))
                (declare (not safe))
                (##fx< __tmp106002 __tmp106001))
              (___struct-instance-init! _%obj102354%_ _%args102351%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj102354%_
                     'args:
                     _%args102351%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj102309%_ _%args102310%_)
        (let _%lp102312%_ ((_%k102314%_ '1) (_%rest102315%_ _%args102310%_))
          (let* ((_%rest102316102324%_ _%rest102315%_)
                 (_%else102318102332%_ (lambda () _%obj102309%_))
                 (_%K102320102338%_
                  (lambda (_%rest102335%_ _%hd102336%_)
                    (unchecked-field-set!
                     _%obj102309%_
                     _%k102314%_
                     _%hd102336%_)
                    (_%lp102312%_
                     (let () (declare (not safe)) (##fx+ _%k102314%_ '1))
                     _%rest102335%_))))
            (if (pair? _%rest102316102324%_)
                (let ((_%hd102321102341%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest102316102324%_)))
                      (_%tl102322102343%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest102316102324%_))))
                  (let* ((_%hd102346%_ _%hd102321102341%_)
                         (_%rest102348%_ _%tl102322102343%_))
                    (_%K102320102338%_ _%rest102348%_ _%hd102346%_)))
                (_%else102318102332%_))))))
    (define class-instance-init!
      (lambda (_%obj102294%_ . _%args102295%_)
        (if '#t
            (let ((_%obj102299%_ _%obj102294%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj102299%_ _%args102295%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj102294%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj102281%_ . _%args102282%_)
        (let ((_%obj102285%_ _%obj102281%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj102285%_))
           _%obj102285%_
           _%args102282%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass102223%_ _%obj102224%_ _%args102225%_)
        (let _%lp102227%_ ((_%rest102229%_ _%args102225%_))
          (let* ((_%rest102230102240%_ _%rest102229%_)
                 (_%else102232102248%_
                  (lambda ()
                    (if (null? _%rest102229%_)
                        _%obj102224%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass102223%_
                               'rest:
                               _%rest102229%_))))
                 (_%K102234102262%_
                  (lambda (_%rest102251%_ _%val102252%_ _%key102253%_)
                    (if (keyword? _%key102253%_)
                        (let ((_%$e102256%_
                               (__class-slot-offset
                                _%klass102223%_
                                _%key102253%_)))
                          (if _%$e102256%_
                              ((lambda (_%off102259%_)
                                 (unchecked-field-set!
                                  _%obj102224%_
                                  _%off102259%_
                                  _%val102252%_)
                                 (_%lp102227%_ _%rest102251%_))
                               _%$e102256%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass102223%_
                                     'slot:
                                     _%key102253%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key102253%_)))))
            (if (pair? _%rest102230102240%_)
                (let ((_%hd102235102265%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest102230102240%_)))
                      (_%tl102236102267%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest102230102240%_))))
                  (let ((_%key102270%_ _%hd102235102265%_))
                    (if (pair? _%tl102236102267%_)
                        (let ((_%hd102237102272%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl102236102267%_)))
                              (_%tl102238102274%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl102236102267%_))))
                          (let* ((_%val102277%_ _%hd102237102272%_)
                                 (_%rest102279%_ _%tl102238102274%_))
                            (_%K102234102262%_
                             _%rest102279%_
                             _%val102277%_
                             _%key102270%_)))
                        (_%else102232102248%_))))
                (_%else102232102248%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass102219%_ _%obj102220%_ _%args102221%_)
        (apply call-method
               _%klass102219%_
               'instance-init!
               _%obj102220%_
               _%args102221%_)))
    (define constructor-init!
      (lambda (_%klass102182%_
               _%kons-id102183%_
               _%obj102184%_
               .
               _%args102185%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass102182%_ 'class))
            (let ((_%klass102189%_ _%klass102182%_))
              (if (symbol? _%kons-id102183%_)
                  (let ((_%kons-id102199%_ _%kons-id102183%_))
                    (if '#t
                        (let ((_%obj102209%_ _%obj102184%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass102189%_
                                   _%kons-id102199%_
                                   _%obj102209%_
                                   _%args102185%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                           'contract:
                           'true
                           'value:
                           _%obj102184%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id102183%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass102182%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass102151%_
               _%kons-id102152%_
               _%obj102153%_
               .
               _%args102154%_)
        (let* ((_%klass102157%_ _%klass102151%_)
               (_%kons-id102165%_ _%kons-id102152%_)
               (_%obj102173%_ _%obj102153%_))
          (___constructor-init!
           _%klass102157%_
           _%kons-id102165%_
           _%obj102173%_
           _%args102154%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass102140%_ _%kons-id102141%_ _%obj102142%_ _%args102143%_)
        (let ((_%$e102145%_
               (__find-method
                _%klass102140%_
                _%obj102142%_
                _%kons-id102141%_)))
          (if _%$e102145%_
              ((lambda (_%kons102148%_)
                 (apply _%kons102148%_ _%obj102142%_ _%args102143%_)
                 _%obj102142%_)
               _%$e102145%_)
              (error '"missing constructor"
                     'class:
                     _%klass102140%_
                     'method:
                     _%kons-id102141%_)))))
    (define struct-copy
      (lambda (_%struct102126%_)
        (if '#t
            (let ((_%struct102130%_ _%struct102126%_))
              (__struct-copy _%struct102130%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct102126%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct102114%_)
        (let ((_%struct102117%_ _%struct102114%_))
          (declare (not safe))
          (##structure-copy _%struct102117%_))))
    (define struct->list
      (lambda (_%obj102100%_)
        (if '#t
            (let ((_%obj102104%_ _%obj102100%_))
              (__struct->list _%obj102104%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj102100%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj102081%_)
        (let* ((_%obj102084%_ _%obj102081%_)
               (_%len102093%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj102084%_))))
          (let _%recur102095%_ ((_%i102097%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i102097%_ _%len102093%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj102084%_
                         _%i102097%_
                         '#f
                         '#f))
                      (_%recur102095%_
                       (let () (declare (not safe)) (##fx+ _%i102097%_ '1))))
                '())))))
    (define class->list
      (lambda (_%obj102067%_)
        (if '#t
            (let ((_%obj102071%_ _%obj102067%_)) (__class->list _%obj102071%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@842.20-842.23"
               'contract:
               'true
               'value:
               _%obj102067%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj102043%_)
        (let* ((_%obj102046%_ _%obj102043%_)
               (_%klass102055%_
                (let () (declare (not safe)) (##structure-type _%obj102046%_)))
               (_%slot-vector102057%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass102055%_ '7 '#f '#f))))
          (let _%loop102059%_ ((_%index102061%_
                                (let ((__tmp106003
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector102057%_))))
                                  (declare (not safe))
                                  (##fx- __tmp106003 '1)))
                               (_%plist102062%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index102061%_ '1))
                (cons _%klass102055%_ _%plist102062%_)
                (let ((_%slot102065%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector102057%_
                          _%index102061%_))))
                  (_%loop102059%_
                   (let () (declare (not safe)) (##fx- _%index102061%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot102065%_))
                         (cons (unchecked-field-ref
                                _%obj102046%_
                                _%index102061%_)
                               _%plist102062%_)))))))))
    (define call-method
      (lambda (_%obj102027%_ _%id102028%_ . _%args102029%_)
        (if (symbol? _%id102028%_)
            (let ((_%id102033%_ _%id102028%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj102027%_
                       _%id102033%_
                       _%args102029%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@857.24-857.26"
               'contract:
               'symbol?
               'value:
               _%id102028%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj101996%_ _%id101997%_ . _%args101998%_)
        (let* ((_%id102001%_ _%id101997%_)
               (_%$e102010%_ (__method-ref _%obj101996%_ _%id102001%_)))
          (if _%$e102010%_
              ((lambda (_%method102013%_)
                 (let ((_%method102015%_ _%method102013%_))
                   (apply _%method102015%_ _%obj101996%_ _%args101998%_)))
               _%$e102010%_)
              (error '"cannot find method"
                     'object:
                     _%obj101996%_
                     'method:
                     _%id102001%_)))))
    (define method-ref
      (lambda (_%obj101981%_ _%id101982%_)
        (if (symbol? _%id101982%_)
            (let ((_%id101986%_ _%id101982%_))
              (__method-ref _%obj101981%_ _%id101986%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@884.23-884.25"
               'contract:
               'symbol?
               'value:
               _%id101982%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj101968%_ _%id101969%_)
        (let ((_%id101972%_ _%id101969%_))
          (__find-method
           (class-of _%obj101968%_)
           _%obj101968%_
           _%id101972%_))))
    (define checked-method-ref
      (lambda (_%obj101961%_ _%id101962%_)
        (let ((_%$e101965%_ (method-ref _%obj101961%_ _%id101962%_)))
          (if _%$e101965%_
              _%$e101965%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj101961%_
                       'method:
                       _%id101962%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj101946%_ _%id101947%_)
        (if (symbol? _%id101947%_)
            (let ((_%id101951%_ _%id101947%_))
              (__bound-method-ref _%obj101946%_ _%id101951%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@892.29-892.31"
               'contract:
               'symbol?
               'value:
               _%id101947%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj101914%_ _%id101915%_)
        (let* ((_%id101918%_ _%id101915%_)
               (_%$e101927%_ (__method-ref _%obj101914%_ _%id101918%_)))
          (if _%$e101927%_
              ((lambda (_%method101930%_)
                 (let ((_%method101932%_ _%method101930%_))
                   (lambda _%args101943%_
                     (apply _%method101932%_ _%obj101914%_ _%args101943%_))))
               _%$e101927%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj101899%_ _%id101900%_)
        (if (symbol? _%id101900%_)
            (let ((_%id101904%_ _%id101900%_))
              (__checked-bound-method-ref _%obj101899%_ _%id101904%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@901.37-901.39"
               'contract:
               'symbol?
               'value:
               _%id101900%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj101882%_ _%id101883%_)
        (let* ((_%id101886%_ _%id101883%_)
               (_%method101895%_
                (checked-method-ref _%obj101882%_ _%id101886%_)))
          (lambda _%args101897%_
            (apply _%method101895%_ _%obj101882%_ _%args101897%_)))))
    (define find-method
      (lambda (_%klass101856%_ _%obj101857%_ _%id101858%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass101856%_ 'class))
            (let ((_%klass101862%_ _%klass101856%_))
              (if (symbol? _%id101858%_)
                  (let ((_%id101872%_ _%id101858%_))
                    (__find-method _%klass101862%_ _%obj101857%_ _%id101872%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@906.41-906.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id101858%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@906.20-906.25"
               'contract:
               'class-type?
               'value:
               _%klass101856%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass101829%_ _%obj101830%_ _%id101831%_)
        (let* ((_%klass101834%_ _%klass101829%_)
               (_%id101842%_ _%id101831%_)
               (_%$e101851%_
                (__direct-method-ref
                 _%klass101834%_
                 _%obj101830%_
                 _%id101842%_)))
          (if _%$e101851%_
              _%$e101851%_
              (if (__class-type-sealed? _%klass101834%_)
                  '#f
                  (__mixin-method-ref
                   _%klass101834%_
                   _%obj101830%_
                   _%id101842%_))))))
    (define mixin-find-method
      (lambda (_%mixins101813%_ _%obj101814%_ _%id101815%_)
        (if (symbol? _%id101815%_)
            (let ((_%id101819%_ _%id101815%_))
              (__mixin-find-method
               _%mixins101813%_
               _%obj101814%_
               _%id101819%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@914.37-914.39"
               'contract:
               'symbol?
               'value:
               _%id101815%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins101795%_ _%obj101796%_ _%id101797%_)
        (let* ((_%id101800%_ _%id101797%_)
               (__tmp106004
                (lambda (_%g101808101810%_)
                  (direct-method-ref
                   _%g101808101810%_
                   _%obj101796%_
                   _%id101800%_))))
          (declare (not safe))
          (__ormap1 __tmp106004 _%mixins101795%_))))
    (define direct-method-ref
      (lambda (_%klass101769%_ _%obj101770%_ _%id101771%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass101769%_ 'class))
            (let ((_%klass101775%_ _%klass101769%_))
              (if (symbol? _%id101771%_)
                  (let ((_%id101785%_ _%id101771%_))
                    (__direct-method-ref
                     _%klass101775%_
                     _%obj101770%_
                     _%id101785%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@917.47-917.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id101771%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@917.26-917.31"
               'contract:
               'class-type?
               'value:
               _%klass101769%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass101723%_ _%obj101724%_ _%id101725%_)
        (let* ((_%klass101728%_ _%klass101723%_) (_%id101736%_ _%id101725%_))
          (letrec ((_%metaclass-resolve-method101745%_
                    (lambda ()
                      (let ((__method105914
                             (__method-ref
                              _%klass101728%_
                              'direct-method-ref)))
                        (if __method105914
                            (let ()
                              (declare (not safe))
                              (__method105914
                               _%klass101728%_
                               _%obj101724%_
                               _%id101736%_))
                            (begin
                              (error '"Missing method"
                                     _%klass101728%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!101746%_
                    (lambda ()
                      (let ((_%method101766%_
                             (_%metaclass-resolve-method101745%_)))
                        (let ((__tmp106006
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass101728%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp106005
                               (if _%method101766%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp106006
                           _%id101736%_
                           __tmp106005))
                        _%method101766%_))))
            (let ((_%$e101748%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass101728%_ '11 '#f '#f))))
              (if _%$e101748%_
                  ((lambda (_%ht101751%_)
                     (let ((_%method101753%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht101751%_
                               _%id101736%_
                               '#f))))
                       (if (procedure? _%method101753%_)
                           _%method101753%_
                           (if (__class-type-metaclass? _%klass101728%_)
                               (let ((_%$e101757%_ _%method101753%_))
                                 (if (eq? 'resolved _%$e101757%_)
                                     (_%metaclass-resolve-method101745%_)
                                     (if (eq? 'unknown _%$e101757%_)
                                         '#f
                                         (_%metaclass-resolve-method!101746%_))))
                               '#f))))
                   _%$e101748%_)
                  (if (__class-type-metaclass? _%klass101728%_)
                      (let ((_%tab101762%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass101728%_
                           _%tab101762%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!101746%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass101697%_ _%obj101698%_ _%id101699%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass101697%_ 'class))
            (let ((_%klass101703%_ _%klass101697%_))
              (if (symbol? _%id101699%_)
                  (let ((_%id101713%_ _%id101699%_))
                    (__mixin-method-ref
                     _%klass101703%_
                     _%obj101698%_
                     _%id101713%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@947.46-947.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id101699%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@947.25-947.30"
               'contract:
               'class-type?
               'value:
               _%klass101697%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass101675%_ _%obj101676%_ _%id101677%_)
        (let* ((_%klass101680%_ _%klass101675%_) (_%id101688%_ _%id101677%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass101680%_ '6 '#f '#f))
           _%obj101676%_
           _%id101688%_))))
    (define bind-method!__%
      (lambda (_%klass101634%_ _%id101635%_ _%proc101636%_ _%rebind?101637%_)
        (if (symbol? _%id101635%_)
            (let ((_%id101641%_ _%id101635%_))
              (if (procedure? _%proc101636%_)
                  (let ((_%proc101651%_ _%proc101636%_))
                    (__bind-method!__%
                     _%klass101634%_
                     _%id101641%_
                     _%proc101651%_
                     _%rebind?101637%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@950.42-950.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc101636%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@950.27-950.29"
               'contract:
               'symbol?
               'value:
               _%id101635%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass101664%_ _%id101665%_ _%proc101666%_)
        (let ((_%rebind?101668%_ '#f))
          (bind-method!__%
           _%klass101664%_
           _%id101665%_
           _%proc101666%_
           _%rebind?101668%_))))
    (define bind-method!
      (lambda _g106007_
        (let ((_g106008_ (let () (declare (not safe)) (##length _g106007_))))
          (cond ((let () (declare (not safe)) (##fx= _g106008_ 3))
                 (apply bind-method!__0 _g106007_))
                ((let () (declare (not safe)) (##fx= _g106008_ 4))
                 (apply bind-method!__% _g106007_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g106007_))))))
    (define __bind-method!__%
      (lambda (_%klass101585%_ _%id101586%_ _%proc101587%_ _%rebind?101588%_)
        (let* ((_%id101591%_ _%id101586%_) (_%proc101599%_ _%proc101587%_))
          (letrec ((_%bind!101608%_
                    (lambda (_%ht101617%_)
                      (if (and (not _%rebind?101588%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht101617%_
                                  _%id101591%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass101585%_
                                 'method:
                                 _%id101591%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht101617%_
                               _%id101591%_
                               _%proc101599%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass101585%_ 'class))
                (let ((_%ht101611%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass101585%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht101611%_
                      (_%bind!101608%_ _%ht101611%_)
                      (let ((_%ht101613%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass101585%_
                           _%ht101613%_
                           '11
                           '#f
                           '#f))
                        (_%bind!101608%_ _%ht101613%_))))
                (if (let () (declare (not safe)) (##type? _%klass101585%_))
                    (__bind-method!__%
                     (__shadow-class _%klass101585%_)
                     _%id101591%_
                     _%proc101599%_
                     _%rebind?101588%_)
                    (error '"bad class; expected class or builtin type"
                           _%klass101585%_)))))))
    (define __bind-method!__0
      (lambda (_%klass101622%_ _%id101623%_ _%proc101624%_)
        (let ((_%rebind?101626%_ '#f))
          (__bind-method!__%
           _%klass101622%_
           _%id101623%_
           _%proc101624%_
           _%rebind?101626%_))))
    (define __bind-method!
      (lambda _g106009_
        (let ((_g106010_ (let () (declare (not safe)) (##length _g106009_))))
          (cond ((let () (declare (not safe)) (##fx= _g106010_ 3))
                 (apply __bind-method!__0 _g106009_))
                ((let () (declare (not safe)) (##fx= _g106010_ 4))
                 (apply __bind-method!__% _g106009_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g106009_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint101565%_ _%seed101567%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint101565%_
           procedure-hash
           eq?
           _%seed101567%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint101573%_ '#f) (_%seed101575%_ '0))
          (make-method-specializer-table__%
           _%size-hint101573%_
           _%seed101575%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint101577%_)
        (let ((_%seed101579%_ '0))
          (make-method-specializer-table__%
           _%size-hint101577%_
           _%seed101579%_))))
    (define make-method-specializer-table
      (lambda _g106011_
        (let ((_g106012_ (let () (declare (not safe)) (##length _g106011_))))
          (cond ((let () (declare (not safe)) (##fx= _g106012_ 0))
                 (apply make-method-specializer-table__0 _g106011_))
                ((let () (declare (not safe)) (##fx= _g106012_ 1))
                 (apply make-method-specializer-table__1 _g106011_))
                ((let () (declare (not safe)) (##fx= _g106012_ 2))
                 (apply make-method-specializer-table__% _g106011_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g106011_))))))
    (define method-specializer-table-ref
      (lambda (_%tab101518%_ _%key101519%_ _%default101520%_)
        (let ((_%table101522%_
               (let () (declare (not safe)) (&raw-table-table _%tab101518%_)))
              (_%seed101523%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101518%_))))
          (let* ((_%h101525%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key101519%_))
                         _%seed101523%_))
                 (_%size101528%_ (vector-length _%table101522%_))
                 (_%entries101531%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101528%_ '2)))
                 (_%start101534%_
                  (let ((__tmp106013
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101525%_ _%entries101531%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106013 '1))))
            (let _%loop101538%_ ((_%probe101541%_ _%start101534%_)
                                 (_%i101543%_ '1)
                                 (_%deleted101545%_ '#f))
              (let ((_%k101548%_ (vector-ref _%table101522%_ _%probe101541%_)))
                (if (eq? _%k101548%_ (macro-unused-obj))
                    _%default101520%_
                    (if (eq? _%k101548%_ (macro-deleted-obj))
                        (_%loop101538%_
                         (let ((_%next-probe101553%_
                                (fx+ _%start101534%_
                                     _%i101543%_
                                     (fx* _%i101543%_ _%i101543%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe101553%_ _%size101528%_))
                         (let () (declare (not safe)) (##fx+ _%i101543%_ '1))
                         (let ((_%$e101556%_ _%deleted101545%_))
                           (if _%$e101556%_ _%$e101556%_ _%probe101541%_)))
                        (if (eq? _%key101519%_ _%k101548%_)
                            (vector-ref
                             _%table101522%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe101541%_ '1)))
                            (_%loop101538%_
                             (let ((_%next-probe101561%_
                                    (fx+ _%start101534%_
                                         _%i101543%_
                                         (fx* _%i101543%_ _%i101543%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe101561%_
                                _%size101528%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i101543%_ '1))
                             _%deleted101545%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab101514%_ _%key101515%_ _%value101516%_)
        (if (let ((__tmp106016
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101514%_)))
                  (__tmp106014
                   (let ((__tmp106015
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101514%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp106015 '4))))
              (declare (not safe))
              (##fx< __tmp106016 __tmp106014))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101514%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab101514%_
         _%key101515%_
         _%value101516%_)))
    (define __method-specializer-table-set!
      (lambda (_%tab101465%_ _%key101466%_ _%value101467%_)
        (let ((_%table101470%_
               (let () (declare (not safe)) (&raw-table-table _%tab101465%_)))
              (_%seed101471%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101465%_))))
          (let* ((_%h101473%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key101466%_))
                         _%seed101471%_))
                 (_%size101476%_ (vector-length _%table101470%_))
                 (_%entries101479%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101476%_ '2)))
                 (_%start101482%_
                  (let ((__tmp106017
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101473%_ _%entries101479%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106017 '1))))
            (let _%loop101486%_ ((_%probe101489%_ _%start101482%_)
                                 (_%i101491%_ '1)
                                 (_%deleted101493%_ '#f))
              (let ((_%k101496%_ (vector-ref _%table101470%_ _%probe101489%_)))
                (if (eq? _%k101496%_ (macro-unused-obj))
                    (if _%deleted101493%_
                        (begin
                          (vector-set!
                           _%table101470%_
                           _%deleted101493%_
                           _%key101466%_)
                          (vector-set!
                           _%table101470%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted101493%_ '1))
                           _%value101467%_)
                          ((lambda ()
                             (let ((__tmp106018
                                    (let ((__tmp106019
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab101465%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106019 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab101465%_
                                __tmp106018)))))
                        (begin
                          (vector-set!
                           _%table101470%_
                           _%probe101489%_
                           _%key101466%_)
                          (vector-set!
                           _%table101470%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe101489%_ '1))
                           _%value101467%_)
                          ((lambda ()
                             (let ((__tmp106020
                                    (let ((__tmp106021
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab101465%_))))
                                      (declare (not safe))
                                      (##fx- __tmp106021 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab101465%_
                                __tmp106020))
                             (let ((__tmp106022
                                    (let ((__tmp106023
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab101465%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106023 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab101465%_
                                __tmp106022))))))
                    (if (eq? _%k101496%_ (macro-deleted-obj))
                        (_%loop101486%_
                         (let ((_%next-probe101503%_
                                (fx+ _%start101482%_
                                     _%i101491%_
                                     (fx* _%i101491%_ _%i101491%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe101503%_ _%size101476%_))
                         (let () (declare (not safe)) (##fx+ _%i101491%_ '1))
                         (let ((_%$e101506%_ _%deleted101493%_))
                           (if _%$e101506%_ _%$e101506%_ _%probe101489%_)))
                        (if (eq? _%key101466%_ _%k101496%_)
                            (let ()
                              (vector-set!
                               _%table101470%_
                               _%probe101489%_
                               _%key101466%_)
                              (vector-set!
                               _%table101470%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101489%_ '1))
                               _%value101467%_))
                            (_%loop101486%_
                             (let ((_%next-probe101511%_
                                    (fx+ _%start101482%_
                                         _%i101491%_
                                         (fx* _%i101491%_ _%i101491%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe101511%_
                                _%size101476%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i101491%_ '1))
                             _%deleted101493%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab101460%_
               _%key101461%_
               _%method-specializer-table-update!101462%_
               _%default101463%_)
        (if (let ((__tmp106026
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101460%_)))
                  (__tmp106024
                   (let ((__tmp106025
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101460%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp106025 '4))))
              (declare (not safe))
              (##fx< __tmp106026 __tmp106024))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101460%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab101460%_
         _%key101461%_
         _%method-specializer-table-update!101462%_
         _%default101463%_)))
    (define __method-specializer-table-update!
      (lambda (_%tab101410%_
               _%key101411%_
               _%method-specializer-table-update!101412%_
               _%default101413%_)
        (let ((_%table101416%_
               (let () (declare (not safe)) (&raw-table-table _%tab101410%_)))
              (_%seed101417%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101410%_))))
          (let* ((_%h101419%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key101411%_))
                         _%seed101417%_))
                 (_%size101422%_ (vector-length _%table101416%_))
                 (_%entries101425%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101422%_ '2)))
                 (_%start101428%_
                  (let ((__tmp106027
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101419%_ _%entries101425%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106027 '1))))
            (let _%loop101432%_ ((_%probe101435%_ _%start101428%_)
                                 (_%i101437%_ '1)
                                 (_%deleted101439%_ '#f))
              (let ((_%k101442%_ (vector-ref _%table101416%_ _%probe101435%_)))
                (if (eq? _%k101442%_ (macro-unused-obj))
                    (if _%deleted101439%_
                        (begin
                          (vector-set!
                           _%table101416%_
                           _%deleted101439%_
                           _%key101411%_)
                          (vector-set!
                           _%table101416%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted101439%_ '1))
                           (_%method-specializer-table-update!101412%_
                            _%default101413%_))
                          ((lambda ()
                             (let ((__tmp106028
                                    (let ((__tmp106029
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab101410%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106029 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab101410%_
                                __tmp106028)))))
                        (begin
                          (vector-set!
                           _%table101416%_
                           _%probe101435%_
                           _%key101411%_)
                          (vector-set!
                           _%table101416%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe101435%_ '1))
                           (_%method-specializer-table-update!101412%_
                            _%default101413%_))
                          ((lambda ()
                             (let ((__tmp106030
                                    (let ((__tmp106031
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab101410%_))))
                                      (declare (not safe))
                                      (##fx- __tmp106031 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab101410%_
                                __tmp106030))
                             (let ((__tmp106032
                                    (let ((__tmp106033
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab101410%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106033 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab101410%_
                                __tmp106032))))))
                    (if (eq? _%k101442%_ (macro-deleted-obj))
                        (_%loop101432%_
                         (let ((_%next-probe101449%_
                                (fx+ _%start101428%_
                                     _%i101437%_
                                     (fx* _%i101437%_ _%i101437%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe101449%_ _%size101422%_))
                         (let () (declare (not safe)) (##fx+ _%i101437%_ '1))
                         (let ((_%$e101452%_ _%deleted101439%_))
                           (if _%$e101452%_ _%$e101452%_ _%probe101435%_)))
                        (if (eq? _%key101411%_ _%k101442%_)
                            (let ()
                              (vector-set!
                               _%table101416%_
                               _%probe101435%_
                               _%key101411%_)
                              (vector-set!
                               _%table101416%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101435%_ '1))
                               (_%method-specializer-table-update!101412%_
                                (vector-ref
                                 _%table101416%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe101435%_ '1))))))
                            (_%loop101432%_
                             (let ((_%next-probe101457%_
                                    (fx+ _%start101428%_
                                         _%i101437%_
                                         (fx* _%i101437%_ _%i101437%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe101457%_
                                _%size101422%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i101437%_ '1))
                             _%deleted101439%_))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab101365%_ _%key101367%_)
        (let ((_%table101370%_
               (let () (declare (not safe)) (&raw-table-table _%tab101365%_)))
              (_%seed101372%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101365%_))))
          (let* ((_%h101375%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key101367%_))
                         _%seed101372%_))
                 (_%size101378%_ (vector-length _%table101370%_))
                 (_%entries101381%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101378%_ '2)))
                 (_%start101384%_
                  (let ((__tmp106034
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101375%_ _%entries101381%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106034 '1))))
            (let _%loop101388%_ ((_%probe101391%_ _%start101384%_)
                                 (_%i101393%_ '1))
              (let ((_%k101396%_ (vector-ref _%table101370%_ _%probe101391%_)))
                (if (eq? _%k101396%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k101396%_ (macro-deleted-obj))
                        (_%loop101388%_
                         (let ((_%next-probe101401%_
                                (fx+ _%start101384%_
                                     _%i101393%_
                                     (fx* _%i101393%_ _%i101393%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe101401%_ _%size101378%_))
                         (let () (declare (not safe)) (##fx+ _%i101393%_ '1)))
                        (if (eq? _%key101367%_ _%k101396%_)
                            (let ()
                              (vector-set!
                               _%table101370%_
                               _%probe101391%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table101370%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101391%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp106035
                                        (let ((__tmp106036
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab101365%_))))
                                          (declare (not safe))
                                          (##fx- __tmp106036 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab101365%_
                                    __tmp106035)))))
                            (_%loop101388%_
                             (let ((_%next-probe101407%_
                                    (fx+ _%start101384%_
                                         _%i101393%_
                                         (fx* _%i101393%_ _%i101393%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe101407%_
                                _%size101378%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i101393%_ '1))))))))))))
    (define __method-specializers (make-method-specializer-table__% '#f '0))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc101356%_ _%specializer101357%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101361%_ ()
            (if (let ((__tmp106037
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp106037 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again101361%_)))))
        (method-specializer-table-set!
         __method-specializers
         _%method-proc101356%_
         _%specializer101357%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc101346%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101350%_ ()
            (if (let ((__tmp106038
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp106038 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again101350%_)))))
        (let ((_%specializer101354%_
               (method-specializer-table-ref
                __method-specializers
                _%proc101346%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer101354%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass101344%_)
        (let ((__tmp106039
               (let () (declare (not safe)) (##type-id _%klass101344%_))))
          (declare (not safe))
          (##symbol-hash __tmp106039))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint101325%_ _%seed101327%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint101325%_
           __class-specializer-hash-key
           eq?
           _%seed101327%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint101333%_ '#f) (_%seed101335%_ '0))
          (make-class-specializer-table__%
           _%size-hint101333%_
           _%seed101335%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint101337%_)
        (let ((_%seed101339%_ '0))
          (make-class-specializer-table__%
           _%size-hint101337%_
           _%seed101339%_))))
    (define make-class-specializer-table
      (lambda _g106040_
        (let ((_g106041_ (let () (declare (not safe)) (##length _g106040_))))
          (cond ((let () (declare (not safe)) (##fx= _g106041_ 0))
                 (apply make-class-specializer-table__0 _g106040_))
                ((let () (declare (not safe)) (##fx= _g106041_ 1))
                 (apply make-class-specializer-table__1 _g106040_))
                ((let () (declare (not safe)) (##fx= _g106041_ 2))
                 (apply make-class-specializer-table__% _g106040_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g106040_))))))
    (define class-specializer-table-ref
      (lambda (_%tab101278%_ _%key101279%_ _%default101280%_)
        (let ((_%table101282%_
               (let () (declare (not safe)) (&raw-table-table _%tab101278%_)))
              (_%seed101283%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101278%_))))
          (let* ((_%h101285%_
                  (fxxor (__class-specializer-hash-key _%key101279%_)
                         _%seed101283%_))
                 (_%size101288%_ (vector-length _%table101282%_))
                 (_%entries101291%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101288%_ '2)))
                 (_%start101294%_
                  (let ((__tmp106042
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101285%_ _%entries101291%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106042 '1))))
            (let _%loop101298%_ ((_%probe101301%_ _%start101294%_)
                                 (_%i101303%_ '1)
                                 (_%deleted101305%_ '#f))
              (let ((_%k101308%_ (vector-ref _%table101282%_ _%probe101301%_)))
                (if (eq? _%k101308%_ (macro-unused-obj))
                    _%default101280%_
                    (if (eq? _%k101308%_ (macro-deleted-obj))
                        (_%loop101298%_
                         (let ((_%next-probe101313%_
                                (fx+ _%start101294%_
                                     _%i101303%_
                                     (fx* _%i101303%_ _%i101303%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe101313%_ _%size101288%_))
                         (let () (declare (not safe)) (##fx+ _%i101303%_ '1))
                         (let ((_%$e101316%_ _%deleted101305%_))
                           (if _%$e101316%_ _%$e101316%_ _%probe101301%_)))
                        (if (eq? _%key101279%_ _%k101308%_)
                            (vector-ref
                             _%table101282%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe101301%_ '1)))
                            (_%loop101298%_
                             (let ((_%next-probe101321%_
                                    (fx+ _%start101294%_
                                         _%i101303%_
                                         (fx* _%i101303%_ _%i101303%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe101321%_
                                _%size101288%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i101303%_ '1))
                             _%deleted101305%_))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab101274%_ _%key101275%_ _%value101276%_)
        (if (let ((__tmp106045
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101274%_)))
                  (__tmp106043
                   (let ((__tmp106044
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101274%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp106044 '4))))
              (declare (not safe))
              (##fx< __tmp106045 __tmp106043))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101274%_))
            '#!void)
        (__class-specializer-table-set!
         _%tab101274%_
         _%key101275%_
         _%value101276%_)))
    (define __class-specializer-table-set!
      (lambda (_%tab101225%_ _%key101226%_ _%value101227%_)
        (let ((_%table101230%_
               (let () (declare (not safe)) (&raw-table-table _%tab101225%_)))
              (_%seed101231%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101225%_))))
          (let* ((_%h101233%_
                  (fxxor (__class-specializer-hash-key _%key101226%_)
                         _%seed101231%_))
                 (_%size101236%_ (vector-length _%table101230%_))
                 (_%entries101239%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101236%_ '2)))
                 (_%start101242%_
                  (let ((__tmp106046
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101233%_ _%entries101239%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106046 '1))))
            (let _%loop101246%_ ((_%probe101249%_ _%start101242%_)
                                 (_%i101251%_ '1)
                                 (_%deleted101253%_ '#f))
              (let ((_%k101256%_ (vector-ref _%table101230%_ _%probe101249%_)))
                (if (eq? _%k101256%_ (macro-unused-obj))
                    (if _%deleted101253%_
                        (begin
                          (vector-set!
                           _%table101230%_
                           _%deleted101253%_
                           _%key101226%_)
                          (vector-set!
                           _%table101230%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted101253%_ '1))
                           _%value101227%_)
                          ((lambda ()
                             (let ((__tmp106047
                                    (let ((__tmp106048
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab101225%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106048 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab101225%_
                                __tmp106047)))))
                        (begin
                          (vector-set!
                           _%table101230%_
                           _%probe101249%_
                           _%key101226%_)
                          (vector-set!
                           _%table101230%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe101249%_ '1))
                           _%value101227%_)
                          ((lambda ()
                             (let ((__tmp106049
                                    (let ((__tmp106050
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab101225%_))))
                                      (declare (not safe))
                                      (##fx- __tmp106050 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab101225%_
                                __tmp106049))
                             (let ((__tmp106051
                                    (let ((__tmp106052
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab101225%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106052 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab101225%_
                                __tmp106051))))))
                    (if (eq? _%k101256%_ (macro-deleted-obj))
                        (_%loop101246%_
                         (let ((_%next-probe101263%_
                                (fx+ _%start101242%_
                                     _%i101251%_
                                     (fx* _%i101251%_ _%i101251%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe101263%_ _%size101236%_))
                         (let () (declare (not safe)) (##fx+ _%i101251%_ '1))
                         (let ((_%$e101266%_ _%deleted101253%_))
                           (if _%$e101266%_ _%$e101266%_ _%probe101249%_)))
                        (if (eq? _%key101226%_ _%k101256%_)
                            (let ()
                              (vector-set!
                               _%table101230%_
                               _%probe101249%_
                               _%key101226%_)
                              (vector-set!
                               _%table101230%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101249%_ '1))
                               _%value101227%_))
                            (_%loop101246%_
                             (let ((_%next-probe101271%_
                                    (fx+ _%start101242%_
                                         _%i101251%_
                                         (fx* _%i101251%_ _%i101251%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe101271%_
                                _%size101236%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i101251%_ '1))
                             _%deleted101253%_))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab101220%_
               _%key101221%_
               _%class-specializer-table-update!101222%_
               _%default101223%_)
        (if (let ((__tmp106055
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab101220%_)))
                  (__tmp106053
                   (let ((__tmp106054
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab101220%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp106054 '4))))
              (declare (not safe))
              (##fx< __tmp106055 __tmp106053))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab101220%_))
            '#!void)
        (__class-specializer-table-update!
         _%tab101220%_
         _%key101221%_
         _%class-specializer-table-update!101222%_
         _%default101223%_)))
    (define __class-specializer-table-update!
      (lambda (_%tab101170%_
               _%key101171%_
               _%class-specializer-table-update!101172%_
               _%default101173%_)
        (let ((_%table101176%_
               (let () (declare (not safe)) (&raw-table-table _%tab101170%_)))
              (_%seed101177%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101170%_))))
          (let* ((_%h101179%_
                  (fxxor (__class-specializer-hash-key _%key101171%_)
                         _%seed101177%_))
                 (_%size101182%_ (vector-length _%table101176%_))
                 (_%entries101185%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101182%_ '2)))
                 (_%start101188%_
                  (let ((__tmp106056
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101179%_ _%entries101185%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106056 '1))))
            (let _%loop101192%_ ((_%probe101195%_ _%start101188%_)
                                 (_%i101197%_ '1)
                                 (_%deleted101199%_ '#f))
              (let ((_%k101202%_ (vector-ref _%table101176%_ _%probe101195%_)))
                (if (eq? _%k101202%_ (macro-unused-obj))
                    (if _%deleted101199%_
                        (begin
                          (vector-set!
                           _%table101176%_
                           _%deleted101199%_
                           _%key101171%_)
                          (vector-set!
                           _%table101176%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted101199%_ '1))
                           (_%class-specializer-table-update!101172%_
                            _%default101173%_))
                          ((lambda ()
                             (let ((__tmp106057
                                    (let ((__tmp106058
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab101170%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106058 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab101170%_
                                __tmp106057)))))
                        (begin
                          (vector-set!
                           _%table101176%_
                           _%probe101195%_
                           _%key101171%_)
                          (vector-set!
                           _%table101176%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe101195%_ '1))
                           (_%class-specializer-table-update!101172%_
                            _%default101173%_))
                          ((lambda ()
                             (let ((__tmp106059
                                    (let ((__tmp106060
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab101170%_))))
                                      (declare (not safe))
                                      (##fx- __tmp106060 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab101170%_
                                __tmp106059))
                             (let ((__tmp106061
                                    (let ((__tmp106062
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab101170%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp106062 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab101170%_
                                __tmp106061))))))
                    (if (eq? _%k101202%_ (macro-deleted-obj))
                        (_%loop101192%_
                         (let ((_%next-probe101209%_
                                (fx+ _%start101188%_
                                     _%i101197%_
                                     (fx* _%i101197%_ _%i101197%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe101209%_ _%size101182%_))
                         (let () (declare (not safe)) (##fx+ _%i101197%_ '1))
                         (let ((_%$e101212%_ _%deleted101199%_))
                           (if _%$e101212%_ _%$e101212%_ _%probe101195%_)))
                        (if (eq? _%key101171%_ _%k101202%_)
                            (let ()
                              (vector-set!
                               _%table101176%_
                               _%probe101195%_
                               _%key101171%_)
                              (vector-set!
                               _%table101176%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101195%_ '1))
                               (_%class-specializer-table-update!101172%_
                                (vector-ref
                                 _%table101176%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe101195%_ '1))))))
                            (_%loop101192%_
                             (let ((_%next-probe101217%_
                                    (fx+ _%start101188%_
                                         _%i101197%_
                                         (fx* _%i101197%_ _%i101197%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe101217%_
                                _%size101182%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i101197%_ '1))
                             _%deleted101199%_))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab101125%_ _%key101127%_)
        (let ((_%table101130%_
               (let () (declare (not safe)) (&raw-table-table _%tab101125%_)))
              (_%seed101132%_
               (let () (declare (not safe)) (&raw-table-seed _%tab101125%_))))
          (let* ((_%h101135%_
                  (fxxor (__class-specializer-hash-key _%key101127%_)
                         _%seed101132%_))
                 (_%size101138%_ (vector-length _%table101130%_))
                 (_%entries101141%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size101138%_ '2)))
                 (_%start101144%_
                  (let ((__tmp106063
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h101135%_ _%entries101141%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp106063 '1))))
            (let _%loop101148%_ ((_%probe101151%_ _%start101144%_)
                                 (_%i101153%_ '1))
              (let ((_%k101156%_ (vector-ref _%table101130%_ _%probe101151%_)))
                (if (eq? _%k101156%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k101156%_ (macro-deleted-obj))
                        (_%loop101148%_
                         (let ((_%next-probe101161%_
                                (fx+ _%start101144%_
                                     _%i101153%_
                                     (fx* _%i101153%_ _%i101153%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe101161%_ _%size101138%_))
                         (let () (declare (not safe)) (##fx+ _%i101153%_ '1)))
                        (if (eq? _%key101127%_ _%k101156%_)
                            (let ()
                              (vector-set!
                               _%table101130%_
                               _%probe101151%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table101130%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe101151%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp106064
                                        (let ((__tmp106065
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab101125%_))))
                                          (declare (not safe))
                                          (##fx- __tmp106065 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab101125%_
                                    __tmp106064)))))
                            (_%loop101148%_
                             (let ((_%next-probe101167%_
                                    (fx+ _%start101144%_
                                         _%i101153%_
                                         (fx* _%i101153%_ _%i101153%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe101167%_
                                _%size101138%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i101153%_ '1))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers (make-class-specializer-table__% '#f '0))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass101111%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass101111%_ 'class))
            (let ((_%klass101115%_ _%klass101111%_))
              (__specialize-class _%klass101115%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1025.25-1025.30"
               'contract:
               'class-type?
               'value:
               _%klass101111%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass101093%_)
        (let* ((_%klass101096%_ _%klass101093%_)
               (_%$e101105%_ (__lookup-class-specializer _%klass101096%_)))
          (if _%$e101105%_
              _%$e101105%_
              (let ((_%method-table101109%_
                     (___specialize-class _%klass101096%_)))
                (__bind-class-specializer!
                 _%klass101096%_
                 _%method-table101109%_)
                _%method-table101109%_)))))
    (define __lookup-class-specializer
      (lambda (_%klass101083%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101087%_ ()
            (if (let ((__tmp106066
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp106066 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again101087%_)))))
        (let ((_%method-table101091%_
               (class-specializer-table-ref
                __class-specializers
                _%klass101083%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table101091%_)))
    (define __bind-class-specializer!
      (lambda (_%klass101074%_ _%method-table101075%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again101079%_ ()
            (if (let ((__tmp106067
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp106067 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again101079%_)))))
        (class-specializer-table-set!
         __class-specializers
         _%klass101074%_
         _%method-table101075%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass101058%_
               _%method-table101059%_
               _%method101060%_
               _%proc101061%_)
        (let ((_%$e101063%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table101059%_
                  _%method101060%_
                  '#f))))
          (if _%$e101063%_
              _%$e101063%_
              (let ((_%$e101066%_
                     (__lookup-method-specializer _%proc101061%_)))
                (if _%$e101066%_
                    ((lambda (_%specialize101069%_)
                       (let ((_%specialized-proc101071%_
                              (_%specialize101069%_
                               _%klass101058%_
                               _%method-table101059%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table101059%_
                          _%method101060%_
                          _%specialized-proc101071%_)))
                     _%$e101066%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table101059%_
                       _%method101060%_
                       _%proc101061%_))))))))
    (define ___specialize-class
      (lambda (_%klass101000%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass101000%_ 'class))
            (if (__class-type-metaclass? _%klass101000%_)
                (let ((__method105915
                       (__method-ref _%klass101000%_ 'specialize-class)))
                  (if __method105915
                      (let ()
                        (declare (not safe))
                        (__method105915 _%klass101000%_))
                      (begin
                        (error '"Missing method"
                               _%klass101000%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp106068
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass101000%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp106068))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass101000%_)
                    (let ((_%method-table101006%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop101008%_ ((_%rest101010%_
                                            (__class-precedence-list
                                             _%klass101000%_)))
                        (let* ((_%rest101011101019%_ _%rest101010%_)
                               (_%else101013101027%_
                                (lambda () _%method-table101006%_))
                               (_%K101015101046%_
                                (lambda (_%rest101030%_ _%xklass101031%_)
                                  (let ((_%xmethod-table101032101034%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass101031%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table101032101034%_
                                        (let* ((_%xmethod-table101037%_
                                                _%xmethod-table101032101034%_)
                                               (__tmp106069
                                                (lambda (_%g101038101041%_
                                                         _%g101039101043%_)
                                                  (__specialize-method
                                                   _%klass101000%_
                                                   _%method-table101006%_
                                                   _%g101038101041%_
                                                   _%g101039101043%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table101037%_
                                           __tmp106069))
                                        '#f))
                                  (_%loop101008%_ _%rest101030%_))))
                          (if (pair? _%rest101011101019%_)
                              (let ((_%hd101016101049%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest101011101019%_)))
                                    (_%tl101017101051%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest101011101019%_))))
                                (let* ((_%xklass101054%_ _%hd101016101049%_)
                                       (_%rest101056%_ _%tl101017101051%_))
                                  (_%K101015101046%_
                                   _%rest101056%_
                                   _%xklass101054%_)))
                              (_%else101013101027%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass101000%_))
                (__specialize-class (__shadow-class _%klass101000%_))
                (error '"bad class; cannot specialize" _%klass101000%_)))))
    (define seal-class!
      (lambda (_%klass100986%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass100986%_ 'class))
            (let ((_%klass100990%_ _%klass100986%_))
              (__seal-class! _%klass100990%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1082.20-1082.25"
               'contract:
               'class-type?
               'value:
               _%klass100986%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass100969%_)
        (let ((_%klass100972%_ _%klass100969%_))
          (if (__class-type-sealed? _%klass100972%_)
              '#!void
              (begin
                (if (__class-type-final? _%klass100972%_)
                    '#!void
                    (error '"cannot seal non-final class" _%klass100972%_))
                (if (__class-type-metaclass? _%klass100972%_)
                    (let ((__method105916
                           (__method-ref _%klass100972%_ 'seal-class!)))
                      (if __method105916
                          (let ()
                            (declare (not safe))
                            (__method105916 _%klass100972%_))
                          (begin
                            (error '"Missing method"
                                   _%klass100972%_
                                   'seal-class!)
                            '#!void)))
                    (if (let ((__tmp106070
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass100972%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp106070))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass100972%_)
                        (let ((_%method-table100984%_
                               (__specialize-class _%klass100972%_)))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass100972%_
                           _%method-table100984%_
                           '11
                           '#f
                           '#f))))
                (__class-type-seal! _%klass100972%_))))))
    (define next-method
      (lambda (_%subklass100943%_ _%obj100944%_ _%id100945%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass100943%_ 'class))
            (let ((_%subklass100949%_ _%subklass100943%_))
              (if (symbol? _%id100945%_)
                  (let ((_%id100959%_ _%id100945%_))
                    (__next-method
                     _%subklass100949%_
                     _%obj100944%_
                     _%id100959%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1106.44-1106.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id100945%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1106.20-1106.28"
               'contract:
               'class-type?
               'value:
               _%subklass100943%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass100880%_ _%obj100881%_ _%id100882%_)
        (let* ((_%subklass100885%_ _%subklass100880%_)
               (_%id100893%_ _%id100882%_))
          (letrec ((_%find-next-method100902%_
                    (lambda (_%klass100904%_)
                      (let _%lp100906%_ ((_%rest100908%_
                                          (class-precedence-list
                                           _%klass100904%_)))
                        (let* ((_%rest100909100917%_ _%rest100908%_)
                               (_%else100911100925%_ (lambda () '#f))
                               (_%K100913100931%_
                                (lambda (_%rest100928%_ _%klass100929%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass100885%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass100929%_)))
                                      (__mixin-find-method
                                       _%rest100928%_
                                       _%obj100881%_
                                       _%id100893%_)
                                      (_%lp100906%_ _%rest100928%_)))))
                          (if (pair? _%rest100909100917%_)
                              (let ((_%hd100914100934%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest100909100917%_)))
                                    (_%tl100915100936%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest100909100917%_))))
                                (let* ((_%klass100939%_ _%hd100914100934%_)
                                       (_%rest100941%_ _%tl100915100936%_))
                                  (_%K100913100931%_
                                   _%rest100941%_
                                   _%klass100939%_)))
                              (_%else100911100925%_)))))))
            (_%find-next-method100902%_ (class-of _%obj100881%_))))))
    (define call-next-method
      (lambda (_%subklass100853%_ _%obj100854%_ _%id100855%_ . _%args100856%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass100853%_ 'class))
            (let ((_%subklass100860%_ _%subklass100853%_))
              (if (symbol? _%id100855%_)
                  (let ((_%id100870%_ _%id100855%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass100860%_
                             _%obj100854%_
                             _%id100870%_
                             _%args100856%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1117.49-1117.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id100855%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1117.25-1117.33"
               'contract:
               'class-type?
               'value:
               _%subklass100853%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass100824%_ _%obj100825%_ _%id100826%_ . _%args100827%_)
        (let* ((_%subklass100830%_ _%subklass100824%_)
               (_%id100838%_ _%id100826%_)
               (_%$e100847%_
                (__next-method _%subklass100830%_ _%obj100825%_ _%id100838%_)))
          (if _%$e100847%_
              ((lambda (_%methodf100850%_)
                 (apply _%methodf100850%_ _%obj100825%_ _%args100827%_))
               _%$e100847%_)
              (error '"cannot find next method"
                     'object:
                     _%obj100825%_
                     'method:
                     _%id100838%_)))))
    (define write-style
      (lambda (_%we100822%_) (values (macro-writeenv-style _%we100822%_))))
    (define write-object
      (lambda (_%we100813%_ _%obj100814%_)
        (let ((_%$e100816%_ (__method-ref _%obj100814%_ ':wr)))
          (if _%$e100816%_
              ((lambda (_%method100819%_)
                 (_%method100819%_ _%obj100814%_ _%we100813%_))
               _%$e100816%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we100813%_ _%obj100814%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type100728%_)
        (letrec ((_%shadow-type-id100730%_
                  (lambda (_%type100811%_)
                    (let ((__tmp106071
                           (let ()
                             (declare (not safe))
                             (##type-name _%type100811%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp106071 '"::t"))))
                 (_%shadow-type-name100731%_
                  (lambda (_%type100809%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type100809%_))))
                 (_%make-shadow-class100732%_
                  (lambda (_%type100801%_ _%precedence-list100802%_)
                    (let* ((_%super100804%_
                            (if (pair? _%precedence-list100802%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list100802%_))
                                      '())
                                '()))
                           (_%klass100806%_
                            (make-class-type
                             (_%shadow-type-id100730%_ _%type100801%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type100801%_))
                             _%super100804%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (if (__type-extensible?
                                              _%type100801%_)
                                             '()
                                             (cons (cons 'final: '#t) '()))))
                             '#f)))
                      (let ((__tmp106072
                             (let ()
                               (declare (not safe))
                               (##type-id _%type100801%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp106072
                         _%klass100806%_))
                      _%klass100806%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again100736%_ ()
              (if (let ((__tmp106073
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp106073 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (_%again100736%_)))))
          (let ((_%$e100740%_
                 (let ((__tmp106074
                        (let ()
                          (declare (not safe))
                          (##type-id _%type100728%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp106074 '#f))))
            (if _%$e100740%_
                ((lambda (_%klass100743%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass100743%_)
                 _%$e100740%_)
                (let _%loop100746%_ ((_%super100748%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type100728%_)))
                                     (_%hierarchy100749%_ '()))
                  (if (not _%super100748%_)
                      (let _%loop100752%_ ((_%rest100754%_ _%hierarchy100749%_)
                                           (_%precedence-list100755%_ '()))
                        (let* ((_%rest100756100764%_ _%rest100754%_)
                               (_%else100758100774%_
                                (lambda ()
                                  (let ((_%klass100772%_
                                         (_%make-shadow-class100732%_
                                          _%type100728%_
                                          _%precedence-list100755%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass100772%_)))
                               (_%K100760100788%_
                                (lambda (_%rest100777%_ _%type100778%_)
                                  (let ((_%$e100780%_
                                         (let ((__tmp106075
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type100778%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp106075
                                            '#f))))
                                    (if _%$e100780%_
                                        ((lambda (_%klass100783%_)
                                           (_%loop100752%_
                                            _%rest100777%_
                                            (cons _%klass100783%_
                                                  _%precedence-list100755%_)))
                                         _%$e100780%_)
                                        (let ((_%klass100786%_
                                               (_%make-shadow-class100732%_
                                                _%type100778%_
                                                _%precedence-list100755%_)))
                                          (_%loop100752%_
                                           _%rest100777%_
                                           (cons _%klass100786%_
                                                 _%precedence-list100755%_))))))))
                          (if (pair? _%rest100756100764%_)
                              (let ((_%hd100761100791%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest100756100764%_)))
                                    (_%tl100762100793%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest100756100764%_))))
                                (let* ((_%type100796%_ _%hd100761100791%_)
                                       (_%rest100798%_ _%tl100762100793%_))
                                  (_%K100760100788%_
                                   _%rest100798%_
                                   _%type100796%_)))
                              (_%else100758100774%_))))
                      (_%loop100746%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super100748%_))
                       (cons _%super100748%_ _%hierarchy100749%_)))))))))
    (define __type
      (let* ((_%tb100717%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e100719%_ _%tb100717%_))
        (if (eq? '2 _%$e100719%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e100719%_)
                (let ((_%flonum-self-tagging-tags100722%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits100723%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e100725%_ _%flonum-self-tagging-tags100722%_))
                    (if (eq? '0 _%$e100725%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits100723%_ '2))
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
                        (if (eq? '1 _%$e100725%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits100723%_ '2))
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
                            (if (eq? '2 _%$e100725%_)
                                '#(fixnum
                                   subtyped
                                   flonum
                                   flonum
                                   special
                                   pair
                                   flonum
                                   undefined)
                                (if (eq? '3 _%$e100725%_)
                                    '#(fixnum
                                       subtyped
                                       flonum
                                       flonum
                                       special
                                       pair
                                       flonum
                                       flonum)
                                    (if (eq? '4 _%$e100725%_)
                                        '#(fixnum
                                           subtyped
                                           flonum
                                           flonum
                                           special
                                           pair
                                           flonum
                                           flonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags100722%_))))))))
                (error '"unexpected tag width" _%tb100717%_)))))
    (define __class
      (let* ((_%len100670%_
              (let () (declare (not safe)) (##vector-length __type)))
             (_%cv100672%_
              (let () (declare (not safe)) (##make-vector _%len100670%_ '#f))))
        (let _%loop100675%_ ((_%i100677%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i100677%_ _%len100670%_))
              (let* ((_%t100679%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i100677%_)))
                     (_%f100714%_
                      (if (eq? _%t100679%_ 'undefined)
                          (lambda (_%obj100682%_)
                            (error '"object type is undefined" _%obj100682%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t100679%_
                                        '(fixnum flonum pair vector)))
                              (lambda (_%obj100685%_)
                                (declare (not interrupts-enabled) (not safe))
                                (__system-class _%t100679%_))
                              (if (eq? _%t100679%_ 'subtyped)
                                  (lambda (_%obj100689%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st100692%_
                                           (##subtype _%obj100689%_)))
                                      (if (##fx= _%st100692%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass100695%_
                                                 (##structure-type
                                                  _%obj100689%_)))
                                            (if (##structure-instance-of?
                                                 _%klass100695%_
                                                 'class)
                                                _%klass100695%_
                                                (__shadow-class
                                                 _%klass100695%_)))
                                          (if (##fx= _%st100692%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj100689%_)
                                                         '1)
                                                  (__system-class 'box)
                                                  (__system-class 'values))
                                              (let ((_%$e100698%_
                                                     (##vector-ref
                                                      __subtype-id
                                                      _%st100692%_)))
                                                (if _%$e100698%_
                                                    (__system-class
                                                     _%$e100698%_)
                                                    (error '"unknown class"
                                                           'subtype:
                                                           _%st100692%_
                                                           'object:
                                                           _%obj100689%_)))))))
                                  (if (eq? _%t100679%_ 'special)
                                      (lambda (_%obj100703%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (if (char? _%obj100703%_)
                                            (__system-class 'char)
                                            (if (eq? _%obj100703%_ '())
                                                (__system-class 'null)
                                                (if (eq? _%obj100703%_ '#f)
                                                    (__system-class 'boolean)
                                                    (if (eq? _%obj100703%_ '#t)
                                                        (__system-class
                                                         'boolean)
                                                        (if (eq? _%obj100703%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void)
                    (__system-class 'void)
                    (if (eq? _%obj100703%_ '#!eof)
                        (__system-class 'eof)
                        (__system-class 'special))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t100679%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv100672%_ _%i100677%_ _%f100714%_))
                (_%loop100675%_
                 (let () (declare (not safe)) (##fx+ _%i100677%_ '1))))
              _%cv100672%_))))
    (define type-of
      (lambda (_%obj100666%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj100666%_)))))
    (define class-of
      (lambda (_%obj100657%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t100661%_ (##type _%obj100657%_))
                 (_%f100663%_ (##vector-ref __class _%t100661%_)))
            (_%f100663%_ _%obj100657%_)))))
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
      (lambda (_%id100651%_)
        (let ((_%$e100653%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id100651%_ '#f))))
          (if _%$e100653%_
              _%$e100653%_
              (error '"unknown system class" _%id100651%_)))))
    (define __make-system-class
      (lambda (_%id100646%_ _%super100647%_)
        (let ((_%klass100649%_
               (make-class-type
                _%id100646%_
                _%id100646%_
                _%super100647%_
                '()
                '((system: . #t))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id100646%_
             _%klass100649%_))
          _%klass100649%_)))))
