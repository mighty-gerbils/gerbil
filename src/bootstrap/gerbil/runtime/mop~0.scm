(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1781697556)
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
      (let ((_%flags139052%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties139053%_ '((direct-slots:) (system: . #t)))
            (_%slot-table139054%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags139052%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table139054%_
           _%properties139053%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots139009%_
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
             (_%slot-vector139011%_ (list->vector (cons '#f _%slots139009%_)))
             (_%slot-table139037%_
              (let ((_%slot-table139013%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp142131
                       (lambda (_%slot139015%_ _%field139016%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table139013%_
                            _%slot139015%_
                            _%field139016%_))
                         (let ((__tmp142132
                                (let ((_%sym139018%_ _%slot139015%_))
                                  (if (symbol? _%sym139018%_)
                                      (let ((_%sym139023%_ _%sym139018%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym139023%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym139018%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table139013%_
                            __tmp142132
                            _%field139016%_))))
                      (__tmp142129
                       (let ((__tmp142130
                              (let ()
                                (declare (not safe))
                                (##length _%slots139009%_))))
                         (declare (not safe))
                         (##iota __tmp142130 '1))))
                  (declare (not safe))
                  (##for-each __tmp142131 _%slots139009%_ __tmp142129))
                _%slot-table139013%_))
             (_%flags139039%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields139045%_
              (list->vector
               (let ((__tmp142133
                      (map (lambda (_%$%g139040139042%_)
                             (list _%$%g139040139042%_ '5 '#f))
                           (drop _%slots139009%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp142133))))
             (_%properties139047%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots139009%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t139049%_
              (let ((__tmp142134 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags139039%_
                 ##type-type
                 _%fields139045%_
                 __tmp142134
                 _%slot-vector139011%_
                 _%slot-table139037%_
                 _%properties139047%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t139049%_ _%t139049%_))
        _%t139049%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags139005%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties139006%_ '((direct-slots:) (system: . #t)))
            (_%slot-table139007%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp142135 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags139005%_
           '#f
           '#()
           __tmp142135
           '#(#f)
           _%slot-table139007%_
           _%properties139006%_
           '#f
           '#f
           '#f
           '#f))))
    (define __class-type
      (lambda (_%klass138993%_)
        (let ((_%klass138996%_ _%klass138993%_))
          (declare (not safe))
          (##structure-type _%klass138996%_))))
    (define class-type
      (lambda (_%klass138979%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138979%_ 'class))
            (let ((_%klass138983%_ _%klass138979%_))
              (__class-type _%klass138983%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass138979%_)
              '#!void))))
    (define class-type?
      (lambda (_%obj138977%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj138977%_ 'class))))
    (define __class-type=?
      (lambda (_%x138956%_ _%y138957%_)
        (let* ((_%x138960%_ _%x138956%_) (_%y138968%_ _%y138957%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x138960%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y138968%_ '1 '#f '#f))))))
    (define class-type=?
      (lambda (_%x138931%_ _%y138932%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x138931%_ 'class))
            (let ((_%x138936%_ _%x138931%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y138932%_ 'class))
                  (let ((_%y138946%_ _%y138932%_))
                    (__class-type=? _%x138936%_ _%y138946%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y138932%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x138931%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type138919%_)
        (let* ((_%type138922%_ _%type138919%_)
               (__tmp142136
                (let ((__tmp142137
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type138922%_))))
                  (declare (not safe))
                  (##fxand __tmp142137 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp142136 type-flag-opaque))))
    (define type-opaque?
      (lambda (_%type138905%_)
        (if (let () (declare (not safe)) (##type? _%type138905%_))
            (let ((_%type138909%_ _%type138905%_))
              (__type-opaque? _%type138909%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type138905%_)
              '#!void))))
    (define __class-type-opaque?
      (lambda (_%klass138893%_)
        (let* ((_%klass138896%_ _%klass138893%_)
               (__tmp142138
                (let ((__tmp142139
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass138896%_))))
                  (declare (not safe))
                  (##fxand __tmp142139 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp142138 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass138879%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138879%_ 'class))
            (let ((_%klass138883%_ _%klass138879%_))
              (__class-type-opaque? _%klass138883%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass138879%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type138867%_)
        (let* ((_%type138870%_ _%type138867%_)
               (__tmp142140
                (let ((__tmp142141
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type138870%_))))
                  (declare (not safe))
                  (##fxand __tmp142141 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp142140 type-flag-extensible))))
    (define type-extensible?
      (lambda (_%type138853%_)
        (if (let () (declare (not safe)) (##type? _%type138853%_))
            (let ((_%type138857%_ _%type138853%_))
              (__type-extensible? _%type138857%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type138853%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type138841%_)
        (let* ((_%type138844%_ _%type138841%_)
               (__tmp142142
                (let ((__tmp142143
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type138844%_))))
                  (declare (not safe))
                  (##fxand __tmp142143 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp142142 '0))))
    (define class-type-final?
      (lambda (_%type138827%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type138827%_ 'class))
            (let ((_%type138831%_ _%type138827%_))
              (__class-type-final? _%type138831%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type138827%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass138815%_)
        (let* ((_%klass138818%_ _%klass138815%_)
               (__tmp142144
                (let ((__tmp142145
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass138818%_))))
                  (declare (not safe))
                  (##fxand __tmp142145 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp142144 class-type-flag-struct))))
    (define class-type-struct?
      (lambda (_%klass138801%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138801%_ 'class))
            (let ((_%klass138805%_ _%klass138801%_))
              (__class-type-struct? _%klass138805%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass138801%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass138789%_)
        (let* ((_%klass138792%_ _%klass138789%_)
               (__tmp142146
                (let ((__tmp142147
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass138792%_))))
                  (declare (not safe))
                  (##fxand __tmp142147 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp142146 class-type-flag-sealed))))
    (define class-type-sealed?
      (lambda (_%klass138775%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138775%_ 'class))
            (let ((_%klass138779%_ _%klass138775%_))
              (__class-type-sealed? _%klass138779%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass138775%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass138763%_)
        (let* ((_%klass138766%_ _%klass138763%_)
               (__tmp142148
                (let ((__tmp142149
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass138766%_))))
                  (declare (not safe))
                  (##fxand __tmp142149 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp142148 class-type-flag-metaclass))))
    (define class-type-metaclass?
      (lambda (_%klass138749%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138749%_ 'class))
            (let ((_%klass138753%_ _%klass138749%_))
              (__class-type-metaclass? _%klass138753%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass138749%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass138737%_)
        (let* ((_%klass138740%_ _%klass138737%_)
               (__tmp142150
                (let ((__tmp142151
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass138740%_))))
                  (declare (not safe))
                  (##fxand __tmp142151 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp142150 class-type-flag-system))))
    (define class-type-system?
      (lambda (_%klass138723%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138723%_ 'class))
            (let ((_%klass138727%_ _%klass138723%_))
              (__class-type-system? _%klass138727%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass138723%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass138711%_)
        (let* ((_%klass138714%_ _%klass138711%_)
               (__tmp142152
                (let ((__tmp142153
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass138714%_))))
                  (declare (not safe))
                  (##fxand __tmp142153 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp142152 class-type-flag-acyclic))))
    (define class-type-acyclic?
      (lambda (_%klass138697%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138697%_ 'class))
            (let ((_%klass138701%_ _%klass138697%_))
              (__class-type-acyclic? _%klass138701%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass138697%_)
              '#!void))))
    (define make-class-type-descriptor
      (lambda (_%type-id138471%_
               _%type-name138472%_
               _%type-super138473%_
               _%precedence-list138474%_
               _%slot-vector138475%_
               _%properties138476%_
               _%constructor138477%_
               _%slot-table138478%_
               _%methods138479%_)
        (letrec ((_%make-props!138482%_
                  (lambda (_%key138647%_)
                    (letrec* ((_%ht138649%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!138650%_
                               (lambda (_%ht138690%_ _%slots138691%_)
                                 (for-each
                                  (lambda (_%$%g138692138694%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht138690%_
                                       _%$%g138692138694%_
                                       '#t)))
                                  _%slots138691%_)))
                              (_%put-alist!138651%_
                               (lambda (_%ht138679%_
                                        _%key138680%_
                                        _%alist138681%_)
                                 (let ((_%$e138683%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key138680%_
                                           _%alist138681%_))))
                                   (if _%$e138683%_
                                       (_%put-slots!138650%_
                                        _%ht138679%_
                                        _%$e138683%_)
                                       '#!void)))))
                      (_%put-alist!138651%_
                       _%ht138649%_
                       _%key138647%_
                       _%properties138476%_)
                      (for-each
                       (lambda (_%mixin138653%_)
                         (let ((_%alist138655%_
                                (##structure-ref
                                 _%mixin138653%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist138655%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key138647%_
                                           _%alist138655%_))))
                               (_%put-slots!138650%_
                                _%ht138649%_
                                (let ((_%klass138660%_ _%mixin138653%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass138660%_
                                         'class))
                                      (let ((_%klass138665%_ _%klass138660%_))
                                        (__class-type-slot-list
                                         _%klass138665%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass138660%_)
                                        '#!void))))
                               (_%put-alist!138651%_
                                _%ht138649%_
                                _%key138647%_
                                _%alist138655%_))))
                       _%precedence-list138474%_)
                      _%ht138649%_)))
                 (_%has-no-alist-override?138483%_
                  (lambda (_%key138636%_ _%alist138637%_)
                    (let ((_%$e138639%_
                           (let ()
                             (declare (not safe))
                             (agetq__0 _%key138636%_ _%alist138637%_))))
                      (if _%$e138639%_ (eq? _%$e138639%_ '#t) '#t)))))
          (let* ((_%transparent?138503%_
                  (let ((__tmp142154
                         (if _%type-super138473%_
                             (not (let ((_%type138485%_ _%type-super138473%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##type? _%type138485%_))
                                        (let ((_%type138490%_ _%type138485%_))
                                          (__type-opaque? _%type138490%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '##type?
                                           'value:
                                           _%type138485%_)
                                          '#!void))))
                             '#t)))
                    (declare (not safe))
                    (agetq__% 'transparent: _%properties138476%_ __tmp142154)))
                 (_%all-slots-printable?138505%_
                  (if _%transparent?138503%_
                      (_%has-no-alist-override?138483%_
                       'print:
                       _%properties138476%_)
                      '#f))
                 (_%printable138507%_
                  (if (not _%all-slots-printable?138505%_)
                      (_%make-props!138482%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?138509%_
                  (if _%transparent?138503%_
                      (_%has-no-alist-override?138483%_
                       'equal:
                       _%properties138476%_)
                      '#f))
                 (_%equalable138511%_
                  (if (not _%all-slots-equalable?138509%_)
                      (_%make-props!138482%_ 'equal:)
                      '#f))
                 (_%first-new-field138513%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super138473%_ 'class))
                      (let ((__tmp142155
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super138473%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp142155))
                      '1))
                 (_%field-info-length138515%_
                  (let ((__tmp142156
                         (let ((__tmp142157
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector138475%_))))
                           (declare (not safe))
                           (##fx- __tmp142157 _%first-new-field138513%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp142156)))
                 (_%field-info138517%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length138515%_ '#f)))
                 (_%struct?138519%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties138476%_)))
                 (_%final?138521%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties138476%_)))
                 (_%metaclass138528%_
                  (let ((_%$%metaclass138522138524%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties138476%_))))
                    (if _%$%metaclass138522138524%_
                        (let ((_%metaclass138526%_
                               _%$%metaclass138522138524%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass138526%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id138471%_
                                     'metaclass:
                                     _%metaclass138526%_))
                          _%metaclass138526%_)
                        '#f)))
                 (_%system?138530%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties138476%_)))
                 (_%opaque?138532%_ (not _%transparent?138503%_))
                 (_%acyclic?138534%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties138476%_)))
                 (_%type-flags138536%_
                  (let ((__tmp142163
                         (if _%final?138521%_ '0 type-flag-extensible))
                        (__tmp142162
                         (if _%opaque?138532%_ type-flag-opaque '0))
                        (__tmp142161
                         (if _%struct?138519%_ class-type-flag-struct '0))
                        (__tmp142160
                         (if _%metaclass138528%_ class-type-flag-metaclass '0))
                        (__tmp142159
                         (if _%system?138530%_ class-type-flag-system '0))
                        (__tmp142158
                         (if _%acyclic?138534%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp142163
                             __tmp142162
                             __tmp142161
                             __tmp142160
                             __tmp142159
                             __tmp142158)))
                 (_%precedence-list138544%_
                  (let ((_%$e138538%_ (memq t::t _%precedence-list138474%_)))
                    (if _%$e138538%_
                        (if (null? (cdr _%$e138538%_))
                            _%precedence-list138474%_
                            (error '"BUG: t::t is not last in the precedence list"
                                   'precedence-list:
                                   _%precedence-list138474%_))
                        (let ((__tmp142164 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list138474%_ __tmp142164))))))
            (let _%loop138547%_ ((_%i138549%_ _%first-new-field138513%_)
                                 (_%j138550%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j138550%_ _%field-info-length138515%_))
                  (let* ((_%slot138552%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector138475%_ _%i138549%_)))
                         (_%flags138560%_
                          (let ((__tmp142166
                                 (if (or _%all-slots-printable?138505%_
                                         (let ()
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            _%printable138507%_
                                            _%slot138552%_
                                            '#f)))
                                     '0
                                     '1))
                                (__tmp142165
                                 (if (or _%all-slots-equalable?138509%_
                                         (let ()
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            _%equalable138511%_
                                            _%slot138552%_
                                            '#f)))
                                     '0
                                     '4)))
                            (declare (not safe))
                            (##fxior __tmp142166 __tmp142165))))
                    (vector-set!
                     _%field-info138517%_
                     _%j138550%_
                     _%slot138552%_)
                    (vector-set!
                     _%field-info138517%_
                     (let () (declare (not safe)) (##fx+ _%j138550%_ '1))
                     _%flags138560%_)
                    (_%loop138547%_
                     (let () (declare (not safe)) (##fx+ _%i138549%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j138550%_ '3))))
                  '#!void))
            (if _%metaclass138528%_
                (let ((_%val138599%_
                       (let* ((_%klass138563%_ _%metaclass138528%_)
                              (_%args138566%_
                               (list _%type-id138471%_
                                     _%type-name138472%_
                                     _%type-flags138536%_
                                     _%type-super138473%_
                                     _%field-info138517%_
                                     _%precedence-list138544%_
                                     _%slot-vector138475%_
                                     _%slot-table138478%_
                                     _%properties138476%_
                                     _%constructor138477%_
                                     _%methods138479%_)))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%klass138563%_
                                'class))
                             (let ((_%klass138571%_ _%klass138563%_))
                               (declare (not safe))
                               (##apply __make-instance
                                        _%klass138571%_
                                        _%args138566%_))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%klass138563%_)
                               '#!void)))))
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   '"\"gerbil/runtime/mop.ss\"@293.10-297.95"
                   'contract:
                   '(class-type? val)
                   'value:
                   _%val138599%_)
                  '#!void)
                (let ((_%klass138602%_
                       (let ()
                         (declare (not safe))
                         (##structure
                          class::t
                          _%type-id138471%_
                          _%type-name138472%_
                          _%type-flags138536%_
                          _%type-super138473%_
                          _%field-info138517%_
                          _%precedence-list138544%_
                          _%slot-vector138475%_
                          _%slot-table138478%_
                          _%properties138476%_
                          _%constructor138477%_
                          _%methods138479%_
                          '#f
                          '#f))))
                  (for-each
                   (lambda (_%super138604%_)
                     (let ()
                       (declare (not interrupts-enabled))
                       (let _%again138608%_ ((_%spin138611%_ '0))
                         (if (let ((__tmp142167
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __class-type-properties-lock
                                       '0
                                       '1
                                       '0))))
                               (declare (not safe))
                               (##fx= __tmp142167 '0))
                             (let ((__tmp142168 (current-thread)))
                               (declare (not safe))
                               (##vector-set!
                                __class-type-properties-lock
                                '1
                                __tmp142168))
                             (if (let ()
                                   (declare (not safe))
                                   (##fx< _%spin138611%_ '10))
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##thread-yield!))
                                   (_%again138608%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%spin138611%_ '1))))
                                 (let ((_%owner138617%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           __class-type-properties-lock
                                           '1))))
                                   (if (eq? _%owner138617%_
                                            (macro-current-thread))
                                       (let ()
                                         (declare (not safe))
                                         (##thread-deadlock-action!))
                                       (if (macro-thread-end-condvar
                                            _%owner138617%_)
                                           (let ()
                                             (let ()
                                               (declare (not safe))
                                               (##thread-yield!))
                                             (_%again138608%_ '0))
                                           (let ()
                                             (declare (not safe))
                                             (##thread-deadlock-action!)))))))))
                     (let ((_%$r138631%_
                            (let* ((_%props138623%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%super138604%_
                                       '9
                                       '#f
                                       '#f)))
                                   (_%$e138625%_
                                    (assq 'subclasses: _%props138623%_)))
                              (if _%$e138625%_
                                  (set-cdr!
                                   _%$e138625%_
                                   (cons _%klass138602%_ (cdr _%$e138625%_)))
                                  (let ((__tmp142169
                                         (cons (cons 'subclasses:
                                                     (cons _%klass138602%_
                                                           '()))
                                               _%props138623%_)))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _%super138604%_
                                     __tmp142169
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
                       _%$r138631%_))
                   (let ()
                     (declare (not safe))
                     (agetq__% 'direct-supers: _%properties138476%_ '())))
                  _%klass138602%_))))))
    (define class-type-id
      (lambda (_%klass138469%_)
        (##structure-ref _%klass138469%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass138467%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass138467%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass138464%_ _%val138465%_)
        (##structure-set! _%klass138464%_ _%val138465%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass138459%_ _%val138461%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass138459%_
           _%val138461%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass138457%_)
        (##structure-ref _%klass138457%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass138455%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass138455%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass138452%_ _%val138453%_)
        (##structure-set! _%klass138452%_ _%val138453%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass138447%_ _%val138449%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass138447%_
           _%val138449%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass138445%_)
        (##structure-ref _%klass138445%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass138443%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass138443%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass138440%_ _%val138441%_)
        (##structure-set! _%klass138440%_ _%val138441%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass138435%_ _%val138437%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass138435%_
           _%val138437%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass138433%_)
        (##structure-ref _%klass138433%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass138431%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass138431%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass138428%_ _%val138429%_)
        (##structure-set! _%klass138428%_ _%val138429%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass138423%_ _%val138425%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass138423%_
           _%val138425%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass138421%_)
        (##structure-ref _%klass138421%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass138419%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass138419%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass138416%_ _%val138417%_)
        (##structure-set! _%klass138416%_ _%val138417%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass138411%_ _%val138413%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass138411%_
           _%val138413%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass138409%_)
        (##structure-ref _%klass138409%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass138407%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass138407%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass138404%_ _%val138405%_)
        (##structure-set!
         _%klass138404%_
         _%val138405%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass138399%_ _%val138401%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass138399%_
           _%val138401%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass138397%_)
        (##structure-ref _%klass138397%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass138395%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass138395%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass138392%_ _%val138393%_)
        (##structure-set!
         _%klass138392%_
         _%val138393%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass138387%_ _%val138389%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass138387%_
           _%val138389%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass138385%_)
        (##structure-ref _%klass138385%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass138383%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass138383%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass138380%_ _%val138381%_)
        (##structure-set!
         _%klass138380%_
         _%val138381%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass138375%_ _%val138377%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass138375%_
           _%val138377%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass138373%_)
        (##structure-ref _%klass138373%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass138371%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass138371%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass138368%_ _%val138369%_)
        (##structure-set!
         _%klass138368%_
         _%val138369%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass138363%_ _%val138365%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass138363%_
           _%val138365%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass138361%_)
        (##structure-ref _%klass138361%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass138359%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass138359%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass138356%_ _%val138357%_)
        (##structure-set!
         _%klass138356%_
         _%val138357%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass138351%_ _%val138353%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass138351%_
           _%val138353%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass138349%_)
        (##structure-ref _%klass138349%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass138347%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass138347%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass138344%_ _%val138345%_)
        (##structure-set!
         _%klass138344%_
         _%val138345%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass138339%_ _%val138341%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass138339%_
           _%val138341%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass138337%_)
        (##structure-ref _%klass138337%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass138335%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass138335%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass138332%_ _%val138333%_)
        (##structure-set!
         _%klass138332%_
         _%val138333%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass138327%_ _%val138329%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass138327%_
           _%val138329%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass138325%_)
        (##structure-ref _%klass138325%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass138323%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass138323%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass138320%_ _%val138321%_)
        (##structure-set!
         _%klass138320%_
         _%val138321%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass138315%_ _%val138317%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass138315%_
           _%val138317%_
           '13
           class::t
           'interface))))
    (define type-field-list
      (lambda (_%type138079%_)
        (letrec ((_%__fields->list138209%_
                  (lambda (_%fields138273%_)
                    (let* ((_%fields138276%_ _%fields138273%_)
                           (_%fields-len138285%_
                            (let ()
                              (declare (not safe))
                              (##vector-length _%fields138276%_))))
                      (let _%loop138287%_ ((_%i138289%_ '0) (_%r138290%_ '()))
                        (let* ((_%i138293%_ _%i138289%_)
                               (_%r138306%_ _%r138290%_))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i138293%_ _%fields-len138285%_))
                              (_%loop138287%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i138293%_ '3))
                               (cons (vector-ref _%fields138276%_ _%i138293%_)
                                     _%r138306%_))
                              (reverse! _%r138306%_)))))))
                 (_%fields->list138210%_
                  (lambda (_%fields138261%_)
                    (let ((_%fields138264%_ _%fields138261%_))
                      (_%__fields->list138209%_ _%fields138264%_)))))
          (let _%loop138212%_ ((_%type138214%_ _%type138079%_))
            (if (let () (declare (not safe)) (##type? _%type138214%_))
                (if (eq? _%type138214%_ ##type-type)
                    '()
                    (let ((_%$e138219%_
                           (let ()
                             (declare (not safe))
                             (##type-super _%type138214%_))))
                      (if _%$e138219%_
                          (let ((__tmp142171 (_%loop138212%_ _%$e138219%_))
                                (__tmp142170
                                 (let* ((_%fields138225%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-fields _%type138214%_)))
                                        (_%fields138229%_ _%fields138225%_))
                                   (_%__fields->list138209%_
                                    _%fields138229%_))))
                            (declare (not safe))
                            (##append __tmp142171 __tmp142170))
                          (let* ((_%fields138246%_
                                  (let ()
                                    (declare (not safe))
                                    (##type-fields _%type138214%_)))
                                 (_%fields138250%_ _%fields138246%_))
                            (_%__fields->list138209%_ _%fields138250%_)))))
                '())))))
    (define __class-type-field-list
      (lambda (_%klass138047%_)
        (let ((_%klass138050%_ _%klass138047%_))
          (letrec ((_%get-fields!138059%_
                    (lambda (_%klass138074%_ _%type138075%_)
                      (let ((_%fields138077%_
                             (type-field-list _%type138075%_)))
                        (##structure-set!
                         _%klass138074%_
                         (cons (cons 'fields: _%fields138077%_)
                               (##structure-ref
                                _%klass138074%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%fields138077%_))))
            (let* ((_%props138061%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass138050%_ '9 '#f '#f)))
                   (_%$e138063%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'fields: _%props138061%_))))
              (if _%$e138063%_
                  _%$e138063%_
                  (let ((_%$e138066%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props138061%_))))
                    (if _%$e138066%_
                        (_%get-fields!138059%_ _%klass138050%_ _%$e138066%_)
                        (_%get-fields!138059%_
                         _%klass138050%_
                         _%klass138050%_)))))))))
    (define class-type-field-list
      (lambda (_%klass138033%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138033%_ 'class))
            (let ((_%klass138037%_ _%klass138033%_))
              (__class-type-field-list _%klass138037%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@395.30-395.35"
               'contract:
               'class-type?
               'value:
               _%klass138033%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass138021%_)
        (let ((_%klass138024%_ _%klass138021%_))
          (vector->list
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass138024%_ '7 '#f '#f))
           '1))))
    (define class-type-slot-list
      (lambda (_%klass138007%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138007%_ 'class))
            (let ((_%klass138011%_ _%klass138007%_))
              (__class-type-slot-list _%klass138011%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@411.29-411.34"
               'contract:
               'class-type?
               'value:
               _%klass138007%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass137995%_)
        (let* ((_%klass137998%_ _%klass137995%_)
               (__tmp142172
                (let ((__tmp142173
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass137998%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp142173))))
          (declare (not safe))
          (##fx- __tmp142172 '1))))
    (define class-type-field-count
      (lambda (_%klass137981%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137981%_ 'class))
            (let ((_%klass137985%_ _%klass137981%_))
              (__class-type-field-count _%klass137985%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@413.31-413.36"
               'contract:
               'class-type?
               'value:
               _%klass137981%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass137969%_)
        (let ((_%klass137972%_ _%klass137969%_))
          (let ((__tmp142174
                 (let ((__tmp142175
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass137972%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp142175))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass137972%_
             __tmp142174
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define class-type-seal!
      (lambda (_%klass137955%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137955%_ 'class))
            (let ((_%klass137959%_ _%klass137955%_))
              (__class-type-seal! _%klass137959%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@416.25-416.30"
               'contract:
               'class-type?
               'value:
               _%klass137955%_)
              '#!void))))
    (define __class-type-properties-lock (vector '0 '#f))
    (define __class-type-properties-put!
      (lambda (_%klass137909%_ _%key137910%_ _%val137911%_)
        (let* ((_%klass137914%_ _%klass137909%_) (_%key137922%_ _%key137910%_))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again137933%_ ((_%spin137936%_ '0))
              (if (let ((__tmp142176
                         (let ()
                           (declare (not safe))
                           (##vector-cas!
                            __class-type-properties-lock
                            '0
                            '1
                            '0))))
                    (declare (not safe))
                    (##fx= __tmp142176 '0))
                  (let ((__tmp142177 (current-thread)))
                    (declare (not safe))
                    (##vector-set!
                     __class-type-properties-lock
                     '1
                     __tmp142177))
                  (if (let () (declare (not safe)) (##fx< _%spin137936%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again137933%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin137936%_ '1))))
                      (let ((_%owner137942%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref
                                __class-type-properties-lock
                                '1))))
                        (if (eq? _%owner137942%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner137942%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again137933%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r137950%_
                 (let ((_%props137948%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass137914%_
                           '9
                           '#f
                           '#f))))
                   (if (assq _%key137922%_ _%props137948%_)
                       '#!void
                       (let ((__tmp142178
                              (cons (cons _%key137922%_ _%val137911%_)
                                    _%props137948%_)))
                         (declare (not safe))
                         (##unchecked-structure-set!
                          _%klass137914%_
                          __tmp142178
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
            _%$r137950%_))))
    (define class-type-properties-put!
      (lambda (_%klass137883%_ _%key137884%_ _%val137885%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137883%_ 'class))
            (let ((_%klass137889%_ _%klass137883%_))
              (if (keyword? _%key137884%_)
                  (let ((_%key137899%_ _%key137884%_))
                    (__class-type-properties-put!
                     _%klass137889%_
                     _%key137899%_
                     _%val137885%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@424.52-424.55"
                     'contract:
                     'keyword?
                     'value:
                     _%key137884%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@424.35-424.40"
               'contract:
               'class-type?
               'value:
               _%klass137883%_)
              '#!void))))
    (define __class-type-printable-slots
      (lambda (_%klass137777%_)
        (let ((_%klass137780%_ _%klass137777%_))
          (letrec ((_%get-field-vector137789%_
                    (lambda (_%type137867%_)
                      (let _%loop137869%_ ((_%type137871%_ _%type137867%_))
                        (let* ((_%fields137873%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type137871%_)))
                               (_%$e137875%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type137871%_))))
                          (if _%$e137875%_
                              (let ((_%super-fields137880%_
                                     (_%loop137869%_ _%$e137875%_)))
                                (vector-append
                                 _%super-fields137880%_
                                 _%fields137873%_))
                              _%fields137873%_)))))
                   (_%get-printable-slot-alist137790%_
                    (lambda (_%type137850%_)
                      (let* ((_%fields137852%_
                              (_%get-field-vector137789%_ _%type137850%_))
                             (_%count137854%_
                              (vector-length _%fields137852%_)))
                        (let _%loop137857%_ ((_%i137859%_ '0)
                                             (_%offset137860%_ '1)
                                             (_%r137861%_ '()))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i137859%_ _%count137854%_))
                              (let ((_%slot-name137863%_
                                     (vector-ref _%fields137852%_ _%i137859%_))
                                    (_%slot-flags137864%_
                                     (vector-ref
                                      _%fields137852%_
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%i137859%_ '1))))
                                    (_%next-i137865%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i137859%_ '3))))
                                (if (let ((__tmp142179
                                           (let ()
                                             (declare (not safe))
                                             (##fxand _%slot-flags137864%_
                                                      '1))))
                                      (declare (not safe))
                                      (##fx= __tmp142179 '0))
                                    (_%loop137857%_
                                     _%next-i137865%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset137860%_ '1))
                                     (cons (cons _%slot-name137863%_
                                                 _%offset137860%_)
                                           _%r137861%_))
                                    (_%loop137857%_
                                     _%next-i137865%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset137860%_ '1))
                                     _%r137861%_)))
                              (reverse! _%r137861%_))))))
                   (_%get-printable-slots!137791%_
                    (lambda (_%klass137806%_ _%type137807%_)
                      (let ((_%printable137809%_
                             (_%get-printable-slot-alist137790%_
                              _%type137807%_)))
                        (let* ((_%klass137811%_ _%klass137806%_)
                               (_%key137814%_ 'printable-slots:)
                               (_%val137817%_ _%printable137809%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%klass137811%_
                                 'class))
                              (let* ((_%klass137822%_ _%klass137811%_)
                                     (_%key137840%_ _%key137814%_))
                                (__class-type-properties-put!
                                 _%klass137822%_
                                 _%key137840%_
                                 _%val137817%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 'gerbil/runtime/mop
                                 'contract:
                                 'class-type?
                                 'value:
                                 _%klass137811%_)
                                '#!void)))
                        _%printable137809%_))))
            (let* ((_%props137793%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass137780%_ '9 '#f '#f)))
                   (_%$e137795%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'printable-slots: _%props137793%_))))
              (if _%$e137795%_
                  _%$e137795%_
                  (let ((_%$e137798%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props137793%_))))
                    (if _%$e137798%_
                        (_%get-printable-slots!137791%_
                         _%klass137780%_
                         _%$e137798%_)
                        (_%get-printable-slots!137791%_
                         _%klass137780%_
                         _%klass137780%_)))))))))
    (define class-type-printable-slots
      (lambda (_%klass137763%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137763%_ 'class))
            (let ((_%klass137767%_ _%klass137763%_))
              (__class-type-printable-slots _%klass137767%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@433.35-433.40"
               'contract:
               'class-type?
               'value:
               _%klass137763%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct137732%_ _%maybe-super-struct137733%_)
        (let* ((_%maybe-sub-struct137736%_ _%maybe-sub-struct137732%_)
               (_%maybe-super-struct137744%_ _%maybe-super-struct137733%_)
               (_%maybe-super-struct-id137753%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct137744%_))))
          (let _%lp137755%_ ((_%super-struct137757%_
                              _%maybe-sub-struct137736%_))
            (if (not _%super-struct137757%_)
                '#f
                (if (eq? _%maybe-super-struct-id137753%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct137757%_)))
                    '#t
                    (_%lp137755%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct137757%_)))))))))
    (define substruct?
      (lambda (_%maybe-sub-struct137707%_ _%maybe-super-struct137708%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct137707%_ 'class))
            (let ((_%maybe-sub-struct137712%_ _%maybe-sub-struct137707%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct137708%_
                     'class))
                  (let ((_%maybe-super-struct137722%_
                         _%maybe-super-struct137708%_))
                    (__substruct?
                     _%maybe-sub-struct137712%_
                     _%maybe-super-struct137722%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@477.47-477.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct137708%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@477.19-477.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct137707%_)
              '#!void))))
    (define base-struct/1
      (lambda (_%klass137685%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137685%_ 'class))
            (if (let* ((_%klass137688%_ _%klass137685%_)
                       (_%klass137693%_ _%klass137688%_))
                  (__class-type-struct? _%klass137693%_))
                _%klass137685%_
                (let () (declare (not safe)) (##type-super _%klass137685%_)))
            (if (not _%klass137685%_)
                '#f
                (error '"not a class or false" _%klass137685%_)))))
    (define base-struct/2
      (lambda (_%klass1137608%_ _%klass2137609%_)
        (let ((_%s1137611%_ (base-struct/1 _%klass1137608%_))
              (_%s2137612%_ (base-struct/1 _%klass2137609%_)))
          (if (or (not _%s1137611%_)
                  (and _%s2137612%_
                       (let* ((_%maybe-sub-struct137617%_ _%s1137611%_)
                              (_%maybe-super-struct137620%_ _%s2137612%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%maybe-sub-struct137617%_
                                'class))
                             (let ((_%maybe-sub-struct137625%_
                                    _%maybe-sub-struct137617%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%maybe-super-struct137620%_
                                      'class))
                                   (let ((_%maybe-super-struct137639%_
                                          _%maybe-super-struct137620%_))
                                     (__substruct?
                                      _%maybe-sub-struct137625%_
                                      _%maybe-super-struct137639%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%maybe-super-struct137620%_)
                                     '#!void)))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%maybe-sub-struct137617%_)
                               '#!void)))))
              _%s2137612%_
              (if (or (not _%s2137612%_)
                      (and _%s1137611%_
                           (let* ((_%maybe-sub-struct137653%_ _%s2137612%_)
                                  (_%maybe-super-struct137656%_ _%s1137611%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%maybe-sub-struct137653%_
                                    'class))
                                 (let ((_%maybe-sub-struct137661%_
                                        _%maybe-sub-struct137653%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%maybe-super-struct137656%_
                                          'class))
                                       (let ((_%maybe-super-struct137673%_
                                              _%maybe-super-struct137656%_))
                                         (__substruct?
                                          _%maybe-sub-struct137661%_
                                          _%maybe-super-struct137673%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          'class-type?
                                          'value:
                                          _%maybe-super-struct137656%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'class-type?
                                    'value:
                                    _%maybe-sub-struct137653%_)
                                   '#!void)))))
                  _%s1137611%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1137608%_
                         _%klass2137609%_
                         _%s1137611%_
                         _%s2137612%_))))))
    (define base-struct/list
      (lambda (_%all-supers137493%_)
        (let* ((_%$%all-supers137494137519%_ _%all-supers137493%_)
               (_%$%E137499137523%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%all-supers137494137519%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%$%K137517137605%_ (lambda () '#f))
                (_%$%K137514137591%_
                 (lambda (_%x137589%_) (base-struct/1 _%x137589%_)))
                (_%$%K137509137568%_
                 (lambda (_%y137565%_ _%x137566%_)
                   (base-struct/2 _%x137566%_ _%y137565%_)))
                (_%$%K137500137530%_
                 (lambda (_%y137527%_ _%x137528%_)
                   (let ()
                     (declare (not safe))
                     (foldr__0 base-struct/2 _%x137528%_ _%y137527%_)))))
            (let* ((_%__match140943140944%_
                    (lambda (_%$%hd137501137533%_ _%$%tl137502137535%_)
                      (let ((_%x137538%_ _%$%hd137501137533%_))
                        (letrec ((_%$%splice-rest137504137540%_
                                  (lambda (_%$%rest137508137547%_ _%y137549%_)
                                    (if (null? _%$%rest137508137547%_)
                                        (_%$%K137500137530%_
                                         _%y137549%_
                                         _%x137538%_)
                                        (_%$%E137499137523%_))))
                                 (_%$%splice-try137506137542%_
                                  (lambda (_%$%hd137507137551%_
                                           _%$%rest137508137553%_
                                           _%$%y137503137554%_)
                                    (let ((_%y137556%_ _%$%hd137507137551%_))
                                      (_%$%splice-loop137505137544%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest137508137553%_))
                                       (cons _%y137556%_
                                             _%$%y137503137554%_)))))
                                 (_%$%splice-loop137505137544%_
                                  (lambda (_%$%rest137508137558%_
                                           _%$%y137503137559%_)
                                    (if (pair? _%$%rest137508137558%_)
                                        (_%$%splice-try137506137542%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%rest137508137558%_))
                                         _%$%rest137508137558%_
                                         _%$%y137503137559%_)
                                        (_%$%splice-rest137504137540%_
                                         _%$%rest137508137558%_
                                         (reverse _%$%y137503137559%_))))))
                          (_%$%splice-loop137505137544%_
                           _%$%tl137502137535%_
                           '())))))
                   (_%$%try-match137496137601%_
                    (lambda ()
                      (if (pair? _%$%all-supers137494137519%_)
                          (let ((_%$%tl137516137596%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%all-supers137494137519%_)))
                                (_%$%hd137515137594%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%all-supers137494137519%_))))
                            (if (null? _%$%tl137516137596%_)
                                (let ((_%x137599%_ _%$%hd137515137594%_))
                                  (base-struct/1 _%x137599%_))
                                (if (pair? _%$%tl137516137596%_)
                                    (let ((_%$%tl137513137580%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl137516137596%_)))
                                          (_%$%hd137512137578%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl137516137596%_))))
                                      (if (null? _%$%tl137513137580%_)
                                          (let ((_%x137576%_
                                                 _%$%hd137515137594%_)
                                                (_%y137583%_
                                                 _%$%hd137512137578%_))
                                            (_%$%K137509137568%_
                                             _%y137583%_
                                             _%x137576%_))
                                          (_%__match140943140944%_
                                           _%$%hd137515137594%_
                                           _%$%tl137516137596%_)))
                                    (_%__match140943140944%_
                                     _%$%hd137515137594%_
                                     _%$%tl137516137596%_))))
                          (_%$%E137499137523%_)))))
              (if (null? _%$%all-supers137494137519%_)
                  (_%$%K137517137605%_)
                  (_%$%try-match137496137601%_)))))))
    (define base-struct
      (lambda _%all-supers137491%_ (base-struct/list _%all-supers137491%_)))
    (define find-super-constructor
      (lambda (_%super137442%_)
        (let _%lp137444%_ ((_%rest137446%_ _%super137442%_)
                           (_%constructor137447%_ '#f))
          (let* ((_%$%rest137448137456%_ _%rest137446%_)
                 (_%$%else137450137464%_ (lambda () _%constructor137447%_))
                 (_%$%K137452137479%_
                  (lambda (_%rest137467%_ _%hd137468%_)
                    (let ((_%$e137470%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd137468%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e137470%_
                          (if (or (not _%constructor137447%_)
                                  (eq? _%constructor137447%_ _%$e137470%_))
                              (_%lp137444%_ _%rest137467%_ _%$e137470%_)
                              (error '"conflicting implicit constructors"
                                     _%constructor137447%_
                                     _%$e137470%_))
                          (_%lp137444%_
                           _%rest137467%_
                           _%constructor137447%_))))))
            (if (pair? _%$%rest137448137456%_)
                (let ((_%$%hd137453137482%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest137448137456%_)))
                      (_%$%tl137454137484%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest137448137456%_))))
                  (let* ((_%hd137487%_ _%$%hd137453137482%_)
                         (_%rest137489%_ _%$%tl137454137484%_))
                    (_%$%K137452137479%_ _%rest137489%_ _%hd137487%_)))
                (_%$%else137450137464%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list137434%_ _%direct-slots137435%_)
        (let ((__tmp142181
               (lambda (_%mixin137437%_)
                 (let ((__tmp142182
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%mixin137437%_
                           '9
                           '#f
                           '#f))))
                   (declare (not safe))
                   (agetq__% 'direct-slots: __tmp142182 '()))))
              (__tmp142180
               (lambda (_%slot-list137439%_ _%slot-table137440%_)
                 (values (list->vector _%slot-list137439%_)
                         _%slot-table137440%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%class-precedence-list137434%_
           _%direct-slots137435%_
           __tmp142181
           __tmp142180))))
    (define __make-class-type
      (lambda (_%id137261%_
               _%name137262%_
               _%direct-supers137263%_
               _%direct-slots137264%_
               _%properties137265%_
               _%constructor137266%_)
        (let* ((_%id137269%_ _%id137261%_)
               (_%name137277%_ _%name137262%_)
               (_%direct-supers137285%_ _%direct-supers137263%_)
               (_%direct-slots137293%_ _%direct-slots137264%_)
               (_%properties137301%_ _%properties137265%_)
               (_%constructor137309%_ _%constructor137266%_))
          (let ((_%$e137343%_
                 (let* ((_%pred137321%_
                         (lambda (_%$obj137318%_)
                           (not (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%$obj137318%_
                                   'class)))))
                        (_%lst137324%_ _%direct-supers137285%_)
                        (_%pred137329%_ _%pred137321%_))
                   (declare (not safe))
                   (__find _%pred137329%_ _%lst137324%_))))
            (if _%$e137343%_
                (error '"Illegal super class; not a class descriptor"
                       _%$e137343%_)
                (let ((_%$e137370%_
                       (let* ((_%pred137350%_ __class-type-final?)
                              (_%lst137353%_ _%direct-supers137285%_)
                              (_%pred137358%_ _%pred137350%_))
                         (declare (not safe))
                         (__find _%pred137358%_ _%lst137353%_))))
                  (if _%$e137370%_
                      (error '"Cannot extend final class" _%$e137370%_)
                      '#!void))))
          (let ((_g142183_ (compute-precedence-list _%direct-supers137285%_)))
            (begin
              (let ((_g142184_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g142183_)
                           (##values-length _g142183_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g142184_ 2)))
                    (error "Context expects 2 values" _g142184_)))
              (let ((_%precedence-list137377%_
                     (let () (declare (not safe)) (##values-ref _g142183_ 0)))
                    (_%struct-super137378%_
                     (let () (declare (not safe)) (##values-ref _g142183_ 1))))
                (let ((_g142185_
                       (compute-class-slots
                        _%precedence-list137377%_
                        _%direct-slots137293%_)))
                  (begin
                    (let ((_g142186_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g142185_)
                                 (##values-length _g142185_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g142186_ 2)))
                          (error "Context expects 2 values" _g142186_)))
                    (let ((_%slot-vector137380%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g142185_ 0)))
                          (_%slot-table137381%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g142185_ 1))))
                      (let* ((_%properties137383%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots137293%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers137285%_)
                                          _%properties137301%_)))
                             (_%constructor*137388%_
                              (let ((_%$e137385%_ _%constructor137309%_))
                                (if _%$e137385%_
                                    _%$e137385%_
                                    (find-super-constructor
                                     _%direct-supers137285%_))))
                             (_%precedence-list137431%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties137383%_))
                                      (memq object::t
                                            _%precedence-list137377%_))
                                  _%precedence-list137377%_
                                  (let _%loop137393%_ ((_%tail137395%_
                                                        _%precedence-list137377%_)
                                                       (_%head137396%_ '()))
                                    (let* ((_%$%tail137397137405%_
                                            _%tail137395%_)
                                           (_%$%else137399137413%_
                                            (lambda ()
                                              (let ((__tmp142187
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp142187
                                                 _%head137396%_))))
                                           (_%$%K137401137419%_
                                            (lambda (_%rest137416%_
                                                     _%hd137417%_)
                                              (if (eq? _%hd137417%_ t::t)
                                                  (let ((__tmp142188
                                                         (cons object::t
                                                               _%tail137395%_)))
                                                    (declare (not safe))
                                                    (foldl__0
                                                     cons
                                                     __tmp142188
                                                     _%head137396%_))
                                                  (_%loop137393%_
                                                   _%rest137416%_
                                                   (cons _%hd137417%_
                                                         _%head137396%_))))))
                                      (if (pair? _%$%tail137397137405%_)
                                          (let ((_%$%hd137402137422%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tail137397137405%_)))
                                                (_%$%tl137403137424%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tail137397137405%_))))
                                            (let* ((_%hd137427%_
                                                    _%$%hd137402137422%_)
                                                   (_%rest137429%_
                                                    _%$%tl137403137424%_))
                                              (_%$%K137401137419%_
                                               _%rest137429%_
                                               _%hd137427%_)))
                                          (_%$%else137399137413%_)))))))
                        (make-class-type-descriptor
                         _%id137269%_
                         _%name137277%_
                         _%struct-super137378%_
                         _%precedence-list137431%_
                         _%slot-vector137380%_
                         _%properties137383%_
                         _%constructor*137388%_
                         _%slot-table137381%_
                         '#f)))))))))))
    (define make-class-type
      (lambda (_%id137186%_
               _%name137187%_
               _%direct-supers137188%_
               _%direct-slots137189%_
               _%properties137190%_
               _%constructor137191%_)
        (if (symbol? _%id137186%_)
            (let ((_%id137195%_ _%id137186%_))
              (if (symbol? _%name137187%_)
                  (let ((_%name137205%_ _%name137187%_))
                    (if (list? _%direct-supers137188%_)
                        (let ((_%direct-supers137215%_
                               _%direct-supers137188%_))
                          (if (list? _%direct-slots137189%_)
                              (let ((_%direct-slots137225%_
                                     _%direct-slots137189%_))
                                (if (list? _%properties137190%_)
                                    (let ((_%properties137235%_
                                           _%properties137190%_))
                                      (if (or (not _%constructor137191%_)
                                              (symbol? _%constructor137191%_))
                                          (let ((_%constructor137251%_
                                                 _%constructor137191%_))
                                            (__make-class-type
                                             _%id137195%_
                                             _%name137205%_
                                             _%direct-supers137215%_
                                             _%direct-slots137225%_
                                             _%properties137235%_
                                             _%constructor137251%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@558.24-558.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor137191%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@557.24-557.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties137190%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@556.24-556.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots137189%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@555.24-555.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers137188%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@554.24-554.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name137187%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@553.24-553.26"
               'contract:
               'symbol?
               'value:
               _%id137186%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass137174%_)
        (let ((_%klass137177%_ _%klass137174%_))
          (cons _%klass137177%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass137177%_ '6 '#f '#f))))))
    (define class-precedence-list
      (lambda (_%klass137160%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137160%_ 'class))
            (let ((_%klass137164%_ _%klass137160%_))
              (__class-precedence-list _%klass137164%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@591.30-591.35"
               'contract:
               'class-type?
               'value:
               _%klass137160%_)
              '#!void))))
    (define compute-precedence-list
      (lambda (_%direct-supers137157%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers137157%_))))
    (define __make-class-predicate
      (lambda (_%klass137073%_)
        (let* ((_%klass137076%_ _%klass137073%_)
               (_%tid137085%_
                (let () (declare (not safe)) (##type-id _%klass137076%_))))
          (if (let* ((_%type137087%_ _%klass137076%_)
                     (_%type137092%_ _%type137087%_))
                (__class-type-final? _%type137092%_))
              (lambda (_%$%g137106137108%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%$%g137106137108%_
                   _%tid137085%_)))
              (if (let* ((_%klass137111%_ _%klass137076%_)
                         (_%klass137116%_ _%klass137111%_))
                    (__class-type-struct? _%klass137116%_))
                  (lambda (_%$%g137126137128%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%$%g137126137128%_
                       _%tid137085%_)))
                  (lambda (_%$%g137131137133%_)
                    (let* ((_%klass137136%_ _%klass137076%_)
                           (_%obj137139%_ _%$%g137131137133%_)
                           (_%klass137144%_ _%klass137136%_))
                      (__class-instance? _%klass137144%_ _%obj137139%_))))))))
    (define make-class-predicate
      (lambda (_%klass137059%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137059%_ 'class))
            (let ((_%klass137063%_ _%klass137059%_))
              (__make-class-predicate _%klass137063%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@603.29-603.34"
               'contract:
               'class-type?
               'value:
               _%klass137059%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass136993%_ _%slot136994%_)
        (let* ((_%klass136997%_ _%klass136993%_)
               (_%slot137005%_ _%slot136994%_)
               (_%field137014%_
                (let ((__tmp142189
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass136997%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp142189 _%slot137005%_ '#f))))
          (if (not _%field137014%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass136997%_
                       'slot:
                       _%slot137005%_)
                '#!void)
              (if (let* ((_%type137018%_ _%klass136997%_)
                         (_%type137023%_ _%type137018%_))
                    (__class-type-final? _%type137023%_))
                  (make-final-slot-accessor
                   _%klass136997%_
                   _%slot137005%_
                   _%field137014%_)
                  (if (let* ((_%klass137038%_ _%klass136997%_)
                             (_%klass137043%_ _%klass137038%_))
                        (__class-type-struct? _%klass137043%_))
                      (make-struct-slot-accessor
                       _%klass136997%_
                       _%slot137005%_
                       _%field137014%_)
                      (if (let ((_%strukt137054%_
                                 (base-struct/1 _%klass136997%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt137054%_
                                    'class))
                                 (let ((__tmp142190
                                        (let ((__tmp142191
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt137054%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp142191))))
                                   (declare (not safe))
                                   (##fx< _%field137014%_ __tmp142190))))
                          (make-struct-subclass-slot-accessor
                           _%klass136997%_
                           _%slot137005%_
                           _%field137014%_)
                          (make-class-cached-slot-accessor
                           _%klass136997%_
                           _%slot137005%_
                           _%field137014%_))))))))
    (define make-class-slot-accessor
      (lambda (_%klass136968%_ _%slot136969%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136968%_ 'class))
            (let ((_%klass136973%_ _%klass136968%_))
              (if (symbol? _%slot136969%_)
                  (let ((_%slot136983%_ _%slot136969%_))
                    (__make-class-slot-accessor
                     _%klass136973%_
                     _%slot136983%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@634.50-634.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot136969%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@634.33-634.38"
               'contract:
               'class-type?
               'value:
               _%klass136968%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass136902%_ _%slot136903%_)
        (let* ((_%klass136906%_ _%klass136902%_)
               (_%slot136914%_ _%slot136903%_)
               (_%field136923%_
                (let ((__tmp142192
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass136906%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp142192 _%slot136914%_ '#f))))
          (if (not _%field136923%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass136906%_
                       'slot:
                       _%slot136914%_)
                '#!void)
              (if (let* ((_%type136927%_ _%klass136906%_)
                         (_%type136932%_ _%type136927%_))
                    (__class-type-final? _%type136932%_))
                  (make-final-slot-mutator
                   _%klass136906%_
                   _%slot136914%_
                   _%field136923%_)
                  (if (let* ((_%klass136947%_ _%klass136906%_)
                             (_%klass136952%_ _%klass136947%_))
                        (__class-type-struct? _%klass136952%_))
                      (make-struct-slot-mutator
                       _%klass136906%_
                       _%slot136914%_
                       _%field136923%_)
                      (if (let ((_%strukt136963%_
                                 (base-struct/1 _%klass136906%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt136963%_
                                    'class))
                                 (let ((__tmp142193
                                        (let ((__tmp142194
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt136963%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp142194))))
                                   (declare (not safe))
                                   (##fx< _%field136923%_ __tmp142193))))
                          (make-struct-subclass-slot-mutator
                           _%klass136906%_
                           _%slot136914%_
                           _%field136923%_)
                          (make-class-cached-slot-mutator
                           _%klass136906%_
                           _%slot136914%_
                           _%field136923%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass136877%_ _%slot136878%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136877%_ 'class))
            (let ((_%klass136882%_ _%klass136877%_))
              (if (symbol? _%slot136878%_)
                  (let ((_%slot136892%_ _%slot136878%_))
                    (__make-class-slot-mutator _%klass136882%_ _%slot136892%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@642.49-642.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot136878%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@642.32-642.37"
               'contract:
               'class-type?
               'value:
               _%klass136877%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass136811%_ _%slot136812%_)
        (let* ((_%klass136815%_ _%klass136811%_)
               (_%slot136823%_ _%slot136812%_)
               (_%field136832%_
                (let ((__tmp142195
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass136815%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp142195 _%slot136823%_ '#f))))
          (if (not _%field136832%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass136815%_
                       'slot:
                       _%slot136823%_)
                '#!void)
              (if (let* ((_%type136836%_ _%klass136815%_)
                         (_%type136841%_ _%type136836%_))
                    (__class-type-final? _%type136841%_))
                  (make-struct-slot-unchecked-accessor
                   _%klass136815%_
                   _%slot136823%_
                   _%field136832%_)
                  (if (let* ((_%klass136856%_ _%klass136815%_)
                             (_%klass136861%_ _%klass136856%_))
                        (__class-type-struct? _%klass136861%_))
                      (make-struct-slot-unchecked-accessor
                       _%klass136815%_
                       _%slot136823%_
                       _%field136832%_)
                      (if (let ((_%strukt136872%_
                                 (base-struct/1 _%klass136815%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt136872%_
                                    'class))
                                 (let ((__tmp142196
                                        (let ((__tmp142197
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt136872%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp142197))))
                                   (declare (not safe))
                                   (##fx< _%field136832%_ __tmp142196))))
                          (make-struct-slot-unchecked-accessor
                           _%klass136815%_
                           _%slot136823%_
                           _%field136832%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass136815%_
                           _%slot136823%_
                           _%field136832%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass136786%_ _%slot136787%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136786%_ 'class))
            (let ((_%klass136791%_ _%klass136786%_))
              (if (symbol? _%slot136787%_)
                  (let ((_%slot136801%_ _%slot136787%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass136791%_
                     _%slot136801%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@650.60-650.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot136787%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@650.43-650.48"
               'contract:
               'class-type?
               'value:
               _%klass136786%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass136720%_ _%slot136721%_)
        (let* ((_%klass136724%_ _%klass136720%_)
               (_%slot136732%_ _%slot136721%_)
               (_%field136741%_
                (let ((__tmp142198
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass136724%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp142198 _%slot136732%_ '#f))))
          (if (not _%field136741%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass136724%_
                       'slot:
                       _%slot136732%_)
                '#!void)
              (if (let* ((_%type136745%_ _%klass136724%_)
                         (_%type136750%_ _%type136745%_))
                    (__class-type-final? _%type136750%_))
                  (make-struct-slot-unchecked-mutator
                   _%klass136724%_
                   _%slot136732%_
                   _%field136741%_)
                  (if (let* ((_%klass136765%_ _%klass136724%_)
                             (_%klass136770%_ _%klass136765%_))
                        (__class-type-struct? _%klass136770%_))
                      (make-struct-slot-unchecked-mutator
                       _%klass136724%_
                       _%slot136732%_
                       _%field136741%_)
                      (if (let ((_%strukt136781%_
                                 (base-struct/1 _%klass136724%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt136781%_
                                    'class))
                                 (let ((__tmp142199
                                        (let ((__tmp142200
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt136781%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp142200))))
                                   (declare (not safe))
                                   (##fx< _%field136741%_ __tmp142199))))
                          (make-struct-slot-unchecked-mutator
                           _%klass136724%_
                           _%slot136732%_
                           _%field136741%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass136724%_
                           _%slot136732%_
                           _%field136741%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass136695%_ _%slot136696%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136695%_ 'class))
            (let ((_%klass136700%_ _%klass136695%_))
              (if (symbol? _%slot136696%_)
                  (let ((_%slot136710%_ _%slot136696%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass136700%_
                     _%slot136710%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@658.59-658.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot136696%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@658.42-658.47"
               'contract:
               'class-type?
               'value:
               _%klass136695%_)
              '#!void))))
    (define not-an-instance__%
      (lambda (_%object136679%_ _%class136680%_ _%slot136681%_)
        (apply error
               '"not an instance"
               'object:
               _%object136679%_
               'class:
               _%class136680%_
               (if _%slot136681%_
                   (cons 'slot: (cons _%slot136681%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object136686%_ _%class136687%_)
        (let ((_%slot136689%_ '#f))
          (not-an-instance__%
           _%object136686%_
           _%class136687%_
           _%slot136689%_))))
    (define not-an-instance
      (lambda _g142201_
        (let ((_g142202_ (let () (declare (not safe)) (##length _g142201_))))
          (cond ((let () (declare (not safe)) (##fx= _g142202_ 2))
                 (apply not-an-instance__0 _g142201_))
                ((let () (declare (not safe)) (##fx= _g142202_ 3))
                 (apply not-an-instance__% _g142201_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g142201_))))))
    (define make-final-slot-accessor
      (lambda (_%klass136672%_ _%slot136673%_ _%field136674%_)
        (lambda (_%obj136676%_)
          (##direct-structure-ref
           _%obj136676%_
           _%field136674%_
           _%klass136672%_
           _%slot136673%_))))
    (define make-final-slot-mutator
      (lambda (_%klass136665%_ _%slot136666%_ _%field136667%_)
        (lambda (_%obj136669%_ _%val136670%_)
          (##direct-structure-set!
           _%obj136669%_
           _%val136670%_
           _%field136667%_
           _%klass136665%_
           _%slot136666%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass136659%_ _%slot136660%_ _%field136661%_)
        (lambda (_%obj136663%_)
          (##structure-ref
           _%obj136663%_
           _%field136661%_
           _%klass136659%_
           _%slot136660%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass136652%_ _%slot136653%_ _%field136654%_)
        (lambda (_%obj136656%_ _%val136657%_)
          (##structure-set!
           _%obj136656%_
           _%val136657%_
           _%field136654%_
           _%klass136652%_
           _%slot136653%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass136646%_ _%slot136647%_ _%field136648%_)
        (lambda (_%obj136650%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj136650%_
             _%field136648%_
             _%klass136646%_
             _%slot136647%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass136639%_ _%slot136640%_ _%field136641%_)
        (lambda (_%obj136643%_ _%val136644%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj136643%_
             _%val136644%_
             _%field136641%_
             _%klass136639%_
             _%slot136640%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass136612%_ _%slot136613%_ _%field136614%_)
        (lambda (_%obj136616%_)
          (if (let* ((_%klass136618%_ _%klass136612%_)
                     (_%obj136621%_ _%obj136616%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass136618%_ 'class))
                    (let ((_%klass136626%_ _%klass136618%_))
                      (__class-instance? _%klass136626%_ _%obj136621%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass136618%_)
                      '#!void)))
              (unchecked-slot-ref _%obj136616%_ _%field136614%_)
              (not-an-instance__%
               _%obj136616%_
               _%klass136612%_
               _%slot136613%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass136584%_ _%slot136585%_ _%field136586%_)
        (lambda (_%obj136588%_ _%val136589%_)
          (if (let* ((_%klass136591%_ _%klass136584%_)
                     (_%obj136594%_ _%obj136588%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass136591%_ 'class))
                    (let ((_%klass136599%_ _%klass136591%_))
                      (__class-instance? _%klass136599%_ _%obj136594%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass136591%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj136588%_
               _%field136586%_
               _%val136589%_)
              (not-an-instance__%
               _%obj136588%_
               _%klass136584%_
               _%slot136585%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass136535%_ _%slot136536%_ _%field136537%_)
        (lambda (_%obj136539%_)
          (if (let* ((_%klass136541%_ _%klass136535%_)
                     (_%obj136544%_ _%obj136539%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass136541%_ 'class))
                    (let ((_%klass136549%_ _%klass136541%_))
                      (__direct-instance? _%klass136549%_ _%obj136544%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass136541%_)
                      '#!void)))
              (unchecked-field-ref _%obj136539%_ _%field136537%_)
              (if (let* ((_%klass136563%_ _%klass136535%_)
                         (_%obj136566%_ _%obj136539%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass136563%_ 'class))
                        (let ((_%klass136571%_ _%klass136563%_))
                          (__class-instance? _%klass136571%_ _%obj136566%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass136563%_)
                          '#!void)))
                  (unchecked-slot-ref _%obj136539%_ _%slot136536%_)
                  (not-an-instance__%
                   _%obj136539%_
                   _%klass136535%_
                   _%slot136536%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass136485%_ _%slot136486%_ _%field136487%_)
        (lambda (_%obj136489%_ _%val136490%_)
          (if (let* ((_%klass136492%_ _%klass136485%_)
                     (_%obj136495%_ _%obj136489%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass136492%_ 'class))
                    (let ((_%klass136500%_ _%klass136492%_))
                      (__direct-instance? _%klass136500%_ _%obj136495%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass136492%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj136489%_
               _%field136487%_
               _%val136490%_)
              (if (let* ((_%klass136514%_ _%klass136485%_)
                         (_%obj136517%_ _%obj136489%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass136514%_ 'class))
                        (let ((_%klass136522%_ _%klass136514%_))
                          (__class-instance? _%klass136522%_ _%obj136517%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass136514%_)
                          '#!void)))
                  (unchecked-slot-set!
                   _%obj136489%_
                   _%slot136486%_
                   _%val136490%_)
                  (not-an-instance__%
                   _%obj136489%_
                   _%klass136485%_
                   _%slot136486%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass136458%_ _%slot136459%_ _%field136460%_)
        (lambda (_%obj136462%_)
          (if (let* ((_%klass136464%_ _%klass136458%_)
                     (_%obj136467%_ _%obj136462%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass136464%_ 'class))
                    (let ((_%klass136472%_ _%klass136464%_))
                      (__direct-instance? _%klass136472%_ _%obj136467%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass136464%_)
                      '#!void)))
              (unchecked-field-ref _%obj136462%_ _%field136460%_)
              (unchecked-slot-ref _%obj136462%_ _%slot136459%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass136430%_ _%slot136431%_ _%field136432%_)
        (lambda (_%obj136434%_ _%val136435%_)
          (if (let* ((_%klass136437%_ _%klass136430%_)
                     (_%obj136440%_ _%obj136434%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass136437%_ 'class))
                    (let ((_%klass136445%_ _%klass136437%_))
                      (__direct-instance? _%klass136445%_ _%obj136440%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass136437%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj136434%_
               _%field136432%_
               _%val136435%_)
              (unchecked-slot-set!
               _%obj136434%_
               _%slot136431%_
               _%val136435%_)))))
    (define __class-slot-offset
      (lambda (_%klass136409%_ _%slot136410%_)
        (let* ((_%klass136413%_ _%klass136409%_)
               (_%slot136421%_ _%slot136410%_)
               (__tmp142203
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass136413%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp142203 _%slot136421%_ '#f))))
    (define class-slot-offset
      (lambda (_%klass136384%_ _%slot136385%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136384%_ 'class))
            (let ((_%klass136389%_ _%klass136384%_))
              (if (let () (declare (not safe)) (symbolic? _%slot136385%_))
                  (let ((_%slot136399%_ _%slot136385%_))
                    (__class-slot-offset _%klass136389%_ _%slot136399%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@720.43-720.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot136385%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@720.26-720.31"
               'contract:
               'class-type?
               'value:
               _%klass136384%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass136309%_ _%obj136310%_ _%slot136311%_)
        (let* ((_%klass136314%_ _%klass136309%_)
               (_%slot136322%_ _%slot136311%_))
          (if (let* ((_%klass136331%_ _%klass136314%_)
                     (_%obj136334%_ _%obj136310%_)
                     (_%klass136339%_ _%klass136331%_))
                (__class-instance? _%klass136339%_ _%obj136334%_))
              (let ((_%off136382%_
                     (let* ((_%klass136353%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj136310%_)))
                            (_%slot136356%_ _%slot136322%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass136353%_ 'class))
                           (let ((_%klass136361%_ _%klass136353%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot136356%_))
                                 (let ((_%slot136372%_ _%slot136356%_))
                                   (__class-slot-offset
                                    _%klass136361%_
                                    _%slot136372%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot136356%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass136353%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj136310%_
                 _%off136382%_
                 _%klass136314%_
                 _%slot136322%_))
              (not-an-instance__0 _%obj136310%_ _%klass136314%_)))))
    (define class-slot-ref
      (lambda (_%klass136283%_ _%obj136284%_ _%slot136285%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136283%_ 'class))
            (let ((_%klass136289%_ _%klass136283%_))
              (if (let () (declare (not safe)) (symbolic? _%slot136285%_))
                  (let ((_%slot136299%_ _%slot136285%_))
                    (__class-slot-ref
                     _%klass136289%_
                     _%obj136284%_
                     _%slot136299%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@723.44-723.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot136285%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@723.23-723.28"
               'contract:
               'class-type?
               'value:
               _%klass136283%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass136207%_ _%obj136208%_ _%slot136209%_ _%val136210%_)
        (let* ((_%klass136213%_ _%klass136207%_)
               (_%slot136221%_ _%slot136209%_))
          (if (let* ((_%klass136230%_ _%klass136213%_)
                     (_%obj136233%_ _%obj136208%_)
                     (_%klass136238%_ _%klass136230%_))
                (__class-instance? _%klass136238%_ _%obj136233%_))
              (let ((_%off136281%_
                     (let* ((_%klass136252%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj136208%_)))
                            (_%slot136255%_ _%slot136221%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass136252%_ 'class))
                           (let ((_%klass136260%_ _%klass136252%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot136255%_))
                                 (let ((_%slot136271%_ _%slot136255%_))
                                   (__class-slot-offset
                                    _%klass136260%_
                                    _%slot136271%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot136255%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass136252%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj136208%_
                 _%val136210%_
                 _%off136281%_
                 _%klass136213%_
                 _%slot136221%_))
              (not-an-instance__0 _%obj136208%_ _%klass136213%_)))))
    (define class-slot-set!
      (lambda (_%klass136180%_ _%obj136181%_ _%slot136182%_ _%val136183%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136180%_ 'class))
            (let ((_%klass136187%_ _%klass136180%_))
              (if (let () (declare (not safe)) (symbolic? _%slot136182%_))
                  (let ((_%slot136197%_ _%slot136182%_))
                    (__class-slot-set!
                     _%klass136187%_
                     _%obj136181%_
                     _%slot136197%_
                     _%val136183%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@729.45-729.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot136182%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@729.24-729.29"
               'contract:
               'class-type?
               'value:
               _%klass136180%_)
              '#!void))))
    (define unchecked-field-ref
      (lambda (_%obj136177%_ _%off136178%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj136177%_ _%off136178%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj136173%_ _%off136174%_ _%val136175%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj136173%_
           _%val136175%_
           _%off136174%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj136170%_ _%slot136171%_)
        (unchecked-field-ref
         _%obj136170%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj136170%_))
          _%slot136171%_))))
    (define unchecked-slot-set!
      (lambda (_%obj136166%_ _%slot136167%_ _%val136168%_)
        (unchecked-field-set!
         _%obj136166%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj136166%_))
          _%slot136167%_)
         _%val136168%_)))
    (define __slot-error
      (lambda (_%obj136163%_ _%slot136164%_)
        (error '"Cannot find slot"
               'object:
               _%obj136163%_
               'slot:
               _%slot136164%_)))
    (define __slot-ref__%
      (lambda (_%obj136087%_ _%slot136088%_ _%E136089%_)
        (let* ((_%slot136092%_ _%slot136088%_)
               (_%E136100%_ _%E136089%_)
               (_%klass136109%_ (class-of _%obj136087%_))
               (_%$e136145%_
                (let* ((_%klass136112%_ _%klass136109%_)
                       (_%slot136115%_ _%slot136092%_)
                       (_%klass136120%_ _%klass136112%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot136115%_))
                      (let ((_%slot136135%_ _%slot136115%_))
                        (__class-slot-offset _%klass136120%_ _%slot136135%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot136115%_)
                        '#!void)))))
          (if _%$e136145%_
              (unchecked-field-ref _%obj136087%_ _%$e136145%_)
              (let ()
                (declare (not safe))
                (_%E136100%_ _%obj136087%_ _%slot136092%_))))))
    (define __slot-ref__0
      (lambda (_%obj136154%_ _%slot136155%_)
        (let ((_%E136157%_ __slot-error))
          (__slot-ref__% _%obj136154%_ _%slot136155%_ _%E136157%_))))
    (define __slot-ref
      (lambda _g142204_
        (let ((_g142205_ (let () (declare (not safe)) (##length _g142204_))))
          (cond ((let () (declare (not safe)) (##fx= _g142205_ 2))
                 (apply __slot-ref__0 _g142204_))
                ((let () (declare (not safe)) (##fx= _g142205_ 3))
                 (apply __slot-ref__% _g142204_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g142204_))))))
    (define slot-ref__%
      (lambda (_%obj136048%_ _%slot136049%_ _%E136050%_)
        (if (symbol? _%slot136049%_)
            (let ((_%slot136054%_ _%slot136049%_))
              (if (procedure? _%E136050%_)
                  (let ((_%E136064%_ _%E136050%_))
                    (__slot-ref__% _%obj136048%_ _%slot136054%_ _%E136064%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@755.38-755.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E136050%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@755.21-755.25"
               'contract:
               'symbol?
               'value:
               _%slot136049%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj136077%_ _%slot136078%_)
        (let ((_%E136080%_ __slot-error))
          (slot-ref__% _%obj136077%_ _%slot136078%_ _%E136080%_))))
    (define slot-ref
      (lambda _g142206_
        (let ((_g142207_ (let () (declare (not safe)) (##length _g142206_))))
          (cond ((let () (declare (not safe)) (##fx= _g142207_ 2))
                 (apply slot-ref__0 _g142206_))
                ((let () (declare (not safe)) (##fx= _g142207_ 3))
                 (apply slot-ref__% _g142206_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g142206_))))))
    (define __slot-set!__%
      (lambda (_%obj135968%_ _%slot135969%_ _%val135970%_ _%E135971%_)
        (let* ((_%slot135974%_ _%slot135969%_)
               (_%E135982%_ _%E135971%_)
               (_%klass135991%_ (class-of _%obj135968%_))
               (_%$e136027%_
                (let* ((_%klass135994%_ _%klass135991%_)
                       (_%slot135997%_ _%slot135974%_)
                       (_%klass136002%_ _%klass135994%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot135997%_))
                      (let ((_%slot136017%_ _%slot135997%_))
                        (__class-slot-offset _%klass136002%_ _%slot136017%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot135997%_)
                        '#!void)))))
          (if _%$e136027%_
              (unchecked-field-set! _%obj135968%_ _%$e136027%_ _%val135970%_)
              (let ()
                (declare (not safe))
                (_%E135982%_ _%obj135968%_ _%slot135974%_))))))
    (define __slot-set!__0
      (lambda (_%obj136036%_ _%slot136037%_ _%val136038%_)
        (let ((_%E136040%_ __slot-error))
          (__slot-set!__%
           _%obj136036%_
           _%slot136037%_
           _%val136038%_
           _%E136040%_))))
    (define __slot-set!
      (lambda _g142208_
        (let ((_g142209_ (let () (declare (not safe)) (##length _g142208_))))
          (cond ((let () (declare (not safe)) (##fx= _g142209_ 3))
                 (apply __slot-set!__0 _g142208_))
                ((let () (declare (not safe)) (##fx= _g142209_ 4))
                 (apply __slot-set!__% _g142208_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g142208_))))))
    (define slot-set!__%
      (lambda (_%obj135926%_ _%slot135927%_ _%val135928%_ _%E135929%_)
        (if (symbol? _%slot135927%_)
            (let ((_%slot135933%_ _%slot135927%_))
              (if (procedure? _%E135929%_)
                  (let ((_%E135943%_ _%E135929%_))
                    (__slot-set!__%
                     _%obj135926%_
                     _%slot135933%_
                     _%val135928%_
                     _%E135943%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@757.43-757.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E135929%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@757.22-757.26"
               'contract:
               'symbol?
               'value:
               _%slot135927%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj135956%_ _%slot135957%_ _%val135958%_)
        (let ((_%E135960%_ __slot-error))
          (slot-set!__%
           _%obj135956%_
           _%slot135957%_
           _%val135958%_
           _%E135960%_))))
    (define slot-set!
      (lambda _g142210_
        (let ((_g142211_ (let () (declare (not safe)) (##length _g142210_))))
          (cond ((let () (declare (not safe)) (##fx= _g142211_ 3))
                 (apply slot-set!__0 _g142210_))
                ((let () (declare (not safe)) (##fx= _g142211_ 4))
                 (apply slot-set!__% _g142210_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g142210_))))))
    (define __subclass?
      (lambda (_%maybe-sub-class135897%_ _%maybe-super-class135898%_)
        (let* ((_%maybe-sub-class135901%_ _%maybe-sub-class135897%_)
               (_%maybe-super-class135909%_ _%maybe-super-class135898%_)
               (_%maybe-super-class-id135918%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class135909%_)))
               (_%$e135920%_
                (eq? _%maybe-super-class-id135918%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class135901%_)))))
          (if _%$e135920%_
              _%$e135920%_
              (let ((__tmp142213
                     (lambda (_%super-class135923%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class135923%_))
                            _%maybe-super-class-id135918%_)))
                    (__tmp142212
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class135901%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (ormap__0 __tmp142213 __tmp142212))))))
    (define subclass?
      (lambda (_%maybe-sub-class135872%_ _%maybe-super-class135873%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class135872%_ 'class))
            (let ((_%maybe-sub-class135877%_ _%maybe-sub-class135872%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class135873%_
                     'class))
                  (let ((_%maybe-super-class135887%_
                         _%maybe-super-class135873%_))
                    (__subclass?
                     _%maybe-sub-class135877%_
                     _%maybe-super-class135887%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@763.45-763.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class135873%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@763.18-763.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class135872%_)
              '#!void))))
    (define object?
      (lambda (_%o135869%_)
        (if (let () (declare (not safe)) (##structure? _%o135869%_))
            (let ((__tmp142214
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o135869%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp142214 'class))
            '#f)))
    (define __direct-instance?
      (lambda (_%klass135856%_ _%obj135857%_)
        (let* ((_%klass135860%_ _%klass135856%_)
               (__tmp142215
                (let () (declare (not safe)) (##type-id _%klass135860%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj135857%_ __tmp142215))))
    (define direct-instance?
      (lambda (_%klass135841%_ _%obj135842%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135841%_ 'class))
            (let ((_%klass135846%_ _%klass135841%_))
              (__direct-instance? _%klass135846%_ _%obj135842%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@777.25-777.30"
               'contract:
               'class-type?
               'value:
               _%klass135841%_)
              '#!void))))
    (define immediate-instance-of?
      (lambda (_%klass135837%_ _%obj135838%_)
        (if (let () (declare (not safe)) (##structure? _%obj135838%_))
            (eq? _%klass135837%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj135838%_)))
            '#f)))
    (define __struct-instance?
      (lambda (_%klass135824%_ _%obj135825%_)
        (let* ((_%klass135828%_ _%klass135824%_)
               (__tmp142216
                (let () (declare (not safe)) (##type-id _%klass135828%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj135825%_ __tmp142216))))
    (define struct-instance?
      (lambda (_%klass135809%_ _%obj135810%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135809%_ 'class))
            (let ((_%klass135814%_ _%klass135809%_))
              (__struct-instance? _%klass135814%_ _%obj135810%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@806.25-806.30"
               'contract:
               'class-type?
               'value:
               _%klass135809%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass135761%_ _%obj135762%_)
        (let* ((_%klass135765%_ _%klass135761%_)
               (_%type135774%_ (class-of _%obj135762%_))
               (_%maybe-sub-class135776%_ _%type135774%_)
               (_%maybe-super-class135779%_ _%klass135765%_)
               (_%maybe-sub-class135784%_ _%maybe-sub-class135776%_)
               (_%maybe-super-class135799%_ _%maybe-super-class135779%_))
          (__subclass?
           _%maybe-sub-class135784%_
           _%maybe-super-class135799%_))))
    (define class-instance?
      (lambda (_%klass135746%_ _%obj135747%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135746%_ 'class))
            (let ((_%klass135751%_ _%klass135746%_))
              (__class-instance? _%klass135751%_ _%obj135747%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@811.24-811.29"
               'contract:
               'class-type?
               'value:
               _%klass135746%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass135705%_ _%k135706%_)
        (let* ((_%klass135709%_ _%klass135705%_) (_%k135717%_ _%k135706%_))
          (if (let* ((_%klass135726%_ _%klass135709%_)
                     (_%klass135731%_ _%klass135726%_))
                (__class-type-system? _%klass135731%_))
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass135709%_)
                '#!void)
              (let ((_%obj135744%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass135709%_ _%k135717%_))))
                (__object-fill! _%obj135744%_ '#f))))))
    (define make-object
      (lambda (_%klass135680%_ _%k135681%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135680%_ 'class))
            (let ((_%klass135685%_ _%klass135680%_))
              (if (fixnum? _%k135681%_)
                  (let ((_%k135695%_ _%k135681%_))
                    (__make-object _%klass135685%_ _%k135695%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@816.37-816.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k135681%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@816.20-816.25"
               'contract:
               'class-type?
               'value:
               _%klass135680%_)
              '#!void))))
    (define __object-class
      (lambda (_%obj135668%_)
        (let ((_%obj135671%_ _%obj135668%_))
          (declare (not safe))
          (##structure-type _%obj135671%_))))
    (define object-class
      (lambda (_%obj135654%_)
        (if (object? _%obj135654%_)
            (let ((_%obj135658%_ _%obj135654%_))
              (__object-class _%obj135658%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@836.21-836.24"
               'contract:
               'object?
               'value:
               _%obj135654%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj135636%_ _%fill135637%_)
        (let ((_%obj135640%_ _%obj135636%_))
          (let _%loop135649%_ ((_%i135651%_
                                (let ((__tmp142217
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj135640%_))))
                                  (declare (not safe))
                                  (##fx- __tmp142217 '1))))
            (if (let () (declare (not safe)) (##fx> _%i135651%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj135640%_
                     _%fill135637%_
                     _%i135651%_
                     '#f
                     '#f))
                  (_%loop135649%_
                   (let () (declare (not safe)) (##fx- _%i135651%_ '1))))
                _%obj135640%_)))))
    (define object-fill!
      (lambda (_%obj135621%_ _%fill135622%_)
        (if (object? _%obj135621%_)
            (let ((_%obj135626%_ _%obj135621%_))
              (__object-fill! _%obj135626%_ _%fill135622%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@841.21-841.24"
               'contract:
               'object?
               'value:
               _%obj135621%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass135577%_)
        (let* ((_%klass135580%_ _%klass135577%_)
               (_%klass135589%_ _%klass135580%_)
               (_%k135592%_
                (let ((__tmp142218
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass135580%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp142218)))
               (_%klass135597%_ _%klass135589%_)
               (_%k135611%_ _%k135592%_))
          (__make-object _%klass135597%_ _%k135611%_))))
    (define new-instance
      (lambda (_%klass135563%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135563%_ 'class))
            (let ((_%klass135567%_ _%klass135563%_))
              (__new-instance _%klass135567%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.21-852.26"
               'contract:
               'class-type?
               'value:
               _%klass135563%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass135422%_ . _%args135423%_)
        (let* ((_%klass135426%_ _%klass135422%_)
               (_%$e135435%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass135426%_ '10 '#f '#f))))
          (if _%$e135435%_
              (let ((_%obj135460%_
                     (let* ((_%klass135440%_ _%klass135426%_)
                            (_%klass135445%_ _%klass135440%_))
                       (__new-instance _%klass135445%_))))
                (___constructor-init!
                 _%klass135426%_
                 _%$e135435%_
                 _%obj135460%_
                 _%args135423%_)
                _%obj135460%_)
              (if (let* ((_%klass135462%_ _%klass135426%_)
                         (_%klass135467%_ _%klass135462%_))
                    (__class-type-metaclass? _%klass135467%_))
                  (let ((_%obj135494%_
                         (let* ((_%klass135478%_ _%klass135426%_)
                                (_%klass135483%_ _%klass135478%_))
                           (__new-instance _%klass135483%_))))
                    (__metaclass-instance-init!
                     _%klass135426%_
                     _%obj135494%_
                     _%args135423%_)
                    _%obj135494%_)
                  (if (let* ((_%klass135496%_ _%klass135426%_)
                             (_%klass135501%_ _%klass135496%_))
                        (__class-type-struct? _%klass135501%_))
                      (if (let ((__tmp142220
                                 (let* ((_%klass135530%_ _%klass135426%_)
                                        (_%klass135535%_ _%klass135530%_))
                                   (__class-type-field-count _%klass135535%_)))
                                (__tmp142219
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args135423%_))))
                            (declare (not safe))
                            (##fx= __tmp142220 __tmp142219))
                          (apply ##structure _%klass135426%_ _%args135423%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass135426%_
                                   'slots:
                                   (let* ((_%klass135547%_ _%klass135426%_)
                                          (_%klass135552%_ _%klass135547%_))
                                     (__class-type-slot-list _%klass135552%_))
                                   'args:
                                   _%args135423%_)
                            '#!void))
                      (let ((_%obj135528%_
                             (let* ((_%klass135512%_ _%klass135426%_)
                                    (_%klass135517%_ _%klass135512%_))
                               (__new-instance _%klass135517%_))))
                        (___class-instance-init!
                         _%klass135426%_
                         _%obj135528%_
                         _%args135423%_)
                        _%obj135528%_)))))))
    (define make-instance
      (lambda (_%klass135407%_ . _%args135408%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135407%_ 'class))
            (let ((_%klass135412%_ _%klass135407%_))
              (declare (not safe))
              (##apply __make-instance _%klass135412%_ _%args135408%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@855.22-855.27"
               'contract:
               'class-type?
               'value:
               _%klass135407%_)
              '#!void))))
    (define make-class-instance make-instance)
    (define __struct-instance-init!
      (lambda (_%obj135394%_ . _%args135395%_)
        (let ((_%obj135398%_ _%obj135394%_))
          (if (let ((__tmp142222
                     (let () (declare (not safe)) (##length _%args135395%_)))
                    (__tmp142221
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj135398%_))))
                (declare (not safe))
                (##fx< __tmp142222 __tmp142221))
              (___struct-instance-init! _%obj135398%_ _%args135395%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj135398%_
                     'args:
                     _%args135395%_))
          '#!void)))
    (define struct-instance-init!
      (lambda (_%obj135379%_ . _%args135380%_)
        (if (object? _%obj135379%_)
            (let ((_%obj135384%_ _%obj135379%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj135384%_ _%args135380%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@880.30-880.33"
               'contract:
               'object?
               'value:
               _%obj135379%_)
              '#!void))))
    (define ___struct-instance-init!
      (lambda (_%obj135338%_ _%args135339%_)
        (let _%lp135341%_ ((_%k135343%_ '1) (_%rest135344%_ _%args135339%_))
          (let* ((_%$%rest135345135353%_ _%rest135344%_)
                 (_%$%else135347135361%_ (lambda () _%obj135338%_))
                 (_%$%K135349135367%_
                  (lambda (_%rest135364%_ _%hd135365%_)
                    (unchecked-field-set!
                     _%obj135338%_
                     _%k135343%_
                     _%hd135365%_)
                    (_%lp135341%_
                     (let () (declare (not safe)) (##fx+ _%k135343%_ '1))
                     _%rest135364%_))))
            (if (pair? _%$%rest135345135353%_)
                (let ((_%$%hd135350135370%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest135345135353%_)))
                      (_%$%tl135351135372%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest135345135353%_))))
                  (let* ((_%hd135375%_ _%$%hd135350135370%_)
                         (_%rest135377%_ _%$%tl135351135372%_))
                    (_%$%K135349135367%_ _%rest135377%_ _%hd135375%_)))
                (_%$%else135347135361%_))))))
    (define __class-instance-init!
      (lambda (_%obj135325%_ . _%args135326%_)
        (let ((_%obj135329%_ _%obj135325%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj135329%_))
           _%obj135329%_
           _%args135326%_)
          '#!void)))
    (define class-instance-init!
      (lambda (_%obj135310%_ . _%args135311%_)
        (if (object? _%obj135310%_)
            (let ((_%obj135315%_ _%obj135310%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj135315%_ _%args135311%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@920.29-920.32"
               'contract:
               'object?
               'value:
               _%obj135310%_)
              '#!void))))
    (define ___class-instance-init!
      (lambda (_%klass135252%_ _%obj135253%_ _%args135254%_)
        (let _%lp135256%_ ((_%rest135258%_ _%args135254%_))
          (let* ((_%$%rest135259135269%_ _%rest135258%_)
                 (_%$%else135261135277%_
                  (lambda ()
                    (if (null? _%rest135258%_)
                        _%obj135253%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass135252%_
                               'rest:
                               _%rest135258%_))))
                 (_%$%K135263135291%_
                  (lambda (_%rest135280%_ _%val135281%_ _%key135282%_)
                    (if (keyword? _%key135282%_)
                        (let ((_%$e135285%_
                               (__class-slot-offset
                                _%klass135252%_
                                _%key135282%_)))
                          (if _%$e135285%_
                              (let ()
                                (unchecked-field-set!
                                 _%obj135253%_
                                 _%$e135285%_
                                 _%val135281%_)
                                (_%lp135256%_ _%rest135280%_))
                              (error '"unknown slot"
                                     'class:
                                     _%klass135252%_
                                     'slot:
                                     _%key135282%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key135282%_)))))
            (if (pair? _%$%rest135259135269%_)
                (let ((_%$%hd135264135294%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest135259135269%_)))
                      (_%$%tl135265135296%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest135259135269%_))))
                  (let ((_%key135299%_ _%$%hd135264135294%_))
                    (if (pair? _%$%tl135265135296%_)
                        (let ((_%$%hd135266135301%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl135265135296%_)))
                              (_%$%tl135267135303%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl135265135296%_))))
                          (let* ((_%val135306%_ _%$%hd135266135301%_)
                                 (_%rest135308%_ _%$%tl135267135303%_))
                            (_%$%K135263135291%_
                             _%rest135308%_
                             _%val135306%_
                             _%key135299%_)))
                        (_%$%else135261135277%_))))
                (_%$%else135261135277%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass135248%_ _%obj135249%_ _%args135250%_)
        (apply call-method
               _%klass135248%_
               'instance-init!
               _%obj135249%_
               _%args135250%_)))
    (define __constructor-init!
      (lambda (_%klass135217%_
               _%kons-id135218%_
               _%obj135219%_
               .
               _%args135220%_)
        (let* ((_%klass135223%_ _%klass135217%_)
               (_%kons-id135231%_ _%kons-id135218%_)
               (_%obj135239%_ _%obj135219%_))
          (___constructor-init!
           _%klass135223%_
           _%kons-id135231%_
           _%obj135239%_
           _%args135220%_)
          '#!void)))
    (define constructor-init!
      (lambda (_%klass135180%_
               _%kons-id135181%_
               _%obj135182%_
               .
               _%args135183%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135180%_ 'class))
            (let ((_%klass135187%_ _%klass135180%_))
              (if (symbol? _%kons-id135181%_)
                  (let ((_%kons-id135197%_ _%kons-id135181%_))
                    (if (object? _%obj135182%_)
                        (let ((_%obj135207%_ _%obj135182%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass135187%_
                                   _%kons-id135197%_
                                   _%obj135207%_
                                   _%args135183%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@944.63-944.66"
                           'contract:
                           'object?
                           'value:
                           _%obj135182%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@944.43-944.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id135181%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@944.26-944.31"
               'contract:
               'class-type?
               'value:
               _%klass135180%_)
              '#!void))))
    (define ___constructor-init!
      (lambda (_%klass135169%_ _%kons-id135170%_ _%obj135171%_ _%args135172%_)
        (let ((_%$e135174%_
               (__find-method
                _%klass135169%_
                _%obj135171%_
                _%kons-id135170%_)))
          (if _%$e135174%_
              (let ()
                (apply _%$e135174%_ _%obj135171%_ _%args135172%_)
                _%obj135171%_)
              (error '"missing constructor"
                     'class:
                     _%klass135169%_
                     'method:
                     _%kons-id135170%_)))))
    (define __struct-copy
      (lambda (_%struct135157%_)
        (let ((_%struct135160%_ _%struct135157%_))
          (declare (not safe))
          (##structure-copy _%struct135160%_))))
    (define struct-copy
      (lambda (_%struct135143%_)
        (if (object? _%struct135143%_)
            (let ((_%struct135147%_ _%struct135143%_))
              (__struct-copy _%struct135147%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@958.20-958.26"
               'contract:
               'object?
               'value:
               _%struct135143%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj135124%_)
        (let* ((_%obj135127%_ _%obj135124%_)
               (_%len135136%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj135127%_))))
          (let _%recur135138%_ ((_%i135140%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i135140%_ _%len135136%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj135127%_
                         _%i135140%_
                         '#f
                         '#f))
                      (_%recur135138%_
                       (let () (declare (not safe)) (##fx+ _%i135140%_ '1))))
                '())))))
    (define struct->list
      (lambda (_%obj135110%_)
        (if (object? _%obj135110%_)
            (let ((_%obj135114%_ _%obj135110%_))
              (__struct->list _%obj135114%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@961.21-961.24"
               'contract:
               'object?
               'value:
               _%obj135110%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj135062%_)
        (let* ((_%obj135065%_ _%obj135062%_)
               (_%klass135074%_
                (let () (declare (not safe)) (##structure-type _%obj135065%_)))
               (_%slot-vector135076%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass135074%_ '7 '#f '#f))))
          (let _%loop135078%_ ((_%index135080%_
                                (let ((__tmp142223
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector135076%_))))
                                  (declare (not safe))
                                  (##fx- __tmp142223 '1)))
                               (_%plist135081%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index135080%_ '1))
                (cons _%klass135074%_ _%plist135081%_)
                (let ((_%slot135084%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector135076%_
                          _%index135080%_))))
                  (_%loop135078%_
                   (let () (declare (not safe)) (##fx- _%index135080%_ '1))
                   (cons (let ((_%sym135086%_ _%slot135084%_))
                           (if (symbol? _%sym135086%_)
                               (let ((_%sym135091%_ _%sym135086%_))
                                 (declare (not safe))
                                 (__symbol->keyword _%sym135091%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  'symbol?
                                  'value:
                                  _%sym135086%_)
                                 '#!void)))
                         (cons (unchecked-field-ref
                                _%obj135065%_
                                _%index135080%_)
                               _%plist135081%_)))))))))
    (define class->list
      (lambda (_%obj135048%_)
        (if (object? _%obj135048%_)
            (let ((_%obj135052%_ _%obj135048%_)) (__class->list _%obj135052%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@969.20-969.23"
               'contract:
               'object?
               'value:
               _%obj135048%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj134998%_ _%id134999%_ . _%args135000%_)
        (let* ((_%id135003%_ _%id134999%_)
               (_%$e135034%_
                (let* ((_%obj135012%_ _%obj134998%_)
                       (_%id135015%_ _%id135003%_)
                       (_%id135020%_ _%id135015%_))
                  (__method-ref _%obj135012%_ _%id135020%_))))
          (if _%$e135034%_
              (let ((_%method135039%_ _%$e135034%_))
                (apply _%method135039%_ _%obj134998%_ _%args135000%_))
              (error '"cannot find method"
                     'object:
                     _%obj134998%_
                     'method:
                     _%id135003%_)))))
    (define call-method
      (lambda (_%obj134982%_ _%id134983%_ . _%args134984%_)
        (if (symbol? _%id134983%_)
            (let ((_%id134988%_ _%id134983%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj134982%_
                       _%id134988%_
                       _%args134984%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@984.24-984.26"
               'contract:
               'symbol?
               'value:
               _%id134983%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj134933%_ _%id134934%_)
        (let* ((_%id134937%_ _%id134934%_)
               (_%klass134946%_ (class-of _%obj134933%_))
               (_%obj134949%_ _%obj134933%_)
               (_%id134952%_ _%id134937%_)
               (_%klass134957%_ _%klass134946%_)
               (_%id134972%_ _%id134952%_))
          (__find-method _%klass134957%_ _%obj134949%_ _%id134972%_))))
    (define method-ref
      (lambda (_%obj134918%_ _%id134919%_)
        (if (symbol? _%id134919%_)
            (let ((_%id134923%_ _%id134919%_))
              (__method-ref _%obj134918%_ _%id134923%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1011.23-1011.25"
               'contract:
               'symbol?
               'value:
               _%id134919%_)
              '#!void))))
    (define checked-method-ref
      (lambda (_%obj134890%_ _%id134891%_)
        (let ((_%$e134915%_
               (let* ((_%obj134894%_ _%obj134890%_)
                      (_%id134897%_ _%id134891%_))
                 (if (symbol? _%id134897%_)
                     (let ((_%id134902%_ _%id134897%_))
                       (__method-ref _%obj134894%_ _%id134902%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id134897%_)
                       '#!void)))))
          (if _%$e134915%_
              _%$e134915%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj134890%_
                       'method:
                       _%id134891%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj134839%_ _%id134840%_)
        (let* ((_%id134843%_ _%id134840%_)
               (_%$e134874%_
                (let* ((_%obj134852%_ _%obj134839%_)
                       (_%id134855%_ _%id134843%_)
                       (_%id134860%_ _%id134855%_))
                  (__method-ref _%obj134852%_ _%id134860%_))))
          (if _%$e134874%_
              (let ((_%method134879%_ _%$e134874%_))
                (lambda _%args134887%_
                  (apply _%method134879%_ _%obj134839%_ _%args134887%_)))
              '#f))))
    (define bound-method-ref
      (lambda (_%obj134824%_ _%id134825%_)
        (if (symbol? _%id134825%_)
            (let ((_%id134829%_ _%id134825%_))
              (__bound-method-ref _%obj134824%_ _%id134829%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1019.29-1019.31"
               'contract:
               'symbol?
               'value:
               _%id134825%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj134807%_ _%id134808%_)
        (let* ((_%id134811%_ _%id134808%_)
               (_%method134820%_
                (checked-method-ref _%obj134807%_ _%id134811%_)))
          (lambda _%args134822%_
            (apply _%method134820%_ _%obj134807%_ _%args134822%_)))))
    (define checked-bound-method-ref
      (lambda (_%obj134792%_ _%id134793%_)
        (if (symbol? _%id134793%_)
            (let ((_%id134797%_ _%id134793%_))
              (__checked-bound-method-ref _%obj134792%_ _%id134797%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1028.37-1028.39"
               'contract:
               'symbol?
               'value:
               _%id134793%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass134661%_ _%obj134662%_ _%id134663%_)
        (let* ((_%klass134666%_ _%klass134661%_) (_%id134674%_ _%id134663%_))
          (if (let* ((_%klass134683%_ _%klass134666%_)
                     (_%klass134688%_ _%klass134683%_))
                (__class-type-sealed? _%klass134688%_))
              (let ((_%tab134718%_
                     (let* ((_%klass134702%_ _%klass134666%_)
                            (_%klass134707%_ _%klass134702%_))
                       (__specialize-class _%klass134707%_))))
                (declare (not safe))
                (symbolic-table-ref _%tab134718%_ _%id134674%_ '#f))
              (let ((_%$e134753%_
                     (let* ((_%klass134720%_ _%klass134666%_)
                            (_%obj134723%_ _%obj134662%_)
                            (_%id134726%_ _%id134674%_)
                            (_%klass134731%_ _%klass134720%_)
                            (_%id134743%_ _%id134726%_))
                       (__direct-method-ref
                        _%klass134731%_
                        _%obj134723%_
                        _%id134743%_))))
                (if _%$e134753%_
                    _%$e134753%_
                    (let* ((_%klass134757%_ _%klass134666%_)
                           (_%obj134760%_ _%obj134662%_)
                           (_%id134763%_ _%id134674%_)
                           (_%klass134768%_ _%klass134757%_)
                           (_%id134782%_ _%id134763%_))
                      (__mixin-method-ref
                       _%klass134768%_
                       _%obj134760%_
                       _%id134782%_))))))))
    (define find-method
      (lambda (_%klass134635%_ _%obj134636%_ _%id134637%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134635%_ 'class))
            (let ((_%klass134641%_ _%klass134635%_))
              (if (symbol? _%id134637%_)
                  (let ((_%id134651%_ _%id134637%_))
                    (__find-method _%klass134641%_ _%obj134636%_ _%id134651%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1033.41-1033.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id134637%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1033.20-1033.25"
               'contract:
               'class-type?
               'value:
               _%klass134635%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins134580%_ _%obj134581%_ _%id134582%_)
        (let* ((_%id134585%_ _%id134582%_)
               (__tmp142224
                (lambda (_%$%g134593134595%_)
                  (let* ((_%klass134598%_ _%$%g134593134595%_)
                         (_%obj134601%_ _%obj134581%_)
                         (_%id134604%_ _%id134585%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass134598%_ 'class))
                        (let* ((_%klass134609%_ _%klass134598%_)
                               (_%id134625%_ _%id134604%_))
                          (__direct-method-ref
                           _%klass134609%_
                           _%obj134601%_
                           _%id134625%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass134598%_)
                          '#!void))))))
          (declare (not safe))
          (ormap__0 __tmp142224 _%mixins134580%_))))
    (define mixin-find-method
      (lambda (_%mixins134564%_ _%obj134565%_ _%id134566%_)
        (if (symbol? _%id134566%_)
            (let ((_%id134570%_ _%id134566%_))
              (__mixin-find-method
               _%mixins134564%_
               _%obj134565%_
               _%id134570%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1042.37-1042.39"
               'contract:
               'symbol?
               'value:
               _%id134566%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass134457%_ _%obj134458%_ _%id134459%_)
        (let* ((_%klass134462%_ _%klass134457%_) (_%id134470%_ _%id134459%_))
          (letrec ((_%metaclass-resolve-method134479%_
                    (lambda ()
                      (let* ((_%obj134540%_ _%klass134462%_)
                             (_%id134543%_ 'direct-method-ref)
                             (_%args134546%_ (list _%obj134458%_ _%id134470%_))
                             (_%id134551%_ _%id134543%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj134540%_
                                 _%id134551%_
                                 _%args134546%_))))
                   (_%metaclass-resolve-method!134480%_
                    (lambda ()
                      (let ((_%method134537%_
                             (_%metaclass-resolve-method134479%_)))
                        (let ((__tmp142226
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass134462%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp142225
                               (if _%method134537%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp142226
                           _%id134470%_
                           __tmp142225))
                        _%method134537%_))))
            (let ((_%$e134482%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass134462%_ '11 '#f '#f))))
              (if _%$e134482%_
                  (let ((_%method134487%_
                         (let ()
                           (declare (not safe))
                           (symbolic-table-ref
                            _%$e134482%_
                            _%id134470%_
                            '#f))))
                    (if (procedure? _%method134487%_)
                        _%method134487%_
                        (if (let* ((_%klass134490%_ _%klass134462%_)
                                   (_%klass134495%_ _%klass134490%_))
                              (__class-type-metaclass? _%klass134495%_))
                            (let ((_%$e134513%_ _%method134487%_))
                              (if (eq? 'resolved _%$e134513%_)
                                  (_%metaclass-resolve-method134479%_)
                                  (if (eq? 'unknown _%$e134513%_)
                                      '#f
                                      (_%metaclass-resolve-method!134480%_))))
                            '#f)))
                  (if (let* ((_%klass134517%_ _%klass134462%_)
                             (_%klass134522%_ _%klass134517%_))
                        (__class-type-metaclass? _%klass134522%_))
                      (let ((_%tab134533%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass134462%_
                           _%tab134533%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!134480%_))
                      '#f)))))))
    (define direct-method-ref
      (lambda (_%klass134431%_ _%obj134432%_ _%id134433%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134431%_ 'class))
            (let ((_%klass134437%_ _%klass134431%_))
              (if (symbol? _%id134433%_)
                  (let ((_%id134447%_ _%id134433%_))
                    (__direct-method-ref
                     _%klass134437%_
                     _%obj134432%_
                     _%id134447%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1045.47-1045.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id134433%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1045.26-1045.31"
               'contract:
               'class-type?
               'value:
               _%klass134431%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass134383%_ _%obj134384%_ _%id134385%_)
        (let* ((_%klass134388%_ _%klass134383%_)
               (_%id134396%_ _%id134385%_)
               (_%mixins134405%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass134388%_ '6 '#f '#f)))
               (_%obj134408%_ _%obj134384%_)
               (_%id134411%_ _%id134396%_)
               (_%id134416%_ _%id134411%_))
          (__mixin-find-method _%mixins134405%_ _%obj134408%_ _%id134416%_))))
    (define mixin-method-ref
      (lambda (_%klass134357%_ _%obj134358%_ _%id134359%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134357%_ 'class))
            (let ((_%klass134363%_ _%klass134357%_))
              (if (symbol? _%id134359%_)
                  (let ((_%id134373%_ _%id134359%_))
                    (__mixin-method-ref
                     _%klass134363%_
                     _%obj134358%_
                     _%id134373%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1075.46-1075.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id134359%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1075.25-1075.30"
               'contract:
               'class-type?
               'value:
               _%klass134357%_)
              '#!void))))
    (define __bind-method!__%
      (lambda (_%klass134238%_ _%id134239%_ _%proc134240%_ _%rebind?134241%_)
        (let* ((_%id134244%_ _%id134239%_) (_%proc134252%_ _%proc134240%_))
          (letrec ((_%flush-caches!134261%_
                    (lambda (_%klass134315%_)
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%klass134315%_
                             '12
                             '#f
                             '#f))
                          (begin
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-set!
                               _%klass134315%_
                               '#f
                               '12
                               '#f
                               '#f))
                            (if (let ((_%klass134317%_ _%klass134315%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass134317%_
                                         'class))
                                      (let ((_%klass134322%_ _%klass134317%_))
                                        (__class-type-sealed? _%klass134322%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass134317%_)
                                        '#!void)))
                                (let ((__tmp142227
                                       (let ((__tmp142229
                                              (let ()
                                                (declare (not safe))
                                                (##fxnot class-type-flag-sealed)))
                                             (__tmp142228
                                              (let ()
                                                (declare (not safe))
                                                (##type-flags
                                                 _%klass134315%_))))
                                         (declare (not safe))
                                         (##fxand __tmp142229 __tmp142228))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _%klass134315%_
                                   __tmp142227
                                   '3
                                   class::t
                                   bind-method!))
                                '#!void))
                          '#!void)
                      (if (and _%rebind?134241%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass134315%_
                                  '13
                                  '#f
                                  '#f)))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _%klass134315%_
                             '#f
                             '13
                             '#f
                             '#f))
                          '#!void)
                      (let ((_%$e134333%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%klass134315%_
                                '9
                                '#f
                                '#f))))
                        (if _%$e134333%_
                            (let ((_%$e134338%_
                                   (let ()
                                     (declare (not safe))
                                     (agetq__0 'subclasses: _%$e134333%_))))
                              (if _%$e134338%_
                                  (for-each
                                   _%flush-caches!134261%_
                                   _%$e134338%_)
                                  '#!void))
                            '#!void))))
                   (_%bind!134262%_
                    (lambda (_%ht134313%_)
                      (if (and (not _%rebind?134241%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht134313%_
                                  _%id134244%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass134238%_
                                 'method:
                                 _%id134244%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht134313%_
                               _%id134244%_
                               _%proc134252%_))
                            (_%flush-caches!134261%_ _%klass134238%_)
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass134238%_ 'class))
                (let ((_%ht134265%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass134238%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht134265%_
                      (_%bind!134262%_ _%ht134265%_)
                      (let ((_%ht134267%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass134238%_
                           _%ht134267%_
                           '11
                           '#f
                           '#f))
                        (_%bind!134262%_ _%ht134267%_))))
                (if (let () (declare (not safe)) (##type? _%klass134238%_))
                    (let* ((_%klass134270%_
                            (__shadow-class__0 _%klass134238%_))
                           (_%id134273%_ _%id134244%_)
                           (_%proc134276%_ _%proc134252%_)
                           (_%rebind?134279%_ _%rebind?134241%_)
                           (_%id134284%_ _%id134273%_)
                           (_%proc134302%_ _%proc134276%_))
                      (__bind-method!__%
                       _%klass134270%_
                       _%id134284%_
                       _%proc134302%_
                       _%rebind?134279%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass134238%_)))))))
    (define __bind-method!__0
      (lambda (_%klass134346%_ _%id134347%_ _%proc134348%_)
        (let ((_%rebind?134350%_ '#f))
          (__bind-method!__%
           _%klass134346%_
           _%id134347%_
           _%proc134348%_
           _%rebind?134350%_))))
    (define __bind-method!
      (lambda _g142230_
        (let ((_g142231_ (let () (declare (not safe)) (##length _g142230_))))
          (cond ((let () (declare (not safe)) (##fx= _g142231_ 3))
                 (apply __bind-method!__0 _g142230_))
                ((let () (declare (not safe)) (##fx= _g142231_ 4))
                 (apply __bind-method!__% _g142230_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g142230_))))))
    (define bind-method!__%
      (lambda (_%klass134196%_ _%id134197%_ _%proc134198%_ _%rebind?134199%_)
        (if (symbol? _%id134197%_)
            (let ((_%id134203%_ _%id134197%_))
              (if (procedure? _%proc134198%_)
                  (let ((_%proc134213%_ _%proc134198%_))
                    (__bind-method!__%
                     _%klass134196%_
                     _%id134203%_
                     _%proc134213%_
                     _%rebind?134199%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1078.42-1078.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc134198%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1078.27-1078.29"
               'contract:
               'symbol?
               'value:
               _%id134197%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass134226%_ _%id134227%_ _%proc134228%_)
        (let ((_%rebind?134230%_ '#f))
          (bind-method!__%
           _%klass134226%_
           _%id134227%_
           _%proc134228%_
           _%rebind?134230%_))))
    (define bind-method!
      (lambda _g142232_
        (let ((_g142233_ (let () (declare (not safe)) (##length _g142232_))))
          (cond ((let () (declare (not safe)) (##fx= _g142233_ 3))
                 (apply bind-method!__0 _g142232_))
                ((let () (declare (not safe)) (##fx= _g142233_ 4))
                 (apply bind-method!__% _g142232_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g142232_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint134177%_ _%seed134178%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint134177%_
           procedure-hash
           eq?
           _%seed134178%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint134184%_ '#f) (_%seed134186%_ '0))
          (make-method-specializer-table__%
           _%size-hint134184%_
           _%seed134186%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint134188%_)
        (let ((_%seed134190%_ '0))
          (make-method-specializer-table__%
           _%size-hint134188%_
           _%seed134190%_))))
    (define make-method-specializer-table
      (lambda _g142234_
        (let ((_g142235_ (let () (declare (not safe)) (##length _g142234_))))
          (cond ((let () (declare (not safe)) (##fx= _g142235_ 0))
                 (apply make-method-specializer-table__0 _g142234_))
                ((let () (declare (not safe)) (##fx= _g142235_ 1))
                 (apply make-method-specializer-table__1 _g142234_))
                ((let () (declare (not safe)) (##fx= _g142235_ 2))
                 (apply make-method-specializer-table__% _g142234_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g142234_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint134157%_ _%seed134159%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint134157%_
           procedure-hash
           eq?
           _%seed134159%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint134165%_ '#f) (_%seed134167%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint134165%_
           _%seed134167%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint134169%_)
        (let ((_%seed134171%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint134169%_
           _%seed134171%_))))
    (define make-method-specializer-table/lock
      (lambda _g142236_
        (let ((_g142237_ (let () (declare (not safe)) (##length _g142236_))))
          (cond ((let () (declare (not safe)) (##fx= _g142237_ 0))
                 (apply make-method-specializer-table/lock__0 _g142236_))
                ((let () (declare (not safe)) (##fx= _g142237_ 1))
                 (apply make-method-specializer-table/lock__1 _g142236_))
                ((let () (declare (not safe)) (##fx= _g142237_ 2))
                 (apply make-method-specializer-table/lock__% _g142236_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g142236_))))))
    (define method-specializer-table-ref
      (lambda (_%tab134110%_ _%key134111%_ _%default134112%_)
        (let ((_%table134114%_
               (let () (declare (not safe)) (&raw-table-table _%tab134110%_)))
              (_%seed134115%_
               (let () (declare (not safe)) (&raw-table-seed _%tab134110%_))))
          (let* ((_%h134117%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key134111%_))
                         _%seed134115%_))
                 (_%size134120%_ (vector-length _%table134114%_))
                 (_%entries134123%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size134120%_ '2)))
                 (_%start134126%_
                  (let ((__tmp142238
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h134117%_ _%entries134123%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp142238 '1))))
            (let _%loop134130%_ ((_%probe134133%_ _%start134126%_)
                                 (_%i134135%_ '1)
                                 (_%deleted134137%_ '#f))
              (let ((_%k134140%_ (vector-ref _%table134114%_ _%probe134133%_)))
                (if (eq? _%k134140%_ (macro-unused-obj))
                    _%default134112%_
                    (if (eq? _%k134140%_ (macro-deleted-obj))
                        (_%loop134130%_
                         (let ((_%next-probe134145%_
                                (fx+ _%start134126%_
                                     _%i134135%_
                                     (fx* _%i134135%_ _%i134135%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe134145%_ _%size134120%_))
                         (let () (declare (not safe)) (##fx+ _%i134135%_ '1))
                         (let ((_%$e134148%_ _%deleted134137%_))
                           (if _%$e134148%_ _%$e134148%_ _%probe134133%_)))
                        (if (eq? _%key134111%_ _%k134140%_)
                            (vector-ref
                             _%table134114%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe134133%_ '1)))
                            (_%loop134130%_
                             (let ((_%next-probe134153%_
                                    (fx+ _%start134126%_
                                         _%i134135%_
                                         (fx* _%i134135%_ _%i134135%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe134153%_
                                _%size134120%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i134135%_ '1))
                             _%deleted134137%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab134081%_ _%key134082%_ _%default134083%_)
        (let ((_%lock134085%_
               (let () (declare (not safe)) (&raw-table-lock _%tab134081%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again134090%_ ((_%spin134093%_ '0))
              (if (let ((__tmp142239
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock134085%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp142239 '0))
                  (let ((__tmp142240 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock134085%_ '1 __tmp142240))
                  (if (let () (declare (not safe)) (##fx< _%spin134093%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again134090%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin134093%_ '1))))
                      (let ((_%owner134099%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock134085%_ '1))))
                        (if (eq? _%owner134099%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner134099%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again134090%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r134105%_
                 (method-specializer-table-ref
                  _%tab134081%_
                  _%key134082%_
                  _%default134083%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock134085%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock134085%_ '0 '0 '1))))
            _%$r134105%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab134033%_ _%key134034%_ _%value134035%_)
        (let ((_%table134037%_
               (let () (declare (not safe)) (&raw-table-table _%tab134033%_)))
              (_%seed134038%_
               (let () (declare (not safe)) (&raw-table-seed _%tab134033%_))))
          (let* ((_%h134040%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key134034%_))
                         _%seed134038%_))
                 (_%size134043%_ (vector-length _%table134037%_))
                 (_%entries134046%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size134043%_ '2)))
                 (_%start134049%_
                  (let ((__tmp142241
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h134040%_ _%entries134046%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp142241 '1))))
            (let _%loop134053%_ ((_%probe134056%_ _%start134049%_)
                                 (_%i134058%_ '1)
                                 (_%deleted134060%_ '#f))
              (let ((_%k134063%_ (vector-ref _%table134037%_ _%probe134056%_)))
                (if (eq? _%k134063%_ (macro-unused-obj))
                    (if _%deleted134060%_
                        (begin
                          (vector-set!
                           _%table134037%_
                           _%deleted134060%_
                           _%key134034%_)
                          (vector-set!
                           _%table134037%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted134060%_ '1))
                           _%value134035%_)
                          (let ((__tmp142242
                                 (let ((__tmp142243
                                        (let ()
                                          (declare (not safe))
                                          (&raw-table-count _%tab134033%_))))
                                   (declare (not safe))
                                   (##fx+ __tmp142243 '1))))
                            (declare (not safe))
                            (&raw-table-count-set! _%tab134033%_ __tmp142242)))
                        (begin
                          (vector-set!
                           _%table134037%_
                           _%probe134056%_
                           _%key134034%_)
                          (vector-set!
                           _%table134037%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe134056%_ '1))
                           _%value134035%_)
                          (let ()
                            (let ((__tmp142244
                                   (let ((__tmp142245
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-free _%tab134033%_))))
                                     (declare (not safe))
                                     (##fx- __tmp142245 '1))))
                              (declare (not safe))
                              (&raw-table-free-set! _%tab134033%_ __tmp142244))
                            (let ((__tmp142246
                                   (let ((__tmp142247
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-count _%tab134033%_))))
                                     (declare (not safe))
                                     (##fx+ __tmp142247 '1))))
                              (declare (not safe))
                              (&raw-table-count-set!
                               _%tab134033%_
                               __tmp142246)))))
                    (if (eq? _%k134063%_ (macro-deleted-obj))
                        (_%loop134053%_
                         (let ((_%next-probe134070%_
                                (fx+ _%start134049%_
                                     _%i134058%_
                                     (fx* _%i134058%_ _%i134058%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe134070%_ _%size134043%_))
                         (let () (declare (not safe)) (##fx+ _%i134058%_ '1))
                         (let ((_%$e134073%_ _%deleted134060%_))
                           (if _%$e134073%_ _%$e134073%_ _%probe134056%_)))
                        (if (eq? _%key134034%_ _%k134063%_)
                            (let ()
                              (vector-set!
                               _%table134037%_
                               _%probe134056%_
                               _%key134034%_)
                              (vector-set!
                               _%table134037%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe134056%_ '1))
                               _%value134035%_))
                            (_%loop134053%_
                             (let ((_%next-probe134078%_
                                    (fx+ _%start134049%_
                                         _%i134058%_
                                         (fx* _%i134058%_ _%i134058%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe134078%_
                                _%size134043%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i134058%_ '1))
                             _%deleted134060%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab134029%_ _%key134030%_ _%value134031%_)
        (if (let ((__tmp142250
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab134029%_)))
                  (__tmp142248
                   (let ((__tmp142249
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab134029%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp142249 '4))))
              (declare (not safe))
              (##fx< __tmp142250 __tmp142248))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab134029%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab134029%_
         _%key134030%_
         _%value134031%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab133999%_ _%key134000%_ _%value134001%_)
        (let ((_%lock134004%_
               (let () (declare (not safe)) (&raw-table-lock _%tab133999%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again134009%_ ((_%spin134012%_ '0))
              (if (let ((__tmp142251
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock134004%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp142251 '0))
                  (let ((__tmp142252 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock134004%_ '1 __tmp142252))
                  (if (let () (declare (not safe)) (##fx< _%spin134012%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again134009%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin134012%_ '1))))
                      (let ((_%owner134018%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock134004%_ '1))))
                        (if (eq? _%owner134018%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner134018%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again134009%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r134024%_
                 (method-specializer-table-set!
                  _%tab133999%_
                  _%key134000%_
                  _%value134001%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock134004%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock134004%_ '0 '0 '1))))
            _%$r134024%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab133950%_
               _%key133951%_
               _%method-specializer-table-update!133952%_
               _%default133953%_)
        (let ((_%table133955%_
               (let () (declare (not safe)) (&raw-table-table _%tab133950%_)))
              (_%seed133956%_
               (let () (declare (not safe)) (&raw-table-seed _%tab133950%_))))
          (let* ((_%h133958%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key133951%_))
                         _%seed133956%_))
                 (_%size133961%_ (vector-length _%table133955%_))
                 (_%entries133964%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size133961%_ '2)))
                 (_%start133967%_
                  (let ((__tmp142253
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h133958%_ _%entries133964%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp142253 '1))))
            (let _%loop133971%_ ((_%probe133974%_ _%start133967%_)
                                 (_%i133976%_ '1)
                                 (_%deleted133978%_ '#f))
              (let ((_%k133981%_ (vector-ref _%table133955%_ _%probe133974%_)))
                (if (eq? _%k133981%_ (macro-unused-obj))
                    (if _%deleted133978%_
                        (begin
                          (vector-set!
                           _%table133955%_
                           _%deleted133978%_
                           _%key133951%_)
                          (vector-set!
                           _%table133955%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted133978%_ '1))
                           (_%method-specializer-table-update!133952%_
                            _%default133953%_))
                          (let ((__tmp142254
                                 (let ((__tmp142255
                                        (let ()
                                          (declare (not safe))
                                          (&raw-table-count _%tab133950%_))))
                                   (declare (not safe))
                                   (##fx+ __tmp142255 '1))))
                            (declare (not safe))
                            (&raw-table-count-set! _%tab133950%_ __tmp142254)))
                        (begin
                          (vector-set!
                           _%table133955%_
                           _%probe133974%_
                           _%key133951%_)
                          (vector-set!
                           _%table133955%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe133974%_ '1))
                           (_%method-specializer-table-update!133952%_
                            _%default133953%_))
                          (let ()
                            (let ((__tmp142256
                                   (let ((__tmp142257
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-free _%tab133950%_))))
                                     (declare (not safe))
                                     (##fx- __tmp142257 '1))))
                              (declare (not safe))
                              (&raw-table-free-set! _%tab133950%_ __tmp142256))
                            (let ((__tmp142258
                                   (let ((__tmp142259
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-count _%tab133950%_))))
                                     (declare (not safe))
                                     (##fx+ __tmp142259 '1))))
                              (declare (not safe))
                              (&raw-table-count-set!
                               _%tab133950%_
                               __tmp142258)))))
                    (if (eq? _%k133981%_ (macro-deleted-obj))
                        (_%loop133971%_
                         (let ((_%next-probe133988%_
                                (fx+ _%start133967%_
                                     _%i133976%_
                                     (fx* _%i133976%_ _%i133976%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe133988%_ _%size133961%_))
                         (let () (declare (not safe)) (##fx+ _%i133976%_ '1))
                         (let ((_%$e133991%_ _%deleted133978%_))
                           (if _%$e133991%_ _%$e133991%_ _%probe133974%_)))
                        (if (eq? _%key133951%_ _%k133981%_)
                            (let ()
                              (vector-set!
                               _%table133955%_
                               _%probe133974%_
                               _%key133951%_)
                              (vector-set!
                               _%table133955%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe133974%_ '1))
                               (_%method-specializer-table-update!133952%_
                                (vector-ref
                                 _%table133955%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe133974%_ '1))))))
                            (_%loop133971%_
                             (let ((_%next-probe133996%_
                                    (fx+ _%start133967%_
                                         _%i133976%_
                                         (fx* _%i133976%_ _%i133976%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe133996%_
                                _%size133961%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i133976%_ '1))
                             _%deleted133978%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab133945%_
               _%key133946%_
               _%method-specializer-table-update!133947%_
               _%default133948%_)
        (if (let ((__tmp142262
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab133945%_)))
                  (__tmp142260
                   (let ((__tmp142261
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab133945%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp142261 '4))))
              (declare (not safe))
              (##fx< __tmp142262 __tmp142260))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab133945%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab133945%_
         _%key133946%_
         _%method-specializer-table-update!133947%_
         _%default133948%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab133914%_
               _%key133915%_
               _%method-specializer-table-update!133916%_
               _%default133917%_)
        (let ((_%lock133920%_
               (let () (declare (not safe)) (&raw-table-lock _%tab133914%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again133925%_ ((_%spin133928%_ '0))
              (if (let ((__tmp142263
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock133920%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp142263 '0))
                  (let ((__tmp142264 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock133920%_ '1 __tmp142264))
                  (if (let () (declare (not safe)) (##fx< _%spin133928%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again133925%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin133928%_ '1))))
                      (let ((_%owner133934%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock133920%_ '1))))
                        (if (eq? _%owner133934%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner133934%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again133925%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r133940%_
                 (_%method-specializer-table-update!133916%_
                  _%tab133914%_
                  _%key133915%_
                  _%method-specializer-table-update!133916%_
                  _%default133917%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock133920%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock133920%_ '0 '0 '1))))
            _%$r133940%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab133871%_ _%key133872%_)
        (let ((_%table133874%_
               (let () (declare (not safe)) (&raw-table-table _%tab133871%_)))
              (_%seed133876%_
               (let () (declare (not safe)) (&raw-table-seed _%tab133871%_))))
          (let* ((_%h133879%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key133872%_))
                         _%seed133876%_))
                 (_%size133882%_ (vector-length _%table133874%_))
                 (_%entries133885%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size133882%_ '2)))
                 (_%start133888%_
                  (let ((__tmp142265
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h133879%_ _%entries133885%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp142265 '1))))
            (let _%loop133892%_ ((_%probe133895%_ _%start133888%_)
                                 (_%i133897%_ '1))
              (let ((_%k133900%_ (vector-ref _%table133874%_ _%probe133895%_)))
                (if (eq? _%k133900%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k133900%_ (macro-deleted-obj))
                        (_%loop133892%_
                         (let ((_%next-probe133905%_
                                (fx+ _%start133888%_
                                     _%i133897%_
                                     (fx* _%i133897%_ _%i133897%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe133905%_ _%size133882%_))
                         (let () (declare (not safe)) (##fx+ _%i133897%_ '1)))
                        (if (eq? _%key133872%_ _%k133900%_)
                            (let ()
                              (vector-set!
                               _%table133874%_
                               _%probe133895%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table133874%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe133895%_ '1))
                               (macro-absent-obj))
                              (let ((__tmp142266
                                     (let ((__tmp142267
                                            (let ()
                                              (declare (not safe))
                                              (&raw-table-count
                                               _%tab133871%_))))
                                       (declare (not safe))
                                       (##fx- __tmp142267 '1))))
                                (declare (not safe))
                                (&raw-table-count-set!
                                 _%tab133871%_
                                 __tmp142266)))
                            (_%loop133892%_
                             (let ((_%next-probe133911%_
                                    (fx+ _%start133888%_
                                         _%i133897%_
                                         (fx* _%i133897%_ _%i133897%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe133911%_
                                _%size133882%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i133897%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab133841%_ _%key133843%_)
        (let ((_%lock133846%_
               (let () (declare (not safe)) (&raw-table-lock _%tab133841%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again133851%_ ((_%spin133854%_ '0))
              (if (let ((__tmp142268
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock133846%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp142268 '0))
                  (let ((__tmp142269 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock133846%_ '1 __tmp142269))
                  (if (let () (declare (not safe)) (##fx< _%spin133854%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again133851%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin133854%_ '1))))
                      (let ((_%owner133860%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock133846%_ '1))))
                        (if (eq? _%owner133860%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner133860%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again133851%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r133866%_
                 (method-specializer-table-delete!
                  _%tab133841%_
                  _%key133843%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock133846%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock133846%_ '0 '0 '1))))
            _%$r133866%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc133838%_ _%specializer133839%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc133838%_
         _%specializer133839%_)))
    (define __lookup-method-specializer
      (lambda (_%proc133836%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc133836%_
         '#f)))
    (define __specialize-class
      (lambda (_%klass133818%_)
        (let* ((_%klass133821%_ _%klass133818%_)
               (_%$e133830%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass133821%_ '12 '#f '#f))))
          (if _%$e133830%_
              _%$e133830%_
              (let ((_%method-table133834%_
                     (___specialize-class _%klass133821%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass133821%_
                   _%method-table133834%_
                   '12
                   '#f
                   '#f))
                _%method-table133834%_)))))
    (define specialize-class
      (lambda (_%klass133804%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass133804%_ 'class))
            (let ((_%klass133808%_ _%klass133804%_))
              (__specialize-class _%klass133808%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1152.25-1152.30"
               'contract:
               'class-type?
               'value:
               _%klass133804%_)
              '#!void))))
    (define __specialize-method
      (lambda (_%klass133788%_
               _%method-table133789%_
               _%method133790%_
               _%proc133791%_)
        (let ((_%$e133793%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table133789%_
                  _%method133790%_
                  '#f))))
          (if _%$e133793%_
              _%$e133793%_
              (let ((_%$e133796%_
                     (__lookup-method-specializer _%proc133791%_)))
                (if _%$e133796%_
                    (let ((_%specialized-proc133801%_
                           (_%$e133796%_
                            _%klass133788%_
                            _%method-table133789%_)))
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table133789%_
                       _%method133790%_
                       _%specialized-proc133801%_))
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table133789%_
                       _%method133790%_
                       _%proc133791%_))))))))
    (define ___specialize-class
      (lambda (_%klass133655%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass133655%_ 'class))
            (if (let* ((_%klass133658%_ _%klass133655%_)
                       (_%klass133663%_ _%klass133658%_))
                  (__class-type-metaclass? _%klass133663%_))
                (let* ((_%obj133675%_ _%klass133655%_)
                       (_%id133678%_ 'specialize-class)
                       (_%args133681%_ '())
                       (_%id133686%_ _%id133678%_))
                  (declare (not safe))
                  (##apply __call-method
                           _%obj133675%_
                           _%id133686%_
                           _%args133681%_))
                (if (let* ((_%pred133699%_ class-type-metaclass?)
                           (_%lst133702%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass133655%_
                               '6
                               '#f
                               '#f)))
                           (_%pred133707%_ _%pred133699%_))
                      (declare (not safe))
                      (__find _%pred133707%_ _%lst133702%_))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass133655%_)
                    (let ((_%method-table133720%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop133722%_ ((_%rest133724%_
                                            (let* ((_%klass133771%_
                                                    _%klass133655%_)
                                                   (_%klass133776%_
                                                    _%klass133771%_))
                                              (__class-precedence-list
                                               _%klass133776%_))))
                        (let* ((_%$%rest133725133733%_ _%rest133724%_)
                               (_%$%else133727133741%_
                                (lambda () _%method-table133720%_))
                               (_%$%K133729133759%_
                                (lambda (_%rest133744%_ _%xklass133745%_)
                                  (let ((_%$%xmethod-table133746133748%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass133745%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%$%xmethod-table133746133748%_
                                        (let* ((_%xmethod-table133750%_
                                                _%$%xmethod-table133746133748%_)
                                               (__tmp142270
                                                (lambda (_%$%g133751133754%_
                                                         _%$%g133752133756%_)
                                                  (__specialize-method
                                                   _%klass133655%_
                                                   _%method-table133720%_
                                                   _%$%g133751133754%_
                                                   _%$%g133752133756%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table133750%_
                                           __tmp142270))
                                        '#f))
                                  (_%loop133722%_ _%rest133744%_))))
                          (if (pair? _%$%rest133725133733%_)
                              (let ((_%$%hd133730133762%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest133725133733%_)))
                                    (_%$%tl133731133764%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest133725133733%_))))
                                (let* ((_%xklass133767%_ _%$%hd133730133762%_)
                                       (_%rest133769%_ _%$%tl133731133764%_))
                                  (_%$%K133729133759%_
                                   _%rest133769%_
                                   _%xklass133767%_)))
                              (_%$%else133727133741%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass133655%_))
                (__specialize-class (__shadow-class__0 _%klass133655%_))
                (error '"bad class; cannot specialize" _%klass133655%_)))))
    (define __seal-class!
      (lambda (_%klass133518%_)
        (let ((_%klass133521%_ _%klass133518%_))
          (if (let* ((_%klass133530%_ _%klass133521%_)
                     (_%klass133535%_ _%klass133530%_))
                (__class-type-sealed? _%klass133535%_))
              '#!void
              (begin
                (if (let* ((_%klass133548%_ _%klass133521%_)
                           (_%klass133553%_ _%klass133548%_))
                      (__class-type-metaclass? _%klass133553%_))
                    (let ()
                      (let* ((_%obj133564%_ _%klass133521%_)
                             (_%id133567%_ 'seal-class!)
                             (_%args133570%_ '())
                             (_%id133575%_ _%id133567%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj133564%_
                                 _%id133575%_
                                 _%args133570%_))
                      (let* ((_%klass133588%_ _%klass133521%_)
                             (_%klass133593%_ _%klass133588%_))
                        (__specialize-class _%klass133593%_)))
                    (if (let* ((_%pred133603%_ class-type-metaclass?)
                               (_%lst133606%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass133521%_
                                   '6
                                   '#f
                                   '#f)))
                               (_%pred133611%_ _%pred133603%_))
                          (declare (not safe))
                          (__find _%pred133611%_ _%lst133606%_))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass133521%_)
                        (let* ((_%klass133624%_ _%klass133521%_)
                               (_%klass133629%_ _%klass133624%_))
                          (__specialize-class _%klass133629%_))))
                (let* ((_%klass133640%_ _%klass133521%_)
                       (_%klass133645%_ _%klass133640%_))
                  (__class-type-seal! _%klass133645%_)))))))
    (define seal-class!
      (lambda (_%klass133504%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass133504%_ 'class))
            (let ((_%klass133508%_ _%klass133504%_))
              (__seal-class! _%klass133508%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1198.20-1198.25"
               'contract:
               'class-type?
               'value:
               _%klass133504%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass133392%_ _%obj133393%_ _%id133394%_)
        (let* ((_%subklass133397%_ _%subklass133392%_)
               (_%id133405%_ _%id133394%_))
          (letrec ((_%find-next-method133414%_
                    (lambda (_%klass133416%_)
                      (let _%lp133418%_ ((_%rest133420%_
                                          (let ((_%klass133489%_
                                                 _%klass133416%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%klass133489%_
                                                   'class))
                                                (let ((_%klass133494%_
                                                       _%klass133489%_))
                                                  (__class-precedence-list
                                                   _%klass133494%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/mop
                                                   'contract:
                                                   'class-type?
                                                   'value:
                                                   _%klass133489%_)
                                                  '#!void)))))
                        (let* ((_%$%rest133421133429%_ _%rest133420%_)
                               (_%$%else133423133437%_ (lambda () '#f))
                               (_%$%K133425133477%_
                                (lambda (_%rest133440%_ _%klass133441%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass133397%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass133441%_)))
                                      (let* ((_%mixins133443%_ _%rest133440%_)
                                             (_%obj133446%_ _%obj133393%_)
                                             (_%id133449%_ _%id133405%_)
                                             (_%id133454%_ _%id133449%_))
                                        (__mixin-find-method
                                         _%mixins133443%_
                                         _%obj133446%_
                                         _%id133454%_))
                                      (_%lp133418%_ _%rest133440%_)))))
                          (if (pair? _%$%rest133421133429%_)
                              (let ((_%$%hd133426133480%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest133421133429%_)))
                                    (_%$%tl133427133482%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest133421133429%_))))
                                (let* ((_%klass133485%_ _%$%hd133426133480%_)
                                       (_%rest133487%_ _%$%tl133427133482%_))
                                  (_%$%K133425133477%_
                                   _%rest133487%_
                                   _%klass133485%_)))
                              (_%$%else133423133437%_)))))))
            (_%find-next-method133414%_ (class-of _%obj133393%_))))))
    (define next-method
      (lambda (_%subklass133366%_ _%obj133367%_ _%id133368%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass133366%_ 'class))
            (let ((_%subklass133372%_ _%subklass133366%_))
              (if (symbol? _%id133368%_)
                  (let ((_%id133382%_ _%id133368%_))
                    (__next-method
                     _%subklass133372%_
                     _%obj133367%_
                     _%id133382%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1220.44-1220.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id133368%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1220.20-1220.28"
               'contract:
               'class-type?
               'value:
               _%subklass133366%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass133301%_ _%obj133302%_ _%id133303%_ . _%args133304%_)
        (let* ((_%subklass133307%_ _%subklass133301%_)
               (_%id133315%_ _%id133303%_)
               (_%$e133360%_
                (let* ((_%subklass133324%_ _%subklass133307%_)
                       (_%obj133327%_ _%obj133302%_)
                       (_%id133330%_ _%id133315%_)
                       (_%subklass133335%_ _%subklass133324%_)
                       (_%id133350%_ _%id133330%_))
                  (__next-method
                   _%subklass133335%_
                   _%obj133327%_
                   _%id133350%_))))
          (if _%$e133360%_
              (apply _%$e133360%_ _%obj133302%_ _%args133304%_)
              (error '"cannot find next method"
                     'object:
                     _%obj133302%_
                     'method:
                     _%id133315%_)))))
    (define call-next-method
      (lambda (_%subklass133274%_ _%obj133275%_ _%id133276%_ . _%args133277%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass133274%_ 'class))
            (let ((_%subklass133281%_ _%subklass133274%_))
              (if (symbol? _%id133276%_)
                  (let ((_%id133291%_ _%id133276%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass133281%_
                             _%obj133275%_
                             _%id133291%_
                             _%args133277%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1231.49-1231.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id133276%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1231.25-1231.33"
               'contract:
               'class-type?
               'value:
               _%subklass133274%_)
              '#!void))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type133053%_ _%properties133054%_)
        (letrec ((_%shadow-type-id133056%_
                  (lambda (_%type133262%_)
                    (let ((__tmp142271
                           (let ()
                             (declare (not safe))
                             (##type-name _%type133262%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp142271 '"::t"))))
                 (_%shadow-type-name133057%_
                  (lambda (_%type133260%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type133260%_))))
                 (_%make-shadow-class133058%_
                  (lambda (_%type133142%_ _%precedence-list133143%_)
                    (let* ((_%super133145%_
                            (if (pair? _%precedence-list133143%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list133143%_))
                                      '())
                                '()))
                           (_%klass133257%_
                            (let* ((_%id133147%_
                                    (_%shadow-type-id133056%_ _%type133142%_))
                                   (_%name133150%_
                                    (let ()
                                      (declare (not safe))
                                      (##type-name _%type133142%_)))
                                   (_%direct-supers133153%_ _%super133145%_)
                                   (_%direct-slots133156%_ '())
                                   (_%properties133182%_
                                    (cons (cons 'struct: '#t)
                                          (cons (cons 'system: '#t)
                                                (cons (cons 'system-type:
                                                            _%type133142%_)
                                                      (let ((__tmp142272
                                                             (if (let ((_%type133159%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%type133142%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##type? _%type133159%_))
                               (let ((_%type133164%_ _%type133159%_))
                                 (__type-extensible? _%type133164%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  '##type?
                                  'value:
                                  _%type133159%_)
                                 '#!void)))
                         '()
                         (cons (cons 'final: '#t) '()))))
                (declare (not safe))
                (foldr__0 cons _%properties133054%_ __tmp142272))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%constructor133185%_ '#f)
                                   (_%id133190%_ _%id133147%_))
                              (if (symbol? _%name133150%_)
                                  (let* ((_%name133201%_ _%name133150%_)
                                         (_%direct-supers133211%_
                                          _%direct-supers133153%_)
                                         (_%direct-slots133221%_
                                          _%direct-slots133156%_)
                                         (_%properties133231%_
                                          _%properties133182%_))
                                    (if (let ((_%$e133243%_ '#t))
                                          (and _%$e133243%_ _%$e133243%_))
                                        (let ((_%constructor133247%_
                                               _%constructor133185%_))
                                          (__make-class-type
                                           _%id133190%_
                                           _%name133201%_
                                           _%direct-supers133211%_
                                           _%direct-slots133221%_
                                           _%properties133231%_
                                           _%constructor133247%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '(? (or not symbol?))
                                           'value:
                                           _%constructor133185%_)
                                          '#!void)))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     'symbol?
                                     'value:
                                     _%name133150%_)
                                    '#!void)))))
                      (let ((__tmp142273
                             (let ()
                               (declare (not safe))
                               (##type-id _%type133142%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp142273
                         _%klass133257%_))
                      _%klass133257%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again133062%_ ((_%spin133065%_ '0))
              (if (let ((__tmp142274
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp142274 '0))
                  (let ((__tmp142275 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp142275))
                  (if (let () (declare (not safe)) (##fx< _%spin133065%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again133062%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin133065%_ '1))))
                      (let ((_%owner133071%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner133071%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner133071%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again133062%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e133077%_
                 (let ((__tmp142276
                        (let ()
                          (declare (not safe))
                          (##type-id _%type133053%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp142276 '#f))))
            (if _%$e133077%_
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
                  _%$e133077%_)
                (let _%loop133085%_ ((_%super133087%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type133053%_)))
                                     (_%hierarchy133088%_ '()))
                  (if (not _%super133087%_)
                      (let _%loop133091%_ ((_%rest133093%_ _%hierarchy133088%_)
                                           (_%precedence-list133094%_ '()))
                        (let* ((_%$%rest133095133103%_ _%rest133093%_)
                               (_%$%else133097133115%_
                                (lambda ()
                                  (let ((_%klass133111%_
                                         (_%make-shadow-class133058%_
                                          _%type133053%_
                                          _%precedence-list133094%_)))
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
                                    _%klass133111%_)))
                               (_%$%K133099133129%_
                                (lambda (_%rest133118%_ _%type133119%_)
                                  (let ((_%$e133121%_
                                         (let ((__tmp142277
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type133119%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp142277
                                            '#f))))
                                    (if _%$e133121%_
                                        (_%loop133091%_
                                         _%rest133118%_
                                         (cons _%$e133121%_
                                               _%precedence-list133094%_))
                                        (let ((_%klass133127%_
                                               (_%make-shadow-class133058%_
                                                _%type133119%_
                                                _%precedence-list133094%_)))
                                          (_%loop133091%_
                                           _%rest133118%_
                                           (cons _%klass133127%_
                                                 _%precedence-list133094%_))))))))
                          (if (pair? _%$%rest133095133103%_)
                              (let ((_%$%hd133100133132%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest133095133103%_)))
                                    (_%$%tl133101133134%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest133095133103%_))))
                                (let* ((_%type133137%_ _%$%hd133100133132%_)
                                       (_%rest133139%_ _%$%tl133101133134%_))
                                  (_%$%K133099133129%_
                                   _%rest133139%_
                                   _%type133137%_)))
                              (_%$%else133097133115%_))))
                      (_%loop133085%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super133087%_))
                       (cons _%super133087%_ _%hierarchy133088%_)))))))))
    (define __shadow-class__0
      (lambda (_%type133267%_)
        (let ((_%properties133269%_ '()))
          (__shadow-class__% _%type133267%_ _%properties133269%_))))
    (define __shadow-class
      (lambda _g142278_
        (let ((_g142279_ (let () (declare (not safe)) (##length _g142278_))))
          (cond ((let () (declare (not safe)) (##fx= _g142279_ 1))
                 (apply __shadow-class__0 _g142278_))
                ((let () (declare (not safe)) (##fx= _g142279_ 2))
                 (apply __shadow-class__% _g142278_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g142278_))))))
    (define __type
      (let* ((_%tb133041%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e133043%_ _%tb133041%_))
        (if (eq? '2 _%$e133043%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e133043%_)
                (let ((_%flonum-self-tagging-tags133046%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits133047%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e133049%_ _%flonum-self-tagging-tags133046%_))
                    (if (eq? '0 _%$e133049%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits133047%_ '2))
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
                        (if (eq? '1 _%$e133049%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits133047%_ '2))
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
                            (if (eq? '2 _%$e133049%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e133049%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e133049%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags133046%_))))))))
                (error '"unexpected tag width" _%tb133041%_)))))
    (define __primitive-class
      (let ((__tmp142280 (vector-length __type)))
        (declare (not safe))
        (##make-vector __tmp142280 '#f)))
    (define __boxvalues-class
      (let () (declare (not safe)) (##make-vector '2 '#f)))
    (define __subtype-class
      (let () (declare (not safe)) (##make-vector '32 '#f)))
    (define __char-class '#f)
    (define __special-class
      (let () (declare (not safe)) (##make-vector '16 '#f)))
    (define __class-of
      (let* ((_%len132931%_ (vector-length __type))
             (_%cv132933%_
              (let () (declare (not safe)) (##make-vector _%len132931%_ '#f))))
        (let _%loop132936%_ ((_%i132938%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i132938%_ _%len132931%_))
              (let* ((_%t132940%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i132938%_)))
                     (_%f133038%_
                      (if (eq? _%t132940%_ 'undefined)
                          (lambda (_%obj132943%_)
                            (error '"object type is undefined" _%obj132943%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t132940%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj132946%_)
                                (declare (not interrupts-enabled) (not safe))
                                (let ((_%$e132949%_
                                       (##vector-ref
                                        __primitive-class
                                        _%i132938%_)))
                                  (if _%$e132949%_
                                      _%$e132949%_
                                      (let ((_%klass132953%_
                                             (__system-class _%t132940%_)))
                                        (##vector-set!
                                         __primitive-class
                                         _%i132938%_
                                         _%klass132953%_)
                                        _%klass132953%_))))
                              (if (eq? _%t132940%_ 'subtyped)
                                  (lambda (_%obj132957%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st132960%_
                                           (##subtype _%obj132957%_)))
                                      (if (##fx= _%st132960%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass132963%_
                                                 (##structure-type
                                                  _%obj132957%_)))
                                            (if (##structure-instance-of?
                                                 _%klass132963%_
                                                 'class)
                                                _%klass132963%_
                                                (__shadow-class__0
                                                 _%klass132963%_)))
                                          (if (##fx= _%st132960%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj132957%_)
                                                         '1)
                                                  (let ((_%$e132966%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '0)))
                                                    (if _%$e132966%_
                                                        _%$e132966%_
                                                        (let ((_%klass132970%_
                                                               (__system-class
                                                                'box)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '0
                                                           _%klass132970%_)
                                                          _%klass132970%_)))
                                                  (let ((_%$e132973%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '1)))
                                                    (if _%$e132973%_
                                                        _%$e132973%_
                                                        (let ((_%klass132977%_
                                                               (__system-class
                                                                'values)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '1
                                                           _%klass132977%_)
                                                          _%klass132977%_))))
                                              (let ((_%$e132980%_
                                                     (##vector-ref
                                                      __subtype-class
                                                      _%st132960%_)))
                                                (if _%$e132980%_
                                                    _%$e132980%_
                                                    (let ((_%klass132997%_
                                                           (let ((_%$e132984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##vector-ref __subtype-id _%st132960%_)))
                     (if _%$e132984%_
                         (let ((_%$e132989%_
                                (##vector-ref __subtype-class _%st132960%_)))
                           (if _%$e132989%_
                               _%$e132989%_
                               (let ((_%klass132993%_
                                      (__system-class _%$e132984%_)))
                                 (##vector-set!
                                  __subtype-class
                                  _%st132960%_
                                  _%klass132993%_)
                                 _%klass132993%_)))
                         (error '"unknown class"
                                'object:
                                _%obj132957%_
                                'subtype:
                                _%st132960%_)))))
              (##vector-set! __subtype-class _%st132960%_ _%klass132997%_)
              _%klass132997%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (eq? _%t132940%_ 'special)
                                      (lambda (_%obj133001%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (let ((_%x133004%_
                                               (##type-cast _%obj133001%_ '0)))
                                          (if (##fx> _%x133004%_ '0)
                                              (let ((_%$e133007%_
                                                     __char-class))
                                                (if _%$e133007%_
                                                    _%$e133007%_
                                                    (let ((_%klass133011%_
                                                           (__system-class
                                                            'char)))
                                                      (set! __char-class
                                                            _%klass133011%_)
                                                      _%klass133011%_)))
                                              (let* ((_%t133014%_
                                                      (##fx- _%x133004%_))
                                                     (_%$e133017%_
                                                      (##vector-ref
                                                       __special-class
                                                       _%t133014%_)))
                                                (if _%$e133017%_
                                                    _%$e133017%_
                                                    (let ((_%klass133035%_
                                                           (if (eq? _%obj133001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                       (__system-class 'null)
                       (if (eq? _%obj133001%_ '#f)
                           (__system-class 'false)
                           (if (eq? _%obj133001%_ '#t)
                               (__system-class 'true)
                               (if (eq? _%obj133001%_ '#!void)
                                   (__system-class 'void)
                                   (if (eq? _%obj133001%_ '#!eof)
                                       (__system-class 'eof)
                                       (if (eq? _%obj133001%_ '#!unbound)
                                           (__system-class 'unbound)
                                           (if (eq? _%obj133001%_ '#!unbound2)
                                               (__system-class 'unbound2)
                                               (if (eq? _%obj133001%_
                                                        '#!optional)
                                                   (__system-class 'optional)
                                                   (if (eq? _%obj133001%_
                                                            '#!rest)
                                                       (__system-class 'rest)
                                                       (if (eq? _%obj133001%_
                                                                '#!key)
                                                           (__system-class
                                                            'key)
                                                           (if (eq? _%obj133001%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (macro-unused-obj))
                       (__system-class 'unused)
                       (if (eq? _%obj133001%_ (macro-deleted-obj))
                           (__system-class 'deleted)
                           (if (eq? _%obj133001%_ (macro-absent-obj))
                               (__system-class 'absent)
                               (__system-class 'unknown))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (##vector-set! __special-class _%t133014%_ _%klass133035%_)
              _%klass133035%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t132940%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv132933%_ _%i132938%_ _%f133038%_))
                (_%loop132936%_
                 (let () (declare (not safe)) (##fx+ _%i132938%_ '1))))
              _%cv132933%_))))
    (define type-of
      (lambda (_%obj132927%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj132927%_)))))
    (define class-of
      (lambda (_%obj132918%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t132922%_ (##type _%obj132918%_))
                 (_%f132924%_ (##vector-ref __class-of _%t132922%_)))
            (_%f132924%_ _%obj132918%_)))))
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
      (lambda (_%id132912%_)
        (let ((_%$e132914%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id132912%_ '#f))))
          (if _%$e132914%_
              _%$e132914%_
              (error '"unknown system class" _%id132912%_)))))
    (define __make-system-class
      (lambda (_%id132814%_ _%super132815%_ _%properties132816%_)
        (let ((_%klass132910%_
               (let* ((_%id132818%_ _%id132814%_)
                      (_%name132821%_ _%id132814%_)
                      (_%direct-supers132824%_ _%super132815%_)
                      (_%direct-slots132827%_ '())
                      (_%properties132830%_
                       (cons (cons 'system: '#t)
                             (let ()
                               (declare (not safe))
                               (foldr__0 cons '() _%properties132816%_))))
                      (_%constructor132833%_ '#f))
                 (if (symbol? _%id132818%_)
                     (let ((_%id132838%_ _%id132818%_))
                       (if (symbol? _%name132821%_)
                           (let ((_%name132854%_ _%name132821%_))
                             (if (list? _%direct-supers132824%_)
                                 (let* ((_%direct-supers132864%_
                                         _%direct-supers132824%_)
                                        (_%direct-slots132874%_
                                         _%direct-slots132827%_)
                                        (_%properties132884%_
                                         _%properties132830%_))
                                   (if (let ((_%$e132896%_ '#t))
                                         (and _%$e132896%_ _%$e132896%_))
                                       (let ((_%constructor132900%_
                                              _%constructor132833%_))
                                         (__make-class-type
                                          _%id132838%_
                                          _%name132854%_
                                          _%direct-supers132864%_
                                          _%direct-slots132874%_
                                          _%properties132884%_
                                          _%constructor132900%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          '(? (or not symbol?))
                                          'value:
                                          _%constructor132833%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'list?
                                    'value:
                                    _%direct-supers132824%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'symbol?
                              'value:
                              _%name132821%_)
                             '#!void)))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id132818%_)
                       '#!void)))))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id132814%_
             _%klass132910%_))
          _%klass132910%_)))))
