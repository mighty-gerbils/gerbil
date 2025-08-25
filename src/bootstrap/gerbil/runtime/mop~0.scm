(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1756156298)
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
      (let ((_%flags107537%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties107538%_ '((direct-slots:) (system: . #t)))
            (_%slot-table107539%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags107537%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table107539%_
           _%properties107538%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots107513%_
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
             (_%slot-vector107515%_ (list->vector (cons '#f _%slots107513%_)))
             (_%slot-table107522%_
              (let ((_%slot-table107517%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp108980
                       (lambda (_%slot107519%_ _%field107520%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107517%_
                            _%slot107519%_
                            _%field107520%_))
                         (let ((__tmp108981
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot107519%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107517%_
                            __tmp108981
                            _%field107520%_))))
                      (__tmp108978
                       (let ((__tmp108979
                              (let ()
                                (declare (not safe))
                                (##length _%slots107513%_))))
                         (declare (not safe))
                         (##iota __tmp108979 '1))))
                  (declare (not safe))
                  (##for-each __tmp108980 _%slots107513%_ __tmp108978))
                _%slot-table107517%_))
             (_%flags107524%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields107530%_
              (list->vector
               (let ((__tmp108982
                      (map (lambda (_%g107525107527%_)
                             (list _%g107525107527%_ '5 '#f))
                           (drop _%slots107513%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp108982))))
             (_%properties107532%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots107513%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t107534%_
              (let ((__tmp108983 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags107524%_
                 ##type-type
                 _%fields107530%_
                 __tmp108983
                 _%slot-vector107515%_
                 _%slot-table107522%_
                 _%properties107532%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t107534%_ _%t107534%_))
        _%t107534%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags107509%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties107510%_ '((direct-slots:) (system: . #t)))
            (_%slot-table107511%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp108984 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags107509%_
           '#f
           '#()
           __tmp108984
           '#(#f)
           _%slot-table107511%_
           _%properties107510%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj107507%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj107507%_ 'class))))
    (define class-type=?
      (lambda (_%x107482%_ _%y107483%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x107482%_ 'class))
            (let ((_%x107487%_ _%x107482%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y107483%_ 'class))
                  (let ((_%y107497%_ _%y107483%_))
                    (__class-type=? _%x107487%_ _%y107497%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y107483%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x107482%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x107461%_ _%y107462%_)
        (let* ((_%x107465%_ _%x107461%_) (_%y107473%_ _%y107462%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x107465%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y107473%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type107447%_)
        (if (let () (declare (not safe)) (##type? _%type107447%_))
            (let ((_%type107451%_ _%type107447%_))
              (__type-opaque? _%type107451%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type107447%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type107435%_)
        (let* ((_%type107438%_ _%type107435%_)
               (__tmp108985
                (let ((__tmp108986
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type107438%_))))
                  (declare (not safe))
                  (##fxand __tmp108986 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp108985 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type107421%_)
        (if (let () (declare (not safe)) (##type? _%type107421%_))
            (let ((_%type107425%_ _%type107421%_))
              (__type-extensible? _%type107425%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type107421%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type107409%_)
        (let* ((_%type107412%_ _%type107409%_)
               (__tmp108987
                (let ((__tmp108988
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type107412%_))))
                  (declare (not safe))
                  (##fxand __tmp108988 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp108987 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type107395%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type107395%_ 'class))
            (let ((_%type107399%_ _%type107395%_))
              (__class-type-final? _%type107399%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type107395%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type107383%_)
        (let* ((_%type107386%_ _%type107383%_)
               (__tmp108989
                (let ((__tmp108990
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type107386%_))))
                  (declare (not safe))
                  (##fxand __tmp108990 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp108989 '0))))
    (define class-type-struct?
      (lambda (_%klass107369%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107369%_ 'class))
            (let ((_%klass107373%_ _%klass107369%_))
              (__class-type-struct? _%klass107373%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass107369%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass107357%_)
        (let* ((_%klass107360%_ _%klass107357%_)
               (__tmp108991
                (let ((__tmp108992
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass107360%_))))
                  (declare (not safe))
                  (##fxand __tmp108992 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp108991 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass107343%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107343%_ 'class))
            (let ((_%klass107347%_ _%klass107343%_))
              (__class-type-sealed? _%klass107347%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass107343%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass107331%_)
        (let* ((_%klass107334%_ _%klass107331%_)
               (__tmp108993
                (let ((__tmp108994
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass107334%_))))
                  (declare (not safe))
                  (##fxand __tmp108994 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp108993 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass107317%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107317%_ 'class))
            (let ((_%klass107321%_ _%klass107317%_))
              (__class-type-metaclass? _%klass107321%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass107317%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass107305%_)
        (let* ((_%klass107308%_ _%klass107305%_)
               (__tmp108995
                (let ((__tmp108996
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass107308%_))))
                  (declare (not safe))
                  (##fxand __tmp108996 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp108995 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass107291%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107291%_ 'class))
            (let ((_%klass107295%_ _%klass107291%_))
              (__class-type-system? _%klass107295%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass107291%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass107279%_)
        (let* ((_%klass107282%_ _%klass107279%_)
               (__tmp108997
                (let ((__tmp108998
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass107282%_))))
                  (declare (not safe))
                  (##fxand __tmp108998 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp108997 class-type-flag-system))))
    (define make-class-type-descriptor
      (lambda (_%type-id107161%_
               _%type-name107162%_
               _%type-super107163%_
               _%precedence-list107164%_
               _%slot-vector107165%_
               _%properties107166%_
               _%constructor107167%_
               _%slot-table107168%_
               _%methods107169%_)
        (letrec ((_%make-props!107172%_
                  (lambda (_%key107248%_)
                    (letrec* ((_%ht107250%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!107251%_
                               (lambda (_%ht107272%_ _%slots107273%_)
                                 (for-each
                                  (lambda (_%g107274107276%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht107272%_
                                       _%g107274107276%_
                                       '#t)))
                                  _%slots107273%_)))
                              (_%put-alist!107252%_
                               (lambda (_%ht107261%_
                                        _%key107262%_
                                        _%alist107263%_)
                                 (let ((_%$e107265%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key107262%_
                                           _%alist107263%_))))
                                   (if _%$e107265%_
                                       ((lambda (_%g107267107269%_)
                                          (_%put-slots!107251%_
                                           _%ht107261%_
                                           _%g107267107269%_))
                                        _%$e107265%_)
                                       '#!void)))))
                      (_%put-alist!107252%_
                       _%ht107250%_
                       _%key107248%_
                       _%properties107166%_)
                      (for-each
                       (lambda (_%mixin107254%_)
                         (let ((_%alist107256%_
                                (##structure-ref
                                 _%mixin107254%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist107256%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key107248%_
                                           _%alist107256%_))))
                               (_%put-slots!107251%_
                                _%ht107250%_
                                (class-type-slot-list _%mixin107254%_))
                               (_%put-alist!107252%_
                                _%ht107250%_
                                _%key107248%_
                                _%alist107256%_))))
                       _%precedence-list107164%_)
                      _%ht107250%_))))
          (let* ((_%transparent?107174%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties107166%_)))
                 (_%all-slots-printable?107179%_
                  (let ((_%$e107176%_ _%transparent?107174%_))
                    (if _%$e107176%_
                        _%$e107176%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties107166%_))))))
                 (_%printable107181%_
                  (if (not _%all-slots-printable?107179%_)
                      (_%make-props!107172%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?107186%_
                  (let ((_%$e107183%_ _%transparent?107174%_))
                    (if _%$e107183%_
                        _%$e107183%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties107166%_))))))
                 (_%equalable107188%_
                  (if (not _%all-slots-equalable?107186%_)
                      (_%make-props!107172%_ 'equal:)
                      '#f))
                 (_%first-new-field107190%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super107163%_ 'class))
                      (let ((__tmp108999
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super107163%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp108999))
                      '1))
                 (_%field-info-length107192%_
                  (let ((__tmp109000
                         (let ((__tmp109001
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector107165%_))))
                           (declare (not safe))
                           (##fx- __tmp109001 _%first-new-field107190%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp109000)))
                 (_%field-info107194%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length107192%_ '#f)))
                 (_%struct?107196%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties107166%_)))
                 (_%final?107198%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties107166%_)))
                 (_%metaclass107206%_
                  (let ((_%metaclass107199107201%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties107166%_))))
                    (if _%metaclass107199107201%_
                        (let ((_%metaclass107204%_ _%metaclass107199107201%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass107204%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id107161%_
                                     'metaclass:
                                     _%metaclass107204%_))
                          _%metaclass107204%_)
                        '#f)))
                 (_%system?107208%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties107166%_)))
                 (_%opaque?107216%_
                  (if (or _%transparent?107174%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties107166%_)))
                      '#f
                      (let ((_%$e107213%_ (not _%type-super107163%_)))
                        (if _%$e107213%_
                            _%$e107213%_
                            (__type-opaque? _%type-super107163%_)))))
                 (_%type-flags107218%_
                  (let ((__tmp109006
                         (if _%final?107198%_ '0 type-flag-extensible))
                        (__tmp109005
                         (if _%opaque?107216%_ type-flag-opaque '0))
                        (__tmp109004
                         (if _%struct?107196%_ class-type-flag-struct '0))
                        (__tmp109003
                         (if _%metaclass107206%_ class-type-flag-metaclass '0))
                        (__tmp109002
                         (if _%system?107208%_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp109006
                             __tmp109005
                             __tmp109004
                             __tmp109003
                             __tmp109002)))
                 (_%precedence-list107226%_
                  (let ((_%$e107220%_ (memq t::t _%precedence-list107164%_)))
                    (if _%$e107220%_
                        ((lambda (_%tail107223%_)
                           (if (null? (cdr _%tail107223%_))
                               _%precedence-list107164%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list107164%_)))
                         _%$e107220%_)
                        (let ((__tmp109007 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list107164%_ __tmp109007))))))
            (let _%loop107229%_ ((_%i107231%_ _%first-new-field107190%_)
                                 (_%j107232%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j107232%_ _%field-info-length107192%_))
                  (let* ((_%slot107234%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector107165%_ _%i107231%_)))
                         (_%flags107242%_
                          (if _%transparent?107174%_
                              '0
                              (let ((__tmp109009
                                     (if (or _%all-slots-printable?107179%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable107181%_
                                                _%slot107234%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp109008
                                     (if (or _%all-slots-equalable?107186%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable107188%_
                                                _%slot107234%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp109009 __tmp109008)))))
                    (vector-set!
                     _%field-info107194%_
                     _%j107232%_
                     _%slot107234%_)
                    (vector-set!
                     _%field-info107194%_
                     (let () (declare (not safe)) (##fx+ _%j107232%_ '1))
                     _%flags107242%_)
                    (_%loop107229%_
                     (let () (declare (not safe)) (##fx+ _%i107231%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j107232%_ '3))))
                  '#!void))
            (if _%metaclass107206%_
                (let ((_%val107245%_
                       (make-instance
                        _%metaclass107206%_
                        _%type-id107161%_
                        _%type-name107162%_
                        _%type-flags107218%_
                        _%type-super107163%_
                        _%field-info107194%_
                        _%precedence-list107226%_
                        _%slot-vector107165%_
                        _%slot-table107168%_
                        _%properties107166%_
                        _%constructor107167%_
                        _%methods107169%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val107245%_ 'class))
                      _%val107245%_
                      (error '"bad cast" class::t _%val107245%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id107161%_
                   _%type-name107162%_
                   _%type-flags107218%_
                   _%type-super107163%_
                   _%field-info107194%_
                   _%precedence-list107226%_
                   _%slot-vector107165%_
                   _%slot-table107168%_
                   _%properties107166%_
                   _%constructor107167%_
                   _%methods107169%_)))))))
    (define class-type-id
      (lambda (_%klass107159%_)
        (##structure-ref _%klass107159%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass107157%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass107157%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass107154%_ _%val107155%_)
        (##structure-set! _%klass107154%_ _%val107155%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass107149%_ _%val107151%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107149%_
           _%val107151%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass107147%_)
        (##structure-ref _%klass107147%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass107145%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass107145%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass107142%_ _%val107143%_)
        (##structure-set! _%klass107142%_ _%val107143%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass107137%_ _%val107139%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107137%_
           _%val107139%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass107135%_)
        (##structure-ref _%klass107135%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass107133%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass107133%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass107130%_ _%val107131%_)
        (##structure-set! _%klass107130%_ _%val107131%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass107125%_ _%val107127%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107125%_
           _%val107127%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass107123%_)
        (##structure-ref _%klass107123%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass107121%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass107121%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass107118%_ _%val107119%_)
        (##structure-set! _%klass107118%_ _%val107119%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass107113%_ _%val107115%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107113%_
           _%val107115%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass107111%_)
        (##structure-ref _%klass107111%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass107109%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass107109%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass107106%_ _%val107107%_)
        (##structure-set! _%klass107106%_ _%val107107%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass107101%_ _%val107103%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107101%_
           _%val107103%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass107099%_)
        (##structure-ref _%klass107099%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass107097%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass107097%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass107094%_ _%val107095%_)
        (##structure-set!
         _%klass107094%_
         _%val107095%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass107089%_ _%val107091%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107089%_
           _%val107091%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass107087%_)
        (##structure-ref _%klass107087%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass107085%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass107085%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass107082%_ _%val107083%_)
        (##structure-set!
         _%klass107082%_
         _%val107083%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass107077%_ _%val107079%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107077%_
           _%val107079%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass107075%_)
        (##structure-ref _%klass107075%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass107073%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass107073%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass107070%_ _%val107071%_)
        (##structure-set!
         _%klass107070%_
         _%val107071%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass107065%_ _%val107067%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107065%_
           _%val107067%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass107063%_)
        (##structure-ref _%klass107063%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass107061%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass107061%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass107058%_ _%val107059%_)
        (##structure-set!
         _%klass107058%_
         _%val107059%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass107053%_ _%val107055%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107053%_
           _%val107055%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass107051%_)
        (##structure-ref _%klass107051%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass107049%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass107049%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass107046%_ _%val107047%_)
        (##structure-set!
         _%klass107046%_
         _%val107047%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass107041%_ _%val107043%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107041%_
           _%val107043%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass107039%_)
        (##structure-ref _%klass107039%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass107037%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass107037%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass107034%_ _%val107035%_)
        (##structure-set!
         _%klass107034%_
         _%val107035%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass107029%_ _%val107031%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107029%_
           _%val107031%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass107015%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107015%_ 'class))
            (let ((_%klass107019%_ _%klass107015%_))
              (__class-type-slot-list _%klass107019%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass107015%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass107003%_)
        (let ((_%klass107006%_ _%klass107003%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass107006%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass106989%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106989%_ 'class))
            (let ((_%klass106993%_ _%klass106989%_))
              (__class-type-field-count _%klass106993%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass106989%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass106977%_)
        (let* ((_%klass106980%_ _%klass106977%_)
               (__tmp109010
                (let ((__tmp109011
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass106980%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp109011))))
          (declare (not safe))
          (##fx- __tmp109010 '1))))
    (define class-type-seal!
      (lambda (_%klass106963%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106963%_ 'class))
            (let ((_%klass106967%_ _%klass106963%_))
              (__class-type-seal! _%klass106967%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass106963%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass106951%_)
        (let ((_%klass106954%_ _%klass106951%_))
          (let ((__tmp109012
                 (let ((__tmp109013
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass106954%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp109013))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass106954%_
             __tmp109012
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct106926%_ _%maybe-super-struct106927%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct106926%_ 'class))
            (let ((_%maybe-sub-struct106931%_ _%maybe-sub-struct106926%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct106927%_
                     'class))
                  (let ((_%maybe-super-struct106941%_
                         _%maybe-super-struct106927%_))
                    (__substruct?
                     _%maybe-sub-struct106931%_
                     _%maybe-super-struct106941%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct106927%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct106926%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct106895%_ _%maybe-super-struct106896%_)
        (let* ((_%maybe-sub-struct106899%_ _%maybe-sub-struct106895%_)
               (_%maybe-super-struct106907%_ _%maybe-super-struct106896%_)
               (_%maybe-super-struct-id106916%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct106907%_))))
          (let _%lp106918%_ ((_%super-struct106920%_
                              _%maybe-sub-struct106899%_))
            (if (not _%super-struct106920%_)
                '#f
                (if (eq? _%maybe-super-struct-id106916%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct106920%_)))
                    '#t
                    (_%lp106918%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct106920%_)))))))))
    (define base-struct/1
      (lambda (_%klass106890%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106890%_ 'class))
            (if (__class-type-struct? _%klass106890%_)
                _%klass106890%_
                (let () (declare (not safe)) (##type-super _%klass106890%_)))
            (if (not _%klass106890%_)
                '#f
                (error '"not a class or false" _%klass106890%_)))))
    (define base-struct/2
      (lambda (_%klass1106875%_ _%klass2106876%_)
        (let ((_%s1106878%_ (base-struct/1 _%klass1106875%_))
              (_%s2106879%_ (base-struct/1 _%klass2106876%_)))
          (if (or (not _%s1106878%_)
                  (and _%s2106879%_ (substruct? _%s1106878%_ _%s2106879%_)))
              _%s2106879%_
              (if (or (not _%s2106879%_)
                      (and _%s1106878%_
                           (substruct? _%s2106879%_ _%s1106878%_)))
                  _%s1106878%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1106875%_
                         _%klass2106876%_
                         _%s1106878%_
                         _%s2106879%_))))))
    (define base-struct/list
      (lambda (_%all-supers106759%_)
        (let* ((_%all-supers106760106785%_ _%all-supers106759%_)
               (_%E106765106789%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers106760106785%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K106783106872%_ (lambda () '#f))
                (_%K106780106858%_
                 (lambda (_%x106856%_) (base-struct/1 _%x106856%_)))
                (_%K106775106835%_
                 (lambda (_%y106832%_ _%x106833%_)
                   (base-struct/2 _%x106833%_ _%y106832%_)))
                (_%K106766106796%_
                 (lambda (_%y106793%_ _%x106794%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x106794%_ _%y106793%_)))))
            (let* ((_%__match108972108973%_
                    (lambda (_%hd106767106799%_ _%tl106768106801%_)
                      (let ((_%x106804%_ _%hd106767106799%_))
                        (letrec ((_%splice-rest106770106806%_
                                  (lambda (_%rest106774106813%_ _%y106815%_)
                                    (if (null? _%rest106774106813%_)
                                        (_%K106766106796%_
                                         _%y106815%_
                                         _%x106804%_)
                                        (_%E106765106789%_))))
                                 (_%splice-try106772106808%_
                                  (lambda (_%hd106773106817%_
                                           _%rest106774106819%_
                                           _%y106769106820%_)
                                    (let ((_%y106823%_ _%hd106773106817%_))
                                      (_%splice-loop106771106810%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest106774106819%_))
                                       (cons _%y106823%_ _%y106769106820%_)))))
                                 (_%splice-loop106771106810%_
                                  (lambda (_%rest106774106825%_
                                           _%y106769106826%_)
                                    (if (pair? _%rest106774106825%_)
                                        (_%splice-try106772106808%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest106774106825%_))
                                         _%rest106774106825%_
                                         _%y106769106826%_)
                                        (_%splice-rest106770106806%_
                                         _%rest106774106825%_
                                         (reverse _%y106769106826%_))))))
                          (_%splice-loop106771106810%_
                           _%tl106768106801%_
                           '())))))
                   (_%try-match106762106868%_
                    (lambda ()
                      (if (pair? _%all-supers106760106785%_)
                          (let ((_%tl106782106863%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers106760106785%_)))
                                (_%hd106781106861%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers106760106785%_))))
                            (if (null? _%tl106782106863%_)
                                (let ((_%x106866%_ _%hd106781106861%_))
                                  (base-struct/1 _%x106866%_))
                                (if (pair? _%tl106782106863%_)
                                    (let ((_%tl106779106847%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl106782106863%_)))
                                          (_%hd106778106845%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl106782106863%_))))
                                      (if (null? _%tl106779106847%_)
                                          (let ((_%x106843%_
                                                 _%hd106781106861%_)
                                                (_%y106850%_
                                                 _%hd106778106845%_))
                                            (_%K106775106835%_
                                             _%y106850%_
                                             _%x106843%_))
                                          (_%__match108972108973%_
                                           _%hd106781106861%_
                                           _%tl106782106863%_)))
                                    (_%__match108972108973%_
                                     _%hd106781106861%_
                                     _%tl106782106863%_))))
                          (_%E106765106789%_)))))
              (if (null? _%all-supers106760106785%_)
                  (_%K106783106872%_)
                  (_%try-match106762106868%_)))))))
    (define base-struct
      (lambda _%all-supers106757%_ (base-struct/list _%all-supers106757%_)))
    (define find-super-constructor
      (lambda (_%super106708%_)
        (let _%lp106710%_ ((_%rest106712%_ _%super106708%_)
                           (_%constructor106713%_ '#f))
          (let* ((_%rest106714106722%_ _%rest106712%_)
                 (_%else106716106730%_ (lambda () _%constructor106713%_))
                 (_%K106718106745%_
                  (lambda (_%rest106733%_ _%hd106734%_)
                    (let ((_%$e106736%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd106734%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e106736%_
                          ((lambda (_%xconstructor106739%_)
                             (if (or (not _%constructor106713%_)
                                     (eq? _%constructor106713%_
                                          _%xconstructor106739%_))
                                 (_%lp106710%_
                                  _%rest106733%_
                                  _%xconstructor106739%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor106713%_
                                        _%xconstructor106739%_)))
                           _%$e106736%_)
                          (_%lp106710%_
                           _%rest106733%_
                           _%constructor106713%_))))))
            (if (pair? _%rest106714106722%_)
                (let ((_%hd106719106748%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest106714106722%_)))
                      (_%tl106720106750%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest106714106722%_))))
                  (let* ((_%hd106753%_ _%hd106719106748%_)
                         (_%rest106755%_ _%tl106720106750%_))
                    (_%K106718106745%_ _%rest106755%_ _%hd106753%_)))
                (_%else106716106730%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list106684%_ _%direct-slots106685%_)
        (let* ((_%next-slot106687%_ '1)
               (_%slot-table106689%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots106691%_ '(__class))
               (_%process-slot106695%_
                (lambda (_%slot106693%_)
                  (if (symbol? _%slot106693%_)
                      '#!void
                      (error '"invalid slot name" _%slot106693%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table106689%_
                              _%slot106693%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table106689%_
                           _%slot106693%_
                           _%next-slot106687%_))
                        (let ((__tmp109014
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot106693%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table106689%_
                           __tmp109014
                           _%next-slot106687%_))
                        (set! _%r-slots106691%_
                              (cons _%slot106693%_ _%r-slots106691%_))
                        (set! _%next-slot106687%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot106687%_ '1))))
                      '#!void)))
               (_%process-slots106701%_
                (lambda (_%g106696106698%_)
                  (for-each _%process-slot106695%_ _%g106696106698%_))))
          (let ((__tmp109016
                 (lambda (_%mixin106704%_)
                   (_%process-slots106701%_
                    (let ((__tmp109017
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin106704%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp109017 '())))))
                (__tmp109015 (reverse _%class-precedence-list106684%_)))
            (declare (not safe))
            (##for-each __tmp109016 __tmp109015))
          (_%process-slots106701%_ _%direct-slots106685%_)
          (let ((_%slot-vector106706%_
                 (list->vector
                  (let ()
                    (declare (not safe))
                    (##reverse _%r-slots106691%_)))))
            (values _%slot-vector106706%_ _%slot-table106689%_)))))
    (define make-class-type
      (lambda (_%id106609%_
               _%name106610%_
               _%direct-supers106611%_
               _%direct-slots106612%_
               _%properties106613%_
               _%constructor106614%_)
        (if (symbol? _%id106609%_)
            (let ((_%id106618%_ _%id106609%_))
              (if (symbol? _%name106610%_)
                  (let ((_%name106628%_ _%name106610%_))
                    (if (list? _%direct-supers106611%_)
                        (let ((_%direct-supers106638%_
                               _%direct-supers106611%_))
                          (if (list? _%direct-slots106612%_)
                              (let ((_%direct-slots106648%_
                                     _%direct-slots106612%_))
                                (if (list? _%properties106613%_)
                                    (let ((_%properties106658%_
                                           _%properties106613%_))
                                      (if ((lambda (_%$obj106667%_)
                                             (or (not _%$obj106667%_)
                                                 (symbol? _%$obj106667%_)))
                                           _%constructor106614%_)
                                          (let ((_%constructor106674%_
                                                 _%constructor106614%_))
                                            (__make-class-type
                                             _%id106618%_
                                             _%name106628%_
                                             _%direct-supers106638%_
                                             _%direct-slots106648%_
                                             _%properties106658%_
                                             _%constructor106674%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor106614%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties106613%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots106612%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers106611%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name106610%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id106609%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id106478%_
               _%name106479%_
               _%direct-supers106480%_
               _%direct-slots106481%_
               _%properties106482%_
               _%constructor106483%_)
        (let* ((_%id106486%_ _%id106478%_)
               (_%name106494%_ _%name106479%_)
               (_%direct-supers106502%_ _%direct-supers106480%_)
               (_%direct-slots106510%_ _%direct-slots106481%_)
               (_%properties106518%_ _%properties106482%_)
               (_%constructor106526%_ _%constructor106483%_))
          (let ((_%$e106538%_
                 (let ((__tmp109018
                        (lambda (_%$obj106535%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj106535%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp109018 _%direct-supers106502%_))))
            (if _%$e106538%_
                ((lambda (_%g106540106542%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g106540106542%_))
                 _%$e106538%_)
                (let ((_%$e106545%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final?
                                 _%direct-supers106502%_))))
                  (if _%$e106545%_
                      ((lambda (_%g106547106549%_)
                         (error '"Cannot extend final class"
                                _%g106547106549%_))
                       _%$e106545%_)
                      '#!void))))
          (let ((_g109019_ (compute-precedence-list _%direct-supers106502%_)))
            (begin
              (let ((_g109020_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g109019_)
                           (##values-length _g109019_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g109020_ 2)))
                    (error "Context expects 2 values" _g109020_)))
              (let ((_%precedence-list106552%_
                     (let () (declare (not safe)) (##values-ref _g109019_ 0)))
                    (_%struct-super106553%_
                     (let () (declare (not safe)) (##values-ref _g109019_ 1))))
                (let ((_g109021_
                       (compute-class-slots
                        _%precedence-list106552%_
                        _%direct-slots106510%_)))
                  (begin
                    (let ((_g109022_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g109021_)
                                 (##values-length _g109021_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g109022_ 2)))
                          (error "Context expects 2 values" _g109022_)))
                    (let ((_%slot-vector106555%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g109021_ 0)))
                          (_%slot-table106556%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g109021_ 1))))
                      (let* ((_%properties106558%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots106510%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers106502%_)
                                          _%properties106518%_)))
                             (_%constructor*106563%_
                              (let ((_%$e106560%_ _%constructor106526%_))
                                (if _%$e106560%_
                                    _%$e106560%_
                                    (find-super-constructor
                                     _%direct-supers106502%_))))
                             (_%precedence-list106606%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties106558%_))
                                      (memq object::t
                                            _%precedence-list106552%_))
                                  _%precedence-list106552%_
                                  (let _%loop106568%_ ((_%tail106570%_
                                                        _%precedence-list106552%_)
                                                       (_%head106571%_ '()))
                                    (let* ((_%tail106572106580%_
                                            _%tail106570%_)
                                           (_%else106574106588%_
                                            (lambda ()
                                              (let ((__tmp109023
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp109023
                                                 _%head106571%_))))
                                           (_%K106576106594%_
                                            (lambda (_%rest106591%_
                                                     _%hd106592%_)
                                              (if (eq? _%hd106592%_ t::t)
                                                  (let ((__tmp109024
                                                         (cons object::t
                                                               _%tail106570%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp109024
                                                     _%head106571%_))
                                                  (_%loop106568%_
                                                   _%rest106591%_
                                                   (cons _%hd106592%_
                                                         _%head106571%_))))))
                                      (if (pair? _%tail106572106580%_)
                                          (let ((_%hd106577106597%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail106572106580%_)))
                                                (_%tl106578106599%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail106572106580%_))))
                                            (let* ((_%hd106602%_
                                                    _%hd106577106597%_)
                                                   (_%rest106604%_
                                                    _%tl106578106599%_))
                                              (_%K106576106594%_
                                               _%rest106604%_
                                               _%hd106602%_)))
                                          (_%else106574106588%_)))))))
                        (make-class-type-descriptor
                         _%id106486%_
                         _%name106494%_
                         _%struct-super106553%_
                         _%precedence-list106606%_
                         _%slot-vector106555%_
                         _%properties106558%_
                         _%constructor*106563%_
                         _%slot-table106556%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass106464%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106464%_ 'class))
            (let ((_%klass106468%_ _%klass106464%_))
              (__class-precedence-list _%klass106468%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass106464%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass106452%_)
        (let ((_%klass106455%_ _%klass106452%_))
          (cons _%klass106455%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass106455%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers106449%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers106449%_))))
    (define make-class-predicate
      (lambda (_%klass106435%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106435%_ 'class))
            (let ((_%klass106439%_ _%klass106435%_))
              (__make-class-predicate _%klass106439%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass106435%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass106406%_)
        (let* ((_%klass106409%_ _%klass106406%_)
               (_%tid106418%_
                (let () (declare (not safe)) (##type-id _%klass106409%_))))
          (if (__class-type-final? _%klass106409%_)
              (lambda (_%g106420106422%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g106420106422%_
                   _%tid106418%_)))
              (if (__class-type-struct? _%klass106409%_)
                  (lambda (_%g106425106427%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%g106425106427%_
                       _%tid106418%_)))
                  (lambda (_%g106430106432%_)
                    (__class-instance? _%klass106409%_ _%g106430106432%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass106381%_ _%slot106382%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106381%_ 'class))
            (let ((_%klass106386%_ _%klass106381%_))
              (if (symbol? _%slot106382%_)
                  (let ((_%slot106396%_ _%slot106382%_))
                    (__make-class-slot-accessor
                     _%klass106386%_
                     _%slot106396%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot106382%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass106381%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass106349%_ _%slot106350%_)
        (let* ((_%klass106353%_ _%klass106349%_)
               (_%slot106361%_ _%slot106350%_)
               (_%field106370%_
                (let ((__tmp109025
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass106353%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp109025 _%slot106361%_ '#f))))
          (if (not _%field106370%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass106353%_
                       'slot:
                       _%slot106361%_)
                '#!void)
              (if (__class-type-final? _%klass106353%_)
                  (make-final-slot-accessor
                   _%klass106353%_
                   _%slot106361%_
                   _%field106370%_)
                  (if (__class-type-struct? _%klass106353%_)
                      (make-struct-slot-accessor
                       _%klass106353%_
                       _%slot106361%_
                       _%field106370%_)
                      (if (let ((_%strukt106376%_
                                 (base-struct/1 _%klass106353%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt106376%_
                                    'class))
                                 (let ((__tmp109026
                                        (let ((__tmp109027
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt106376%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp109027))))
                                   (declare (not safe))
                                   (##fx< _%field106370%_ __tmp109026))))
                          (make-struct-subclass-slot-accessor
                           _%klass106353%_
                           _%slot106361%_
                           _%field106370%_)
                          (make-class-cached-slot-accessor
                           _%klass106353%_
                           _%slot106361%_
                           _%field106370%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass106324%_ _%slot106325%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106324%_ 'class))
            (let ((_%klass106329%_ _%klass106324%_))
              (if (symbol? _%slot106325%_)
                  (let ((_%slot106339%_ _%slot106325%_))
                    (__make-class-slot-mutator _%klass106329%_ _%slot106339%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot106325%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass106324%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass106292%_ _%slot106293%_)
        (let* ((_%klass106296%_ _%klass106292%_)
               (_%slot106304%_ _%slot106293%_)
               (_%field106313%_
                (let ((__tmp109028
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass106296%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp109028 _%slot106304%_ '#f))))
          (if (not _%field106313%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass106296%_
                       'slot:
                       _%slot106304%_)
                '#!void)
              (if (__class-type-final? _%klass106296%_)
                  (make-final-slot-mutator
                   _%klass106296%_
                   _%slot106304%_
                   _%field106313%_)
                  (if (__class-type-struct? _%klass106296%_)
                      (make-struct-slot-mutator
                       _%klass106296%_
                       _%slot106304%_
                       _%field106313%_)
                      (if (let ((_%strukt106319%_
                                 (base-struct/1 _%klass106296%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt106319%_
                                    'class))
                                 (let ((__tmp109029
                                        (let ((__tmp109030
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt106319%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp109030))))
                                   (declare (not safe))
                                   (##fx< _%field106313%_ __tmp109029))))
                          (make-struct-subclass-slot-mutator
                           _%klass106296%_
                           _%slot106304%_
                           _%field106313%_)
                          (make-class-cached-slot-mutator
                           _%klass106296%_
                           _%slot106304%_
                           _%field106313%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass106267%_ _%slot106268%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106267%_ 'class))
            (let ((_%klass106272%_ _%klass106267%_))
              (if (symbol? _%slot106268%_)
                  (let ((_%slot106282%_ _%slot106268%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass106272%_
                     _%slot106282%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot106268%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass106267%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass106235%_ _%slot106236%_)
        (let* ((_%klass106239%_ _%klass106235%_)
               (_%slot106247%_ _%slot106236%_)
               (_%field106256%_
                (let ((__tmp109031
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass106239%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp109031 _%slot106247%_ '#f))))
          (if (not _%field106256%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass106239%_
                       'slot:
                       _%slot106247%_)
                '#!void)
              (if (__class-type-final? _%klass106239%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass106239%_
                   _%slot106247%_
                   _%field106256%_)
                  (if (__class-type-struct? _%klass106239%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass106239%_
                       _%slot106247%_
                       _%field106256%_)
                      (if (let ((_%strukt106262%_
                                 (base-struct/1 _%klass106239%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt106262%_
                                    'class))
                                 (let ((__tmp109032
                                        (let ((__tmp109033
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt106262%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp109033))))
                                   (declare (not safe))
                                   (##fx< _%field106256%_ __tmp109032))))
                          (make-struct-slot-unchecked-accessor
                           _%klass106239%_
                           _%slot106247%_
                           _%field106256%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass106239%_
                           _%slot106247%_
                           _%field106256%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass106210%_ _%slot106211%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106210%_ 'class))
            (let ((_%klass106215%_ _%klass106210%_))
              (if (symbol? _%slot106211%_)
                  (let ((_%slot106225%_ _%slot106211%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass106215%_
                     _%slot106225%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot106211%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass106210%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass106178%_ _%slot106179%_)
        (let* ((_%klass106182%_ _%klass106178%_)
               (_%slot106190%_ _%slot106179%_)
               (_%field106199%_
                (let ((__tmp109034
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass106182%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp109034 _%slot106190%_ '#f))))
          (if (not _%field106199%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass106182%_
                       'slot:
                       _%slot106190%_)
                '#!void)
              (if (__class-type-final? _%klass106182%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass106182%_
                   _%slot106190%_
                   _%field106199%_)
                  (if (__class-type-struct? _%klass106182%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass106182%_
                       _%slot106190%_
                       _%field106199%_)
                      (if (let ((_%strukt106205%_
                                 (base-struct/1 _%klass106182%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt106205%_
                                    'class))
                                 (let ((__tmp109035
                                        (let ((__tmp109036
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt106205%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp109036))))
                                   (declare (not safe))
                                   (##fx< _%field106199%_ __tmp109035))))
                          (make-struct-slot-unchecked-mutator
                           _%klass106182%_
                           _%slot106190%_
                           _%field106199%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass106182%_
                           _%slot106190%_
                           _%field106199%_))))))))
    (define not-an-instance__%
      (lambda (_%object106162%_ _%class106163%_ _%slot106164%_)
        (apply error
               '"not an instance"
               'object:
               _%object106162%_
               'class:
               _%class106163%_
               (if _%slot106164%_
                   (cons 'slot: (cons _%slot106164%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object106169%_ _%class106170%_)
        (let ((_%slot106172%_ '#f))
          (not-an-instance__%
           _%object106169%_
           _%class106170%_
           _%slot106172%_))))
    (define not-an-instance
      (lambda _g109037_
        (let ((_g109038_ (let () (declare (not safe)) (##length _g109037_))))
          (cond ((let () (declare (not safe)) (##fx= _g109038_ 2))
                 (apply not-an-instance__0 _g109037_))
                ((let () (declare (not safe)) (##fx= _g109038_ 3))
                 (apply not-an-instance__% _g109037_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g109037_))))))
    (define make-final-slot-accessor
      (lambda (_%klass106155%_ _%slot106156%_ _%field106157%_)
        (lambda (_%obj106159%_)
          (##direct-structure-ref
           _%obj106159%_
           _%field106157%_
           _%klass106155%_
           _%slot106156%_))))
    (define make-final-slot-mutator
      (lambda (_%klass106148%_ _%slot106149%_ _%field106150%_)
        (lambda (_%obj106152%_ _%val106153%_)
          (##direct-structure-set!
           _%obj106152%_
           _%val106153%_
           _%field106150%_
           _%klass106148%_
           _%slot106149%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass106142%_ _%slot106143%_ _%field106144%_)
        (lambda (_%obj106146%_)
          (##structure-ref
           _%obj106146%_
           _%field106144%_
           _%klass106142%_
           _%slot106143%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass106135%_ _%slot106136%_ _%field106137%_)
        (lambda (_%obj106139%_ _%val106140%_)
          (##structure-set!
           _%obj106139%_
           _%val106140%_
           _%field106137%_
           _%klass106135%_
           _%slot106136%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass106129%_ _%slot106130%_ _%field106131%_)
        (lambda (_%obj106133%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj106133%_
             _%field106131%_
             _%klass106129%_
             _%slot106130%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass106122%_ _%slot106123%_ _%field106124%_)
        (lambda (_%obj106126%_ _%val106127%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj106126%_
             _%val106127%_
             _%field106124%_
             _%klass106122%_
             _%slot106123%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass106116%_ _%slot106117%_ _%field106118%_)
        (lambda (_%obj106120%_)
          (if (class-instance? _%klass106116%_ _%obj106120%_)
              (unchecked-slot-ref _%obj106120%_ _%field106118%_)
              (not-an-instance__%
               _%obj106120%_
               _%klass106116%_
               _%slot106117%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass106109%_ _%slot106110%_ _%field106111%_)
        (lambda (_%obj106113%_ _%val106114%_)
          (if (class-instance? _%klass106109%_ _%obj106113%_)
              (unchecked-field-set!
               _%obj106113%_
               _%field106111%_
               _%val106114%_)
              (not-an-instance__%
               _%obj106113%_
               _%klass106109%_
               _%slot106110%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass106100%_ _%slot106101%_ _%field106102%_)
        (lambda (_%obj106104%_)
          (if (let ((__tmp109039
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass106100%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj106104%_ __tmp109039))
              (unchecked-field-ref _%obj106104%_ _%field106102%_)
              (if (class-instance? _%klass106100%_ _%obj106104%_)
                  (unchecked-slot-ref _%obj106104%_ _%slot106101%_)
                  (not-an-instance__%
                   _%obj106104%_
                   _%klass106100%_
                   _%slot106101%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass106090%_ _%slot106091%_ _%field106092%_)
        (lambda (_%obj106094%_ _%val106095%_)
          (if (let ((__tmp109040
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass106090%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj106094%_ __tmp109040))
              (unchecked-field-set!
               _%obj106094%_
               _%field106092%_
               _%val106095%_)
              (if (class-instance? _%klass106090%_ _%obj106094%_)
                  (unchecked-slot-set!
                   _%obj106094%_
                   _%slot106091%_
                   _%val106095%_)
                  (not-an-instance__%
                   _%obj106094%_
                   _%klass106090%_
                   _%slot106091%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass106084%_ _%slot106085%_ _%field106086%_)
        (lambda (_%obj106088%_)
          (if (let ((__tmp109041
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass106084%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj106088%_ __tmp109041))
              (unchecked-field-ref _%obj106088%_ _%field106086%_)
              (unchecked-slot-ref _%obj106088%_ _%slot106085%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass106077%_ _%slot106078%_ _%field106079%_)
        (lambda (_%obj106081%_ _%val106082%_)
          (if (let ((__tmp109042
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass106077%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj106081%_ __tmp109042))
              (unchecked-field-set!
               _%obj106081%_
               _%field106079%_
               _%val106082%_)
              (unchecked-slot-set!
               _%obj106081%_
               _%slot106078%_
               _%val106082%_)))))
    (define class-slot-offset
      (lambda (_%klass106052%_ _%slot106053%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106052%_ 'class))
            (let ((_%klass106057%_ _%klass106052%_))
              (if (let () (declare (not safe)) (symbolic? _%slot106053%_))
                  (let ((_%slot106067%_ _%slot106053%_))
                    (__class-slot-offset _%klass106057%_ _%slot106067%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot106053%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass106052%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass106031%_ _%slot106032%_)
        (let* ((_%klass106035%_ _%klass106031%_)
               (_%slot106043%_ _%slot106032%_)
               (__tmp109043
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass106035%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp109043 _%slot106043%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass106005%_ _%obj106006%_ _%slot106007%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106005%_ 'class))
            (let ((_%klass106011%_ _%klass106005%_))
              (if (let () (declare (not safe)) (symbolic? _%slot106007%_))
                  (let ((_%slot106021%_ _%slot106007%_))
                    (__class-slot-ref
                     _%klass106011%_
                     _%obj106006%_
                     _%slot106021%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot106007%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass106005%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass105981%_ _%obj105982%_ _%slot105983%_)
        (let* ((_%klass105986%_ _%klass105981%_)
               (_%slot105994%_ _%slot105983%_))
          (if (__class-instance? _%klass105986%_ _%obj105982%_)
              (let ((_%off106003%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj105982%_))
                      _%slot105994%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj105982%_
                 _%off106003%_
                 _%klass105986%_
                 _%slot105994%_))
              (not-an-instance__0 _%obj105982%_ _%klass105986%_)))))
    (define class-slot-set!
      (lambda (_%klass105954%_ _%obj105955%_ _%slot105956%_ _%val105957%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105954%_ 'class))
            (let ((_%klass105961%_ _%klass105954%_))
              (if (let () (declare (not safe)) (symbolic? _%slot105956%_))
                  (let ((_%slot105971%_ _%slot105956%_))
                    (__class-slot-set!
                     _%klass105961%_
                     _%obj105955%_
                     _%slot105971%_
                     _%val105957%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot105956%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass105954%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass105929%_ _%obj105930%_ _%slot105931%_ _%val105932%_)
        (let* ((_%klass105935%_ _%klass105929%_)
               (_%slot105943%_ _%slot105931%_))
          (if (__class-instance? _%klass105935%_ _%obj105930%_)
              (let ((_%off105952%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj105930%_))
                      _%slot105943%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj105930%_
                 _%val105932%_
                 _%off105952%_
                 _%klass105935%_
                 _%slot105943%_))
              (not-an-instance__0 _%obj105930%_ _%klass105935%_)))))
    (define unchecked-field-ref
      (lambda (_%obj105926%_ _%off105927%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj105926%_ _%off105927%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj105922%_ _%off105923%_ _%val105924%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj105922%_
           _%val105924%_
           _%off105923%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj105919%_ _%slot105920%_)
        (unchecked-field-ref
         _%obj105919%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj105919%_))
          _%slot105920%_))))
    (define unchecked-slot-set!
      (lambda (_%obj105915%_ _%slot105916%_ _%val105917%_)
        (unchecked-field-set!
         _%obj105915%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj105915%_))
          _%slot105916%_)
         _%val105917%_)))
    (define slot-ref__%
      (lambda (_%obj105877%_ _%slot105878%_ _%E105879%_)
        (if (symbol? _%slot105878%_)
            (let ((_%slot105883%_ _%slot105878%_))
              (if (procedure? _%E105879%_)
                  (let ((_%E105893%_ _%E105879%_))
                    (__slot-ref__% _%obj105877%_ _%slot105883%_ _%E105893%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E105879%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot105878%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj105906%_ _%slot105907%_)
        (let ((_%E105909%_ __slot-error))
          (slot-ref__% _%obj105906%_ _%slot105907%_ _%E105909%_))))
    (define slot-ref
      (lambda _g109044_
        (let ((_g109045_ (let () (declare (not safe)) (##length _g109044_))))
          (cond ((let () (declare (not safe)) (##fx= _g109045_ 2))
                 (apply slot-ref__0 _g109044_))
                ((let () (declare (not safe)) (##fx= _g109045_ 3))
                 (apply slot-ref__% _g109044_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g109044_))))))
    (define __slot-ref__%
      (lambda (_%obj105833%_ _%slot105834%_ _%E105835%_)
        (let* ((_%slot105838%_ _%slot105834%_)
               (_%E105846%_ _%E105835%_)
               (_%klass105855%_ (class-of _%obj105833%_))
               (_%$e105858%_
                (__class-slot-offset _%klass105855%_ _%slot105838%_)))
          (if _%$e105858%_
              ((lambda (_%off105861%_)
                 (unchecked-field-ref _%obj105833%_ _%off105861%_))
               _%$e105858%_)
              (let ()
                (declare (not safe))
                (_%E105846%_ _%obj105833%_ _%slot105838%_))))))
    (define __slot-ref__0
      (lambda (_%obj105867%_ _%slot105868%_)
        (let ((_%E105870%_ __slot-error))
          (__slot-ref__% _%obj105867%_ _%slot105868%_ _%E105870%_))))
    (define __slot-ref
      (lambda _g109046_
        (let ((_g109047_ (let () (declare (not safe)) (##length _g109046_))))
          (cond ((let () (declare (not safe)) (##fx= _g109047_ 2))
                 (apply __slot-ref__0 _g109046_))
                ((let () (declare (not safe)) (##fx= _g109047_ 3))
                 (apply __slot-ref__% _g109046_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g109046_))))))
    (define slot-set!__%
      (lambda (_%obj105791%_ _%slot105792%_ _%val105793%_ _%E105794%_)
        (if (symbol? _%slot105792%_)
            (let ((_%slot105798%_ _%slot105792%_))
              (if (procedure? _%E105794%_)
                  (let ((_%E105808%_ _%E105794%_))
                    (__slot-set!__%
                     _%obj105791%_
                     _%slot105798%_
                     _%val105793%_
                     _%E105808%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E105794%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot105792%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj105821%_ _%slot105822%_ _%val105823%_)
        (let ((_%E105825%_ __slot-error))
          (slot-set!__%
           _%obj105821%_
           _%slot105822%_
           _%val105823%_
           _%E105825%_))))
    (define slot-set!
      (lambda _g109048_
        (let ((_g109049_ (let () (declare (not safe)) (##length _g109048_))))
          (cond ((let () (declare (not safe)) (##fx= _g109049_ 3))
                 (apply slot-set!__0 _g109048_))
                ((let () (declare (not safe)) (##fx= _g109049_ 4))
                 (apply slot-set!__% _g109048_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g109048_))))))
    (define __slot-set!__%
      (lambda (_%obj105744%_ _%slot105745%_ _%val105746%_ _%E105747%_)
        (let* ((_%slot105750%_ _%slot105745%_)
               (_%E105758%_ _%E105747%_)
               (_%klass105767%_ (class-of _%obj105744%_))
               (_%$e105770%_
                (__class-slot-offset _%klass105767%_ _%slot105750%_)))
          (if _%$e105770%_
              ((lambda (_%off105773%_)
                 (unchecked-field-set!
                  _%obj105744%_
                  _%off105773%_
                  _%val105746%_))
               _%$e105770%_)
              (let ()
                (declare (not safe))
                (_%E105758%_ _%obj105744%_ _%slot105750%_))))))
    (define __slot-set!__0
      (lambda (_%obj105779%_ _%slot105780%_ _%val105781%_)
        (let ((_%E105783%_ __slot-error))
          (__slot-set!__%
           _%obj105779%_
           _%slot105780%_
           _%val105781%_
           _%E105783%_))))
    (define __slot-set!
      (lambda _g109050_
        (let ((_g109051_ (let () (declare (not safe)) (##length _g109050_))))
          (cond ((let () (declare (not safe)) (##fx= _g109051_ 3))
                 (apply __slot-set!__0 _g109050_))
                ((let () (declare (not safe)) (##fx= _g109051_ 4))
                 (apply __slot-set!__% _g109050_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g109050_))))))
    (define __slot-error
      (lambda (_%obj105740%_ _%slot105741%_)
        (error '"Cannot find slot"
               'object:
               _%obj105740%_
               'slot:
               _%slot105741%_)))
    (define subclass?
      (lambda (_%maybe-sub-class105715%_ _%maybe-super-class105716%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class105715%_ 'class))
            (let ((_%maybe-sub-class105720%_ _%maybe-sub-class105715%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class105716%_
                     'class))
                  (let ((_%maybe-super-class105730%_
                         _%maybe-super-class105716%_))
                    (__subclass?
                     _%maybe-sub-class105720%_
                     _%maybe-super-class105730%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class105716%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class105715%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class105687%_ _%maybe-super-class105688%_)
        (let* ((_%maybe-sub-class105691%_ _%maybe-sub-class105687%_)
               (_%maybe-super-class105699%_ _%maybe-super-class105688%_)
               (_%maybe-super-class-id105708%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class105699%_)))
               (_%$e105710%_
                (eq? _%maybe-super-class-id105708%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class105691%_)))))
          (if _%$e105710%_
              _%$e105710%_
              (let ((__tmp109053
                     (lambda (_%super-class105713%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class105713%_))
                            _%maybe-super-class-id105708%_)))
                    (__tmp109052
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class105691%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp109053 __tmp109052))))))
    (define object?
      (lambda (_%o105684%_)
        (if (let () (declare (not safe)) (##structure? _%o105684%_))
            (let ((__tmp109054
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o105684%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp109054 'class))
            '#f)))
    (define object-type
      (lambda (_%o105679%_)
        (if (let () (declare (not safe)) (##structure? _%o105679%_))
            (let ((_%klass105682%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o105679%_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass105682%_ 'class))
                  _%klass105682%_
                  (begin
                    (error '"not an object" _%o105679%_ _%klass105682%_)
                    '#!void)))
            (begin (error '"not an object" _%o105679%_) '#!void))))
    (define direct-instance?
      (lambda (_%klass105664%_ _%obj105665%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105664%_ 'class))
            (let ((_%klass105669%_ _%klass105664%_))
              (__direct-instance? _%klass105669%_ _%obj105665%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass105664%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass105651%_ _%obj105652%_)
        (let* ((_%klass105655%_ _%klass105651%_)
               (__tmp109055
                (let () (declare (not safe)) (##type-id _%klass105655%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj105652%_ __tmp109055))))
    (define immediate-instance-of?
      (lambda (_%klass105647%_ _%obj105648%_)
        (if (let () (declare (not safe)) (##structure? _%obj105648%_))
            (eq? _%klass105647%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj105648%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass105632%_ _%obj105633%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105632%_ 'class))
            (let ((_%klass105637%_ _%klass105632%_))
              (__struct-instance? _%klass105637%_ _%obj105633%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass105632%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass105619%_ _%obj105620%_)
        (let* ((_%klass105623%_ _%klass105619%_)
               (__tmp109056
                (let () (declare (not safe)) (##type-id _%klass105623%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj105620%_ __tmp109056))))
    (define class-instance?
      (lambda (_%klass105604%_ _%obj105605%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105604%_ 'class))
            (let ((_%klass105609%_ _%klass105604%_))
              (__class-instance? _%klass105609%_ _%obj105605%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass105604%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass105589%_ _%obj105590%_)
        (let* ((_%klass105593%_ _%klass105589%_)
               (_%type105602%_ (class-of _%obj105590%_)))
          (__subclass? _%type105602%_ _%klass105593%_))))
    (define make-object
      (lambda (_%klass105564%_ _%k105565%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105564%_ 'class))
            (let ((_%klass105569%_ _%klass105564%_))
              (if (fixnum? _%k105565%_)
                  (let ((_%k105579%_ _%k105565%_))
                    (__make-object _%klass105569%_ _%k105579%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k105565%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass105564%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass105541%_ _%k105542%_)
        (let* ((_%klass105545%_ _%klass105541%_) (_%k105553%_ _%k105542%_))
          (if (__class-type-system? _%klass105545%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass105545%_)
                '#!void)
              (let ((_%obj105562%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass105545%_ _%k105553%_))))
                (object-fill! _%obj105562%_ '#f))))))
    (define object-fill!
      (lambda (_%obj105526%_ _%fill105527%_)
        (if '#t
            (let ((_%obj105531%_ _%obj105526%_))
              (__object-fill! _%obj105531%_ _%fill105527%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj105526%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj105508%_ _%fill105509%_)
        (let ((_%obj105512%_ _%obj105508%_))
          (let _%loop105521%_ ((_%i105523%_
                                (let ((__tmp109057
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj105512%_))))
                                  (declare (not safe))
                                  (##fx- __tmp109057 '1))))
            (if (let () (declare (not safe)) (##fx> _%i105523%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj105512%_
                     _%fill105509%_
                     _%i105523%_
                     '#f
                     '#f))
                  (_%loop105521%_
                   (let () (declare (not safe)) (##fx- _%i105523%_ '1))))
                _%obj105512%_)))))
    (define new-instance
      (lambda (_%klass105494%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105494%_ 'class))
            (let ((_%klass105498%_ _%klass105494%_))
              (__new-instance _%klass105498%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass105494%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass105482%_)
        (let* ((_%klass105485%_ _%klass105482%_)
               (__obj108974
                (let ((__tmp109058
                       (let ((__tmp109059
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass105485%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp109059))))
                  (declare (not safe))
                  (##make-structure _%klass105485%_ __tmp109058))))
          (object-fill! __obj108974 '#f)
          __obj108974)))
    (define make-instance
      (lambda (_%klass105467%_ . _%args105468%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105467%_ 'class))
            (let ((_%klass105472%_ _%klass105467%_))
              (declare (not safe))
              (##apply __make-instance _%klass105472%_ _%args105468%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass105467%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass105439%_ . _%args105440%_)
        (let* ((_%klass105443%_ _%klass105439%_)
               (_%$e105452%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass105443%_ '10 '#f '#f))))
          (if _%$e105452%_
              ((lambda (_%kons-id105455%_)
                 (let ((_%obj105457%_ (__new-instance _%klass105443%_)))
                   (___constructor-init!
                    _%klass105443%_
                    _%kons-id105455%_
                    _%obj105457%_
                    _%args105440%_)
                   _%obj105457%_))
               _%$e105452%_)
              (if (__class-type-metaclass? _%klass105443%_)
                  (let ((_%obj105460%_ (__new-instance _%klass105443%_)))
                    (__metaclass-instance-init!
                     _%klass105443%_
                     _%obj105460%_
                     _%args105440%_)
                    _%obj105460%_)
                  (if (__class-type-struct? _%klass105443%_)
                      (if (let ((__tmp109061
                                 (__class-type-field-count _%klass105443%_))
                                (__tmp109060
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args105440%_))))
                            (declare (not safe))
                            (##fx= __tmp109061 __tmp109060))
                          (apply ##structure _%klass105443%_ _%args105440%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass105443%_
                                   'slots:
                                   (__class-type-slot-list _%klass105443%_)
                                   'args:
                                   _%args105440%_)
                            '#!void))
                      (let ((_%obj105463%_ (__new-instance _%klass105443%_)))
                        (___class-instance-init!
                         _%klass105443%_
                         _%obj105463%_
                         _%args105440%_)
                        _%obj105463%_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj105424%_ . _%args105425%_)
        (if '#t
            (let ((_%obj105429%_ _%obj105424%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj105429%_ _%args105425%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj105424%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj105411%_ . _%args105412%_)
        (let ((_%obj105415%_ _%obj105411%_))
          (if (let ((__tmp109063
                     (let () (declare (not safe)) (##length _%args105412%_)))
                    (__tmp109062
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj105415%_))))
                (declare (not safe))
                (##fx< __tmp109063 __tmp109062))
              (___struct-instance-init! _%obj105415%_ _%args105412%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj105415%_
                     'args:
                     _%args105412%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj105370%_ _%args105371%_)
        (let _%lp105373%_ ((_%k105375%_ '1) (_%rest105376%_ _%args105371%_))
          (let* ((_%rest105377105385%_ _%rest105376%_)
                 (_%else105379105393%_ (lambda () _%obj105370%_))
                 (_%K105381105399%_
                  (lambda (_%rest105396%_ _%hd105397%_)
                    (unchecked-field-set!
                     _%obj105370%_
                     _%k105375%_
                     _%hd105397%_)
                    (_%lp105373%_
                     (let () (declare (not safe)) (##fx+ _%k105375%_ '1))
                     _%rest105396%_))))
            (if (pair? _%rest105377105385%_)
                (let ((_%hd105382105402%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest105377105385%_)))
                      (_%tl105383105404%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest105377105385%_))))
                  (let* ((_%hd105407%_ _%hd105382105402%_)
                         (_%rest105409%_ _%tl105383105404%_))
                    (_%K105381105399%_ _%rest105409%_ _%hd105407%_)))
                (_%else105379105393%_))))))
    (define class-instance-init!
      (lambda (_%obj105355%_ . _%args105356%_)
        (if '#t
            (let ((_%obj105360%_ _%obj105355%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj105360%_ _%args105356%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj105355%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj105342%_ . _%args105343%_)
        (let ((_%obj105346%_ _%obj105342%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj105346%_))
           _%obj105346%_
           _%args105343%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass105284%_ _%obj105285%_ _%args105286%_)
        (let _%lp105288%_ ((_%rest105290%_ _%args105286%_))
          (let* ((_%rest105291105301%_ _%rest105290%_)
                 (_%else105293105309%_
                  (lambda ()
                    (if (null? _%rest105290%_)
                        _%obj105285%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass105284%_
                               'rest:
                               _%rest105290%_))))
                 (_%K105295105323%_
                  (lambda (_%rest105312%_ _%val105313%_ _%key105314%_)
                    (if (keyword? _%key105314%_)
                        (let ((_%$e105317%_
                               (__class-slot-offset
                                _%klass105284%_
                                _%key105314%_)))
                          (if _%$e105317%_
                              ((lambda (_%off105320%_)
                                 (unchecked-field-set!
                                  _%obj105285%_
                                  _%off105320%_
                                  _%val105313%_)
                                 (_%lp105288%_ _%rest105312%_))
                               _%$e105317%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass105284%_
                                     'slot:
                                     _%key105314%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key105314%_)))))
            (if (pair? _%rest105291105301%_)
                (let ((_%hd105296105326%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest105291105301%_)))
                      (_%tl105297105328%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest105291105301%_))))
                  (let ((_%key105331%_ _%hd105296105326%_))
                    (if (pair? _%tl105297105328%_)
                        (let ((_%hd105298105333%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl105297105328%_)))
                              (_%tl105299105335%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl105297105328%_))))
                          (let* ((_%val105338%_ _%hd105298105333%_)
                                 (_%rest105340%_ _%tl105299105335%_))
                            (_%K105295105323%_
                             _%rest105340%_
                             _%val105338%_
                             _%key105331%_)))
                        (_%else105293105309%_))))
                (_%else105293105309%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass105280%_ _%obj105281%_ _%args105282%_)
        (apply call-method
               _%klass105280%_
               'instance-init!
               _%obj105281%_
               _%args105282%_)))
    (define constructor-init!
      (lambda (_%klass105243%_
               _%kons-id105244%_
               _%obj105245%_
               .
               _%args105246%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105243%_ 'class))
            (let ((_%klass105250%_ _%klass105243%_))
              (if (symbol? _%kons-id105244%_)
                  (let ((_%kons-id105260%_ _%kons-id105244%_))
                    (if '#t
                        (let ((_%obj105270%_ _%obj105245%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass105250%_
                                   _%kons-id105260%_
                                   _%obj105270%_
                                   _%args105246%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                           'contract:
                           'true
                           'value:
                           _%obj105245%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id105244%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass105243%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass105212%_
               _%kons-id105213%_
               _%obj105214%_
               .
               _%args105215%_)
        (let* ((_%klass105218%_ _%klass105212%_)
               (_%kons-id105226%_ _%kons-id105213%_)
               (_%obj105234%_ _%obj105214%_))
          (___constructor-init!
           _%klass105218%_
           _%kons-id105226%_
           _%obj105234%_
           _%args105215%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass105201%_ _%kons-id105202%_ _%obj105203%_ _%args105204%_)
        (let ((_%$e105206%_
               (__find-method
                _%klass105201%_
                _%obj105203%_
                _%kons-id105202%_)))
          (if _%$e105206%_
              ((lambda (_%kons105209%_)
                 (apply _%kons105209%_ _%obj105203%_ _%args105204%_)
                 _%obj105203%_)
               _%$e105206%_)
              (error '"missing constructor"
                     'class:
                     _%klass105201%_
                     'method:
                     _%kons-id105202%_)))))
    (define struct-copy
      (lambda (_%struct105187%_)
        (if '#t
            (let ((_%struct105191%_ _%struct105187%_))
              (__struct-copy _%struct105191%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct105187%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct105175%_)
        (let ((_%struct105178%_ _%struct105175%_))
          (declare (not safe))
          (##structure-copy _%struct105178%_))))
    (define struct->list
      (lambda (_%obj105161%_)
        (if '#t
            (let ((_%obj105165%_ _%obj105161%_))
              (__struct->list _%obj105165%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj105161%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj105142%_)
        (let* ((_%obj105145%_ _%obj105142%_)
               (_%len105154%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj105145%_))))
          (let _%recur105156%_ ((_%i105158%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i105158%_ _%len105154%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj105145%_
                         _%i105158%_
                         '#f
                         '#f))
                      (_%recur105156%_
                       (let () (declare (not safe)) (##fx+ _%i105158%_ '1))))
                '())))))
    (define class->list
      (lambda (_%obj105128%_)
        (if '#t
            (let ((_%obj105132%_ _%obj105128%_)) (__class->list _%obj105132%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@842.20-842.23"
               'contract:
               'true
               'value:
               _%obj105128%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj105104%_)
        (let* ((_%obj105107%_ _%obj105104%_)
               (_%klass105116%_
                (let () (declare (not safe)) (##structure-type _%obj105107%_)))
               (_%slot-vector105118%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass105116%_ '7 '#f '#f))))
          (let _%loop105120%_ ((_%index105122%_
                                (let ((__tmp109064
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector105118%_))))
                                  (declare (not safe))
                                  (##fx- __tmp109064 '1)))
                               (_%plist105123%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index105122%_ '1))
                (cons _%klass105116%_ _%plist105123%_)
                (let ((_%slot105126%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector105118%_
                          _%index105122%_))))
                  (_%loop105120%_
                   (let () (declare (not safe)) (##fx- _%index105122%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot105126%_))
                         (cons (unchecked-field-ref
                                _%obj105107%_
                                _%index105122%_)
                               _%plist105123%_)))))))))
    (define call-method
      (lambda (_%obj105088%_ _%id105089%_ . _%args105090%_)
        (if (symbol? _%id105089%_)
            (let ((_%id105094%_ _%id105089%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj105088%_
                       _%id105094%_
                       _%args105090%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@857.24-857.26"
               'contract:
               'symbol?
               'value:
               _%id105089%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj105057%_ _%id105058%_ . _%args105059%_)
        (let* ((_%id105062%_ _%id105058%_)
               (_%$e105071%_ (__method-ref _%obj105057%_ _%id105062%_)))
          (if _%$e105071%_
              ((lambda (_%method105074%_)
                 (let ((_%method105076%_ _%method105074%_))
                   (apply _%method105076%_ _%obj105057%_ _%args105059%_)))
               _%$e105071%_)
              (error '"cannot find method"
                     'object:
                     _%obj105057%_
                     'method:
                     _%id105062%_)))))
    (define method-ref
      (lambda (_%obj105042%_ _%id105043%_)
        (if (symbol? _%id105043%_)
            (let ((_%id105047%_ _%id105043%_))
              (__method-ref _%obj105042%_ _%id105047%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@884.23-884.25"
               'contract:
               'symbol?
               'value:
               _%id105043%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj105029%_ _%id105030%_)
        (let ((_%id105033%_ _%id105030%_))
          (__find-method
           (class-of _%obj105029%_)
           _%obj105029%_
           _%id105033%_))))
    (define checked-method-ref
      (lambda (_%obj105022%_ _%id105023%_)
        (let ((_%$e105026%_ (method-ref _%obj105022%_ _%id105023%_)))
          (if _%$e105026%_
              _%$e105026%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj105022%_
                       'method:
                       _%id105023%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj105007%_ _%id105008%_)
        (if (symbol? _%id105008%_)
            (let ((_%id105012%_ _%id105008%_))
              (__bound-method-ref _%obj105007%_ _%id105012%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@892.29-892.31"
               'contract:
               'symbol?
               'value:
               _%id105008%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj104975%_ _%id104976%_)
        (let* ((_%id104979%_ _%id104976%_)
               (_%$e104988%_ (__method-ref _%obj104975%_ _%id104979%_)))
          (if _%$e104988%_
              ((lambda (_%method104991%_)
                 (let ((_%method104993%_ _%method104991%_))
                   (lambda _%args105004%_
                     (apply _%method104993%_ _%obj104975%_ _%args105004%_))))
               _%$e104988%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj104960%_ _%id104961%_)
        (if (symbol? _%id104961%_)
            (let ((_%id104965%_ _%id104961%_))
              (__checked-bound-method-ref _%obj104960%_ _%id104965%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@901.37-901.39"
               'contract:
               'symbol?
               'value:
               _%id104961%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj104943%_ _%id104944%_)
        (let* ((_%id104947%_ _%id104944%_)
               (_%method104956%_
                (checked-method-ref _%obj104943%_ _%id104947%_)))
          (lambda _%args104958%_
            (apply _%method104956%_ _%obj104943%_ _%args104958%_)))))
    (define find-method
      (lambda (_%klass104917%_ _%obj104918%_ _%id104919%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass104917%_ 'class))
            (let ((_%klass104923%_ _%klass104917%_))
              (if (symbol? _%id104919%_)
                  (let ((_%id104933%_ _%id104919%_))
                    (__find-method _%klass104923%_ _%obj104918%_ _%id104933%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@906.41-906.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id104919%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@906.20-906.25"
               'contract:
               'class-type?
               'value:
               _%klass104917%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass104890%_ _%obj104891%_ _%id104892%_)
        (let* ((_%klass104895%_ _%klass104890%_)
               (_%id104903%_ _%id104892%_)
               (_%$e104912%_
                (__direct-method-ref
                 _%klass104895%_
                 _%obj104891%_
                 _%id104903%_)))
          (if _%$e104912%_
              _%$e104912%_
              (if (__class-type-sealed? _%klass104895%_)
                  '#f
                  (__mixin-method-ref
                   _%klass104895%_
                   _%obj104891%_
                   _%id104903%_))))))
    (define mixin-find-method
      (lambda (_%mixins104874%_ _%obj104875%_ _%id104876%_)
        (if (symbol? _%id104876%_)
            (let ((_%id104880%_ _%id104876%_))
              (__mixin-find-method
               _%mixins104874%_
               _%obj104875%_
               _%id104880%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@914.37-914.39"
               'contract:
               'symbol?
               'value:
               _%id104876%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins104856%_ _%obj104857%_ _%id104858%_)
        (let* ((_%id104861%_ _%id104858%_)
               (__tmp109065
                (lambda (_%g104869104871%_)
                  (direct-method-ref
                   _%g104869104871%_
                   _%obj104857%_
                   _%id104861%_))))
          (declare (not safe))
          (__ormap1 __tmp109065 _%mixins104856%_))))
    (define direct-method-ref
      (lambda (_%klass104830%_ _%obj104831%_ _%id104832%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass104830%_ 'class))
            (let ((_%klass104836%_ _%klass104830%_))
              (if (symbol? _%id104832%_)
                  (let ((_%id104846%_ _%id104832%_))
                    (__direct-method-ref
                     _%klass104836%_
                     _%obj104831%_
                     _%id104846%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@917.47-917.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id104832%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@917.26-917.31"
               'contract:
               'class-type?
               'value:
               _%klass104830%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass104784%_ _%obj104785%_ _%id104786%_)
        (let* ((_%klass104789%_ _%klass104784%_) (_%id104797%_ _%id104786%_))
          (letrec ((_%metaclass-resolve-method104806%_
                    (lambda ()
                      (let ((__method108975
                             (__method-ref
                              _%klass104789%_
                              'direct-method-ref)))
                        (if __method108975
                            (let ()
                              (declare (not safe))
                              (__method108975
                               _%klass104789%_
                               _%obj104785%_
                               _%id104797%_))
                            (begin
                              (error '"Missing method"
                                     _%klass104789%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!104807%_
                    (lambda ()
                      (let ((_%method104827%_
                             (_%metaclass-resolve-method104806%_)))
                        (let ((__tmp109067
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass104789%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp109066
                               (if _%method104827%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp109067
                           _%id104797%_
                           __tmp109066))
                        _%method104827%_))))
            (let ((_%$e104809%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass104789%_ '11 '#f '#f))))
              (if _%$e104809%_
                  ((lambda (_%ht104812%_)
                     (let ((_%method104814%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht104812%_
                               _%id104797%_
                               '#f))))
                       (if (procedure? _%method104814%_)
                           _%method104814%_
                           (if (__class-type-metaclass? _%klass104789%_)
                               (let ((_%$e104818%_ _%method104814%_))
                                 (if (eq? 'resolved _%$e104818%_)
                                     (_%metaclass-resolve-method104806%_)
                                     (if (eq? 'unknown _%$e104818%_)
                                         '#f
                                         (_%metaclass-resolve-method!104807%_))))
                               '#f))))
                   _%$e104809%_)
                  (if (__class-type-metaclass? _%klass104789%_)
                      (let ((_%tab104823%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass104789%_
                           _%tab104823%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!104807%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass104758%_ _%obj104759%_ _%id104760%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass104758%_ 'class))
            (let ((_%klass104764%_ _%klass104758%_))
              (if (symbol? _%id104760%_)
                  (let ((_%id104774%_ _%id104760%_))
                    (__mixin-method-ref
                     _%klass104764%_
                     _%obj104759%_
                     _%id104774%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@947.46-947.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id104760%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@947.25-947.30"
               'contract:
               'class-type?
               'value:
               _%klass104758%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass104736%_ _%obj104737%_ _%id104738%_)
        (let* ((_%klass104741%_ _%klass104736%_) (_%id104749%_ _%id104738%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass104741%_ '6 '#f '#f))
           _%obj104737%_
           _%id104749%_))))
    (define bind-method!__%
      (lambda (_%klass104695%_ _%id104696%_ _%proc104697%_ _%rebind?104698%_)
        (if (symbol? _%id104696%_)
            (let ((_%id104702%_ _%id104696%_))
              (if (procedure? _%proc104697%_)
                  (let ((_%proc104712%_ _%proc104697%_))
                    (__bind-method!__%
                     _%klass104695%_
                     _%id104702%_
                     _%proc104712%_
                     _%rebind?104698%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@950.42-950.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc104697%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@950.27-950.29"
               'contract:
               'symbol?
               'value:
               _%id104696%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass104725%_ _%id104726%_ _%proc104727%_)
        (let ((_%rebind?104729%_ '#f))
          (bind-method!__%
           _%klass104725%_
           _%id104726%_
           _%proc104727%_
           _%rebind?104729%_))))
    (define bind-method!
      (lambda _g109068_
        (let ((_g109069_ (let () (declare (not safe)) (##length _g109068_))))
          (cond ((let () (declare (not safe)) (##fx= _g109069_ 3))
                 (apply bind-method!__0 _g109068_))
                ((let () (declare (not safe)) (##fx= _g109069_ 4))
                 (apply bind-method!__% _g109068_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g109068_))))))
    (define __bind-method!__%
      (lambda (_%klass104646%_ _%id104647%_ _%proc104648%_ _%rebind?104649%_)
        (let* ((_%id104652%_ _%id104647%_) (_%proc104660%_ _%proc104648%_))
          (letrec ((_%bind!104669%_
                    (lambda (_%ht104678%_)
                      (if (and (not _%rebind?104649%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht104678%_
                                  _%id104652%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass104646%_
                                 'method:
                                 _%id104652%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht104678%_
                               _%id104652%_
                               _%proc104660%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass104646%_ 'class))
                (let ((_%ht104672%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass104646%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht104672%_
                      (_%bind!104669%_ _%ht104672%_)
                      (let ((_%ht104674%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass104646%_
                           _%ht104674%_
                           '11
                           '#f
                           '#f))
                        (_%bind!104669%_ _%ht104674%_))))
                (if (let () (declare (not safe)) (##type? _%klass104646%_))
                    (__bind-method!__%
                     (__shadow-class _%klass104646%_)
                     _%id104652%_
                     _%proc104660%_
                     _%rebind?104649%_)
                    (error '"bad class; expected class or builtin type"
                           _%klass104646%_)))))))
    (define __bind-method!__0
      (lambda (_%klass104683%_ _%id104684%_ _%proc104685%_)
        (let ((_%rebind?104687%_ '#f))
          (__bind-method!__%
           _%klass104683%_
           _%id104684%_
           _%proc104685%_
           _%rebind?104687%_))))
    (define __bind-method!
      (lambda _g109070_
        (let ((_g109071_ (let () (declare (not safe)) (##length _g109070_))))
          (cond ((let () (declare (not safe)) (##fx= _g109071_ 3))
                 (apply __bind-method!__0 _g109070_))
                ((let () (declare (not safe)) (##fx= _g109071_ 4))
                 (apply __bind-method!__% _g109070_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g109070_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint104626%_ _%seed104628%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint104626%_
           procedure-hash
           eq?
           _%seed104628%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint104634%_ '#f) (_%seed104636%_ '0))
          (make-method-specializer-table__%
           _%size-hint104634%_
           _%seed104636%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint104638%_)
        (let ((_%seed104640%_ '0))
          (make-method-specializer-table__%
           _%size-hint104638%_
           _%seed104640%_))))
    (define make-method-specializer-table
      (lambda _g109072_
        (let ((_g109073_ (let () (declare (not safe)) (##length _g109072_))))
          (cond ((let () (declare (not safe)) (##fx= _g109073_ 0))
                 (apply make-method-specializer-table__0 _g109072_))
                ((let () (declare (not safe)) (##fx= _g109073_ 1))
                 (apply make-method-specializer-table__1 _g109072_))
                ((let () (declare (not safe)) (##fx= _g109073_ 2))
                 (apply make-method-specializer-table__% _g109072_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g109072_))))))
    (define method-specializer-table-ref
      (lambda (_%tab104579%_ _%key104580%_ _%default104581%_)
        (let ((_%table104583%_
               (let () (declare (not safe)) (&raw-table-table _%tab104579%_)))
              (_%seed104584%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104579%_))))
          (let* ((_%h104586%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key104580%_))
                         _%seed104584%_))
                 (_%size104589%_ (vector-length _%table104583%_))
                 (_%entries104592%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104589%_ '2)))
                 (_%start104595%_
                  (let ((__tmp109074
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104586%_ _%entries104592%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109074 '1))))
            (let _%loop104599%_ ((_%probe104602%_ _%start104595%_)
                                 (_%i104604%_ '1)
                                 (_%deleted104606%_ '#f))
              (let ((_%k104609%_ (vector-ref _%table104583%_ _%probe104602%_)))
                (if (eq? _%k104609%_ (macro-unused-obj))
                    _%default104581%_
                    (if (eq? _%k104609%_ (macro-deleted-obj))
                        (_%loop104599%_
                         (let ((_%next-probe104614%_
                                (fx+ _%start104595%_
                                     _%i104604%_
                                     (fx* _%i104604%_ _%i104604%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104614%_ _%size104589%_))
                         (let () (declare (not safe)) (##fx+ _%i104604%_ '1))
                         (let ((_%$e104617%_ _%deleted104606%_))
                           (if _%$e104617%_ _%$e104617%_ _%probe104602%_)))
                        (if (eq? _%key104580%_ _%k104609%_)
                            (vector-ref
                             _%table104583%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe104602%_ '1)))
                            (_%loop104599%_
                             (let ((_%next-probe104622%_
                                    (fx+ _%start104595%_
                                         _%i104604%_
                                         (fx* _%i104604%_ _%i104604%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104622%_
                                _%size104589%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104604%_ '1))
                             _%deleted104606%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab104575%_ _%key104576%_ _%value104577%_)
        (if (let ((__tmp109077
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab104575%_)))
                  (__tmp109075
                   (let ((__tmp109076
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab104575%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp109076 '4))))
              (declare (not safe))
              (##fx< __tmp109077 __tmp109075))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab104575%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab104575%_
         _%key104576%_
         _%value104577%_)))
    (define __method-specializer-table-set!
      (lambda (_%tab104526%_ _%key104527%_ _%value104528%_)
        (let ((_%table104531%_
               (let () (declare (not safe)) (&raw-table-table _%tab104526%_)))
              (_%seed104532%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104526%_))))
          (let* ((_%h104534%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key104527%_))
                         _%seed104532%_))
                 (_%size104537%_ (vector-length _%table104531%_))
                 (_%entries104540%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104537%_ '2)))
                 (_%start104543%_
                  (let ((__tmp109078
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104534%_ _%entries104540%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109078 '1))))
            (let _%loop104547%_ ((_%probe104550%_ _%start104543%_)
                                 (_%i104552%_ '1)
                                 (_%deleted104554%_ '#f))
              (let ((_%k104557%_ (vector-ref _%table104531%_ _%probe104550%_)))
                (if (eq? _%k104557%_ (macro-unused-obj))
                    (if _%deleted104554%_
                        (begin
                          (vector-set!
                           _%table104531%_
                           _%deleted104554%_
                           _%key104527%_)
                          (vector-set!
                           _%table104531%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted104554%_ '1))
                           _%value104528%_)
                          ((lambda ()
                             (let ((__tmp109079
                                    (let ((__tmp109080
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104526%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109080 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104526%_
                                __tmp109079)))))
                        (begin
                          (vector-set!
                           _%table104531%_
                           _%probe104550%_
                           _%key104527%_)
                          (vector-set!
                           _%table104531%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe104550%_ '1))
                           _%value104528%_)
                          ((lambda ()
                             (let ((__tmp109081
                                    (let ((__tmp109082
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab104526%_))))
                                      (declare (not safe))
                                      (##fx- __tmp109082 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab104526%_
                                __tmp109081))
                             (let ((__tmp109083
                                    (let ((__tmp109084
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104526%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109084 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104526%_
                                __tmp109083))))))
                    (if (eq? _%k104557%_ (macro-deleted-obj))
                        (_%loop104547%_
                         (let ((_%next-probe104564%_
                                (fx+ _%start104543%_
                                     _%i104552%_
                                     (fx* _%i104552%_ _%i104552%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104564%_ _%size104537%_))
                         (let () (declare (not safe)) (##fx+ _%i104552%_ '1))
                         (let ((_%$e104567%_ _%deleted104554%_))
                           (if _%$e104567%_ _%$e104567%_ _%probe104550%_)))
                        (if (eq? _%key104527%_ _%k104557%_)
                            (let ()
                              (vector-set!
                               _%table104531%_
                               _%probe104550%_
                               _%key104527%_)
                              (vector-set!
                               _%table104531%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104550%_ '1))
                               _%value104528%_))
                            (_%loop104547%_
                             (let ((_%next-probe104572%_
                                    (fx+ _%start104543%_
                                         _%i104552%_
                                         (fx* _%i104552%_ _%i104552%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104572%_
                                _%size104537%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104552%_ '1))
                             _%deleted104554%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab104521%_
               _%key104522%_
               _%method-specializer-table-update!104523%_
               _%default104524%_)
        (if (let ((__tmp109087
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab104521%_)))
                  (__tmp109085
                   (let ((__tmp109086
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab104521%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp109086 '4))))
              (declare (not safe))
              (##fx< __tmp109087 __tmp109085))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab104521%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab104521%_
         _%key104522%_
         _%method-specializer-table-update!104523%_
         _%default104524%_)))
    (define __method-specializer-table-update!
      (lambda (_%tab104471%_
               _%key104472%_
               _%method-specializer-table-update!104473%_
               _%default104474%_)
        (let ((_%table104477%_
               (let () (declare (not safe)) (&raw-table-table _%tab104471%_)))
              (_%seed104478%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104471%_))))
          (let* ((_%h104480%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key104472%_))
                         _%seed104478%_))
                 (_%size104483%_ (vector-length _%table104477%_))
                 (_%entries104486%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104483%_ '2)))
                 (_%start104489%_
                  (let ((__tmp109088
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104480%_ _%entries104486%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109088 '1))))
            (let _%loop104493%_ ((_%probe104496%_ _%start104489%_)
                                 (_%i104498%_ '1)
                                 (_%deleted104500%_ '#f))
              (let ((_%k104503%_ (vector-ref _%table104477%_ _%probe104496%_)))
                (if (eq? _%k104503%_ (macro-unused-obj))
                    (if _%deleted104500%_
                        (begin
                          (vector-set!
                           _%table104477%_
                           _%deleted104500%_
                           _%key104472%_)
                          (vector-set!
                           _%table104477%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted104500%_ '1))
                           (_%method-specializer-table-update!104473%_
                            _%default104474%_))
                          ((lambda ()
                             (let ((__tmp109089
                                    (let ((__tmp109090
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104471%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109090 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104471%_
                                __tmp109089)))))
                        (begin
                          (vector-set!
                           _%table104477%_
                           _%probe104496%_
                           _%key104472%_)
                          (vector-set!
                           _%table104477%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe104496%_ '1))
                           (_%method-specializer-table-update!104473%_
                            _%default104474%_))
                          ((lambda ()
                             (let ((__tmp109091
                                    (let ((__tmp109092
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab104471%_))))
                                      (declare (not safe))
                                      (##fx- __tmp109092 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab104471%_
                                __tmp109091))
                             (let ((__tmp109093
                                    (let ((__tmp109094
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104471%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109094 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104471%_
                                __tmp109093))))))
                    (if (eq? _%k104503%_ (macro-deleted-obj))
                        (_%loop104493%_
                         (let ((_%next-probe104510%_
                                (fx+ _%start104489%_
                                     _%i104498%_
                                     (fx* _%i104498%_ _%i104498%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104510%_ _%size104483%_))
                         (let () (declare (not safe)) (##fx+ _%i104498%_ '1))
                         (let ((_%$e104513%_ _%deleted104500%_))
                           (if _%$e104513%_ _%$e104513%_ _%probe104496%_)))
                        (if (eq? _%key104472%_ _%k104503%_)
                            (let ()
                              (vector-set!
                               _%table104477%_
                               _%probe104496%_
                               _%key104472%_)
                              (vector-set!
                               _%table104477%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104496%_ '1))
                               (_%method-specializer-table-update!104473%_
                                (vector-ref
                                 _%table104477%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe104496%_ '1))))))
                            (_%loop104493%_
                             (let ((_%next-probe104518%_
                                    (fx+ _%start104489%_
                                         _%i104498%_
                                         (fx* _%i104498%_ _%i104498%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104518%_
                                _%size104483%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104498%_ '1))
                             _%deleted104500%_))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab104426%_ _%key104428%_)
        (let ((_%table104431%_
               (let () (declare (not safe)) (&raw-table-table _%tab104426%_)))
              (_%seed104433%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104426%_))))
          (let* ((_%h104436%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key104428%_))
                         _%seed104433%_))
                 (_%size104439%_ (vector-length _%table104431%_))
                 (_%entries104442%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104439%_ '2)))
                 (_%start104445%_
                  (let ((__tmp109095
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104436%_ _%entries104442%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109095 '1))))
            (let _%loop104449%_ ((_%probe104452%_ _%start104445%_)
                                 (_%i104454%_ '1))
              (let ((_%k104457%_ (vector-ref _%table104431%_ _%probe104452%_)))
                (if (eq? _%k104457%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k104457%_ (macro-deleted-obj))
                        (_%loop104449%_
                         (let ((_%next-probe104462%_
                                (fx+ _%start104445%_
                                     _%i104454%_
                                     (fx* _%i104454%_ _%i104454%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104462%_ _%size104439%_))
                         (let () (declare (not safe)) (##fx+ _%i104454%_ '1)))
                        (if (eq? _%key104428%_ _%k104457%_)
                            (let ()
                              (vector-set!
                               _%table104431%_
                               _%probe104452%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table104431%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104452%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp109096
                                        (let ((__tmp109097
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab104426%_))))
                                          (declare (not safe))
                                          (##fx- __tmp109097 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab104426%_
                                    __tmp109096)))))
                            (_%loop104449%_
                             (let ((_%next-probe104468%_
                                    (fx+ _%start104445%_
                                         _%i104454%_
                                         (fx* _%i104454%_ _%i104454%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104468%_
                                _%size104439%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104454%_ '1))))))))))))
    (define __method-specializers (make-method-specializer-table__% '#f '0))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc104417%_ _%specializer104418%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again104422%_ ()
            (if (let ((__tmp109098
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp109098 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again104422%_)))))
        (method-specializer-table-set!
         __method-specializers
         _%method-proc104417%_
         _%specializer104418%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc104407%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again104411%_ ()
            (if (let ((__tmp109099
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp109099 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again104411%_)))))
        (let ((_%specializer104415%_
               (method-specializer-table-ref
                __method-specializers
                _%proc104407%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer104415%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass104405%_)
        (let ((__tmp109100
               (let () (declare (not safe)) (##type-id _%klass104405%_))))
          (declare (not safe))
          (##symbol-hash __tmp109100))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint104386%_ _%seed104388%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint104386%_
           __class-specializer-hash-key
           eq?
           _%seed104388%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint104394%_ '#f) (_%seed104396%_ '0))
          (make-class-specializer-table__%
           _%size-hint104394%_
           _%seed104396%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint104398%_)
        (let ((_%seed104400%_ '0))
          (make-class-specializer-table__%
           _%size-hint104398%_
           _%seed104400%_))))
    (define make-class-specializer-table
      (lambda _g109101_
        (let ((_g109102_ (let () (declare (not safe)) (##length _g109101_))))
          (cond ((let () (declare (not safe)) (##fx= _g109102_ 0))
                 (apply make-class-specializer-table__0 _g109101_))
                ((let () (declare (not safe)) (##fx= _g109102_ 1))
                 (apply make-class-specializer-table__1 _g109101_))
                ((let () (declare (not safe)) (##fx= _g109102_ 2))
                 (apply make-class-specializer-table__% _g109101_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g109101_))))))
    (define class-specializer-table-ref
      (lambda (_%tab104339%_ _%key104340%_ _%default104341%_)
        (let ((_%table104343%_
               (let () (declare (not safe)) (&raw-table-table _%tab104339%_)))
              (_%seed104344%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104339%_))))
          (let* ((_%h104346%_
                  (fxxor (__class-specializer-hash-key _%key104340%_)
                         _%seed104344%_))
                 (_%size104349%_ (vector-length _%table104343%_))
                 (_%entries104352%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104349%_ '2)))
                 (_%start104355%_
                  (let ((__tmp109103
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104346%_ _%entries104352%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109103 '1))))
            (let _%loop104359%_ ((_%probe104362%_ _%start104355%_)
                                 (_%i104364%_ '1)
                                 (_%deleted104366%_ '#f))
              (let ((_%k104369%_ (vector-ref _%table104343%_ _%probe104362%_)))
                (if (eq? _%k104369%_ (macro-unused-obj))
                    _%default104341%_
                    (if (eq? _%k104369%_ (macro-deleted-obj))
                        (_%loop104359%_
                         (let ((_%next-probe104374%_
                                (fx+ _%start104355%_
                                     _%i104364%_
                                     (fx* _%i104364%_ _%i104364%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104374%_ _%size104349%_))
                         (let () (declare (not safe)) (##fx+ _%i104364%_ '1))
                         (let ((_%$e104377%_ _%deleted104366%_))
                           (if _%$e104377%_ _%$e104377%_ _%probe104362%_)))
                        (if (eq? _%key104340%_ _%k104369%_)
                            (vector-ref
                             _%table104343%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe104362%_ '1)))
                            (_%loop104359%_
                             (let ((_%next-probe104382%_
                                    (fx+ _%start104355%_
                                         _%i104364%_
                                         (fx* _%i104364%_ _%i104364%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104382%_
                                _%size104349%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104364%_ '1))
                             _%deleted104366%_))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab104335%_ _%key104336%_ _%value104337%_)
        (if (let ((__tmp109106
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab104335%_)))
                  (__tmp109104
                   (let ((__tmp109105
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab104335%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp109105 '4))))
              (declare (not safe))
              (##fx< __tmp109106 __tmp109104))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab104335%_))
            '#!void)
        (__class-specializer-table-set!
         _%tab104335%_
         _%key104336%_
         _%value104337%_)))
    (define __class-specializer-table-set!
      (lambda (_%tab104286%_ _%key104287%_ _%value104288%_)
        (let ((_%table104291%_
               (let () (declare (not safe)) (&raw-table-table _%tab104286%_)))
              (_%seed104292%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104286%_))))
          (let* ((_%h104294%_
                  (fxxor (__class-specializer-hash-key _%key104287%_)
                         _%seed104292%_))
                 (_%size104297%_ (vector-length _%table104291%_))
                 (_%entries104300%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104297%_ '2)))
                 (_%start104303%_
                  (let ((__tmp109107
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104294%_ _%entries104300%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109107 '1))))
            (let _%loop104307%_ ((_%probe104310%_ _%start104303%_)
                                 (_%i104312%_ '1)
                                 (_%deleted104314%_ '#f))
              (let ((_%k104317%_ (vector-ref _%table104291%_ _%probe104310%_)))
                (if (eq? _%k104317%_ (macro-unused-obj))
                    (if _%deleted104314%_
                        (begin
                          (vector-set!
                           _%table104291%_
                           _%deleted104314%_
                           _%key104287%_)
                          (vector-set!
                           _%table104291%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted104314%_ '1))
                           _%value104288%_)
                          ((lambda ()
                             (let ((__tmp109108
                                    (let ((__tmp109109
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104286%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109109 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104286%_
                                __tmp109108)))))
                        (begin
                          (vector-set!
                           _%table104291%_
                           _%probe104310%_
                           _%key104287%_)
                          (vector-set!
                           _%table104291%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe104310%_ '1))
                           _%value104288%_)
                          ((lambda ()
                             (let ((__tmp109110
                                    (let ((__tmp109111
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab104286%_))))
                                      (declare (not safe))
                                      (##fx- __tmp109111 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab104286%_
                                __tmp109110))
                             (let ((__tmp109112
                                    (let ((__tmp109113
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104286%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109113 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104286%_
                                __tmp109112))))))
                    (if (eq? _%k104317%_ (macro-deleted-obj))
                        (_%loop104307%_
                         (let ((_%next-probe104324%_
                                (fx+ _%start104303%_
                                     _%i104312%_
                                     (fx* _%i104312%_ _%i104312%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104324%_ _%size104297%_))
                         (let () (declare (not safe)) (##fx+ _%i104312%_ '1))
                         (let ((_%$e104327%_ _%deleted104314%_))
                           (if _%$e104327%_ _%$e104327%_ _%probe104310%_)))
                        (if (eq? _%key104287%_ _%k104317%_)
                            (let ()
                              (vector-set!
                               _%table104291%_
                               _%probe104310%_
                               _%key104287%_)
                              (vector-set!
                               _%table104291%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104310%_ '1))
                               _%value104288%_))
                            (_%loop104307%_
                             (let ((_%next-probe104332%_
                                    (fx+ _%start104303%_
                                         _%i104312%_
                                         (fx* _%i104312%_ _%i104312%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104332%_
                                _%size104297%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104312%_ '1))
                             _%deleted104314%_))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab104281%_
               _%key104282%_
               _%class-specializer-table-update!104283%_
               _%default104284%_)
        (if (let ((__tmp109116
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab104281%_)))
                  (__tmp109114
                   (let ((__tmp109115
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab104281%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp109115 '4))))
              (declare (not safe))
              (##fx< __tmp109116 __tmp109114))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab104281%_))
            '#!void)
        (__class-specializer-table-update!
         _%tab104281%_
         _%key104282%_
         _%class-specializer-table-update!104283%_
         _%default104284%_)))
    (define __class-specializer-table-update!
      (lambda (_%tab104231%_
               _%key104232%_
               _%class-specializer-table-update!104233%_
               _%default104234%_)
        (let ((_%table104237%_
               (let () (declare (not safe)) (&raw-table-table _%tab104231%_)))
              (_%seed104238%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104231%_))))
          (let* ((_%h104240%_
                  (fxxor (__class-specializer-hash-key _%key104232%_)
                         _%seed104238%_))
                 (_%size104243%_ (vector-length _%table104237%_))
                 (_%entries104246%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104243%_ '2)))
                 (_%start104249%_
                  (let ((__tmp109117
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104240%_ _%entries104246%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109117 '1))))
            (let _%loop104253%_ ((_%probe104256%_ _%start104249%_)
                                 (_%i104258%_ '1)
                                 (_%deleted104260%_ '#f))
              (let ((_%k104263%_ (vector-ref _%table104237%_ _%probe104256%_)))
                (if (eq? _%k104263%_ (macro-unused-obj))
                    (if _%deleted104260%_
                        (begin
                          (vector-set!
                           _%table104237%_
                           _%deleted104260%_
                           _%key104232%_)
                          (vector-set!
                           _%table104237%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted104260%_ '1))
                           (_%class-specializer-table-update!104233%_
                            _%default104234%_))
                          ((lambda ()
                             (let ((__tmp109118
                                    (let ((__tmp109119
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104231%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109119 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104231%_
                                __tmp109118)))))
                        (begin
                          (vector-set!
                           _%table104237%_
                           _%probe104256%_
                           _%key104232%_)
                          (vector-set!
                           _%table104237%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe104256%_ '1))
                           (_%class-specializer-table-update!104233%_
                            _%default104234%_))
                          ((lambda ()
                             (let ((__tmp109120
                                    (let ((__tmp109121
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab104231%_))))
                                      (declare (not safe))
                                      (##fx- __tmp109121 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab104231%_
                                __tmp109120))
                             (let ((__tmp109122
                                    (let ((__tmp109123
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104231%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109123 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104231%_
                                __tmp109122))))))
                    (if (eq? _%k104263%_ (macro-deleted-obj))
                        (_%loop104253%_
                         (let ((_%next-probe104270%_
                                (fx+ _%start104249%_
                                     _%i104258%_
                                     (fx* _%i104258%_ _%i104258%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104270%_ _%size104243%_))
                         (let () (declare (not safe)) (##fx+ _%i104258%_ '1))
                         (let ((_%$e104273%_ _%deleted104260%_))
                           (if _%$e104273%_ _%$e104273%_ _%probe104256%_)))
                        (if (eq? _%key104232%_ _%k104263%_)
                            (let ()
                              (vector-set!
                               _%table104237%_
                               _%probe104256%_
                               _%key104232%_)
                              (vector-set!
                               _%table104237%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104256%_ '1))
                               (_%class-specializer-table-update!104233%_
                                (vector-ref
                                 _%table104237%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe104256%_ '1))))))
                            (_%loop104253%_
                             (let ((_%next-probe104278%_
                                    (fx+ _%start104249%_
                                         _%i104258%_
                                         (fx* _%i104258%_ _%i104258%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104278%_
                                _%size104243%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104258%_ '1))
                             _%deleted104260%_))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab104186%_ _%key104188%_)
        (let ((_%table104191%_
               (let () (declare (not safe)) (&raw-table-table _%tab104186%_)))
              (_%seed104193%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104186%_))))
          (let* ((_%h104196%_
                  (fxxor (__class-specializer-hash-key _%key104188%_)
                         _%seed104193%_))
                 (_%size104199%_ (vector-length _%table104191%_))
                 (_%entries104202%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104199%_ '2)))
                 (_%start104205%_
                  (let ((__tmp109124
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104196%_ _%entries104202%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109124 '1))))
            (let _%loop104209%_ ((_%probe104212%_ _%start104205%_)
                                 (_%i104214%_ '1))
              (let ((_%k104217%_ (vector-ref _%table104191%_ _%probe104212%_)))
                (if (eq? _%k104217%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k104217%_ (macro-deleted-obj))
                        (_%loop104209%_
                         (let ((_%next-probe104222%_
                                (fx+ _%start104205%_
                                     _%i104214%_
                                     (fx* _%i104214%_ _%i104214%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104222%_ _%size104199%_))
                         (let () (declare (not safe)) (##fx+ _%i104214%_ '1)))
                        (if (eq? _%key104188%_ _%k104217%_)
                            (let ()
                              (vector-set!
                               _%table104191%_
                               _%probe104212%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table104191%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104212%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp109125
                                        (let ((__tmp109126
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab104186%_))))
                                          (declare (not safe))
                                          (##fx- __tmp109126 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab104186%_
                                    __tmp109125)))))
                            (_%loop104209%_
                             (let ((_%next-probe104228%_
                                    (fx+ _%start104205%_
                                         _%i104214%_
                                         (fx* _%i104214%_ _%i104214%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104228%_
                                _%size104199%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104214%_ '1))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers (make-class-specializer-table__% '#f '0))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass104172%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass104172%_ 'class))
            (let ((_%klass104176%_ _%klass104172%_))
              (__specialize-class _%klass104176%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1025.25-1025.30"
               'contract:
               'class-type?
               'value:
               _%klass104172%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass104154%_)
        (let* ((_%klass104157%_ _%klass104154%_)
               (_%$e104166%_ (__lookup-class-specializer _%klass104157%_)))
          (if _%$e104166%_
              _%$e104166%_
              (let ((_%method-table104170%_
                     (___specialize-class _%klass104157%_)))
                (__bind-class-specializer!
                 _%klass104157%_
                 _%method-table104170%_)
                _%method-table104170%_)))))
    (define __lookup-class-specializer
      (lambda (_%klass104144%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again104148%_ ()
            (if (let ((__tmp109127
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp109127 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again104148%_)))))
        (let ((_%method-table104152%_
               (class-specializer-table-ref
                __class-specializers
                _%klass104144%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table104152%_)))
    (define __bind-class-specializer!
      (lambda (_%klass104135%_ _%method-table104136%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again104140%_ ()
            (if (let ((__tmp109128
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp109128 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again104140%_)))))
        (class-specializer-table-set!
         __class-specializers
         _%klass104135%_
         _%method-table104136%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass104119%_
               _%method-table104120%_
               _%method104121%_
               _%proc104122%_)
        (let ((_%$e104124%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table104120%_
                  _%method104121%_
                  '#f))))
          (if _%$e104124%_
              _%$e104124%_
              (let ((_%$e104127%_
                     (__lookup-method-specializer _%proc104122%_)))
                (if _%$e104127%_
                    ((lambda (_%specialize104130%_)
                       (let ((_%specialized-proc104132%_
                              (_%specialize104130%_
                               _%klass104119%_
                               _%method-table104120%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table104120%_
                          _%method104121%_
                          _%specialized-proc104132%_)))
                     _%$e104127%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table104120%_
                       _%method104121%_
                       _%proc104122%_))))))))
    (define ___specialize-class
      (lambda (_%klass104061%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass104061%_ 'class))
            (if (__class-type-metaclass? _%klass104061%_)
                (let ((__method108976
                       (__method-ref _%klass104061%_ 'specialize-class)))
                  (if __method108976
                      (let ()
                        (declare (not safe))
                        (__method108976 _%klass104061%_))
                      (begin
                        (error '"Missing method"
                               _%klass104061%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp109129
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass104061%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp109129))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass104061%_)
                    (let ((_%method-table104067%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop104069%_ ((_%rest104071%_
                                            (__class-precedence-list
                                             _%klass104061%_)))
                        (let* ((_%rest104072104080%_ _%rest104071%_)
                               (_%else104074104088%_
                                (lambda () _%method-table104067%_))
                               (_%K104076104107%_
                                (lambda (_%rest104091%_ _%xklass104092%_)
                                  (let ((_%xmethod-table104093104095%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass104092%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table104093104095%_
                                        (let* ((_%xmethod-table104098%_
                                                _%xmethod-table104093104095%_)
                                               (__tmp109130
                                                (lambda (_%g104099104102%_
                                                         _%g104100104104%_)
                                                  (__specialize-method
                                                   _%klass104061%_
                                                   _%method-table104067%_
                                                   _%g104099104102%_
                                                   _%g104100104104%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table104098%_
                                           __tmp109130))
                                        '#f))
                                  (_%loop104069%_ _%rest104091%_))))
                          (if (pair? _%rest104072104080%_)
                              (let ((_%hd104077104110%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest104072104080%_)))
                                    (_%tl104078104112%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest104072104080%_))))
                                (let* ((_%xklass104115%_ _%hd104077104110%_)
                                       (_%rest104117%_ _%tl104078104112%_))
                                  (_%K104076104107%_
                                   _%rest104117%_
                                   _%xklass104115%_)))
                              (_%else104074104088%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass104061%_))
                (__specialize-class (__shadow-class _%klass104061%_))
                (error '"bad class; cannot specialize" _%klass104061%_)))))
    (define seal-class!
      (lambda (_%klass104047%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass104047%_ 'class))
            (let ((_%klass104051%_ _%klass104047%_))
              (__seal-class! _%klass104051%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1082.20-1082.25"
               'contract:
               'class-type?
               'value:
               _%klass104047%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass104030%_)
        (let ((_%klass104033%_ _%klass104030%_))
          (if (__class-type-sealed? _%klass104033%_)
              '#!void
              (begin
                (if (__class-type-final? _%klass104033%_)
                    '#!void
                    (error '"cannot seal non-final class" _%klass104033%_))
                (if (__class-type-metaclass? _%klass104033%_)
                    (let ((__method108977
                           (__method-ref _%klass104033%_ 'seal-class!)))
                      (if __method108977
                          (let ()
                            (declare (not safe))
                            (__method108977 _%klass104033%_))
                          (begin
                            (error '"Missing method"
                                   _%klass104033%_
                                   'seal-class!)
                            '#!void)))
                    (if (let ((__tmp109131
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass104033%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp109131))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass104033%_)
                        (let ((_%method-table104045%_
                               (__specialize-class _%klass104033%_)))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass104033%_
                           _%method-table104045%_
                           '11
                           '#f
                           '#f))))
                (__class-type-seal! _%klass104033%_))))))
    (define next-method
      (lambda (_%subklass104004%_ _%obj104005%_ _%id104006%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass104004%_ 'class))
            (let ((_%subklass104010%_ _%subklass104004%_))
              (if (symbol? _%id104006%_)
                  (let ((_%id104020%_ _%id104006%_))
                    (__next-method
                     _%subklass104010%_
                     _%obj104005%_
                     _%id104020%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1106.44-1106.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id104006%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1106.20-1106.28"
               'contract:
               'class-type?
               'value:
               _%subklass104004%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass103941%_ _%obj103942%_ _%id103943%_)
        (let* ((_%subklass103946%_ _%subklass103941%_)
               (_%id103954%_ _%id103943%_))
          (letrec ((_%find-next-method103963%_
                    (lambda (_%klass103965%_)
                      (let _%lp103967%_ ((_%rest103969%_
                                          (class-precedence-list
                                           _%klass103965%_)))
                        (let* ((_%rest103970103978%_ _%rest103969%_)
                               (_%else103972103986%_ (lambda () '#f))
                               (_%K103974103992%_
                                (lambda (_%rest103989%_ _%klass103990%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass103946%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass103990%_)))
                                      (__mixin-find-method
                                       _%rest103989%_
                                       _%obj103942%_
                                       _%id103954%_)
                                      (_%lp103967%_ _%rest103989%_)))))
                          (if (pair? _%rest103970103978%_)
                              (let ((_%hd103975103995%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest103970103978%_)))
                                    (_%tl103976103997%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest103970103978%_))))
                                (let* ((_%klass104000%_ _%hd103975103995%_)
                                       (_%rest104002%_ _%tl103976103997%_))
                                  (_%K103974103992%_
                                   _%rest104002%_
                                   _%klass104000%_)))
                              (_%else103972103986%_)))))))
            (_%find-next-method103963%_ (class-of _%obj103942%_))))))
    (define call-next-method
      (lambda (_%subklass103914%_ _%obj103915%_ _%id103916%_ . _%args103917%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass103914%_ 'class))
            (let ((_%subklass103921%_ _%subklass103914%_))
              (if (symbol? _%id103916%_)
                  (let ((_%id103931%_ _%id103916%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass103921%_
                             _%obj103915%_
                             _%id103931%_
                             _%args103917%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1117.49-1117.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id103916%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1117.25-1117.33"
               'contract:
               'class-type?
               'value:
               _%subklass103914%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass103885%_ _%obj103886%_ _%id103887%_ . _%args103888%_)
        (let* ((_%subklass103891%_ _%subklass103885%_)
               (_%id103899%_ _%id103887%_)
               (_%$e103908%_
                (__next-method _%subklass103891%_ _%obj103886%_ _%id103899%_)))
          (if _%$e103908%_
              ((lambda (_%methodf103911%_)
                 (apply _%methodf103911%_ _%obj103886%_ _%args103888%_))
               _%$e103908%_)
              (error '"cannot find next method"
                     'object:
                     _%obj103886%_
                     'method:
                     _%id103899%_)))))
    (define write-style
      (lambda (_%we103883%_) (values (macro-writeenv-style _%we103883%_))))
    (define write-object
      (lambda (_%we103874%_ _%obj103875%_)
        (let ((_%$e103877%_ (__method-ref _%obj103875%_ ':wr)))
          (if _%$e103877%_
              ((lambda (_%method103880%_)
                 (_%method103880%_ _%obj103875%_ _%we103874%_))
               _%$e103877%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we103874%_ _%obj103875%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type103789%_)
        (letrec ((_%shadow-type-id103791%_
                  (lambda (_%type103872%_)
                    (let ((__tmp109132
                           (let ()
                             (declare (not safe))
                             (##type-name _%type103872%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp109132 '"::t"))))
                 (_%shadow-type-name103792%_
                  (lambda (_%type103870%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type103870%_))))
                 (_%make-shadow-class103793%_
                  (lambda (_%type103862%_ _%precedence-list103863%_)
                    (let* ((_%super103865%_
                            (if (pair? _%precedence-list103863%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list103863%_))
                                      '())
                                '()))
                           (_%klass103867%_
                            (make-class-type
                             (_%shadow-type-id103791%_ _%type103862%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type103862%_))
                             _%super103865%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (if (__type-extensible?
                                              _%type103862%_)
                                             '()
                                             (cons (cons 'final: '#t) '()))))
                             '#f)))
                      (let ((__tmp109133
                             (let ()
                               (declare (not safe))
                               (##type-id _%type103862%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp109133
                         _%klass103867%_))
                      _%klass103867%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again103797%_ ()
              (if (let ((__tmp109134
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp109134 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (_%again103797%_)))))
          (let ((_%$e103801%_
                 (let ((__tmp109135
                        (let ()
                          (declare (not safe))
                          (##type-id _%type103789%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp109135 '#f))))
            (if _%$e103801%_
                ((lambda (_%klass103804%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass103804%_)
                 _%$e103801%_)
                (let _%loop103807%_ ((_%super103809%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type103789%_)))
                                     (_%hierarchy103810%_ '()))
                  (if (not _%super103809%_)
                      (let _%loop103813%_ ((_%rest103815%_ _%hierarchy103810%_)
                                           (_%precedence-list103816%_ '()))
                        (let* ((_%rest103817103825%_ _%rest103815%_)
                               (_%else103819103835%_
                                (lambda ()
                                  (let ((_%klass103833%_
                                         (_%make-shadow-class103793%_
                                          _%type103789%_
                                          _%precedence-list103816%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass103833%_)))
                               (_%K103821103849%_
                                (lambda (_%rest103838%_ _%type103839%_)
                                  (let ((_%$e103841%_
                                         (let ((__tmp109136
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type103839%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp109136
                                            '#f))))
                                    (if _%$e103841%_
                                        ((lambda (_%klass103844%_)
                                           (_%loop103813%_
                                            _%rest103838%_
                                            (cons _%klass103844%_
                                                  _%precedence-list103816%_)))
                                         _%$e103841%_)
                                        (let ((_%klass103847%_
                                               (_%make-shadow-class103793%_
                                                _%type103839%_
                                                _%precedence-list103816%_)))
                                          (_%loop103813%_
                                           _%rest103838%_
                                           (cons _%klass103847%_
                                                 _%precedence-list103816%_))))))))
                          (if (pair? _%rest103817103825%_)
                              (let ((_%hd103822103852%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest103817103825%_)))
                                    (_%tl103823103854%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest103817103825%_))))
                                (let* ((_%type103857%_ _%hd103822103852%_)
                                       (_%rest103859%_ _%tl103823103854%_))
                                  (_%K103821103849%_
                                   _%rest103859%_
                                   _%type103857%_)))
                              (_%else103819103835%_))))
                      (_%loop103807%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super103809%_))
                       (cons _%super103809%_ _%hierarchy103810%_)))))))))
    (define __type
      (let* ((_%tb103778%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e103780%_ _%tb103778%_))
        (if (eq? '2 _%$e103780%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e103780%_)
                (let ((_%flonum-self-tagging-tags103783%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits103784%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e103786%_ _%flonum-self-tagging-tags103783%_))
                    (if (eq? '0 _%$e103786%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits103784%_ '2))
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
                        (if (eq? '1 _%$e103786%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits103784%_ '2))
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
                            (if (eq? '2 _%$e103786%_)
                                '#(fixnum
                                   subtyped
                                   flonum
                                   flonum
                                   special
                                   pair
                                   flonum
                                   undefined)
                                (if (eq? '3 _%$e103786%_)
                                    '#(fixnum
                                       subtyped
                                       flonum
                                       flonum
                                       special
                                       pair
                                       flonum
                                       flonum)
                                    (if (eq? '4 _%$e103786%_)
                                        '#(fixnum
                                           subtyped
                                           flonum
                                           flonum
                                           special
                                           pair
                                           flonum
                                           flonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags103783%_))))))))
                (error '"unexpected tag width" _%tb103778%_)))))
    (define __class
      (let* ((_%len103731%_
              (let () (declare (not safe)) (##vector-length __type)))
             (_%cv103733%_
              (let () (declare (not safe)) (##make-vector _%len103731%_ '#f))))
        (let _%loop103736%_ ((_%i103738%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i103738%_ _%len103731%_))
              (let* ((_%t103740%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i103738%_)))
                     (_%f103775%_
                      (if (eq? _%t103740%_ 'undefined)
                          (lambda (_%obj103743%_)
                            (error '"object type is undefined" _%obj103743%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t103740%_
                                        '(fixnum flonum pair vector)))
                              (lambda (_%obj103746%_)
                                (declare (not interrupts-enabled) (not safe))
                                (__system-class _%t103740%_))
                              (if (eq? _%t103740%_ 'subtyped)
                                  (lambda (_%obj103750%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st103753%_
                                           (##subtype _%obj103750%_)))
                                      (if (##fx= _%st103753%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass103756%_
                                                 (##structure-type
                                                  _%obj103750%_)))
                                            (if (##structure-instance-of?
                                                 _%klass103756%_
                                                 'class)
                                                _%klass103756%_
                                                (__shadow-class
                                                 _%klass103756%_)))
                                          (if (##fx= _%st103753%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj103750%_)
                                                         '1)
                                                  (__system-class 'box)
                                                  (__system-class 'values))
                                              (let ((_%$e103759%_
                                                     (##vector-ref
                                                      __subtype-id
                                                      _%st103753%_)))
                                                (if _%$e103759%_
                                                    (__system-class
                                                     _%$e103759%_)
                                                    (error '"unknown class"
                                                           'subtype:
                                                           _%st103753%_
                                                           'object:
                                                           _%obj103750%_)))))))
                                  (if (eq? _%t103740%_ 'special)
                                      (lambda (_%obj103764%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (if (char? _%obj103764%_)
                                            (__system-class 'char)
                                            (if (eq? _%obj103764%_ '())
                                                (__system-class 'null)
                                                (if (eq? _%obj103764%_ '#f)
                                                    (__system-class 'boolean)
                                                    (if (eq? _%obj103764%_ '#t)
                                                        (__system-class
                                                         'boolean)
                                                        (if (eq? _%obj103764%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void)
                    (__system-class 'void)
                    (if (eq? _%obj103764%_ '#!eof)
                        (__system-class 'eof)
                        (__system-class 'special))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t103740%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv103733%_ _%i103738%_ _%f103775%_))
                (_%loop103736%_
                 (let () (declare (not safe)) (##fx+ _%i103738%_ '1))))
              _%cv103733%_))))
    (define type-of
      (lambda (_%obj103727%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj103727%_)))))
    (define class-of
      (lambda (_%obj103718%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t103722%_ (##type _%obj103718%_))
                 (_%f103724%_ (##vector-ref __class _%t103722%_)))
            (_%f103724%_ _%obj103718%_)))))
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
      (lambda (_%id103712%_)
        (let ((_%$e103714%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id103712%_ '#f))))
          (if _%$e103714%_
              _%$e103714%_
              (error '"unknown system class" _%id103712%_)))))
    (define __make-system-class
      (lambda (_%id103707%_ _%super103708%_)
        (let ((_%klass103710%_
               (make-class-type
                _%id103707%_
                _%id103707%_
                _%super103708%_
                '()
                '((system: . #t))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id103707%_
             _%klass103710%_))
          _%klass103710%_)))))
