(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1779274767)
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
      (let ((_%flags136757%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties136758%_ '((direct-slots:) (system: . #t)))
            (_%slot-table136759%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags136757%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table136759%_
           _%properties136758%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots136714%_
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
             (_%slot-vector136716%_ (list->vector (cons '#f _%slots136714%_)))
             (_%slot-table136742%_
              (let ((_%slot-table136718%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp139810
                       (lambda (_%slot136720%_ _%field136721%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table136718%_
                            _%slot136720%_
                            _%field136721%_))
                         (let ((__tmp139811
                                (let ((_%sym136723%_ _%slot136720%_))
                                  (if (symbol? _%sym136723%_)
                                      (let ((_%sym136728%_ _%sym136723%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym136728%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym136723%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table136718%_
                            __tmp139811
                            _%field136721%_))))
                      (__tmp139808
                       (let ((__tmp139809
                              (let ()
                                (declare (not safe))
                                (##length _%slots136714%_))))
                         (declare (not safe))
                         (##iota __tmp139809 '1))))
                  (declare (not safe))
                  (##for-each __tmp139810 _%slots136714%_ __tmp139808))
                _%slot-table136718%_))
             (_%flags136744%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields136750%_
              (list->vector
               (let ((__tmp139812
                      (map (lambda (_%g136745136747%_)
                             (list _%g136745136747%_ '5 '#f))
                           (drop _%slots136714%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp139812))))
             (_%properties136752%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots136714%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t136754%_
              (let ((__tmp139813 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags136744%_
                 ##type-type
                 _%fields136750%_
                 __tmp139813
                 _%slot-vector136716%_
                 _%slot-table136742%_
                 _%properties136752%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t136754%_ _%t136754%_))
        _%t136754%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags136710%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties136711%_ '((direct-slots:) (system: . #t)))
            (_%slot-table136712%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp139814 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags136710%_
           '#f
           '#()
           __tmp139814
           '#(#f)
           _%slot-table136712%_
           _%properties136711%_
           '#f
           '#f
           '#f
           '#f))))
    (define __class-type
      (lambda (_%klass136698%_)
        (let ((_%klass136701%_ _%klass136698%_))
          (declare (not safe))
          (##structure-type _%klass136701%_))))
    (define class-type
      (lambda (_%klass121861%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass121861%_ 'class))
            (let ((_%klass121865%_ _%klass121861%_))
              (__class-type _%klass121865%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass121861%_)
              '#!void))))
    (define class-type?
      (lambda (_%obj136696%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj136696%_ 'class))))
    (define __class-type=?
      (lambda (_%x136675%_ _%y136676%_)
        (let* ((_%x136679%_ _%x136675%_) (_%y136687%_ _%y136676%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x136679%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y136687%_ '1 '#f '#f))))))
    (define class-type=?
      (lambda (_%x121995%_ _%y121996%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x121995%_ 'class))
            (let ((_%x122000%_ _%x121995%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y121996%_ 'class))
                  (let ((_%y122010%_ _%y121996%_))
                    (__class-type=? _%x122000%_ _%y122010%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y121996%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x121995%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type136663%_)
        (let* ((_%type136666%_ _%type136663%_)
               (__tmp139815
                (let ((__tmp139816
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type136666%_))))
                  (declare (not safe))
                  (##fxand __tmp139816 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp139815 type-flag-opaque))))
    (define type-opaque?
      (lambda (_%type122442%_)
        (if (let () (declare (not safe)) (##type? _%type122442%_))
            (let ((_%type122446%_ _%type122442%_))
              (__type-opaque? _%type122446%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type122442%_)
              '#!void))))
    (define __class-type-opaque?
      (lambda (_%klass136651%_)
        (let* ((_%klass136654%_ _%klass136651%_)
               (__tmp139817
                (let ((__tmp139818
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass136654%_))))
                  (declare (not safe))
                  (##fxand __tmp139818 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp139817 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass122576%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122576%_ 'class))
            (let ((_%klass122580%_ _%klass122576%_))
              (__class-type-opaque? _%klass122580%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass122576%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type136639%_)
        (let* ((_%type136642%_ _%type136639%_)
               (__tmp139819
                (let ((__tmp139820
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type136642%_))))
                  (declare (not safe))
                  (##fxand __tmp139820 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp139819 type-flag-extensible))))
    (define type-extensible?
      (lambda (_%type122710%_)
        (if (let () (declare (not safe)) (##type? _%type122710%_))
            (let ((_%type122714%_ _%type122710%_))
              (__type-extensible? _%type122714%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type122710%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type136627%_)
        (let* ((_%type136630%_ _%type136627%_)
               (__tmp139821
                (let ((__tmp139822
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type136630%_))))
                  (declare (not safe))
                  (##fxand __tmp139822 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp139821 '0))))
    (define class-type-final?
      (lambda (_%type122844%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type122844%_ 'class))
            (let ((_%type122848%_ _%type122844%_))
              (__class-type-final? _%type122848%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type122844%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass136615%_)
        (let* ((_%klass136618%_ _%klass136615%_)
               (__tmp139823
                (let ((__tmp139824
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass136618%_))))
                  (declare (not safe))
                  (##fxand __tmp139824 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp139823 class-type-flag-struct))))
    (define class-type-struct?
      (lambda (_%klass122978%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122978%_ 'class))
            (let ((_%klass122982%_ _%klass122978%_))
              (__class-type-struct? _%klass122982%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass122978%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass136603%_)
        (let* ((_%klass136606%_ _%klass136603%_)
               (__tmp139825
                (let ((__tmp139826
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass136606%_))))
                  (declare (not safe))
                  (##fxand __tmp139826 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp139825 class-type-flag-sealed))))
    (define class-type-sealed?
      (lambda (_%klass123112%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123112%_ 'class))
            (let ((_%klass123116%_ _%klass123112%_))
              (__class-type-sealed? _%klass123116%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass123112%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass136591%_)
        (let* ((_%klass136594%_ _%klass136591%_)
               (__tmp139827
                (let ((__tmp139828
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass136594%_))))
                  (declare (not safe))
                  (##fxand __tmp139828 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp139827 class-type-flag-metaclass))))
    (define class-type-metaclass?
      (lambda (_%klass123246%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123246%_ 'class))
            (let ((_%klass123250%_ _%klass123246%_))
              (__class-type-metaclass? _%klass123250%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass123246%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass136579%_)
        (let* ((_%klass136582%_ _%klass136579%_)
               (__tmp139829
                (let ((__tmp139830
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass136582%_))))
                  (declare (not safe))
                  (##fxand __tmp139830 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp139829 class-type-flag-system))))
    (define class-type-system?
      (lambda (_%klass123380%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123380%_ 'class))
            (let ((_%klass123384%_ _%klass123380%_))
              (__class-type-system? _%klass123384%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass123380%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass136567%_)
        (let* ((_%klass136570%_ _%klass136567%_)
               (__tmp139831
                (let ((__tmp139832
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass136570%_))))
                  (declare (not safe))
                  (##fxand __tmp139832 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp139831 class-type-flag-acyclic))))
    (define class-type-acyclic?
      (lambda (_%klass123514%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123514%_ 'class))
            (let ((_%klass123518%_ _%klass123514%_))
              (__class-type-acyclic? _%klass123518%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass123514%_)
              '#!void))))
    (define make-class-type-descriptor
      (lambda (_%type-id136358%_
               _%type-name136359%_
               _%type-super136360%_
               _%precedence-list136361%_
               _%slot-vector136362%_
               _%properties136363%_
               _%constructor136364%_
               _%slot-table136365%_
               _%methods136366%_)
        (letrec ((_%make-props!136369%_
                  (lambda (_%key136517%_)
                    (letrec* ((_%ht136519%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!136520%_
                               (lambda (_%ht136560%_ _%slots136561%_)
                                 (for-each
                                  (lambda (_%g136562136564%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht136560%_
                                       _%g136562136564%_
                                       '#t)))
                                  _%slots136561%_)))
                              (_%put-alist!136521%_
                               (lambda (_%ht136549%_
                                        _%key136550%_
                                        _%alist136551%_)
                                 (let ((_%$e136553%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key136550%_
                                           _%alist136551%_))))
                                   (if _%$e136553%_
                                       ((lambda (_%g136555136557%_)
                                          (_%put-slots!136520%_
                                           _%ht136549%_
                                           _%g136555136557%_))
                                        _%$e136553%_)
                                       '#!void)))))
                      (_%put-alist!136521%_
                       _%ht136519%_
                       _%key136517%_
                       _%properties136363%_)
                      (for-each
                       (lambda (_%mixin136523%_)
                         (let ((_%alist136525%_
                                (##structure-ref
                                 _%mixin136523%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist136525%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key136517%_
                                           _%alist136525%_))))
                               (_%put-slots!136520%_
                                _%ht136519%_
                                (let ((_%klass136530%_ _%mixin136523%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass136530%_
                                         'class))
                                      (let ((_%klass136535%_ _%klass136530%_))
                                        (__class-type-slot-list
                                         _%klass136535%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass136530%_)
                                        '#!void))))
                               (_%put-alist!136521%_
                                _%ht136519%_
                                _%key136517%_
                                _%alist136525%_))))
                       _%precedence-list136361%_)
                      _%ht136519%_))))
          (let* ((_%transparent?136371%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties136363%_)))
                 (_%all-slots-printable?136376%_
                  (let ((_%$e136373%_ _%transparent?136371%_))
                    (if _%$e136373%_
                        _%$e136373%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties136363%_))))))
                 (_%printable136378%_
                  (if (not _%all-slots-printable?136376%_)
                      (_%make-props!136369%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?136383%_
                  (let ((_%$e136380%_ _%transparent?136371%_))
                    (if _%$e136380%_
                        _%$e136380%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties136363%_))))))
                 (_%equalable136385%_
                  (if (not _%all-slots-equalable?136383%_)
                      (_%make-props!136369%_ 'equal:)
                      '#f))
                 (_%first-new-field136387%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super136360%_ 'class))
                      (let ((__tmp139833
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super136360%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp139833))
                      '1))
                 (_%field-info-length136389%_
                  (let ((__tmp139834
                         (let ((__tmp139835
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector136362%_))))
                           (declare (not safe))
                           (##fx- __tmp139835 _%first-new-field136387%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp139834)))
                 (_%field-info136391%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length136389%_ '#f)))
                 (_%struct?136393%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties136363%_)))
                 (_%final?136395%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties136363%_)))
                 (_%metaclass136402%_
                  (let ((_%metaclass136396136398%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties136363%_))))
                    (if _%metaclass136396136398%_
                        (let ((_%metaclass136400%_ _%metaclass136396136398%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass136400%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id136358%_
                                     'metaclass:
                                     _%metaclass136400%_))
                          _%metaclass136400%_)
                        '#f)))
                 (_%system?136404%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties136363%_)))
                 (_%opaque?136443%_
                  (if (or _%transparent?136371%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties136363%_)))
                      '#f
                      (let ((_%$e136409%_ (not _%type-super136360%_)))
                        (if _%$e136409%_
                            _%$e136409%_
                            (let ((_%type136412%_ _%type-super136360%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##type? _%type136412%_))
                                  (let ((_%type136417%_ _%type136412%_))
                                    (__type-opaque? _%type136417%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     '##type?
                                     'value:
                                     _%type136412%_)
                                    '#!void)))))))
                 (_%acyclic?136445%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties136363%_)))
                 (_%type-flags136447%_
                  (let ((__tmp139841
                         (if _%final?136395%_ '0 type-flag-extensible))
                        (__tmp139840
                         (if _%opaque?136443%_ type-flag-opaque '0))
                        (__tmp139839
                         (if _%struct?136393%_ class-type-flag-struct '0))
                        (__tmp139838
                         (if _%metaclass136402%_ class-type-flag-metaclass '0))
                        (__tmp139837
                         (if _%system?136404%_ class-type-flag-system '0))
                        (__tmp139836
                         (if _%acyclic?136445%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp139841
                             __tmp139840
                             __tmp139839
                             __tmp139838
                             __tmp139837
                             __tmp139836)))
                 (_%precedence-list136455%_
                  (let ((_%$e136449%_ (memq t::t _%precedence-list136361%_)))
                    (if _%$e136449%_
                        ((lambda (_%tail136452%_)
                           (if (null? (cdr _%tail136452%_))
                               _%precedence-list136361%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list136361%_)))
                         _%$e136449%_)
                        (let ((__tmp139842 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list136361%_ __tmp139842))))))
            (let _%loop136458%_ ((_%i136460%_ _%first-new-field136387%_)
                                 (_%j136461%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j136461%_ _%field-info-length136389%_))
                  (let* ((_%slot136463%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector136362%_ _%i136460%_)))
                         (_%flags136471%_
                          (if _%transparent?136371%_
                              '5
                              (let ((__tmp139844
                                     (if (or _%all-slots-printable?136376%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable136378%_
                                                _%slot136463%_
                                                '#f)))
                                         '1
                                         '0))
                                    (__tmp139843
                                     (if (or _%all-slots-equalable?136383%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable136385%_
                                                _%slot136463%_
                                                '#f)))
                                         '4
                                         '0)))
                                (declare (not safe))
                                (##fxior __tmp139844 __tmp139843)))))
                    (vector-set!
                     _%field-info136391%_
                     _%j136461%_
                     _%slot136463%_)
                    (vector-set!
                     _%field-info136391%_
                     (let () (declare (not safe)) (##fx+ _%j136461%_ '1))
                     _%flags136471%_)
                    (_%loop136458%_
                     (let () (declare (not safe)) (##fx+ _%i136460%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j136461%_ '3))))
                  '#!void))
            (if _%metaclass136402%_
                (let ((_%val136498%_
                       (let* ((_%klass136474%_ _%metaclass136402%_)
                              (_%args136477%_
                               (list _%type-id136358%_
                                     _%type-name136359%_
                                     _%type-flags136447%_
                                     _%type-super136360%_
                                     _%field-info136391%_
                                     _%precedence-list136455%_
                                     _%slot-vector136362%_
                                     _%slot-table136365%_
                                     _%properties136363%_
                                     _%constructor136364%_
                                     _%methods136366%_)))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%klass136474%_
                                'class))
                             (let ((_%klass136482%_ _%klass136474%_))
                               (declare (not safe))
                               (##apply __make-instance
                                        _%klass136482%_
                                        _%args136477%_))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%klass136474%_)
                               '#!void)))))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val136498%_ 'class))
                      _%val136498%_
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         '"\"gerbil/runtime/mop.ss\"@283.10-287.95"
                         'contract:
                         '(class-type? val)
                         'value:
                         _%val136498%_)
                        '#!void)))
                (let ((_%klass136501%_
                       (let ()
                         (declare (not safe))
                         (##structure
                          class::t
                          _%type-id136358%_
                          _%type-name136359%_
                          _%type-flags136447%_
                          _%type-super136360%_
                          _%field-info136391%_
                          _%precedence-list136455%_
                          _%slot-vector136362%_
                          _%slot-table136365%_
                          _%properties136363%_
                          _%constructor136364%_
                          _%methods136366%_
                          '#f
                          '#f))))
                  (for-each
                   (lambda (_%super136503%_)
                     (let ((_%$e136505%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%super136503%_
                               '9
                               '#f
                               '#f))))
                       (if _%$e136505%_
                           ((lambda (_%props136508%_)
                              (let ((_%$e136510%_
                                     (assq 'subclasses: _%props136508%_)))
                                (if _%$e136510%_
                                    ((lambda (_%subclasses136513%_)
                                       (set-cdr!
                                        _%subclasses136513%_
                                        (cons _%klass136501%_
                                              (cdr _%subclasses136513%_))))
                                     _%$e136510%_)
                                    (let ((__tmp139845
                                           (cons (cons 'subclasses:
                                                       (cons _%klass136501%_
                                                             '()))
                                                 _%props136508%_)))
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%super136503%_
                                       __tmp139845
                                       '9
                                       '#f
                                       '#f)))))
                            _%$e136505%_)
                           (let ((__tmp139846
                                  (cons (cons 'subclasses:
                                              (cons _%klass136501%_ '()))
                                        '())))
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%super136503%_
                              __tmp139846
                              '9
                              '#f
                              '#f)))))
                   (let ()
                     (declare (not safe))
                     (agetq__% 'direct-supers: _%properties136363%_ '())))
                  _%klass136501%_))))))
    (define class-type-id
      (lambda (_%klass136356%_)
        (##structure-ref _%klass136356%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass136354%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136354%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass136351%_ _%val136352%_)
        (##structure-set! _%klass136351%_ _%val136352%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass136346%_ _%val136348%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136346%_
           _%val136348%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass136344%_)
        (##structure-ref _%klass136344%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass136342%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136342%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass136339%_ _%val136340%_)
        (##structure-set! _%klass136339%_ _%val136340%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass136334%_ _%val136336%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136334%_
           _%val136336%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass136332%_)
        (##structure-ref _%klass136332%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass136330%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136330%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass136327%_ _%val136328%_)
        (##structure-set! _%klass136327%_ _%val136328%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass136322%_ _%val136324%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136322%_
           _%val136324%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass136320%_)
        (##structure-ref _%klass136320%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass136318%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136318%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass136315%_ _%val136316%_)
        (##structure-set! _%klass136315%_ _%val136316%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass136310%_ _%val136312%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136310%_
           _%val136312%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass136308%_)
        (##structure-ref _%klass136308%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass136306%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136306%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass136303%_ _%val136304%_)
        (##structure-set! _%klass136303%_ _%val136304%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass136298%_ _%val136300%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136298%_
           _%val136300%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass136296%_)
        (##structure-ref _%klass136296%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass136294%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136294%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass136291%_ _%val136292%_)
        (##structure-set!
         _%klass136291%_
         _%val136292%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass136286%_ _%val136288%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136286%_
           _%val136288%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass136284%_)
        (##structure-ref _%klass136284%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass136282%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136282%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass136279%_ _%val136280%_)
        (##structure-set!
         _%klass136279%_
         _%val136280%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass136274%_ _%val136276%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136274%_
           _%val136276%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass136272%_)
        (##structure-ref _%klass136272%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass136270%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136270%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass136267%_ _%val136268%_)
        (##structure-set!
         _%klass136267%_
         _%val136268%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass136262%_ _%val136264%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136262%_
           _%val136264%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass136260%_)
        (##structure-ref _%klass136260%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass136258%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136258%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass136255%_ _%val136256%_)
        (##structure-set!
         _%klass136255%_
         _%val136256%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass136250%_ _%val136252%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136250%_
           _%val136252%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass136248%_)
        (##structure-ref _%klass136248%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass136246%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136246%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass136243%_ _%val136244%_)
        (##structure-set!
         _%klass136243%_
         _%val136244%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass136238%_ _%val136240%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136238%_
           _%val136240%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass136236%_)
        (##structure-ref _%klass136236%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass136234%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136234%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass136231%_ _%val136232%_)
        (##structure-set!
         _%klass136231%_
         _%val136232%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass136226%_ _%val136228%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136226%_
           _%val136228%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass136224%_)
        (##structure-ref _%klass136224%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass136222%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136222%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass136219%_ _%val136220%_)
        (##structure-set!
         _%klass136219%_
         _%val136220%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass136214%_ _%val136216%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136214%_
           _%val136216%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass136212%_)
        (##structure-ref _%klass136212%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass136210%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136210%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass136207%_ _%val136208%_)
        (##structure-set!
         _%klass136207%_
         _%val136208%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass136202%_ _%val136204%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136202%_
           _%val136204%_
           '13
           class::t
           'interface))))
    (define type-field-list
      (lambda (_%type135966%_)
        (letrec ((_%__fields->list136096%_
                  (lambda (_%fields136160%_)
                    (let* ((_%fields136163%_ _%fields136160%_)
                           (_%fields-len136172%_
                            (let ()
                              (declare (not safe))
                              (##vector-length _%fields136163%_))))
                      (let _%loop136174%_ ((_%i136176%_ '0) (_%r136177%_ '()))
                        (let* ((_%i136180%_ _%i136176%_)
                               (_%r136193%_ _%r136177%_))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i136180%_ _%fields-len136172%_))
                              (_%loop136174%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i136180%_ '3))
                               (cons (vector-ref _%fields136163%_ _%i136180%_)
                                     _%r136193%_))
                              (reverse! _%r136193%_)))))))
                 (_%fields->list136097%_
                  (lambda (_%fields136148%_)
                    (let ((_%fields136151%_ _%fields136148%_))
                      (_%__fields->list136096%_ _%fields136151%_)))))
          (let _%loop136099%_ ((_%type136101%_ _%type135966%_))
            (if (let () (declare (not safe)) (##type? _%type136101%_))
                (if (eq? _%type136101%_ ##type-type)
                    '()
                    (let ((_%$e136106%_
                           (let ()
                             (declare (not safe))
                             (##type-super _%type136101%_))))
                      (if _%$e136106%_
                          ((lambda (_%super136109%_)
                             (let ((__tmp139848
                                    (_%loop136099%_ _%super136109%_))
                                   (__tmp139847
                                    (let* ((_%fields136112%_
                                            (let ()
                                              (declare (not safe))
                                              (##type-fields _%type136101%_)))
                                           (_%fields136116%_ _%fields136112%_))
                                      (_%__fields->list136096%_
                                       _%fields136116%_))))
                               (declare (not safe))
                               (##append __tmp139848 __tmp139847)))
                           _%$e136106%_)
                          (let* ((_%fields136133%_
                                  (let ()
                                    (declare (not safe))
                                    (##type-fields _%type136101%_)))
                                 (_%fields136137%_ _%fields136133%_))
                            (_%__fields->list136096%_ _%fields136137%_)))))
                '())))))
    (define __class-type-field-list
      (lambda (_%klass135934%_)
        (let ((_%klass135937%_ _%klass135934%_))
          (letrec ((_%get-fields!135946%_
                    (lambda (_%klass135961%_ _%type135962%_)
                      (let ((_%fields135964%_
                             (type-field-list _%type135962%_)))
                        (##structure-set!
                         _%klass135961%_
                         (cons (cons 'fields: _%fields135964%_)
                               (##structure-ref
                                _%klass135961%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%fields135964%_))))
            (let* ((_%props135948%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass135937%_ '9 '#f '#f)))
                   (_%$e135950%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'fields: _%props135948%_))))
              (if _%$e135950%_
                  _%$e135950%_
                  (let ((_%$e135953%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props135948%_))))
                    (if _%$e135953%_
                        ((lambda (_%g135955135957%_)
                           (_%get-fields!135946%_
                            _%klass135937%_
                            _%g135955135957%_))
                         _%$e135953%_)
                        (_%get-fields!135946%_
                         _%klass135937%_
                         _%klass135937%_)))))))))
    (define class-type-field-list
      (lambda (_%klass124038%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124038%_ 'class))
            (let ((_%klass124042%_ _%klass124038%_))
              (__class-type-field-list _%klass124042%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@389.30-389.35"
               'contract:
               'class-type?
               'value:
               _%klass124038%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass135922%_)
        (let ((_%klass135925%_ _%klass135922%_))
          (vector->list
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass135925%_ '7 '#f '#f))
           '1))))
    (define class-type-slot-list
      (lambda (_%klass124172%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124172%_ 'class))
            (let ((_%klass124176%_ _%klass124172%_))
              (__class-type-slot-list _%klass124176%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@405.29-405.34"
               'contract:
               'class-type?
               'value:
               _%klass124172%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass135910%_)
        (let* ((_%klass135913%_ _%klass135910%_)
               (__tmp139849
                (let ((__tmp139850
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass135913%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp139850))))
          (declare (not safe))
          (##fx- __tmp139849 '1))))
    (define class-type-field-count
      (lambda (_%klass124306%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124306%_ 'class))
            (let ((_%klass124310%_ _%klass124306%_))
              (__class-type-field-count _%klass124310%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@407.31-407.36"
               'contract:
               'class-type?
               'value:
               _%klass124306%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass135898%_)
        (let ((_%klass135901%_ _%klass135898%_))
          (let ((__tmp139851
                 (let ((__tmp139852
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass135901%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp139852))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass135901%_
             __tmp139851
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define class-type-seal!
      (lambda (_%klass124440%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124440%_ 'class))
            (let ((_%klass124444%_ _%klass124440%_))
              (__class-type-seal! _%klass124444%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@410.25-410.30"
               'contract:
               'class-type?
               'value:
               _%klass124440%_)
              '#!void))))
    (define __class-type-printable-slots
      (lambda (_%klass135831%_)
        (let ((_%klass135834%_ _%klass135831%_))
          (letrec ((_%get-field-vector135843%_
                    (lambda (_%type135882%_)
                      (let _%loop135884%_ ((_%type135886%_ _%type135882%_))
                        (let* ((_%fields135888%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type135886%_)))
                               (_%$e135890%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type135886%_))))
                          (if _%$e135890%_
                              ((lambda (_%super135893%_)
                                 (let ((_%super-fields135895%_
                                        (_%loop135884%_ _%super135893%_)))
                                   (vector-append
                                    _%super-fields135895%_
                                    _%fields135888%_)))
                               _%$e135890%_)
                              _%fields135888%_)))))
                   (_%get-printable-slot-alist135844%_
                    (lambda (_%type135865%_)
                      (let* ((_%fields135867%_
                              (_%get-field-vector135843%_ _%type135865%_))
                             (_%count135869%_
                              (vector-length _%fields135867%_)))
                        (let _%loop135872%_ ((_%i135874%_ '0)
                                             (_%offset135875%_ '1)
                                             (_%r135876%_ '()))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i135874%_ _%count135869%_))
                              (let ((_%slot-name135878%_
                                     (vector-ref _%fields135867%_ _%i135874%_))
                                    (_%slot-flags135879%_
                                     (vector-ref
                                      _%fields135867%_
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%i135874%_ '1))))
                                    (_%next-i135880%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i135874%_ '3))))
                                (if (let ((__tmp139853
                                           (let ()
                                             (declare (not safe))
                                             (##fxand _%slot-flags135879%_
                                                      '1))))
                                      (declare (not safe))
                                      (##fx= __tmp139853 '0))
                                    (_%loop135872%_
                                     _%next-i135880%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset135875%_ '1))
                                     _%r135876%_)
                                    (_%loop135872%_
                                     _%next-i135880%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset135875%_ '1))
                                     (cons (cons _%slot-name135878%_
                                                 _%offset135875%_)
                                           _%r135876%_))))
                              (reverse! _%r135876%_))))))
                   (_%get-printable-slots!135845%_
                    (lambda (_%klass135860%_ _%type135861%_)
                      (let ((_%printable135863%_
                             (_%get-printable-slot-alist135844%_
                              _%type135861%_)))
                        (##structure-set!
                         _%klass135860%_
                         (cons (cons 'printable-slots: _%printable135863%_)
                               (##structure-ref
                                _%klass135860%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%printable135863%_))))
            (let* ((_%props135847%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass135834%_ '9 '#f '#f)))
                   (_%$e135849%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'printable-slots: _%props135847%_))))
              (if _%$e135849%_
                  _%$e135849%_
                  (let ((_%$e135852%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props135847%_))))
                    (if _%$e135852%_
                        ((lambda (_%g135854135856%_)
                           (_%get-printable-slots!135845%_
                            _%klass135834%_
                            _%g135854135856%_))
                         _%$e135852%_)
                        (_%get-printable-slots!135845%_
                         _%klass135834%_
                         _%klass135834%_)))))))))
    (define class-type-printable-slots
      (lambda (_%klass124574%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124574%_ 'class))
            (let ((_%klass124578%_ _%klass124574%_))
              (__class-type-printable-slots _%klass124578%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@417.35-417.40"
               'contract:
               'class-type?
               'value:
               _%klass124574%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct135800%_ _%maybe-super-struct135801%_)
        (let* ((_%maybe-sub-struct135804%_ _%maybe-sub-struct135800%_)
               (_%maybe-super-struct135812%_ _%maybe-super-struct135801%_)
               (_%maybe-super-struct-id135821%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct135812%_))))
          (let _%lp135823%_ ((_%super-struct135825%_
                              _%maybe-sub-struct135804%_))
            (if (not _%super-struct135825%_)
                '#f
                (if (eq? _%maybe-super-struct-id135821%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct135825%_)))
                    '#t
                    (_%lp135823%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct135825%_)))))))))
    (define substruct?
      (lambda (_%maybe-sub-struct124708%_ _%maybe-super-struct124709%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct124708%_ 'class))
            (let ((_%maybe-sub-struct124713%_ _%maybe-sub-struct124708%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct124709%_
                     'class))
                  (let ((_%maybe-super-struct124723%_
                         _%maybe-super-struct124709%_))
                    (__substruct?
                     _%maybe-sub-struct124713%_
                     _%maybe-super-struct124723%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@463.47-463.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct124709%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@463.19-463.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct124708%_)
              '#!void))))
    (define base-struct/1
      (lambda (_%klass135778%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135778%_ 'class))
            (if (let* ((_%klass135781%_ _%klass135778%_)
                       (_%klass135786%_ _%klass135781%_))
                  (__class-type-struct? _%klass135786%_))
                _%klass135778%_
                (let () (declare (not safe)) (##type-super _%klass135778%_)))
            (if (not _%klass135778%_)
                '#f
                (error '"not a class or false" _%klass135778%_)))))
    (define base-struct/2
      (lambda (_%klass1135701%_ _%klass2135702%_)
        (let ((_%s1135704%_ (base-struct/1 _%klass1135701%_))
              (_%s2135705%_ (base-struct/1 _%klass2135702%_)))
          (if (or (not _%s1135704%_)
                  (and _%s2135705%_
                       (let* ((_%maybe-sub-struct135710%_ _%s1135704%_)
                              (_%maybe-super-struct135713%_ _%s2135705%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%maybe-sub-struct135710%_
                                'class))
                             (let ((_%maybe-sub-struct135718%_
                                    _%maybe-sub-struct135710%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%maybe-super-struct135713%_
                                      'class))
                                   (let ((_%maybe-super-struct135732%_
                                          _%maybe-super-struct135713%_))
                                     (__substruct?
                                      _%maybe-sub-struct135718%_
                                      _%maybe-super-struct135732%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%maybe-super-struct135713%_)
                                     '#!void)))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%maybe-sub-struct135710%_)
                               '#!void)))))
              _%s2135705%_
              (if (or (not _%s2135705%_)
                      (and _%s1135704%_
                           (let* ((_%maybe-sub-struct135746%_ _%s2135705%_)
                                  (_%maybe-super-struct135749%_ _%s1135704%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%maybe-sub-struct135746%_
                                    'class))
                                 (let ((_%maybe-sub-struct135754%_
                                        _%maybe-sub-struct135746%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%maybe-super-struct135749%_
                                          'class))
                                       (let ((_%maybe-super-struct135766%_
                                              _%maybe-super-struct135749%_))
                                         (__substruct?
                                          _%maybe-sub-struct135754%_
                                          _%maybe-super-struct135766%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          'class-type?
                                          'value:
                                          _%maybe-super-struct135749%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'class-type?
                                    'value:
                                    _%maybe-sub-struct135746%_)
                                   '#!void)))))
                  _%s1135704%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1135701%_
                         _%klass2135702%_
                         _%s1135704%_
                         _%s2135705%_))))))
    (define base-struct/list
      (lambda (_%all-supers135586%_)
        (let* ((_%all-supers135587135612%_ _%all-supers135586%_)
               (_%E135592135616%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers135587135612%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K135610135698%_ (lambda () '#f))
                (_%K135607135684%_
                 (lambda (_%x135682%_) (base-struct/1 _%x135682%_)))
                (_%K135602135661%_
                 (lambda (_%y135658%_ _%x135659%_)
                   (base-struct/2 _%x135659%_ _%y135658%_)))
                (_%K135593135623%_
                 (lambda (_%y135620%_ _%x135621%_)
                   (let ()
                     (declare (not safe))
                     (foldr__0 base-struct/2 _%x135621%_ _%y135620%_)))))
            (let* ((_%__match138622138623%_
                    (lambda (_%hd135594135626%_ _%tl135595135628%_)
                      (let ((_%x135631%_ _%hd135594135626%_))
                        (letrec ((_%splice-rest135597135633%_
                                  (lambda (_%rest135601135640%_ _%y135642%_)
                                    (if (null? _%rest135601135640%_)
                                        (_%K135593135623%_
                                         _%y135642%_
                                         _%x135631%_)
                                        (_%E135592135616%_))))
                                 (_%splice-try135599135635%_
                                  (lambda (_%hd135600135644%_
                                           _%rest135601135646%_
                                           _%y135596135647%_)
                                    (let ((_%y135649%_ _%hd135600135644%_))
                                      (_%splice-loop135598135637%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest135601135646%_))
                                       (cons _%y135649%_ _%y135596135647%_)))))
                                 (_%splice-loop135598135637%_
                                  (lambda (_%rest135601135651%_
                                           _%y135596135652%_)
                                    (if (pair? _%rest135601135651%_)
                                        (_%splice-try135599135635%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest135601135651%_))
                                         _%rest135601135651%_
                                         _%y135596135652%_)
                                        (_%splice-rest135597135633%_
                                         _%rest135601135651%_
                                         (reverse _%y135596135652%_))))))
                          (_%splice-loop135598135637%_
                           _%tl135595135628%_
                           '())))))
                   (_%try-match135589135694%_
                    (lambda ()
                      (if (pair? _%all-supers135587135612%_)
                          (let ((_%tl135609135689%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers135587135612%_)))
                                (_%hd135608135687%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers135587135612%_))))
                            (if (null? _%tl135609135689%_)
                                (let ((_%x135692%_ _%hd135608135687%_))
                                  (base-struct/1 _%x135692%_))
                                (if (pair? _%tl135609135689%_)
                                    (let ((_%tl135606135673%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl135609135689%_)))
                                          (_%hd135605135671%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl135609135689%_))))
                                      (if (null? _%tl135606135673%_)
                                          (let ((_%x135669%_
                                                 _%hd135608135687%_)
                                                (_%y135676%_
                                                 _%hd135605135671%_))
                                            (_%K135602135661%_
                                             _%y135676%_
                                             _%x135669%_))
                                          (_%__match138622138623%_
                                           _%hd135608135687%_
                                           _%tl135609135689%_)))
                                    (_%__match138622138623%_
                                     _%hd135608135687%_
                                     _%tl135609135689%_))))
                          (_%E135592135616%_)))))
              (if (null? _%all-supers135587135612%_)
                  (_%K135610135698%_)
                  (_%try-match135589135694%_)))))))
    (define base-struct
      (lambda _%all-supers135584%_ (base-struct/list _%all-supers135584%_)))
    (define find-super-constructor
      (lambda (_%super135535%_)
        (let _%lp135537%_ ((_%rest135539%_ _%super135535%_)
                           (_%constructor135540%_ '#f))
          (let* ((_%rest135541135549%_ _%rest135539%_)
                 (_%else135543135557%_ (lambda () _%constructor135540%_))
                 (_%K135545135572%_
                  (lambda (_%rest135560%_ _%hd135561%_)
                    (let ((_%$e135563%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd135561%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e135563%_
                          ((lambda (_%xconstructor135566%_)
                             (if (or (not _%constructor135540%_)
                                     (eq? _%constructor135540%_
                                          _%xconstructor135566%_))
                                 (_%lp135537%_
                                  _%rest135560%_
                                  _%xconstructor135566%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor135540%_
                                        _%xconstructor135566%_)))
                           _%$e135563%_)
                          (_%lp135537%_
                           _%rest135560%_
                           _%constructor135540%_))))))
            (if (pair? _%rest135541135549%_)
                (let ((_%hd135546135575%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest135541135549%_)))
                      (_%tl135547135577%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest135541135549%_))))
                  (let* ((_%hd135580%_ _%hd135546135575%_)
                         (_%rest135582%_ _%tl135547135577%_))
                    (_%K135545135572%_ _%rest135582%_ _%hd135580%_)))
                (_%else135543135557%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list135527%_ _%direct-slots135528%_)
        (let ((__tmp139855
               (lambda (_%mixin135530%_)
                 (let ((__tmp139856
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%mixin135530%_
                           '9
                           '#f
                           '#f))))
                   (declare (not safe))
                   (agetq__% 'direct-slots: __tmp139856 '()))))
              (__tmp139854
               (lambda (_%slot-list135532%_ _%slot-table135533%_)
                 (values (list->vector _%slot-list135532%_)
                         _%slot-table135533%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%class-precedence-list135527%_
           _%direct-slots135528%_
           __tmp139855
           __tmp139854))))
    (define __make-class-type
      (lambda (_%id135354%_
               _%name135355%_
               _%direct-supers135356%_
               _%direct-slots135357%_
               _%properties135358%_
               _%constructor135359%_)
        (let* ((_%id135362%_ _%id135354%_)
               (_%name135370%_ _%name135355%_)
               (_%direct-supers135378%_ _%direct-supers135356%_)
               (_%direct-slots135386%_ _%direct-slots135357%_)
               (_%properties135394%_ _%properties135358%_)
               (_%constructor135402%_ _%constructor135359%_))
          (let ((_%$e135436%_
                 (let* ((_%pred135414%_
                         (lambda (_%$obj135411%_)
                           (not (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%$obj135411%_
                                   'class)))))
                        (_%lst135417%_ _%direct-supers135378%_)
                        (_%pred135422%_ _%pred135414%_))
                   (declare (not safe))
                   (__find _%pred135422%_ _%lst135417%_))))
            (if _%$e135436%_
                ((lambda (_%g135438135440%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g135438135440%_))
                 _%$e135436%_)
                (let ((_%$e135463%_
                       (let* ((_%pred135443%_ __class-type-final?)
                              (_%lst135446%_ _%direct-supers135378%_)
                              (_%pred135451%_ _%pred135443%_))
                         (declare (not safe))
                         (__find _%pred135451%_ _%lst135446%_))))
                  (if _%$e135463%_
                      ((lambda (_%g135465135467%_)
                         (error '"Cannot extend final class"
                                _%g135465135467%_))
                       _%$e135463%_)
                      '#!void))))
          (let ((_g139857_ (compute-precedence-list _%direct-supers135378%_)))
            (begin
              (let ((_g139858_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g139857_)
                           (##values-length _g139857_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g139858_ 2)))
                    (error "Context expects 2 values" _g139858_)))
              (let ((_%precedence-list135470%_
                     (let () (declare (not safe)) (##values-ref _g139857_ 0)))
                    (_%struct-super135471%_
                     (let () (declare (not safe)) (##values-ref _g139857_ 1))))
                (let ((_g139859_
                       (compute-class-slots
                        _%precedence-list135470%_
                        _%direct-slots135386%_)))
                  (begin
                    (let ((_g139860_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g139859_)
                                 (##values-length _g139859_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g139860_ 2)))
                          (error "Context expects 2 values" _g139860_)))
                    (let ((_%slot-vector135473%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g139859_ 0)))
                          (_%slot-table135474%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g139859_ 1))))
                      (let* ((_%properties135476%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots135386%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers135378%_)
                                          _%properties135394%_)))
                             (_%constructor*135481%_
                              (let ((_%$e135478%_ _%constructor135402%_))
                                (if _%$e135478%_
                                    _%$e135478%_
                                    (find-super-constructor
                                     _%direct-supers135378%_))))
                             (_%precedence-list135524%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties135476%_))
                                      (memq object::t
                                            _%precedence-list135470%_))
                                  _%precedence-list135470%_
                                  (let _%loop135486%_ ((_%tail135488%_
                                                        _%precedence-list135470%_)
                                                       (_%head135489%_ '()))
                                    (let* ((_%tail135490135498%_
                                            _%tail135488%_)
                                           (_%else135492135506%_
                                            (lambda ()
                                              (let ((__tmp139861
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp139861
                                                 _%head135489%_))))
                                           (_%K135494135512%_
                                            (lambda (_%rest135509%_
                                                     _%hd135510%_)
                                              (if (eq? _%hd135510%_ t::t)
                                                  (let ((__tmp139862
                                                         (cons object::t
                                                               _%tail135488%_)))
                                                    (declare (not safe))
                                                    (foldl__0
                                                     cons
                                                     __tmp139862
                                                     _%head135489%_))
                                                  (_%loop135486%_
                                                   _%rest135509%_
                                                   (cons _%hd135510%_
                                                         _%head135489%_))))))
                                      (if (pair? _%tail135490135498%_)
                                          (let ((_%hd135495135515%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail135490135498%_)))
                                                (_%tl135496135517%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail135490135498%_))))
                                            (let* ((_%hd135520%_
                                                    _%hd135495135515%_)
                                                   (_%rest135522%_
                                                    _%tl135496135517%_))
                                              (_%K135494135512%_
                                               _%rest135522%_
                                               _%hd135520%_)))
                                          (_%else135492135506%_)))))))
                        (make-class-type-descriptor
                         _%id135362%_
                         _%name135370%_
                         _%struct-super135471%_
                         _%precedence-list135524%_
                         _%slot-vector135473%_
                         _%properties135476%_
                         _%constructor*135481%_
                         _%slot-table135474%_
                         '#f)))))))))))
    (define make-class-type
      (lambda (_%id124853%_
               _%name124854%_
               _%direct-supers124855%_
               _%direct-slots124856%_
               _%properties124857%_
               _%constructor124858%_)
        (if (symbol? _%id124853%_)
            (let ((_%id124862%_ _%id124853%_))
              (if (symbol? _%name124854%_)
                  (let ((_%name124872%_ _%name124854%_))
                    (if (list? _%direct-supers124855%_)
                        (let ((_%direct-supers124882%_
                               _%direct-supers124855%_))
                          (if (list? _%direct-slots124856%_)
                              (let ((_%direct-slots124892%_
                                     _%direct-slots124856%_))
                                (if (list? _%properties124857%_)
                                    (let ((_%properties124902%_
                                           _%properties124857%_))
                                      (if ((lambda (_%$obj124911%_)
                                             (or (not _%$obj124911%_)
                                                 (symbol? _%$obj124911%_)))
                                           _%constructor124858%_)
                                          (let ((_%constructor124918%_
                                                 _%constructor124858%_))
                                            (__make-class-type
                                             _%id124862%_
                                             _%name124872%_
                                             _%direct-supers124882%_
                                             _%direct-slots124892%_
                                             _%properties124902%_
                                             _%constructor124918%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@544.24-544.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor124858%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@543.24-543.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties124857%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@542.24-542.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots124856%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@541.24-541.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers124855%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@540.24-540.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name124854%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@539.24-539.26"
               'contract:
               'symbol?
               'value:
               _%id124853%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass135342%_)
        (let ((_%klass135345%_ _%klass135342%_))
          (cons _%klass135345%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass135345%_ '6 '#f '#f))))))
    (define class-precedence-list
      (lambda (_%klass125048%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125048%_ 'class))
            (let ((_%klass125052%_ _%klass125048%_))
              (__class-precedence-list _%klass125052%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@577.30-577.35"
               'contract:
               'class-type?
               'value:
               _%klass125048%_)
              '#!void))))
    (define compute-precedence-list
      (lambda (_%direct-supers135339%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers135339%_))))
    (define __make-class-predicate
      (lambda (_%klass135255%_)
        (let* ((_%klass135258%_ _%klass135255%_)
               (_%tid135267%_
                (let () (declare (not safe)) (##type-id _%klass135258%_))))
          (if (let* ((_%type135269%_ _%klass135258%_)
                     (_%type135274%_ _%type135269%_))
                (__class-type-final? _%type135274%_))
              (lambda (_%g135288135290%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g135288135290%_
                   _%tid135267%_)))
              (if (let* ((_%klass135293%_ _%klass135258%_)
                         (_%klass135298%_ _%klass135293%_))
                    (__class-type-struct? _%klass135298%_))
                  (lambda (_%g135308135310%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%g135308135310%_
                       _%tid135267%_)))
                  (lambda (_%g135313135315%_)
                    (let* ((_%klass135318%_ _%klass135258%_)
                           (_%obj135321%_ _%g135313135315%_)
                           (_%klass135326%_ _%klass135318%_))
                      (__class-instance? _%klass135326%_ _%obj135321%_))))))))
    (define make-class-predicate
      (lambda (_%klass125182%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125182%_ 'class))
            (let ((_%klass125186%_ _%klass125182%_))
              (__make-class-predicate _%klass125186%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.29-589.34"
               'contract:
               'class-type?
               'value:
               _%klass125182%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass135189%_ _%slot135190%_)
        (let* ((_%klass135193%_ _%klass135189%_)
               (_%slot135201%_ _%slot135190%_)
               (_%field135210%_
                (let ((__tmp139863
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass135193%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp139863 _%slot135201%_ '#f))))
          (if (not _%field135210%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass135193%_
                       'slot:
                       _%slot135201%_)
                '#!void)
              (if (let* ((_%type135214%_ _%klass135193%_)
                         (_%type135219%_ _%type135214%_))
                    (__class-type-final? _%type135219%_))
                  (make-final-slot-accessor
                   _%klass135193%_
                   _%slot135201%_
                   _%field135210%_)
                  (if (let* ((_%klass135234%_ _%klass135193%_)
                             (_%klass135239%_ _%klass135234%_))
                        (__class-type-struct? _%klass135239%_))
                      (make-struct-slot-accessor
                       _%klass135193%_
                       _%slot135201%_
                       _%field135210%_)
                      (if (let ((_%strukt135250%_
                                 (base-struct/1 _%klass135193%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt135250%_
                                    'class))
                                 (let ((__tmp139864
                                        (let ((__tmp139865
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt135250%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp139865))))
                                   (declare (not safe))
                                   (##fx< _%field135210%_ __tmp139864))))
                          (make-struct-subclass-slot-accessor
                           _%klass135193%_
                           _%slot135201%_
                           _%field135210%_)
                          (make-class-cached-slot-accessor
                           _%klass135193%_
                           _%slot135201%_
                           _%field135210%_))))))))
    (define make-class-slot-accessor
      (lambda (_%klass125469%_ _%slot125470%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125469%_ 'class))
            (let ((_%klass125474%_ _%klass125469%_))
              (if (symbol? _%slot125470%_)
                  (let ((_%slot125484%_ _%slot125470%_))
                    (__make-class-slot-accessor
                     _%klass125474%_
                     _%slot125484%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@620.50-620.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot125470%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@620.33-620.38"
               'contract:
               'class-type?
               'value:
               _%klass125469%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass135123%_ _%slot135124%_)
        (let* ((_%klass135127%_ _%klass135123%_)
               (_%slot135135%_ _%slot135124%_)
               (_%field135144%_
                (let ((__tmp139866
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass135127%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp139866 _%slot135135%_ '#f))))
          (if (not _%field135144%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass135127%_
                       'slot:
                       _%slot135135%_)
                '#!void)
              (if (let* ((_%type135148%_ _%klass135127%_)
                         (_%type135153%_ _%type135148%_))
                    (__class-type-final? _%type135153%_))
                  (make-final-slot-mutator
                   _%klass135127%_
                   _%slot135135%_
                   _%field135144%_)
                  (if (let* ((_%klass135168%_ _%klass135127%_)
                             (_%klass135173%_ _%klass135168%_))
                        (__class-type-struct? _%klass135173%_))
                      (make-struct-slot-mutator
                       _%klass135127%_
                       _%slot135135%_
                       _%field135144%_)
                      (if (let ((_%strukt135184%_
                                 (base-struct/1 _%klass135127%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt135184%_
                                    'class))
                                 (let ((__tmp139867
                                        (let ((__tmp139868
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt135184%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp139868))))
                                   (declare (not safe))
                                   (##fx< _%field135144%_ __tmp139867))))
                          (make-struct-subclass-slot-mutator
                           _%klass135127%_
                           _%slot135135%_
                           _%field135144%_)
                          (make-class-cached-slot-mutator
                           _%klass135127%_
                           _%slot135135%_
                           _%field135144%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass125614%_ _%slot125615%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125614%_ 'class))
            (let ((_%klass125619%_ _%klass125614%_))
              (if (symbol? _%slot125615%_)
                  (let ((_%slot125629%_ _%slot125615%_))
                    (__make-class-slot-mutator _%klass125619%_ _%slot125629%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@628.49-628.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot125615%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@628.32-628.37"
               'contract:
               'class-type?
               'value:
               _%klass125614%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass135057%_ _%slot135058%_)
        (let* ((_%klass135061%_ _%klass135057%_)
               (_%slot135069%_ _%slot135058%_)
               (_%field135078%_
                (let ((__tmp139869
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass135061%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp139869 _%slot135069%_ '#f))))
          (if (not _%field135078%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass135061%_
                       'slot:
                       _%slot135069%_)
                '#!void)
              (if (let* ((_%type135082%_ _%klass135061%_)
                         (_%type135087%_ _%type135082%_))
                    (__class-type-final? _%type135087%_))
                  (make-struct-slot-unchecked-accessor
                   _%klass135061%_
                   _%slot135069%_
                   _%field135078%_)
                  (if (let* ((_%klass135102%_ _%klass135061%_)
                             (_%klass135107%_ _%klass135102%_))
                        (__class-type-struct? _%klass135107%_))
                      (make-struct-slot-unchecked-accessor
                       _%klass135061%_
                       _%slot135069%_
                       _%field135078%_)
                      (if (let ((_%strukt135118%_
                                 (base-struct/1 _%klass135061%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt135118%_
                                    'class))
                                 (let ((__tmp139870
                                        (let ((__tmp139871
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt135118%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp139871))))
                                   (declare (not safe))
                                   (##fx< _%field135078%_ __tmp139870))))
                          (make-struct-slot-unchecked-accessor
                           _%klass135061%_
                           _%slot135069%_
                           _%field135078%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass135061%_
                           _%slot135069%_
                           _%field135078%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass125759%_ _%slot125760%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125759%_ 'class))
            (let ((_%klass125764%_ _%klass125759%_))
              (if (symbol? _%slot125760%_)
                  (let ((_%slot125774%_ _%slot125760%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass125764%_
                     _%slot125774%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@636.60-636.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot125760%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@636.43-636.48"
               'contract:
               'class-type?
               'value:
               _%klass125759%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass134991%_ _%slot134992%_)
        (let* ((_%klass134995%_ _%klass134991%_)
               (_%slot135003%_ _%slot134992%_)
               (_%field135012%_
                (let ((__tmp139872
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass134995%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp139872 _%slot135003%_ '#f))))
          (if (not _%field135012%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass134995%_
                       'slot:
                       _%slot135003%_)
                '#!void)
              (if (let* ((_%type135016%_ _%klass134995%_)
                         (_%type135021%_ _%type135016%_))
                    (__class-type-final? _%type135021%_))
                  (make-struct-slot-unchecked-mutator
                   _%klass134995%_
                   _%slot135003%_
                   _%field135012%_)
                  (if (let* ((_%klass135036%_ _%klass134995%_)
                             (_%klass135041%_ _%klass135036%_))
                        (__class-type-struct? _%klass135041%_))
                      (make-struct-slot-unchecked-mutator
                       _%klass134995%_
                       _%slot135003%_
                       _%field135012%_)
                      (if (let ((_%strukt135052%_
                                 (base-struct/1 _%klass134995%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt135052%_
                                    'class))
                                 (let ((__tmp139873
                                        (let ((__tmp139874
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt135052%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp139874))))
                                   (declare (not safe))
                                   (##fx< _%field135012%_ __tmp139873))))
                          (make-struct-slot-unchecked-mutator
                           _%klass134995%_
                           _%slot135003%_
                           _%field135012%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass134995%_
                           _%slot135003%_
                           _%field135012%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass125904%_ _%slot125905%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125904%_ 'class))
            (let ((_%klass125909%_ _%klass125904%_))
              (if (symbol? _%slot125905%_)
                  (let ((_%slot125919%_ _%slot125905%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass125909%_
                     _%slot125919%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@644.59-644.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot125905%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@644.42-644.47"
               'contract:
               'class-type?
               'value:
               _%klass125904%_)
              '#!void))))
    (define not-an-instance__%
      (lambda (_%object134975%_ _%class134976%_ _%slot134977%_)
        (apply error
               '"not an instance"
               'object:
               _%object134975%_
               'class:
               _%class134976%_
               (if _%slot134977%_
                   (cons 'slot: (cons _%slot134977%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object134982%_ _%class134983%_)
        (let ((_%slot134985%_ '#f))
          (not-an-instance__%
           _%object134982%_
           _%class134983%_
           _%slot134985%_))))
    (define not-an-instance
      (lambda _g139875_
        (let ((_g139876_ (let () (declare (not safe)) (##length _g139875_))))
          (cond ((let () (declare (not safe)) (##fx= _g139876_ 2))
                 (apply not-an-instance__0 _g139875_))
                ((let () (declare (not safe)) (##fx= _g139876_ 3))
                 (apply not-an-instance__% _g139875_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g139875_))))))
    (define make-final-slot-accessor
      (lambda (_%klass134968%_ _%slot134969%_ _%field134970%_)
        (lambda (_%obj134972%_)
          (##direct-structure-ref
           _%obj134972%_
           _%field134970%_
           _%klass134968%_
           _%slot134969%_))))
    (define make-final-slot-mutator
      (lambda (_%klass134961%_ _%slot134962%_ _%field134963%_)
        (lambda (_%obj134965%_ _%val134966%_)
          (##direct-structure-set!
           _%obj134965%_
           _%val134966%_
           _%field134963%_
           _%klass134961%_
           _%slot134962%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass134955%_ _%slot134956%_ _%field134957%_)
        (lambda (_%obj134959%_)
          (##structure-ref
           _%obj134959%_
           _%field134957%_
           _%klass134955%_
           _%slot134956%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass134948%_ _%slot134949%_ _%field134950%_)
        (lambda (_%obj134952%_ _%val134953%_)
          (##structure-set!
           _%obj134952%_
           _%val134953%_
           _%field134950%_
           _%klass134948%_
           _%slot134949%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass134942%_ _%slot134943%_ _%field134944%_)
        (lambda (_%obj134946%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj134946%_
             _%field134944%_
             _%klass134942%_
             _%slot134943%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass134935%_ _%slot134936%_ _%field134937%_)
        (lambda (_%obj134939%_ _%val134940%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj134939%_
             _%val134940%_
             _%field134937%_
             _%klass134935%_
             _%slot134936%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass134908%_ _%slot134909%_ _%field134910%_)
        (lambda (_%obj134912%_)
          (if (let* ((_%klass134914%_ _%klass134908%_)
                     (_%obj134917%_ _%obj134912%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134914%_ 'class))
                    (let ((_%klass134922%_ _%klass134914%_))
                      (__class-instance? _%klass134922%_ _%obj134917%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134914%_)
                      '#!void)))
              (unchecked-slot-ref _%obj134912%_ _%field134910%_)
              (not-an-instance__%
               _%obj134912%_
               _%klass134908%_
               _%slot134909%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass134880%_ _%slot134881%_ _%field134882%_)
        (lambda (_%obj134884%_ _%val134885%_)
          (if (let* ((_%klass134887%_ _%klass134880%_)
                     (_%obj134890%_ _%obj134884%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134887%_ 'class))
                    (let ((_%klass134895%_ _%klass134887%_))
                      (__class-instance? _%klass134895%_ _%obj134890%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134887%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj134884%_
               _%field134882%_
               _%val134885%_)
              (not-an-instance__%
               _%obj134884%_
               _%klass134880%_
               _%slot134881%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass134831%_ _%slot134832%_ _%field134833%_)
        (lambda (_%obj134835%_)
          (if (let* ((_%klass134837%_ _%klass134831%_)
                     (_%obj134840%_ _%obj134835%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134837%_ 'class))
                    (let ((_%klass134845%_ _%klass134837%_))
                      (__direct-instance? _%klass134845%_ _%obj134840%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134837%_)
                      '#!void)))
              (unchecked-field-ref _%obj134835%_ _%field134833%_)
              (if (let* ((_%klass134859%_ _%klass134831%_)
                         (_%obj134862%_ _%obj134835%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass134859%_ 'class))
                        (let ((_%klass134867%_ _%klass134859%_))
                          (__class-instance? _%klass134867%_ _%obj134862%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass134859%_)
                          '#!void)))
                  (unchecked-slot-ref _%obj134835%_ _%slot134832%_)
                  (not-an-instance__%
                   _%obj134835%_
                   _%klass134831%_
                   _%slot134832%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass134781%_ _%slot134782%_ _%field134783%_)
        (lambda (_%obj134785%_ _%val134786%_)
          (if (let* ((_%klass134788%_ _%klass134781%_)
                     (_%obj134791%_ _%obj134785%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134788%_ 'class))
                    (let ((_%klass134796%_ _%klass134788%_))
                      (__direct-instance? _%klass134796%_ _%obj134791%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134788%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj134785%_
               _%field134783%_
               _%val134786%_)
              (if (let* ((_%klass134810%_ _%klass134781%_)
                         (_%obj134813%_ _%obj134785%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass134810%_ 'class))
                        (let ((_%klass134818%_ _%klass134810%_))
                          (__class-instance? _%klass134818%_ _%obj134813%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass134810%_)
                          '#!void)))
                  (unchecked-slot-set!
                   _%obj134785%_
                   _%slot134782%_
                   _%val134786%_)
                  (not-an-instance__%
                   _%obj134785%_
                   _%klass134781%_
                   _%slot134782%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass134754%_ _%slot134755%_ _%field134756%_)
        (lambda (_%obj134758%_)
          (if (let* ((_%klass134760%_ _%klass134754%_)
                     (_%obj134763%_ _%obj134758%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134760%_ 'class))
                    (let ((_%klass134768%_ _%klass134760%_))
                      (__direct-instance? _%klass134768%_ _%obj134763%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134760%_)
                      '#!void)))
              (unchecked-field-ref _%obj134758%_ _%field134756%_)
              (unchecked-slot-ref _%obj134758%_ _%slot134755%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass134726%_ _%slot134727%_ _%field134728%_)
        (lambda (_%obj134730%_ _%val134731%_)
          (if (let* ((_%klass134733%_ _%klass134726%_)
                     (_%obj134736%_ _%obj134730%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134733%_ 'class))
                    (let ((_%klass134741%_ _%klass134733%_))
                      (__direct-instance? _%klass134741%_ _%obj134736%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134733%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj134730%_
               _%field134728%_
               _%val134731%_)
              (unchecked-slot-set!
               _%obj134730%_
               _%slot134727%_
               _%val134731%_)))))
    (define __class-slot-offset
      (lambda (_%klass134705%_ _%slot134706%_)
        (let* ((_%klass134709%_ _%klass134705%_)
               (_%slot134717%_ _%slot134706%_)
               (__tmp139877
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass134709%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp139877 _%slot134717%_ '#f))))
    (define class-slot-offset
      (lambda (_%klass126049%_ _%slot126050%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126049%_ 'class))
            (let ((_%klass126054%_ _%klass126049%_))
              (if (let () (declare (not safe)) (symbolic? _%slot126050%_))
                  (let ((_%slot126064%_ _%slot126050%_))
                    (__class-slot-offset _%klass126054%_ _%slot126064%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@706.43-706.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot126050%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@706.26-706.31"
               'contract:
               'class-type?
               'value:
               _%klass126049%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass134630%_ _%obj134631%_ _%slot134632%_)
        (let* ((_%klass134635%_ _%klass134630%_)
               (_%slot134643%_ _%slot134632%_))
          (if (let* ((_%klass134652%_ _%klass134635%_)
                     (_%obj134655%_ _%obj134631%_)
                     (_%klass134660%_ _%klass134652%_))
                (__class-instance? _%klass134660%_ _%obj134655%_))
              (let ((_%off134703%_
                     (let* ((_%klass134674%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj134631%_)))
                            (_%slot134677%_ _%slot134643%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass134674%_ 'class))
                           (let ((_%klass134682%_ _%klass134674%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot134677%_))
                                 (let ((_%slot134693%_ _%slot134677%_))
                                   (__class-slot-offset
                                    _%klass134682%_
                                    _%slot134693%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot134677%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass134674%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj134631%_
                 _%off134703%_
                 _%klass134635%_
                 _%slot134643%_))
              (not-an-instance__0 _%obj134631%_ _%klass134635%_)))))
    (define class-slot-ref
      (lambda (_%klass126194%_ _%obj126195%_ _%slot126196%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126194%_ 'class))
            (let ((_%klass126200%_ _%klass126194%_))
              (if (let () (declare (not safe)) (symbolic? _%slot126196%_))
                  (let ((_%slot126210%_ _%slot126196%_))
                    (__class-slot-ref
                     _%klass126200%_
                     _%obj126195%_
                     _%slot126210%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@709.44-709.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot126196%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@709.23-709.28"
               'contract:
               'class-type?
               'value:
               _%klass126194%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass134554%_ _%obj134555%_ _%slot134556%_ _%val134557%_)
        (let* ((_%klass134560%_ _%klass134554%_)
               (_%slot134568%_ _%slot134556%_))
          (if (let* ((_%klass134577%_ _%klass134560%_)
                     (_%obj134580%_ _%obj134555%_)
                     (_%klass134585%_ _%klass134577%_))
                (__class-instance? _%klass134585%_ _%obj134580%_))
              (let ((_%off134628%_
                     (let* ((_%klass134599%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj134555%_)))
                            (_%slot134602%_ _%slot134568%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass134599%_ 'class))
                           (let ((_%klass134607%_ _%klass134599%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot134602%_))
                                 (let ((_%slot134618%_ _%slot134602%_))
                                   (__class-slot-offset
                                    _%klass134607%_
                                    _%slot134618%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot134602%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass134599%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj134555%_
                 _%val134557%_
                 _%off134628%_
                 _%klass134560%_
                 _%slot134568%_))
              (not-an-instance__0 _%obj134555%_ _%klass134560%_)))))
    (define class-slot-set!
      (lambda (_%klass126340%_ _%obj126341%_ _%slot126342%_ _%val126343%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126340%_ 'class))
            (let ((_%klass126347%_ _%klass126340%_))
              (if (let () (declare (not safe)) (symbolic? _%slot126342%_))
                  (let ((_%slot126357%_ _%slot126342%_))
                    (__class-slot-set!
                     _%klass126347%_
                     _%obj126341%_
                     _%slot126357%_
                     _%val126343%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@715.45-715.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot126342%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@715.24-715.29"
               'contract:
               'class-type?
               'value:
               _%klass126340%_)
              '#!void))))
    (define unchecked-field-ref
      (lambda (_%obj134551%_ _%off134552%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj134551%_ _%off134552%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj134547%_ _%off134548%_ _%val134549%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj134547%_
           _%val134549%_
           _%off134548%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj134544%_ _%slot134545%_)
        (unchecked-field-ref
         _%obj134544%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj134544%_))
          _%slot134545%_))))
    (define unchecked-slot-set!
      (lambda (_%obj134540%_ _%slot134541%_ _%val134542%_)
        (unchecked-field-set!
         _%obj134540%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj134540%_))
          _%slot134541%_)
         _%val134542%_)))
    (define __slot-error
      (lambda (_%obj134537%_ _%slot134538%_)
        (error '"Cannot find slot"
               'object:
               _%obj134537%_
               'slot:
               _%slot134538%_)))
    (define __slot-ref__%
      (lambda (_%obj134461%_ _%slot134462%_ _%E134463%_)
        (let* ((_%slot134466%_ _%slot134462%_)
               (_%E134474%_ _%E134463%_)
               (_%klass134483%_ (class-of _%obj134461%_))
               (_%$e134519%_
                (let* ((_%klass134486%_ _%klass134483%_)
                       (_%slot134489%_ _%slot134466%_)
                       (_%klass134494%_ _%klass134486%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot134489%_))
                      (let ((_%slot134509%_ _%slot134489%_))
                        (__class-slot-offset _%klass134494%_ _%slot134509%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot134489%_)
                        '#!void)))))
          (if _%$e134519%_
              ((lambda (_%off134522%_)
                 (unchecked-field-ref _%obj134461%_ _%off134522%_))
               _%$e134519%_)
              (let ()
                (declare (not safe))
                (_%E134474%_ _%obj134461%_ _%slot134466%_))))))
    (define __slot-ref__0
      (lambda (_%obj134528%_ _%slot134529%_)
        (let ((_%E134531%_ __slot-error))
          (__slot-ref__% _%obj134528%_ _%slot134529%_ _%E134531%_))))
    (define __slot-ref
      (lambda _g139878_
        (let ((_g139879_ (let () (declare (not safe)) (##length _g139878_))))
          (cond ((let () (declare (not safe)) (##fx= _g139879_ 2))
                 (apply __slot-ref__0 _g139878_))
                ((let () (declare (not safe)) (##fx= _g139879_ 3))
                 (apply __slot-ref__% _g139878_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g139878_))))))
    (define slot-ref__%
      (lambda (_%obj126605%_ _%slot126606%_ _%E126607%_)
        (if (symbol? _%slot126606%_)
            (let ((_%slot126611%_ _%slot126606%_))
              (if (procedure? _%E126607%_)
                  (let ((_%E126621%_ _%E126607%_))
                    (__slot-ref__% _%obj126605%_ _%slot126611%_ _%E126621%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@741.38-741.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E126607%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@741.21-741.25"
               'contract:
               'symbol?
               'value:
               _%slot126606%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj126634%_ _%slot126635%_)
        (let ((_%E126637%_ __slot-error))
          (slot-ref__% _%obj126634%_ _%slot126635%_ _%E126637%_))))
    (define slot-ref
      (lambda _g139880_
        (let ((_g139881_ (let () (declare (not safe)) (##length _g139880_))))
          (cond ((let () (declare (not safe)) (##fx= _g139881_ 2))
                 (apply slot-ref__0 _g139880_))
                ((let () (declare (not safe)) (##fx= _g139881_ 3))
                 (apply slot-ref__% _g139880_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g139880_))))))
    (define __slot-set!__%
      (lambda (_%obj134381%_ _%slot134382%_ _%val134383%_ _%E134384%_)
        (let* ((_%slot134387%_ _%slot134382%_)
               (_%E134395%_ _%E134384%_)
               (_%klass134404%_ (class-of _%obj134381%_))
               (_%$e134440%_
                (let* ((_%klass134407%_ _%klass134404%_)
                       (_%slot134410%_ _%slot134387%_)
                       (_%klass134415%_ _%klass134407%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot134410%_))
                      (let ((_%slot134430%_ _%slot134410%_))
                        (__class-slot-offset _%klass134415%_ _%slot134430%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot134410%_)
                        '#!void)))))
          (if _%$e134440%_
              ((lambda (_%off134443%_)
                 (unchecked-field-set!
                  _%obj134381%_
                  _%off134443%_
                  _%val134383%_))
               _%$e134440%_)
              (let ()
                (declare (not safe))
                (_%E134395%_ _%obj134381%_ _%slot134387%_))))))
    (define __slot-set!__0
      (lambda (_%obj134449%_ _%slot134450%_ _%val134451%_)
        (let ((_%E134453%_ __slot-error))
          (__slot-set!__%
           _%obj134449%_
           _%slot134450%_
           _%val134451%_
           _%E134453%_))))
    (define __slot-set!
      (lambda _g139882_
        (let ((_g139883_ (let () (declare (not safe)) (##length _g139882_))))
          (cond ((let () (declare (not safe)) (##fx= _g139883_ 3))
                 (apply __slot-set!__0 _g139882_))
                ((let () (declare (not safe)) (##fx= _g139883_ 4))
                 (apply __slot-set!__% _g139882_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g139882_))))))
    (define slot-set!__%
      (lambda (_%obj126764%_ _%slot126765%_ _%val126766%_ _%E126767%_)
        (if (symbol? _%slot126765%_)
            (let ((_%slot126771%_ _%slot126765%_))
              (if (procedure? _%E126767%_)
                  (let ((_%E126781%_ _%E126767%_))
                    (__slot-set!__%
                     _%obj126764%_
                     _%slot126771%_
                     _%val126766%_
                     _%E126781%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@743.43-743.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E126767%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@743.22-743.26"
               'contract:
               'symbol?
               'value:
               _%slot126765%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj126794%_ _%slot126795%_ _%val126796%_)
        (let ((_%E126798%_ __slot-error))
          (slot-set!__%
           _%obj126794%_
           _%slot126795%_
           _%val126796%_
           _%E126798%_))))
    (define slot-set!
      (lambda _g139884_
        (let ((_g139885_ (let () (declare (not safe)) (##length _g139884_))))
          (cond ((let () (declare (not safe)) (##fx= _g139885_ 3))
                 (apply slot-set!__0 _g139884_))
                ((let () (declare (not safe)) (##fx= _g139885_ 4))
                 (apply slot-set!__% _g139884_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g139884_))))))
    (define __subclass?
      (lambda (_%maybe-sub-class134352%_ _%maybe-super-class134353%_)
        (let* ((_%maybe-sub-class134356%_ _%maybe-sub-class134352%_)
               (_%maybe-super-class134364%_ _%maybe-super-class134353%_)
               (_%maybe-super-class-id134373%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class134364%_)))
               (_%$e134375%_
                (eq? _%maybe-super-class-id134373%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class134356%_)))))
          (if _%$e134375%_
              _%$e134375%_
              (let ((__tmp139887
                     (lambda (_%super-class134378%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class134378%_))
                            _%maybe-super-class-id134373%_)))
                    (__tmp139886
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class134356%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (ormap__0 __tmp139887 __tmp139886))))))
    (define subclass?
      (lambda (_%maybe-sub-class126925%_ _%maybe-super-class126926%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class126925%_ 'class))
            (let ((_%maybe-sub-class126930%_ _%maybe-sub-class126925%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class126926%_
                     'class))
                  (let ((_%maybe-super-class126940%_
                         _%maybe-super-class126926%_))
                    (__subclass?
                     _%maybe-sub-class126930%_
                     _%maybe-super-class126940%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@749.45-749.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class126926%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@749.18-749.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class126925%_)
              '#!void))))
    (define object?
      (lambda (_%o134349%_)
        (if (let () (declare (not safe)) (##structure? _%o134349%_))
            (let ((__tmp139888
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o134349%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp139888 'class))
            '#f)))
    (define __direct-instance?
      (lambda (_%klass134336%_ _%obj134337%_)
        (let* ((_%klass134340%_ _%klass134336%_)
               (__tmp139889
                (let () (declare (not safe)) (##type-id _%klass134340%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj134337%_ __tmp139889))))
    (define direct-instance?
      (lambda (_%klass127070%_ _%obj127071%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127070%_ 'class))
            (let ((_%klass127075%_ _%klass127070%_))
              (__direct-instance? _%klass127075%_ _%obj127071%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@763.25-763.30"
               'contract:
               'class-type?
               'value:
               _%klass127070%_)
              '#!void))))
    (define immediate-instance-of?
      (lambda (_%klass134332%_ _%obj134333%_)
        (if (let () (declare (not safe)) (##structure? _%obj134333%_))
            (eq? _%klass134332%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj134333%_)))
            '#f)))
    (define __struct-instance?
      (lambda (_%klass134319%_ _%obj134320%_)
        (let* ((_%klass134323%_ _%klass134319%_)
               (__tmp139890
                (let () (declare (not safe)) (##type-id _%klass134323%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj134320%_ __tmp139890))))
    (define struct-instance?
      (lambda (_%klass127205%_ _%obj127206%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127205%_ 'class))
            (let ((_%klass127210%_ _%klass127205%_))
              (__struct-instance? _%klass127210%_ _%obj127206%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@792.25-792.30"
               'contract:
               'class-type?
               'value:
               _%klass127205%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass134271%_ _%obj134272%_)
        (let* ((_%klass134275%_ _%klass134271%_)
               (_%type134284%_ (class-of _%obj134272%_))
               (_%maybe-sub-class134286%_ _%type134284%_)
               (_%maybe-super-class134289%_ _%klass134275%_)
               (_%maybe-sub-class134294%_ _%maybe-sub-class134286%_)
               (_%maybe-super-class134309%_ _%maybe-super-class134289%_))
          (__subclass?
           _%maybe-sub-class134294%_
           _%maybe-super-class134309%_))))
    (define class-instance?
      (lambda (_%klass127340%_ _%obj127341%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127340%_ 'class))
            (let ((_%klass127345%_ _%klass127340%_))
              (__class-instance? _%klass127345%_ _%obj127341%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@797.24-797.29"
               'contract:
               'class-type?
               'value:
               _%klass127340%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass134230%_ _%k134231%_)
        (let* ((_%klass134234%_ _%klass134230%_) (_%k134242%_ _%k134231%_))
          (if (let* ((_%klass134251%_ _%klass134234%_)
                     (_%klass134256%_ _%klass134251%_))
                (__class-type-system? _%klass134256%_))
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass134234%_)
                '#!void)
              (let ((_%obj134269%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass134234%_ _%k134242%_))))
                (__object-fill! _%obj134269%_ '#f))))))
    (define make-object
      (lambda (_%klass127475%_ _%k127476%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127475%_ 'class))
            (let ((_%klass127480%_ _%klass127475%_))
              (if (fixnum? _%k127476%_)
                  (let ((_%k127490%_ _%k127476%_))
                    (__make-object _%klass127480%_ _%k127490%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@802.37-802.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k127476%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@802.20-802.25"
               'contract:
               'class-type?
               'value:
               _%klass127475%_)
              '#!void))))
    (define __object-class
      (lambda (_%obj134218%_)
        (let ((_%obj134221%_ _%obj134218%_))
          (declare (not safe))
          (##structure-type _%obj134221%_))))
    (define object-class
      (lambda (_%obj127620%_)
        (if (object? _%obj127620%_)
            (let ((_%obj127624%_ _%obj127620%_))
              (__object-class _%obj127624%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@822.21-822.24"
               'contract:
               'object?
               'value:
               _%obj127620%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj134200%_ _%fill134201%_)
        (let ((_%obj134204%_ _%obj134200%_))
          (let _%loop134213%_ ((_%i134215%_
                                (let ((__tmp139891
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj134204%_))))
                                  (declare (not safe))
                                  (##fx- __tmp139891 '1))))
            (if (let () (declare (not safe)) (##fx> _%i134215%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj134204%_
                     _%fill134201%_
                     _%i134215%_
                     '#f
                     '#f))
                  (_%loop134213%_
                   (let () (declare (not safe)) (##fx- _%i134215%_ '1))))
                _%obj134204%_)))))
    (define object-fill!
      (lambda (_%obj127754%_ _%fill127755%_)
        (if (object? _%obj127754%_)
            (let ((_%obj127759%_ _%obj127754%_))
              (__object-fill! _%obj127759%_ _%fill127755%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@827.21-827.24"
               'contract:
               'object?
               'value:
               _%obj127754%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass134156%_)
        (let* ((_%klass134159%_ _%klass134156%_)
               (_%klass134168%_ _%klass134159%_)
               (_%k134171%_
                (let ((__tmp139892
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass134159%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp139892)))
               (_%klass134176%_ _%klass134168%_)
               (_%k134190%_ _%k134171%_))
          (__make-object _%klass134176%_ _%k134190%_))))
    (define new-instance
      (lambda (_%klass127889%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127889%_ 'class))
            (let ((_%klass127893%_ _%klass127889%_))
              (__new-instance _%klass127893%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@838.21-838.26"
               'contract:
               'class-type?
               'value:
               _%klass127889%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass134015%_ . _%args134016%_)
        (let* ((_%klass134019%_ _%klass134015%_)
               (_%$e134028%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass134019%_ '10 '#f '#f))))
          (if _%$e134028%_
              ((lambda (_%kons-id134031%_)
                 (let ((_%obj134053%_
                        (let* ((_%klass134033%_ _%klass134019%_)
                               (_%klass134038%_ _%klass134033%_))
                          (__new-instance _%klass134038%_))))
                   (___constructor-init!
                    _%klass134019%_
                    _%kons-id134031%_
                    _%obj134053%_
                    _%args134016%_)
                   _%obj134053%_))
               _%$e134028%_)
              (if (let* ((_%klass134055%_ _%klass134019%_)
                         (_%klass134060%_ _%klass134055%_))
                    (__class-type-metaclass? _%klass134060%_))
                  (let ((_%obj134087%_
                         (let* ((_%klass134071%_ _%klass134019%_)
                                (_%klass134076%_ _%klass134071%_))
                           (__new-instance _%klass134076%_))))
                    (__metaclass-instance-init!
                     _%klass134019%_
                     _%obj134087%_
                     _%args134016%_)
                    _%obj134087%_)
                  (if (let* ((_%klass134089%_ _%klass134019%_)
                             (_%klass134094%_ _%klass134089%_))
                        (__class-type-struct? _%klass134094%_))
                      (if (let ((__tmp139894
                                 (let* ((_%klass134123%_ _%klass134019%_)
                                        (_%klass134128%_ _%klass134123%_))
                                   (__class-type-field-count _%klass134128%_)))
                                (__tmp139893
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args134016%_))))
                            (declare (not safe))
                            (##fx= __tmp139894 __tmp139893))
                          (apply ##structure _%klass134019%_ _%args134016%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass134019%_
                                   'slots:
                                   (let* ((_%klass134140%_ _%klass134019%_)
                                          (_%klass134145%_ _%klass134140%_))
                                     (__class-type-slot-list _%klass134145%_))
                                   'args:
                                   _%args134016%_)
                            '#!void))
                      (let ((_%obj134121%_
                             (let* ((_%klass134105%_ _%klass134019%_)
                                    (_%klass134110%_ _%klass134105%_))
                               (__new-instance _%klass134110%_))))
                        (___class-instance-init!
                         _%klass134019%_
                         _%obj134121%_
                         _%args134016%_)
                        _%obj134121%_)))))))
    (define make-instance
      (lambda (_%klass128023%_ . _%args128024%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass128023%_ 'class))
            (let ((_%klass128028%_ _%klass128023%_))
              (declare (not safe))
              (##apply __make-instance _%klass128028%_ _%args128024%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@841.22-841.27"
               'contract:
               'class-type?
               'value:
               _%klass128023%_)
              '#!void))))
    (define make-class-instance make-instance)
    (define __struct-instance-init!
      (lambda (_%obj134002%_ . _%args134003%_)
        (let ((_%obj134006%_ _%obj134002%_))
          (if (let ((__tmp139896
                     (let () (declare (not safe)) (##length _%args134003%_)))
                    (__tmp139895
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj134006%_))))
                (declare (not safe))
                (##fx< __tmp139896 __tmp139895))
              (___struct-instance-init! _%obj134006%_ _%args134003%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj134006%_
                     'args:
                     _%args134003%_))
          '#!void)))
    (define struct-instance-init!
      (lambda (_%obj128158%_ . _%args128159%_)
        (if (object? _%obj128158%_)
            (let ((_%obj128163%_ _%obj128158%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj128163%_ _%args128159%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@866.30-866.33"
               'contract:
               'object?
               'value:
               _%obj128158%_)
              '#!void))))
    (define ___struct-instance-init!
      (lambda (_%obj133961%_ _%args133962%_)
        (let _%lp133964%_ ((_%k133966%_ '1) (_%rest133967%_ _%args133962%_))
          (let* ((_%rest133968133976%_ _%rest133967%_)
                 (_%else133970133984%_ (lambda () _%obj133961%_))
                 (_%K133972133990%_
                  (lambda (_%rest133987%_ _%hd133988%_)
                    (unchecked-field-set!
                     _%obj133961%_
                     _%k133966%_
                     _%hd133988%_)
                    (_%lp133964%_
                     (let () (declare (not safe)) (##fx+ _%k133966%_ '1))
                     _%rest133987%_))))
            (if (pair? _%rest133968133976%_)
                (let ((_%hd133973133993%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest133968133976%_)))
                      (_%tl133974133995%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest133968133976%_))))
                  (let* ((_%hd133998%_ _%hd133973133993%_)
                         (_%rest134000%_ _%tl133974133995%_))
                    (_%K133972133990%_ _%rest134000%_ _%hd133998%_)))
                (_%else133970133984%_))))))
    (define __class-instance-init!
      (lambda (_%obj133948%_ . _%args133949%_)
        (let ((_%obj133952%_ _%obj133948%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj133952%_))
           _%obj133952%_
           _%args133949%_)
          '#!void)))
    (define class-instance-init!
      (lambda (_%obj128293%_ . _%args128294%_)
        (if (object? _%obj128293%_)
            (let ((_%obj128298%_ _%obj128293%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj128298%_ _%args128294%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@906.29-906.32"
               'contract:
               'object?
               'value:
               _%obj128293%_)
              '#!void))))
    (define ___class-instance-init!
      (lambda (_%klass133890%_ _%obj133891%_ _%args133892%_)
        (let _%lp133894%_ ((_%rest133896%_ _%args133892%_))
          (let* ((_%rest133897133907%_ _%rest133896%_)
                 (_%else133899133915%_
                  (lambda ()
                    (if (null? _%rest133896%_)
                        _%obj133891%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass133890%_
                               'rest:
                               _%rest133896%_))))
                 (_%K133901133929%_
                  (lambda (_%rest133918%_ _%val133919%_ _%key133920%_)
                    (if (keyword? _%key133920%_)
                        (let ((_%$e133923%_
                               (__class-slot-offset
                                _%klass133890%_
                                _%key133920%_)))
                          (if _%$e133923%_
                              ((lambda (_%off133926%_)
                                 (unchecked-field-set!
                                  _%obj133891%_
                                  _%off133926%_
                                  _%val133919%_)
                                 (_%lp133894%_ _%rest133918%_))
                               _%$e133923%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass133890%_
                                     'slot:
                                     _%key133920%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key133920%_)))))
            (if (pair? _%rest133897133907%_)
                (let ((_%hd133902133932%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest133897133907%_)))
                      (_%tl133903133934%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest133897133907%_))))
                  (let ((_%key133937%_ _%hd133902133932%_))
                    (if (pair? _%tl133903133934%_)
                        (let ((_%hd133904133939%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl133903133934%_)))
                              (_%tl133905133941%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl133903133934%_))))
                          (let* ((_%val133944%_ _%hd133904133939%_)
                                 (_%rest133946%_ _%tl133905133941%_))
                            (_%K133901133929%_
                             _%rest133946%_
                             _%val133944%_
                             _%key133937%_)))
                        (_%else133899133915%_))))
                (_%else133899133915%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass133886%_ _%obj133887%_ _%args133888%_)
        (apply call-method
               _%klass133886%_
               'instance-init!
               _%obj133887%_
               _%args133888%_)))
    (define __constructor-init!
      (lambda (_%klass133855%_
               _%kons-id133856%_
               _%obj133857%_
               .
               _%args133858%_)
        (let* ((_%klass133861%_ _%klass133855%_)
               (_%kons-id133869%_ _%kons-id133856%_)
               (_%obj133877%_ _%obj133857%_))
          (___constructor-init!
           _%klass133861%_
           _%kons-id133869%_
           _%obj133877%_
           _%args133858%_)
          '#!void)))
    (define constructor-init!
      (lambda (_%klass128428%_
               _%kons-id128429%_
               _%obj128430%_
               .
               _%args128431%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass128428%_ 'class))
            (let ((_%klass128435%_ _%klass128428%_))
              (if (symbol? _%kons-id128429%_)
                  (let ((_%kons-id128445%_ _%kons-id128429%_))
                    (if (object? _%obj128430%_)
                        (let ((_%obj128455%_ _%obj128430%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass128435%_
                                   _%kons-id128445%_
                                   _%obj128455%_
                                   _%args128431%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@930.63-930.66"
                           'contract:
                           'object?
                           'value:
                           _%obj128430%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@930.43-930.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id128429%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@930.26-930.31"
               'contract:
               'class-type?
               'value:
               _%klass128428%_)
              '#!void))))
    (define ___constructor-init!
      (lambda (_%klass133844%_ _%kons-id133845%_ _%obj133846%_ _%args133847%_)
        (let ((_%$e133849%_
               (__find-method
                _%klass133844%_
                _%obj133846%_
                _%kons-id133845%_)))
          (if _%$e133849%_
              ((lambda (_%kons133852%_)
                 (apply _%kons133852%_ _%obj133846%_ _%args133847%_)
                 _%obj133846%_)
               _%$e133849%_)
              (error '"missing constructor"
                     'class:
                     _%klass133844%_
                     'method:
                     _%kons-id133845%_)))))
    (define __struct-copy
      (lambda (_%struct133832%_)
        (let ((_%struct133835%_ _%struct133832%_))
          (declare (not safe))
          (##structure-copy _%struct133835%_))))
    (define struct-copy
      (lambda (_%struct128585%_)
        (if (object? _%struct128585%_)
            (let ((_%struct128589%_ _%struct128585%_))
              (__struct-copy _%struct128589%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@944.20-944.26"
               'contract:
               'object?
               'value:
               _%struct128585%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj133813%_)
        (let* ((_%obj133816%_ _%obj133813%_)
               (_%len133825%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj133816%_))))
          (let _%recur133827%_ ((_%i133829%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i133829%_ _%len133825%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj133816%_
                         _%i133829%_
                         '#f
                         '#f))
                      (_%recur133827%_
                       (let () (declare (not safe)) (##fx+ _%i133829%_ '1))))
                '())))))
    (define struct->list
      (lambda (_%obj128719%_)
        (if (object? _%obj128719%_)
            (let ((_%obj128723%_ _%obj128719%_))
              (__struct->list _%obj128723%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@947.21-947.24"
               'contract:
               'object?
               'value:
               _%obj128719%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj133765%_)
        (let* ((_%obj133768%_ _%obj133765%_)
               (_%klass133777%_
                (let () (declare (not safe)) (##structure-type _%obj133768%_)))
               (_%slot-vector133779%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass133777%_ '7 '#f '#f))))
          (let _%loop133781%_ ((_%index133783%_
                                (let ((__tmp139897
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector133779%_))))
                                  (declare (not safe))
                                  (##fx- __tmp139897 '1)))
                               (_%plist133784%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index133783%_ '1))
                (cons _%klass133777%_ _%plist133784%_)
                (let ((_%slot133787%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector133779%_
                          _%index133783%_))))
                  (_%loop133781%_
                   (let () (declare (not safe)) (##fx- _%index133783%_ '1))
                   (cons (let ((_%sym133789%_ _%slot133787%_))
                           (if (symbol? _%sym133789%_)
                               (let ((_%sym133794%_ _%sym133789%_))
                                 (declare (not safe))
                                 (__symbol->keyword _%sym133794%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  'symbol?
                                  'value:
                                  _%sym133789%_)
                                 '#!void)))
                         (cons (unchecked-field-ref
                                _%obj133768%_
                                _%index133783%_)
                               _%plist133784%_)))))))))
    (define class->list
      (lambda (_%obj128853%_)
        (if (object? _%obj128853%_)
            (let ((_%obj128857%_ _%obj128853%_)) (__class->list _%obj128857%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@955.20-955.23"
               'contract:
               'object?
               'value:
               _%obj128853%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj133715%_ _%id133716%_ . _%args133717%_)
        (let* ((_%id133720%_ _%id133716%_)
               (_%$e133751%_
                (let* ((_%obj133729%_ _%obj133715%_)
                       (_%id133732%_ _%id133720%_)
                       (_%id133737%_ _%id133732%_))
                  (__method-ref _%obj133729%_ _%id133737%_))))
          (if _%$e133751%_
              ((lambda (_%method133754%_)
                 (let ((_%method133756%_ _%method133754%_))
                   (apply _%method133756%_ _%obj133715%_ _%args133717%_)))
               _%$e133751%_)
              (error '"cannot find method"
                     'object:
                     _%obj133715%_
                     'method:
                     _%id133720%_)))))
    (define call-method
      (lambda (_%obj128987%_ _%id128988%_ . _%args128989%_)
        (if (symbol? _%id128988%_)
            (let ((_%id128993%_ _%id128988%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj128987%_
                       _%id128993%_
                       _%args128989%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@970.24-970.26"
               'contract:
               'symbol?
               'value:
               _%id128988%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj133666%_ _%id133667%_)
        (let* ((_%id133670%_ _%id133667%_)
               (_%klass133679%_ (class-of _%obj133666%_))
               (_%obj133682%_ _%obj133666%_)
               (_%id133685%_ _%id133670%_)
               (_%klass133690%_ _%klass133679%_)
               (_%id133705%_ _%id133685%_))
          (__find-method _%klass133690%_ _%obj133682%_ _%id133705%_))))
    (define method-ref
      (lambda (_%obj129123%_ _%id129124%_)
        (if (symbol? _%id129124%_)
            (let ((_%id129128%_ _%id129124%_))
              (__method-ref _%obj129123%_ _%id129128%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@997.23-997.25"
               'contract:
               'symbol?
               'value:
               _%id129124%_)
              '#!void))))
    (define checked-method-ref
      (lambda (_%obj133638%_ _%id133639%_)
        (let ((_%$e133663%_
               (let* ((_%obj133642%_ _%obj133638%_)
                      (_%id133645%_ _%id133639%_))
                 (if (symbol? _%id133645%_)
                     (let ((_%id133650%_ _%id133645%_))
                       (__method-ref _%obj133642%_ _%id133650%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id133645%_)
                       '#!void)))))
          (if _%$e133663%_
              _%$e133663%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj133638%_
                       'method:
                       _%id133639%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj133587%_ _%id133588%_)
        (let* ((_%id133591%_ _%id133588%_)
               (_%$e133622%_
                (let* ((_%obj133600%_ _%obj133587%_)
                       (_%id133603%_ _%id133591%_)
                       (_%id133608%_ _%id133603%_))
                  (__method-ref _%obj133600%_ _%id133608%_))))
          (if _%$e133622%_
              ((lambda (_%method133625%_)
                 (let ((_%method133627%_ _%method133625%_))
                   (lambda _%args133635%_
                     (apply _%method133627%_ _%obj133587%_ _%args133635%_))))
               _%$e133622%_)
              '#f))))
    (define bound-method-ref
      (lambda (_%obj129258%_ _%id129259%_)
        (if (symbol? _%id129259%_)
            (let ((_%id129263%_ _%id129259%_))
              (__bound-method-ref _%obj129258%_ _%id129263%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1005.29-1005.31"
               'contract:
               'symbol?
               'value:
               _%id129259%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj133570%_ _%id133571%_)
        (let* ((_%id133574%_ _%id133571%_)
               (_%method133583%_
                (checked-method-ref _%obj133570%_ _%id133574%_)))
          (lambda _%args133585%_
            (apply _%method133583%_ _%obj133570%_ _%args133585%_)))))
    (define checked-bound-method-ref
      (lambda (_%obj129393%_ _%id129394%_)
        (if (symbol? _%id129394%_)
            (let ((_%id129398%_ _%id129394%_))
              (__checked-bound-method-ref _%obj129393%_ _%id129398%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1014.37-1014.39"
               'contract:
               'symbol?
               'value:
               _%id129394%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass133439%_ _%obj133440%_ _%id133441%_)
        (let* ((_%klass133444%_ _%klass133439%_) (_%id133452%_ _%id133441%_))
          (if (let* ((_%klass133461%_ _%klass133444%_)
                     (_%klass133466%_ _%klass133461%_))
                (__class-type-sealed? _%klass133466%_))
              (let ((_%tab133496%_
                     (let* ((_%klass133480%_ _%klass133444%_)
                            (_%klass133485%_ _%klass133480%_))
                       (__specialize-class _%klass133485%_))))
                (declare (not safe))
                (symbolic-table-ref _%tab133496%_ _%id133452%_ '#f))
              (let ((_%$e133531%_
                     (let* ((_%klass133498%_ _%klass133444%_)
                            (_%obj133501%_ _%obj133440%_)
                            (_%id133504%_ _%id133452%_)
                            (_%klass133509%_ _%klass133498%_)
                            (_%id133521%_ _%id133504%_))
                       (__direct-method-ref
                        _%klass133509%_
                        _%obj133501%_
                        _%id133521%_))))
                (if _%$e133531%_
                    _%$e133531%_
                    (let* ((_%klass133535%_ _%klass133444%_)
                           (_%obj133538%_ _%obj133440%_)
                           (_%id133541%_ _%id133452%_)
                           (_%klass133546%_ _%klass133535%_)
                           (_%id133560%_ _%id133541%_))
                      (__mixin-method-ref
                       _%klass133546%_
                       _%obj133538%_
                       _%id133560%_))))))))
    (define find-method
      (lambda (_%klass129528%_ _%obj129529%_ _%id129530%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass129528%_ 'class))
            (let ((_%klass129534%_ _%klass129528%_))
              (if (symbol? _%id129530%_)
                  (let ((_%id129544%_ _%id129530%_))
                    (__find-method _%klass129534%_ _%obj129529%_ _%id129544%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1019.41-1019.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id129530%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1019.20-1019.25"
               'contract:
               'class-type?
               'value:
               _%klass129528%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins133384%_ _%obj133385%_ _%id133386%_)
        (let* ((_%id133389%_ _%id133386%_)
               (__tmp139898
                (lambda (_%g133397133399%_)
                  (let* ((_%klass133402%_ _%g133397133399%_)
                         (_%obj133405%_ _%obj133385%_)
                         (_%id133408%_ _%id133389%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass133402%_ 'class))
                        (let* ((_%klass133413%_ _%klass133402%_)
                               (_%id133429%_ _%id133408%_))
                          (__direct-method-ref
                           _%klass133413%_
                           _%obj133405%_
                           _%id133429%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass133402%_)
                          '#!void))))))
          (declare (not safe))
          (ormap__0 __tmp139898 _%mixins133384%_))))
    (define mixin-find-method
      (lambda (_%mixins129674%_ _%obj129675%_ _%id129676%_)
        (if (symbol? _%id129676%_)
            (let ((_%id129680%_ _%id129676%_))
              (__mixin-find-method
               _%mixins129674%_
               _%obj129675%_
               _%id129680%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1028.37-1028.39"
               'contract:
               'symbol?
               'value:
               _%id129676%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass133277%_ _%obj133278%_ _%id133279%_)
        (let* ((_%klass133282%_ _%klass133277%_) (_%id133290%_ _%id133279%_))
          (letrec ((_%metaclass-resolve-method133299%_
                    (lambda ()
                      (let* ((_%obj133360%_ _%klass133282%_)
                             (_%id133363%_ 'direct-method-ref)
                             (_%args133366%_ (list _%obj133278%_ _%id133290%_))
                             (_%id133371%_ _%id133363%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj133360%_
                                 _%id133371%_
                                 _%args133366%_))))
                   (_%metaclass-resolve-method!133300%_
                    (lambda ()
                      (let ((_%method133357%_
                             (_%metaclass-resolve-method133299%_)))
                        (let ((__tmp139900
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass133282%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp139899
                               (if _%method133357%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp139900
                           _%id133290%_
                           __tmp139899))
                        _%method133357%_))))
            (let ((_%$e133302%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass133282%_ '11 '#f '#f))))
              (if _%$e133302%_
                  ((lambda (_%ht133305%_)
                     (let ((_%method133307%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht133305%_
                               _%id133290%_
                               '#f))))
                       (if (procedure? _%method133307%_)
                           _%method133307%_
                           (if (let* ((_%klass133310%_ _%klass133282%_)
                                      (_%klass133315%_ _%klass133310%_))
                                 (__class-type-metaclass? _%klass133315%_))
                               (let ((_%$e133333%_ _%method133307%_))
                                 (if (eq? 'resolved _%$e133333%_)
                                     (_%metaclass-resolve-method133299%_)
                                     (if (eq? 'unknown _%$e133333%_)
                                         '#f
                                         (_%metaclass-resolve-method!133300%_))))
                               '#f))))
                   _%$e133302%_)
                  (if (let* ((_%klass133337%_ _%klass133282%_)
                             (_%klass133342%_ _%klass133337%_))
                        (__class-type-metaclass? _%klass133342%_))
                      (let ((_%tab133353%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass133282%_
                           _%tab133353%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!133300%_))
                      '#f)))))))
    (define direct-method-ref
      (lambda (_%klass129810%_ _%obj129811%_ _%id129812%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass129810%_ 'class))
            (let ((_%klass129816%_ _%klass129810%_))
              (if (symbol? _%id129812%_)
                  (let ((_%id129826%_ _%id129812%_))
                    (__direct-method-ref
                     _%klass129816%_
                     _%obj129811%_
                     _%id129826%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1031.47-1031.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id129812%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1031.26-1031.31"
               'contract:
               'class-type?
               'value:
               _%klass129810%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass133229%_ _%obj133230%_ _%id133231%_)
        (let* ((_%klass133234%_ _%klass133229%_)
               (_%id133242%_ _%id133231%_)
               (_%mixins133251%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass133234%_ '6 '#f '#f)))
               (_%obj133254%_ _%obj133230%_)
               (_%id133257%_ _%id133242%_)
               (_%id133262%_ _%id133257%_))
          (__mixin-find-method _%mixins133251%_ _%obj133254%_ _%id133262%_))))
    (define mixin-method-ref
      (lambda (_%klass129956%_ _%obj129957%_ _%id129958%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass129956%_ 'class))
            (let ((_%klass129962%_ _%klass129956%_))
              (if (symbol? _%id129958%_)
                  (let ((_%id129972%_ _%id129958%_))
                    (__mixin-method-ref
                     _%klass129962%_
                     _%obj129957%_
                     _%id129972%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1061.46-1061.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id129958%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1061.25-1061.30"
               'contract:
               'class-type?
               'value:
               _%klass129956%_)
              '#!void))))
    (define __bind-method!__%
      (lambda (_%klass133110%_ _%id133111%_ _%proc133112%_ _%rebind?133113%_)
        (let* ((_%id133116%_ _%id133111%_) (_%proc133124%_ _%proc133112%_))
          (letrec ((_%flush-caches!133133%_
                    (lambda (_%klass133187%_)
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%klass133187%_
                             '12
                             '#f
                             '#f))
                          (begin
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-set!
                               _%klass133187%_
                               '#f
                               '12
                               '#f
                               '#f))
                            (if (let ((_%klass133189%_ _%klass133187%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass133189%_
                                         'class))
                                      (let ((_%klass133194%_ _%klass133189%_))
                                        (__class-type-sealed? _%klass133194%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass133189%_)
                                        '#!void)))
                                (let ((__tmp139901
                                       (let ((__tmp139903
                                              (let ()
                                                (declare (not safe))
                                                (##fxnot class-type-flag-sealed)))
                                             (__tmp139902
                                              (let ()
                                                (declare (not safe))
                                                (##type-flags
                                                 _%klass133187%_))))
                                         (declare (not safe))
                                         (##fxand __tmp139903 __tmp139902))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _%klass133187%_
                                   __tmp139901
                                   '3
                                   class::t
                                   bind-method!))
                                '#!void))
                          '#!void)
                      (if (and _%rebind?133113%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass133187%_
                                  '13
                                  '#f
                                  '#f)))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _%klass133187%_
                             '#f
                             '13
                             '#f
                             '#f))
                          '#!void)
                      (let ((_%$e133205%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%klass133187%_
                                '9
                                '#f
                                '#f))))
                        (if _%$e133205%_
                            ((lambda (_%props133208%_)
                               (let ((_%$e133210%_
                                      (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'subclasses:
                                         _%props133208%_))))
                                 (if _%$e133210%_
                                     ((lambda (_%subclasses133213%_)
                                        (for-each
                                         _%flush-caches!133133%_
                                         _%subclasses133213%_))
                                      _%$e133210%_)
                                     '#!void)))
                             _%$e133205%_)
                            '#!void))))
                   (_%bind!133134%_
                    (lambda (_%ht133185%_)
                      (if (and (not _%rebind?133113%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht133185%_
                                  _%id133116%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass133110%_
                                 'method:
                                 _%id133116%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht133185%_
                               _%id133116%_
                               _%proc133124%_))
                            (_%flush-caches!133133%_ _%klass133110%_)
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass133110%_ 'class))
                (let ((_%ht133137%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass133110%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht133137%_
                      (_%bind!133134%_ _%ht133137%_)
                      (let ((_%ht133139%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass133110%_
                           _%ht133139%_
                           '11
                           '#f
                           '#f))
                        (_%bind!133134%_ _%ht133139%_))))
                (if (let () (declare (not safe)) (##type? _%klass133110%_))
                    (let* ((_%klass133142%_
                            (__shadow-class__0 _%klass133110%_))
                           (_%id133145%_ _%id133116%_)
                           (_%proc133148%_ _%proc133124%_)
                           (_%rebind?133151%_ _%rebind?133113%_)
                           (_%id133156%_ _%id133145%_)
                           (_%proc133174%_ _%proc133148%_))
                      (__bind-method!__%
                       _%klass133142%_
                       _%id133156%_
                       _%proc133174%_
                       _%rebind?133151%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass133110%_)))))))
    (define __bind-method!__0
      (lambda (_%klass133218%_ _%id133219%_ _%proc133220%_)
        (let ((_%rebind?133222%_ '#f))
          (__bind-method!__%
           _%klass133218%_
           _%id133219%_
           _%proc133220%_
           _%rebind?133222%_))))
    (define __bind-method!
      (lambda _g139904_
        (let ((_g139905_ (let () (declare (not safe)) (##length _g139904_))))
          (cond ((let () (declare (not safe)) (##fx= _g139905_ 3))
                 (apply __bind-method!__0 _g139904_))
                ((let () (declare (not safe)) (##fx= _g139905_ 4))
                 (apply __bind-method!__% _g139904_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g139904_))))))
    (define bind-method!__%
      (lambda (_%klass130103%_ _%id130104%_ _%proc130105%_ _%rebind?130106%_)
        (if (symbol? _%id130104%_)
            (let ((_%id130110%_ _%id130104%_))
              (if (procedure? _%proc130105%_)
                  (let ((_%proc130120%_ _%proc130105%_))
                    (__bind-method!__%
                     _%klass130103%_
                     _%id130110%_
                     _%proc130120%_
                     _%rebind?130106%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1064.42-1064.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc130105%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1064.27-1064.29"
               'contract:
               'symbol?
               'value:
               _%id130104%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass130133%_ _%id130134%_ _%proc130135%_)
        (let ((_%rebind?130137%_ '#f))
          (bind-method!__%
           _%klass130133%_
           _%id130134%_
           _%proc130135%_
           _%rebind?130137%_))))
    (define bind-method!
      (lambda _g139906_
        (let ((_g139907_ (let () (declare (not safe)) (##length _g139906_))))
          (cond ((let () (declare (not safe)) (##fx= _g139907_ 3))
                 (apply bind-method!__0 _g139906_))
                ((let () (declare (not safe)) (##fx= _g139907_ 4))
                 (apply bind-method!__% _g139906_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g139906_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint133091%_ _%seed133092%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint133091%_
           procedure-hash
           eq?
           _%seed133092%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint133098%_ '#f) (_%seed133100%_ '0))
          (make-method-specializer-table__%
           _%size-hint133098%_
           _%seed133100%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint133102%_)
        (let ((_%seed133104%_ '0))
          (make-method-specializer-table__%
           _%size-hint133102%_
           _%seed133104%_))))
    (define make-method-specializer-table
      (lambda _g139908_
        (let ((_g139909_ (let () (declare (not safe)) (##length _g139908_))))
          (cond ((let () (declare (not safe)) (##fx= _g139909_ 0))
                 (apply make-method-specializer-table__0 _g139908_))
                ((let () (declare (not safe)) (##fx= _g139909_ 1))
                 (apply make-method-specializer-table__1 _g139908_))
                ((let () (declare (not safe)) (##fx= _g139909_ 2))
                 (apply make-method-specializer-table__% _g139908_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g139908_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint133071%_ _%seed133073%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint133071%_
           procedure-hash
           eq?
           _%seed133073%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint133079%_ '#f) (_%seed133081%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint133079%_
           _%seed133081%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint133083%_)
        (let ((_%seed133085%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint133083%_
           _%seed133085%_))))
    (define make-method-specializer-table/lock
      (lambda _g139910_
        (let ((_g139911_ (let () (declare (not safe)) (##length _g139910_))))
          (cond ((let () (declare (not safe)) (##fx= _g139911_ 0))
                 (apply make-method-specializer-table/lock__0 _g139910_))
                ((let () (declare (not safe)) (##fx= _g139911_ 1))
                 (apply make-method-specializer-table/lock__1 _g139910_))
                ((let () (declare (not safe)) (##fx= _g139911_ 2))
                 (apply make-method-specializer-table/lock__% _g139910_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g139910_))))))
    (define method-specializer-table-ref
      (lambda (_%tab133024%_ _%key133025%_ _%default133026%_)
        (let ((_%table133028%_
               (let () (declare (not safe)) (&raw-table-table _%tab133024%_)))
              (_%seed133029%_
               (let () (declare (not safe)) (&raw-table-seed _%tab133024%_))))
          (let* ((_%h133031%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key133025%_))
                         _%seed133029%_))
                 (_%size133034%_ (vector-length _%table133028%_))
                 (_%entries133037%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size133034%_ '2)))
                 (_%start133040%_
                  (let ((__tmp139912
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h133031%_ _%entries133037%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp139912 '1))))
            (let _%loop133044%_ ((_%probe133047%_ _%start133040%_)
                                 (_%i133049%_ '1)
                                 (_%deleted133051%_ '#f))
              (let ((_%k133054%_ (vector-ref _%table133028%_ _%probe133047%_)))
                (if (eq? _%k133054%_ (macro-unused-obj))
                    _%default133026%_
                    (if (eq? _%k133054%_ (macro-deleted-obj))
                        (_%loop133044%_
                         (let ((_%next-probe133059%_
                                (fx+ _%start133040%_
                                     _%i133049%_
                                     (fx* _%i133049%_ _%i133049%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe133059%_ _%size133034%_))
                         (let () (declare (not safe)) (##fx+ _%i133049%_ '1))
                         (let ((_%$e133062%_ _%deleted133051%_))
                           (if _%$e133062%_ _%$e133062%_ _%probe133047%_)))
                        (if (eq? _%key133025%_ _%k133054%_)
                            (vector-ref
                             _%table133028%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe133047%_ '1)))
                            (_%loop133044%_
                             (let ((_%next-probe133067%_
                                    (fx+ _%start133040%_
                                         _%i133049%_
                                         (fx* _%i133049%_ _%i133049%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe133067%_
                                _%size133034%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i133049%_ '1))
                             _%deleted133051%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab132995%_ _%key132996%_ _%default132997%_)
        (let ((_%lock132999%_
               (let () (declare (not safe)) (&raw-table-lock _%tab132995%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again133004%_ ((_%spin133007%_ '0))
              (if (let ((__tmp139913
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock132999%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp139913 '0))
                  (let ((__tmp139914 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock132999%_ '1 __tmp139914))
                  (if (let () (declare (not safe)) (##fx< _%spin133007%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again133004%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin133007%_ '1))))
                      (let ((_%owner133013%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock132999%_ '1))))
                        (if (eq? _%owner133013%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner133013%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again133004%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r133019%_
                 (method-specializer-table-ref
                  _%tab132995%_
                  _%key132996%_
                  _%default132997%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock132999%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock132999%_ '0 '0 '1))))
            _%$r133019%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab132947%_ _%key132948%_ _%value132949%_)
        (let ((_%table132951%_
               (let () (declare (not safe)) (&raw-table-table _%tab132947%_)))
              (_%seed132952%_
               (let () (declare (not safe)) (&raw-table-seed _%tab132947%_))))
          (let* ((_%h132954%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key132948%_))
                         _%seed132952%_))
                 (_%size132957%_ (vector-length _%table132951%_))
                 (_%entries132960%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size132957%_ '2)))
                 (_%start132963%_
                  (let ((__tmp139915
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h132954%_ _%entries132960%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp139915 '1))))
            (let _%loop132967%_ ((_%probe132970%_ _%start132963%_)
                                 (_%i132972%_ '1)
                                 (_%deleted132974%_ '#f))
              (let ((_%k132977%_ (vector-ref _%table132951%_ _%probe132970%_)))
                (if (eq? _%k132977%_ (macro-unused-obj))
                    (if _%deleted132974%_
                        (begin
                          (vector-set!
                           _%table132951%_
                           _%deleted132974%_
                           _%key132948%_)
                          (vector-set!
                           _%table132951%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted132974%_ '1))
                           _%value132949%_)
                          ((lambda ()
                             (let ((__tmp139916
                                    (let ((__tmp139917
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab132947%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp139917 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab132947%_
                                __tmp139916)))))
                        (begin
                          (vector-set!
                           _%table132951%_
                           _%probe132970%_
                           _%key132948%_)
                          (vector-set!
                           _%table132951%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe132970%_ '1))
                           _%value132949%_)
                          ((lambda ()
                             (let ((__tmp139918
                                    (let ((__tmp139919
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab132947%_))))
                                      (declare (not safe))
                                      (##fx- __tmp139919 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab132947%_
                                __tmp139918))
                             (let ((__tmp139920
                                    (let ((__tmp139921
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab132947%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp139921 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab132947%_
                                __tmp139920))))))
                    (if (eq? _%k132977%_ (macro-deleted-obj))
                        (_%loop132967%_
                         (let ((_%next-probe132984%_
                                (fx+ _%start132963%_
                                     _%i132972%_
                                     (fx* _%i132972%_ _%i132972%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe132984%_ _%size132957%_))
                         (let () (declare (not safe)) (##fx+ _%i132972%_ '1))
                         (let ((_%$e132987%_ _%deleted132974%_))
                           (if _%$e132987%_ _%$e132987%_ _%probe132970%_)))
                        (if (eq? _%key132948%_ _%k132977%_)
                            (let ()
                              (vector-set!
                               _%table132951%_
                               _%probe132970%_
                               _%key132948%_)
                              (vector-set!
                               _%table132951%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe132970%_ '1))
                               _%value132949%_))
                            (_%loop132967%_
                             (let ((_%next-probe132992%_
                                    (fx+ _%start132963%_
                                         _%i132972%_
                                         (fx* _%i132972%_ _%i132972%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe132992%_
                                _%size132957%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i132972%_ '1))
                             _%deleted132974%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab132943%_ _%key132944%_ _%value132945%_)
        (if (let ((__tmp139924
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab132943%_)))
                  (__tmp139922
                   (let ((__tmp139923
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab132943%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp139923 '4))))
              (declare (not safe))
              (##fx< __tmp139924 __tmp139922))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab132943%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab132943%_
         _%key132944%_
         _%value132945%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab132913%_ _%key132914%_ _%value132915%_)
        (let ((_%lock132918%_
               (let () (declare (not safe)) (&raw-table-lock _%tab132913%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again132923%_ ((_%spin132926%_ '0))
              (if (let ((__tmp139925
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock132918%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp139925 '0))
                  (let ((__tmp139926 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock132918%_ '1 __tmp139926))
                  (if (let () (declare (not safe)) (##fx< _%spin132926%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again132923%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin132926%_ '1))))
                      (let ((_%owner132932%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock132918%_ '1))))
                        (if (eq? _%owner132932%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner132932%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again132923%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r132938%_
                 (method-specializer-table-set!
                  _%tab132913%_
                  _%key132914%_
                  _%value132915%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock132918%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock132918%_ '0 '0 '1))))
            _%$r132938%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab132864%_
               _%key132865%_
               _%method-specializer-table-update!132866%_
               _%default132867%_)
        (let ((_%table132869%_
               (let () (declare (not safe)) (&raw-table-table _%tab132864%_)))
              (_%seed132870%_
               (let () (declare (not safe)) (&raw-table-seed _%tab132864%_))))
          (let* ((_%h132872%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key132865%_))
                         _%seed132870%_))
                 (_%size132875%_ (vector-length _%table132869%_))
                 (_%entries132878%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size132875%_ '2)))
                 (_%start132881%_
                  (let ((__tmp139927
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h132872%_ _%entries132878%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp139927 '1))))
            (let _%loop132885%_ ((_%probe132888%_ _%start132881%_)
                                 (_%i132890%_ '1)
                                 (_%deleted132892%_ '#f))
              (let ((_%k132895%_ (vector-ref _%table132869%_ _%probe132888%_)))
                (if (eq? _%k132895%_ (macro-unused-obj))
                    (if _%deleted132892%_
                        (begin
                          (vector-set!
                           _%table132869%_
                           _%deleted132892%_
                           _%key132865%_)
                          (vector-set!
                           _%table132869%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted132892%_ '1))
                           (_%method-specializer-table-update!132866%_
                            _%default132867%_))
                          ((lambda ()
                             (let ((__tmp139928
                                    (let ((__tmp139929
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab132864%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp139929 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab132864%_
                                __tmp139928)))))
                        (begin
                          (vector-set!
                           _%table132869%_
                           _%probe132888%_
                           _%key132865%_)
                          (vector-set!
                           _%table132869%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe132888%_ '1))
                           (_%method-specializer-table-update!132866%_
                            _%default132867%_))
                          ((lambda ()
                             (let ((__tmp139930
                                    (let ((__tmp139931
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab132864%_))))
                                      (declare (not safe))
                                      (##fx- __tmp139931 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab132864%_
                                __tmp139930))
                             (let ((__tmp139932
                                    (let ((__tmp139933
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab132864%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp139933 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab132864%_
                                __tmp139932))))))
                    (if (eq? _%k132895%_ (macro-deleted-obj))
                        (_%loop132885%_
                         (let ((_%next-probe132902%_
                                (fx+ _%start132881%_
                                     _%i132890%_
                                     (fx* _%i132890%_ _%i132890%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe132902%_ _%size132875%_))
                         (let () (declare (not safe)) (##fx+ _%i132890%_ '1))
                         (let ((_%$e132905%_ _%deleted132892%_))
                           (if _%$e132905%_ _%$e132905%_ _%probe132888%_)))
                        (if (eq? _%key132865%_ _%k132895%_)
                            (let ()
                              (vector-set!
                               _%table132869%_
                               _%probe132888%_
                               _%key132865%_)
                              (vector-set!
                               _%table132869%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe132888%_ '1))
                               (_%method-specializer-table-update!132866%_
                                (vector-ref
                                 _%table132869%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe132888%_ '1))))))
                            (_%loop132885%_
                             (let ((_%next-probe132910%_
                                    (fx+ _%start132881%_
                                         _%i132890%_
                                         (fx* _%i132890%_ _%i132890%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe132910%_
                                _%size132875%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i132890%_ '1))
                             _%deleted132892%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab132859%_
               _%key132860%_
               _%method-specializer-table-update!132861%_
               _%default132862%_)
        (if (let ((__tmp139936
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab132859%_)))
                  (__tmp139934
                   (let ((__tmp139935
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab132859%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp139935 '4))))
              (declare (not safe))
              (##fx< __tmp139936 __tmp139934))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab132859%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab132859%_
         _%key132860%_
         _%method-specializer-table-update!132861%_
         _%default132862%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab132828%_
               _%key132829%_
               _%method-specializer-table-update!132830%_
               _%default132831%_)
        (let ((_%lock132834%_
               (let () (declare (not safe)) (&raw-table-lock _%tab132828%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again132839%_ ((_%spin132842%_ '0))
              (if (let ((__tmp139937
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock132834%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp139937 '0))
                  (let ((__tmp139938 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock132834%_ '1 __tmp139938))
                  (if (let () (declare (not safe)) (##fx< _%spin132842%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again132839%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin132842%_ '1))))
                      (let ((_%owner132848%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock132834%_ '1))))
                        (if (eq? _%owner132848%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner132848%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again132839%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r132854%_
                 (_%method-specializer-table-update!132830%_
                  _%tab132828%_
                  _%key132829%_
                  _%method-specializer-table-update!132830%_
                  _%default132831%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock132834%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock132834%_ '0 '0 '1))))
            _%$r132854%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab132785%_ _%key132786%_)
        (let ((_%table132788%_
               (let () (declare (not safe)) (&raw-table-table _%tab132785%_)))
              (_%seed132790%_
               (let () (declare (not safe)) (&raw-table-seed _%tab132785%_))))
          (let* ((_%h132793%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key132786%_))
                         _%seed132790%_))
                 (_%size132796%_ (vector-length _%table132788%_))
                 (_%entries132799%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size132796%_ '2)))
                 (_%start132802%_
                  (let ((__tmp139939
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h132793%_ _%entries132799%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp139939 '1))))
            (let _%loop132806%_ ((_%probe132809%_ _%start132802%_)
                                 (_%i132811%_ '1))
              (let ((_%k132814%_ (vector-ref _%table132788%_ _%probe132809%_)))
                (if (eq? _%k132814%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k132814%_ (macro-deleted-obj))
                        (_%loop132806%_
                         (let ((_%next-probe132819%_
                                (fx+ _%start132802%_
                                     _%i132811%_
                                     (fx* _%i132811%_ _%i132811%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe132819%_ _%size132796%_))
                         (let () (declare (not safe)) (##fx+ _%i132811%_ '1)))
                        (if (eq? _%key132786%_ _%k132814%_)
                            (let ()
                              (vector-set!
                               _%table132788%_
                               _%probe132809%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table132788%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe132809%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp139940
                                        (let ((__tmp139941
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab132785%_))))
                                          (declare (not safe))
                                          (##fx- __tmp139941 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab132785%_
                                    __tmp139940)))))
                            (_%loop132806%_
                             (let ((_%next-probe132825%_
                                    (fx+ _%start132802%_
                                         _%i132811%_
                                         (fx* _%i132811%_ _%i132811%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe132825%_
                                _%size132796%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i132811%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab132755%_ _%key132757%_)
        (let ((_%lock132760%_
               (let () (declare (not safe)) (&raw-table-lock _%tab132755%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again132765%_ ((_%spin132768%_ '0))
              (if (let ((__tmp139942
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock132760%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp139942 '0))
                  (let ((__tmp139943 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock132760%_ '1 __tmp139943))
                  (if (let () (declare (not safe)) (##fx< _%spin132768%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again132765%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin132768%_ '1))))
                      (let ((_%owner132774%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock132760%_ '1))))
                        (if (eq? _%owner132774%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner132774%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again132765%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r132780%_
                 (method-specializer-table-delete!
                  _%tab132755%_
                  _%key132757%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock132760%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock132760%_ '0 '0 '1))))
            _%$r132780%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc132752%_ _%specializer132753%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc132752%_
         _%specializer132753%_)))
    (define __lookup-method-specializer
      (lambda (_%proc132750%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc132750%_
         '#f)))
    (define __specialize-class
      (lambda (_%klass132732%_)
        (let* ((_%klass132735%_ _%klass132732%_)
               (_%$e132744%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass132735%_ '12 '#f '#f))))
          (if _%$e132744%_
              _%$e132744%_
              (let ((_%method-table132748%_
                     (___specialize-class _%klass132735%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass132735%_
                   _%method-table132748%_
                   '12
                   '#f
                   '#f))
                _%method-table132748%_)))))
    (define specialize-class
      (lambda (_%klass130264%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass130264%_ 'class))
            (let ((_%klass130268%_ _%klass130264%_))
              (__specialize-class _%klass130268%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1138.25-1138.30"
               'contract:
               'class-type?
               'value:
               _%klass130264%_)
              '#!void))))
    (define __specialize-method
      (lambda (_%klass132716%_
               _%method-table132717%_
               _%method132718%_
               _%proc132719%_)
        (let ((_%$e132721%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table132717%_
                  _%method132718%_
                  '#f))))
          (if _%$e132721%_
              _%$e132721%_
              (let ((_%$e132724%_
                     (__lookup-method-specializer _%proc132719%_)))
                (if _%$e132724%_
                    ((lambda (_%specialize132727%_)
                       (let ((_%specialized-proc132729%_
                              (_%specialize132727%_
                               _%klass132716%_
                               _%method-table132717%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table132717%_
                          _%method132718%_
                          _%specialized-proc132729%_)))
                     _%$e132724%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table132717%_
                       _%method132718%_
                       _%proc132719%_))))))))
    (define ___specialize-class
      (lambda (_%klass132583%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass132583%_ 'class))
            (if (let* ((_%klass132586%_ _%klass132583%_)
                       (_%klass132591%_ _%klass132586%_))
                  (__class-type-metaclass? _%klass132591%_))
                (let* ((_%obj132603%_ _%klass132583%_)
                       (_%id132606%_ 'specialize-class)
                       (_%args132609%_ '())
                       (_%id132614%_ _%id132606%_))
                  (declare (not safe))
                  (##apply __call-method
                           _%obj132603%_
                           _%id132614%_
                           _%args132609%_))
                (if (let* ((_%pred132627%_ class-type-metaclass?)
                           (_%lst132630%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass132583%_
                               '6
                               '#f
                               '#f)))
                           (_%pred132635%_ _%pred132627%_))
                      (declare (not safe))
                      (__find _%pred132635%_ _%lst132630%_))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass132583%_)
                    (let ((_%method-table132648%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop132650%_ ((_%rest132652%_
                                            (let* ((_%klass132699%_
                                                    _%klass132583%_)
                                                   (_%klass132704%_
                                                    _%klass132699%_))
                                              (__class-precedence-list
                                               _%klass132704%_))))
                        (let* ((_%rest132653132661%_ _%rest132652%_)
                               (_%else132655132669%_
                                (lambda () _%method-table132648%_))
                               (_%K132657132687%_
                                (lambda (_%rest132672%_ _%xklass132673%_)
                                  (let ((_%xmethod-table132674132676%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass132673%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table132674132676%_
                                        (let* ((_%xmethod-table132678%_
                                                _%xmethod-table132674132676%_)
                                               (__tmp139944
                                                (lambda (_%g132679132682%_
                                                         _%g132680132684%_)
                                                  (__specialize-method
                                                   _%klass132583%_
                                                   _%method-table132648%_
                                                   _%g132679132682%_
                                                   _%g132680132684%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table132678%_
                                           __tmp139944))
                                        '#f))
                                  (_%loop132650%_ _%rest132672%_))))
                          (if (pair? _%rest132653132661%_)
                              (let ((_%hd132658132690%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest132653132661%_)))
                                    (_%tl132659132692%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest132653132661%_))))
                                (let* ((_%xklass132695%_ _%hd132658132690%_)
                                       (_%rest132697%_ _%tl132659132692%_))
                                  (_%K132657132687%_
                                   _%rest132697%_
                                   _%xklass132695%_)))
                              (_%else132655132669%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass132583%_))
                (__specialize-class (__shadow-class__0 _%klass132583%_))
                (error '"bad class; cannot specialize" _%klass132583%_)))))
    (define __seal-class!
      (lambda (_%klass132446%_)
        (let ((_%klass132449%_ _%klass132446%_))
          (if (let* ((_%klass132458%_ _%klass132449%_)
                     (_%klass132463%_ _%klass132458%_))
                (__class-type-sealed? _%klass132463%_))
              '#!void
              (begin
                (if (let* ((_%klass132476%_ _%klass132449%_)
                           (_%klass132481%_ _%klass132476%_))
                      (__class-type-metaclass? _%klass132481%_))
                    (let ()
                      (let* ((_%obj132492%_ _%klass132449%_)
                             (_%id132495%_ 'seal-class!)
                             (_%args132498%_ '())
                             (_%id132503%_ _%id132495%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj132492%_
                                 _%id132503%_
                                 _%args132498%_))
                      (let* ((_%klass132516%_ _%klass132449%_)
                             (_%klass132521%_ _%klass132516%_))
                        (__specialize-class _%klass132521%_)))
                    (if (let* ((_%pred132531%_ class-type-metaclass?)
                               (_%lst132534%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass132449%_
                                   '6
                                   '#f
                                   '#f)))
                               (_%pred132539%_ _%pred132531%_))
                          (declare (not safe))
                          (__find _%pred132539%_ _%lst132534%_))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass132449%_)
                        (let* ((_%klass132552%_ _%klass132449%_)
                               (_%klass132557%_ _%klass132552%_))
                          (__specialize-class _%klass132557%_))))
                (let* ((_%klass132568%_ _%klass132449%_)
                       (_%klass132573%_ _%klass132568%_))
                  (__class-type-seal! _%klass132573%_)))))))
    (define seal-class!
      (lambda (_%klass130398%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass130398%_ 'class))
            (let ((_%klass130402%_ _%klass130398%_))
              (__seal-class! _%klass130402%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1184.20-1184.25"
               'contract:
               'class-type?
               'value:
               _%klass130398%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass132334%_ _%obj132335%_ _%id132336%_)
        (let* ((_%subklass132339%_ _%subklass132334%_)
               (_%id132347%_ _%id132336%_))
          (letrec ((_%find-next-method132356%_
                    (lambda (_%klass132358%_)
                      (let _%lp132360%_ ((_%rest132362%_
                                          (let ((_%klass132431%_
                                                 _%klass132358%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%klass132431%_
                                                   'class))
                                                (let ((_%klass132436%_
                                                       _%klass132431%_))
                                                  (__class-precedence-list
                                                   _%klass132436%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/mop
                                                   'contract:
                                                   'class-type?
                                                   'value:
                                                   _%klass132431%_)
                                                  '#!void)))))
                        (let* ((_%rest132363132371%_ _%rest132362%_)
                               (_%else132365132379%_ (lambda () '#f))
                               (_%K132367132419%_
                                (lambda (_%rest132382%_ _%klass132383%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass132339%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass132383%_)))
                                      (let* ((_%mixins132385%_ _%rest132382%_)
                                             (_%obj132388%_ _%obj132335%_)
                                             (_%id132391%_ _%id132347%_)
                                             (_%id132396%_ _%id132391%_))
                                        (__mixin-find-method
                                         _%mixins132385%_
                                         _%obj132388%_
                                         _%id132396%_))
                                      (_%lp132360%_ _%rest132382%_)))))
                          (if (pair? _%rest132363132371%_)
                              (let ((_%hd132368132422%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest132363132371%_)))
                                    (_%tl132369132424%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest132363132371%_))))
                                (let* ((_%klass132427%_ _%hd132368132422%_)
                                       (_%rest132429%_ _%tl132369132424%_))
                                  (_%K132367132419%_
                                   _%rest132429%_
                                   _%klass132427%_)))
                              (_%else132365132379%_)))))))
            (_%find-next-method132356%_ (class-of _%obj132335%_))))))
    (define next-method
      (lambda (_%subklass130532%_ _%obj130533%_ _%id130534%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass130532%_ 'class))
            (let ((_%subklass130538%_ _%subklass130532%_))
              (if (symbol? _%id130534%_)
                  (let ((_%id130548%_ _%id130534%_))
                    (__next-method
                     _%subklass130538%_
                     _%obj130533%_
                     _%id130548%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1206.44-1206.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id130534%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1206.20-1206.28"
               'contract:
               'class-type?
               'value:
               _%subklass130532%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass132269%_ _%obj132270%_ _%id132271%_ . _%args132272%_)
        (let* ((_%subklass132275%_ _%subklass132269%_)
               (_%id132283%_ _%id132271%_)
               (_%$e132328%_
                (let* ((_%subklass132292%_ _%subklass132275%_)
                       (_%obj132295%_ _%obj132270%_)
                       (_%id132298%_ _%id132283%_)
                       (_%subklass132303%_ _%subklass132292%_)
                       (_%id132318%_ _%id132298%_))
                  (__next-method
                   _%subklass132303%_
                   _%obj132295%_
                   _%id132318%_))))
          (if _%$e132328%_
              ((lambda (_%methodf132331%_)
                 (apply _%methodf132331%_ _%obj132270%_ _%args132272%_))
               _%$e132328%_)
              (error '"cannot find next method"
                     'object:
                     _%obj132270%_
                     'method:
                     _%id132283%_)))))
    (define call-next-method
      (lambda (_%subklass130678%_ _%obj130679%_ _%id130680%_ . _%args130681%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass130678%_ 'class))
            (let ((_%subklass130685%_ _%subklass130678%_))
              (if (symbol? _%id130680%_)
                  (let ((_%id130695%_ _%id130680%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass130685%_
                             _%obj130679%_
                             _%id130695%_
                             _%args130681%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1217.49-1217.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id130680%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1217.25-1217.33"
               'contract:
               'class-type?
               'value:
               _%subklass130678%_)
              '#!void))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type132048%_ _%properties132049%_)
        (letrec ((_%shadow-type-id132051%_
                  (lambda (_%type132257%_)
                    (let ((__tmp139945
                           (let ()
                             (declare (not safe))
                             (##type-name _%type132257%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp139945 '"::t"))))
                 (_%shadow-type-name132052%_
                  (lambda (_%type132255%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type132255%_))))
                 (_%make-shadow-class132053%_
                  (lambda (_%type132137%_ _%precedence-list132138%_)
                    (let* ((_%super132140%_
                            (if (pair? _%precedence-list132138%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list132138%_))
                                      '())
                                '()))
                           (_%klass132252%_
                            (let* ((_%id132142%_
                                    (_%shadow-type-id132051%_ _%type132137%_))
                                   (_%name132145%_
                                    (let ()
                                      (declare (not safe))
                                      (##type-name _%type132137%_)))
                                   (_%direct-supers132148%_ _%super132140%_)
                                   (_%direct-slots132151%_ '())
                                   (_%properties132177%_
                                    (cons (cons 'struct: '#t)
                                          (cons (cons 'system: '#t)
                                                (cons (cons 'system-type:
                                                            _%type132137%_)
                                                      (let ((__tmp139946
                                                             (if (let ((_%type132154%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%type132137%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##type? _%type132154%_))
                               (let ((_%type132159%_ _%type132154%_))
                                 (__type-extensible? _%type132159%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  '##type?
                                  'value:
                                  _%type132154%_)
                                 '#!void)))
                         '()
                         (cons (cons 'final: '#t) '()))))
                (declare (not safe))
                (foldr__0 cons _%properties132049%_ __tmp139946))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%constructor132180%_ '#f)
                                   (_%id132185%_ _%id132142%_))
                              (if (symbol? _%name132145%_)
                                  (let* ((_%name132196%_ _%name132145%_)
                                         (_%direct-supers132206%_
                                          _%direct-supers132148%_)
                                         (_%direct-slots132216%_
                                          _%direct-slots132151%_)
                                         (_%properties132226%_
                                          _%properties132177%_))
                                    (if ((lambda (_%$obj132235%_)
                                           (or (not _%$obj132235%_)
                                               (symbol? _%$obj132235%_)))
                                         _%constructor132180%_)
                                        (let ((_%constructor132242%_
                                               _%constructor132180%_))
                                          (__make-class-type
                                           _%id132185%_
                                           _%name132196%_
                                           _%direct-supers132206%_
                                           _%direct-slots132216%_
                                           _%properties132226%_
                                           _%constructor132242%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '(? (or not symbol?))
                                           'value:
                                           _%constructor132180%_)
                                          '#!void)))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     'symbol?
                                     'value:
                                     _%name132145%_)
                                    '#!void)))))
                      (let ((__tmp139947
                             (let ()
                               (declare (not safe))
                               (##type-id _%type132137%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp139947
                         _%klass132252%_))
                      _%klass132252%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again132057%_ ((_%spin132060%_ '0))
              (if (let ((__tmp139948
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp139948 '0))
                  (let ((__tmp139949 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp139949))
                  (if (let () (declare (not safe)) (##fx< _%spin132060%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again132057%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin132060%_ '1))))
                      (let ((_%owner132066%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner132066%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner132066%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again132057%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e132072%_
                 (let ((__tmp139950
                        (let ()
                          (declare (not safe))
                          (##type-id _%type132048%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp139950 '#f))))
            (if _%$e132072%_
                ((lambda (_%klass132075%_)
                   (let ()
                     (declare (not interrupts-enabled))
                     (begin
                       (let ()
                         (declare (not safe))
                         (##vector-set! __shadow-classes-lock '1 '#f))
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __shadow-classes-lock '0 '0 '1))))
                   _%klass132075%_)
                 _%$e132072%_)
                (let _%loop132080%_ ((_%super132082%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type132048%_)))
                                     (_%hierarchy132083%_ '()))
                  (if (not _%super132082%_)
                      (let _%loop132086%_ ((_%rest132088%_ _%hierarchy132083%_)
                                           (_%precedence-list132089%_ '()))
                        (let* ((_%rest132090132098%_ _%rest132088%_)
                               (_%else132092132110%_
                                (lambda ()
                                  (let ((_%klass132106%_
                                         (_%make-shadow-class132053%_
                                          _%type132048%_
                                          _%precedence-list132089%_)))
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
                                    _%klass132106%_)))
                               (_%K132094132124%_
                                (lambda (_%rest132113%_ _%type132114%_)
                                  (let ((_%$e132116%_
                                         (let ((__tmp139951
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type132114%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp139951
                                            '#f))))
                                    (if _%$e132116%_
                                        ((lambda (_%klass132119%_)
                                           (_%loop132086%_
                                            _%rest132113%_
                                            (cons _%klass132119%_
                                                  _%precedence-list132089%_)))
                                         _%$e132116%_)
                                        (let ((_%klass132122%_
                                               (_%make-shadow-class132053%_
                                                _%type132114%_
                                                _%precedence-list132089%_)))
                                          (_%loop132086%_
                                           _%rest132113%_
                                           (cons _%klass132122%_
                                                 _%precedence-list132089%_))))))))
                          (if (pair? _%rest132090132098%_)
                              (let ((_%hd132095132127%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest132090132098%_)))
                                    (_%tl132096132129%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest132090132098%_))))
                                (let* ((_%type132132%_ _%hd132095132127%_)
                                       (_%rest132134%_ _%tl132096132129%_))
                                  (_%K132094132124%_
                                   _%rest132134%_
                                   _%type132132%_)))
                              (_%else132092132110%_))))
                      (_%loop132080%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super132082%_))
                       (cons _%super132082%_ _%hierarchy132083%_)))))))))
    (define __shadow-class__0
      (lambda (_%type132262%_)
        (let ((_%properties132264%_ '()))
          (__shadow-class__% _%type132262%_ _%properties132264%_))))
    (define __shadow-class
      (lambda _g139952_
        (let ((_g139953_ (let () (declare (not safe)) (##length _g139952_))))
          (cond ((let () (declare (not safe)) (##fx= _g139953_ 1))
                 (apply __shadow-class__0 _g139952_))
                ((let () (declare (not safe)) (##fx= _g139953_ 2))
                 (apply __shadow-class__% _g139952_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g139952_))))))
    (define __type
      (let* ((_%tb132036%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e132038%_ _%tb132036%_))
        (if (eq? '2 _%$e132038%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e132038%_)
                (let ((_%flonum-self-tagging-tags132041%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits132042%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e132044%_ _%flonum-self-tagging-tags132041%_))
                    (if (eq? '0 _%$e132044%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits132042%_ '2))
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
                        (if (eq? '1 _%$e132044%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits132042%_ '2))
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
                            (if (eq? '2 _%$e132044%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e132044%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e132044%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags132041%_))))))))
                (error '"unexpected tag width" _%tb132036%_)))))
    (define __primitive-class
      (let ((__tmp139954 (vector-length __type)))
        (declare (not safe))
        (##make-vector __tmp139954 '#f)))
    (define __boxvalues-class
      (let () (declare (not safe)) (##make-vector '2 '#f)))
    (define __subtype-class
      (let () (declare (not safe)) (##make-vector '32 '#f)))
    (define __char-class '#f)
    (define __special-class
      (let () (declare (not safe)) (##make-vector '16 '#f)))
    (define __class-of
      (let* ((_%len131926%_ (vector-length __type))
             (_%cv131928%_
              (let () (declare (not safe)) (##make-vector _%len131926%_ '#f))))
        (let _%loop131931%_ ((_%i131933%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i131933%_ _%len131926%_))
              (let* ((_%t131935%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i131933%_)))
                     (_%f132033%_
                      (if (eq? _%t131935%_ 'undefined)
                          (lambda (_%obj131938%_)
                            (error '"object type is undefined" _%obj131938%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t131935%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj131941%_)
                                (declare (not interrupts-enabled) (not safe))
                                (let ((_%$e131944%_
                                       (##vector-ref
                                        __primitive-class
                                        _%i131933%_)))
                                  (if _%$e131944%_
                                      _%$e131944%_
                                      (let ((_%klass131948%_
                                             (__system-class _%t131935%_)))
                                        (##vector-set!
                                         __primitive-class
                                         _%i131933%_
                                         _%klass131948%_)
                                        _%klass131948%_))))
                              (if (eq? _%t131935%_ 'subtyped)
                                  (lambda (_%obj131952%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st131955%_
                                           (##subtype _%obj131952%_)))
                                      (if (##fx= _%st131955%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass131958%_
                                                 (##structure-type
                                                  _%obj131952%_)))
                                            (if (##structure-instance-of?
                                                 _%klass131958%_
                                                 'class)
                                                _%klass131958%_
                                                (__shadow-class__0
                                                 _%klass131958%_)))
                                          (if (##fx= _%st131955%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj131952%_)
                                                         '1)
                                                  (let ((_%$e131961%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '0)))
                                                    (if _%$e131961%_
                                                        _%$e131961%_
                                                        (let ((_%klass131965%_
                                                               (__system-class
                                                                'box)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '0
                                                           _%klass131965%_)
                                                          _%klass131965%_)))
                                                  (let ((_%$e131968%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '1)))
                                                    (if _%$e131968%_
                                                        _%$e131968%_
                                                        (let ((_%klass131972%_
                                                               (__system-class
                                                                'values)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '1
                                                           _%klass131972%_)
                                                          _%klass131972%_))))
                                              (let ((_%$e131975%_
                                                     (##vector-ref
                                                      __subtype-class
                                                      _%st131955%_)))
                                                (if _%$e131975%_
                                                    _%$e131975%_
                                                    (let ((_%klass131992%_
                                                           (let ((_%$e131979%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##vector-ref __subtype-id _%st131955%_)))
                     (if _%$e131979%_
                         ((lambda (_%subtype-t131982%_)
                            (let ((_%$e131984%_
                                   (##vector-ref
                                    __subtype-class
                                    _%st131955%_)))
                              (if _%$e131984%_
                                  _%$e131984%_
                                  (let ((_%klass131988%_
                                         (__system-class _%subtype-t131982%_)))
                                    (##vector-set!
                                     __subtype-class
                                     _%st131955%_
                                     _%klass131988%_)
                                    _%klass131988%_))))
                          _%$e131979%_)
                         (error '"unknown class"
                                'object:
                                _%obj131952%_
                                'subtype:
                                _%st131955%_)))))
              (##vector-set! __subtype-class _%st131955%_ _%klass131992%_)
              _%klass131992%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (eq? _%t131935%_ 'special)
                                      (lambda (_%obj131996%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (let ((_%x131999%_
                                               (##type-cast _%obj131996%_ '0)))
                                          (if (##fx> _%x131999%_ '0)
                                              (let ((_%$e132002%_
                                                     __char-class))
                                                (if _%$e132002%_
                                                    _%$e132002%_
                                                    (let ((_%klass132006%_
                                                           (__system-class
                                                            'char)))
                                                      (set! __char-class
                                                            _%klass132006%_)
                                                      _%klass132006%_)))
                                              (let* ((_%t132009%_
                                                      (##fx- _%x131999%_))
                                                     (_%$e132012%_
                                                      (##vector-ref
                                                       __special-class
                                                       _%t132009%_)))
                                                (if _%$e132012%_
                                                    _%$e132012%_
                                                    (let ((_%klass132030%_
                                                           (if (eq? _%obj131996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                       (__system-class 'null)
                       (if (eq? _%obj131996%_ '#f)
                           (__system-class 'false)
                           (if (eq? _%obj131996%_ '#t)
                               (__system-class 'true)
                               (if (eq? _%obj131996%_ '#!void)
                                   (__system-class 'void)
                                   (if (eq? _%obj131996%_ '#!eof)
                                       (__system-class 'eof)
                                       (if (eq? _%obj131996%_ '#!unbound)
                                           (__system-class 'unbound)
                                           (if (eq? _%obj131996%_ '#!unbound2)
                                               (__system-class 'unbound2)
                                               (if (eq? _%obj131996%_
                                                        '#!optional)
                                                   (__system-class 'optional)
                                                   (if (eq? _%obj131996%_
                                                            '#!rest)
                                                       (__system-class 'rest)
                                                       (if (eq? _%obj131996%_
                                                                '#!key)
                                                           (__system-class
                                                            'key)
                                                           (if (eq? _%obj131996%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (macro-unused-obj))
                       (__system-class 'unused)
                       (if (eq? _%obj131996%_ (macro-deleted-obj))
                           (__system-class 'deleted)
                           (if (eq? _%obj131996%_ (macro-absent-obj))
                               (__system-class 'absent)
                               (__system-class 'unknown))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (##vector-set! __special-class _%t132009%_ _%klass132030%_)
              _%klass132030%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t131935%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv131928%_ _%i131933%_ _%f132033%_))
                (_%loop131931%_
                 (let () (declare (not safe)) (##fx+ _%i131933%_ '1))))
              _%cv131928%_))))
    (define type-of
      (lambda (_%obj131922%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj131922%_)))))
    (define class-of
      (lambda (_%obj131913%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t131917%_ (##type _%obj131913%_))
                 (_%f131919%_ (##vector-ref __class-of _%t131917%_)))
            (_%f131919%_ _%obj131913%_)))))
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
      (lambda (_%id131907%_)
        (let ((_%$e131909%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id131907%_ '#f))))
          (if _%$e131909%_
              _%$e131909%_
              (error '"unknown system class" _%id131907%_)))))
    (define __make-system-class
      (lambda (_%id131809%_ _%super131810%_ _%properties131811%_)
        (let ((_%klass131905%_
               (let* ((_%id131813%_ _%id131809%_)
                      (_%name131816%_ _%id131809%_)
                      (_%direct-supers131819%_ _%super131810%_)
                      (_%direct-slots131822%_ '())
                      (_%properties131825%_
                       (cons (cons 'system: '#t)
                             (let ()
                               (declare (not safe))
                               (foldr__0 cons '() _%properties131811%_))))
                      (_%constructor131828%_ '#f))
                 (if (symbol? _%id131813%_)
                     (let ((_%id131833%_ _%id131813%_))
                       (if (symbol? _%name131816%_)
                           (let ((_%name131849%_ _%name131816%_))
                             (if (list? _%direct-supers131819%_)
                                 (let* ((_%direct-supers131859%_
                                         _%direct-supers131819%_)
                                        (_%direct-slots131869%_
                                         _%direct-slots131822%_)
                                        (_%properties131879%_
                                         _%properties131825%_))
                                   (if ((lambda (_%$obj131888%_)
                                          (or (not _%$obj131888%_)
                                              (symbol? _%$obj131888%_)))
                                        _%constructor131828%_)
                                       (let ((_%constructor131895%_
                                              _%constructor131828%_))
                                         (__make-class-type
                                          _%id131833%_
                                          _%name131849%_
                                          _%direct-supers131859%_
                                          _%direct-slots131869%_
                                          _%properties131879%_
                                          _%constructor131895%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          '(? (or not symbol?))
                                          'value:
                                          _%constructor131828%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'list?
                                    'value:
                                    _%direct-supers131819%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'symbol?
                              'value:
                              _%name131816%_)
                             '#!void)))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id131813%_)
                       '#!void)))))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id131809%_
             _%klass131905%_))
          _%klass131905%_)))))
