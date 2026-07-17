(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1784279013)
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
      (let ((_%flags143088%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties143089%_ '((direct-slots:) (system: . #t)))
            (_%slot-table143090%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags143088%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table143090%_
           _%properties143089%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots143045%_
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
             (_%slot-vector143047%_ (list->vector (cons '#f _%slots143045%_)))
             (_%slot-table143073%_
              (let ((_%slot-table143049%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp146167
                       (lambda (_%slot143051%_ _%field143052%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table143049%_
                            _%slot143051%_
                            _%field143052%_))
                         (let ((__tmp146168
                                (let ((_%sym143054%_ _%slot143051%_))
                                  (if (symbol? _%sym143054%_)
                                      (let ((_%sym143059%_ _%sym143054%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym143059%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym143054%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table143049%_
                            __tmp146168
                            _%field143052%_))))
                      (__tmp146165
                       (let ((__tmp146166
                              (let ()
                                (declare (not safe))
                                (##length _%slots143045%_))))
                         (declare (not safe))
                         (##iota __tmp146166 '1))))
                  (declare (not safe))
                  (##for-each __tmp146167 _%slots143045%_ __tmp146165))
                _%slot-table143049%_))
             (_%flags143075%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields143081%_
              (list->vector
               (let ((__tmp146169
                      (map (lambda (_%$%g143076143078%_)
                             (list _%$%g143076143078%_ '5 '#f))
                           (drop _%slots143045%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp146169))))
             (_%properties143083%_
              (cons (cons 'direct-slots: _%slots143045%_) '((struct: . #t))))
             (_%t143085%_
              (let ((__tmp146170 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags143075%_
                 ##type-type
                 _%fields143081%_
                 __tmp146170
                 _%slot-vector143047%_
                 _%slot-table143073%_
                 _%properties143083%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t143085%_ _%t143085%_))
        _%t143085%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags143041%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties143042%_ '((direct-slots:) (system: . #t)))
            (_%slot-table143043%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp146171 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags143041%_
           '#f
           '#()
           __tmp146171
           '#(#f)
           _%slot-table143043%_
           _%properties143042%_
           '#f
           '#f
           '#f
           '#f))))
    (define __class-type
      (lambda (_%klass143029%_)
        (let ((_%klass143032%_ _%klass143029%_))
          (declare (not safe))
          (##structure-type _%klass143032%_))))
    (define class-type
      (lambda (_%klass143015%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass143015%_ 'class))
            (let ((_%klass143019%_ _%klass143015%_))
              (__class-type _%klass143019%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass143015%_)
              '#!void))))
    (define class-type?
      (lambda (_%obj143013%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj143013%_ 'class))))
    (define __class-type=?
      (lambda (_%x142992%_ _%y142993%_)
        (let* ((_%x142996%_ _%x142992%_) (_%y143004%_ _%y142993%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x142996%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y143004%_ '1 '#f '#f))))))
    (define class-type=?
      (lambda (_%x142967%_ _%y142968%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x142967%_ 'class))
            (let ((_%x142972%_ _%x142967%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y142968%_ 'class))
                  (let ((_%y142982%_ _%y142968%_))
                    (__class-type=? _%x142972%_ _%y142982%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y142968%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x142967%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type142955%_)
        (let* ((_%type142958%_ _%type142955%_)
               (__tmp146172
                (let ((__tmp146173
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type142958%_))))
                  (declare (not safe))
                  (##fxand __tmp146173 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp146172 type-flag-opaque))))
    (define type-opaque?
      (lambda (_%type142941%_)
        (if (let () (declare (not safe)) (##type? _%type142941%_))
            (let ((_%type142945%_ _%type142941%_))
              (__type-opaque? _%type142945%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type142941%_)
              '#!void))))
    (define __class-type-opaque?
      (lambda (_%klass142929%_)
        (let* ((_%klass142932%_ _%klass142929%_)
               (__tmp146174
                (let ((__tmp146175
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass142932%_))))
                  (declare (not safe))
                  (##fxand __tmp146175 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp146174 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass142915%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142915%_ 'class))
            (let ((_%klass142919%_ _%klass142915%_))
              (__class-type-opaque? _%klass142919%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass142915%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type142903%_)
        (let* ((_%type142906%_ _%type142903%_)
               (__tmp146176
                (let ((__tmp146177
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type142906%_))))
                  (declare (not safe))
                  (##fxand __tmp146177 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp146176 type-flag-extensible))))
    (define type-extensible?
      (lambda (_%type142889%_)
        (if (let () (declare (not safe)) (##type? _%type142889%_))
            (let ((_%type142893%_ _%type142889%_))
              (__type-extensible? _%type142893%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type142889%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type142877%_)
        (let* ((_%type142880%_ _%type142877%_)
               (__tmp146178
                (let ((__tmp146179
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type142880%_))))
                  (declare (not safe))
                  (##fxand __tmp146179 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp146178 '0))))
    (define class-type-final?
      (lambda (_%type142863%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type142863%_ 'class))
            (let ((_%type142867%_ _%type142863%_))
              (__class-type-final? _%type142867%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type142863%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass142851%_)
        (let* ((_%klass142854%_ _%klass142851%_)
               (__tmp146180
                (let ((__tmp146181
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass142854%_))))
                  (declare (not safe))
                  (##fxand __tmp146181 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp146180 class-type-flag-struct))))
    (define class-type-struct?
      (lambda (_%klass142837%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142837%_ 'class))
            (let ((_%klass142841%_ _%klass142837%_))
              (__class-type-struct? _%klass142841%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass142837%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass142825%_)
        (let* ((_%klass142828%_ _%klass142825%_)
               (__tmp146182
                (let ((__tmp146183
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass142828%_))))
                  (declare (not safe))
                  (##fxand __tmp146183 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp146182 class-type-flag-sealed))))
    (define class-type-sealed?
      (lambda (_%klass142811%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142811%_ 'class))
            (let ((_%klass142815%_ _%klass142811%_))
              (__class-type-sealed? _%klass142815%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass142811%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass142799%_)
        (let* ((_%klass142802%_ _%klass142799%_)
               (__tmp146184
                (let ((__tmp146185
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass142802%_))))
                  (declare (not safe))
                  (##fxand __tmp146185 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp146184 class-type-flag-metaclass))))
    (define class-type-metaclass?
      (lambda (_%klass142785%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142785%_ 'class))
            (let ((_%klass142789%_ _%klass142785%_))
              (__class-type-metaclass? _%klass142789%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass142785%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass142773%_)
        (let* ((_%klass142776%_ _%klass142773%_)
               (__tmp146186
                (let ((__tmp146187
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass142776%_))))
                  (declare (not safe))
                  (##fxand __tmp146187 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp146186 class-type-flag-system))))
    (define class-type-system?
      (lambda (_%klass142759%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142759%_ 'class))
            (let ((_%klass142763%_ _%klass142759%_))
              (__class-type-system? _%klass142763%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass142759%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass142747%_)
        (let* ((_%klass142750%_ _%klass142747%_)
               (__tmp146188
                (let ((__tmp146189
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass142750%_))))
                  (declare (not safe))
                  (##fxand __tmp146189 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp146188 class-type-flag-acyclic))))
    (define class-type-acyclic?
      (lambda (_%klass142733%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142733%_ 'class))
            (let ((_%klass142737%_ _%klass142733%_))
              (__class-type-acyclic? _%klass142737%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass142733%_)
              '#!void))))
    (define make-class-type-descriptor
      (lambda (_%type-id142508%_
               _%type-name142509%_
               _%type-super142510%_
               _%precedence-list142511%_
               _%slot-vector142512%_
               _%properties142513%_
               _%constructor142514%_
               _%slot-table142515%_
               _%methods142516%_)
        (letrec ((_%make-props!142519%_
                  (lambda (_%key142678%_ _%transparent?142679%_)
                    (letrec* ((_%ht142681%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!142682%_
                               (lambda (_%ht142726%_ _%slots142727%_)
                                 (for-each
                                  (lambda (_%$%g142728142730%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht142726%_
                                       _%$%g142728142730%_
                                       '#t)))
                                  _%slots142727%_)))
                              (_%put-all-new-slots!142683%_
                               (lambda (_%ht142718%_)
                                 (let ((_%first142720%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-super142510%_
                                               'class))
                                            (let ((__tmp146190
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%type-super142510%_
                                                      '7
                                                      '#f
                                                      '#f))))
                                              (declare (not safe))
                                              (##vector-length __tmp146190))
                                            '1)))
                                   (let _%lp142722%_ ((_%i142724%_
                                                       _%first142720%_))
                                     (if (let ((__tmp146191
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-length
                                                   _%slot-vector142512%_))))
                                           (declare (not safe))
                                           (##fx< _%i142724%_ __tmp146191))
                                         (begin
                                           (let ((__tmp146192
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _%slot-vector142512%_
                                                     _%i142724%_))))
                                             (declare (not safe))
                                             (symbolic-table-set!
                                              _%ht142718%_
                                              __tmp146192
                                              '#t))
                                           (_%lp142722%_
                                            (let ()
                                              (declare (not safe))
                                              (##fx+ _%i142724%_ '1))))
                                         '#!void)))))
                              (_%put-alist!142684%_
                               (lambda (_%ht142709%_
                                        _%key142710%_
                                        _%alist142711%_)
                                 (let ((_%$e142713%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__%
                                           _%key142710%_
                                           _%alist142711%_
                                           _%transparent?142679%_))))
                                   (if _%$e142713%_
                                       (if (eq? _%$e142713%_ '#t)
                                           (_%put-all-new-slots!142683%_
                                            _%ht142709%_)
                                           (_%put-slots!142682%_
                                            _%ht142709%_
                                            _%$e142713%_))
                                       '#!void)))))
                      (_%put-alist!142684%_
                       _%ht142681%_
                       _%key142678%_
                       _%properties142513%_)
                      (for-each
                       (lambda (_%mixin142686%_)
                         (let ((_%alist142688%_
                                (##structure-ref
                                 _%mixin142686%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (eq? '#t
                                    (let ()
                                      (declare (not safe))
                                      (agetq__%
                                       _%key142678%_
                                       _%alist142688%_
                                       _%transparent?142679%_)))
                               (_%put-slots!142682%_
                                _%ht142681%_
                                (let ((_%klass142690%_ _%mixin142686%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass142690%_
                                         'class))
                                      (let ((_%klass142695%_ _%klass142690%_))
                                        (__class-type-slot-list
                                         _%klass142695%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass142690%_)
                                        '#!void))))
                               (_%put-alist!142684%_
                                _%ht142681%_
                                _%key142678%_
                                _%alist142688%_))))
                       _%precedence-list142511%_)
                      _%ht142681%_)))
                 (_%all-slots-property?142520%_
                  (lambda (_%key142673%_ _%transparent?142674%_)
                    (let ((_%entry142676%_
                           (assq _%key142673%_ _%properties142513%_)))
                      (if _%entry142676%_
                          (eq? (cdr _%entry142676%_) '#t)
                          _%transparent?142674%_)))))
          (let* ((_%transparent?142540%_
                  (let ((__tmp146193
                         (if _%type-super142510%_
                             (not (let ((_%type142522%_ _%type-super142510%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##type? _%type142522%_))
                                        (let ((_%type142527%_ _%type142522%_))
                                          (__type-opaque? _%type142527%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '##type?
                                           'value:
                                           _%type142522%_)
                                          '#!void))))
                             '#t)))
                    (declare (not safe))
                    (agetq__% 'transparent: _%properties142513%_ __tmp146193)))
                 (_%all-slots-printable?142542%_
                  (_%all-slots-property?142520%_
                   'print:
                   _%transparent?142540%_))
                 (_%printable142544%_
                  (if (not _%all-slots-printable?142542%_)
                      (_%make-props!142519%_ 'print: _%transparent?142540%_)
                      '#f))
                 (_%all-slots-equalable?142546%_
                  (_%all-slots-property?142520%_
                   'equal:
                   _%transparent?142540%_))
                 (_%equalable142548%_
                  (if (not _%all-slots-equalable?142546%_)
                      (_%make-props!142519%_ 'equal: _%transparent?142540%_)
                      '#f))
                 (_%first-new-field142550%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super142510%_ 'class))
                      (let ((__tmp146194
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super142510%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp146194))
                      '1))
                 (_%field-info-length142552%_
                  (let ((__tmp146195
                         (let ((__tmp146196
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector142512%_))))
                           (declare (not safe))
                           (##fx- __tmp146196 _%first-new-field142550%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp146195)))
                 (_%field-info142554%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length142552%_ '#f)))
                 (_%struct?142556%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties142513%_)))
                 (_%final?142558%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties142513%_)))
                 (_%metaclass142565%_
                  (let ((_%$%metaclass142559142561%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties142513%_))))
                    (if _%$%metaclass142559142561%_
                        (let ((_%metaclass142563%_
                               _%$%metaclass142559142561%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass142563%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id142508%_
                                     'metaclass:
                                     _%metaclass142563%_))
                          _%metaclass142563%_)
                        '#f)))
                 (_%system?142567%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties142513%_)))
                 (_%opaque?142569%_ (not _%transparent?142540%_))
                 (_%acyclic?142571%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties142513%_)))
                 (_%type-flags142573%_
                  (let ((__tmp146202
                         (if _%final?142558%_ '0 type-flag-extensible))
                        (__tmp146201
                         (if (and _%opaque?142569%_
                                  (not (let ()
                                         (declare (not safe))
                                         (agetq__0
                                          'equal:
                                          _%properties142513%_))))
                             type-flag-opaque
                             '0))
                        (__tmp146200
                         (if _%struct?142556%_ class-type-flag-struct '0))
                        (__tmp146199
                         (if _%metaclass142565%_ class-type-flag-metaclass '0))
                        (__tmp146198
                         (if _%system?142567%_ class-type-flag-system '0))
                        (__tmp146197
                         (if _%acyclic?142571%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp146202
                             __tmp146201
                             __tmp146200
                             __tmp146199
                             __tmp146198
                             __tmp146197)))
                 (_%precedence-list142581%_
                  (let ((_%$e142575%_ (memq t::t _%precedence-list142511%_)))
                    (if _%$e142575%_
                        (if (null? (cdr _%$e142575%_))
                            _%precedence-list142511%_
                            (error '"BUG: t::t is not last in the precedence list"
                                   'precedence-list:
                                   _%precedence-list142511%_))
                        (let ((__tmp146203 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list142511%_ __tmp146203))))))
            (let _%loop142584%_ ((_%i142586%_ _%first-new-field142550%_)
                                 (_%j142587%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j142587%_ _%field-info-length142552%_))
                  (let* ((_%slot142589%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector142512%_ _%i142586%_)))
                         (_%flags142597%_
                          (let ((__tmp146205
                                 (if (or _%all-slots-printable?142542%_
                                         (let ()
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            _%printable142544%_
                                            _%slot142589%_
                                            '#f)))
                                     '0
                                     '1))
                                (__tmp146204
                                 (if (or _%all-slots-equalable?142546%_
                                         (let ()
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            _%equalable142548%_
                                            _%slot142589%_
                                            '#f)))
                                     '0
                                     '4)))
                            (declare (not safe))
                            (##fxior __tmp146205 __tmp146204))))
                    (vector-set!
                     _%field-info142554%_
                     _%j142587%_
                     _%slot142589%_)
                    (vector-set!
                     _%field-info142554%_
                     (let () (declare (not safe)) (##fx+ _%j142587%_ '1))
                     _%flags142597%_)
                    (_%loop142584%_
                     (let () (declare (not safe)) (##fx+ _%i142586%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j142587%_ '3))))
                  '#!void))
            (if _%metaclass142565%_
                (let ((_%val142636%_
                       (let* ((_%klass142600%_ _%metaclass142565%_)
                              (_%args142603%_
                               (list _%type-id142508%_
                                     _%type-name142509%_
                                     _%type-flags142573%_
                                     _%type-super142510%_
                                     _%field-info142554%_
                                     _%precedence-list142581%_
                                     _%slot-vector142512%_
                                     _%slot-table142515%_
                                     _%properties142513%_
                                     _%constructor142514%_
                                     _%methods142516%_
                                     '#f
                                     '#f)))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%klass142600%_
                                'class))
                             (let ((_%klass142608%_ _%klass142600%_))
                               (declare (not safe))
                               (##apply __make-instance
                                        _%klass142608%_
                                        _%args142603%_))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%klass142600%_)
                               '#!void)))))
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   '"\"gerbil/runtime/mop.ss\"@305.10-311.31"
                   'contract:
                   '(class-type? val)
                   'value:
                   _%val142636%_)
                  '#!void)
                (let ((_%klass142639%_
                       (let ()
                         (declare (not safe))
                         (##structure
                          class::t
                          _%type-id142508%_
                          _%type-name142509%_
                          _%type-flags142573%_
                          _%type-super142510%_
                          _%field-info142554%_
                          _%precedence-list142581%_
                          _%slot-vector142512%_
                          _%slot-table142515%_
                          _%properties142513%_
                          _%constructor142514%_
                          _%methods142516%_
                          '#f
                          '#f))))
                  (for-each
                   (lambda (_%super142641%_)
                     (let ()
                       (declare (not interrupts-enabled))
                       (let _%again142645%_ ((_%spin142648%_ '0))
                         (if (let ((__tmp146206
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __class-type-properties-lock
                                       '0
                                       '1
                                       '0))))
                               (declare (not safe))
                               (##fx= __tmp146206 '0))
                             (let ((__tmp146207 (current-thread)))
                               (declare (not safe))
                               (##vector-set!
                                __class-type-properties-lock
                                '1
                                __tmp146207))
                             (if (let ()
                                   (declare (not safe))
                                   (##fx< _%spin142648%_ '10))
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##thread-yield!))
                                   (_%again142645%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%spin142648%_ '1))))
                                 (let ((_%owner142654%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           __class-type-properties-lock
                                           '1))))
                                   (if (eq? _%owner142654%_
                                            (macro-current-thread))
                                       (let ()
                                         (declare (not safe))
                                         (##thread-deadlock-action!))
                                       (if (macro-thread-end-condvar
                                            _%owner142654%_)
                                           (let ()
                                             (let ()
                                               (declare (not safe))
                                               (##thread-yield!))
                                             (_%again142645%_ '0))
                                           (let ()
                                             (declare (not safe))
                                             (##thread-deadlock-action!)))))))))
                     (let ((_%$r142668%_
                            (let* ((_%props142660%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%super142641%_
                                       '9
                                       '#f
                                       '#f)))
                                   (_%$e142662%_
                                    (assq 'subclasses: _%props142660%_)))
                              (if _%$e142662%_
                                  (set-cdr!
                                   _%$e142662%_
                                   (cons _%klass142639%_ (cdr _%$e142662%_)))
                                  (let ((__tmp146208
                                         (cons (cons 'subclasses:
                                                     (cons _%klass142639%_
                                                           '()))
                                               _%props142660%_)))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _%super142641%_
                                     __tmp146208
                                     '9
                                     '#f
                                     '#f))))))
                       (let ()
                         (declare (not interrupts-enabled))
                         (begin
                           (let ()
                             (declare (not safe))
                             (##vector-set!
                              __class-type-properties-lock
                              '1
                              '#f))
                           (let ()
                             (declare (not safe))
                             (##vector-cas!
                              __class-type-properties-lock
                              '0
                              '0
                              '1))))
                       _%$r142668%_))
                   (let ()
                     (declare (not safe))
                     (agetq__% 'direct-supers: _%properties142513%_ '())))
                  _%klass142639%_))))))
    (define class-type-id
      (lambda (_%klass142506%_)
        (##structure-ref _%klass142506%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass142504%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass142504%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass142501%_ _%val142502%_)
        (##structure-set! _%klass142501%_ _%val142502%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass142496%_ _%val142498%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass142496%_
           _%val142498%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass142494%_)
        (##structure-ref _%klass142494%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass142492%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass142492%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass142489%_ _%val142490%_)
        (##structure-set! _%klass142489%_ _%val142490%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass142484%_ _%val142486%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass142484%_
           _%val142486%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass142482%_)
        (##structure-ref _%klass142482%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass142480%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass142480%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass142477%_ _%val142478%_)
        (##structure-set! _%klass142477%_ _%val142478%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass142472%_ _%val142474%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass142472%_
           _%val142474%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass142470%_)
        (##structure-ref _%klass142470%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass142468%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass142468%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass142465%_ _%val142466%_)
        (##structure-set! _%klass142465%_ _%val142466%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass142460%_ _%val142462%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass142460%_
           _%val142462%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass142458%_)
        (##structure-ref _%klass142458%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass142456%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass142456%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass142453%_ _%val142454%_)
        (##structure-set! _%klass142453%_ _%val142454%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass142448%_ _%val142450%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass142448%_
           _%val142450%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass142446%_)
        (##structure-ref _%klass142446%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass142444%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass142444%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass142441%_ _%val142442%_)
        (##structure-set!
         _%klass142441%_
         _%val142442%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass142436%_ _%val142438%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass142436%_
           _%val142438%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass142434%_)
        (##structure-ref _%klass142434%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass142432%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass142432%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass142429%_ _%val142430%_)
        (##structure-set!
         _%klass142429%_
         _%val142430%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass142424%_ _%val142426%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass142424%_
           _%val142426%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass142422%_)
        (##structure-ref _%klass142422%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass142420%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass142420%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass142417%_ _%val142418%_)
        (##structure-set!
         _%klass142417%_
         _%val142418%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass142412%_ _%val142414%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass142412%_
           _%val142414%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass142410%_)
        (##structure-ref _%klass142410%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass142408%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass142408%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass142405%_ _%val142406%_)
        (##structure-set!
         _%klass142405%_
         _%val142406%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass142400%_ _%val142402%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass142400%_
           _%val142402%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass142398%_)
        (##structure-ref _%klass142398%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass142396%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass142396%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass142393%_ _%val142394%_)
        (##structure-set!
         _%klass142393%_
         _%val142394%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass142388%_ _%val142390%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass142388%_
           _%val142390%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass142386%_)
        (##structure-ref _%klass142386%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass142384%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass142384%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass142381%_ _%val142382%_)
        (##structure-set!
         _%klass142381%_
         _%val142382%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass142376%_ _%val142378%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass142376%_
           _%val142378%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass142374%_)
        (##structure-ref _%klass142374%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass142372%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass142372%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass142369%_ _%val142370%_)
        (##structure-set!
         _%klass142369%_
         _%val142370%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass142364%_ _%val142366%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass142364%_
           _%val142366%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass142362%_)
        (##structure-ref _%klass142362%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass142360%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass142360%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass142357%_ _%val142358%_)
        (##structure-set!
         _%klass142357%_
         _%val142358%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass142352%_ _%val142354%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass142352%_
           _%val142354%_
           '13
           class::t
           'interface))))
    (define type-field-list
      (lambda (_%type142116%_)
        (letrec ((_%__fields->list142246%_
                  (lambda (_%fields142310%_)
                    (let* ((_%fields142313%_ _%fields142310%_)
                           (_%fields-len142322%_
                            (let ()
                              (declare (not safe))
                              (##vector-length _%fields142313%_))))
                      (let _%loop142324%_ ((_%i142326%_ '0) (_%r142327%_ '()))
                        (let* ((_%i142330%_ _%i142326%_)
                               (_%r142343%_ _%r142327%_))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i142330%_ _%fields-len142322%_))
                              (_%loop142324%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i142330%_ '3))
                               (cons (vector-ref _%fields142313%_ _%i142330%_)
                                     _%r142343%_))
                              (reverse! _%r142343%_)))))))
                 (_%fields->list142247%_
                  (lambda (_%fields142298%_)
                    (let ((_%fields142301%_ _%fields142298%_))
                      (_%__fields->list142246%_ _%fields142301%_)))))
          (let _%loop142249%_ ((_%type142251%_ _%type142116%_))
            (if (let () (declare (not safe)) (##type? _%type142251%_))
                (if (eq? _%type142251%_ ##type-type)
                    '()
                    (let ((_%$e142256%_
                           (let ()
                             (declare (not safe))
                             (##type-super _%type142251%_))))
                      (if _%$e142256%_
                          (let ((__tmp146210 (_%loop142249%_ _%$e142256%_))
                                (__tmp146209
                                 (let* ((_%fields142262%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-fields _%type142251%_)))
                                        (_%fields142266%_ _%fields142262%_))
                                   (_%__fields->list142246%_
                                    _%fields142266%_))))
                            (declare (not safe))
                            (##append __tmp146210 __tmp146209))
                          (let* ((_%fields142283%_
                                  (let ()
                                    (declare (not safe))
                                    (##type-fields _%type142251%_)))
                                 (_%fields142287%_ _%fields142283%_))
                            (_%__fields->list142246%_ _%fields142287%_)))))
                '())))))
    (define __class-type-field-list
      (lambda (_%klass142084%_)
        (let ((_%klass142087%_ _%klass142084%_))
          (letrec ((_%get-fields!142096%_
                    (lambda (_%klass142111%_ _%type142112%_)
                      (let ((_%fields142114%_
                             (type-field-list _%type142112%_)))
                        (##structure-set!
                         _%klass142111%_
                         (cons (cons 'fields: _%fields142114%_)
                               (##structure-ref
                                _%klass142111%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%fields142114%_))))
            (let* ((_%props142098%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass142087%_ '9 '#f '#f)))
                   (_%$e142100%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'fields: _%props142098%_))))
              (if _%$e142100%_
                  _%$e142100%_
                  (let ((_%$e142103%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props142098%_))))
                    (if _%$e142103%_
                        (_%get-fields!142096%_ _%klass142087%_ _%$e142103%_)
                        (_%get-fields!142096%_
                         _%klass142087%_
                         _%klass142087%_)))))))))
    (define class-type-field-list
      (lambda (_%klass142070%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142070%_ 'class))
            (let ((_%klass142074%_ _%klass142070%_))
              (__class-type-field-list _%klass142074%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@409.30-409.35"
               'contract:
               'class-type?
               'value:
               _%klass142070%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass142058%_)
        (let ((_%klass142061%_ _%klass142058%_))
          (vector->list
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass142061%_ '7 '#f '#f))
           '1))))
    (define class-type-slot-list
      (lambda (_%klass142044%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142044%_ 'class))
            (let ((_%klass142048%_ _%klass142044%_))
              (__class-type-slot-list _%klass142048%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@425.29-425.34"
               'contract:
               'class-type?
               'value:
               _%klass142044%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass142032%_)
        (let* ((_%klass142035%_ _%klass142032%_)
               (__tmp146211
                (let ((__tmp146212
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass142035%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp146212))))
          (declare (not safe))
          (##fx- __tmp146211 '1))))
    (define class-type-field-count
      (lambda (_%klass142018%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142018%_ 'class))
            (let ((_%klass142022%_ _%klass142018%_))
              (__class-type-field-count _%klass142022%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@427.31-427.36"
               'contract:
               'class-type?
               'value:
               _%klass142018%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass142006%_)
        (let ((_%klass142009%_ _%klass142006%_))
          (let ((__tmp146213
                 (let ((__tmp146214
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass142009%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp146214))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass142009%_
             __tmp146213
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define class-type-seal!
      (lambda (_%klass141992%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass141992%_ 'class))
            (let ((_%klass141996%_ _%klass141992%_))
              (__class-type-seal! _%klass141996%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@430.25-430.30"
               'contract:
               'class-type?
               'value:
               _%klass141992%_)
              '#!void))))
    (define __class-type-properties-lock (vector '0 '#f))
    (define __class-type-properties-put!
      (lambda (_%klass141946%_ _%key141947%_ _%val141948%_)
        (let* ((_%klass141951%_ _%klass141946%_) (_%key141959%_ _%key141947%_))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again141970%_ ((_%spin141973%_ '0))
              (if (let ((__tmp146215
                         (let ()
                           (declare (not safe))
                           (##vector-cas!
                            __class-type-properties-lock
                            '0
                            '1
                            '0))))
                    (declare (not safe))
                    (##fx= __tmp146215 '0))
                  (let ((__tmp146216 (current-thread)))
                    (declare (not safe))
                    (##vector-set!
                     __class-type-properties-lock
                     '1
                     __tmp146216))
                  (if (let () (declare (not safe)) (##fx< _%spin141973%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again141970%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin141973%_ '1))))
                      (let ((_%owner141979%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref
                                __class-type-properties-lock
                                '1))))
                        (if (eq? _%owner141979%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner141979%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again141970%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r141987%_
                 (let ((_%props141985%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass141951%_
                           '9
                           '#f
                           '#f))))
                   (if (assq _%key141959%_ _%props141985%_)
                       '#!void
                       (let ((__tmp146217
                              (cons (cons _%key141959%_ _%val141948%_)
                                    _%props141985%_)))
                         (declare (not safe))
                         (##unchecked-structure-set!
                          _%klass141951%_
                          __tmp146217
                          '9
                          '#f
                          '#f))))))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! __class-type-properties-lock '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! __class-type-properties-lock '0 '0 '1))))
            _%$r141987%_))))
    (define class-type-properties-put!
      (lambda (_%klass141920%_ _%key141921%_ _%val141922%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass141920%_ 'class))
            (let ((_%klass141926%_ _%klass141920%_))
              (if (keyword? _%key141921%_)
                  (let ((_%key141936%_ _%key141921%_))
                    (__class-type-properties-put!
                     _%klass141926%_
                     _%key141936%_
                     _%val141922%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@438.52-438.55"
                     'contract:
                     'keyword?
                     'value:
                     _%key141921%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@438.35-438.40"
               'contract:
               'class-type?
               'value:
               _%klass141920%_)
              '#!void))))
    (define __class-type-printable-slots
      (lambda (_%klass141814%_)
        (let ((_%klass141817%_ _%klass141814%_))
          (letrec ((_%get-field-vector141826%_
                    (lambda (_%type141904%_)
                      (let _%loop141906%_ ((_%type141908%_ _%type141904%_))
                        (let* ((_%fields141910%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type141908%_)))
                               (_%$e141912%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type141908%_))))
                          (if _%$e141912%_
                              (let ((_%super-fields141917%_
                                     (_%loop141906%_ _%$e141912%_)))
                                (vector-append
                                 _%super-fields141917%_
                                 _%fields141910%_))
                              _%fields141910%_)))))
                   (_%get-printable-slot-alist141827%_
                    (lambda (_%type141887%_)
                      (let* ((_%fields141889%_
                              (_%get-field-vector141826%_ _%type141887%_))
                             (_%count141891%_
                              (vector-length _%fields141889%_)))
                        (let _%loop141894%_ ((_%i141896%_ '0)
                                             (_%offset141897%_ '1)
                                             (_%r141898%_ '()))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i141896%_ _%count141891%_))
                              (let ((_%slot-name141900%_
                                     (vector-ref _%fields141889%_ _%i141896%_))
                                    (_%slot-flags141901%_
                                     (vector-ref
                                      _%fields141889%_
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%i141896%_ '1))))
                                    (_%next-i141902%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i141896%_ '3))))
                                (if (let ((__tmp146218
                                           (let ()
                                             (declare (not safe))
                                             (##fxand _%slot-flags141901%_
                                                      '1))))
                                      (declare (not safe))
                                      (##fx= __tmp146218 '0))
                                    (_%loop141894%_
                                     _%next-i141902%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset141897%_ '1))
                                     (cons (cons _%slot-name141900%_
                                                 _%offset141897%_)
                                           _%r141898%_))
                                    (_%loop141894%_
                                     _%next-i141902%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset141897%_ '1))
                                     _%r141898%_)))
                              (reverse! _%r141898%_))))))
                   (_%get-printable-slots!141828%_
                    (lambda (_%klass141843%_ _%type141844%_)
                      (let ((_%printable141846%_
                             (_%get-printable-slot-alist141827%_
                              _%type141844%_)))
                        (let* ((_%klass141848%_ _%klass141843%_)
                               (_%key141851%_ 'printable-slots:)
                               (_%val141854%_ _%printable141846%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%klass141848%_
                                 'class))
                              (let* ((_%klass141859%_ _%klass141848%_)
                                     (_%key141877%_ _%key141851%_))
                                (__class-type-properties-put!
                                 _%klass141859%_
                                 _%key141877%_
                                 _%val141854%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 'gerbil/runtime/mop
                                 'contract:
                                 'class-type?
                                 'value:
                                 _%klass141848%_)
                                '#!void)))
                        _%printable141846%_))))
            (let* ((_%props141830%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass141817%_ '9 '#f '#f)))
                   (_%$e141832%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'printable-slots: _%props141830%_))))
              (if _%$e141832%_
                  _%$e141832%_
                  (let ((_%$e141835%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props141830%_))))
                    (if _%$e141835%_
                        (_%get-printable-slots!141828%_
                         _%klass141817%_
                         _%$e141835%_)
                        (_%get-printable-slots!141828%_
                         _%klass141817%_
                         _%klass141817%_)))))))))
    (define class-type-printable-slots
      (lambda (_%klass141800%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass141800%_ 'class))
            (let ((_%klass141804%_ _%klass141800%_))
              (__class-type-printable-slots _%klass141804%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@447.35-447.40"
               'contract:
               'class-type?
               'value:
               _%klass141800%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct141769%_ _%maybe-super-struct141770%_)
        (let* ((_%maybe-sub-struct141773%_ _%maybe-sub-struct141769%_)
               (_%maybe-super-struct141781%_ _%maybe-super-struct141770%_)
               (_%maybe-super-struct-id141790%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct141781%_))))
          (let _%lp141792%_ ((_%super-struct141794%_
                              _%maybe-sub-struct141773%_))
            (if (not _%super-struct141794%_)
                '#f
                (if (eq? _%maybe-super-struct-id141790%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct141794%_)))
                    '#t
                    (_%lp141792%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct141794%_)))))))))
    (define substruct?
      (lambda (_%maybe-sub-struct141744%_ _%maybe-super-struct141745%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct141744%_ 'class))
            (let ((_%maybe-sub-struct141749%_ _%maybe-sub-struct141744%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct141745%_
                     'class))
                  (let ((_%maybe-super-struct141759%_
                         _%maybe-super-struct141745%_))
                    (__substruct?
                     _%maybe-sub-struct141749%_
                     _%maybe-super-struct141759%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@491.47-491.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct141745%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@491.19-491.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct141744%_)
              '#!void))))
    (define base-struct/1
      (lambda (_%klass141722%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass141722%_ 'class))
            (if (let* ((_%klass141725%_ _%klass141722%_)
                       (_%klass141730%_ _%klass141725%_))
                  (__class-type-struct? _%klass141730%_))
                _%klass141722%_
                (let () (declare (not safe)) (##type-super _%klass141722%_)))
            (if (not _%klass141722%_)
                '#f
                (error '"not a class or false" _%klass141722%_)))))
    (define base-struct/2
      (lambda (_%klass1141645%_ _%klass2141646%_)
        (let ((_%s1141648%_ (base-struct/1 _%klass1141645%_))
              (_%s2141649%_ (base-struct/1 _%klass2141646%_)))
          (if (or (not _%s1141648%_)
                  (and _%s2141649%_
                       (let* ((_%maybe-sub-struct141654%_ _%s1141648%_)
                              (_%maybe-super-struct141657%_ _%s2141649%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%maybe-sub-struct141654%_
                                'class))
                             (let ((_%maybe-sub-struct141662%_
                                    _%maybe-sub-struct141654%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%maybe-super-struct141657%_
                                      'class))
                                   (let ((_%maybe-super-struct141676%_
                                          _%maybe-super-struct141657%_))
                                     (__substruct?
                                      _%maybe-sub-struct141662%_
                                      _%maybe-super-struct141676%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%maybe-super-struct141657%_)
                                     '#!void)))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%maybe-sub-struct141654%_)
                               '#!void)))))
              _%s2141649%_
              (if (or (not _%s2141649%_)
                      (and _%s1141648%_
                           (let* ((_%maybe-sub-struct141690%_ _%s2141649%_)
                                  (_%maybe-super-struct141693%_ _%s1141648%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%maybe-sub-struct141690%_
                                    'class))
                                 (let ((_%maybe-sub-struct141698%_
                                        _%maybe-sub-struct141690%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%maybe-super-struct141693%_
                                          'class))
                                       (let ((_%maybe-super-struct141710%_
                                              _%maybe-super-struct141693%_))
                                         (__substruct?
                                          _%maybe-sub-struct141698%_
                                          _%maybe-super-struct141710%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          'class-type?
                                          'value:
                                          _%maybe-super-struct141693%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'class-type?
                                    'value:
                                    _%maybe-sub-struct141690%_)
                                   '#!void)))))
                  _%s1141648%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1141645%_
                         _%klass2141646%_
                         _%s1141648%_
                         _%s2141649%_))))))
    (define base-struct/list
      (lambda (_%all-supers141530%_)
        (let* ((_%$%all-supers141531141556%_ _%all-supers141530%_)
               (_%$%E141536141560%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%all-supers141531141556%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%$%K141554141642%_ (lambda () '#f))
                (_%$%K141551141628%_
                 (lambda (_%x141626%_) (base-struct/1 _%x141626%_)))
                (_%$%K141546141605%_
                 (lambda (_%y141602%_ _%x141603%_)
                   (base-struct/2 _%x141603%_ _%y141602%_)))
                (_%$%K141537141567%_
                 (lambda (_%y141564%_ _%x141565%_)
                   (let ()
                     (declare (not safe))
                     (foldr__0 base-struct/2 _%x141565%_ _%y141564%_)))))
            (let* ((_%__match144979144980%_
                    (lambda (_%$%hd141538141570%_ _%$%tl141539141572%_)
                      (let ((_%x141575%_ _%$%hd141538141570%_))
                        (letrec ((_%$%splice-rest141541141577%_
                                  (lambda (_%$%rest141545141584%_ _%y141586%_)
                                    (if (null? _%$%rest141545141584%_)
                                        (_%$%K141537141567%_
                                         _%y141586%_
                                         _%x141575%_)
                                        (_%$%E141536141560%_))))
                                 (_%$%splice-try141543141579%_
                                  (lambda (_%$%hd141544141588%_
                                           _%$%rest141545141590%_
                                           _%$%y141540141591%_)
                                    (let ((_%y141593%_ _%$%hd141544141588%_))
                                      (_%$%splice-loop141542141581%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest141545141590%_))
                                       (cons _%y141593%_
                                             _%$%y141540141591%_)))))
                                 (_%$%splice-loop141542141581%_
                                  (lambda (_%$%rest141545141595%_
                                           _%$%y141540141596%_)
                                    (if (pair? _%$%rest141545141595%_)
                                        (_%$%splice-try141543141579%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%rest141545141595%_))
                                         _%$%rest141545141595%_
                                         _%$%y141540141596%_)
                                        (_%$%splice-rest141541141577%_
                                         _%$%rest141545141595%_
                                         (reverse _%$%y141540141596%_))))))
                          (_%$%splice-loop141542141581%_
                           _%$%tl141539141572%_
                           '())))))
                   (_%$%try-match141533141638%_
                    (lambda ()
                      (if (pair? _%$%all-supers141531141556%_)
                          (let ((_%$%tl141553141633%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%all-supers141531141556%_)))
                                (_%$%hd141552141631%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%all-supers141531141556%_))))
                            (if (null? _%$%tl141553141633%_)
                                (let ((_%x141636%_ _%$%hd141552141631%_))
                                  (base-struct/1 _%x141636%_))
                                (if (pair? _%$%tl141553141633%_)
                                    (let ((_%$%tl141550141617%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl141553141633%_)))
                                          (_%$%hd141549141615%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl141553141633%_))))
                                      (if (null? _%$%tl141550141617%_)
                                          (let ((_%x141613%_
                                                 _%$%hd141552141631%_)
                                                (_%y141620%_
                                                 _%$%hd141549141615%_))
                                            (_%$%K141546141605%_
                                             _%y141620%_
                                             _%x141613%_))
                                          (_%__match144979144980%_
                                           _%$%hd141552141631%_
                                           _%$%tl141553141633%_)))
                                    (_%__match144979144980%_
                                     _%$%hd141552141631%_
                                     _%$%tl141553141633%_))))
                          (_%$%E141536141560%_)))))
              (if (null? _%$%all-supers141531141556%_)
                  (_%$%K141554141642%_)
                  (_%$%try-match141533141638%_)))))))
    (define base-struct
      (lambda _%all-supers141528%_ (base-struct/list _%all-supers141528%_)))
    (define find-super-constructor
      (lambda (_%super141479%_)
        (let _%lp141481%_ ((_%rest141483%_ _%super141479%_)
                           (_%constructor141484%_ '#f))
          (let* ((_%$%rest141485141493%_ _%rest141483%_)
                 (_%$%else141487141501%_ (lambda () _%constructor141484%_))
                 (_%$%K141489141516%_
                  (lambda (_%rest141504%_ _%hd141505%_)
                    (let ((_%$e141507%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd141505%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e141507%_
                          (if (or (not _%constructor141484%_)
                                  (eq? _%constructor141484%_ _%$e141507%_))
                              (_%lp141481%_ _%rest141504%_ _%$e141507%_)
                              (error '"conflicting implicit constructors"
                                     _%constructor141484%_
                                     _%$e141507%_))
                          (_%lp141481%_
                           _%rest141504%_
                           _%constructor141484%_))))))
            (if (pair? _%$%rest141485141493%_)
                (let ((_%$%hd141490141519%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest141485141493%_)))
                      (_%$%tl141491141521%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest141485141493%_))))
                  (let* ((_%hd141524%_ _%$%hd141490141519%_)
                         (_%rest141526%_ _%$%tl141491141521%_))
                    (_%$%K141489141516%_ _%rest141526%_ _%hd141524%_)))
                (_%$%else141487141501%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list141471%_ _%direct-slots141472%_)
        (let ((__tmp146220
               (lambda (_%mixin141474%_)
                 (let ((__tmp146221
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%mixin141474%_
                           '9
                           '#f
                           '#f))))
                   (declare (not safe))
                   (agetq__% 'direct-slots: __tmp146221 '()))))
              (__tmp146219
               (lambda (_%slot-list141476%_ _%slot-table141477%_)
                 (values (list->vector _%slot-list141476%_)
                         _%slot-table141477%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%class-precedence-list141471%_
           _%direct-slots141472%_
           __tmp146220
           __tmp146219))))
    (define __make-class-type
      (lambda (_%id141298%_
               _%name141299%_
               _%direct-supers141300%_
               _%direct-slots141301%_
               _%properties141302%_
               _%constructor141303%_)
        (let* ((_%id141306%_ _%id141298%_)
               (_%name141314%_ _%name141299%_)
               (_%direct-supers141322%_ _%direct-supers141300%_)
               (_%direct-slots141330%_ _%direct-slots141301%_)
               (_%properties141338%_ _%properties141302%_)
               (_%constructor141346%_ _%constructor141303%_))
          (let ((_%$e141380%_
                 (let* ((_%pred141358%_
                         (lambda (_%$obj141355%_)
                           (not (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%$obj141355%_
                                   'class)))))
                        (_%lst141361%_ _%direct-supers141322%_)
                        (_%pred141366%_ _%pred141358%_))
                   (declare (not safe))
                   (__find _%pred141366%_ _%lst141361%_))))
            (if _%$e141380%_
                (error '"Illegal super class; not a class descriptor"
                       _%$e141380%_)
                (let ((_%$e141407%_
                       (let* ((_%pred141387%_ __class-type-final?)
                              (_%lst141390%_ _%direct-supers141322%_)
                              (_%pred141395%_ _%pred141387%_))
                         (declare (not safe))
                         (__find _%pred141395%_ _%lst141390%_))))
                  (if _%$e141407%_
                      (error '"Cannot extend final class" _%$e141407%_)
                      '#!void))))
          (let ((_g146222_ (compute-precedence-list _%direct-supers141322%_)))
            (begin
              (let ((_g146223_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g146222_)
                           (##values-length _g146222_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g146223_ 2)))
                    (error "Context expects 2 values" _g146223_)))
              (let ((_%precedence-list141414%_
                     (let () (declare (not safe)) (##values-ref _g146222_ 0)))
                    (_%struct-super141415%_
                     (let () (declare (not safe)) (##values-ref _g146222_ 1))))
                (let ((_g146224_
                       (compute-class-slots
                        _%precedence-list141414%_
                        _%direct-slots141330%_)))
                  (begin
                    (let ((_g146225_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g146224_)
                                 (##values-length _g146224_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g146225_ 2)))
                          (error "Context expects 2 values" _g146225_)))
                    (let ((_%slot-vector141417%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g146224_ 0)))
                          (_%slot-table141418%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g146224_ 1))))
                      (let* ((_%properties141420%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots141330%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers141322%_)
                                          _%properties141338%_)))
                             (_%constructor*141425%_
                              (let ((_%$e141422%_ _%constructor141346%_))
                                (if _%$e141422%_
                                    _%$e141422%_
                                    (find-super-constructor
                                     _%direct-supers141322%_))))
                             (_%precedence-list141468%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties141420%_))
                                      (memq object::t
                                            _%precedence-list141414%_))
                                  _%precedence-list141414%_
                                  (let _%loop141430%_ ((_%tail141432%_
                                                        _%precedence-list141414%_)
                                                       (_%head141433%_ '()))
                                    (let* ((_%$%tail141434141442%_
                                            _%tail141432%_)
                                           (_%$%else141436141450%_
                                            (lambda ()
                                              (let ((__tmp146226
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp146226
                                                 _%head141433%_))))
                                           (_%$%K141438141456%_
                                            (lambda (_%rest141453%_
                                                     _%hd141454%_)
                                              (if (eq? _%hd141454%_ t::t)
                                                  (let ((__tmp146227
                                                         (cons object::t
                                                               _%tail141432%_)))
                                                    (declare (not safe))
                                                    (foldl__0
                                                     cons
                                                     __tmp146227
                                                     _%head141433%_))
                                                  (_%loop141430%_
                                                   _%rest141453%_
                                                   (cons _%hd141454%_
                                                         _%head141433%_))))))
                                      (if (pair? _%$%tail141434141442%_)
                                          (let ((_%$%hd141439141459%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tail141434141442%_)))
                                                (_%$%tl141440141461%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tail141434141442%_))))
                                            (let* ((_%hd141464%_
                                                    _%$%hd141439141459%_)
                                                   (_%rest141466%_
                                                    _%$%tl141440141461%_))
                                              (_%$%K141438141456%_
                                               _%rest141466%_
                                               _%hd141464%_)))
                                          (_%$%else141436141450%_)))))))
                        (make-class-type-descriptor
                         _%id141306%_
                         _%name141314%_
                         _%struct-super141415%_
                         _%precedence-list141468%_
                         _%slot-vector141417%_
                         _%properties141420%_
                         _%constructor*141425%_
                         _%slot-table141418%_
                         '#f)))))))))))
    (define make-class-type
      (lambda (_%id141223%_
               _%name141224%_
               _%direct-supers141225%_
               _%direct-slots141226%_
               _%properties141227%_
               _%constructor141228%_)
        (if (symbol? _%id141223%_)
            (let ((_%id141232%_ _%id141223%_))
              (if (symbol? _%name141224%_)
                  (let ((_%name141242%_ _%name141224%_))
                    (if (list? _%direct-supers141225%_)
                        (let ((_%direct-supers141252%_
                               _%direct-supers141225%_))
                          (if (list? _%direct-slots141226%_)
                              (let ((_%direct-slots141262%_
                                     _%direct-slots141226%_))
                                (if (list? _%properties141227%_)
                                    (let ((_%properties141272%_
                                           _%properties141227%_))
                                      (if (or (not _%constructor141228%_)
                                              (symbol? _%constructor141228%_))
                                          (let ((_%constructor141288%_
                                                 _%constructor141228%_))
                                            (__make-class-type
                                             _%id141232%_
                                             _%name141242%_
                                             _%direct-supers141252%_
                                             _%direct-slots141262%_
                                             _%properties141272%_
                                             _%constructor141288%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@572.24-572.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor141228%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@571.24-571.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties141227%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@570.24-570.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots141226%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@569.24-569.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers141225%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@568.24-568.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name141224%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@567.24-567.26"
               'contract:
               'symbol?
               'value:
               _%id141223%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass141211%_)
        (let ((_%klass141214%_ _%klass141211%_))
          (cons _%klass141214%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass141214%_ '6 '#f '#f))))))
    (define class-precedence-list
      (lambda (_%klass141197%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass141197%_ 'class))
            (let ((_%klass141201%_ _%klass141197%_))
              (__class-precedence-list _%klass141201%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@605.30-605.35"
               'contract:
               'class-type?
               'value:
               _%klass141197%_)
              '#!void))))
    (define compute-precedence-list
      (lambda (_%direct-supers141194%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers141194%_))))
    (define __make-class-predicate
      (lambda (_%klass141110%_)
        (let* ((_%klass141113%_ _%klass141110%_)
               (_%tid141122%_
                (let () (declare (not safe)) (##type-id _%klass141113%_))))
          (if (let* ((_%type141124%_ _%klass141113%_)
                     (_%type141129%_ _%type141124%_))
                (__class-type-final? _%type141129%_))
              (lambda (_%$%g141143141145%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%$%g141143141145%_
                   _%tid141122%_)))
              (if (let* ((_%klass141148%_ _%klass141113%_)
                         (_%klass141153%_ _%klass141148%_))
                    (__class-type-struct? _%klass141153%_))
                  (lambda (_%$%g141163141165%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%$%g141163141165%_
                       _%tid141122%_)))
                  (lambda (_%$%g141168141170%_)
                    (let* ((_%klass141173%_ _%klass141113%_)
                           (_%obj141176%_ _%$%g141168141170%_)
                           (_%klass141181%_ _%klass141173%_))
                      (__class-instance? _%klass141181%_ _%obj141176%_))))))))
    (define make-class-predicate
      (lambda (_%klass141096%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass141096%_ 'class))
            (let ((_%klass141100%_ _%klass141096%_))
              (__make-class-predicate _%klass141100%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@617.29-617.34"
               'contract:
               'class-type?
               'value:
               _%klass141096%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass141030%_ _%slot141031%_)
        (let* ((_%klass141034%_ _%klass141030%_)
               (_%slot141042%_ _%slot141031%_)
               (_%field141051%_
                (let ((__tmp146228
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass141034%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp146228 _%slot141042%_ '#f))))
          (if (not _%field141051%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass141034%_
                       'slot:
                       _%slot141042%_)
                '#!void)
              (if (let* ((_%type141055%_ _%klass141034%_)
                         (_%type141060%_ _%type141055%_))
                    (__class-type-final? _%type141060%_))
                  (make-final-slot-accessor
                   _%klass141034%_
                   _%slot141042%_
                   _%field141051%_)
                  (if (let* ((_%klass141075%_ _%klass141034%_)
                             (_%klass141080%_ _%klass141075%_))
                        (__class-type-struct? _%klass141080%_))
                      (make-struct-slot-accessor
                       _%klass141034%_
                       _%slot141042%_
                       _%field141051%_)
                      (if (let ((_%strukt141091%_
                                 (base-struct/1 _%klass141034%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt141091%_
                                    'class))
                                 (let ((__tmp146229
                                        (let ((__tmp146230
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt141091%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp146230))))
                                   (declare (not safe))
                                   (##fx< _%field141051%_ __tmp146229))))
                          (make-struct-subclass-slot-accessor
                           _%klass141034%_
                           _%slot141042%_
                           _%field141051%_)
                          (make-class-cached-slot-accessor
                           _%klass141034%_
                           _%slot141042%_
                           _%field141051%_))))))))
    (define make-class-slot-accessor
      (lambda (_%klass141005%_ _%slot141006%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass141005%_ 'class))
            (let ((_%klass141010%_ _%klass141005%_))
              (if (symbol? _%slot141006%_)
                  (let ((_%slot141020%_ _%slot141006%_))
                    (__make-class-slot-accessor
                     _%klass141010%_
                     _%slot141020%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@648.50-648.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot141006%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@648.33-648.38"
               'contract:
               'class-type?
               'value:
               _%klass141005%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass140939%_ _%slot140940%_)
        (let* ((_%klass140943%_ _%klass140939%_)
               (_%slot140951%_ _%slot140940%_)
               (_%field140960%_
                (let ((__tmp146231
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass140943%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp146231 _%slot140951%_ '#f))))
          (if (not _%field140960%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass140943%_
                       'slot:
                       _%slot140951%_)
                '#!void)
              (if (let* ((_%type140964%_ _%klass140943%_)
                         (_%type140969%_ _%type140964%_))
                    (__class-type-final? _%type140969%_))
                  (make-final-slot-mutator
                   _%klass140943%_
                   _%slot140951%_
                   _%field140960%_)
                  (if (let* ((_%klass140984%_ _%klass140943%_)
                             (_%klass140989%_ _%klass140984%_))
                        (__class-type-struct? _%klass140989%_))
                      (make-struct-slot-mutator
                       _%klass140943%_
                       _%slot140951%_
                       _%field140960%_)
                      (if (let ((_%strukt141000%_
                                 (base-struct/1 _%klass140943%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt141000%_
                                    'class))
                                 (let ((__tmp146232
                                        (let ((__tmp146233
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt141000%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp146233))))
                                   (declare (not safe))
                                   (##fx< _%field140960%_ __tmp146232))))
                          (make-struct-subclass-slot-mutator
                           _%klass140943%_
                           _%slot140951%_
                           _%field140960%_)
                          (make-class-cached-slot-mutator
                           _%klass140943%_
                           _%slot140951%_
                           _%field140960%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass140914%_ _%slot140915%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140914%_ 'class))
            (let ((_%klass140919%_ _%klass140914%_))
              (if (symbol? _%slot140915%_)
                  (let ((_%slot140929%_ _%slot140915%_))
                    (__make-class-slot-mutator _%klass140919%_ _%slot140929%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@656.49-656.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot140915%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@656.32-656.37"
               'contract:
               'class-type?
               'value:
               _%klass140914%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass140848%_ _%slot140849%_)
        (let* ((_%klass140852%_ _%klass140848%_)
               (_%slot140860%_ _%slot140849%_)
               (_%field140869%_
                (let ((__tmp146234
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass140852%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp146234 _%slot140860%_ '#f))))
          (if (not _%field140869%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass140852%_
                       'slot:
                       _%slot140860%_)
                '#!void)
              (if (let* ((_%type140873%_ _%klass140852%_)
                         (_%type140878%_ _%type140873%_))
                    (__class-type-final? _%type140878%_))
                  (make-struct-slot-unchecked-accessor
                   _%klass140852%_
                   _%slot140860%_
                   _%field140869%_)
                  (if (let* ((_%klass140893%_ _%klass140852%_)
                             (_%klass140898%_ _%klass140893%_))
                        (__class-type-struct? _%klass140898%_))
                      (make-struct-slot-unchecked-accessor
                       _%klass140852%_
                       _%slot140860%_
                       _%field140869%_)
                      (if (let ((_%strukt140909%_
                                 (base-struct/1 _%klass140852%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt140909%_
                                    'class))
                                 (let ((__tmp146235
                                        (let ((__tmp146236
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt140909%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp146236))))
                                   (declare (not safe))
                                   (##fx< _%field140869%_ __tmp146235))))
                          (make-struct-slot-unchecked-accessor
                           _%klass140852%_
                           _%slot140860%_
                           _%field140869%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass140852%_
                           _%slot140860%_
                           _%field140869%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass140823%_ _%slot140824%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140823%_ 'class))
            (let ((_%klass140828%_ _%klass140823%_))
              (if (symbol? _%slot140824%_)
                  (let ((_%slot140838%_ _%slot140824%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass140828%_
                     _%slot140838%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@664.60-664.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot140824%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@664.43-664.48"
               'contract:
               'class-type?
               'value:
               _%klass140823%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass140757%_ _%slot140758%_)
        (let* ((_%klass140761%_ _%klass140757%_)
               (_%slot140769%_ _%slot140758%_)
               (_%field140778%_
                (let ((__tmp146237
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass140761%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp146237 _%slot140769%_ '#f))))
          (if (not _%field140778%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass140761%_
                       'slot:
                       _%slot140769%_)
                '#!void)
              (if (let* ((_%type140782%_ _%klass140761%_)
                         (_%type140787%_ _%type140782%_))
                    (__class-type-final? _%type140787%_))
                  (make-struct-slot-unchecked-mutator
                   _%klass140761%_
                   _%slot140769%_
                   _%field140778%_)
                  (if (let* ((_%klass140802%_ _%klass140761%_)
                             (_%klass140807%_ _%klass140802%_))
                        (__class-type-struct? _%klass140807%_))
                      (make-struct-slot-unchecked-mutator
                       _%klass140761%_
                       _%slot140769%_
                       _%field140778%_)
                      (if (let ((_%strukt140818%_
                                 (base-struct/1 _%klass140761%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt140818%_
                                    'class))
                                 (let ((__tmp146238
                                        (let ((__tmp146239
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt140818%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp146239))))
                                   (declare (not safe))
                                   (##fx< _%field140778%_ __tmp146238))))
                          (make-struct-slot-unchecked-mutator
                           _%klass140761%_
                           _%slot140769%_
                           _%field140778%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass140761%_
                           _%slot140769%_
                           _%field140778%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass140732%_ _%slot140733%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140732%_ 'class))
            (let ((_%klass140737%_ _%klass140732%_))
              (if (symbol? _%slot140733%_)
                  (let ((_%slot140747%_ _%slot140733%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass140737%_
                     _%slot140747%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@672.59-672.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot140733%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@672.42-672.47"
               'contract:
               'class-type?
               'value:
               _%klass140732%_)
              '#!void))))
    (define not-an-instance__%
      (lambda (_%object140716%_ _%class140717%_ _%slot140718%_)
        (apply error
               '"not an instance"
               'object:
               _%object140716%_
               'class:
               _%class140717%_
               (if _%slot140718%_
                   (cons 'slot: (cons _%slot140718%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object140723%_ _%class140724%_)
        (let ((_%slot140726%_ '#f))
          (not-an-instance__%
           _%object140723%_
           _%class140724%_
           _%slot140726%_))))
    (define not-an-instance
      (lambda _g146240_
        (let ((_g146241_ (let () (declare (not safe)) (##length _g146240_))))
          (cond ((let () (declare (not safe)) (##fx= _g146241_ 2))
                 (apply not-an-instance__0 _g146240_))
                ((let () (declare (not safe)) (##fx= _g146241_ 3))
                 (apply not-an-instance__% _g146240_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g146240_))))))
    (define make-final-slot-accessor
      (lambda (_%klass140709%_ _%slot140710%_ _%field140711%_)
        (lambda (_%obj140713%_)
          (##direct-structure-ref
           _%obj140713%_
           _%field140711%_
           _%klass140709%_
           _%slot140710%_))))
    (define make-final-slot-mutator
      (lambda (_%klass140702%_ _%slot140703%_ _%field140704%_)
        (lambda (_%obj140706%_ _%val140707%_)
          (##direct-structure-set!
           _%obj140706%_
           _%val140707%_
           _%field140704%_
           _%klass140702%_
           _%slot140703%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass140696%_ _%slot140697%_ _%field140698%_)
        (lambda (_%obj140700%_)
          (##structure-ref
           _%obj140700%_
           _%field140698%_
           _%klass140696%_
           _%slot140697%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass140689%_ _%slot140690%_ _%field140691%_)
        (lambda (_%obj140693%_ _%val140694%_)
          (##structure-set!
           _%obj140693%_
           _%val140694%_
           _%field140691%_
           _%klass140689%_
           _%slot140690%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass140683%_ _%slot140684%_ _%field140685%_)
        (lambda (_%obj140687%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj140687%_
             _%field140685%_
             _%klass140683%_
             _%slot140684%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass140676%_ _%slot140677%_ _%field140678%_)
        (lambda (_%obj140680%_ _%val140681%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj140680%_
             _%val140681%_
             _%field140678%_
             _%klass140676%_
             _%slot140677%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass140649%_ _%slot140650%_ _%field140651%_)
        (lambda (_%obj140653%_)
          (if (let* ((_%klass140655%_ _%klass140649%_)
                     (_%obj140658%_ _%obj140653%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass140655%_ 'class))
                    (let ((_%klass140663%_ _%klass140655%_))
                      (__class-instance? _%klass140663%_ _%obj140658%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass140655%_)
                      '#!void)))
              (unchecked-slot-ref _%obj140653%_ _%field140651%_)
              (not-an-instance__%
               _%obj140653%_
               _%klass140649%_
               _%slot140650%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass140621%_ _%slot140622%_ _%field140623%_)
        (lambda (_%obj140625%_ _%val140626%_)
          (if (let* ((_%klass140628%_ _%klass140621%_)
                     (_%obj140631%_ _%obj140625%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass140628%_ 'class))
                    (let ((_%klass140636%_ _%klass140628%_))
                      (__class-instance? _%klass140636%_ _%obj140631%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass140628%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj140625%_
               _%field140623%_
               _%val140626%_)
              (not-an-instance__%
               _%obj140625%_
               _%klass140621%_
               _%slot140622%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass140572%_ _%slot140573%_ _%field140574%_)
        (lambda (_%obj140576%_)
          (if (let* ((_%klass140578%_ _%klass140572%_)
                     (_%obj140581%_ _%obj140576%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass140578%_ 'class))
                    (let ((_%klass140586%_ _%klass140578%_))
                      (__direct-instance? _%klass140586%_ _%obj140581%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass140578%_)
                      '#!void)))
              (unchecked-field-ref _%obj140576%_ _%field140574%_)
              (if (let* ((_%klass140600%_ _%klass140572%_)
                         (_%obj140603%_ _%obj140576%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass140600%_ 'class))
                        (let ((_%klass140608%_ _%klass140600%_))
                          (__class-instance? _%klass140608%_ _%obj140603%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass140600%_)
                          '#!void)))
                  (unchecked-slot-ref _%obj140576%_ _%slot140573%_)
                  (not-an-instance__%
                   _%obj140576%_
                   _%klass140572%_
                   _%slot140573%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass140522%_ _%slot140523%_ _%field140524%_)
        (lambda (_%obj140526%_ _%val140527%_)
          (if (let* ((_%klass140529%_ _%klass140522%_)
                     (_%obj140532%_ _%obj140526%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass140529%_ 'class))
                    (let ((_%klass140537%_ _%klass140529%_))
                      (__direct-instance? _%klass140537%_ _%obj140532%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass140529%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj140526%_
               _%field140524%_
               _%val140527%_)
              (if (let* ((_%klass140551%_ _%klass140522%_)
                         (_%obj140554%_ _%obj140526%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass140551%_ 'class))
                        (let ((_%klass140559%_ _%klass140551%_))
                          (__class-instance? _%klass140559%_ _%obj140554%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass140551%_)
                          '#!void)))
                  (unchecked-slot-set!
                   _%obj140526%_
                   _%slot140523%_
                   _%val140527%_)
                  (not-an-instance__%
                   _%obj140526%_
                   _%klass140522%_
                   _%slot140523%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass140495%_ _%slot140496%_ _%field140497%_)
        (lambda (_%obj140499%_)
          (if (let* ((_%klass140501%_ _%klass140495%_)
                     (_%obj140504%_ _%obj140499%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass140501%_ 'class))
                    (let ((_%klass140509%_ _%klass140501%_))
                      (__direct-instance? _%klass140509%_ _%obj140504%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass140501%_)
                      '#!void)))
              (unchecked-field-ref _%obj140499%_ _%field140497%_)
              (unchecked-slot-ref _%obj140499%_ _%slot140496%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass140467%_ _%slot140468%_ _%field140469%_)
        (lambda (_%obj140471%_ _%val140472%_)
          (if (let* ((_%klass140474%_ _%klass140467%_)
                     (_%obj140477%_ _%obj140471%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass140474%_ 'class))
                    (let ((_%klass140482%_ _%klass140474%_))
                      (__direct-instance? _%klass140482%_ _%obj140477%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass140474%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj140471%_
               _%field140469%_
               _%val140472%_)
              (unchecked-slot-set!
               _%obj140471%_
               _%slot140468%_
               _%val140472%_)))))
    (define __class-slot-offset
      (lambda (_%klass140446%_ _%slot140447%_)
        (let* ((_%klass140450%_ _%klass140446%_)
               (_%slot140458%_ _%slot140447%_)
               (__tmp146242
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass140450%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp146242 _%slot140458%_ '#f))))
    (define class-slot-offset
      (lambda (_%klass140421%_ _%slot140422%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140421%_ 'class))
            (let ((_%klass140426%_ _%klass140421%_))
              (if (let () (declare (not safe)) (symbolic? _%slot140422%_))
                  (let ((_%slot140436%_ _%slot140422%_))
                    (__class-slot-offset _%klass140426%_ _%slot140436%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@734.43-734.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot140422%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@734.26-734.31"
               'contract:
               'class-type?
               'value:
               _%klass140421%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass140346%_ _%obj140347%_ _%slot140348%_)
        (let* ((_%klass140351%_ _%klass140346%_)
               (_%slot140359%_ _%slot140348%_))
          (if (let* ((_%klass140368%_ _%klass140351%_)
                     (_%obj140371%_ _%obj140347%_)
                     (_%klass140376%_ _%klass140368%_))
                (__class-instance? _%klass140376%_ _%obj140371%_))
              (let ((_%off140419%_
                     (let* ((_%klass140390%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj140347%_)))
                            (_%slot140393%_ _%slot140359%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass140390%_ 'class))
                           (let ((_%klass140398%_ _%klass140390%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot140393%_))
                                 (let ((_%slot140409%_ _%slot140393%_))
                                   (__class-slot-offset
                                    _%klass140398%_
                                    _%slot140409%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot140393%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass140390%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj140347%_
                 _%off140419%_
                 _%klass140351%_
                 _%slot140359%_))
              (not-an-instance__0 _%obj140347%_ _%klass140351%_)))))
    (define class-slot-ref
      (lambda (_%klass140320%_ _%obj140321%_ _%slot140322%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140320%_ 'class))
            (let ((_%klass140326%_ _%klass140320%_))
              (if (let () (declare (not safe)) (symbolic? _%slot140322%_))
                  (let ((_%slot140336%_ _%slot140322%_))
                    (__class-slot-ref
                     _%klass140326%_
                     _%obj140321%_
                     _%slot140336%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@737.44-737.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot140322%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@737.23-737.28"
               'contract:
               'class-type?
               'value:
               _%klass140320%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass140244%_ _%obj140245%_ _%slot140246%_ _%val140247%_)
        (let* ((_%klass140250%_ _%klass140244%_)
               (_%slot140258%_ _%slot140246%_))
          (if (let* ((_%klass140267%_ _%klass140250%_)
                     (_%obj140270%_ _%obj140245%_)
                     (_%klass140275%_ _%klass140267%_))
                (__class-instance? _%klass140275%_ _%obj140270%_))
              (let ((_%off140318%_
                     (let* ((_%klass140289%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj140245%_)))
                            (_%slot140292%_ _%slot140258%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass140289%_ 'class))
                           (let ((_%klass140297%_ _%klass140289%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot140292%_))
                                 (let ((_%slot140308%_ _%slot140292%_))
                                   (__class-slot-offset
                                    _%klass140297%_
                                    _%slot140308%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot140292%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass140289%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj140245%_
                 _%val140247%_
                 _%off140318%_
                 _%klass140250%_
                 _%slot140258%_))
              (not-an-instance__0 _%obj140245%_ _%klass140250%_)))))
    (define class-slot-set!
      (lambda (_%klass140217%_ _%obj140218%_ _%slot140219%_ _%val140220%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140217%_ 'class))
            (let ((_%klass140224%_ _%klass140217%_))
              (if (let () (declare (not safe)) (symbolic? _%slot140219%_))
                  (let ((_%slot140234%_ _%slot140219%_))
                    (__class-slot-set!
                     _%klass140224%_
                     _%obj140218%_
                     _%slot140234%_
                     _%val140220%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@743.45-743.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot140219%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@743.24-743.29"
               'contract:
               'class-type?
               'value:
               _%klass140217%_)
              '#!void))))
    (define unchecked-field-ref
      (lambda (_%obj140214%_ _%off140215%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj140214%_ _%off140215%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj140210%_ _%off140211%_ _%val140212%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj140210%_
           _%val140212%_
           _%off140211%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj140207%_ _%slot140208%_)
        (unchecked-field-ref
         _%obj140207%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj140207%_))
          _%slot140208%_))))
    (define unchecked-slot-set!
      (lambda (_%obj140203%_ _%slot140204%_ _%val140205%_)
        (unchecked-field-set!
         _%obj140203%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj140203%_))
          _%slot140204%_)
         _%val140205%_)))
    (define __slot-error
      (lambda (_%obj140200%_ _%slot140201%_)
        (error '"Cannot find slot"
               'object:
               _%obj140200%_
               'slot:
               _%slot140201%_)))
    (define __slot-ref__%
      (lambda (_%obj140124%_ _%slot140125%_ _%E140126%_)
        (let* ((_%slot140129%_ _%slot140125%_)
               (_%E140137%_ _%E140126%_)
               (_%klass140146%_ (class-of _%obj140124%_))
               (_%$e140182%_
                (let* ((_%klass140149%_ _%klass140146%_)
                       (_%slot140152%_ _%slot140129%_)
                       (_%klass140157%_ _%klass140149%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot140152%_))
                      (let ((_%slot140172%_ _%slot140152%_))
                        (__class-slot-offset _%klass140157%_ _%slot140172%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot140152%_)
                        '#!void)))))
          (if _%$e140182%_
              (unchecked-field-ref _%obj140124%_ _%$e140182%_)
              (let ()
                (declare (not safe))
                (_%E140137%_ _%obj140124%_ _%slot140129%_))))))
    (define __slot-ref__0
      (lambda (_%obj140191%_ _%slot140192%_)
        (let ((_%E140194%_ __slot-error))
          (__slot-ref__% _%obj140191%_ _%slot140192%_ _%E140194%_))))
    (define __slot-ref
      (lambda _g146243_
        (let ((_g146244_ (let () (declare (not safe)) (##length _g146243_))))
          (cond ((let () (declare (not safe)) (##fx= _g146244_ 2))
                 (apply __slot-ref__0 _g146243_))
                ((let () (declare (not safe)) (##fx= _g146244_ 3))
                 (apply __slot-ref__% _g146243_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g146243_))))))
    (define slot-ref__%
      (lambda (_%obj140085%_ _%slot140086%_ _%E140087%_)
        (if (symbol? _%slot140086%_)
            (let ((_%slot140091%_ _%slot140086%_))
              (if (procedure? _%E140087%_)
                  (let ((_%E140101%_ _%E140087%_))
                    (__slot-ref__% _%obj140085%_ _%slot140091%_ _%E140101%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@769.38-769.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E140087%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@769.21-769.25"
               'contract:
               'symbol?
               'value:
               _%slot140086%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj140114%_ _%slot140115%_)
        (let ((_%E140117%_ __slot-error))
          (slot-ref__% _%obj140114%_ _%slot140115%_ _%E140117%_))))
    (define slot-ref
      (lambda _g146245_
        (let ((_g146246_ (let () (declare (not safe)) (##length _g146245_))))
          (cond ((let () (declare (not safe)) (##fx= _g146246_ 2))
                 (apply slot-ref__0 _g146245_))
                ((let () (declare (not safe)) (##fx= _g146246_ 3))
                 (apply slot-ref__% _g146245_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g146245_))))))
    (define __slot-set!__%
      (lambda (_%obj140005%_ _%slot140006%_ _%val140007%_ _%E140008%_)
        (let* ((_%slot140011%_ _%slot140006%_)
               (_%E140019%_ _%E140008%_)
               (_%klass140028%_ (class-of _%obj140005%_))
               (_%$e140064%_
                (let* ((_%klass140031%_ _%klass140028%_)
                       (_%slot140034%_ _%slot140011%_)
                       (_%klass140039%_ _%klass140031%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot140034%_))
                      (let ((_%slot140054%_ _%slot140034%_))
                        (__class-slot-offset _%klass140039%_ _%slot140054%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot140034%_)
                        '#!void)))))
          (if _%$e140064%_
              (unchecked-field-set! _%obj140005%_ _%$e140064%_ _%val140007%_)
              (let ()
                (declare (not safe))
                (_%E140019%_ _%obj140005%_ _%slot140011%_))))))
    (define __slot-set!__0
      (lambda (_%obj140073%_ _%slot140074%_ _%val140075%_)
        (let ((_%E140077%_ __slot-error))
          (__slot-set!__%
           _%obj140073%_
           _%slot140074%_
           _%val140075%_
           _%E140077%_))))
    (define __slot-set!
      (lambda _g146247_
        (let ((_g146248_ (let () (declare (not safe)) (##length _g146247_))))
          (cond ((let () (declare (not safe)) (##fx= _g146248_ 3))
                 (apply __slot-set!__0 _g146247_))
                ((let () (declare (not safe)) (##fx= _g146248_ 4))
                 (apply __slot-set!__% _g146247_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g146247_))))))
    (define slot-set!__%
      (lambda (_%obj139963%_ _%slot139964%_ _%val139965%_ _%E139966%_)
        (if (symbol? _%slot139964%_)
            (let ((_%slot139970%_ _%slot139964%_))
              (if (procedure? _%E139966%_)
                  (let ((_%E139980%_ _%E139966%_))
                    (__slot-set!__%
                     _%obj139963%_
                     _%slot139970%_
                     _%val139965%_
                     _%E139980%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@771.43-771.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E139966%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@771.22-771.26"
               'contract:
               'symbol?
               'value:
               _%slot139964%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj139993%_ _%slot139994%_ _%val139995%_)
        (let ((_%E139997%_ __slot-error))
          (slot-set!__%
           _%obj139993%_
           _%slot139994%_
           _%val139995%_
           _%E139997%_))))
    (define slot-set!
      (lambda _g146249_
        (let ((_g146250_ (let () (declare (not safe)) (##length _g146249_))))
          (cond ((let () (declare (not safe)) (##fx= _g146250_ 3))
                 (apply slot-set!__0 _g146249_))
                ((let () (declare (not safe)) (##fx= _g146250_ 4))
                 (apply slot-set!__% _g146249_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g146249_))))))
    (define __subclass?
      (lambda (_%maybe-sub-class139934%_ _%maybe-super-class139935%_)
        (let* ((_%maybe-sub-class139938%_ _%maybe-sub-class139934%_)
               (_%maybe-super-class139946%_ _%maybe-super-class139935%_)
               (_%maybe-super-class-id139955%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class139946%_)))
               (_%$e139957%_
                (eq? _%maybe-super-class-id139955%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class139938%_)))))
          (if _%$e139957%_
              _%$e139957%_
              (let ((__tmp146252
                     (lambda (_%super-class139960%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class139960%_))
                            _%maybe-super-class-id139955%_)))
                    (__tmp146251
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class139938%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (ormap__0 __tmp146252 __tmp146251))))))
    (define subclass?
      (lambda (_%maybe-sub-class139909%_ _%maybe-super-class139910%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class139909%_ 'class))
            (let ((_%maybe-sub-class139914%_ _%maybe-sub-class139909%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class139910%_
                     'class))
                  (let ((_%maybe-super-class139924%_
                         _%maybe-super-class139910%_))
                    (__subclass?
                     _%maybe-sub-class139914%_
                     _%maybe-super-class139924%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@777.45-777.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class139910%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@777.18-777.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class139909%_)
              '#!void))))
    (define object?
      (lambda (_%o139906%_)
        (if (let () (declare (not safe)) (##structure? _%o139906%_))
            (let ((__tmp146253
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o139906%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp146253 'class))
            '#f)))
    (define __direct-instance?
      (lambda (_%klass139893%_ _%obj139894%_)
        (let* ((_%klass139897%_ _%klass139893%_)
               (__tmp146254
                (let () (declare (not safe)) (##type-id _%klass139897%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj139894%_ __tmp146254))))
    (define direct-instance?
      (lambda (_%klass139878%_ _%obj139879%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139878%_ 'class))
            (let ((_%klass139883%_ _%klass139878%_))
              (__direct-instance? _%klass139883%_ _%obj139879%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@791.25-791.30"
               'contract:
               'class-type?
               'value:
               _%klass139878%_)
              '#!void))))
    (define immediate-instance-of?
      (lambda (_%klass139874%_ _%obj139875%_)
        (if (let () (declare (not safe)) (##structure? _%obj139875%_))
            (eq? _%klass139874%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj139875%_)))
            '#f)))
    (define __struct-instance?
      (lambda (_%klass139861%_ _%obj139862%_)
        (let* ((_%klass139865%_ _%klass139861%_)
               (__tmp146255
                (let () (declare (not safe)) (##type-id _%klass139865%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj139862%_ __tmp146255))))
    (define struct-instance?
      (lambda (_%klass139846%_ _%obj139847%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139846%_ 'class))
            (let ((_%klass139851%_ _%klass139846%_))
              (__struct-instance? _%klass139851%_ _%obj139847%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@820.25-820.30"
               'contract:
               'class-type?
               'value:
               _%klass139846%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass139798%_ _%obj139799%_)
        (let* ((_%klass139802%_ _%klass139798%_)
               (_%type139811%_ (class-of _%obj139799%_))
               (_%maybe-sub-class139813%_ _%type139811%_)
               (_%maybe-super-class139816%_ _%klass139802%_)
               (_%maybe-sub-class139821%_ _%maybe-sub-class139813%_)
               (_%maybe-super-class139836%_ _%maybe-super-class139816%_))
          (__subclass?
           _%maybe-sub-class139821%_
           _%maybe-super-class139836%_))))
    (define class-instance?
      (lambda (_%klass139783%_ _%obj139784%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139783%_ 'class))
            (let ((_%klass139788%_ _%klass139783%_))
              (__class-instance? _%klass139788%_ _%obj139784%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@825.24-825.29"
               'contract:
               'class-type?
               'value:
               _%klass139783%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass139742%_ _%k139743%_)
        (let* ((_%klass139746%_ _%klass139742%_) (_%k139754%_ _%k139743%_))
          (if (let* ((_%klass139763%_ _%klass139746%_)
                     (_%klass139768%_ _%klass139763%_))
                (__class-type-system? _%klass139768%_))
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass139746%_)
                '#!void)
              (let ((_%obj139781%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass139746%_ _%k139754%_))))
                (__object-fill! _%obj139781%_ '#f))))))
    (define make-object
      (lambda (_%klass139717%_ _%k139718%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139717%_ 'class))
            (let ((_%klass139722%_ _%klass139717%_))
              (if (fixnum? _%k139718%_)
                  (let ((_%k139732%_ _%k139718%_))
                    (__make-object _%klass139722%_ _%k139732%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@830.37-830.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k139718%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@830.20-830.25"
               'contract:
               'class-type?
               'value:
               _%klass139717%_)
              '#!void))))
    (define __object-class
      (lambda (_%obj139705%_)
        (let ((_%obj139708%_ _%obj139705%_))
          (declare (not safe))
          (##structure-type _%obj139708%_))))
    (define object-class
      (lambda (_%obj139691%_)
        (if (object? _%obj139691%_)
            (let ((_%obj139695%_ _%obj139691%_))
              (__object-class _%obj139695%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@850.21-850.24"
               'contract:
               'object?
               'value:
               _%obj139691%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj139673%_ _%fill139674%_)
        (let ((_%obj139677%_ _%obj139673%_))
          (let _%loop139686%_ ((_%i139688%_
                                (let ((__tmp146256
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj139677%_))))
                                  (declare (not safe))
                                  (##fx- __tmp146256 '1))))
            (if (let () (declare (not safe)) (##fx> _%i139688%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj139677%_
                     _%fill139674%_
                     _%i139688%_
                     '#f
                     '#f))
                  (_%loop139686%_
                   (let () (declare (not safe)) (##fx- _%i139688%_ '1))))
                _%obj139677%_)))))
    (define object-fill!
      (lambda (_%obj139658%_ _%fill139659%_)
        (if (object? _%obj139658%_)
            (let ((_%obj139663%_ _%obj139658%_))
              (__object-fill! _%obj139663%_ _%fill139659%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@855.21-855.24"
               'contract:
               'object?
               'value:
               _%obj139658%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass139614%_)
        (let* ((_%klass139617%_ _%klass139614%_)
               (_%klass139626%_ _%klass139617%_)
               (_%k139629%_
                (let ((__tmp146257
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass139617%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp146257)))
               (_%klass139634%_ _%klass139626%_)
               (_%k139648%_ _%k139629%_))
          (__make-object _%klass139634%_ _%k139648%_))))
    (define new-instance
      (lambda (_%klass139600%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139600%_ 'class))
            (let ((_%klass139604%_ _%klass139600%_))
              (__new-instance _%klass139604%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@866.21-866.26"
               'contract:
               'class-type?
               'value:
               _%klass139600%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass139459%_ . _%args139460%_)
        (let* ((_%klass139463%_ _%klass139459%_)
               (_%$e139472%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass139463%_ '10 '#f '#f))))
          (if _%$e139472%_
              (let ((_%obj139497%_
                     (let* ((_%klass139477%_ _%klass139463%_)
                            (_%klass139482%_ _%klass139477%_))
                       (__new-instance _%klass139482%_))))
                (___constructor-init!
                 _%klass139463%_
                 _%$e139472%_
                 _%obj139497%_
                 _%args139460%_)
                _%obj139497%_)
              (if (let* ((_%klass139499%_ _%klass139463%_)
                         (_%klass139504%_ _%klass139499%_))
                    (__class-type-metaclass? _%klass139504%_))
                  (let ((_%obj139531%_
                         (let* ((_%klass139515%_ _%klass139463%_)
                                (_%klass139520%_ _%klass139515%_))
                           (__new-instance _%klass139520%_))))
                    (__metaclass-instance-init!
                     _%klass139463%_
                     _%obj139531%_
                     _%args139460%_)
                    _%obj139531%_)
                  (if (let* ((_%klass139533%_ _%klass139463%_)
                             (_%klass139538%_ _%klass139533%_))
                        (__class-type-struct? _%klass139538%_))
                      (if (let ((__tmp146259
                                 (let* ((_%klass139567%_ _%klass139463%_)
                                        (_%klass139572%_ _%klass139567%_))
                                   (__class-type-field-count _%klass139572%_)))
                                (__tmp146258
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args139460%_))))
                            (declare (not safe))
                            (##fx= __tmp146259 __tmp146258))
                          (apply ##structure _%klass139463%_ _%args139460%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass139463%_
                                   'slots:
                                   (let* ((_%klass139584%_ _%klass139463%_)
                                          (_%klass139589%_ _%klass139584%_))
                                     (__class-type-slot-list _%klass139589%_))
                                   'args:
                                   _%args139460%_)
                            '#!void))
                      (let ((_%obj139565%_
                             (let* ((_%klass139549%_ _%klass139463%_)
                                    (_%klass139554%_ _%klass139549%_))
                               (__new-instance _%klass139554%_))))
                        (___class-instance-init!
                         _%klass139463%_
                         _%obj139565%_
                         _%args139460%_)
                        _%obj139565%_)))))))
    (define make-instance
      (lambda (_%klass139444%_ . _%args139445%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139444%_ 'class))
            (let ((_%klass139449%_ _%klass139444%_))
              (declare (not safe))
              (##apply __make-instance _%klass139449%_ _%args139445%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@869.22-869.27"
               'contract:
               'class-type?
               'value:
               _%klass139444%_)
              '#!void))))
    (define make-class-instance make-instance)
    (define __struct-instance-init!
      (lambda (_%obj139431%_ . _%args139432%_)
        (let ((_%obj139435%_ _%obj139431%_))
          (if (let ((__tmp146261
                     (let () (declare (not safe)) (##length _%args139432%_)))
                    (__tmp146260
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj139435%_))))
                (declare (not safe))
                (##fx< __tmp146261 __tmp146260))
              (___struct-instance-init! _%obj139435%_ _%args139432%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj139435%_
                     'args:
                     _%args139432%_))
          '#!void)))
    (define struct-instance-init!
      (lambda (_%obj139416%_ . _%args139417%_)
        (if (object? _%obj139416%_)
            (let ((_%obj139421%_ _%obj139416%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj139421%_ _%args139417%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@894.30-894.33"
               'contract:
               'object?
               'value:
               _%obj139416%_)
              '#!void))))
    (define ___struct-instance-init!
      (lambda (_%obj139375%_ _%args139376%_)
        (let _%lp139378%_ ((_%k139380%_ '1) (_%rest139381%_ _%args139376%_))
          (let* ((_%$%rest139382139390%_ _%rest139381%_)
                 (_%$%else139384139398%_ (lambda () _%obj139375%_))
                 (_%$%K139386139404%_
                  (lambda (_%rest139401%_ _%hd139402%_)
                    (unchecked-field-set!
                     _%obj139375%_
                     _%k139380%_
                     _%hd139402%_)
                    (_%lp139378%_
                     (let () (declare (not safe)) (##fx+ _%k139380%_ '1))
                     _%rest139401%_))))
            (if (pair? _%$%rest139382139390%_)
                (let ((_%$%hd139387139407%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest139382139390%_)))
                      (_%$%tl139388139409%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest139382139390%_))))
                  (let* ((_%hd139412%_ _%$%hd139387139407%_)
                         (_%rest139414%_ _%$%tl139388139409%_))
                    (_%$%K139386139404%_ _%rest139414%_ _%hd139412%_)))
                (_%$%else139384139398%_))))))
    (define __class-instance-init!
      (lambda (_%obj139362%_ . _%args139363%_)
        (let ((_%obj139366%_ _%obj139362%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj139366%_))
           _%obj139366%_
           _%args139363%_)
          '#!void)))
    (define class-instance-init!
      (lambda (_%obj139347%_ . _%args139348%_)
        (if (object? _%obj139347%_)
            (let ((_%obj139352%_ _%obj139347%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj139352%_ _%args139348%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@934.29-934.32"
               'contract:
               'object?
               'value:
               _%obj139347%_)
              '#!void))))
    (define ___class-instance-init!
      (lambda (_%klass139289%_ _%obj139290%_ _%args139291%_)
        (let _%lp139293%_ ((_%rest139295%_ _%args139291%_))
          (let* ((_%$%rest139296139306%_ _%rest139295%_)
                 (_%$%else139298139314%_
                  (lambda ()
                    (if (null? _%rest139295%_)
                        _%obj139290%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass139289%_
                               'rest:
                               _%rest139295%_))))
                 (_%$%K139300139328%_
                  (lambda (_%rest139317%_ _%val139318%_ _%key139319%_)
                    (if (keyword? _%key139319%_)
                        (let ((_%$e139322%_
                               (__class-slot-offset
                                _%klass139289%_
                                _%key139319%_)))
                          (if _%$e139322%_
                              (let ()
                                (unchecked-field-set!
                                 _%obj139290%_
                                 _%$e139322%_
                                 _%val139318%_)
                                (_%lp139293%_ _%rest139317%_))
                              (error '"unknown slot"
                                     'class:
                                     _%klass139289%_
                                     'slot:
                                     _%key139319%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key139319%_)))))
            (if (pair? _%$%rest139296139306%_)
                (let ((_%$%hd139301139331%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest139296139306%_)))
                      (_%$%tl139302139333%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest139296139306%_))))
                  (let ((_%key139336%_ _%$%hd139301139331%_))
                    (if (pair? _%$%tl139302139333%_)
                        (let ((_%$%hd139303139338%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl139302139333%_)))
                              (_%$%tl139304139340%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl139302139333%_))))
                          (let* ((_%val139343%_ _%$%hd139303139338%_)
                                 (_%rest139345%_ _%$%tl139304139340%_))
                            (_%$%K139300139328%_
                             _%rest139345%_
                             _%val139343%_
                             _%key139336%_)))
                        (_%$%else139298139314%_))))
                (_%$%else139298139314%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass139285%_ _%obj139286%_ _%args139287%_)
        (apply call-method
               _%klass139285%_
               'instance-init!
               _%obj139286%_
               _%args139287%_)))
    (define __constructor-init!
      (lambda (_%klass139254%_
               _%kons-id139255%_
               _%obj139256%_
               .
               _%args139257%_)
        (let* ((_%klass139260%_ _%klass139254%_)
               (_%kons-id139268%_ _%kons-id139255%_)
               (_%obj139276%_ _%obj139256%_))
          (___constructor-init!
           _%klass139260%_
           _%kons-id139268%_
           _%obj139276%_
           _%args139257%_)
          '#!void)))
    (define constructor-init!
      (lambda (_%klass139217%_
               _%kons-id139218%_
               _%obj139219%_
               .
               _%args139220%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139217%_ 'class))
            (let ((_%klass139224%_ _%klass139217%_))
              (if (symbol? _%kons-id139218%_)
                  (let ((_%kons-id139234%_ _%kons-id139218%_))
                    (if (object? _%obj139219%_)
                        (let ((_%obj139244%_ _%obj139219%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass139224%_
                                   _%kons-id139234%_
                                   _%obj139244%_
                                   _%args139220%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@958.63-958.66"
                           'contract:
                           'object?
                           'value:
                           _%obj139219%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@958.43-958.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id139218%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@958.26-958.31"
               'contract:
               'class-type?
               'value:
               _%klass139217%_)
              '#!void))))
    (define ___constructor-init!
      (lambda (_%klass139206%_ _%kons-id139207%_ _%obj139208%_ _%args139209%_)
        (let ((_%$e139211%_
               (__find-method
                _%klass139206%_
                _%obj139208%_
                _%kons-id139207%_)))
          (if _%$e139211%_
              (let ()
                (apply _%$e139211%_ _%obj139208%_ _%args139209%_)
                _%obj139208%_)
              (error '"missing constructor"
                     'class:
                     _%klass139206%_
                     'method:
                     _%kons-id139207%_)))))
    (define __struct-copy
      (lambda (_%struct139194%_)
        (let ((_%struct139197%_ _%struct139194%_))
          (declare (not safe))
          (##structure-copy _%struct139197%_))))
    (define struct-copy
      (lambda (_%struct139180%_)
        (if (object? _%struct139180%_)
            (let ((_%struct139184%_ _%struct139180%_))
              (__struct-copy _%struct139184%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@972.20-972.26"
               'contract:
               'object?
               'value:
               _%struct139180%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj139161%_)
        (let* ((_%obj139164%_ _%obj139161%_)
               (_%len139173%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj139164%_))))
          (let _%recur139175%_ ((_%i139177%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i139177%_ _%len139173%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj139164%_
                         _%i139177%_
                         '#f
                         '#f))
                      (_%recur139175%_
                       (let () (declare (not safe)) (##fx+ _%i139177%_ '1))))
                '())))))
    (define struct->list
      (lambda (_%obj139147%_)
        (if (object? _%obj139147%_)
            (let ((_%obj139151%_ _%obj139147%_))
              (__struct->list _%obj139151%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@975.21-975.24"
               'contract:
               'object?
               'value:
               _%obj139147%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj139099%_)
        (let* ((_%obj139102%_ _%obj139099%_)
               (_%klass139111%_
                (let () (declare (not safe)) (##structure-type _%obj139102%_)))
               (_%slot-vector139113%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass139111%_ '7 '#f '#f))))
          (let _%loop139115%_ ((_%index139117%_
                                (let ((__tmp146262
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector139113%_))))
                                  (declare (not safe))
                                  (##fx- __tmp146262 '1)))
                               (_%plist139118%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index139117%_ '1))
                (cons _%klass139111%_ _%plist139118%_)
                (let ((_%slot139121%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector139113%_
                          _%index139117%_))))
                  (_%loop139115%_
                   (let () (declare (not safe)) (##fx- _%index139117%_ '1))
                   (cons (let ((_%sym139123%_ _%slot139121%_))
                           (if (symbol? _%sym139123%_)
                               (let ((_%sym139128%_ _%sym139123%_))
                                 (declare (not safe))
                                 (__symbol->keyword _%sym139128%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  'symbol?
                                  'value:
                                  _%sym139123%_)
                                 '#!void)))
                         (cons (unchecked-field-ref
                                _%obj139102%_
                                _%index139117%_)
                               _%plist139118%_)))))))))
    (define class->list
      (lambda (_%obj139085%_)
        (if (object? _%obj139085%_)
            (let ((_%obj139089%_ _%obj139085%_)) (__class->list _%obj139089%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@983.20-983.23"
               'contract:
               'object?
               'value:
               _%obj139085%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj139035%_ _%id139036%_ . _%args139037%_)
        (let* ((_%id139040%_ _%id139036%_)
               (_%$e139071%_
                (let* ((_%obj139049%_ _%obj139035%_)
                       (_%id139052%_ _%id139040%_)
                       (_%id139057%_ _%id139052%_))
                  (__method-ref _%obj139049%_ _%id139057%_))))
          (if _%$e139071%_
              (let ((_%method139076%_ _%$e139071%_))
                (apply _%method139076%_ _%obj139035%_ _%args139037%_))
              (error '"cannot find method"
                     'object:
                     _%obj139035%_
                     'method:
                     _%id139040%_)))))
    (define call-method
      (lambda (_%obj139019%_ _%id139020%_ . _%args139021%_)
        (if (symbol? _%id139020%_)
            (let ((_%id139025%_ _%id139020%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj139019%_
                       _%id139025%_
                       _%args139021%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@998.24-998.26"
               'contract:
               'symbol?
               'value:
               _%id139020%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj138970%_ _%id138971%_)
        (let* ((_%id138974%_ _%id138971%_)
               (_%klass138983%_ (class-of _%obj138970%_))
               (_%obj138986%_ _%obj138970%_)
               (_%id138989%_ _%id138974%_)
               (_%klass138994%_ _%klass138983%_)
               (_%id139009%_ _%id138989%_))
          (__find-method _%klass138994%_ _%obj138986%_ _%id139009%_))))
    (define method-ref
      (lambda (_%obj138955%_ _%id138956%_)
        (if (symbol? _%id138956%_)
            (let ((_%id138960%_ _%id138956%_))
              (__method-ref _%obj138955%_ _%id138960%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1025.23-1025.25"
               'contract:
               'symbol?
               'value:
               _%id138956%_)
              '#!void))))
    (define checked-method-ref
      (lambda (_%obj138927%_ _%id138928%_)
        (let ((_%$e138952%_
               (let* ((_%obj138931%_ _%obj138927%_)
                      (_%id138934%_ _%id138928%_))
                 (if (symbol? _%id138934%_)
                     (let ((_%id138939%_ _%id138934%_))
                       (__method-ref _%obj138931%_ _%id138939%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id138934%_)
                       '#!void)))))
          (if _%$e138952%_
              _%$e138952%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj138927%_
                       'method:
                       _%id138928%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj138876%_ _%id138877%_)
        (let* ((_%id138880%_ _%id138877%_)
               (_%$e138911%_
                (let* ((_%obj138889%_ _%obj138876%_)
                       (_%id138892%_ _%id138880%_)
                       (_%id138897%_ _%id138892%_))
                  (__method-ref _%obj138889%_ _%id138897%_))))
          (if _%$e138911%_
              (let ((_%method138916%_ _%$e138911%_))
                (lambda _%args138924%_
                  (apply _%method138916%_ _%obj138876%_ _%args138924%_)))
              '#f))))
    (define bound-method-ref
      (lambda (_%obj138861%_ _%id138862%_)
        (if (symbol? _%id138862%_)
            (let ((_%id138866%_ _%id138862%_))
              (__bound-method-ref _%obj138861%_ _%id138866%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1033.29-1033.31"
               'contract:
               'symbol?
               'value:
               _%id138862%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj138844%_ _%id138845%_)
        (let* ((_%id138848%_ _%id138845%_)
               (_%method138857%_
                (checked-method-ref _%obj138844%_ _%id138848%_)))
          (lambda _%args138859%_
            (apply _%method138857%_ _%obj138844%_ _%args138859%_)))))
    (define checked-bound-method-ref
      (lambda (_%obj138829%_ _%id138830%_)
        (if (symbol? _%id138830%_)
            (let ((_%id138834%_ _%id138830%_))
              (__checked-bound-method-ref _%obj138829%_ _%id138834%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1042.37-1042.39"
               'contract:
               'symbol?
               'value:
               _%id138830%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass138698%_ _%obj138699%_ _%id138700%_)
        (let* ((_%klass138703%_ _%klass138698%_) (_%id138711%_ _%id138700%_))
          (if (let* ((_%klass138720%_ _%klass138703%_)
                     (_%klass138725%_ _%klass138720%_))
                (__class-type-sealed? _%klass138725%_))
              (let ((_%tab138755%_
                     (let* ((_%klass138739%_ _%klass138703%_)
                            (_%klass138744%_ _%klass138739%_))
                       (__specialize-class _%klass138744%_))))
                (declare (not safe))
                (symbolic-table-ref _%tab138755%_ _%id138711%_ '#f))
              (let ((_%$e138790%_
                     (let* ((_%klass138757%_ _%klass138703%_)
                            (_%obj138760%_ _%obj138699%_)
                            (_%id138763%_ _%id138711%_)
                            (_%klass138768%_ _%klass138757%_)
                            (_%id138780%_ _%id138763%_))
                       (__direct-method-ref
                        _%klass138768%_
                        _%obj138760%_
                        _%id138780%_))))
                (if _%$e138790%_
                    _%$e138790%_
                    (let* ((_%klass138794%_ _%klass138703%_)
                           (_%obj138797%_ _%obj138699%_)
                           (_%id138800%_ _%id138711%_)
                           (_%klass138805%_ _%klass138794%_)
                           (_%id138819%_ _%id138800%_))
                      (__mixin-method-ref
                       _%klass138805%_
                       _%obj138797%_
                       _%id138819%_))))))))
    (define find-method
      (lambda (_%klass138672%_ _%obj138673%_ _%id138674%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138672%_ 'class))
            (let ((_%klass138678%_ _%klass138672%_))
              (if (symbol? _%id138674%_)
                  (let ((_%id138688%_ _%id138674%_))
                    (__find-method _%klass138678%_ _%obj138673%_ _%id138688%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1047.41-1047.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id138674%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1047.20-1047.25"
               'contract:
               'class-type?
               'value:
               _%klass138672%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins138617%_ _%obj138618%_ _%id138619%_)
        (let* ((_%id138622%_ _%id138619%_)
               (__tmp146263
                (lambda (_%$%g138630138632%_)
                  (let* ((_%klass138635%_ _%$%g138630138632%_)
                         (_%obj138638%_ _%obj138618%_)
                         (_%id138641%_ _%id138622%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass138635%_ 'class))
                        (let* ((_%klass138646%_ _%klass138635%_)
                               (_%id138662%_ _%id138641%_))
                          (__direct-method-ref
                           _%klass138646%_
                           _%obj138638%_
                           _%id138662%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass138635%_)
                          '#!void))))))
          (declare (not safe))
          (ormap__0 __tmp146263 _%mixins138617%_))))
    (define mixin-find-method
      (lambda (_%mixins138601%_ _%obj138602%_ _%id138603%_)
        (if (symbol? _%id138603%_)
            (let ((_%id138607%_ _%id138603%_))
              (__mixin-find-method
               _%mixins138601%_
               _%obj138602%_
               _%id138607%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1056.37-1056.39"
               'contract:
               'symbol?
               'value:
               _%id138603%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass138494%_ _%obj138495%_ _%id138496%_)
        (let* ((_%klass138499%_ _%klass138494%_) (_%id138507%_ _%id138496%_))
          (letrec ((_%metaclass-resolve-method138516%_
                    (lambda ()
                      (let* ((_%obj138577%_ _%klass138499%_)
                             (_%id138580%_ 'direct-method-ref)
                             (_%args138583%_ (list _%obj138495%_ _%id138507%_))
                             (_%id138588%_ _%id138580%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj138577%_
                                 _%id138588%_
                                 _%args138583%_))))
                   (_%metaclass-resolve-method!138517%_
                    (lambda ()
                      (let ((_%method138574%_
                             (_%metaclass-resolve-method138516%_)))
                        (let ((__tmp146265
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass138499%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp146264
                               (if _%method138574%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp146265
                           _%id138507%_
                           __tmp146264))
                        _%method138574%_))))
            (let ((_%$e138519%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass138499%_ '11 '#f '#f))))
              (if _%$e138519%_
                  (let ((_%method138524%_
                         (let ()
                           (declare (not safe))
                           (symbolic-table-ref
                            _%$e138519%_
                            _%id138507%_
                            '#f))))
                    (if (procedure? _%method138524%_)
                        _%method138524%_
                        (if (let* ((_%klass138527%_ _%klass138499%_)
                                   (_%klass138532%_ _%klass138527%_))
                              (__class-type-metaclass? _%klass138532%_))
                            (let ((_%$e138550%_ _%method138524%_))
                              (if (eq? 'resolved _%$e138550%_)
                                  (_%metaclass-resolve-method138516%_)
                                  (if (eq? 'unknown _%$e138550%_)
                                      '#f
                                      (_%metaclass-resolve-method!138517%_))))
                            '#f)))
                  (if (let* ((_%klass138554%_ _%klass138499%_)
                             (_%klass138559%_ _%klass138554%_))
                        (__class-type-metaclass? _%klass138559%_))
                      (let ((_%tab138570%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass138499%_
                           _%tab138570%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!138517%_))
                      '#f)))))))
    (define direct-method-ref
      (lambda (_%klass138468%_ _%obj138469%_ _%id138470%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138468%_ 'class))
            (let ((_%klass138474%_ _%klass138468%_))
              (if (symbol? _%id138470%_)
                  (let ((_%id138484%_ _%id138470%_))
                    (__direct-method-ref
                     _%klass138474%_
                     _%obj138469%_
                     _%id138484%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1059.47-1059.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id138470%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1059.26-1059.31"
               'contract:
               'class-type?
               'value:
               _%klass138468%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass138420%_ _%obj138421%_ _%id138422%_)
        (let* ((_%klass138425%_ _%klass138420%_)
               (_%id138433%_ _%id138422%_)
               (_%mixins138442%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass138425%_ '6 '#f '#f)))
               (_%obj138445%_ _%obj138421%_)
               (_%id138448%_ _%id138433%_)
               (_%id138453%_ _%id138448%_))
          (__mixin-find-method _%mixins138442%_ _%obj138445%_ _%id138453%_))))
    (define mixin-method-ref
      (lambda (_%klass138394%_ _%obj138395%_ _%id138396%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138394%_ 'class))
            (let ((_%klass138400%_ _%klass138394%_))
              (if (symbol? _%id138396%_)
                  (let ((_%id138410%_ _%id138396%_))
                    (__mixin-method-ref
                     _%klass138400%_
                     _%obj138395%_
                     _%id138410%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1089.46-1089.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id138396%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1089.25-1089.30"
               'contract:
               'class-type?
               'value:
               _%klass138394%_)
              '#!void))))
    (define __bind-method!__%
      (lambda (_%klass138275%_ _%id138276%_ _%proc138277%_ _%rebind?138278%_)
        (let* ((_%id138281%_ _%id138276%_) (_%proc138289%_ _%proc138277%_))
          (letrec ((_%flush-caches!138298%_
                    (lambda (_%klass138352%_)
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%klass138352%_
                             '12
                             '#f
                             '#f))
                          (begin
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-set!
                               _%klass138352%_
                               '#f
                               '12
                               '#f
                               '#f))
                            (if (let ((_%klass138354%_ _%klass138352%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass138354%_
                                         'class))
                                      (let ((_%klass138359%_ _%klass138354%_))
                                        (__class-type-sealed? _%klass138359%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass138354%_)
                                        '#!void)))
                                (let ((__tmp146266
                                       (let ((__tmp146268
                                              (let ()
                                                (declare (not safe))
                                                (##fxnot class-type-flag-sealed)))
                                             (__tmp146267
                                              (let ()
                                                (declare (not safe))
                                                (##type-flags
                                                 _%klass138352%_))))
                                         (declare (not safe))
                                         (##fxand __tmp146268 __tmp146267))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _%klass138352%_
                                   __tmp146266
                                   '3
                                   class::t
                                   bind-method!))
                                '#!void))
                          '#!void)
                      (if (and _%rebind?138278%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass138352%_
                                  '13
                                  '#f
                                  '#f)))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _%klass138352%_
                             '#f
                             '13
                             '#f
                             '#f))
                          '#!void)
                      (let ((_%$e138370%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%klass138352%_
                                '9
                                '#f
                                '#f))))
                        (if _%$e138370%_
                            (let ((_%$e138375%_
                                   (let ()
                                     (declare (not safe))
                                     (agetq__0 'subclasses: _%$e138370%_))))
                              (if _%$e138375%_
                                  (for-each
                                   _%flush-caches!138298%_
                                   _%$e138375%_)
                                  '#!void))
                            '#!void))))
                   (_%bind!138299%_
                    (lambda (_%ht138350%_)
                      (if (and (not _%rebind?138278%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht138350%_
                                  _%id138281%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass138275%_
                                 'method:
                                 _%id138281%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht138350%_
                               _%id138281%_
                               _%proc138289%_))
                            (_%flush-caches!138298%_ _%klass138275%_)
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass138275%_ 'class))
                (let ((_%ht138302%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass138275%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht138302%_
                      (_%bind!138299%_ _%ht138302%_)
                      (let ((_%ht138304%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass138275%_
                           _%ht138304%_
                           '11
                           '#f
                           '#f))
                        (_%bind!138299%_ _%ht138304%_))))
                (if (let () (declare (not safe)) (##type? _%klass138275%_))
                    (let* ((_%klass138307%_
                            (__shadow-class__0 _%klass138275%_))
                           (_%id138310%_ _%id138281%_)
                           (_%proc138313%_ _%proc138289%_)
                           (_%rebind?138316%_ _%rebind?138278%_)
                           (_%id138321%_ _%id138310%_)
                           (_%proc138339%_ _%proc138313%_))
                      (__bind-method!__%
                       _%klass138307%_
                       _%id138321%_
                       _%proc138339%_
                       _%rebind?138316%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass138275%_)))))))
    (define __bind-method!__0
      (lambda (_%klass138383%_ _%id138384%_ _%proc138385%_)
        (let ((_%rebind?138387%_ '#f))
          (__bind-method!__%
           _%klass138383%_
           _%id138384%_
           _%proc138385%_
           _%rebind?138387%_))))
    (define __bind-method!
      (lambda _g146269_
        (let ((_g146270_ (let () (declare (not safe)) (##length _g146269_))))
          (cond ((let () (declare (not safe)) (##fx= _g146270_ 3))
                 (apply __bind-method!__0 _g146269_))
                ((let () (declare (not safe)) (##fx= _g146270_ 4))
                 (apply __bind-method!__% _g146269_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g146269_))))))
    (define bind-method!__%
      (lambda (_%klass138233%_ _%id138234%_ _%proc138235%_ _%rebind?138236%_)
        (if (symbol? _%id138234%_)
            (let ((_%id138240%_ _%id138234%_))
              (if (procedure? _%proc138235%_)
                  (let ((_%proc138250%_ _%proc138235%_))
                    (__bind-method!__%
                     _%klass138233%_
                     _%id138240%_
                     _%proc138250%_
                     _%rebind?138236%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1092.42-1092.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc138235%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1092.27-1092.29"
               'contract:
               'symbol?
               'value:
               _%id138234%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass138263%_ _%id138264%_ _%proc138265%_)
        (let ((_%rebind?138267%_ '#f))
          (bind-method!__%
           _%klass138263%_
           _%id138264%_
           _%proc138265%_
           _%rebind?138267%_))))
    (define bind-method!
      (lambda _g146271_
        (let ((_g146272_ (let () (declare (not safe)) (##length _g146271_))))
          (cond ((let () (declare (not safe)) (##fx= _g146272_ 3))
                 (apply bind-method!__0 _g146271_))
                ((let () (declare (not safe)) (##fx= _g146272_ 4))
                 (apply bind-method!__% _g146271_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g146271_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint138214%_ _%seed138215%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint138214%_
           procedure-hash
           eq?
           _%seed138215%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint138221%_ '#f) (_%seed138223%_ '0))
          (make-method-specializer-table__%
           _%size-hint138221%_
           _%seed138223%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint138225%_)
        (let ((_%seed138227%_ '0))
          (make-method-specializer-table__%
           _%size-hint138225%_
           _%seed138227%_))))
    (define make-method-specializer-table
      (lambda _g146273_
        (let ((_g146274_ (let () (declare (not safe)) (##length _g146273_))))
          (cond ((let () (declare (not safe)) (##fx= _g146274_ 0))
                 (apply make-method-specializer-table__0 _g146273_))
                ((let () (declare (not safe)) (##fx= _g146274_ 1))
                 (apply make-method-specializer-table__1 _g146273_))
                ((let () (declare (not safe)) (##fx= _g146274_ 2))
                 (apply make-method-specializer-table__% _g146273_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g146273_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint138194%_ _%seed138196%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint138194%_
           procedure-hash
           eq?
           _%seed138196%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint138202%_ '#f) (_%seed138204%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint138202%_
           _%seed138204%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint138206%_)
        (let ((_%seed138208%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint138206%_
           _%seed138208%_))))
    (define make-method-specializer-table/lock
      (lambda _g146275_
        (let ((_g146276_ (let () (declare (not safe)) (##length _g146275_))))
          (cond ((let () (declare (not safe)) (##fx= _g146276_ 0))
                 (apply make-method-specializer-table/lock__0 _g146275_))
                ((let () (declare (not safe)) (##fx= _g146276_ 1))
                 (apply make-method-specializer-table/lock__1 _g146275_))
                ((let () (declare (not safe)) (##fx= _g146276_ 2))
                 (apply make-method-specializer-table/lock__% _g146275_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g146275_))))))
    (define method-specializer-table-ref
      (lambda (_%tab138147%_ _%key138148%_ _%default138149%_)
        (let ((_%table138151%_
               (let () (declare (not safe)) (&raw-table-table _%tab138147%_)))
              (_%seed138152%_
               (let () (declare (not safe)) (&raw-table-seed _%tab138147%_))))
          (let* ((_%h138154%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key138148%_))
                         _%seed138152%_))
                 (_%size138157%_ (vector-length _%table138151%_))
                 (_%entries138160%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size138157%_ '2)))
                 (_%start138163%_
                  (let ((__tmp146277
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h138154%_ _%entries138160%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp146277 '1))))
            (let _%loop138167%_ ((_%probe138170%_ _%start138163%_)
                                 (_%i138172%_ '1)
                                 (_%deleted138174%_ '#f))
              (let ((_%k138177%_ (vector-ref _%table138151%_ _%probe138170%_)))
                (if (eq? _%k138177%_ (macro-unused-obj))
                    _%default138149%_
                    (if (eq? _%k138177%_ (macro-deleted-obj))
                        (_%loop138167%_
                         (let ((_%next-probe138182%_
                                (fx+ _%start138163%_
                                     _%i138172%_
                                     (fx* _%i138172%_ _%i138172%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe138182%_ _%size138157%_))
                         (let () (declare (not safe)) (##fx+ _%i138172%_ '1))
                         (let ((_%$e138185%_ _%deleted138174%_))
                           (if _%$e138185%_ _%$e138185%_ _%probe138170%_)))
                        (if (eq? _%key138148%_ _%k138177%_)
                            (vector-ref
                             _%table138151%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe138170%_ '1)))
                            (_%loop138167%_
                             (let ((_%next-probe138190%_
                                    (fx+ _%start138163%_
                                         _%i138172%_
                                         (fx* _%i138172%_ _%i138172%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe138190%_
                                _%size138157%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i138172%_ '1))
                             _%deleted138174%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab138118%_ _%key138119%_ _%default138120%_)
        (let ((_%lock138122%_
               (let () (declare (not safe)) (&raw-table-lock _%tab138118%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again138127%_ ((_%spin138130%_ '0))
              (if (let ((__tmp146278
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock138122%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp146278 '0))
                  (let ((__tmp146279 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock138122%_ '1 __tmp146279))
                  (if (let () (declare (not safe)) (##fx< _%spin138130%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again138127%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin138130%_ '1))))
                      (let ((_%owner138136%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock138122%_ '1))))
                        (if (eq? _%owner138136%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner138136%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again138127%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r138142%_
                 (method-specializer-table-ref
                  _%tab138118%_
                  _%key138119%_
                  _%default138120%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock138122%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock138122%_ '0 '0 '1))))
            _%$r138142%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab138070%_ _%key138071%_ _%value138072%_)
        (let ((_%table138074%_
               (let () (declare (not safe)) (&raw-table-table _%tab138070%_)))
              (_%seed138075%_
               (let () (declare (not safe)) (&raw-table-seed _%tab138070%_))))
          (let* ((_%h138077%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key138071%_))
                         _%seed138075%_))
                 (_%size138080%_ (vector-length _%table138074%_))
                 (_%entries138083%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size138080%_ '2)))
                 (_%start138086%_
                  (let ((__tmp146280
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h138077%_ _%entries138083%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp146280 '1))))
            (let _%loop138090%_ ((_%probe138093%_ _%start138086%_)
                                 (_%i138095%_ '1)
                                 (_%deleted138097%_ '#f))
              (let ((_%k138100%_ (vector-ref _%table138074%_ _%probe138093%_)))
                (if (eq? _%k138100%_ (macro-unused-obj))
                    (if _%deleted138097%_
                        (begin
                          (vector-set!
                           _%table138074%_
                           _%deleted138097%_
                           _%key138071%_)
                          (vector-set!
                           _%table138074%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted138097%_ '1))
                           _%value138072%_)
                          (let ((__tmp146281
                                 (let ((__tmp146282
                                        (let ()
                                          (declare (not safe))
                                          (&raw-table-count _%tab138070%_))))
                                   (declare (not safe))
                                   (##fx+ __tmp146282 '1))))
                            (declare (not safe))
                            (&raw-table-count-set! _%tab138070%_ __tmp146281)))
                        (begin
                          (vector-set!
                           _%table138074%_
                           _%probe138093%_
                           _%key138071%_)
                          (vector-set!
                           _%table138074%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe138093%_ '1))
                           _%value138072%_)
                          (let ()
                            (let ((__tmp146283
                                   (let ((__tmp146284
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-free _%tab138070%_))))
                                     (declare (not safe))
                                     (##fx- __tmp146284 '1))))
                              (declare (not safe))
                              (&raw-table-free-set! _%tab138070%_ __tmp146283))
                            (let ((__tmp146285
                                   (let ((__tmp146286
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-count _%tab138070%_))))
                                     (declare (not safe))
                                     (##fx+ __tmp146286 '1))))
                              (declare (not safe))
                              (&raw-table-count-set!
                               _%tab138070%_
                               __tmp146285)))))
                    (if (eq? _%k138100%_ (macro-deleted-obj))
                        (_%loop138090%_
                         (let ((_%next-probe138107%_
                                (fx+ _%start138086%_
                                     _%i138095%_
                                     (fx* _%i138095%_ _%i138095%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe138107%_ _%size138080%_))
                         (let () (declare (not safe)) (##fx+ _%i138095%_ '1))
                         (let ((_%$e138110%_ _%deleted138097%_))
                           (if _%$e138110%_ _%$e138110%_ _%probe138093%_)))
                        (if (eq? _%key138071%_ _%k138100%_)
                            (let ()
                              (vector-set!
                               _%table138074%_
                               _%probe138093%_
                               _%key138071%_)
                              (vector-set!
                               _%table138074%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe138093%_ '1))
                               _%value138072%_))
                            (_%loop138090%_
                             (let ((_%next-probe138115%_
                                    (fx+ _%start138086%_
                                         _%i138095%_
                                         (fx* _%i138095%_ _%i138095%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe138115%_
                                _%size138080%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i138095%_ '1))
                             _%deleted138097%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab138066%_ _%key138067%_ _%value138068%_)
        (if (let ((__tmp146289
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab138066%_)))
                  (__tmp146287
                   (let ((__tmp146288
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab138066%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp146288 '4))))
              (declare (not safe))
              (##fx< __tmp146289 __tmp146287))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab138066%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab138066%_
         _%key138067%_
         _%value138068%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab138036%_ _%key138037%_ _%value138038%_)
        (let ((_%lock138041%_
               (let () (declare (not safe)) (&raw-table-lock _%tab138036%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again138046%_ ((_%spin138049%_ '0))
              (if (let ((__tmp146290
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock138041%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp146290 '0))
                  (let ((__tmp146291 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock138041%_ '1 __tmp146291))
                  (if (let () (declare (not safe)) (##fx< _%spin138049%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again138046%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin138049%_ '1))))
                      (let ((_%owner138055%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock138041%_ '1))))
                        (if (eq? _%owner138055%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner138055%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again138046%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r138061%_
                 (method-specializer-table-set!
                  _%tab138036%_
                  _%key138037%_
                  _%value138038%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock138041%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock138041%_ '0 '0 '1))))
            _%$r138061%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab137987%_
               _%key137988%_
               _%method-specializer-table-update!137989%_
               _%default137990%_)
        (let ((_%table137992%_
               (let () (declare (not safe)) (&raw-table-table _%tab137987%_)))
              (_%seed137993%_
               (let () (declare (not safe)) (&raw-table-seed _%tab137987%_))))
          (let* ((_%h137995%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key137988%_))
                         _%seed137993%_))
                 (_%size137998%_ (vector-length _%table137992%_))
                 (_%entries138001%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size137998%_ '2)))
                 (_%start138004%_
                  (let ((__tmp146292
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h137995%_ _%entries138001%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp146292 '1))))
            (let _%loop138008%_ ((_%probe138011%_ _%start138004%_)
                                 (_%i138013%_ '1)
                                 (_%deleted138015%_ '#f))
              (let ((_%k138018%_ (vector-ref _%table137992%_ _%probe138011%_)))
                (if (eq? _%k138018%_ (macro-unused-obj))
                    (if _%deleted138015%_
                        (begin
                          (vector-set!
                           _%table137992%_
                           _%deleted138015%_
                           _%key137988%_)
                          (vector-set!
                           _%table137992%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted138015%_ '1))
                           (_%method-specializer-table-update!137989%_
                            _%default137990%_))
                          (let ((__tmp146293
                                 (let ((__tmp146294
                                        (let ()
                                          (declare (not safe))
                                          (&raw-table-count _%tab137987%_))))
                                   (declare (not safe))
                                   (##fx+ __tmp146294 '1))))
                            (declare (not safe))
                            (&raw-table-count-set! _%tab137987%_ __tmp146293)))
                        (begin
                          (vector-set!
                           _%table137992%_
                           _%probe138011%_
                           _%key137988%_)
                          (vector-set!
                           _%table137992%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe138011%_ '1))
                           (_%method-specializer-table-update!137989%_
                            _%default137990%_))
                          (let ()
                            (let ((__tmp146295
                                   (let ((__tmp146296
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-free _%tab137987%_))))
                                     (declare (not safe))
                                     (##fx- __tmp146296 '1))))
                              (declare (not safe))
                              (&raw-table-free-set! _%tab137987%_ __tmp146295))
                            (let ((__tmp146297
                                   (let ((__tmp146298
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-count _%tab137987%_))))
                                     (declare (not safe))
                                     (##fx+ __tmp146298 '1))))
                              (declare (not safe))
                              (&raw-table-count-set!
                               _%tab137987%_
                               __tmp146297)))))
                    (if (eq? _%k138018%_ (macro-deleted-obj))
                        (_%loop138008%_
                         (let ((_%next-probe138025%_
                                (fx+ _%start138004%_
                                     _%i138013%_
                                     (fx* _%i138013%_ _%i138013%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe138025%_ _%size137998%_))
                         (let () (declare (not safe)) (##fx+ _%i138013%_ '1))
                         (let ((_%$e138028%_ _%deleted138015%_))
                           (if _%$e138028%_ _%$e138028%_ _%probe138011%_)))
                        (if (eq? _%key137988%_ _%k138018%_)
                            (let ()
                              (vector-set!
                               _%table137992%_
                               _%probe138011%_
                               _%key137988%_)
                              (vector-set!
                               _%table137992%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe138011%_ '1))
                               (_%method-specializer-table-update!137989%_
                                (vector-ref
                                 _%table137992%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe138011%_ '1))))))
                            (_%loop138008%_
                             (let ((_%next-probe138033%_
                                    (fx+ _%start138004%_
                                         _%i138013%_
                                         (fx* _%i138013%_ _%i138013%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe138033%_
                                _%size137998%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i138013%_ '1))
                             _%deleted138015%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab137982%_
               _%key137983%_
               _%method-specializer-table-update!137984%_
               _%default137985%_)
        (if (let ((__tmp146301
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab137982%_)))
                  (__tmp146299
                   (let ((__tmp146300
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab137982%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp146300 '4))))
              (declare (not safe))
              (##fx< __tmp146301 __tmp146299))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab137982%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab137982%_
         _%key137983%_
         _%method-specializer-table-update!137984%_
         _%default137985%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab137951%_
               _%key137952%_
               _%method-specializer-table-update!137953%_
               _%default137954%_)
        (let ((_%lock137957%_
               (let () (declare (not safe)) (&raw-table-lock _%tab137951%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again137962%_ ((_%spin137965%_ '0))
              (if (let ((__tmp146302
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock137957%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp146302 '0))
                  (let ((__tmp146303 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock137957%_ '1 __tmp146303))
                  (if (let () (declare (not safe)) (##fx< _%spin137965%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again137962%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin137965%_ '1))))
                      (let ((_%owner137971%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock137957%_ '1))))
                        (if (eq? _%owner137971%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner137971%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again137962%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r137977%_
                 (_%method-specializer-table-update!137953%_
                  _%tab137951%_
                  _%key137952%_
                  _%method-specializer-table-update!137953%_
                  _%default137954%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock137957%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock137957%_ '0 '0 '1))))
            _%$r137977%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab137908%_ _%key137909%_)
        (let ((_%table137911%_
               (let () (declare (not safe)) (&raw-table-table _%tab137908%_)))
              (_%seed137913%_
               (let () (declare (not safe)) (&raw-table-seed _%tab137908%_))))
          (let* ((_%h137916%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key137909%_))
                         _%seed137913%_))
                 (_%size137919%_ (vector-length _%table137911%_))
                 (_%entries137922%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size137919%_ '2)))
                 (_%start137925%_
                  (let ((__tmp146304
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h137916%_ _%entries137922%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp146304 '1))))
            (let _%loop137929%_ ((_%probe137932%_ _%start137925%_)
                                 (_%i137934%_ '1))
              (let ((_%k137937%_ (vector-ref _%table137911%_ _%probe137932%_)))
                (if (eq? _%k137937%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k137937%_ (macro-deleted-obj))
                        (_%loop137929%_
                         (let ((_%next-probe137942%_
                                (fx+ _%start137925%_
                                     _%i137934%_
                                     (fx* _%i137934%_ _%i137934%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe137942%_ _%size137919%_))
                         (let () (declare (not safe)) (##fx+ _%i137934%_ '1)))
                        (if (eq? _%key137909%_ _%k137937%_)
                            (let ()
                              (vector-set!
                               _%table137911%_
                               _%probe137932%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table137911%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe137932%_ '1))
                               (macro-absent-obj))
                              (let ((__tmp146305
                                     (let ((__tmp146306
                                            (let ()
                                              (declare (not safe))
                                              (&raw-table-count
                                               _%tab137908%_))))
                                       (declare (not safe))
                                       (##fx- __tmp146306 '1))))
                                (declare (not safe))
                                (&raw-table-count-set!
                                 _%tab137908%_
                                 __tmp146305)))
                            (_%loop137929%_
                             (let ((_%next-probe137948%_
                                    (fx+ _%start137925%_
                                         _%i137934%_
                                         (fx* _%i137934%_ _%i137934%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe137948%_
                                _%size137919%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i137934%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab137878%_ _%key137880%_)
        (let ((_%lock137883%_
               (let () (declare (not safe)) (&raw-table-lock _%tab137878%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again137888%_ ((_%spin137891%_ '0))
              (if (let ((__tmp146307
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock137883%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp146307 '0))
                  (let ((__tmp146308 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock137883%_ '1 __tmp146308))
                  (if (let () (declare (not safe)) (##fx< _%spin137891%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again137888%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin137891%_ '1))))
                      (let ((_%owner137897%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock137883%_ '1))))
                        (if (eq? _%owner137897%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner137897%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again137888%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r137903%_
                 (method-specializer-table-delete!
                  _%tab137878%_
                  _%key137880%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock137883%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock137883%_ '0 '0 '1))))
            _%$r137903%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc137875%_ _%specializer137876%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc137875%_
         _%specializer137876%_)))
    (define __lookup-method-specializer
      (lambda (_%proc137873%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc137873%_
         '#f)))
    (define __specialize-class
      (lambda (_%klass137855%_)
        (let* ((_%klass137858%_ _%klass137855%_)
               (_%$e137867%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass137858%_ '12 '#f '#f))))
          (if _%$e137867%_
              _%$e137867%_
              (let ((_%method-table137871%_
                     (___specialize-class _%klass137858%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass137858%_
                   _%method-table137871%_
                   '12
                   '#f
                   '#f))
                _%method-table137871%_)))))
    (define specialize-class
      (lambda (_%klass137841%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137841%_ 'class))
            (let ((_%klass137845%_ _%klass137841%_))
              (__specialize-class _%klass137845%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1166.25-1166.30"
               'contract:
               'class-type?
               'value:
               _%klass137841%_)
              '#!void))))
    (define __specialize-method
      (lambda (_%klass137825%_
               _%method-table137826%_
               _%method137827%_
               _%proc137828%_)
        (let ((_%$e137830%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table137826%_
                  _%method137827%_
                  '#f))))
          (if _%$e137830%_
              _%$e137830%_
              (let ((_%$e137833%_
                     (__lookup-method-specializer _%proc137828%_)))
                (if _%$e137833%_
                    (let ((_%specialized-proc137838%_
                           (_%$e137833%_
                            _%klass137825%_
                            _%method-table137826%_)))
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table137826%_
                       _%method137827%_
                       _%specialized-proc137838%_))
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table137826%_
                       _%method137827%_
                       _%proc137828%_))))))))
    (define ___specialize-class
      (lambda (_%klass137692%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137692%_ 'class))
            (if (let* ((_%klass137695%_ _%klass137692%_)
                       (_%klass137700%_ _%klass137695%_))
                  (__class-type-metaclass? _%klass137700%_))
                (let* ((_%obj137712%_ _%klass137692%_)
                       (_%id137715%_ 'specialize-class)
                       (_%args137718%_ '())
                       (_%id137723%_ _%id137715%_))
                  (declare (not safe))
                  (##apply __call-method
                           _%obj137712%_
                           _%id137723%_
                           _%args137718%_))
                (if (let* ((_%pred137736%_ class-type-metaclass?)
                           (_%lst137739%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass137692%_
                               '6
                               '#f
                               '#f)))
                           (_%pred137744%_ _%pred137736%_))
                      (declare (not safe))
                      (__find _%pred137744%_ _%lst137739%_))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass137692%_)
                    (let ((_%method-table137757%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop137759%_ ((_%rest137761%_
                                            (let* ((_%klass137808%_
                                                    _%klass137692%_)
                                                   (_%klass137813%_
                                                    _%klass137808%_))
                                              (__class-precedence-list
                                               _%klass137813%_))))
                        (let* ((_%$%rest137762137770%_ _%rest137761%_)
                               (_%$%else137764137778%_
                                (lambda () _%method-table137757%_))
                               (_%$%K137766137796%_
                                (lambda (_%rest137781%_ _%xklass137782%_)
                                  (let ((_%$%xmethod-table137783137785%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass137782%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%$%xmethod-table137783137785%_
                                        (let* ((_%xmethod-table137787%_
                                                _%$%xmethod-table137783137785%_)
                                               (__tmp146309
                                                (lambda (_%$%g137788137791%_
                                                         _%$%g137789137793%_)
                                                  (__specialize-method
                                                   _%klass137692%_
                                                   _%method-table137757%_
                                                   _%$%g137788137791%_
                                                   _%$%g137789137793%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table137787%_
                                           __tmp146309))
                                        '#f))
                                  (_%loop137759%_ _%rest137781%_))))
                          (if (pair? _%$%rest137762137770%_)
                              (let ((_%$%hd137767137799%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest137762137770%_)))
                                    (_%$%tl137768137801%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest137762137770%_))))
                                (let* ((_%xklass137804%_ _%$%hd137767137799%_)
                                       (_%rest137806%_ _%$%tl137768137801%_))
                                  (_%$%K137766137796%_
                                   _%rest137806%_
                                   _%xklass137804%_)))
                              (_%$%else137764137778%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass137692%_))
                (__specialize-class (__shadow-class__0 _%klass137692%_))
                (error '"bad class; cannot specialize" _%klass137692%_)))))
    (define __seal-class!
      (lambda (_%klass137555%_)
        (let ((_%klass137558%_ _%klass137555%_))
          (if (let* ((_%klass137567%_ _%klass137558%_)
                     (_%klass137572%_ _%klass137567%_))
                (__class-type-sealed? _%klass137572%_))
              '#!void
              (begin
                (if (let* ((_%klass137585%_ _%klass137558%_)
                           (_%klass137590%_ _%klass137585%_))
                      (__class-type-metaclass? _%klass137590%_))
                    (let ()
                      (let* ((_%obj137601%_ _%klass137558%_)
                             (_%id137604%_ 'seal-class!)
                             (_%args137607%_ '())
                             (_%id137612%_ _%id137604%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj137601%_
                                 _%id137612%_
                                 _%args137607%_))
                      (let* ((_%klass137625%_ _%klass137558%_)
                             (_%klass137630%_ _%klass137625%_))
                        (__specialize-class _%klass137630%_)))
                    (if (let* ((_%pred137640%_ class-type-metaclass?)
                               (_%lst137643%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass137558%_
                                   '6
                                   '#f
                                   '#f)))
                               (_%pred137648%_ _%pred137640%_))
                          (declare (not safe))
                          (__find _%pred137648%_ _%lst137643%_))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass137558%_)
                        (let* ((_%klass137661%_ _%klass137558%_)
                               (_%klass137666%_ _%klass137661%_))
                          (__specialize-class _%klass137666%_))))
                (let* ((_%klass137677%_ _%klass137558%_)
                       (_%klass137682%_ _%klass137677%_))
                  (__class-type-seal! _%klass137682%_)))))))
    (define seal-class!
      (lambda (_%klass137541%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137541%_ 'class))
            (let ((_%klass137545%_ _%klass137541%_))
              (__seal-class! _%klass137545%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1212.20-1212.25"
               'contract:
               'class-type?
               'value:
               _%klass137541%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass137429%_ _%obj137430%_ _%id137431%_)
        (let* ((_%subklass137434%_ _%subklass137429%_)
               (_%id137442%_ _%id137431%_))
          (letrec ((_%find-next-method137451%_
                    (lambda (_%klass137453%_)
                      (let _%lp137455%_ ((_%rest137457%_
                                          (let ((_%klass137526%_
                                                 _%klass137453%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%klass137526%_
                                                   'class))
                                                (let ((_%klass137531%_
                                                       _%klass137526%_))
                                                  (__class-precedence-list
                                                   _%klass137531%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/mop
                                                   'contract:
                                                   'class-type?
                                                   'value:
                                                   _%klass137526%_)
                                                  '#!void)))))
                        (let* ((_%$%rest137458137466%_ _%rest137457%_)
                               (_%$%else137460137474%_ (lambda () '#f))
                               (_%$%K137462137514%_
                                (lambda (_%rest137477%_ _%klass137478%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass137434%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass137478%_)))
                                      (let* ((_%mixins137480%_ _%rest137477%_)
                                             (_%obj137483%_ _%obj137430%_)
                                             (_%id137486%_ _%id137442%_)
                                             (_%id137491%_ _%id137486%_))
                                        (__mixin-find-method
                                         _%mixins137480%_
                                         _%obj137483%_
                                         _%id137491%_))
                                      (_%lp137455%_ _%rest137477%_)))))
                          (if (pair? _%$%rest137458137466%_)
                              (let ((_%$%hd137463137517%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest137458137466%_)))
                                    (_%$%tl137464137519%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest137458137466%_))))
                                (let* ((_%klass137522%_ _%$%hd137463137517%_)
                                       (_%rest137524%_ _%$%tl137464137519%_))
                                  (_%$%K137462137514%_
                                   _%rest137524%_
                                   _%klass137522%_)))
                              (_%$%else137460137474%_)))))))
            (_%find-next-method137451%_ (class-of _%obj137430%_))))))
    (define next-method
      (lambda (_%subklass137403%_ _%obj137404%_ _%id137405%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass137403%_ 'class))
            (let ((_%subklass137409%_ _%subklass137403%_))
              (if (symbol? _%id137405%_)
                  (let ((_%id137419%_ _%id137405%_))
                    (__next-method
                     _%subklass137409%_
                     _%obj137404%_
                     _%id137419%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1234.44-1234.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id137405%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1234.20-1234.28"
               'contract:
               'class-type?
               'value:
               _%subklass137403%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass137338%_ _%obj137339%_ _%id137340%_ . _%args137341%_)
        (let* ((_%subklass137344%_ _%subklass137338%_)
               (_%id137352%_ _%id137340%_)
               (_%$e137397%_
                (let* ((_%subklass137361%_ _%subklass137344%_)
                       (_%obj137364%_ _%obj137339%_)
                       (_%id137367%_ _%id137352%_)
                       (_%subklass137372%_ _%subklass137361%_)
                       (_%id137387%_ _%id137367%_))
                  (__next-method
                   _%subklass137372%_
                   _%obj137364%_
                   _%id137387%_))))
          (if _%$e137397%_
              (apply _%$e137397%_ _%obj137339%_ _%args137341%_)
              (error '"cannot find next method"
                     'object:
                     _%obj137339%_
                     'method:
                     _%id137352%_)))))
    (define call-next-method
      (lambda (_%subklass137311%_ _%obj137312%_ _%id137313%_ . _%args137314%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass137311%_ 'class))
            (let ((_%subklass137318%_ _%subklass137311%_))
              (if (symbol? _%id137313%_)
                  (let ((_%id137328%_ _%id137313%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass137318%_
                             _%obj137312%_
                             _%id137328%_
                             _%args137314%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1245.49-1245.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id137313%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1245.25-1245.33"
               'contract:
               'class-type?
               'value:
               _%subklass137311%_)
              '#!void))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type137090%_ _%properties137091%_)
        (letrec ((_%shadow-type-id137093%_
                  (lambda (_%type137299%_)
                    (let ((__tmp146310
                           (let ()
                             (declare (not safe))
                             (##type-name _%type137299%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp146310 '"::t"))))
                 (_%shadow-type-name137094%_
                  (lambda (_%type137297%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type137297%_))))
                 (_%make-shadow-class137095%_
                  (lambda (_%type137179%_ _%precedence-list137180%_)
                    (let* ((_%super137182%_
                            (if (pair? _%precedence-list137180%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list137180%_))
                                      '())
                                '()))
                           (_%klass137294%_
                            (let* ((_%id137184%_
                                    (_%shadow-type-id137093%_ _%type137179%_))
                                   (_%name137187%_
                                    (let ()
                                      (declare (not safe))
                                      (##type-name _%type137179%_)))
                                   (_%direct-supers137190%_ _%super137182%_)
                                   (_%direct-slots137193%_ '())
                                   (_%properties137219%_
                                    (cons (cons 'struct: '#t)
                                          (cons (cons 'system: '#t)
                                                (cons (cons 'system-type:
                                                            _%type137179%_)
                                                      (append (if (let ((_%type137196%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%type137179%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##type? _%type137196%_))
                                (let ((_%type137201%_ _%type137196%_))
                                  (__type-extensible? _%type137201%_))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   'gerbil/runtime/mop
                                   'contract:
                                   '##type?
                                   'value:
                                   _%type137196%_)
                                  '#!void)))
                          '()
                          (cons (cons 'final: '#t) '()))
                      _%properties137091%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%constructor137222%_ '#f)
                                   (_%id137227%_ _%id137184%_))
                              (if (symbol? _%name137187%_)
                                  (let* ((_%name137238%_ _%name137187%_)
                                         (_%direct-supers137248%_
                                          _%direct-supers137190%_)
                                         (_%direct-slots137258%_
                                          _%direct-slots137193%_)
                                         (_%properties137268%_
                                          _%properties137219%_))
                                    (if (let ((_%$e137280%_ '#t))
                                          (and _%$e137280%_ _%$e137280%_))
                                        (let ((_%constructor137284%_
                                               _%constructor137222%_))
                                          (__make-class-type
                                           _%id137227%_
                                           _%name137238%_
                                           _%direct-supers137248%_
                                           _%direct-slots137258%_
                                           _%properties137268%_
                                           _%constructor137284%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '(? (or not symbol?))
                                           'value:
                                           _%constructor137222%_)
                                          '#!void)))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     'symbol?
                                     'value:
                                     _%name137187%_)
                                    '#!void)))))
                      (let ((__tmp146311
                             (let ()
                               (declare (not safe))
                               (##type-id _%type137179%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp146311
                         _%klass137294%_))
                      _%klass137294%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again137099%_ ((_%spin137102%_ '0))
              (if (let ((__tmp146312
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp146312 '0))
                  (let ((__tmp146313 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp146313))
                  (if (let () (declare (not safe)) (##fx< _%spin137102%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again137099%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin137102%_ '1))))
                      (let ((_%owner137108%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner137108%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner137108%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again137099%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e137114%_
                 (let ((__tmp146314
                        (let ()
                          (declare (not safe))
                          (##type-id _%type137090%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp146314 '#f))))
            (if _%$e137114%_
                (let ()
                  (let ()
                    (declare (not interrupts-enabled))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##vector-set! __shadow-classes-lock '1 '#f))
                      (let ()
                        (declare (not safe))
                        (##vector-cas! __shadow-classes-lock '0 '0 '1))))
                  _%$e137114%_)
                (let _%loop137122%_ ((_%super137124%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type137090%_)))
                                     (_%hierarchy137125%_ '()))
                  (if (not _%super137124%_)
                      (let _%loop137128%_ ((_%rest137130%_ _%hierarchy137125%_)
                                           (_%precedence-list137131%_ '()))
                        (let* ((_%$%rest137132137140%_ _%rest137130%_)
                               (_%$%else137134137152%_
                                (lambda ()
                                  (let ((_%klass137148%_
                                         (_%make-shadow-class137095%_
                                          _%type137090%_
                                          _%precedence-list137131%_)))
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
                                    _%klass137148%_)))
                               (_%$%K137136137166%_
                                (lambda (_%rest137155%_ _%type137156%_)
                                  (let ((_%$e137158%_
                                         (let ((__tmp146315
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type137156%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp146315
                                            '#f))))
                                    (if _%$e137158%_
                                        (_%loop137128%_
                                         _%rest137155%_
                                         (cons _%$e137158%_
                                               _%precedence-list137131%_))
                                        (let ((_%klass137164%_
                                               (_%make-shadow-class137095%_
                                                _%type137156%_
                                                _%precedence-list137131%_)))
                                          (_%loop137128%_
                                           _%rest137155%_
                                           (cons _%klass137164%_
                                                 _%precedence-list137131%_))))))))
                          (if (pair? _%$%rest137132137140%_)
                              (let ((_%$%hd137137137169%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest137132137140%_)))
                                    (_%$%tl137138137171%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest137132137140%_))))
                                (let* ((_%type137174%_ _%$%hd137137137169%_)
                                       (_%rest137176%_ _%$%tl137138137171%_))
                                  (_%$%K137136137166%_
                                   _%rest137176%_
                                   _%type137174%_)))
                              (_%$%else137134137152%_))))
                      (_%loop137122%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super137124%_))
                       (cons _%super137124%_ _%hierarchy137125%_)))))))))
    (define __shadow-class__0
      (lambda (_%type137304%_)
        (let ((_%properties137306%_ '()))
          (__shadow-class__% _%type137304%_ _%properties137306%_))))
    (define __shadow-class
      (lambda _g146316_
        (let ((_g146317_ (let () (declare (not safe)) (##length _g146316_))))
          (cond ((let () (declare (not safe)) (##fx= _g146317_ 1))
                 (apply __shadow-class__0 _g146316_))
                ((let () (declare (not safe)) (##fx= _g146317_ 2))
                 (apply __shadow-class__% _g146316_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g146316_))))))
    (define __type
      (let* ((_%tb137078%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e137080%_ _%tb137078%_))
        (if (eq? '2 _%$e137080%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e137080%_)
                (let ((_%flonum-self-tagging-tags137083%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits137084%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e137086%_ _%flonum-self-tagging-tags137083%_))
                    (if (eq? '0 _%$e137086%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits137084%_ '2))
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
                        (if (eq? '1 _%$e137086%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits137084%_ '2))
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
                            (if (eq? '2 _%$e137086%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e137086%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e137086%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags137083%_))))))))
                (error '"unexpected tag width" _%tb137078%_)))))
    (define __primitive-class
      (let ((__tmp146318 (vector-length __type)))
        (declare (not safe))
        (##make-vector __tmp146318 '#f)))
    (define __boxvalues-class
      (let () (declare (not safe)) (##make-vector '2 '#f)))
    (define __subtype-class
      (let () (declare (not safe)) (##make-vector '32 '#f)))
    (define __char-class '#f)
    (define __special-class
      (let () (declare (not safe)) (##make-vector '16 '#f)))
    (define __class-of
      (let* ((_%len136968%_ (vector-length __type))
             (_%cv136970%_
              (let () (declare (not safe)) (##make-vector _%len136968%_ '#f))))
        (let _%loop136973%_ ((_%i136975%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i136975%_ _%len136968%_))
              (let* ((_%t136977%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i136975%_)))
                     (_%f137075%_
                      (if (eq? _%t136977%_ 'undefined)
                          (lambda (_%obj136980%_)
                            (error '"object type is undefined" _%obj136980%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t136977%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj136983%_)
                                (declare (not interrupts-enabled) (not safe))
                                (let ((_%$e136986%_
                                       (##vector-ref
                                        __primitive-class
                                        _%i136975%_)))
                                  (if _%$e136986%_
                                      _%$e136986%_
                                      (let ((_%klass136990%_
                                             (__system-class _%t136977%_)))
                                        (##vector-set!
                                         __primitive-class
                                         _%i136975%_
                                         _%klass136990%_)
                                        _%klass136990%_))))
                              (if (eq? _%t136977%_ 'subtyped)
                                  (lambda (_%obj136994%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st136997%_
                                           (##subtype _%obj136994%_)))
                                      (if (##fx= _%st136997%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass137000%_
                                                 (##structure-type
                                                  _%obj136994%_)))
                                            (if (##structure-instance-of?
                                                 _%klass137000%_
                                                 'class)
                                                _%klass137000%_
                                                (__shadow-class__0
                                                 _%klass137000%_)))
                                          (if (##fx= _%st136997%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj136994%_)
                                                         '1)
                                                  (let ((_%$e137003%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '0)))
                                                    (if _%$e137003%_
                                                        _%$e137003%_
                                                        (let ((_%klass137007%_
                                                               (__system-class
                                                                'box)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '0
                                                           _%klass137007%_)
                                                          _%klass137007%_)))
                                                  (let ((_%$e137010%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '1)))
                                                    (if _%$e137010%_
                                                        _%$e137010%_
                                                        (let ((_%klass137014%_
                                                               (__system-class
                                                                'values)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '1
                                                           _%klass137014%_)
                                                          _%klass137014%_))))
                                              (let ((_%$e137017%_
                                                     (##vector-ref
                                                      __subtype-class
                                                      _%st136997%_)))
                                                (if _%$e137017%_
                                                    _%$e137017%_
                                                    (let ((_%klass137034%_
                                                           (let ((_%$e137021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##vector-ref __subtype-id _%st136997%_)))
                     (if _%$e137021%_
                         (let ((_%$e137026%_
                                (##vector-ref __subtype-class _%st136997%_)))
                           (if _%$e137026%_
                               _%$e137026%_
                               (let ((_%klass137030%_
                                      (__system-class _%$e137021%_)))
                                 (##vector-set!
                                  __subtype-class
                                  _%st136997%_
                                  _%klass137030%_)
                                 _%klass137030%_)))
                         (error '"unknown class"
                                'object:
                                _%obj136994%_
                                'subtype:
                                _%st136997%_)))))
              (##vector-set! __subtype-class _%st136997%_ _%klass137034%_)
              _%klass137034%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (eq? _%t136977%_ 'special)
                                      (lambda (_%obj137038%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (let ((_%x137041%_
                                               (##type-cast _%obj137038%_ '0)))
                                          (if (##fx> _%x137041%_ '0)
                                              (let ((_%$e137044%_
                                                     __char-class))
                                                (if _%$e137044%_
                                                    _%$e137044%_
                                                    (let ((_%klass137048%_
                                                           (__system-class
                                                            'char)))
                                                      (set! __char-class
                                                            _%klass137048%_)
                                                      _%klass137048%_)))
                                              (let* ((_%t137051%_
                                                      (##fx- _%x137041%_))
                                                     (_%$e137054%_
                                                      (##vector-ref
                                                       __special-class
                                                       _%t137051%_)))
                                                (if _%$e137054%_
                                                    _%$e137054%_
                                                    (let ((_%klass137072%_
                                                           (if (eq? _%obj137038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                       (__system-class 'null)
                       (if (eq? _%obj137038%_ '#f)
                           (__system-class 'false)
                           (if (eq? _%obj137038%_ '#t)
                               (__system-class 'true)
                               (if (eq? _%obj137038%_ '#!void)
                                   (__system-class 'void)
                                   (if (eq? _%obj137038%_ '#!eof)
                                       (__system-class 'eof)
                                       (if (eq? _%obj137038%_ '#!unbound)
                                           (__system-class 'unbound)
                                           (if (eq? _%obj137038%_ '#!unbound2)
                                               (__system-class 'unbound2)
                                               (if (eq? _%obj137038%_
                                                        '#!optional)
                                                   (__system-class 'optional)
                                                   (if (eq? _%obj137038%_
                                                            '#!rest)
                                                       (__system-class 'rest)
                                                       (if (eq? _%obj137038%_
                                                                '#!key)
                                                           (__system-class
                                                            'key)
                                                           (if (eq? _%obj137038%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (macro-unused-obj))
                       (__system-class 'unused)
                       (if (eq? _%obj137038%_ (macro-deleted-obj))
                           (__system-class 'deleted)
                           (if (eq? _%obj137038%_ (macro-absent-obj))
                               (__system-class 'absent)
                               (__system-class 'unknown))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (##vector-set! __special-class _%t137051%_ _%klass137072%_)
              _%klass137072%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t136977%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv136970%_ _%i136975%_ _%f137075%_))
                (_%loop136973%_
                 (let () (declare (not safe)) (##fx+ _%i136975%_ '1))))
              _%cv136970%_))))
    (define type-of
      (lambda (_%obj136964%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj136964%_)))))
    (define class-of
      (lambda (_%obj136955%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t136959%_ (##type _%obj136955%_))
                 (_%f136961%_ (##vector-ref __class-of _%t136959%_)))
            (_%f136961%_ _%obj136955%_)))))
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
      (lambda (_%id136949%_)
        (let ((_%$e136951%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id136949%_ '#f))))
          (if _%$e136951%_
              _%$e136951%_
              (error '"unknown system class" _%id136949%_)))))
    (define __make-system-class
      (lambda (_%id136851%_ _%super136852%_ _%properties136853%_)
        (let ((_%klass136947%_
               (let* ((_%id136855%_ _%id136851%_)
                      (_%name136858%_ _%id136851%_)
                      (_%direct-supers136861%_ _%super136852%_)
                      (_%direct-slots136864%_ '())
                      (_%properties136867%_
                       (cons '(system: . #t) _%properties136853%_))
                      (_%constructor136870%_ '#f))
                 (if (symbol? _%id136855%_)
                     (let ((_%id136875%_ _%id136855%_))
                       (if (symbol? _%name136858%_)
                           (let ((_%name136891%_ _%name136858%_))
                             (if (list? _%direct-supers136861%_)
                                 (let* ((_%direct-supers136901%_
                                         _%direct-supers136861%_)
                                        (_%direct-slots136911%_
                                         _%direct-slots136864%_)
                                        (_%properties136921%_
                                         _%properties136867%_))
                                   (if (let ((_%$e136933%_ '#t))
                                         (and _%$e136933%_ _%$e136933%_))
                                       (let ((_%constructor136937%_
                                              _%constructor136870%_))
                                         (__make-class-type
                                          _%id136875%_
                                          _%name136891%_
                                          _%direct-supers136901%_
                                          _%direct-slots136911%_
                                          _%properties136921%_
                                          _%constructor136937%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          '(? (or not symbol?))
                                          'value:
                                          _%constructor136870%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'list?
                                    'value:
                                    _%direct-supers136861%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'symbol?
                              'value:
                              _%name136858%_)
                             '#!void)))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id136855%_)
                       '#!void)))))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id136851%_
             _%klass136947%_))
          _%klass136947%_)))))
