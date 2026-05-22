(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1779435577)
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
      (let ((_%flags137204%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties137205%_ '((direct-slots:) (system: . #t)))
            (_%slot-table137206%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags137204%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table137206%_
           _%properties137205%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots137161%_
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
             (_%slot-vector137163%_ (list->vector (cons '#f _%slots137161%_)))
             (_%slot-table137189%_
              (let ((_%slot-table137165%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp140257
                       (lambda (_%slot137167%_ _%field137168%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table137165%_
                            _%slot137167%_
                            _%field137168%_))
                         (let ((__tmp140258
                                (let ((_%sym137170%_ _%slot137167%_))
                                  (if (symbol? _%sym137170%_)
                                      (let ((_%sym137175%_ _%sym137170%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym137175%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym137170%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table137165%_
                            __tmp140258
                            _%field137168%_))))
                      (__tmp140255
                       (let ((__tmp140256
                              (let ()
                                (declare (not safe))
                                (##length _%slots137161%_))))
                         (declare (not safe))
                         (##iota __tmp140256 '1))))
                  (declare (not safe))
                  (##for-each __tmp140257 _%slots137161%_ __tmp140255))
                _%slot-table137165%_))
             (_%flags137191%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields137197%_
              (list->vector
               (let ((__tmp140259
                      (map (lambda (_%g137192137194%_)
                             (list _%g137192137194%_ '5 '#f))
                           (drop _%slots137161%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp140259))))
             (_%properties137199%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots137161%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t137201%_
              (let ((__tmp140260 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags137191%_
                 ##type-type
                 _%fields137197%_
                 __tmp140260
                 _%slot-vector137163%_
                 _%slot-table137189%_
                 _%properties137199%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t137201%_ _%t137201%_))
        _%t137201%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags137157%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties137158%_ '((direct-slots:) (system: . #t)))
            (_%slot-table137159%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp140261 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags137157%_
           '#f
           '#()
           __tmp140261
           '#(#f)
           _%slot-table137159%_
           _%properties137158%_
           '#f
           '#f
           '#f
           '#f))))
    (define __class-type
      (lambda (_%klass137145%_)
        (let ((_%klass137148%_ _%klass137145%_))
          (declare (not safe))
          (##structure-type _%klass137148%_))))
    (define class-type
      (lambda (_%klass122308%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass122308%_ 'class))
            (let ((_%klass122312%_ _%klass122308%_))
              (__class-type _%klass122312%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass122308%_)
              '#!void))))
    (define class-type?
      (lambda (_%obj137143%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj137143%_ 'class))))
    (define __class-type=?
      (lambda (_%x137122%_ _%y137123%_)
        (let* ((_%x137126%_ _%x137122%_) (_%y137134%_ _%y137123%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x137126%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y137134%_ '1 '#f '#f))))))
    (define class-type=?
      (lambda (_%x122442%_ _%y122443%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x122442%_ 'class))
            (let ((_%x122447%_ _%x122442%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y122443%_ 'class))
                  (let ((_%y122457%_ _%y122443%_))
                    (__class-type=? _%x122447%_ _%y122457%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y122443%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x122442%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type137110%_)
        (let* ((_%type137113%_ _%type137110%_)
               (__tmp140262
                (let ((__tmp140263
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type137113%_))))
                  (declare (not safe))
                  (##fxand __tmp140263 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp140262 type-flag-opaque))))
    (define type-opaque?
      (lambda (_%type122889%_)
        (if (let () (declare (not safe)) (##type? _%type122889%_))
            (let ((_%type122893%_ _%type122889%_))
              (__type-opaque? _%type122893%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type122889%_)
              '#!void))))
    (define __class-type-opaque?
      (lambda (_%klass137098%_)
        (let* ((_%klass137101%_ _%klass137098%_)
               (__tmp140264
                (let ((__tmp140265
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass137101%_))))
                  (declare (not safe))
                  (##fxand __tmp140265 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp140264 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass123023%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123023%_ 'class))
            (let ((_%klass123027%_ _%klass123023%_))
              (__class-type-opaque? _%klass123027%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass123023%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type137086%_)
        (let* ((_%type137089%_ _%type137086%_)
               (__tmp140266
                (let ((__tmp140267
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type137089%_))))
                  (declare (not safe))
                  (##fxand __tmp140267 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp140266 type-flag-extensible))))
    (define type-extensible?
      (lambda (_%type123157%_)
        (if (let () (declare (not safe)) (##type? _%type123157%_))
            (let ((_%type123161%_ _%type123157%_))
              (__type-extensible? _%type123161%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type123157%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type137074%_)
        (let* ((_%type137077%_ _%type137074%_)
               (__tmp140268
                (let ((__tmp140269
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type137077%_))))
                  (declare (not safe))
                  (##fxand __tmp140269 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp140268 '0))))
    (define class-type-final?
      (lambda (_%type123291%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type123291%_ 'class))
            (let ((_%type123295%_ _%type123291%_))
              (__class-type-final? _%type123295%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type123291%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass137062%_)
        (let* ((_%klass137065%_ _%klass137062%_)
               (__tmp140270
                (let ((__tmp140271
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass137065%_))))
                  (declare (not safe))
                  (##fxand __tmp140271 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp140270 class-type-flag-struct))))
    (define class-type-struct?
      (lambda (_%klass123425%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123425%_ 'class))
            (let ((_%klass123429%_ _%klass123425%_))
              (__class-type-struct? _%klass123429%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass123425%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass137050%_)
        (let* ((_%klass137053%_ _%klass137050%_)
               (__tmp140272
                (let ((__tmp140273
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass137053%_))))
                  (declare (not safe))
                  (##fxand __tmp140273 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp140272 class-type-flag-sealed))))
    (define class-type-sealed?
      (lambda (_%klass123559%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123559%_ 'class))
            (let ((_%klass123563%_ _%klass123559%_))
              (__class-type-sealed? _%klass123563%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass123559%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass137038%_)
        (let* ((_%klass137041%_ _%klass137038%_)
               (__tmp140274
                (let ((__tmp140275
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass137041%_))))
                  (declare (not safe))
                  (##fxand __tmp140275 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp140274 class-type-flag-metaclass))))
    (define class-type-metaclass?
      (lambda (_%klass123693%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123693%_ 'class))
            (let ((_%klass123697%_ _%klass123693%_))
              (__class-type-metaclass? _%klass123697%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass123693%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass137026%_)
        (let* ((_%klass137029%_ _%klass137026%_)
               (__tmp140276
                (let ((__tmp140277
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass137029%_))))
                  (declare (not safe))
                  (##fxand __tmp140277 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp140276 class-type-flag-system))))
    (define class-type-system?
      (lambda (_%klass123827%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123827%_ 'class))
            (let ((_%klass123831%_ _%klass123827%_))
              (__class-type-system? _%klass123831%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass123827%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass137014%_)
        (let* ((_%klass137017%_ _%klass137014%_)
               (__tmp140278
                (let ((__tmp140279
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass137017%_))))
                  (declare (not safe))
                  (##fxand __tmp140279 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp140278 class-type-flag-acyclic))))
    (define class-type-acyclic?
      (lambda (_%klass123961%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass123961%_ 'class))
            (let ((_%klass123965%_ _%klass123961%_))
              (__class-type-acyclic? _%klass123965%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass123961%_)
              '#!void))))
    (define make-class-type-descriptor
      (lambda (_%type-id136805%_
               _%type-name136806%_
               _%type-super136807%_
               _%precedence-list136808%_
               _%slot-vector136809%_
               _%properties136810%_
               _%constructor136811%_
               _%slot-table136812%_
               _%methods136813%_)
        (letrec ((_%make-props!136816%_
                  (lambda (_%key136964%_)
                    (letrec* ((_%ht136966%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!136967%_
                               (lambda (_%ht137007%_ _%slots137008%_)
                                 (for-each
                                  (lambda (_%g137009137011%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht137007%_
                                       _%g137009137011%_
                                       '#t)))
                                  _%slots137008%_)))
                              (_%put-alist!136968%_
                               (lambda (_%ht136996%_
                                        _%key136997%_
                                        _%alist136998%_)
                                 (let ((_%$e137000%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key136997%_
                                           _%alist136998%_))))
                                   (if _%$e137000%_
                                       (_%put-slots!136967%_
                                        _%ht136996%_
                                        _%$e137000%_)
                                       '#!void)))))
                      (_%put-alist!136968%_
                       _%ht136966%_
                       _%key136964%_
                       _%properties136810%_)
                      (for-each
                       (lambda (_%mixin136970%_)
                         (let ((_%alist136972%_
                                (##structure-ref
                                 _%mixin136970%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist136972%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key136964%_
                                           _%alist136972%_))))
                               (_%put-slots!136967%_
                                _%ht136966%_
                                (let ((_%klass136977%_ _%mixin136970%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass136977%_
                                         'class))
                                      (let ((_%klass136982%_ _%klass136977%_))
                                        (__class-type-slot-list
                                         _%klass136982%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass136977%_)
                                        '#!void))))
                               (_%put-alist!136968%_
                                _%ht136966%_
                                _%key136964%_
                                _%alist136972%_))))
                       _%precedence-list136808%_)
                      _%ht136966%_))))
          (let* ((_%transparent?136818%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties136810%_)))
                 (_%all-slots-printable?136823%_
                  (let ((_%$e136820%_ _%transparent?136818%_))
                    (if _%$e136820%_
                        _%$e136820%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties136810%_))))))
                 (_%printable136825%_
                  (if (not _%all-slots-printable?136823%_)
                      (_%make-props!136816%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?136830%_
                  (let ((_%$e136827%_ _%transparent?136818%_))
                    (if _%$e136827%_
                        _%$e136827%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties136810%_))))))
                 (_%equalable136832%_
                  (if (not _%all-slots-equalable?136830%_)
                      (_%make-props!136816%_ 'equal:)
                      '#f))
                 (_%first-new-field136834%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super136807%_ 'class))
                      (let ((__tmp140280
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super136807%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp140280))
                      '1))
                 (_%field-info-length136836%_
                  (let ((__tmp140281
                         (let ((__tmp140282
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector136809%_))))
                           (declare (not safe))
                           (##fx- __tmp140282 _%first-new-field136834%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp140281)))
                 (_%field-info136838%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length136836%_ '#f)))
                 (_%struct?136840%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties136810%_)))
                 (_%final?136842%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties136810%_)))
                 (_%metaclass136849%_
                  (let ((_%metaclass136843136845%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties136810%_))))
                    (if _%metaclass136843136845%_
                        (let ((_%metaclass136847%_ _%metaclass136843136845%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass136847%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id136805%_
                                     'metaclass:
                                     _%metaclass136847%_))
                          _%metaclass136847%_)
                        '#f)))
                 (_%system?136851%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties136810%_)))
                 (_%opaque?136890%_
                  (if (or _%transparent?136818%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties136810%_)))
                      '#f
                      (let ((_%$e136856%_ (not _%type-super136807%_)))
                        (if _%$e136856%_
                            _%$e136856%_
                            (let ((_%type136859%_ _%type-super136807%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##type? _%type136859%_))
                                  (let ((_%type136864%_ _%type136859%_))
                                    (__type-opaque? _%type136864%_))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     '##type?
                                     'value:
                                     _%type136859%_)
                                    '#!void)))))))
                 (_%acyclic?136892%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties136810%_)))
                 (_%type-flags136894%_
                  (let ((__tmp140288
                         (if _%final?136842%_ '0 type-flag-extensible))
                        (__tmp140287
                         (if _%opaque?136890%_ type-flag-opaque '0))
                        (__tmp140286
                         (if _%struct?136840%_ class-type-flag-struct '0))
                        (__tmp140285
                         (if _%metaclass136849%_ class-type-flag-metaclass '0))
                        (__tmp140284
                         (if _%system?136851%_ class-type-flag-system '0))
                        (__tmp140283
                         (if _%acyclic?136892%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp140288
                             __tmp140287
                             __tmp140286
                             __tmp140285
                             __tmp140284
                             __tmp140283)))
                 (_%precedence-list136902%_
                  (let ((_%$e136896%_ (memq t::t _%precedence-list136808%_)))
                    (if _%$e136896%_
                        (if (null? (cdr _%$e136896%_))
                            _%precedence-list136808%_
                            (error '"BUG: t::t is not last in the precedence list"
                                   'precedence-list:
                                   _%precedence-list136808%_))
                        (let ((__tmp140289 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list136808%_ __tmp140289))))))
            (let _%loop136905%_ ((_%i136907%_ _%first-new-field136834%_)
                                 (_%j136908%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j136908%_ _%field-info-length136836%_))
                  (let* ((_%slot136910%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector136809%_ _%i136907%_)))
                         (_%flags136918%_
                          (if _%transparent?136818%_
                              '5
                              (let ((__tmp140291
                                     (if (or _%all-slots-printable?136823%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable136825%_
                                                _%slot136910%_
                                                '#f)))
                                         '1
                                         '0))
                                    (__tmp140290
                                     (if (or _%all-slots-equalable?136830%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable136832%_
                                                _%slot136910%_
                                                '#f)))
                                         '4
                                         '0)))
                                (declare (not safe))
                                (##fxior __tmp140291 __tmp140290)))))
                    (vector-set!
                     _%field-info136838%_
                     _%j136908%_
                     _%slot136910%_)
                    (vector-set!
                     _%field-info136838%_
                     (let () (declare (not safe)) (##fx+ _%j136908%_ '1))
                     _%flags136918%_)
                    (_%loop136905%_
                     (let () (declare (not safe)) (##fx+ _%i136907%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j136908%_ '3))))
                  '#!void))
            (if _%metaclass136849%_
                (let ((_%val136945%_
                       (let* ((_%klass136921%_ _%metaclass136849%_)
                              (_%args136924%_
                               (list _%type-id136805%_
                                     _%type-name136806%_
                                     _%type-flags136894%_
                                     _%type-super136807%_
                                     _%field-info136838%_
                                     _%precedence-list136902%_
                                     _%slot-vector136809%_
                                     _%slot-table136812%_
                                     _%properties136810%_
                                     _%constructor136811%_
                                     _%methods136813%_)))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%klass136921%_
                                'class))
                             (let ((_%klass136929%_ _%klass136921%_))
                               (declare (not safe))
                               (##apply __make-instance
                                        _%klass136929%_
                                        _%args136924%_))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%klass136921%_)
                               '#!void)))))
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   '"\"gerbil/runtime/mop.ss\"@283.10-287.95"
                   'contract:
                   '(class-type? val)
                   'value:
                   _%val136945%_)
                  '#!void)
                (let ((_%klass136948%_
                       (let ()
                         (declare (not safe))
                         (##structure
                          class::t
                          _%type-id136805%_
                          _%type-name136806%_
                          _%type-flags136894%_
                          _%type-super136807%_
                          _%field-info136838%_
                          _%precedence-list136902%_
                          _%slot-vector136809%_
                          _%slot-table136812%_
                          _%properties136810%_
                          _%constructor136811%_
                          _%methods136813%_
                          '#f
                          '#f))))
                  (for-each
                   (lambda (_%super136950%_)
                     (let ((_%$e136952%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%super136950%_
                               '9
                               '#f
                               '#f))))
                       (if _%$e136952%_
                           (let ((_%$e136957%_
                                  (assq 'subclasses: _%$e136952%_)))
                             (if _%$e136957%_
                                 (set-cdr!
                                  _%$e136957%_
                                  (cons _%klass136948%_ (cdr _%$e136957%_)))
                                 (let ((__tmp140292
                                        (cons (cons 'subclasses:
                                                    (cons _%klass136948%_ '()))
                                              _%$e136952%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-set!
                                    _%super136950%_
                                    __tmp140292
                                    '9
                                    '#f
                                    '#f))))
                           (let ((__tmp140293
                                  (cons (cons 'subclasses:
                                              (cons _%klass136948%_ '()))
                                        '())))
                             (declare (not safe))
                             (##unchecked-structure-set!
                              _%super136950%_
                              __tmp140293
                              '9
                              '#f
                              '#f)))))
                   (let ()
                     (declare (not safe))
                     (agetq__% 'direct-supers: _%properties136810%_ '())))
                  _%klass136948%_))))))
    (define class-type-id
      (lambda (_%klass136803%_)
        (##structure-ref _%klass136803%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass136801%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136801%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass136798%_ _%val136799%_)
        (##structure-set! _%klass136798%_ _%val136799%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass136793%_ _%val136795%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136793%_
           _%val136795%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass136791%_)
        (##structure-ref _%klass136791%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass136789%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136789%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass136786%_ _%val136787%_)
        (##structure-set! _%klass136786%_ _%val136787%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass136781%_ _%val136783%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136781%_
           _%val136783%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass136779%_)
        (##structure-ref _%klass136779%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass136777%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136777%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass136774%_ _%val136775%_)
        (##structure-set! _%klass136774%_ _%val136775%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass136769%_ _%val136771%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136769%_
           _%val136771%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass136767%_)
        (##structure-ref _%klass136767%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass136765%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136765%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass136762%_ _%val136763%_)
        (##structure-set! _%klass136762%_ _%val136763%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass136757%_ _%val136759%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136757%_
           _%val136759%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass136755%_)
        (##structure-ref _%klass136755%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass136753%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136753%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass136750%_ _%val136751%_)
        (##structure-set! _%klass136750%_ _%val136751%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass136745%_ _%val136747%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136745%_
           _%val136747%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass136743%_)
        (##structure-ref _%klass136743%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass136741%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136741%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass136738%_ _%val136739%_)
        (##structure-set!
         _%klass136738%_
         _%val136739%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass136733%_ _%val136735%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136733%_
           _%val136735%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass136731%_)
        (##structure-ref _%klass136731%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass136729%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136729%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass136726%_ _%val136727%_)
        (##structure-set!
         _%klass136726%_
         _%val136727%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass136721%_ _%val136723%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136721%_
           _%val136723%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass136719%_)
        (##structure-ref _%klass136719%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass136717%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136717%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass136714%_ _%val136715%_)
        (##structure-set!
         _%klass136714%_
         _%val136715%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass136709%_ _%val136711%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136709%_
           _%val136711%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass136707%_)
        (##structure-ref _%klass136707%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass136705%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136705%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass136702%_ _%val136703%_)
        (##structure-set!
         _%klass136702%_
         _%val136703%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass136697%_ _%val136699%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136697%_
           _%val136699%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass136695%_)
        (##structure-ref _%klass136695%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass136693%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136693%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass136690%_ _%val136691%_)
        (##structure-set!
         _%klass136690%_
         _%val136691%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass136685%_ _%val136687%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136685%_
           _%val136687%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass136683%_)
        (##structure-ref _%klass136683%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass136681%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136681%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass136678%_ _%val136679%_)
        (##structure-set!
         _%klass136678%_
         _%val136679%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass136673%_ _%val136675%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136673%_
           _%val136675%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass136671%_)
        (##structure-ref _%klass136671%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass136669%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136669%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass136666%_ _%val136667%_)
        (##structure-set!
         _%klass136666%_
         _%val136667%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass136661%_ _%val136663%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136661%_
           _%val136663%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass136659%_)
        (##structure-ref _%klass136659%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass136657%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136657%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass136654%_ _%val136655%_)
        (##structure-set!
         _%klass136654%_
         _%val136655%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass136649%_ _%val136651%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136649%_
           _%val136651%_
           '13
           class::t
           'interface))))
    (define type-field-list
      (lambda (_%type136413%_)
        (letrec ((_%__fields->list136543%_
                  (lambda (_%fields136607%_)
                    (let* ((_%fields136610%_ _%fields136607%_)
                           (_%fields-len136619%_
                            (let ()
                              (declare (not safe))
                              (##vector-length _%fields136610%_))))
                      (let _%loop136621%_ ((_%i136623%_ '0) (_%r136624%_ '()))
                        (let* ((_%i136627%_ _%i136623%_)
                               (_%r136640%_ _%r136624%_))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i136627%_ _%fields-len136619%_))
                              (_%loop136621%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i136627%_ '3))
                               (cons (vector-ref _%fields136610%_ _%i136627%_)
                                     _%r136640%_))
                              (reverse! _%r136640%_)))))))
                 (_%fields->list136544%_
                  (lambda (_%fields136595%_)
                    (let ((_%fields136598%_ _%fields136595%_))
                      (_%__fields->list136543%_ _%fields136598%_)))))
          (let _%loop136546%_ ((_%type136548%_ _%type136413%_))
            (if (let () (declare (not safe)) (##type? _%type136548%_))
                (if (eq? _%type136548%_ ##type-type)
                    '()
                    (let ((_%$e136553%_
                           (let ()
                             (declare (not safe))
                             (##type-super _%type136548%_))))
                      (if _%$e136553%_
                          (let ((__tmp140295 (_%loop136546%_ _%$e136553%_))
                                (__tmp140294
                                 (let* ((_%fields136559%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-fields _%type136548%_)))
                                        (_%fields136563%_ _%fields136559%_))
                                   (_%__fields->list136543%_
                                    _%fields136563%_))))
                            (declare (not safe))
                            (##append __tmp140295 __tmp140294))
                          (let* ((_%fields136580%_
                                  (let ()
                                    (declare (not safe))
                                    (##type-fields _%type136548%_)))
                                 (_%fields136584%_ _%fields136580%_))
                            (_%__fields->list136543%_ _%fields136584%_)))))
                '())))))
    (define __class-type-field-list
      (lambda (_%klass136381%_)
        (let ((_%klass136384%_ _%klass136381%_))
          (letrec ((_%get-fields!136393%_
                    (lambda (_%klass136408%_ _%type136409%_)
                      (let ((_%fields136411%_
                             (type-field-list _%type136409%_)))
                        (##structure-set!
                         _%klass136408%_
                         (cons (cons 'fields: _%fields136411%_)
                               (##structure-ref
                                _%klass136408%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%fields136411%_))))
            (let* ((_%props136395%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass136384%_ '9 '#f '#f)))
                   (_%$e136397%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'fields: _%props136395%_))))
              (if _%$e136397%_
                  _%$e136397%_
                  (let ((_%$e136400%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props136395%_))))
                    (if _%$e136400%_
                        (_%get-fields!136393%_ _%klass136384%_ _%$e136400%_)
                        (_%get-fields!136393%_
                         _%klass136384%_
                         _%klass136384%_)))))))))
    (define class-type-field-list
      (lambda (_%klass124485%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124485%_ 'class))
            (let ((_%klass124489%_ _%klass124485%_))
              (__class-type-field-list _%klass124489%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@389.30-389.35"
               'contract:
               'class-type?
               'value:
               _%klass124485%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass136369%_)
        (let ((_%klass136372%_ _%klass136369%_))
          (vector->list
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass136372%_ '7 '#f '#f))
           '1))))
    (define class-type-slot-list
      (lambda (_%klass124619%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124619%_ 'class))
            (let ((_%klass124623%_ _%klass124619%_))
              (__class-type-slot-list _%klass124623%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@405.29-405.34"
               'contract:
               'class-type?
               'value:
               _%klass124619%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass136357%_)
        (let* ((_%klass136360%_ _%klass136357%_)
               (__tmp140296
                (let ((__tmp140297
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass136360%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp140297))))
          (declare (not safe))
          (##fx- __tmp140296 '1))))
    (define class-type-field-count
      (lambda (_%klass124753%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124753%_ 'class))
            (let ((_%klass124757%_ _%klass124753%_))
              (__class-type-field-count _%klass124757%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@407.31-407.36"
               'contract:
               'class-type?
               'value:
               _%klass124753%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass136345%_)
        (let ((_%klass136348%_ _%klass136345%_))
          (let ((__tmp140298
                 (let ((__tmp140299
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass136348%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp140299))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass136348%_
             __tmp140298
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define class-type-seal!
      (lambda (_%klass124887%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass124887%_ 'class))
            (let ((_%klass124891%_ _%klass124887%_))
              (__class-type-seal! _%klass124891%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@410.25-410.30"
               'contract:
               'class-type?
               'value:
               _%klass124887%_)
              '#!void))))
    (define __class-type-printable-slots
      (lambda (_%klass136278%_)
        (let ((_%klass136281%_ _%klass136278%_))
          (letrec ((_%get-field-vector136290%_
                    (lambda (_%type136329%_)
                      (let _%loop136331%_ ((_%type136333%_ _%type136329%_))
                        (let* ((_%fields136335%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type136333%_)))
                               (_%$e136337%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type136333%_))))
                          (if _%$e136337%_
                              (let ((_%super-fields136342%_
                                     (_%loop136331%_ _%$e136337%_)))
                                (vector-append
                                 _%super-fields136342%_
                                 _%fields136335%_))
                              _%fields136335%_)))))
                   (_%get-printable-slot-alist136291%_
                    (lambda (_%type136312%_)
                      (let* ((_%fields136314%_
                              (_%get-field-vector136290%_ _%type136312%_))
                             (_%count136316%_
                              (vector-length _%fields136314%_)))
                        (let _%loop136319%_ ((_%i136321%_ '0)
                                             (_%offset136322%_ '1)
                                             (_%r136323%_ '()))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i136321%_ _%count136316%_))
                              (let ((_%slot-name136325%_
                                     (vector-ref _%fields136314%_ _%i136321%_))
                                    (_%slot-flags136326%_
                                     (vector-ref
                                      _%fields136314%_
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%i136321%_ '1))))
                                    (_%next-i136327%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i136321%_ '3))))
                                (if (let ((__tmp140300
                                           (let ()
                                             (declare (not safe))
                                             (##fxand _%slot-flags136326%_
                                                      '1))))
                                      (declare (not safe))
                                      (##fx= __tmp140300 '0))
                                    (_%loop136319%_
                                     _%next-i136327%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset136322%_ '1))
                                     _%r136323%_)
                                    (_%loop136319%_
                                     _%next-i136327%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset136322%_ '1))
                                     (cons (cons _%slot-name136325%_
                                                 _%offset136322%_)
                                           _%r136323%_))))
                              (reverse! _%r136323%_))))))
                   (_%get-printable-slots!136292%_
                    (lambda (_%klass136307%_ _%type136308%_)
                      (let ((_%printable136310%_
                             (_%get-printable-slot-alist136291%_
                              _%type136308%_)))
                        (##structure-set!
                         _%klass136307%_
                         (cons (cons 'printable-slots: _%printable136310%_)
                               (##structure-ref
                                _%klass136307%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%printable136310%_))))
            (let* ((_%props136294%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass136281%_ '9 '#f '#f)))
                   (_%$e136296%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'printable-slots: _%props136294%_))))
              (if _%$e136296%_
                  _%$e136296%_
                  (let ((_%$e136299%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props136294%_))))
                    (if _%$e136299%_
                        (_%get-printable-slots!136292%_
                         _%klass136281%_
                         _%$e136299%_)
                        (_%get-printable-slots!136292%_
                         _%klass136281%_
                         _%klass136281%_)))))))))
    (define class-type-printable-slots
      (lambda (_%klass125021%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125021%_ 'class))
            (let ((_%klass125025%_ _%klass125021%_))
              (__class-type-printable-slots _%klass125025%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@417.35-417.40"
               'contract:
               'class-type?
               'value:
               _%klass125021%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct136247%_ _%maybe-super-struct136248%_)
        (let* ((_%maybe-sub-struct136251%_ _%maybe-sub-struct136247%_)
               (_%maybe-super-struct136259%_ _%maybe-super-struct136248%_)
               (_%maybe-super-struct-id136268%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct136259%_))))
          (let _%lp136270%_ ((_%super-struct136272%_
                              _%maybe-sub-struct136251%_))
            (if (not _%super-struct136272%_)
                '#f
                (if (eq? _%maybe-super-struct-id136268%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct136272%_)))
                    '#t
                    (_%lp136270%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct136272%_)))))))))
    (define substruct?
      (lambda (_%maybe-sub-struct125155%_ _%maybe-super-struct125156%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct125155%_ 'class))
            (let ((_%maybe-sub-struct125160%_ _%maybe-sub-struct125155%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct125156%_
                     'class))
                  (let ((_%maybe-super-struct125170%_
                         _%maybe-super-struct125156%_))
                    (__substruct?
                     _%maybe-sub-struct125160%_
                     _%maybe-super-struct125170%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@463.47-463.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct125156%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@463.19-463.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct125155%_)
              '#!void))))
    (define base-struct/1
      (lambda (_%klass136225%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136225%_ 'class))
            (if (let* ((_%klass136228%_ _%klass136225%_)
                       (_%klass136233%_ _%klass136228%_))
                  (__class-type-struct? _%klass136233%_))
                _%klass136225%_
                (let () (declare (not safe)) (##type-super _%klass136225%_)))
            (if (not _%klass136225%_)
                '#f
                (error '"not a class or false" _%klass136225%_)))))
    (define base-struct/2
      (lambda (_%klass1136148%_ _%klass2136149%_)
        (let ((_%s1136151%_ (base-struct/1 _%klass1136148%_))
              (_%s2136152%_ (base-struct/1 _%klass2136149%_)))
          (if (or (not _%s1136151%_)
                  (and _%s2136152%_
                       (let* ((_%maybe-sub-struct136157%_ _%s1136151%_)
                              (_%maybe-super-struct136160%_ _%s2136152%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%maybe-sub-struct136157%_
                                'class))
                             (let ((_%maybe-sub-struct136165%_
                                    _%maybe-sub-struct136157%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%maybe-super-struct136160%_
                                      'class))
                                   (let ((_%maybe-super-struct136179%_
                                          _%maybe-super-struct136160%_))
                                     (__substruct?
                                      _%maybe-sub-struct136165%_
                                      _%maybe-super-struct136179%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%maybe-super-struct136160%_)
                                     '#!void)))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%maybe-sub-struct136157%_)
                               '#!void)))))
              _%s2136152%_
              (if (or (not _%s2136152%_)
                      (and _%s1136151%_
                           (let* ((_%maybe-sub-struct136193%_ _%s2136152%_)
                                  (_%maybe-super-struct136196%_ _%s1136151%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%maybe-sub-struct136193%_
                                    'class))
                                 (let ((_%maybe-sub-struct136201%_
                                        _%maybe-sub-struct136193%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%maybe-super-struct136196%_
                                          'class))
                                       (let ((_%maybe-super-struct136213%_
                                              _%maybe-super-struct136196%_))
                                         (__substruct?
                                          _%maybe-sub-struct136201%_
                                          _%maybe-super-struct136213%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          'class-type?
                                          'value:
                                          _%maybe-super-struct136196%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'class-type?
                                    'value:
                                    _%maybe-sub-struct136193%_)
                                   '#!void)))))
                  _%s1136151%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1136148%_
                         _%klass2136149%_
                         _%s1136151%_
                         _%s2136152%_))))))
    (define base-struct/list
      (lambda (_%all-supers136033%_)
        (let* ((_%all-supers136034136059%_ _%all-supers136033%_)
               (_%E136039136063%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers136034136059%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K136057136145%_ (lambda () '#f))
                (_%K136054136131%_
                 (lambda (_%x136129%_) (base-struct/1 _%x136129%_)))
                (_%K136049136108%_
                 (lambda (_%y136105%_ _%x136106%_)
                   (base-struct/2 _%x136106%_ _%y136105%_)))
                (_%K136040136070%_
                 (lambda (_%y136067%_ _%x136068%_)
                   (let ()
                     (declare (not safe))
                     (foldr__0 base-struct/2 _%x136068%_ _%y136067%_)))))
            (let* ((_%__match139069139070%_
                    (lambda (_%hd136041136073%_ _%tl136042136075%_)
                      (let ((_%x136078%_ _%hd136041136073%_))
                        (letrec ((_%splice-rest136044136080%_
                                  (lambda (_%rest136048136087%_ _%y136089%_)
                                    (if (null? _%rest136048136087%_)
                                        (_%K136040136070%_
                                         _%y136089%_
                                         _%x136078%_)
                                        (_%E136039136063%_))))
                                 (_%splice-try136046136082%_
                                  (lambda (_%hd136047136091%_
                                           _%rest136048136093%_
                                           _%y136043136094%_)
                                    (let ((_%y136096%_ _%hd136047136091%_))
                                      (_%splice-loop136045136084%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest136048136093%_))
                                       (cons _%y136096%_ _%y136043136094%_)))))
                                 (_%splice-loop136045136084%_
                                  (lambda (_%rest136048136098%_
                                           _%y136043136099%_)
                                    (if (pair? _%rest136048136098%_)
                                        (_%splice-try136046136082%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest136048136098%_))
                                         _%rest136048136098%_
                                         _%y136043136099%_)
                                        (_%splice-rest136044136080%_
                                         _%rest136048136098%_
                                         (reverse _%y136043136099%_))))))
                          (_%splice-loop136045136084%_
                           _%tl136042136075%_
                           '())))))
                   (_%try-match136036136141%_
                    (lambda ()
                      (if (pair? _%all-supers136034136059%_)
                          (let ((_%tl136056136136%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers136034136059%_)))
                                (_%hd136055136134%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers136034136059%_))))
                            (if (null? _%tl136056136136%_)
                                (let ((_%x136139%_ _%hd136055136134%_))
                                  (base-struct/1 _%x136139%_))
                                (if (pair? _%tl136056136136%_)
                                    (let ((_%tl136053136120%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl136056136136%_)))
                                          (_%hd136052136118%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl136056136136%_))))
                                      (if (null? _%tl136053136120%_)
                                          (let ((_%x136116%_
                                                 _%hd136055136134%_)
                                                (_%y136123%_
                                                 _%hd136052136118%_))
                                            (_%K136049136108%_
                                             _%y136123%_
                                             _%x136116%_))
                                          (_%__match139069139070%_
                                           _%hd136055136134%_
                                           _%tl136056136136%_)))
                                    (_%__match139069139070%_
                                     _%hd136055136134%_
                                     _%tl136056136136%_))))
                          (_%E136039136063%_)))))
              (if (null? _%all-supers136034136059%_)
                  (_%K136057136145%_)
                  (_%try-match136036136141%_)))))))
    (define base-struct
      (lambda _%all-supers136031%_ (base-struct/list _%all-supers136031%_)))
    (define find-super-constructor
      (lambda (_%super135982%_)
        (let _%lp135984%_ ((_%rest135986%_ _%super135982%_)
                           (_%constructor135987%_ '#f))
          (let* ((_%rest135988135996%_ _%rest135986%_)
                 (_%else135990136004%_ (lambda () _%constructor135987%_))
                 (_%K135992136019%_
                  (lambda (_%rest136007%_ _%hd136008%_)
                    (let ((_%$e136010%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd136008%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e136010%_
                          (if (or (not _%constructor135987%_)
                                  (eq? _%constructor135987%_ _%$e136010%_))
                              (_%lp135984%_ _%rest136007%_ _%$e136010%_)
                              (error '"conflicting implicit constructors"
                                     _%constructor135987%_
                                     _%$e136010%_))
                          (_%lp135984%_
                           _%rest136007%_
                           _%constructor135987%_))))))
            (if (pair? _%rest135988135996%_)
                (let ((_%hd135993136022%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest135988135996%_)))
                      (_%tl135994136024%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest135988135996%_))))
                  (let* ((_%hd136027%_ _%hd135993136022%_)
                         (_%rest136029%_ _%tl135994136024%_))
                    (_%K135992136019%_ _%rest136029%_ _%hd136027%_)))
                (_%else135990136004%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list135974%_ _%direct-slots135975%_)
        (let ((__tmp140302
               (lambda (_%mixin135977%_)
                 (let ((__tmp140303
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%mixin135977%_
                           '9
                           '#f
                           '#f))))
                   (declare (not safe))
                   (agetq__% 'direct-slots: __tmp140303 '()))))
              (__tmp140301
               (lambda (_%slot-list135979%_ _%slot-table135980%_)
                 (values (list->vector _%slot-list135979%_)
                         _%slot-table135980%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%class-precedence-list135974%_
           _%direct-slots135975%_
           __tmp140302
           __tmp140301))))
    (define __make-class-type
      (lambda (_%id135801%_
               _%name135802%_
               _%direct-supers135803%_
               _%direct-slots135804%_
               _%properties135805%_
               _%constructor135806%_)
        (let* ((_%id135809%_ _%id135801%_)
               (_%name135817%_ _%name135802%_)
               (_%direct-supers135825%_ _%direct-supers135803%_)
               (_%direct-slots135833%_ _%direct-slots135804%_)
               (_%properties135841%_ _%properties135805%_)
               (_%constructor135849%_ _%constructor135806%_))
          (let ((_%$e135883%_
                 (let* ((_%pred135861%_
                         (lambda (_%$obj135858%_)
                           (not (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%$obj135858%_
                                   'class)))))
                        (_%lst135864%_ _%direct-supers135825%_)
                        (_%pred135869%_ _%pred135861%_))
                   (declare (not safe))
                   (__find _%pred135869%_ _%lst135864%_))))
            (if _%$e135883%_
                (error '"Illegal super class; not a class descriptor"
                       _%$e135883%_)
                (let ((_%$e135910%_
                       (let* ((_%pred135890%_ __class-type-final?)
                              (_%lst135893%_ _%direct-supers135825%_)
                              (_%pred135898%_ _%pred135890%_))
                         (declare (not safe))
                         (__find _%pred135898%_ _%lst135893%_))))
                  (if _%$e135910%_
                      (error '"Cannot extend final class" _%$e135910%_)
                      '#!void))))
          (let ((_g140304_ (compute-precedence-list _%direct-supers135825%_)))
            (begin
              (let ((_g140305_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g140304_)
                           (##values-length _g140304_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g140305_ 2)))
                    (error "Context expects 2 values" _g140305_)))
              (let ((_%precedence-list135917%_
                     (let () (declare (not safe)) (##values-ref _g140304_ 0)))
                    (_%struct-super135918%_
                     (let () (declare (not safe)) (##values-ref _g140304_ 1))))
                (let ((_g140306_
                       (compute-class-slots
                        _%precedence-list135917%_
                        _%direct-slots135833%_)))
                  (begin
                    (let ((_g140307_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g140306_)
                                 (##values-length _g140306_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g140307_ 2)))
                          (error "Context expects 2 values" _g140307_)))
                    (let ((_%slot-vector135920%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g140306_ 0)))
                          (_%slot-table135921%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g140306_ 1))))
                      (let* ((_%properties135923%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots135833%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers135825%_)
                                          _%properties135841%_)))
                             (_%constructor*135928%_
                              (let ((_%$e135925%_ _%constructor135849%_))
                                (if _%$e135925%_
                                    _%$e135925%_
                                    (find-super-constructor
                                     _%direct-supers135825%_))))
                             (_%precedence-list135971%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties135923%_))
                                      (memq object::t
                                            _%precedence-list135917%_))
                                  _%precedence-list135917%_
                                  (let _%loop135933%_ ((_%tail135935%_
                                                        _%precedence-list135917%_)
                                                       (_%head135936%_ '()))
                                    (let* ((_%tail135937135945%_
                                            _%tail135935%_)
                                           (_%else135939135953%_
                                            (lambda ()
                                              (let ((__tmp140308
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp140308
                                                 _%head135936%_))))
                                           (_%K135941135959%_
                                            (lambda (_%rest135956%_
                                                     _%hd135957%_)
                                              (if (eq? _%hd135957%_ t::t)
                                                  (let ((__tmp140309
                                                         (cons object::t
                                                               _%tail135935%_)))
                                                    (declare (not safe))
                                                    (foldl__0
                                                     cons
                                                     __tmp140309
                                                     _%head135936%_))
                                                  (_%loop135933%_
                                                   _%rest135956%_
                                                   (cons _%hd135957%_
                                                         _%head135936%_))))))
                                      (if (pair? _%tail135937135945%_)
                                          (let ((_%hd135942135962%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail135937135945%_)))
                                                (_%tl135943135964%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail135937135945%_))))
                                            (let* ((_%hd135967%_
                                                    _%hd135942135962%_)
                                                   (_%rest135969%_
                                                    _%tl135943135964%_))
                                              (_%K135941135959%_
                                               _%rest135969%_
                                               _%hd135967%_)))
                                          (_%else135939135953%_)))))))
                        (make-class-type-descriptor
                         _%id135809%_
                         _%name135817%_
                         _%struct-super135918%_
                         _%precedence-list135971%_
                         _%slot-vector135920%_
                         _%properties135923%_
                         _%constructor*135928%_
                         _%slot-table135921%_
                         '#f)))))))))))
    (define make-class-type
      (lambda (_%id125300%_
               _%name125301%_
               _%direct-supers125302%_
               _%direct-slots125303%_
               _%properties125304%_
               _%constructor125305%_)
        (if (symbol? _%id125300%_)
            (let ((_%id125309%_ _%id125300%_))
              (if (symbol? _%name125301%_)
                  (let ((_%name125319%_ _%name125301%_))
                    (if (list? _%direct-supers125302%_)
                        (let ((_%direct-supers125329%_
                               _%direct-supers125302%_))
                          (if (list? _%direct-slots125303%_)
                              (let ((_%direct-slots125339%_
                                     _%direct-slots125303%_))
                                (if (list? _%properties125304%_)
                                    (let ((_%properties125349%_
                                           _%properties125304%_))
                                      (if (or (not _%constructor125305%_)
                                              (symbol? _%constructor125305%_))
                                          (let ((_%constructor125365%_
                                                 _%constructor125305%_))
                                            (__make-class-type
                                             _%id125309%_
                                             _%name125319%_
                                             _%direct-supers125329%_
                                             _%direct-slots125339%_
                                             _%properties125349%_
                                             _%constructor125365%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@544.24-544.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor125305%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@543.24-543.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties125304%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@542.24-542.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots125303%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@541.24-541.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers125302%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@540.24-540.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name125301%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@539.24-539.26"
               'contract:
               'symbol?
               'value:
               _%id125300%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass135789%_)
        (let ((_%klass135792%_ _%klass135789%_))
          (cons _%klass135792%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass135792%_ '6 '#f '#f))))))
    (define class-precedence-list
      (lambda (_%klass125495%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125495%_ 'class))
            (let ((_%klass125499%_ _%klass125495%_))
              (__class-precedence-list _%klass125499%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@577.30-577.35"
               'contract:
               'class-type?
               'value:
               _%klass125495%_)
              '#!void))))
    (define compute-precedence-list
      (lambda (_%direct-supers135786%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers135786%_))))
    (define __make-class-predicate
      (lambda (_%klass135702%_)
        (let* ((_%klass135705%_ _%klass135702%_)
               (_%tid135714%_
                (let () (declare (not safe)) (##type-id _%klass135705%_))))
          (if (let* ((_%type135716%_ _%klass135705%_)
                     (_%type135721%_ _%type135716%_))
                (__class-type-final? _%type135721%_))
              (lambda (_%g135735135737%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g135735135737%_
                   _%tid135714%_)))
              (if (let* ((_%klass135740%_ _%klass135705%_)
                         (_%klass135745%_ _%klass135740%_))
                    (__class-type-struct? _%klass135745%_))
                  (lambda (_%g135755135757%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%g135755135757%_
                       _%tid135714%_)))
                  (lambda (_%g135760135762%_)
                    (let* ((_%klass135765%_ _%klass135705%_)
                           (_%obj135768%_ _%g135760135762%_)
                           (_%klass135773%_ _%klass135765%_))
                      (__class-instance? _%klass135773%_ _%obj135768%_))))))))
    (define make-class-predicate
      (lambda (_%klass125629%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125629%_ 'class))
            (let ((_%klass125633%_ _%klass125629%_))
              (__make-class-predicate _%klass125633%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.29-589.34"
               'contract:
               'class-type?
               'value:
               _%klass125629%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass135636%_ _%slot135637%_)
        (let* ((_%klass135640%_ _%klass135636%_)
               (_%slot135648%_ _%slot135637%_)
               (_%field135657%_
                (let ((__tmp140310
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass135640%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp140310 _%slot135648%_ '#f))))
          (if (not _%field135657%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass135640%_
                       'slot:
                       _%slot135648%_)
                '#!void)
              (if (let* ((_%type135661%_ _%klass135640%_)
                         (_%type135666%_ _%type135661%_))
                    (__class-type-final? _%type135666%_))
                  (make-final-slot-accessor
                   _%klass135640%_
                   _%slot135648%_
                   _%field135657%_)
                  (if (let* ((_%klass135681%_ _%klass135640%_)
                             (_%klass135686%_ _%klass135681%_))
                        (__class-type-struct? _%klass135686%_))
                      (make-struct-slot-accessor
                       _%klass135640%_
                       _%slot135648%_
                       _%field135657%_)
                      (if (let ((_%strukt135697%_
                                 (base-struct/1 _%klass135640%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt135697%_
                                    'class))
                                 (let ((__tmp140311
                                        (let ((__tmp140312
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt135697%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp140312))))
                                   (declare (not safe))
                                   (##fx< _%field135657%_ __tmp140311))))
                          (make-struct-subclass-slot-accessor
                           _%klass135640%_
                           _%slot135648%_
                           _%field135657%_)
                          (make-class-cached-slot-accessor
                           _%klass135640%_
                           _%slot135648%_
                           _%field135657%_))))))))
    (define make-class-slot-accessor
      (lambda (_%klass125916%_ _%slot125917%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass125916%_ 'class))
            (let ((_%klass125921%_ _%klass125916%_))
              (if (symbol? _%slot125917%_)
                  (let ((_%slot125931%_ _%slot125917%_))
                    (__make-class-slot-accessor
                     _%klass125921%_
                     _%slot125931%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@620.50-620.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot125917%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@620.33-620.38"
               'contract:
               'class-type?
               'value:
               _%klass125916%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass135570%_ _%slot135571%_)
        (let* ((_%klass135574%_ _%klass135570%_)
               (_%slot135582%_ _%slot135571%_)
               (_%field135591%_
                (let ((__tmp140313
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass135574%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp140313 _%slot135582%_ '#f))))
          (if (not _%field135591%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass135574%_
                       'slot:
                       _%slot135582%_)
                '#!void)
              (if (let* ((_%type135595%_ _%klass135574%_)
                         (_%type135600%_ _%type135595%_))
                    (__class-type-final? _%type135600%_))
                  (make-final-slot-mutator
                   _%klass135574%_
                   _%slot135582%_
                   _%field135591%_)
                  (if (let* ((_%klass135615%_ _%klass135574%_)
                             (_%klass135620%_ _%klass135615%_))
                        (__class-type-struct? _%klass135620%_))
                      (make-struct-slot-mutator
                       _%klass135574%_
                       _%slot135582%_
                       _%field135591%_)
                      (if (let ((_%strukt135631%_
                                 (base-struct/1 _%klass135574%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt135631%_
                                    'class))
                                 (let ((__tmp140314
                                        (let ((__tmp140315
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt135631%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp140315))))
                                   (declare (not safe))
                                   (##fx< _%field135591%_ __tmp140314))))
                          (make-struct-subclass-slot-mutator
                           _%klass135574%_
                           _%slot135582%_
                           _%field135591%_)
                          (make-class-cached-slot-mutator
                           _%klass135574%_
                           _%slot135582%_
                           _%field135591%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass126061%_ _%slot126062%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126061%_ 'class))
            (let ((_%klass126066%_ _%klass126061%_))
              (if (symbol? _%slot126062%_)
                  (let ((_%slot126076%_ _%slot126062%_))
                    (__make-class-slot-mutator _%klass126066%_ _%slot126076%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@628.49-628.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot126062%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@628.32-628.37"
               'contract:
               'class-type?
               'value:
               _%klass126061%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass135504%_ _%slot135505%_)
        (let* ((_%klass135508%_ _%klass135504%_)
               (_%slot135516%_ _%slot135505%_)
               (_%field135525%_
                (let ((__tmp140316
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass135508%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp140316 _%slot135516%_ '#f))))
          (if (not _%field135525%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass135508%_
                       'slot:
                       _%slot135516%_)
                '#!void)
              (if (let* ((_%type135529%_ _%klass135508%_)
                         (_%type135534%_ _%type135529%_))
                    (__class-type-final? _%type135534%_))
                  (make-struct-slot-unchecked-accessor
                   _%klass135508%_
                   _%slot135516%_
                   _%field135525%_)
                  (if (let* ((_%klass135549%_ _%klass135508%_)
                             (_%klass135554%_ _%klass135549%_))
                        (__class-type-struct? _%klass135554%_))
                      (make-struct-slot-unchecked-accessor
                       _%klass135508%_
                       _%slot135516%_
                       _%field135525%_)
                      (if (let ((_%strukt135565%_
                                 (base-struct/1 _%klass135508%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt135565%_
                                    'class))
                                 (let ((__tmp140317
                                        (let ((__tmp140318
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt135565%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp140318))))
                                   (declare (not safe))
                                   (##fx< _%field135525%_ __tmp140317))))
                          (make-struct-slot-unchecked-accessor
                           _%klass135508%_
                           _%slot135516%_
                           _%field135525%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass135508%_
                           _%slot135516%_
                           _%field135525%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass126206%_ _%slot126207%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126206%_ 'class))
            (let ((_%klass126211%_ _%klass126206%_))
              (if (symbol? _%slot126207%_)
                  (let ((_%slot126221%_ _%slot126207%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass126211%_
                     _%slot126221%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@636.60-636.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot126207%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@636.43-636.48"
               'contract:
               'class-type?
               'value:
               _%klass126206%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass135438%_ _%slot135439%_)
        (let* ((_%klass135442%_ _%klass135438%_)
               (_%slot135450%_ _%slot135439%_)
               (_%field135459%_
                (let ((__tmp140319
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass135442%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp140319 _%slot135450%_ '#f))))
          (if (not _%field135459%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass135442%_
                       'slot:
                       _%slot135450%_)
                '#!void)
              (if (let* ((_%type135463%_ _%klass135442%_)
                         (_%type135468%_ _%type135463%_))
                    (__class-type-final? _%type135468%_))
                  (make-struct-slot-unchecked-mutator
                   _%klass135442%_
                   _%slot135450%_
                   _%field135459%_)
                  (if (let* ((_%klass135483%_ _%klass135442%_)
                             (_%klass135488%_ _%klass135483%_))
                        (__class-type-struct? _%klass135488%_))
                      (make-struct-slot-unchecked-mutator
                       _%klass135442%_
                       _%slot135450%_
                       _%field135459%_)
                      (if (let ((_%strukt135499%_
                                 (base-struct/1 _%klass135442%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt135499%_
                                    'class))
                                 (let ((__tmp140320
                                        (let ((__tmp140321
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt135499%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp140321))))
                                   (declare (not safe))
                                   (##fx< _%field135459%_ __tmp140320))))
                          (make-struct-slot-unchecked-mutator
                           _%klass135442%_
                           _%slot135450%_
                           _%field135459%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass135442%_
                           _%slot135450%_
                           _%field135459%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass126351%_ _%slot126352%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126351%_ 'class))
            (let ((_%klass126356%_ _%klass126351%_))
              (if (symbol? _%slot126352%_)
                  (let ((_%slot126366%_ _%slot126352%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass126356%_
                     _%slot126366%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@644.59-644.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot126352%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@644.42-644.47"
               'contract:
               'class-type?
               'value:
               _%klass126351%_)
              '#!void))))
    (define not-an-instance__%
      (lambda (_%object135422%_ _%class135423%_ _%slot135424%_)
        (apply error
               '"not an instance"
               'object:
               _%object135422%_
               'class:
               _%class135423%_
               (if _%slot135424%_
                   (cons 'slot: (cons _%slot135424%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object135429%_ _%class135430%_)
        (let ((_%slot135432%_ '#f))
          (not-an-instance__%
           _%object135429%_
           _%class135430%_
           _%slot135432%_))))
    (define not-an-instance
      (lambda _g140322_
        (let ((_g140323_ (let () (declare (not safe)) (##length _g140322_))))
          (cond ((let () (declare (not safe)) (##fx= _g140323_ 2))
                 (apply not-an-instance__0 _g140322_))
                ((let () (declare (not safe)) (##fx= _g140323_ 3))
                 (apply not-an-instance__% _g140322_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g140322_))))))
    (define make-final-slot-accessor
      (lambda (_%klass135415%_ _%slot135416%_ _%field135417%_)
        (lambda (_%obj135419%_)
          (##direct-structure-ref
           _%obj135419%_
           _%field135417%_
           _%klass135415%_
           _%slot135416%_))))
    (define make-final-slot-mutator
      (lambda (_%klass135408%_ _%slot135409%_ _%field135410%_)
        (lambda (_%obj135412%_ _%val135413%_)
          (##direct-structure-set!
           _%obj135412%_
           _%val135413%_
           _%field135410%_
           _%klass135408%_
           _%slot135409%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass135402%_ _%slot135403%_ _%field135404%_)
        (lambda (_%obj135406%_)
          (##structure-ref
           _%obj135406%_
           _%field135404%_
           _%klass135402%_
           _%slot135403%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass135395%_ _%slot135396%_ _%field135397%_)
        (lambda (_%obj135399%_ _%val135400%_)
          (##structure-set!
           _%obj135399%_
           _%val135400%_
           _%field135397%_
           _%klass135395%_
           _%slot135396%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass135389%_ _%slot135390%_ _%field135391%_)
        (lambda (_%obj135393%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj135393%_
             _%field135391%_
             _%klass135389%_
             _%slot135390%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass135382%_ _%slot135383%_ _%field135384%_)
        (lambda (_%obj135386%_ _%val135387%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj135386%_
             _%val135387%_
             _%field135384%_
             _%klass135382%_
             _%slot135383%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass135355%_ _%slot135356%_ _%field135357%_)
        (lambda (_%obj135359%_)
          (if (let* ((_%klass135361%_ _%klass135355%_)
                     (_%obj135364%_ _%obj135359%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass135361%_ 'class))
                    (let ((_%klass135369%_ _%klass135361%_))
                      (__class-instance? _%klass135369%_ _%obj135364%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass135361%_)
                      '#!void)))
              (unchecked-slot-ref _%obj135359%_ _%field135357%_)
              (not-an-instance__%
               _%obj135359%_
               _%klass135355%_
               _%slot135356%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass135327%_ _%slot135328%_ _%field135329%_)
        (lambda (_%obj135331%_ _%val135332%_)
          (if (let* ((_%klass135334%_ _%klass135327%_)
                     (_%obj135337%_ _%obj135331%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass135334%_ 'class))
                    (let ((_%klass135342%_ _%klass135334%_))
                      (__class-instance? _%klass135342%_ _%obj135337%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass135334%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj135331%_
               _%field135329%_
               _%val135332%_)
              (not-an-instance__%
               _%obj135331%_
               _%klass135327%_
               _%slot135328%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass135278%_ _%slot135279%_ _%field135280%_)
        (lambda (_%obj135282%_)
          (if (let* ((_%klass135284%_ _%klass135278%_)
                     (_%obj135287%_ _%obj135282%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass135284%_ 'class))
                    (let ((_%klass135292%_ _%klass135284%_))
                      (__direct-instance? _%klass135292%_ _%obj135287%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass135284%_)
                      '#!void)))
              (unchecked-field-ref _%obj135282%_ _%field135280%_)
              (if (let* ((_%klass135306%_ _%klass135278%_)
                         (_%obj135309%_ _%obj135282%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass135306%_ 'class))
                        (let ((_%klass135314%_ _%klass135306%_))
                          (__class-instance? _%klass135314%_ _%obj135309%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass135306%_)
                          '#!void)))
                  (unchecked-slot-ref _%obj135282%_ _%slot135279%_)
                  (not-an-instance__%
                   _%obj135282%_
                   _%klass135278%_
                   _%slot135279%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass135228%_ _%slot135229%_ _%field135230%_)
        (lambda (_%obj135232%_ _%val135233%_)
          (if (let* ((_%klass135235%_ _%klass135228%_)
                     (_%obj135238%_ _%obj135232%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass135235%_ 'class))
                    (let ((_%klass135243%_ _%klass135235%_))
                      (__direct-instance? _%klass135243%_ _%obj135238%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass135235%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj135232%_
               _%field135230%_
               _%val135233%_)
              (if (let* ((_%klass135257%_ _%klass135228%_)
                         (_%obj135260%_ _%obj135232%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass135257%_ 'class))
                        (let ((_%klass135265%_ _%klass135257%_))
                          (__class-instance? _%klass135265%_ _%obj135260%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass135257%_)
                          '#!void)))
                  (unchecked-slot-set!
                   _%obj135232%_
                   _%slot135229%_
                   _%val135233%_)
                  (not-an-instance__%
                   _%obj135232%_
                   _%klass135228%_
                   _%slot135229%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass135201%_ _%slot135202%_ _%field135203%_)
        (lambda (_%obj135205%_)
          (if (let* ((_%klass135207%_ _%klass135201%_)
                     (_%obj135210%_ _%obj135205%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass135207%_ 'class))
                    (let ((_%klass135215%_ _%klass135207%_))
                      (__direct-instance? _%klass135215%_ _%obj135210%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass135207%_)
                      '#!void)))
              (unchecked-field-ref _%obj135205%_ _%field135203%_)
              (unchecked-slot-ref _%obj135205%_ _%slot135202%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass135173%_ _%slot135174%_ _%field135175%_)
        (lambda (_%obj135177%_ _%val135178%_)
          (if (let* ((_%klass135180%_ _%klass135173%_)
                     (_%obj135183%_ _%obj135177%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass135180%_ 'class))
                    (let ((_%klass135188%_ _%klass135180%_))
                      (__direct-instance? _%klass135188%_ _%obj135183%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass135180%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj135177%_
               _%field135175%_
               _%val135178%_)
              (unchecked-slot-set!
               _%obj135177%_
               _%slot135174%_
               _%val135178%_)))))
    (define __class-slot-offset
      (lambda (_%klass135152%_ _%slot135153%_)
        (let* ((_%klass135156%_ _%klass135152%_)
               (_%slot135164%_ _%slot135153%_)
               (__tmp140324
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass135156%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp140324 _%slot135164%_ '#f))))
    (define class-slot-offset
      (lambda (_%klass126496%_ _%slot126497%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126496%_ 'class))
            (let ((_%klass126501%_ _%klass126496%_))
              (if (let () (declare (not safe)) (symbolic? _%slot126497%_))
                  (let ((_%slot126511%_ _%slot126497%_))
                    (__class-slot-offset _%klass126501%_ _%slot126511%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@706.43-706.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot126497%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@706.26-706.31"
               'contract:
               'class-type?
               'value:
               _%klass126496%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass135077%_ _%obj135078%_ _%slot135079%_)
        (let* ((_%klass135082%_ _%klass135077%_)
               (_%slot135090%_ _%slot135079%_))
          (if (let* ((_%klass135099%_ _%klass135082%_)
                     (_%obj135102%_ _%obj135078%_)
                     (_%klass135107%_ _%klass135099%_))
                (__class-instance? _%klass135107%_ _%obj135102%_))
              (let ((_%off135150%_
                     (let* ((_%klass135121%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj135078%_)))
                            (_%slot135124%_ _%slot135090%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass135121%_ 'class))
                           (let ((_%klass135129%_ _%klass135121%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot135124%_))
                                 (let ((_%slot135140%_ _%slot135124%_))
                                   (__class-slot-offset
                                    _%klass135129%_
                                    _%slot135140%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot135124%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass135121%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj135078%_
                 _%off135150%_
                 _%klass135082%_
                 _%slot135090%_))
              (not-an-instance__0 _%obj135078%_ _%klass135082%_)))))
    (define class-slot-ref
      (lambda (_%klass126641%_ _%obj126642%_ _%slot126643%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126641%_ 'class))
            (let ((_%klass126647%_ _%klass126641%_))
              (if (let () (declare (not safe)) (symbolic? _%slot126643%_))
                  (let ((_%slot126657%_ _%slot126643%_))
                    (__class-slot-ref
                     _%klass126647%_
                     _%obj126642%_
                     _%slot126657%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@709.44-709.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot126643%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@709.23-709.28"
               'contract:
               'class-type?
               'value:
               _%klass126641%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass135001%_ _%obj135002%_ _%slot135003%_ _%val135004%_)
        (let* ((_%klass135007%_ _%klass135001%_)
               (_%slot135015%_ _%slot135003%_))
          (if (let* ((_%klass135024%_ _%klass135007%_)
                     (_%obj135027%_ _%obj135002%_)
                     (_%klass135032%_ _%klass135024%_))
                (__class-instance? _%klass135032%_ _%obj135027%_))
              (let ((_%off135075%_
                     (let* ((_%klass135046%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj135002%_)))
                            (_%slot135049%_ _%slot135015%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass135046%_ 'class))
                           (let ((_%klass135054%_ _%klass135046%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot135049%_))
                                 (let ((_%slot135065%_ _%slot135049%_))
                                   (__class-slot-offset
                                    _%klass135054%_
                                    _%slot135065%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot135049%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass135046%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj135002%_
                 _%val135004%_
                 _%off135075%_
                 _%klass135007%_
                 _%slot135015%_))
              (not-an-instance__0 _%obj135002%_ _%klass135007%_)))))
    (define class-slot-set!
      (lambda (_%klass126787%_ _%obj126788%_ _%slot126789%_ _%val126790%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass126787%_ 'class))
            (let ((_%klass126794%_ _%klass126787%_))
              (if (let () (declare (not safe)) (symbolic? _%slot126789%_))
                  (let ((_%slot126804%_ _%slot126789%_))
                    (__class-slot-set!
                     _%klass126794%_
                     _%obj126788%_
                     _%slot126804%_
                     _%val126790%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@715.45-715.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot126789%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@715.24-715.29"
               'contract:
               'class-type?
               'value:
               _%klass126787%_)
              '#!void))))
    (define unchecked-field-ref
      (lambda (_%obj134998%_ _%off134999%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj134998%_ _%off134999%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj134994%_ _%off134995%_ _%val134996%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj134994%_
           _%val134996%_
           _%off134995%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj134991%_ _%slot134992%_)
        (unchecked-field-ref
         _%obj134991%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj134991%_))
          _%slot134992%_))))
    (define unchecked-slot-set!
      (lambda (_%obj134987%_ _%slot134988%_ _%val134989%_)
        (unchecked-field-set!
         _%obj134987%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj134987%_))
          _%slot134988%_)
         _%val134989%_)))
    (define __slot-error
      (lambda (_%obj134984%_ _%slot134985%_)
        (error '"Cannot find slot"
               'object:
               _%obj134984%_
               'slot:
               _%slot134985%_)))
    (define __slot-ref__%
      (lambda (_%obj134908%_ _%slot134909%_ _%E134910%_)
        (let* ((_%slot134913%_ _%slot134909%_)
               (_%E134921%_ _%E134910%_)
               (_%klass134930%_ (class-of _%obj134908%_))
               (_%$e134966%_
                (let* ((_%klass134933%_ _%klass134930%_)
                       (_%slot134936%_ _%slot134913%_)
                       (_%klass134941%_ _%klass134933%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot134936%_))
                      (let ((_%slot134956%_ _%slot134936%_))
                        (__class-slot-offset _%klass134941%_ _%slot134956%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot134936%_)
                        '#!void)))))
          (if _%$e134966%_
              (unchecked-field-ref _%obj134908%_ _%$e134966%_)
              (let ()
                (declare (not safe))
                (_%E134921%_ _%obj134908%_ _%slot134913%_))))))
    (define __slot-ref__0
      (lambda (_%obj134975%_ _%slot134976%_)
        (let ((_%E134978%_ __slot-error))
          (__slot-ref__% _%obj134975%_ _%slot134976%_ _%E134978%_))))
    (define __slot-ref
      (lambda _g140325_
        (let ((_g140326_ (let () (declare (not safe)) (##length _g140325_))))
          (cond ((let () (declare (not safe)) (##fx= _g140326_ 2))
                 (apply __slot-ref__0 _g140325_))
                ((let () (declare (not safe)) (##fx= _g140326_ 3))
                 (apply __slot-ref__% _g140325_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g140325_))))))
    (define slot-ref__%
      (lambda (_%obj127052%_ _%slot127053%_ _%E127054%_)
        (if (symbol? _%slot127053%_)
            (let ((_%slot127058%_ _%slot127053%_))
              (if (procedure? _%E127054%_)
                  (let ((_%E127068%_ _%E127054%_))
                    (__slot-ref__% _%obj127052%_ _%slot127058%_ _%E127068%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@741.38-741.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E127054%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@741.21-741.25"
               'contract:
               'symbol?
               'value:
               _%slot127053%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj127081%_ _%slot127082%_)
        (let ((_%E127084%_ __slot-error))
          (slot-ref__% _%obj127081%_ _%slot127082%_ _%E127084%_))))
    (define slot-ref
      (lambda _g140327_
        (let ((_g140328_ (let () (declare (not safe)) (##length _g140327_))))
          (cond ((let () (declare (not safe)) (##fx= _g140328_ 2))
                 (apply slot-ref__0 _g140327_))
                ((let () (declare (not safe)) (##fx= _g140328_ 3))
                 (apply slot-ref__% _g140327_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g140327_))))))
    (define __slot-set!__%
      (lambda (_%obj134828%_ _%slot134829%_ _%val134830%_ _%E134831%_)
        (let* ((_%slot134834%_ _%slot134829%_)
               (_%E134842%_ _%E134831%_)
               (_%klass134851%_ (class-of _%obj134828%_))
               (_%$e134887%_
                (let* ((_%klass134854%_ _%klass134851%_)
                       (_%slot134857%_ _%slot134834%_)
                       (_%klass134862%_ _%klass134854%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot134857%_))
                      (let ((_%slot134877%_ _%slot134857%_))
                        (__class-slot-offset _%klass134862%_ _%slot134877%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot134857%_)
                        '#!void)))))
          (if _%$e134887%_
              (unchecked-field-set! _%obj134828%_ _%$e134887%_ _%val134830%_)
              (let ()
                (declare (not safe))
                (_%E134842%_ _%obj134828%_ _%slot134834%_))))))
    (define __slot-set!__0
      (lambda (_%obj134896%_ _%slot134897%_ _%val134898%_)
        (let ((_%E134900%_ __slot-error))
          (__slot-set!__%
           _%obj134896%_
           _%slot134897%_
           _%val134898%_
           _%E134900%_))))
    (define __slot-set!
      (lambda _g140329_
        (let ((_g140330_ (let () (declare (not safe)) (##length _g140329_))))
          (cond ((let () (declare (not safe)) (##fx= _g140330_ 3))
                 (apply __slot-set!__0 _g140329_))
                ((let () (declare (not safe)) (##fx= _g140330_ 4))
                 (apply __slot-set!__% _g140329_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g140329_))))))
    (define slot-set!__%
      (lambda (_%obj127211%_ _%slot127212%_ _%val127213%_ _%E127214%_)
        (if (symbol? _%slot127212%_)
            (let ((_%slot127218%_ _%slot127212%_))
              (if (procedure? _%E127214%_)
                  (let ((_%E127228%_ _%E127214%_))
                    (__slot-set!__%
                     _%obj127211%_
                     _%slot127218%_
                     _%val127213%_
                     _%E127228%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@743.43-743.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E127214%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@743.22-743.26"
               'contract:
               'symbol?
               'value:
               _%slot127212%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj127241%_ _%slot127242%_ _%val127243%_)
        (let ((_%E127245%_ __slot-error))
          (slot-set!__%
           _%obj127241%_
           _%slot127242%_
           _%val127243%_
           _%E127245%_))))
    (define slot-set!
      (lambda _g140331_
        (let ((_g140332_ (let () (declare (not safe)) (##length _g140331_))))
          (cond ((let () (declare (not safe)) (##fx= _g140332_ 3))
                 (apply slot-set!__0 _g140331_))
                ((let () (declare (not safe)) (##fx= _g140332_ 4))
                 (apply slot-set!__% _g140331_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g140331_))))))
    (define __subclass?
      (lambda (_%maybe-sub-class134799%_ _%maybe-super-class134800%_)
        (let* ((_%maybe-sub-class134803%_ _%maybe-sub-class134799%_)
               (_%maybe-super-class134811%_ _%maybe-super-class134800%_)
               (_%maybe-super-class-id134820%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class134811%_)))
               (_%$e134822%_
                (eq? _%maybe-super-class-id134820%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class134803%_)))))
          (if _%$e134822%_
              _%$e134822%_
              (let ((__tmp140334
                     (lambda (_%super-class134825%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class134825%_))
                            _%maybe-super-class-id134820%_)))
                    (__tmp140333
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class134803%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (ormap__0 __tmp140334 __tmp140333))))))
    (define subclass?
      (lambda (_%maybe-sub-class127372%_ _%maybe-super-class127373%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class127372%_ 'class))
            (let ((_%maybe-sub-class127377%_ _%maybe-sub-class127372%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class127373%_
                     'class))
                  (let ((_%maybe-super-class127387%_
                         _%maybe-super-class127373%_))
                    (__subclass?
                     _%maybe-sub-class127377%_
                     _%maybe-super-class127387%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@749.45-749.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class127373%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@749.18-749.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class127372%_)
              '#!void))))
    (define object?
      (lambda (_%o134796%_)
        (if (let () (declare (not safe)) (##structure? _%o134796%_))
            (let ((__tmp140335
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o134796%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp140335 'class))
            '#f)))
    (define __direct-instance?
      (lambda (_%klass134783%_ _%obj134784%_)
        (let* ((_%klass134787%_ _%klass134783%_)
               (__tmp140336
                (let () (declare (not safe)) (##type-id _%klass134787%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj134784%_ __tmp140336))))
    (define direct-instance?
      (lambda (_%klass127517%_ _%obj127518%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127517%_ 'class))
            (let ((_%klass127522%_ _%klass127517%_))
              (__direct-instance? _%klass127522%_ _%obj127518%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@763.25-763.30"
               'contract:
               'class-type?
               'value:
               _%klass127517%_)
              '#!void))))
    (define immediate-instance-of?
      (lambda (_%klass134779%_ _%obj134780%_)
        (if (let () (declare (not safe)) (##structure? _%obj134780%_))
            (eq? _%klass134779%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj134780%_)))
            '#f)))
    (define __struct-instance?
      (lambda (_%klass134766%_ _%obj134767%_)
        (let* ((_%klass134770%_ _%klass134766%_)
               (__tmp140337
                (let () (declare (not safe)) (##type-id _%klass134770%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj134767%_ __tmp140337))))
    (define struct-instance?
      (lambda (_%klass127652%_ _%obj127653%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127652%_ 'class))
            (let ((_%klass127657%_ _%klass127652%_))
              (__struct-instance? _%klass127657%_ _%obj127653%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@792.25-792.30"
               'contract:
               'class-type?
               'value:
               _%klass127652%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass134718%_ _%obj134719%_)
        (let* ((_%klass134722%_ _%klass134718%_)
               (_%type134731%_ (class-of _%obj134719%_))
               (_%maybe-sub-class134733%_ _%type134731%_)
               (_%maybe-super-class134736%_ _%klass134722%_)
               (_%maybe-sub-class134741%_ _%maybe-sub-class134733%_)
               (_%maybe-super-class134756%_ _%maybe-super-class134736%_))
          (__subclass?
           _%maybe-sub-class134741%_
           _%maybe-super-class134756%_))))
    (define class-instance?
      (lambda (_%klass127787%_ _%obj127788%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127787%_ 'class))
            (let ((_%klass127792%_ _%klass127787%_))
              (__class-instance? _%klass127792%_ _%obj127788%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@797.24-797.29"
               'contract:
               'class-type?
               'value:
               _%klass127787%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass134677%_ _%k134678%_)
        (let* ((_%klass134681%_ _%klass134677%_) (_%k134689%_ _%k134678%_))
          (if (let* ((_%klass134698%_ _%klass134681%_)
                     (_%klass134703%_ _%klass134698%_))
                (__class-type-system? _%klass134703%_))
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass134681%_)
                '#!void)
              (let ((_%obj134716%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass134681%_ _%k134689%_))))
                (__object-fill! _%obj134716%_ '#f))))))
    (define make-object
      (lambda (_%klass127922%_ _%k127923%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass127922%_ 'class))
            (let ((_%klass127927%_ _%klass127922%_))
              (if (fixnum? _%k127923%_)
                  (let ((_%k127937%_ _%k127923%_))
                    (__make-object _%klass127927%_ _%k127937%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@802.37-802.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k127923%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@802.20-802.25"
               'contract:
               'class-type?
               'value:
               _%klass127922%_)
              '#!void))))
    (define __object-class
      (lambda (_%obj134665%_)
        (let ((_%obj134668%_ _%obj134665%_))
          (declare (not safe))
          (##structure-type _%obj134668%_))))
    (define object-class
      (lambda (_%obj128067%_)
        (if (object? _%obj128067%_)
            (let ((_%obj128071%_ _%obj128067%_))
              (__object-class _%obj128071%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@822.21-822.24"
               'contract:
               'object?
               'value:
               _%obj128067%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj134647%_ _%fill134648%_)
        (let ((_%obj134651%_ _%obj134647%_))
          (let _%loop134660%_ ((_%i134662%_
                                (let ((__tmp140338
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj134651%_))))
                                  (declare (not safe))
                                  (##fx- __tmp140338 '1))))
            (if (let () (declare (not safe)) (##fx> _%i134662%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj134651%_
                     _%fill134648%_
                     _%i134662%_
                     '#f
                     '#f))
                  (_%loop134660%_
                   (let () (declare (not safe)) (##fx- _%i134662%_ '1))))
                _%obj134651%_)))))
    (define object-fill!
      (lambda (_%obj128201%_ _%fill128202%_)
        (if (object? _%obj128201%_)
            (let ((_%obj128206%_ _%obj128201%_))
              (__object-fill! _%obj128206%_ _%fill128202%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@827.21-827.24"
               'contract:
               'object?
               'value:
               _%obj128201%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass134603%_)
        (let* ((_%klass134606%_ _%klass134603%_)
               (_%klass134615%_ _%klass134606%_)
               (_%k134618%_
                (let ((__tmp140339
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass134606%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp140339)))
               (_%klass134623%_ _%klass134615%_)
               (_%k134637%_ _%k134618%_))
          (__make-object _%klass134623%_ _%k134637%_))))
    (define new-instance
      (lambda (_%klass128336%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass128336%_ 'class))
            (let ((_%klass128340%_ _%klass128336%_))
              (__new-instance _%klass128340%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@838.21-838.26"
               'contract:
               'class-type?
               'value:
               _%klass128336%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass134462%_ . _%args134463%_)
        (let* ((_%klass134466%_ _%klass134462%_)
               (_%$e134475%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass134466%_ '10 '#f '#f))))
          (if _%$e134475%_
              (let ((_%obj134500%_
                     (let* ((_%klass134480%_ _%klass134466%_)
                            (_%klass134485%_ _%klass134480%_))
                       (__new-instance _%klass134485%_))))
                (___constructor-init!
                 _%klass134466%_
                 _%$e134475%_
                 _%obj134500%_
                 _%args134463%_)
                _%obj134500%_)
              (if (let* ((_%klass134502%_ _%klass134466%_)
                         (_%klass134507%_ _%klass134502%_))
                    (__class-type-metaclass? _%klass134507%_))
                  (let ((_%obj134534%_
                         (let* ((_%klass134518%_ _%klass134466%_)
                                (_%klass134523%_ _%klass134518%_))
                           (__new-instance _%klass134523%_))))
                    (__metaclass-instance-init!
                     _%klass134466%_
                     _%obj134534%_
                     _%args134463%_)
                    _%obj134534%_)
                  (if (let* ((_%klass134536%_ _%klass134466%_)
                             (_%klass134541%_ _%klass134536%_))
                        (__class-type-struct? _%klass134541%_))
                      (if (let ((__tmp140341
                                 (let* ((_%klass134570%_ _%klass134466%_)
                                        (_%klass134575%_ _%klass134570%_))
                                   (__class-type-field-count _%klass134575%_)))
                                (__tmp140340
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args134463%_))))
                            (declare (not safe))
                            (##fx= __tmp140341 __tmp140340))
                          (apply ##structure _%klass134466%_ _%args134463%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass134466%_
                                   'slots:
                                   (let* ((_%klass134587%_ _%klass134466%_)
                                          (_%klass134592%_ _%klass134587%_))
                                     (__class-type-slot-list _%klass134592%_))
                                   'args:
                                   _%args134463%_)
                            '#!void))
                      (let ((_%obj134568%_
                             (let* ((_%klass134552%_ _%klass134466%_)
                                    (_%klass134557%_ _%klass134552%_))
                               (__new-instance _%klass134557%_))))
                        (___class-instance-init!
                         _%klass134466%_
                         _%obj134568%_
                         _%args134463%_)
                        _%obj134568%_)))))))
    (define make-instance
      (lambda (_%klass128470%_ . _%args128471%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass128470%_ 'class))
            (let ((_%klass128475%_ _%klass128470%_))
              (declare (not safe))
              (##apply __make-instance _%klass128475%_ _%args128471%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@841.22-841.27"
               'contract:
               'class-type?
               'value:
               _%klass128470%_)
              '#!void))))
    (define make-class-instance make-instance)
    (define __struct-instance-init!
      (lambda (_%obj134449%_ . _%args134450%_)
        (let ((_%obj134453%_ _%obj134449%_))
          (if (let ((__tmp140343
                     (let () (declare (not safe)) (##length _%args134450%_)))
                    (__tmp140342
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj134453%_))))
                (declare (not safe))
                (##fx< __tmp140343 __tmp140342))
              (___struct-instance-init! _%obj134453%_ _%args134450%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj134453%_
                     'args:
                     _%args134450%_))
          '#!void)))
    (define struct-instance-init!
      (lambda (_%obj128605%_ . _%args128606%_)
        (if (object? _%obj128605%_)
            (let ((_%obj128610%_ _%obj128605%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj128610%_ _%args128606%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@866.30-866.33"
               'contract:
               'object?
               'value:
               _%obj128605%_)
              '#!void))))
    (define ___struct-instance-init!
      (lambda (_%obj134408%_ _%args134409%_)
        (let _%lp134411%_ ((_%k134413%_ '1) (_%rest134414%_ _%args134409%_))
          (let* ((_%rest134415134423%_ _%rest134414%_)
                 (_%else134417134431%_ (lambda () _%obj134408%_))
                 (_%K134419134437%_
                  (lambda (_%rest134434%_ _%hd134435%_)
                    (unchecked-field-set!
                     _%obj134408%_
                     _%k134413%_
                     _%hd134435%_)
                    (_%lp134411%_
                     (let () (declare (not safe)) (##fx+ _%k134413%_ '1))
                     _%rest134434%_))))
            (if (pair? _%rest134415134423%_)
                (let ((_%hd134420134440%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest134415134423%_)))
                      (_%tl134421134442%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest134415134423%_))))
                  (let* ((_%hd134445%_ _%hd134420134440%_)
                         (_%rest134447%_ _%tl134421134442%_))
                    (_%K134419134437%_ _%rest134447%_ _%hd134445%_)))
                (_%else134417134431%_))))))
    (define __class-instance-init!
      (lambda (_%obj134395%_ . _%args134396%_)
        (let ((_%obj134399%_ _%obj134395%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj134399%_))
           _%obj134399%_
           _%args134396%_)
          '#!void)))
    (define class-instance-init!
      (lambda (_%obj128740%_ . _%args128741%_)
        (if (object? _%obj128740%_)
            (let ((_%obj128745%_ _%obj128740%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj128745%_ _%args128741%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@906.29-906.32"
               'contract:
               'object?
               'value:
               _%obj128740%_)
              '#!void))))
    (define ___class-instance-init!
      (lambda (_%klass134337%_ _%obj134338%_ _%args134339%_)
        (let _%lp134341%_ ((_%rest134343%_ _%args134339%_))
          (let* ((_%rest134344134354%_ _%rest134343%_)
                 (_%else134346134362%_
                  (lambda ()
                    (if (null? _%rest134343%_)
                        _%obj134338%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass134337%_
                               'rest:
                               _%rest134343%_))))
                 (_%K134348134376%_
                  (lambda (_%rest134365%_ _%val134366%_ _%key134367%_)
                    (if (keyword? _%key134367%_)
                        (let ((_%$e134370%_
                               (__class-slot-offset
                                _%klass134337%_
                                _%key134367%_)))
                          (if _%$e134370%_
                              (let ()
                                (unchecked-field-set!
                                 _%obj134338%_
                                 _%$e134370%_
                                 _%val134366%_)
                                (_%lp134341%_ _%rest134365%_))
                              (error '"unknown slot"
                                     'class:
                                     _%klass134337%_
                                     'slot:
                                     _%key134367%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key134367%_)))))
            (if (pair? _%rest134344134354%_)
                (let ((_%hd134349134379%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest134344134354%_)))
                      (_%tl134350134381%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest134344134354%_))))
                  (let ((_%key134384%_ _%hd134349134379%_))
                    (if (pair? _%tl134350134381%_)
                        (let ((_%hd134351134386%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl134350134381%_)))
                              (_%tl134352134388%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl134350134381%_))))
                          (let* ((_%val134391%_ _%hd134351134386%_)
                                 (_%rest134393%_ _%tl134352134388%_))
                            (_%K134348134376%_
                             _%rest134393%_
                             _%val134391%_
                             _%key134384%_)))
                        (_%else134346134362%_))))
                (_%else134346134362%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass134333%_ _%obj134334%_ _%args134335%_)
        (apply call-method
               _%klass134333%_
               'instance-init!
               _%obj134334%_
               _%args134335%_)))
    (define __constructor-init!
      (lambda (_%klass134302%_
               _%kons-id134303%_
               _%obj134304%_
               .
               _%args134305%_)
        (let* ((_%klass134308%_ _%klass134302%_)
               (_%kons-id134316%_ _%kons-id134303%_)
               (_%obj134324%_ _%obj134304%_))
          (___constructor-init!
           _%klass134308%_
           _%kons-id134316%_
           _%obj134324%_
           _%args134305%_)
          '#!void)))
    (define constructor-init!
      (lambda (_%klass128875%_
               _%kons-id128876%_
               _%obj128877%_
               .
               _%args128878%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass128875%_ 'class))
            (let ((_%klass128882%_ _%klass128875%_))
              (if (symbol? _%kons-id128876%_)
                  (let ((_%kons-id128892%_ _%kons-id128876%_))
                    (if (object? _%obj128877%_)
                        (let ((_%obj128902%_ _%obj128877%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass128882%_
                                   _%kons-id128892%_
                                   _%obj128902%_
                                   _%args128878%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@930.63-930.66"
                           'contract:
                           'object?
                           'value:
                           _%obj128877%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@930.43-930.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id128876%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@930.26-930.31"
               'contract:
               'class-type?
               'value:
               _%klass128875%_)
              '#!void))))
    (define ___constructor-init!
      (lambda (_%klass134291%_ _%kons-id134292%_ _%obj134293%_ _%args134294%_)
        (let ((_%$e134296%_
               (__find-method
                _%klass134291%_
                _%obj134293%_
                _%kons-id134292%_)))
          (if _%$e134296%_
              (let ()
                (apply _%$e134296%_ _%obj134293%_ _%args134294%_)
                _%obj134293%_)
              (error '"missing constructor"
                     'class:
                     _%klass134291%_
                     'method:
                     _%kons-id134292%_)))))
    (define __struct-copy
      (lambda (_%struct134279%_)
        (let ((_%struct134282%_ _%struct134279%_))
          (declare (not safe))
          (##structure-copy _%struct134282%_))))
    (define struct-copy
      (lambda (_%struct129032%_)
        (if (object? _%struct129032%_)
            (let ((_%struct129036%_ _%struct129032%_))
              (__struct-copy _%struct129036%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@944.20-944.26"
               'contract:
               'object?
               'value:
               _%struct129032%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj134260%_)
        (let* ((_%obj134263%_ _%obj134260%_)
               (_%len134272%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj134263%_))))
          (let _%recur134274%_ ((_%i134276%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i134276%_ _%len134272%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj134263%_
                         _%i134276%_
                         '#f
                         '#f))
                      (_%recur134274%_
                       (let () (declare (not safe)) (##fx+ _%i134276%_ '1))))
                '())))))
    (define struct->list
      (lambda (_%obj129166%_)
        (if (object? _%obj129166%_)
            (let ((_%obj129170%_ _%obj129166%_))
              (__struct->list _%obj129170%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@947.21-947.24"
               'contract:
               'object?
               'value:
               _%obj129166%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj134212%_)
        (let* ((_%obj134215%_ _%obj134212%_)
               (_%klass134224%_
                (let () (declare (not safe)) (##structure-type _%obj134215%_)))
               (_%slot-vector134226%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass134224%_ '7 '#f '#f))))
          (let _%loop134228%_ ((_%index134230%_
                                (let ((__tmp140344
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector134226%_))))
                                  (declare (not safe))
                                  (##fx- __tmp140344 '1)))
                               (_%plist134231%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index134230%_ '1))
                (cons _%klass134224%_ _%plist134231%_)
                (let ((_%slot134234%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector134226%_
                          _%index134230%_))))
                  (_%loop134228%_
                   (let () (declare (not safe)) (##fx- _%index134230%_ '1))
                   (cons (let ((_%sym134236%_ _%slot134234%_))
                           (if (symbol? _%sym134236%_)
                               (let ((_%sym134241%_ _%sym134236%_))
                                 (declare (not safe))
                                 (__symbol->keyword _%sym134241%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  'symbol?
                                  'value:
                                  _%sym134236%_)
                                 '#!void)))
                         (cons (unchecked-field-ref
                                _%obj134215%_
                                _%index134230%_)
                               _%plist134231%_)))))))))
    (define class->list
      (lambda (_%obj129300%_)
        (if (object? _%obj129300%_)
            (let ((_%obj129304%_ _%obj129300%_)) (__class->list _%obj129304%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@955.20-955.23"
               'contract:
               'object?
               'value:
               _%obj129300%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj134162%_ _%id134163%_ . _%args134164%_)
        (let* ((_%id134167%_ _%id134163%_)
               (_%$e134198%_
                (let* ((_%obj134176%_ _%obj134162%_)
                       (_%id134179%_ _%id134167%_)
                       (_%id134184%_ _%id134179%_))
                  (__method-ref _%obj134176%_ _%id134184%_))))
          (if _%$e134198%_
              (let ((_%method134203%_ _%$e134198%_))
                (apply _%method134203%_ _%obj134162%_ _%args134164%_))
              (error '"cannot find method"
                     'object:
                     _%obj134162%_
                     'method:
                     _%id134167%_)))))
    (define call-method
      (lambda (_%obj129434%_ _%id129435%_ . _%args129436%_)
        (if (symbol? _%id129435%_)
            (let ((_%id129440%_ _%id129435%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj129434%_
                       _%id129440%_
                       _%args129436%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@970.24-970.26"
               'contract:
               'symbol?
               'value:
               _%id129435%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj134113%_ _%id134114%_)
        (let* ((_%id134117%_ _%id134114%_)
               (_%klass134126%_ (class-of _%obj134113%_))
               (_%obj134129%_ _%obj134113%_)
               (_%id134132%_ _%id134117%_)
               (_%klass134137%_ _%klass134126%_)
               (_%id134152%_ _%id134132%_))
          (__find-method _%klass134137%_ _%obj134129%_ _%id134152%_))))
    (define method-ref
      (lambda (_%obj129570%_ _%id129571%_)
        (if (symbol? _%id129571%_)
            (let ((_%id129575%_ _%id129571%_))
              (__method-ref _%obj129570%_ _%id129575%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@997.23-997.25"
               'contract:
               'symbol?
               'value:
               _%id129571%_)
              '#!void))))
    (define checked-method-ref
      (lambda (_%obj134085%_ _%id134086%_)
        (let ((_%$e134110%_
               (let* ((_%obj134089%_ _%obj134085%_)
                      (_%id134092%_ _%id134086%_))
                 (if (symbol? _%id134092%_)
                     (let ((_%id134097%_ _%id134092%_))
                       (__method-ref _%obj134089%_ _%id134097%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id134092%_)
                       '#!void)))))
          (if _%$e134110%_
              _%$e134110%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj134085%_
                       'method:
                       _%id134086%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj134034%_ _%id134035%_)
        (let* ((_%id134038%_ _%id134035%_)
               (_%$e134069%_
                (let* ((_%obj134047%_ _%obj134034%_)
                       (_%id134050%_ _%id134038%_)
                       (_%id134055%_ _%id134050%_))
                  (__method-ref _%obj134047%_ _%id134055%_))))
          (if _%$e134069%_
              (let ((_%method134074%_ _%$e134069%_))
                (lambda _%args134082%_
                  (apply _%method134074%_ _%obj134034%_ _%args134082%_)))
              '#f))))
    (define bound-method-ref
      (lambda (_%obj129705%_ _%id129706%_)
        (if (symbol? _%id129706%_)
            (let ((_%id129710%_ _%id129706%_))
              (__bound-method-ref _%obj129705%_ _%id129710%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1005.29-1005.31"
               'contract:
               'symbol?
               'value:
               _%id129706%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj134017%_ _%id134018%_)
        (let* ((_%id134021%_ _%id134018%_)
               (_%method134030%_
                (checked-method-ref _%obj134017%_ _%id134021%_)))
          (lambda _%args134032%_
            (apply _%method134030%_ _%obj134017%_ _%args134032%_)))))
    (define checked-bound-method-ref
      (lambda (_%obj129840%_ _%id129841%_)
        (if (symbol? _%id129841%_)
            (let ((_%id129845%_ _%id129841%_))
              (__checked-bound-method-ref _%obj129840%_ _%id129845%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1014.37-1014.39"
               'contract:
               'symbol?
               'value:
               _%id129841%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass133886%_ _%obj133887%_ _%id133888%_)
        (let* ((_%klass133891%_ _%klass133886%_) (_%id133899%_ _%id133888%_))
          (if (let* ((_%klass133908%_ _%klass133891%_)
                     (_%klass133913%_ _%klass133908%_))
                (__class-type-sealed? _%klass133913%_))
              (let ((_%tab133943%_
                     (let* ((_%klass133927%_ _%klass133891%_)
                            (_%klass133932%_ _%klass133927%_))
                       (__specialize-class _%klass133932%_))))
                (declare (not safe))
                (symbolic-table-ref _%tab133943%_ _%id133899%_ '#f))
              (let ((_%$e133978%_
                     (let* ((_%klass133945%_ _%klass133891%_)
                            (_%obj133948%_ _%obj133887%_)
                            (_%id133951%_ _%id133899%_)
                            (_%klass133956%_ _%klass133945%_)
                            (_%id133968%_ _%id133951%_))
                       (__direct-method-ref
                        _%klass133956%_
                        _%obj133948%_
                        _%id133968%_))))
                (if _%$e133978%_
                    _%$e133978%_
                    (let* ((_%klass133982%_ _%klass133891%_)
                           (_%obj133985%_ _%obj133887%_)
                           (_%id133988%_ _%id133899%_)
                           (_%klass133993%_ _%klass133982%_)
                           (_%id134007%_ _%id133988%_))
                      (__mixin-method-ref
                       _%klass133993%_
                       _%obj133985%_
                       _%id134007%_))))))))
    (define find-method
      (lambda (_%klass129975%_ _%obj129976%_ _%id129977%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass129975%_ 'class))
            (let ((_%klass129981%_ _%klass129975%_))
              (if (symbol? _%id129977%_)
                  (let ((_%id129991%_ _%id129977%_))
                    (__find-method _%klass129981%_ _%obj129976%_ _%id129991%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1019.41-1019.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id129977%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1019.20-1019.25"
               'contract:
               'class-type?
               'value:
               _%klass129975%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins133831%_ _%obj133832%_ _%id133833%_)
        (let* ((_%id133836%_ _%id133833%_)
               (__tmp140345
                (lambda (_%g133844133846%_)
                  (let* ((_%klass133849%_ _%g133844133846%_)
                         (_%obj133852%_ _%obj133832%_)
                         (_%id133855%_ _%id133836%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass133849%_ 'class))
                        (let* ((_%klass133860%_ _%klass133849%_)
                               (_%id133876%_ _%id133855%_))
                          (__direct-method-ref
                           _%klass133860%_
                           _%obj133852%_
                           _%id133876%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass133849%_)
                          '#!void))))))
          (declare (not safe))
          (ormap__0 __tmp140345 _%mixins133831%_))))
    (define mixin-find-method
      (lambda (_%mixins130121%_ _%obj130122%_ _%id130123%_)
        (if (symbol? _%id130123%_)
            (let ((_%id130127%_ _%id130123%_))
              (__mixin-find-method
               _%mixins130121%_
               _%obj130122%_
               _%id130127%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1028.37-1028.39"
               'contract:
               'symbol?
               'value:
               _%id130123%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass133724%_ _%obj133725%_ _%id133726%_)
        (let* ((_%klass133729%_ _%klass133724%_) (_%id133737%_ _%id133726%_))
          (letrec ((_%metaclass-resolve-method133746%_
                    (lambda ()
                      (let* ((_%obj133807%_ _%klass133729%_)
                             (_%id133810%_ 'direct-method-ref)
                             (_%args133813%_ (list _%obj133725%_ _%id133737%_))
                             (_%id133818%_ _%id133810%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj133807%_
                                 _%id133818%_
                                 _%args133813%_))))
                   (_%metaclass-resolve-method!133747%_
                    (lambda ()
                      (let ((_%method133804%_
                             (_%metaclass-resolve-method133746%_)))
                        (let ((__tmp140347
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass133729%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp140346
                               (if _%method133804%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp140347
                           _%id133737%_
                           __tmp140346))
                        _%method133804%_))))
            (let ((_%$e133749%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass133729%_ '11 '#f '#f))))
              (if _%$e133749%_
                  (let ((_%method133754%_
                         (let ()
                           (declare (not safe))
                           (symbolic-table-ref
                            _%$e133749%_
                            _%id133737%_
                            '#f))))
                    (if (procedure? _%method133754%_)
                        _%method133754%_
                        (if (let* ((_%klass133757%_ _%klass133729%_)
                                   (_%klass133762%_ _%klass133757%_))
                              (__class-type-metaclass? _%klass133762%_))
                            (let ((_%$e133780%_ _%method133754%_))
                              (if (eq? 'resolved _%$e133780%_)
                                  (_%metaclass-resolve-method133746%_)
                                  (if (eq? 'unknown _%$e133780%_)
                                      '#f
                                      (_%metaclass-resolve-method!133747%_))))
                            '#f)))
                  (if (let* ((_%klass133784%_ _%klass133729%_)
                             (_%klass133789%_ _%klass133784%_))
                        (__class-type-metaclass? _%klass133789%_))
                      (let ((_%tab133800%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass133729%_
                           _%tab133800%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!133747%_))
                      '#f)))))))
    (define direct-method-ref
      (lambda (_%klass130257%_ _%obj130258%_ _%id130259%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass130257%_ 'class))
            (let ((_%klass130263%_ _%klass130257%_))
              (if (symbol? _%id130259%_)
                  (let ((_%id130273%_ _%id130259%_))
                    (__direct-method-ref
                     _%klass130263%_
                     _%obj130258%_
                     _%id130273%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1031.47-1031.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id130259%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1031.26-1031.31"
               'contract:
               'class-type?
               'value:
               _%klass130257%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass133676%_ _%obj133677%_ _%id133678%_)
        (let* ((_%klass133681%_ _%klass133676%_)
               (_%id133689%_ _%id133678%_)
               (_%mixins133698%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass133681%_ '6 '#f '#f)))
               (_%obj133701%_ _%obj133677%_)
               (_%id133704%_ _%id133689%_)
               (_%id133709%_ _%id133704%_))
          (__mixin-find-method _%mixins133698%_ _%obj133701%_ _%id133709%_))))
    (define mixin-method-ref
      (lambda (_%klass130403%_ _%obj130404%_ _%id130405%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass130403%_ 'class))
            (let ((_%klass130409%_ _%klass130403%_))
              (if (symbol? _%id130405%_)
                  (let ((_%id130419%_ _%id130405%_))
                    (__mixin-method-ref
                     _%klass130409%_
                     _%obj130404%_
                     _%id130419%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1061.46-1061.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id130405%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1061.25-1061.30"
               'contract:
               'class-type?
               'value:
               _%klass130403%_)
              '#!void))))
    (define __bind-method!__%
      (lambda (_%klass133557%_ _%id133558%_ _%proc133559%_ _%rebind?133560%_)
        (let* ((_%id133563%_ _%id133558%_) (_%proc133571%_ _%proc133559%_))
          (letrec ((_%flush-caches!133580%_
                    (lambda (_%klass133634%_)
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%klass133634%_
                             '12
                             '#f
                             '#f))
                          (begin
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-set!
                               _%klass133634%_
                               '#f
                               '12
                               '#f
                               '#f))
                            (if (let ((_%klass133636%_ _%klass133634%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass133636%_
                                         'class))
                                      (let ((_%klass133641%_ _%klass133636%_))
                                        (__class-type-sealed? _%klass133641%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass133636%_)
                                        '#!void)))
                                (let ((__tmp140348
                                       (let ((__tmp140350
                                              (let ()
                                                (declare (not safe))
                                                (##fxnot class-type-flag-sealed)))
                                             (__tmp140349
                                              (let ()
                                                (declare (not safe))
                                                (##type-flags
                                                 _%klass133634%_))))
                                         (declare (not safe))
                                         (##fxand __tmp140350 __tmp140349))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _%klass133634%_
                                   __tmp140348
                                   '3
                                   class::t
                                   bind-method!))
                                '#!void))
                          '#!void)
                      (if (and _%rebind?133560%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass133634%_
                                  '13
                                  '#f
                                  '#f)))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _%klass133634%_
                             '#f
                             '13
                             '#f
                             '#f))
                          '#!void)
                      (let ((_%$e133652%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%klass133634%_
                                '9
                                '#f
                                '#f))))
                        (if _%$e133652%_
                            (let ((_%$e133657%_
                                   (let ()
                                     (declare (not safe))
                                     (agetq__0 'subclasses: _%$e133652%_))))
                              (if _%$e133657%_
                                  (for-each
                                   _%flush-caches!133580%_
                                   _%$e133657%_)
                                  '#!void))
                            '#!void))))
                   (_%bind!133581%_
                    (lambda (_%ht133632%_)
                      (if (and (not _%rebind?133560%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht133632%_
                                  _%id133563%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass133557%_
                                 'method:
                                 _%id133563%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht133632%_
                               _%id133563%_
                               _%proc133571%_))
                            (_%flush-caches!133580%_ _%klass133557%_)
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass133557%_ 'class))
                (let ((_%ht133584%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass133557%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht133584%_
                      (_%bind!133581%_ _%ht133584%_)
                      (let ((_%ht133586%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass133557%_
                           _%ht133586%_
                           '11
                           '#f
                           '#f))
                        (_%bind!133581%_ _%ht133586%_))))
                (if (let () (declare (not safe)) (##type? _%klass133557%_))
                    (let* ((_%klass133589%_
                            (__shadow-class__0 _%klass133557%_))
                           (_%id133592%_ _%id133563%_)
                           (_%proc133595%_ _%proc133571%_)
                           (_%rebind?133598%_ _%rebind?133560%_)
                           (_%id133603%_ _%id133592%_)
                           (_%proc133621%_ _%proc133595%_))
                      (__bind-method!__%
                       _%klass133589%_
                       _%id133603%_
                       _%proc133621%_
                       _%rebind?133598%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass133557%_)))))))
    (define __bind-method!__0
      (lambda (_%klass133665%_ _%id133666%_ _%proc133667%_)
        (let ((_%rebind?133669%_ '#f))
          (__bind-method!__%
           _%klass133665%_
           _%id133666%_
           _%proc133667%_
           _%rebind?133669%_))))
    (define __bind-method!
      (lambda _g140351_
        (let ((_g140352_ (let () (declare (not safe)) (##length _g140351_))))
          (cond ((let () (declare (not safe)) (##fx= _g140352_ 3))
                 (apply __bind-method!__0 _g140351_))
                ((let () (declare (not safe)) (##fx= _g140352_ 4))
                 (apply __bind-method!__% _g140351_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g140351_))))))
    (define bind-method!__%
      (lambda (_%klass130550%_ _%id130551%_ _%proc130552%_ _%rebind?130553%_)
        (if (symbol? _%id130551%_)
            (let ((_%id130557%_ _%id130551%_))
              (if (procedure? _%proc130552%_)
                  (let ((_%proc130567%_ _%proc130552%_))
                    (__bind-method!__%
                     _%klass130550%_
                     _%id130557%_
                     _%proc130567%_
                     _%rebind?130553%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1064.42-1064.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc130552%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1064.27-1064.29"
               'contract:
               'symbol?
               'value:
               _%id130551%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass130580%_ _%id130581%_ _%proc130582%_)
        (let ((_%rebind?130584%_ '#f))
          (bind-method!__%
           _%klass130580%_
           _%id130581%_
           _%proc130582%_
           _%rebind?130584%_))))
    (define bind-method!
      (lambda _g140353_
        (let ((_g140354_ (let () (declare (not safe)) (##length _g140353_))))
          (cond ((let () (declare (not safe)) (##fx= _g140354_ 3))
                 (apply bind-method!__0 _g140353_))
                ((let () (declare (not safe)) (##fx= _g140354_ 4))
                 (apply bind-method!__% _g140353_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g140353_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint133538%_ _%seed133539%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint133538%_
           procedure-hash
           eq?
           _%seed133539%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint133545%_ '#f) (_%seed133547%_ '0))
          (make-method-specializer-table__%
           _%size-hint133545%_
           _%seed133547%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint133549%_)
        (let ((_%seed133551%_ '0))
          (make-method-specializer-table__%
           _%size-hint133549%_
           _%seed133551%_))))
    (define make-method-specializer-table
      (lambda _g140355_
        (let ((_g140356_ (let () (declare (not safe)) (##length _g140355_))))
          (cond ((let () (declare (not safe)) (##fx= _g140356_ 0))
                 (apply make-method-specializer-table__0 _g140355_))
                ((let () (declare (not safe)) (##fx= _g140356_ 1))
                 (apply make-method-specializer-table__1 _g140355_))
                ((let () (declare (not safe)) (##fx= _g140356_ 2))
                 (apply make-method-specializer-table__% _g140355_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g140355_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint133518%_ _%seed133520%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint133518%_
           procedure-hash
           eq?
           _%seed133520%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint133526%_ '#f) (_%seed133528%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint133526%_
           _%seed133528%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint133530%_)
        (let ((_%seed133532%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint133530%_
           _%seed133532%_))))
    (define make-method-specializer-table/lock
      (lambda _g140357_
        (let ((_g140358_ (let () (declare (not safe)) (##length _g140357_))))
          (cond ((let () (declare (not safe)) (##fx= _g140358_ 0))
                 (apply make-method-specializer-table/lock__0 _g140357_))
                ((let () (declare (not safe)) (##fx= _g140358_ 1))
                 (apply make-method-specializer-table/lock__1 _g140357_))
                ((let () (declare (not safe)) (##fx= _g140358_ 2))
                 (apply make-method-specializer-table/lock__% _g140357_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g140357_))))))
    (define method-specializer-table-ref
      (lambda (_%tab133471%_ _%key133472%_ _%default133473%_)
        (let ((_%table133475%_
               (let () (declare (not safe)) (&raw-table-table _%tab133471%_)))
              (_%seed133476%_
               (let () (declare (not safe)) (&raw-table-seed _%tab133471%_))))
          (let* ((_%h133478%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key133472%_))
                         _%seed133476%_))
                 (_%size133481%_ (vector-length _%table133475%_))
                 (_%entries133484%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size133481%_ '2)))
                 (_%start133487%_
                  (let ((__tmp140359
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h133478%_ _%entries133484%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp140359 '1))))
            (let _%loop133491%_ ((_%probe133494%_ _%start133487%_)
                                 (_%i133496%_ '1)
                                 (_%deleted133498%_ '#f))
              (let ((_%k133501%_ (vector-ref _%table133475%_ _%probe133494%_)))
                (if (eq? _%k133501%_ (macro-unused-obj))
                    _%default133473%_
                    (if (eq? _%k133501%_ (macro-deleted-obj))
                        (_%loop133491%_
                         (let ((_%next-probe133506%_
                                (fx+ _%start133487%_
                                     _%i133496%_
                                     (fx* _%i133496%_ _%i133496%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe133506%_ _%size133481%_))
                         (let () (declare (not safe)) (##fx+ _%i133496%_ '1))
                         (let ((_%$e133509%_ _%deleted133498%_))
                           (if _%$e133509%_ _%$e133509%_ _%probe133494%_)))
                        (if (eq? _%key133472%_ _%k133501%_)
                            (vector-ref
                             _%table133475%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe133494%_ '1)))
                            (_%loop133491%_
                             (let ((_%next-probe133514%_
                                    (fx+ _%start133487%_
                                         _%i133496%_
                                         (fx* _%i133496%_ _%i133496%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe133514%_
                                _%size133481%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i133496%_ '1))
                             _%deleted133498%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab133442%_ _%key133443%_ _%default133444%_)
        (let ((_%lock133446%_
               (let () (declare (not safe)) (&raw-table-lock _%tab133442%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again133451%_ ((_%spin133454%_ '0))
              (if (let ((__tmp140360
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock133446%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp140360 '0))
                  (let ((__tmp140361 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock133446%_ '1 __tmp140361))
                  (if (let () (declare (not safe)) (##fx< _%spin133454%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again133451%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin133454%_ '1))))
                      (let ((_%owner133460%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock133446%_ '1))))
                        (if (eq? _%owner133460%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner133460%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again133451%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r133466%_
                 (method-specializer-table-ref
                  _%tab133442%_
                  _%key133443%_
                  _%default133444%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock133446%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock133446%_ '0 '0 '1))))
            _%$r133466%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab133394%_ _%key133395%_ _%value133396%_)
        (let ((_%table133398%_
               (let () (declare (not safe)) (&raw-table-table _%tab133394%_)))
              (_%seed133399%_
               (let () (declare (not safe)) (&raw-table-seed _%tab133394%_))))
          (let* ((_%h133401%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key133395%_))
                         _%seed133399%_))
                 (_%size133404%_ (vector-length _%table133398%_))
                 (_%entries133407%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size133404%_ '2)))
                 (_%start133410%_
                  (let ((__tmp140362
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h133401%_ _%entries133407%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp140362 '1))))
            (let _%loop133414%_ ((_%probe133417%_ _%start133410%_)
                                 (_%i133419%_ '1)
                                 (_%deleted133421%_ '#f))
              (let ((_%k133424%_ (vector-ref _%table133398%_ _%probe133417%_)))
                (if (eq? _%k133424%_ (macro-unused-obj))
                    (if _%deleted133421%_
                        (begin
                          (vector-set!
                           _%table133398%_
                           _%deleted133421%_
                           _%key133395%_)
                          (vector-set!
                           _%table133398%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted133421%_ '1))
                           _%value133396%_)
                          (let ((__tmp140363
                                 (let ((__tmp140364
                                        (let ()
                                          (declare (not safe))
                                          (&raw-table-count _%tab133394%_))))
                                   (declare (not safe))
                                   (##fx+ __tmp140364 '1))))
                            (declare (not safe))
                            (&raw-table-count-set! _%tab133394%_ __tmp140363)))
                        (begin
                          (vector-set!
                           _%table133398%_
                           _%probe133417%_
                           _%key133395%_)
                          (vector-set!
                           _%table133398%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe133417%_ '1))
                           _%value133396%_)
                          (let ()
                            (let ((__tmp140365
                                   (let ((__tmp140366
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-free _%tab133394%_))))
                                     (declare (not safe))
                                     (##fx- __tmp140366 '1))))
                              (declare (not safe))
                              (&raw-table-free-set! _%tab133394%_ __tmp140365))
                            (let ((__tmp140367
                                   (let ((__tmp140368
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-count _%tab133394%_))))
                                     (declare (not safe))
                                     (##fx+ __tmp140368 '1))))
                              (declare (not safe))
                              (&raw-table-count-set!
                               _%tab133394%_
                               __tmp140367)))))
                    (if (eq? _%k133424%_ (macro-deleted-obj))
                        (_%loop133414%_
                         (let ((_%next-probe133431%_
                                (fx+ _%start133410%_
                                     _%i133419%_
                                     (fx* _%i133419%_ _%i133419%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe133431%_ _%size133404%_))
                         (let () (declare (not safe)) (##fx+ _%i133419%_ '1))
                         (let ((_%$e133434%_ _%deleted133421%_))
                           (if _%$e133434%_ _%$e133434%_ _%probe133417%_)))
                        (if (eq? _%key133395%_ _%k133424%_)
                            (let ()
                              (vector-set!
                               _%table133398%_
                               _%probe133417%_
                               _%key133395%_)
                              (vector-set!
                               _%table133398%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe133417%_ '1))
                               _%value133396%_))
                            (_%loop133414%_
                             (let ((_%next-probe133439%_
                                    (fx+ _%start133410%_
                                         _%i133419%_
                                         (fx* _%i133419%_ _%i133419%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe133439%_
                                _%size133404%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i133419%_ '1))
                             _%deleted133421%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab133390%_ _%key133391%_ _%value133392%_)
        (if (let ((__tmp140371
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab133390%_)))
                  (__tmp140369
                   (let ((__tmp140370
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab133390%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp140370 '4))))
              (declare (not safe))
              (##fx< __tmp140371 __tmp140369))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab133390%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab133390%_
         _%key133391%_
         _%value133392%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab133360%_ _%key133361%_ _%value133362%_)
        (let ((_%lock133365%_
               (let () (declare (not safe)) (&raw-table-lock _%tab133360%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again133370%_ ((_%spin133373%_ '0))
              (if (let ((__tmp140372
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock133365%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp140372 '0))
                  (let ((__tmp140373 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock133365%_ '1 __tmp140373))
                  (if (let () (declare (not safe)) (##fx< _%spin133373%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again133370%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin133373%_ '1))))
                      (let ((_%owner133379%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock133365%_ '1))))
                        (if (eq? _%owner133379%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner133379%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again133370%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r133385%_
                 (method-specializer-table-set!
                  _%tab133360%_
                  _%key133361%_
                  _%value133362%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock133365%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock133365%_ '0 '0 '1))))
            _%$r133385%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab133311%_
               _%key133312%_
               _%method-specializer-table-update!133313%_
               _%default133314%_)
        (let ((_%table133316%_
               (let () (declare (not safe)) (&raw-table-table _%tab133311%_)))
              (_%seed133317%_
               (let () (declare (not safe)) (&raw-table-seed _%tab133311%_))))
          (let* ((_%h133319%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key133312%_))
                         _%seed133317%_))
                 (_%size133322%_ (vector-length _%table133316%_))
                 (_%entries133325%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size133322%_ '2)))
                 (_%start133328%_
                  (let ((__tmp140374
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h133319%_ _%entries133325%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp140374 '1))))
            (let _%loop133332%_ ((_%probe133335%_ _%start133328%_)
                                 (_%i133337%_ '1)
                                 (_%deleted133339%_ '#f))
              (let ((_%k133342%_ (vector-ref _%table133316%_ _%probe133335%_)))
                (if (eq? _%k133342%_ (macro-unused-obj))
                    (if _%deleted133339%_
                        (begin
                          (vector-set!
                           _%table133316%_
                           _%deleted133339%_
                           _%key133312%_)
                          (vector-set!
                           _%table133316%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted133339%_ '1))
                           (_%method-specializer-table-update!133313%_
                            _%default133314%_))
                          (let ((__tmp140375
                                 (let ((__tmp140376
                                        (let ()
                                          (declare (not safe))
                                          (&raw-table-count _%tab133311%_))))
                                   (declare (not safe))
                                   (##fx+ __tmp140376 '1))))
                            (declare (not safe))
                            (&raw-table-count-set! _%tab133311%_ __tmp140375)))
                        (begin
                          (vector-set!
                           _%table133316%_
                           _%probe133335%_
                           _%key133312%_)
                          (vector-set!
                           _%table133316%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe133335%_ '1))
                           (_%method-specializer-table-update!133313%_
                            _%default133314%_))
                          (let ()
                            (let ((__tmp140377
                                   (let ((__tmp140378
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-free _%tab133311%_))))
                                     (declare (not safe))
                                     (##fx- __tmp140378 '1))))
                              (declare (not safe))
                              (&raw-table-free-set! _%tab133311%_ __tmp140377))
                            (let ((__tmp140379
                                   (let ((__tmp140380
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-count _%tab133311%_))))
                                     (declare (not safe))
                                     (##fx+ __tmp140380 '1))))
                              (declare (not safe))
                              (&raw-table-count-set!
                               _%tab133311%_
                               __tmp140379)))))
                    (if (eq? _%k133342%_ (macro-deleted-obj))
                        (_%loop133332%_
                         (let ((_%next-probe133349%_
                                (fx+ _%start133328%_
                                     _%i133337%_
                                     (fx* _%i133337%_ _%i133337%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe133349%_ _%size133322%_))
                         (let () (declare (not safe)) (##fx+ _%i133337%_ '1))
                         (let ((_%$e133352%_ _%deleted133339%_))
                           (if _%$e133352%_ _%$e133352%_ _%probe133335%_)))
                        (if (eq? _%key133312%_ _%k133342%_)
                            (let ()
                              (vector-set!
                               _%table133316%_
                               _%probe133335%_
                               _%key133312%_)
                              (vector-set!
                               _%table133316%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe133335%_ '1))
                               (_%method-specializer-table-update!133313%_
                                (vector-ref
                                 _%table133316%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe133335%_ '1))))))
                            (_%loop133332%_
                             (let ((_%next-probe133357%_
                                    (fx+ _%start133328%_
                                         _%i133337%_
                                         (fx* _%i133337%_ _%i133337%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe133357%_
                                _%size133322%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i133337%_ '1))
                             _%deleted133339%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab133306%_
               _%key133307%_
               _%method-specializer-table-update!133308%_
               _%default133309%_)
        (if (let ((__tmp140383
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab133306%_)))
                  (__tmp140381
                   (let ((__tmp140382
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab133306%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp140382 '4))))
              (declare (not safe))
              (##fx< __tmp140383 __tmp140381))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab133306%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab133306%_
         _%key133307%_
         _%method-specializer-table-update!133308%_
         _%default133309%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab133275%_
               _%key133276%_
               _%method-specializer-table-update!133277%_
               _%default133278%_)
        (let ((_%lock133281%_
               (let () (declare (not safe)) (&raw-table-lock _%tab133275%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again133286%_ ((_%spin133289%_ '0))
              (if (let ((__tmp140384
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock133281%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp140384 '0))
                  (let ((__tmp140385 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock133281%_ '1 __tmp140385))
                  (if (let () (declare (not safe)) (##fx< _%spin133289%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again133286%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin133289%_ '1))))
                      (let ((_%owner133295%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock133281%_ '1))))
                        (if (eq? _%owner133295%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner133295%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again133286%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r133301%_
                 (_%method-specializer-table-update!133277%_
                  _%tab133275%_
                  _%key133276%_
                  _%method-specializer-table-update!133277%_
                  _%default133278%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock133281%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock133281%_ '0 '0 '1))))
            _%$r133301%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab133232%_ _%key133233%_)
        (let ((_%table133235%_
               (let () (declare (not safe)) (&raw-table-table _%tab133232%_)))
              (_%seed133237%_
               (let () (declare (not safe)) (&raw-table-seed _%tab133232%_))))
          (let* ((_%h133240%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key133233%_))
                         _%seed133237%_))
                 (_%size133243%_ (vector-length _%table133235%_))
                 (_%entries133246%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size133243%_ '2)))
                 (_%start133249%_
                  (let ((__tmp140386
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h133240%_ _%entries133246%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp140386 '1))))
            (let _%loop133253%_ ((_%probe133256%_ _%start133249%_)
                                 (_%i133258%_ '1))
              (let ((_%k133261%_ (vector-ref _%table133235%_ _%probe133256%_)))
                (if (eq? _%k133261%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k133261%_ (macro-deleted-obj))
                        (_%loop133253%_
                         (let ((_%next-probe133266%_
                                (fx+ _%start133249%_
                                     _%i133258%_
                                     (fx* _%i133258%_ _%i133258%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe133266%_ _%size133243%_))
                         (let () (declare (not safe)) (##fx+ _%i133258%_ '1)))
                        (if (eq? _%key133233%_ _%k133261%_)
                            (let ()
                              (vector-set!
                               _%table133235%_
                               _%probe133256%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table133235%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe133256%_ '1))
                               (macro-absent-obj))
                              (let ((__tmp140387
                                     (let ((__tmp140388
                                            (let ()
                                              (declare (not safe))
                                              (&raw-table-count
                                               _%tab133232%_))))
                                       (declare (not safe))
                                       (##fx- __tmp140388 '1))))
                                (declare (not safe))
                                (&raw-table-count-set!
                                 _%tab133232%_
                                 __tmp140387)))
                            (_%loop133253%_
                             (let ((_%next-probe133272%_
                                    (fx+ _%start133249%_
                                         _%i133258%_
                                         (fx* _%i133258%_ _%i133258%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe133272%_
                                _%size133243%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i133258%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab133202%_ _%key133204%_)
        (let ((_%lock133207%_
               (let () (declare (not safe)) (&raw-table-lock _%tab133202%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again133212%_ ((_%spin133215%_ '0))
              (if (let ((__tmp140389
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock133207%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp140389 '0))
                  (let ((__tmp140390 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock133207%_ '1 __tmp140390))
                  (if (let () (declare (not safe)) (##fx< _%spin133215%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again133212%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin133215%_ '1))))
                      (let ((_%owner133221%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock133207%_ '1))))
                        (if (eq? _%owner133221%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner133221%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again133212%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r133227%_
                 (method-specializer-table-delete!
                  _%tab133202%_
                  _%key133204%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock133207%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock133207%_ '0 '0 '1))))
            _%$r133227%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc133199%_ _%specializer133200%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc133199%_
         _%specializer133200%_)))
    (define __lookup-method-specializer
      (lambda (_%proc133197%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc133197%_
         '#f)))
    (define __specialize-class
      (lambda (_%klass133179%_)
        (let* ((_%klass133182%_ _%klass133179%_)
               (_%$e133191%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass133182%_ '12 '#f '#f))))
          (if _%$e133191%_
              _%$e133191%_
              (let ((_%method-table133195%_
                     (___specialize-class _%klass133182%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass133182%_
                   _%method-table133195%_
                   '12
                   '#f
                   '#f))
                _%method-table133195%_)))))
    (define specialize-class
      (lambda (_%klass130711%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass130711%_ 'class))
            (let ((_%klass130715%_ _%klass130711%_))
              (__specialize-class _%klass130715%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1138.25-1138.30"
               'contract:
               'class-type?
               'value:
               _%klass130711%_)
              '#!void))))
    (define __specialize-method
      (lambda (_%klass133163%_
               _%method-table133164%_
               _%method133165%_
               _%proc133166%_)
        (let ((_%$e133168%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table133164%_
                  _%method133165%_
                  '#f))))
          (if _%$e133168%_
              _%$e133168%_
              (let ((_%$e133171%_
                     (__lookup-method-specializer _%proc133166%_)))
                (if _%$e133171%_
                    (let ((_%specialized-proc133176%_
                           (_%$e133171%_
                            _%klass133163%_
                            _%method-table133164%_)))
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table133164%_
                       _%method133165%_
                       _%specialized-proc133176%_))
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table133164%_
                       _%method133165%_
                       _%proc133166%_))))))))
    (define ___specialize-class
      (lambda (_%klass133030%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass133030%_ 'class))
            (if (let* ((_%klass133033%_ _%klass133030%_)
                       (_%klass133038%_ _%klass133033%_))
                  (__class-type-metaclass? _%klass133038%_))
                (let* ((_%obj133050%_ _%klass133030%_)
                       (_%id133053%_ 'specialize-class)
                       (_%args133056%_ '())
                       (_%id133061%_ _%id133053%_))
                  (declare (not safe))
                  (##apply __call-method
                           _%obj133050%_
                           _%id133061%_
                           _%args133056%_))
                (if (let* ((_%pred133074%_ class-type-metaclass?)
                           (_%lst133077%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass133030%_
                               '6
                               '#f
                               '#f)))
                           (_%pred133082%_ _%pred133074%_))
                      (declare (not safe))
                      (__find _%pred133082%_ _%lst133077%_))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass133030%_)
                    (let ((_%method-table133095%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop133097%_ ((_%rest133099%_
                                            (let* ((_%klass133146%_
                                                    _%klass133030%_)
                                                   (_%klass133151%_
                                                    _%klass133146%_))
                                              (__class-precedence-list
                                               _%klass133151%_))))
                        (let* ((_%rest133100133108%_ _%rest133099%_)
                               (_%else133102133116%_
                                (lambda () _%method-table133095%_))
                               (_%K133104133134%_
                                (lambda (_%rest133119%_ _%xklass133120%_)
                                  (let ((_%xmethod-table133121133123%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass133120%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table133121133123%_
                                        (let* ((_%xmethod-table133125%_
                                                _%xmethod-table133121133123%_)
                                               (__tmp140391
                                                (lambda (_%g133126133129%_
                                                         _%g133127133131%_)
                                                  (__specialize-method
                                                   _%klass133030%_
                                                   _%method-table133095%_
                                                   _%g133126133129%_
                                                   _%g133127133131%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table133125%_
                                           __tmp140391))
                                        '#f))
                                  (_%loop133097%_ _%rest133119%_))))
                          (if (pair? _%rest133100133108%_)
                              (let ((_%hd133105133137%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest133100133108%_)))
                                    (_%tl133106133139%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest133100133108%_))))
                                (let* ((_%xklass133142%_ _%hd133105133137%_)
                                       (_%rest133144%_ _%tl133106133139%_))
                                  (_%K133104133134%_
                                   _%rest133144%_
                                   _%xklass133142%_)))
                              (_%else133102133116%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass133030%_))
                (__specialize-class (__shadow-class__0 _%klass133030%_))
                (error '"bad class; cannot specialize" _%klass133030%_)))))
    (define __seal-class!
      (lambda (_%klass132893%_)
        (let ((_%klass132896%_ _%klass132893%_))
          (if (let* ((_%klass132905%_ _%klass132896%_)
                     (_%klass132910%_ _%klass132905%_))
                (__class-type-sealed? _%klass132910%_))
              '#!void
              (begin
                (if (let* ((_%klass132923%_ _%klass132896%_)
                           (_%klass132928%_ _%klass132923%_))
                      (__class-type-metaclass? _%klass132928%_))
                    (let ()
                      (let* ((_%obj132939%_ _%klass132896%_)
                             (_%id132942%_ 'seal-class!)
                             (_%args132945%_ '())
                             (_%id132950%_ _%id132942%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj132939%_
                                 _%id132950%_
                                 _%args132945%_))
                      (let* ((_%klass132963%_ _%klass132896%_)
                             (_%klass132968%_ _%klass132963%_))
                        (__specialize-class _%klass132968%_)))
                    (if (let* ((_%pred132978%_ class-type-metaclass?)
                               (_%lst132981%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass132896%_
                                   '6
                                   '#f
                                   '#f)))
                               (_%pred132986%_ _%pred132978%_))
                          (declare (not safe))
                          (__find _%pred132986%_ _%lst132981%_))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass132896%_)
                        (let* ((_%klass132999%_ _%klass132896%_)
                               (_%klass133004%_ _%klass132999%_))
                          (__specialize-class _%klass133004%_))))
                (let* ((_%klass133015%_ _%klass132896%_)
                       (_%klass133020%_ _%klass133015%_))
                  (__class-type-seal! _%klass133020%_)))))))
    (define seal-class!
      (lambda (_%klass130845%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass130845%_ 'class))
            (let ((_%klass130849%_ _%klass130845%_))
              (__seal-class! _%klass130849%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1184.20-1184.25"
               'contract:
               'class-type?
               'value:
               _%klass130845%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass132781%_ _%obj132782%_ _%id132783%_)
        (let* ((_%subklass132786%_ _%subklass132781%_)
               (_%id132794%_ _%id132783%_))
          (letrec ((_%find-next-method132803%_
                    (lambda (_%klass132805%_)
                      (let _%lp132807%_ ((_%rest132809%_
                                          (let ((_%klass132878%_
                                                 _%klass132805%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%klass132878%_
                                                   'class))
                                                (let ((_%klass132883%_
                                                       _%klass132878%_))
                                                  (__class-precedence-list
                                                   _%klass132883%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/mop
                                                   'contract:
                                                   'class-type?
                                                   'value:
                                                   _%klass132878%_)
                                                  '#!void)))))
                        (let* ((_%rest132810132818%_ _%rest132809%_)
                               (_%else132812132826%_ (lambda () '#f))
                               (_%K132814132866%_
                                (lambda (_%rest132829%_ _%klass132830%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass132786%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass132830%_)))
                                      (let* ((_%mixins132832%_ _%rest132829%_)
                                             (_%obj132835%_ _%obj132782%_)
                                             (_%id132838%_ _%id132794%_)
                                             (_%id132843%_ _%id132838%_))
                                        (__mixin-find-method
                                         _%mixins132832%_
                                         _%obj132835%_
                                         _%id132843%_))
                                      (_%lp132807%_ _%rest132829%_)))))
                          (if (pair? _%rest132810132818%_)
                              (let ((_%hd132815132869%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest132810132818%_)))
                                    (_%tl132816132871%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest132810132818%_))))
                                (let* ((_%klass132874%_ _%hd132815132869%_)
                                       (_%rest132876%_ _%tl132816132871%_))
                                  (_%K132814132866%_
                                   _%rest132876%_
                                   _%klass132874%_)))
                              (_%else132812132826%_)))))))
            (_%find-next-method132803%_ (class-of _%obj132782%_))))))
    (define next-method
      (lambda (_%subklass130979%_ _%obj130980%_ _%id130981%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass130979%_ 'class))
            (let ((_%subklass130985%_ _%subklass130979%_))
              (if (symbol? _%id130981%_)
                  (let ((_%id130995%_ _%id130981%_))
                    (__next-method
                     _%subklass130985%_
                     _%obj130980%_
                     _%id130995%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1206.44-1206.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id130981%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1206.20-1206.28"
               'contract:
               'class-type?
               'value:
               _%subklass130979%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass132716%_ _%obj132717%_ _%id132718%_ . _%args132719%_)
        (let* ((_%subklass132722%_ _%subklass132716%_)
               (_%id132730%_ _%id132718%_)
               (_%$e132775%_
                (let* ((_%subklass132739%_ _%subklass132722%_)
                       (_%obj132742%_ _%obj132717%_)
                       (_%id132745%_ _%id132730%_)
                       (_%subklass132750%_ _%subklass132739%_)
                       (_%id132765%_ _%id132745%_))
                  (__next-method
                   _%subklass132750%_
                   _%obj132742%_
                   _%id132765%_))))
          (if _%$e132775%_
              (apply _%$e132775%_ _%obj132717%_ _%args132719%_)
              (error '"cannot find next method"
                     'object:
                     _%obj132717%_
                     'method:
                     _%id132730%_)))))
    (define call-next-method
      (lambda (_%subklass131125%_ _%obj131126%_ _%id131127%_ . _%args131128%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass131125%_ 'class))
            (let ((_%subklass131132%_ _%subklass131125%_))
              (if (symbol? _%id131127%_)
                  (let ((_%id131142%_ _%id131127%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass131132%_
                             _%obj131126%_
                             _%id131142%_
                             _%args131128%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1217.49-1217.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id131127%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1217.25-1217.33"
               'contract:
               'class-type?
               'value:
               _%subklass131125%_)
              '#!void))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type132495%_ _%properties132496%_)
        (letrec ((_%shadow-type-id132498%_
                  (lambda (_%type132704%_)
                    (let ((__tmp140392
                           (let ()
                             (declare (not safe))
                             (##type-name _%type132704%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp140392 '"::t"))))
                 (_%shadow-type-name132499%_
                  (lambda (_%type132702%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type132702%_))))
                 (_%make-shadow-class132500%_
                  (lambda (_%type132584%_ _%precedence-list132585%_)
                    (let* ((_%super132587%_
                            (if (pair? _%precedence-list132585%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list132585%_))
                                      '())
                                '()))
                           (_%klass132699%_
                            (let* ((_%id132589%_
                                    (_%shadow-type-id132498%_ _%type132584%_))
                                   (_%name132592%_
                                    (let ()
                                      (declare (not safe))
                                      (##type-name _%type132584%_)))
                                   (_%direct-supers132595%_ _%super132587%_)
                                   (_%direct-slots132598%_ '())
                                   (_%properties132624%_
                                    (cons (cons 'struct: '#t)
                                          (cons (cons 'system: '#t)
                                                (cons (cons 'system-type:
                                                            _%type132584%_)
                                                      (let ((__tmp140393
                                                             (if (let ((_%type132601%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%type132584%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##type? _%type132601%_))
                               (let ((_%type132606%_ _%type132601%_))
                                 (__type-extensible? _%type132606%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  '##type?
                                  'value:
                                  _%type132601%_)
                                 '#!void)))
                         '()
                         (cons (cons 'final: '#t) '()))))
                (declare (not safe))
                (foldr__0 cons _%properties132496%_ __tmp140393))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%constructor132627%_ '#f)
                                   (_%id132632%_ _%id132589%_))
                              (if (symbol? _%name132592%_)
                                  (let* ((_%name132643%_ _%name132592%_)
                                         (_%direct-supers132653%_
                                          _%direct-supers132595%_)
                                         (_%direct-slots132663%_
                                          _%direct-slots132598%_)
                                         (_%properties132673%_
                                          _%properties132624%_))
                                    (if (let ((_%$e132685%_ '#t))
                                          (and _%$e132685%_ _%$e132685%_))
                                        (let ((_%constructor132689%_
                                               _%constructor132627%_))
                                          (__make-class-type
                                           _%id132632%_
                                           _%name132643%_
                                           _%direct-supers132653%_
                                           _%direct-slots132663%_
                                           _%properties132673%_
                                           _%constructor132689%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '(? (or not symbol?))
                                           'value:
                                           _%constructor132627%_)
                                          '#!void)))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     'symbol?
                                     'value:
                                     _%name132592%_)
                                    '#!void)))))
                      (let ((__tmp140394
                             (let ()
                               (declare (not safe))
                               (##type-id _%type132584%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp140394
                         _%klass132699%_))
                      _%klass132699%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again132504%_ ((_%spin132507%_ '0))
              (if (let ((__tmp140395
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp140395 '0))
                  (let ((__tmp140396 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp140396))
                  (if (let () (declare (not safe)) (##fx< _%spin132507%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again132504%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin132507%_ '1))))
                      (let ((_%owner132513%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner132513%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner132513%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again132504%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e132519%_
                 (let ((__tmp140397
                        (let ()
                          (declare (not safe))
                          (##type-id _%type132495%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp140397 '#f))))
            (if _%$e132519%_
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
                  _%$e132519%_)
                (let _%loop132527%_ ((_%super132529%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type132495%_)))
                                     (_%hierarchy132530%_ '()))
                  (if (not _%super132529%_)
                      (let _%loop132533%_ ((_%rest132535%_ _%hierarchy132530%_)
                                           (_%precedence-list132536%_ '()))
                        (let* ((_%rest132537132545%_ _%rest132535%_)
                               (_%else132539132557%_
                                (lambda ()
                                  (let ((_%klass132553%_
                                         (_%make-shadow-class132500%_
                                          _%type132495%_
                                          _%precedence-list132536%_)))
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
                                    _%klass132553%_)))
                               (_%K132541132571%_
                                (lambda (_%rest132560%_ _%type132561%_)
                                  (let ((_%$e132563%_
                                         (let ((__tmp140398
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type132561%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp140398
                                            '#f))))
                                    (if _%$e132563%_
                                        (_%loop132533%_
                                         _%rest132560%_
                                         (cons _%$e132563%_
                                               _%precedence-list132536%_))
                                        (let ((_%klass132569%_
                                               (_%make-shadow-class132500%_
                                                _%type132561%_
                                                _%precedence-list132536%_)))
                                          (_%loop132533%_
                                           _%rest132560%_
                                           (cons _%klass132569%_
                                                 _%precedence-list132536%_))))))))
                          (if (pair? _%rest132537132545%_)
                              (let ((_%hd132542132574%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest132537132545%_)))
                                    (_%tl132543132576%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest132537132545%_))))
                                (let* ((_%type132579%_ _%hd132542132574%_)
                                       (_%rest132581%_ _%tl132543132576%_))
                                  (_%K132541132571%_
                                   _%rest132581%_
                                   _%type132579%_)))
                              (_%else132539132557%_))))
                      (_%loop132527%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super132529%_))
                       (cons _%super132529%_ _%hierarchy132530%_)))))))))
    (define __shadow-class__0
      (lambda (_%type132709%_)
        (let ((_%properties132711%_ '()))
          (__shadow-class__% _%type132709%_ _%properties132711%_))))
    (define __shadow-class
      (lambda _g140399_
        (let ((_g140400_ (let () (declare (not safe)) (##length _g140399_))))
          (cond ((let () (declare (not safe)) (##fx= _g140400_ 1))
                 (apply __shadow-class__0 _g140399_))
                ((let () (declare (not safe)) (##fx= _g140400_ 2))
                 (apply __shadow-class__% _g140399_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g140399_))))))
    (define __type
      (let* ((_%tb132483%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e132485%_ _%tb132483%_))
        (if (eq? '2 _%$e132485%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e132485%_)
                (let ((_%flonum-self-tagging-tags132488%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits132489%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e132491%_ _%flonum-self-tagging-tags132488%_))
                    (if (eq? '0 _%$e132491%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits132489%_ '2))
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
                        (if (eq? '1 _%$e132491%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits132489%_ '2))
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
                            (if (eq? '2 _%$e132491%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e132491%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e132491%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags132488%_))))))))
                (error '"unexpected tag width" _%tb132483%_)))))
    (define __primitive-class
      (let ((__tmp140401 (vector-length __type)))
        (declare (not safe))
        (##make-vector __tmp140401 '#f)))
    (define __boxvalues-class
      (let () (declare (not safe)) (##make-vector '2 '#f)))
    (define __subtype-class
      (let () (declare (not safe)) (##make-vector '32 '#f)))
    (define __char-class '#f)
    (define __special-class
      (let () (declare (not safe)) (##make-vector '16 '#f)))
    (define __class-of
      (let* ((_%len132373%_ (vector-length __type))
             (_%cv132375%_
              (let () (declare (not safe)) (##make-vector _%len132373%_ '#f))))
        (let _%loop132378%_ ((_%i132380%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i132380%_ _%len132373%_))
              (let* ((_%t132382%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i132380%_)))
                     (_%f132480%_
                      (if (eq? _%t132382%_ 'undefined)
                          (lambda (_%obj132385%_)
                            (error '"object type is undefined" _%obj132385%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t132382%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj132388%_)
                                (declare (not interrupts-enabled) (not safe))
                                (let ((_%$e132391%_
                                       (##vector-ref
                                        __primitive-class
                                        _%i132380%_)))
                                  (if _%$e132391%_
                                      _%$e132391%_
                                      (let ((_%klass132395%_
                                             (__system-class _%t132382%_)))
                                        (##vector-set!
                                         __primitive-class
                                         _%i132380%_
                                         _%klass132395%_)
                                        _%klass132395%_))))
                              (if (eq? _%t132382%_ 'subtyped)
                                  (lambda (_%obj132399%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st132402%_
                                           (##subtype _%obj132399%_)))
                                      (if (##fx= _%st132402%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass132405%_
                                                 (##structure-type
                                                  _%obj132399%_)))
                                            (if (##structure-instance-of?
                                                 _%klass132405%_
                                                 'class)
                                                _%klass132405%_
                                                (__shadow-class__0
                                                 _%klass132405%_)))
                                          (if (##fx= _%st132402%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj132399%_)
                                                         '1)
                                                  (let ((_%$e132408%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '0)))
                                                    (if _%$e132408%_
                                                        _%$e132408%_
                                                        (let ((_%klass132412%_
                                                               (__system-class
                                                                'box)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '0
                                                           _%klass132412%_)
                                                          _%klass132412%_)))
                                                  (let ((_%$e132415%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '1)))
                                                    (if _%$e132415%_
                                                        _%$e132415%_
                                                        (let ((_%klass132419%_
                                                               (__system-class
                                                                'values)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '1
                                                           _%klass132419%_)
                                                          _%klass132419%_))))
                                              (let ((_%$e132422%_
                                                     (##vector-ref
                                                      __subtype-class
                                                      _%st132402%_)))
                                                (if _%$e132422%_
                                                    _%$e132422%_
                                                    (let ((_%klass132439%_
                                                           (let ((_%$e132426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##vector-ref __subtype-id _%st132402%_)))
                     (if _%$e132426%_
                         (let ((_%$e132431%_
                                (##vector-ref __subtype-class _%st132402%_)))
                           (if _%$e132431%_
                               _%$e132431%_
                               (let ((_%klass132435%_
                                      (__system-class _%$e132426%_)))
                                 (##vector-set!
                                  __subtype-class
                                  _%st132402%_
                                  _%klass132435%_)
                                 _%klass132435%_)))
                         (error '"unknown class"
                                'object:
                                _%obj132399%_
                                'subtype:
                                _%st132402%_)))))
              (##vector-set! __subtype-class _%st132402%_ _%klass132439%_)
              _%klass132439%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (eq? _%t132382%_ 'special)
                                      (lambda (_%obj132443%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (let ((_%x132446%_
                                               (##type-cast _%obj132443%_ '0)))
                                          (if (##fx> _%x132446%_ '0)
                                              (let ((_%$e132449%_
                                                     __char-class))
                                                (if _%$e132449%_
                                                    _%$e132449%_
                                                    (let ((_%klass132453%_
                                                           (__system-class
                                                            'char)))
                                                      (set! __char-class
                                                            _%klass132453%_)
                                                      _%klass132453%_)))
                                              (let* ((_%t132456%_
                                                      (##fx- _%x132446%_))
                                                     (_%$e132459%_
                                                      (##vector-ref
                                                       __special-class
                                                       _%t132456%_)))
                                                (if _%$e132459%_
                                                    _%$e132459%_
                                                    (let ((_%klass132477%_
                                                           (if (eq? _%obj132443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                       (__system-class 'null)
                       (if (eq? _%obj132443%_ '#f)
                           (__system-class 'false)
                           (if (eq? _%obj132443%_ '#t)
                               (__system-class 'true)
                               (if (eq? _%obj132443%_ '#!void)
                                   (__system-class 'void)
                                   (if (eq? _%obj132443%_ '#!eof)
                                       (__system-class 'eof)
                                       (if (eq? _%obj132443%_ '#!unbound)
                                           (__system-class 'unbound)
                                           (if (eq? _%obj132443%_ '#!unbound2)
                                               (__system-class 'unbound2)
                                               (if (eq? _%obj132443%_
                                                        '#!optional)
                                                   (__system-class 'optional)
                                                   (if (eq? _%obj132443%_
                                                            '#!rest)
                                                       (__system-class 'rest)
                                                       (if (eq? _%obj132443%_
                                                                '#!key)
                                                           (__system-class
                                                            'key)
                                                           (if (eq? _%obj132443%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (macro-unused-obj))
                       (__system-class 'unused)
                       (if (eq? _%obj132443%_ (macro-deleted-obj))
                           (__system-class 'deleted)
                           (if (eq? _%obj132443%_ (macro-absent-obj))
                               (__system-class 'absent)
                               (__system-class 'unknown))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (##vector-set! __special-class _%t132456%_ _%klass132477%_)
              _%klass132477%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t132382%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv132375%_ _%i132380%_ _%f132480%_))
                (_%loop132378%_
                 (let () (declare (not safe)) (##fx+ _%i132380%_ '1))))
              _%cv132375%_))))
    (define type-of
      (lambda (_%obj132369%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj132369%_)))))
    (define class-of
      (lambda (_%obj132360%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t132364%_ (##type _%obj132360%_))
                 (_%f132366%_ (##vector-ref __class-of _%t132364%_)))
            (_%f132366%_ _%obj132360%_)))))
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
      (lambda (_%id132354%_)
        (let ((_%$e132356%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id132354%_ '#f))))
          (if _%$e132356%_
              _%$e132356%_
              (error '"unknown system class" _%id132354%_)))))
    (define __make-system-class
      (lambda (_%id132256%_ _%super132257%_ _%properties132258%_)
        (let ((_%klass132352%_
               (let* ((_%id132260%_ _%id132256%_)
                      (_%name132263%_ _%id132256%_)
                      (_%direct-supers132266%_ _%super132257%_)
                      (_%direct-slots132269%_ '())
                      (_%properties132272%_
                       (cons (cons 'system: '#t)
                             (let ()
                               (declare (not safe))
                               (foldr__0 cons '() _%properties132258%_))))
                      (_%constructor132275%_ '#f))
                 (if (symbol? _%id132260%_)
                     (let ((_%id132280%_ _%id132260%_))
                       (if (symbol? _%name132263%_)
                           (let ((_%name132296%_ _%name132263%_))
                             (if (list? _%direct-supers132266%_)
                                 (let* ((_%direct-supers132306%_
                                         _%direct-supers132266%_)
                                        (_%direct-slots132316%_
                                         _%direct-slots132269%_)
                                        (_%properties132326%_
                                         _%properties132272%_))
                                   (if (let ((_%$e132338%_ '#t))
                                         (and _%$e132338%_ _%$e132338%_))
                                       (let ((_%constructor132342%_
                                              _%constructor132275%_))
                                         (__make-class-type
                                          _%id132280%_
                                          _%name132296%_
                                          _%direct-supers132306%_
                                          _%direct-slots132316%_
                                          _%properties132326%_
                                          _%constructor132342%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          '(? (or not symbol?))
                                          'value:
                                          _%constructor132275%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'list?
                                    'value:
                                    _%direct-supers132266%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'symbol?
                              'value:
                              _%name132263%_)
                             '#!void)))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id132260%_)
                       '#!void)))))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id132256%_
             _%klass132352%_))
          _%klass132352%_)))))
