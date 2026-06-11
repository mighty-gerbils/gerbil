(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1781138347)
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
      (let ((_%flags137595%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties137596%_ '((direct-slots:) (system: . #t)))
            (_%slot-table137597%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags137595%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table137597%_
           _%properties137596%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots137552%_
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
             (_%slot-vector137554%_ (list->vector (cons '#f _%slots137552%_)))
             (_%slot-table137580%_
              (let ((_%slot-table137556%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp140674
                       (lambda (_%slot137558%_ _%field137559%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table137556%_
                            _%slot137558%_
                            _%field137559%_))
                         (let ((__tmp140675
                                (let ((_%sym137561%_ _%slot137558%_))
                                  (if (symbol? _%sym137561%_)
                                      (let ((_%sym137566%_ _%sym137561%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym137566%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym137561%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table137556%_
                            __tmp140675
                            _%field137559%_))))
                      (__tmp140672
                       (let ((__tmp140673
                              (let ()
                                (declare (not safe))
                                (##length _%slots137552%_))))
                         (declare (not safe))
                         (##iota __tmp140673 '1))))
                  (declare (not safe))
                  (##for-each __tmp140674 _%slots137552%_ __tmp140672))
                _%slot-table137556%_))
             (_%flags137582%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields137588%_
              (list->vector
               (let ((__tmp140676
                      (map (lambda (_%$%g137583137585%_)
                             (list _%$%g137583137585%_ '5 '#f))
                           (drop _%slots137552%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp140676))))
             (_%properties137590%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (foldr__0 cons '() _%slots137552%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t137592%_
              (let ((__tmp140677 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags137582%_
                 ##type-type
                 _%fields137588%_
                 __tmp140677
                 _%slot-vector137554%_
                 _%slot-table137580%_
                 _%properties137590%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t137592%_ _%t137592%_))
        _%t137592%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags137548%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties137549%_ '((direct-slots:) (system: . #t)))
            (_%slot-table137550%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp140678 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags137548%_
           '#f
           '#()
           __tmp140678
           '#(#f)
           _%slot-table137550%_
           _%properties137549%_
           '#f
           '#f
           '#f
           '#f))))
    (define __class-type
      (lambda (_%klass137536%_)
        (let ((_%klass137539%_ _%klass137536%_))
          (declare (not safe))
          (##structure-type _%klass137539%_))))
    (define class-type
      (lambda (_%klass137522%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137522%_ 'class))
            (let ((_%klass137526%_ _%klass137522%_))
              (__class-type _%klass137526%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass137522%_)
              '#!void))))
    (define class-type?
      (lambda (_%obj137520%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj137520%_ 'class))))
    (define __class-type=?
      (lambda (_%x137499%_ _%y137500%_)
        (let* ((_%x137503%_ _%x137499%_) (_%y137511%_ _%y137500%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x137503%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y137511%_ '1 '#f '#f))))))
    (define class-type=?
      (lambda (_%x137474%_ _%y137475%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x137474%_ 'class))
            (let ((_%x137479%_ _%x137474%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y137475%_ 'class))
                  (let ((_%y137489%_ _%y137475%_))
                    (__class-type=? _%x137479%_ _%y137489%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y137475%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x137474%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type137462%_)
        (let* ((_%type137465%_ _%type137462%_)
               (__tmp140679
                (let ((__tmp140680
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type137465%_))))
                  (declare (not safe))
                  (##fxand __tmp140680 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp140679 type-flag-opaque))))
    (define type-opaque?
      (lambda (_%type137448%_)
        (if (let () (declare (not safe)) (##type? _%type137448%_))
            (let ((_%type137452%_ _%type137448%_))
              (__type-opaque? _%type137452%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type137448%_)
              '#!void))))
    (define __class-type-opaque?
      (lambda (_%klass137436%_)
        (let* ((_%klass137439%_ _%klass137436%_)
               (__tmp140681
                (let ((__tmp140682
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass137439%_))))
                  (declare (not safe))
                  (##fxand __tmp140682 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp140681 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass137422%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137422%_ 'class))
            (let ((_%klass137426%_ _%klass137422%_))
              (__class-type-opaque? _%klass137426%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass137422%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type137410%_)
        (let* ((_%type137413%_ _%type137410%_)
               (__tmp140683
                (let ((__tmp140684
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type137413%_))))
                  (declare (not safe))
                  (##fxand __tmp140684 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp140683 type-flag-extensible))))
    (define type-extensible?
      (lambda (_%type137396%_)
        (if (let () (declare (not safe)) (##type? _%type137396%_))
            (let ((_%type137400%_ _%type137396%_))
              (__type-extensible? _%type137400%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type137396%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type137384%_)
        (let* ((_%type137387%_ _%type137384%_)
               (__tmp140685
                (let ((__tmp140686
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type137387%_))))
                  (declare (not safe))
                  (##fxand __tmp140686 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp140685 '0))))
    (define class-type-final?
      (lambda (_%type137370%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type137370%_ 'class))
            (let ((_%type137374%_ _%type137370%_))
              (__class-type-final? _%type137374%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type137370%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass137358%_)
        (let* ((_%klass137361%_ _%klass137358%_)
               (__tmp140687
                (let ((__tmp140688
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass137361%_))))
                  (declare (not safe))
                  (##fxand __tmp140688 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp140687 class-type-flag-struct))))
    (define class-type-struct?
      (lambda (_%klass137344%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137344%_ 'class))
            (let ((_%klass137348%_ _%klass137344%_))
              (__class-type-struct? _%klass137348%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass137344%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass137332%_)
        (let* ((_%klass137335%_ _%klass137332%_)
               (__tmp140689
                (let ((__tmp140690
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass137335%_))))
                  (declare (not safe))
                  (##fxand __tmp140690 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp140689 class-type-flag-sealed))))
    (define class-type-sealed?
      (lambda (_%klass137318%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137318%_ 'class))
            (let ((_%klass137322%_ _%klass137318%_))
              (__class-type-sealed? _%klass137322%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass137318%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass137306%_)
        (let* ((_%klass137309%_ _%klass137306%_)
               (__tmp140691
                (let ((__tmp140692
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass137309%_))))
                  (declare (not safe))
                  (##fxand __tmp140692 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp140691 class-type-flag-metaclass))))
    (define class-type-metaclass?
      (lambda (_%klass137292%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137292%_ 'class))
            (let ((_%klass137296%_ _%klass137292%_))
              (__class-type-metaclass? _%klass137296%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass137292%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass137280%_)
        (let* ((_%klass137283%_ _%klass137280%_)
               (__tmp140693
                (let ((__tmp140694
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass137283%_))))
                  (declare (not safe))
                  (##fxand __tmp140694 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp140693 class-type-flag-system))))
    (define class-type-system?
      (lambda (_%klass137266%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137266%_ 'class))
            (let ((_%klass137270%_ _%klass137266%_))
              (__class-type-system? _%klass137270%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass137266%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass137254%_)
        (let* ((_%klass137257%_ _%klass137254%_)
               (__tmp140695
                (let ((__tmp140696
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass137257%_))))
                  (declare (not safe))
                  (##fxand __tmp140696 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp140695 class-type-flag-acyclic))))
    (define class-type-acyclic?
      (lambda (_%klass137240%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137240%_ 'class))
            (let ((_%klass137244%_ _%klass137240%_))
              (__class-type-acyclic? _%klass137244%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass137240%_)
              '#!void))))
    (define make-class-type-descriptor
      (lambda (_%type-id137014%_
               _%type-name137015%_
               _%type-super137016%_
               _%precedence-list137017%_
               _%slot-vector137018%_
               _%properties137019%_
               _%constructor137020%_
               _%slot-table137021%_
               _%methods137022%_)
        (letrec ((_%make-props!137025%_
                  (lambda (_%key137190%_)
                    (letrec* ((_%ht137192%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!137193%_
                               (lambda (_%ht137233%_ _%slots137234%_)
                                 (for-each
                                  (lambda (_%$%g137235137237%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht137233%_
                                       _%$%g137235137237%_
                                       '#t)))
                                  _%slots137234%_)))
                              (_%put-alist!137194%_
                               (lambda (_%ht137222%_
                                        _%key137223%_
                                        _%alist137224%_)
                                 (let ((_%$e137226%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key137223%_
                                           _%alist137224%_))))
                                   (if _%$e137226%_
                                       (_%put-slots!137193%_
                                        _%ht137222%_
                                        _%$e137226%_)
                                       '#!void)))))
                      (_%put-alist!137194%_
                       _%ht137192%_
                       _%key137190%_
                       _%properties137019%_)
                      (for-each
                       (lambda (_%mixin137196%_)
                         (let ((_%alist137198%_
                                (##structure-ref
                                 _%mixin137196%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist137198%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key137190%_
                                           _%alist137198%_))))
                               (_%put-slots!137193%_
                                _%ht137192%_
                                (let ((_%klass137203%_ _%mixin137196%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass137203%_
                                         'class))
                                      (let ((_%klass137208%_ _%klass137203%_))
                                        (__class-type-slot-list
                                         _%klass137208%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass137203%_)
                                        '#!void))))
                               (_%put-alist!137194%_
                                _%ht137192%_
                                _%key137190%_
                                _%alist137198%_))))
                       _%precedence-list137017%_)
                      _%ht137192%_)))
                 (_%has-no-alist-override?137026%_
                  (lambda (_%key137179%_ _%alist137180%_)
                    (let ((_%$e137182%_
                           (let ()
                             (declare (not safe))
                             (agetq__0 _%key137179%_ _%alist137180%_))))
                      (if _%$e137182%_ (eq? _%$e137182%_ '#t) '#t)))))
          (let* ((_%transparent?137046%_
                  (let ((__tmp140697
                         (if _%type-super137016%_
                             (not (let ((_%type137028%_ _%type-super137016%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##type? _%type137028%_))
                                        (let ((_%type137033%_ _%type137028%_))
                                          (__type-opaque? _%type137033%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '##type?
                                           'value:
                                           _%type137028%_)
                                          '#!void))))
                             '#t)))
                    (declare (not safe))
                    (agetq__% 'transparent: _%properties137019%_ __tmp140697)))
                 (_%all-slots-printable?137048%_
                  (if _%transparent?137046%_
                      (_%has-no-alist-override?137026%_
                       'print:
                       _%properties137019%_)
                      '#f))
                 (_%printable137050%_
                  (if (not _%all-slots-printable?137048%_)
                      (_%make-props!137025%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?137052%_
                  (if _%transparent?137046%_
                      (_%has-no-alist-override?137026%_
                       'equal:
                       _%properties137019%_)
                      '#f))
                 (_%equalable137054%_
                  (if (not _%all-slots-equalable?137052%_)
                      (_%make-props!137025%_ 'equal:)
                      '#f))
                 (_%first-new-field137056%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super137016%_ 'class))
                      (let ((__tmp140698
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super137016%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp140698))
                      '1))
                 (_%field-info-length137058%_
                  (let ((__tmp140699
                         (let ((__tmp140700
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector137018%_))))
                           (declare (not safe))
                           (##fx- __tmp140700 _%first-new-field137056%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp140699)))
                 (_%field-info137060%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length137058%_ '#f)))
                 (_%struct?137062%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties137019%_)))
                 (_%final?137064%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties137019%_)))
                 (_%metaclass137071%_
                  (let ((_%$%metaclass137065137067%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties137019%_))))
                    (if _%$%metaclass137065137067%_
                        (let ((_%metaclass137069%_
                               _%$%metaclass137065137067%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass137069%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id137014%_
                                     'metaclass:
                                     _%metaclass137069%_))
                          _%metaclass137069%_)
                        '#f)))
                 (_%system?137073%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties137019%_)))
                 (_%opaque?137075%_ (not _%transparent?137046%_))
                 (_%acyclic?137077%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties137019%_)))
                 (_%type-flags137079%_
                  (let ((__tmp140706
                         (if _%final?137064%_ '0 type-flag-extensible))
                        (__tmp140705
                         (if _%opaque?137075%_ type-flag-opaque '0))
                        (__tmp140704
                         (if _%struct?137062%_ class-type-flag-struct '0))
                        (__tmp140703
                         (if _%metaclass137071%_ class-type-flag-metaclass '0))
                        (__tmp140702
                         (if _%system?137073%_ class-type-flag-system '0))
                        (__tmp140701
                         (if _%acyclic?137077%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp140706
                             __tmp140705
                             __tmp140704
                             __tmp140703
                             __tmp140702
                             __tmp140701)))
                 (_%precedence-list137087%_
                  (let ((_%$e137081%_ (memq t::t _%precedence-list137017%_)))
                    (if _%$e137081%_
                        (if (null? (cdr _%$e137081%_))
                            _%precedence-list137017%_
                            (error '"BUG: t::t is not last in the precedence list"
                                   'precedence-list:
                                   _%precedence-list137017%_))
                        (let ((__tmp140707 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list137017%_ __tmp140707))))))
            (let _%loop137090%_ ((_%i137092%_ _%first-new-field137056%_)
                                 (_%j137093%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j137093%_ _%field-info-length137058%_))
                  (let* ((_%slot137095%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector137018%_ _%i137092%_)))
                         (_%flags137103%_
                          (let ((__tmp140709
                                 (if (or _%all-slots-printable?137048%_
                                         (let ()
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            _%printable137050%_
                                            _%slot137095%_
                                            '#f)))
                                     '0
                                     '1))
                                (__tmp140708
                                 (if (or _%all-slots-equalable?137052%_
                                         (let ()
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            _%equalable137054%_
                                            _%slot137095%_
                                            '#f)))
                                     '0
                                     '4)))
                            (declare (not safe))
                            (##fxior __tmp140709 __tmp140708))))
                    (vector-set!
                     _%field-info137060%_
                     _%j137093%_
                     _%slot137095%_)
                    (vector-set!
                     _%field-info137060%_
                     (let () (declare (not safe)) (##fx+ _%j137093%_ '1))
                     _%flags137103%_)
                    (_%loop137090%_
                     (let () (declare (not safe)) (##fx+ _%i137092%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j137093%_ '3))))
                  '#!void))
            (if _%metaclass137071%_
                (let ((_%val137142%_
                       (let* ((_%klass137106%_ _%metaclass137071%_)
                              (_%args137109%_
                               (list _%type-id137014%_
                                     _%type-name137015%_
                                     _%type-flags137079%_
                                     _%type-super137016%_
                                     _%field-info137060%_
                                     _%precedence-list137087%_
                                     _%slot-vector137018%_
                                     _%slot-table137021%_
                                     _%properties137019%_
                                     _%constructor137020%_
                                     _%methods137022%_)))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%klass137106%_
                                'class))
                             (let ((_%klass137114%_ _%klass137106%_))
                               (declare (not safe))
                               (##apply __make-instance
                                        _%klass137114%_
                                        _%args137109%_))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%klass137106%_)
                               '#!void)))))
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   '"\"gerbil/runtime/mop.ss\"@293.10-297.95"
                   'contract:
                   '(class-type? val)
                   'value:
                   _%val137142%_)
                  '#!void)
                (let ((_%klass137145%_
                       (let ()
                         (declare (not safe))
                         (##structure
                          class::t
                          _%type-id137014%_
                          _%type-name137015%_
                          _%type-flags137079%_
                          _%type-super137016%_
                          _%field-info137060%_
                          _%precedence-list137087%_
                          _%slot-vector137018%_
                          _%slot-table137021%_
                          _%properties137019%_
                          _%constructor137020%_
                          _%methods137022%_
                          '#f
                          '#f))))
                  (for-each
                   (lambda (_%super137147%_)
                     (let ()
                       (declare (not interrupts-enabled))
                       (let _%again137151%_ ((_%spin137154%_ '0))
                         (if (let ((__tmp140710
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __class-type-properties-lock
                                       '0
                                       '1
                                       '0))))
                               (declare (not safe))
                               (##fx= __tmp140710 '0))
                             (let ((__tmp140711 (current-thread)))
                               (declare (not safe))
                               (##vector-set!
                                __class-type-properties-lock
                                '1
                                __tmp140711))
                             (if (let ()
                                   (declare (not safe))
                                   (##fx< _%spin137154%_ '10))
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##thread-yield!))
                                   (_%again137151%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%spin137154%_ '1))))
                                 (let ((_%owner137160%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           __class-type-properties-lock
                                           '1))))
                                   (if (eq? _%owner137160%_
                                            (macro-current-thread))
                                       (let ()
                                         (declare (not safe))
                                         (##thread-deadlock-action!))
                                       (if (macro-thread-end-condvar
                                            _%owner137160%_)
                                           (let ()
                                             (let ()
                                               (declare (not safe))
                                               (##thread-yield!))
                                             (_%again137151%_ '0))
                                           (let ()
                                             (declare (not safe))
                                             (##thread-deadlock-action!)))))))))
                     (let ((_%$r137174%_
                            (let* ((_%props137166%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%super137147%_
                                       '9
                                       '#f
                                       '#f)))
                                   (_%$e137168%_
                                    (assq 'subclasses: _%props137166%_)))
                              (if _%$e137168%_
                                  (set-cdr!
                                   _%$e137168%_
                                   (cons _%klass137145%_ (cdr _%$e137168%_)))
                                  (let ((__tmp140712
                                         (cons (cons 'subclasses:
                                                     (cons _%klass137145%_
                                                           '()))
                                               _%props137166%_)))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _%super137147%_
                                     __tmp140712
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
                       _%$r137174%_))
                   (let ()
                     (declare (not safe))
                     (agetq__% 'direct-supers: _%properties137019%_ '())))
                  _%klass137145%_))))))
    (define class-type-id
      (lambda (_%klass137012%_)
        (##structure-ref _%klass137012%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass137010%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass137010%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass137007%_ _%val137008%_)
        (##structure-set! _%klass137007%_ _%val137008%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass137002%_ _%val137004%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass137002%_
           _%val137004%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass137000%_)
        (##structure-ref _%klass137000%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass136998%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136998%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass136995%_ _%val136996%_)
        (##structure-set! _%klass136995%_ _%val136996%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass136990%_ _%val136992%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136990%_
           _%val136992%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass136988%_)
        (##structure-ref _%klass136988%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass136986%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136986%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass136983%_ _%val136984%_)
        (##structure-set! _%klass136983%_ _%val136984%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass136978%_ _%val136980%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136978%_
           _%val136980%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass136976%_)
        (##structure-ref _%klass136976%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass136974%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136974%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass136971%_ _%val136972%_)
        (##structure-set! _%klass136971%_ _%val136972%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass136966%_ _%val136968%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136966%_
           _%val136968%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass136964%_)
        (##structure-ref _%klass136964%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass136962%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136962%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass136959%_ _%val136960%_)
        (##structure-set! _%klass136959%_ _%val136960%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass136954%_ _%val136956%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136954%_
           _%val136956%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass136952%_)
        (##structure-ref _%klass136952%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass136950%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136950%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass136947%_ _%val136948%_)
        (##structure-set!
         _%klass136947%_
         _%val136948%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass136942%_ _%val136944%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136942%_
           _%val136944%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass136940%_)
        (##structure-ref _%klass136940%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass136938%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136938%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass136935%_ _%val136936%_)
        (##structure-set!
         _%klass136935%_
         _%val136936%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass136930%_ _%val136932%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136930%_
           _%val136932%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass136928%_)
        (##structure-ref _%klass136928%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass136926%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136926%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass136923%_ _%val136924%_)
        (##structure-set!
         _%klass136923%_
         _%val136924%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass136918%_ _%val136920%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136918%_
           _%val136920%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass136916%_)
        (##structure-ref _%klass136916%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass136914%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136914%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass136911%_ _%val136912%_)
        (##structure-set!
         _%klass136911%_
         _%val136912%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass136906%_ _%val136908%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136906%_
           _%val136908%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass136904%_)
        (##structure-ref _%klass136904%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass136902%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136902%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass136899%_ _%val136900%_)
        (##structure-set!
         _%klass136899%_
         _%val136900%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass136894%_ _%val136896%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136894%_
           _%val136896%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass136892%_)
        (##structure-ref _%klass136892%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass136890%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass136890%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass136887%_ _%val136888%_)
        (##structure-set!
         _%klass136887%_
         _%val136888%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass136882%_ _%val136884%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136882%_
           _%val136884%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass136880%_)
        (##structure-ref _%klass136880%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass136878%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136878%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass136875%_ _%val136876%_)
        (##structure-set!
         _%klass136875%_
         _%val136876%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass136870%_ _%val136872%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136870%_
           _%val136872%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass136868%_)
        (##structure-ref _%klass136868%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass136866%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass136866%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass136863%_ _%val136864%_)
        (##structure-set!
         _%klass136863%_
         _%val136864%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass136858%_ _%val136860%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass136858%_
           _%val136860%_
           '13
           class::t
           'interface))))
    (define type-field-list
      (lambda (_%type136622%_)
        (letrec ((_%__fields->list136752%_
                  (lambda (_%fields136816%_)
                    (let* ((_%fields136819%_ _%fields136816%_)
                           (_%fields-len136828%_
                            (let ()
                              (declare (not safe))
                              (##vector-length _%fields136819%_))))
                      (let _%loop136830%_ ((_%i136832%_ '0) (_%r136833%_ '()))
                        (let* ((_%i136836%_ _%i136832%_)
                               (_%r136849%_ _%r136833%_))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i136836%_ _%fields-len136828%_))
                              (_%loop136830%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i136836%_ '3))
                               (cons (vector-ref _%fields136819%_ _%i136836%_)
                                     _%r136849%_))
                              (reverse! _%r136849%_)))))))
                 (_%fields->list136753%_
                  (lambda (_%fields136804%_)
                    (let ((_%fields136807%_ _%fields136804%_))
                      (_%__fields->list136752%_ _%fields136807%_)))))
          (let _%loop136755%_ ((_%type136757%_ _%type136622%_))
            (if (let () (declare (not safe)) (##type? _%type136757%_))
                (if (eq? _%type136757%_ ##type-type)
                    '()
                    (let ((_%$e136762%_
                           (let ()
                             (declare (not safe))
                             (##type-super _%type136757%_))))
                      (if _%$e136762%_
                          (let ((__tmp140714 (_%loop136755%_ _%$e136762%_))
                                (__tmp140713
                                 (let* ((_%fields136768%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-fields _%type136757%_)))
                                        (_%fields136772%_ _%fields136768%_))
                                   (_%__fields->list136752%_
                                    _%fields136772%_))))
                            (declare (not safe))
                            (##append __tmp140714 __tmp140713))
                          (let* ((_%fields136789%_
                                  (let ()
                                    (declare (not safe))
                                    (##type-fields _%type136757%_)))
                                 (_%fields136793%_ _%fields136789%_))
                            (_%__fields->list136752%_ _%fields136793%_)))))
                '())))))
    (define __class-type-field-list
      (lambda (_%klass136590%_)
        (let ((_%klass136593%_ _%klass136590%_))
          (letrec ((_%get-fields!136602%_
                    (lambda (_%klass136617%_ _%type136618%_)
                      (let ((_%fields136620%_
                             (type-field-list _%type136618%_)))
                        (##structure-set!
                         _%klass136617%_
                         (cons (cons 'fields: _%fields136620%_)
                               (##structure-ref
                                _%klass136617%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%fields136620%_))))
            (let* ((_%props136604%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass136593%_ '9 '#f '#f)))
                   (_%$e136606%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'fields: _%props136604%_))))
              (if _%$e136606%_
                  _%$e136606%_
                  (let ((_%$e136609%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props136604%_))))
                    (if _%$e136609%_
                        (_%get-fields!136602%_ _%klass136593%_ _%$e136609%_)
                        (_%get-fields!136602%_
                         _%klass136593%_
                         _%klass136593%_)))))))))
    (define class-type-field-list
      (lambda (_%klass136576%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136576%_ 'class))
            (let ((_%klass136580%_ _%klass136576%_))
              (__class-type-field-list _%klass136580%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@395.30-395.35"
               'contract:
               'class-type?
               'value:
               _%klass136576%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass136564%_)
        (let ((_%klass136567%_ _%klass136564%_))
          (vector->list
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass136567%_ '7 '#f '#f))
           '1))))
    (define class-type-slot-list
      (lambda (_%klass136550%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136550%_ 'class))
            (let ((_%klass136554%_ _%klass136550%_))
              (__class-type-slot-list _%klass136554%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@411.29-411.34"
               'contract:
               'class-type?
               'value:
               _%klass136550%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass136538%_)
        (let* ((_%klass136541%_ _%klass136538%_)
               (__tmp140715
                (let ((__tmp140716
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass136541%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp140716))))
          (declare (not safe))
          (##fx- __tmp140715 '1))))
    (define class-type-field-count
      (lambda (_%klass136524%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136524%_ 'class))
            (let ((_%klass136528%_ _%klass136524%_))
              (__class-type-field-count _%klass136528%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@413.31-413.36"
               'contract:
               'class-type?
               'value:
               _%klass136524%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass136512%_)
        (let ((_%klass136515%_ _%klass136512%_))
          (let ((__tmp140717
                 (let ((__tmp140718
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass136515%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp140718))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass136515%_
             __tmp140717
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define class-type-seal!
      (lambda (_%klass136498%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136498%_ 'class))
            (let ((_%klass136502%_ _%klass136498%_))
              (__class-type-seal! _%klass136502%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@416.25-416.30"
               'contract:
               'class-type?
               'value:
               _%klass136498%_)
              '#!void))))
    (define __class-type-properties-lock (vector '0 '#f))
    (define __class-type-properties-put!
      (lambda (_%klass136452%_ _%key136453%_ _%val136454%_)
        (let* ((_%klass136457%_ _%klass136452%_) (_%key136465%_ _%key136453%_))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again136476%_ ((_%spin136479%_ '0))
              (if (let ((__tmp140719
                         (let ()
                           (declare (not safe))
                           (##vector-cas!
                            __class-type-properties-lock
                            '0
                            '1
                            '0))))
                    (declare (not safe))
                    (##fx= __tmp140719 '0))
                  (let ((__tmp140720 (current-thread)))
                    (declare (not safe))
                    (##vector-set!
                     __class-type-properties-lock
                     '1
                     __tmp140720))
                  (if (let () (declare (not safe)) (##fx< _%spin136479%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again136476%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin136479%_ '1))))
                      (let ((_%owner136485%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref
                                __class-type-properties-lock
                                '1))))
                        (if (eq? _%owner136485%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner136485%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again136476%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r136493%_
                 (let ((_%props136491%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass136457%_
                           '9
                           '#f
                           '#f))))
                   (if (assq _%key136465%_ _%props136491%_)
                       '#!void
                       (let ((__tmp140721
                              (cons (cons _%key136465%_ _%val136454%_)
                                    _%props136491%_)))
                         (declare (not safe))
                         (##unchecked-structure-set!
                          _%klass136457%_
                          __tmp140721
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
            _%$r136493%_))))
    (define class-type-properties-put!
      (lambda (_%klass136426%_ _%key136427%_ _%val136428%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136426%_ 'class))
            (let ((_%klass136432%_ _%klass136426%_))
              (if (keyword? _%key136427%_)
                  (let ((_%key136442%_ _%key136427%_))
                    (__class-type-properties-put!
                     _%klass136432%_
                     _%key136442%_
                     _%val136428%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@424.52-424.55"
                     'contract:
                     'keyword?
                     'value:
                     _%key136427%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@424.35-424.40"
               'contract:
               'class-type?
               'value:
               _%klass136426%_)
              '#!void))))
    (define __class-type-printable-slots
      (lambda (_%klass136320%_)
        (let ((_%klass136323%_ _%klass136320%_))
          (letrec ((_%get-field-vector136332%_
                    (lambda (_%type136410%_)
                      (let _%loop136412%_ ((_%type136414%_ _%type136410%_))
                        (let* ((_%fields136416%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type136414%_)))
                               (_%$e136418%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type136414%_))))
                          (if _%$e136418%_
                              (let ((_%super-fields136423%_
                                     (_%loop136412%_ _%$e136418%_)))
                                (vector-append
                                 _%super-fields136423%_
                                 _%fields136416%_))
                              _%fields136416%_)))))
                   (_%get-printable-slot-alist136333%_
                    (lambda (_%type136393%_)
                      (let* ((_%fields136395%_
                              (_%get-field-vector136332%_ _%type136393%_))
                             (_%count136397%_
                              (vector-length _%fields136395%_)))
                        (let _%loop136400%_ ((_%i136402%_ '0)
                                             (_%offset136403%_ '1)
                                             (_%r136404%_ '()))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i136402%_ _%count136397%_))
                              (let ((_%slot-name136406%_
                                     (vector-ref _%fields136395%_ _%i136402%_))
                                    (_%slot-flags136407%_
                                     (vector-ref
                                      _%fields136395%_
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%i136402%_ '1))))
                                    (_%next-i136408%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i136402%_ '3))))
                                (if (let ((__tmp140722
                                           (let ()
                                             (declare (not safe))
                                             (##fxand _%slot-flags136407%_
                                                      '1))))
                                      (declare (not safe))
                                      (##fx= __tmp140722 '0))
                                    (_%loop136400%_
                                     _%next-i136408%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset136403%_ '1))
                                     (cons (cons _%slot-name136406%_
                                                 _%offset136403%_)
                                           _%r136404%_))
                                    (_%loop136400%_
                                     _%next-i136408%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset136403%_ '1))
                                     _%r136404%_)))
                              (reverse! _%r136404%_))))))
                   (_%get-printable-slots!136334%_
                    (lambda (_%klass136349%_ _%type136350%_)
                      (let ((_%printable136352%_
                             (_%get-printable-slot-alist136333%_
                              _%type136350%_)))
                        (let* ((_%klass136354%_ _%klass136349%_)
                               (_%key136357%_ 'printable-slots:)
                               (_%val136360%_ _%printable136352%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%klass136354%_
                                 'class))
                              (let* ((_%klass136365%_ _%klass136354%_)
                                     (_%key136383%_ _%key136357%_))
                                (__class-type-properties-put!
                                 _%klass136365%_
                                 _%key136383%_
                                 _%val136360%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 'gerbil/runtime/mop
                                 'contract:
                                 'class-type?
                                 'value:
                                 _%klass136354%_)
                                '#!void)))
                        _%printable136352%_))))
            (let* ((_%props136336%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass136323%_ '9 '#f '#f)))
                   (_%$e136338%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'printable-slots: _%props136336%_))))
              (if _%$e136338%_
                  _%$e136338%_
                  (let ((_%$e136341%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props136336%_))))
                    (if _%$e136341%_
                        (_%get-printable-slots!136334%_
                         _%klass136323%_
                         _%$e136341%_)
                        (_%get-printable-slots!136334%_
                         _%klass136323%_
                         _%klass136323%_)))))))))
    (define class-type-printable-slots
      (lambda (_%klass136306%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136306%_ 'class))
            (let ((_%klass136310%_ _%klass136306%_))
              (__class-type-printable-slots _%klass136310%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@433.35-433.40"
               'contract:
               'class-type?
               'value:
               _%klass136306%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct136275%_ _%maybe-super-struct136276%_)
        (let* ((_%maybe-sub-struct136279%_ _%maybe-sub-struct136275%_)
               (_%maybe-super-struct136287%_ _%maybe-super-struct136276%_)
               (_%maybe-super-struct-id136296%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct136287%_))))
          (let _%lp136298%_ ((_%super-struct136300%_
                              _%maybe-sub-struct136279%_))
            (if (not _%super-struct136300%_)
                '#f
                (if (eq? _%maybe-super-struct-id136296%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct136300%_)))
                    '#t
                    (_%lp136298%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct136300%_)))))))))
    (define substruct?
      (lambda (_%maybe-sub-struct136250%_ _%maybe-super-struct136251%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct136250%_ 'class))
            (let ((_%maybe-sub-struct136255%_ _%maybe-sub-struct136250%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct136251%_
                     'class))
                  (let ((_%maybe-super-struct136265%_
                         _%maybe-super-struct136251%_))
                    (__substruct?
                     _%maybe-sub-struct136255%_
                     _%maybe-super-struct136265%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@477.47-477.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct136251%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@477.19-477.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct136250%_)
              '#!void))))
    (define base-struct/1
      (lambda (_%klass136228%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass136228%_ 'class))
            (if (let* ((_%klass136231%_ _%klass136228%_)
                       (_%klass136236%_ _%klass136231%_))
                  (__class-type-struct? _%klass136236%_))
                _%klass136228%_
                (let () (declare (not safe)) (##type-super _%klass136228%_)))
            (if (not _%klass136228%_)
                '#f
                (error '"not a class or false" _%klass136228%_)))))
    (define base-struct/2
      (lambda (_%klass1136151%_ _%klass2136152%_)
        (let ((_%s1136154%_ (base-struct/1 _%klass1136151%_))
              (_%s2136155%_ (base-struct/1 _%klass2136152%_)))
          (if (or (not _%s1136154%_)
                  (and _%s2136155%_
                       (let* ((_%maybe-sub-struct136160%_ _%s1136154%_)
                              (_%maybe-super-struct136163%_ _%s2136155%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%maybe-sub-struct136160%_
                                'class))
                             (let ((_%maybe-sub-struct136168%_
                                    _%maybe-sub-struct136160%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%maybe-super-struct136163%_
                                      'class))
                                   (let ((_%maybe-super-struct136182%_
                                          _%maybe-super-struct136163%_))
                                     (__substruct?
                                      _%maybe-sub-struct136168%_
                                      _%maybe-super-struct136182%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%maybe-super-struct136163%_)
                                     '#!void)))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%maybe-sub-struct136160%_)
                               '#!void)))))
              _%s2136155%_
              (if (or (not _%s2136155%_)
                      (and _%s1136154%_
                           (let* ((_%maybe-sub-struct136196%_ _%s2136155%_)
                                  (_%maybe-super-struct136199%_ _%s1136154%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%maybe-sub-struct136196%_
                                    'class))
                                 (let ((_%maybe-sub-struct136204%_
                                        _%maybe-sub-struct136196%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%maybe-super-struct136199%_
                                          'class))
                                       (let ((_%maybe-super-struct136216%_
                                              _%maybe-super-struct136199%_))
                                         (__substruct?
                                          _%maybe-sub-struct136204%_
                                          _%maybe-super-struct136216%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          'class-type?
                                          'value:
                                          _%maybe-super-struct136199%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'class-type?
                                    'value:
                                    _%maybe-sub-struct136196%_)
                                   '#!void)))))
                  _%s1136154%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1136151%_
                         _%klass2136152%_
                         _%s1136154%_
                         _%s2136155%_))))))
    (define base-struct/list
      (lambda (_%all-supers136036%_)
        (let* ((_%$%all-supers136037136062%_ _%all-supers136036%_)
               (_%$%E136042136066%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%all-supers136037136062%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%$%K136060136148%_ (lambda () '#f))
                (_%$%K136057136134%_
                 (lambda (_%x136132%_) (base-struct/1 _%x136132%_)))
                (_%$%K136052136111%_
                 (lambda (_%y136108%_ _%x136109%_)
                   (base-struct/2 _%x136109%_ _%y136108%_)))
                (_%$%K136043136073%_
                 (lambda (_%y136070%_ _%x136071%_)
                   (let ()
                     (declare (not safe))
                     (foldr__0 base-struct/2 _%x136071%_ _%y136070%_)))))
            (let* ((_%__match139486139487%_
                    (lambda (_%$%hd136044136076%_ _%$%tl136045136078%_)
                      (let ((_%x136081%_ _%$%hd136044136076%_))
                        (letrec ((_%$%splice-rest136047136083%_
                                  (lambda (_%$%rest136051136090%_ _%y136092%_)
                                    (if (null? _%$%rest136051136090%_)
                                        (_%$%K136043136073%_
                                         _%y136092%_
                                         _%x136081%_)
                                        (_%$%E136042136066%_))))
                                 (_%$%splice-try136049136085%_
                                  (lambda (_%$%hd136050136094%_
                                           _%$%rest136051136096%_
                                           _%$%y136046136097%_)
                                    (let ((_%y136099%_ _%$%hd136050136094%_))
                                      (_%$%splice-loop136048136087%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest136051136096%_))
                                       (cons _%y136099%_
                                             _%$%y136046136097%_)))))
                                 (_%$%splice-loop136048136087%_
                                  (lambda (_%$%rest136051136101%_
                                           _%$%y136046136102%_)
                                    (if (pair? _%$%rest136051136101%_)
                                        (_%$%splice-try136049136085%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%rest136051136101%_))
                                         _%$%rest136051136101%_
                                         _%$%y136046136102%_)
                                        (_%$%splice-rest136047136083%_
                                         _%$%rest136051136101%_
                                         (reverse _%$%y136046136102%_))))))
                          (_%$%splice-loop136048136087%_
                           _%$%tl136045136078%_
                           '())))))
                   (_%$%try-match136039136144%_
                    (lambda ()
                      (if (pair? _%$%all-supers136037136062%_)
                          (let ((_%$%tl136059136139%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%all-supers136037136062%_)))
                                (_%$%hd136058136137%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%all-supers136037136062%_))))
                            (if (null? _%$%tl136059136139%_)
                                (let ((_%x136142%_ _%$%hd136058136137%_))
                                  (base-struct/1 _%x136142%_))
                                (if (pair? _%$%tl136059136139%_)
                                    (let ((_%$%tl136056136123%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl136059136139%_)))
                                          (_%$%hd136055136121%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl136059136139%_))))
                                      (if (null? _%$%tl136056136123%_)
                                          (let ((_%x136119%_
                                                 _%$%hd136058136137%_)
                                                (_%y136126%_
                                                 _%$%hd136055136121%_))
                                            (_%$%K136052136111%_
                                             _%y136126%_
                                             _%x136119%_))
                                          (_%__match139486139487%_
                                           _%$%hd136058136137%_
                                           _%$%tl136059136139%_)))
                                    (_%__match139486139487%_
                                     _%$%hd136058136137%_
                                     _%$%tl136059136139%_))))
                          (_%$%E136042136066%_)))))
              (if (null? _%$%all-supers136037136062%_)
                  (_%$%K136060136148%_)
                  (_%$%try-match136039136144%_)))))))
    (define base-struct
      (lambda _%all-supers136034%_ (base-struct/list _%all-supers136034%_)))
    (define find-super-constructor
      (lambda (_%super135985%_)
        (let _%lp135987%_ ((_%rest135989%_ _%super135985%_)
                           (_%constructor135990%_ '#f))
          (let* ((_%$%rest135991135999%_ _%rest135989%_)
                 (_%$%else135993136007%_ (lambda () _%constructor135990%_))
                 (_%$%K135995136022%_
                  (lambda (_%rest136010%_ _%hd136011%_)
                    (let ((_%$e136013%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd136011%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e136013%_
                          (if (or (not _%constructor135990%_)
                                  (eq? _%constructor135990%_ _%$e136013%_))
                              (_%lp135987%_ _%rest136010%_ _%$e136013%_)
                              (error '"conflicting implicit constructors"
                                     _%constructor135990%_
                                     _%$e136013%_))
                          (_%lp135987%_
                           _%rest136010%_
                           _%constructor135990%_))))))
            (if (pair? _%$%rest135991135999%_)
                (let ((_%$%hd135996136025%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest135991135999%_)))
                      (_%$%tl135997136027%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest135991135999%_))))
                  (let* ((_%hd136030%_ _%$%hd135996136025%_)
                         (_%rest136032%_ _%$%tl135997136027%_))
                    (_%$%K135995136022%_ _%rest136032%_ _%hd136030%_)))
                (_%$%else135993136007%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list135977%_ _%direct-slots135978%_)
        (let ((__tmp140724
               (lambda (_%mixin135980%_)
                 (let ((__tmp140725
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%mixin135980%_
                           '9
                           '#f
                           '#f))))
                   (declare (not safe))
                   (agetq__% 'direct-slots: __tmp140725 '()))))
              (__tmp140723
               (lambda (_%slot-list135982%_ _%slot-table135983%_)
                 (values (list->vector _%slot-list135982%_)
                         _%slot-table135983%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%class-precedence-list135977%_
           _%direct-slots135978%_
           __tmp140724
           __tmp140723))))
    (define __make-class-type
      (lambda (_%id135804%_
               _%name135805%_
               _%direct-supers135806%_
               _%direct-slots135807%_
               _%properties135808%_
               _%constructor135809%_)
        (let* ((_%id135812%_ _%id135804%_)
               (_%name135820%_ _%name135805%_)
               (_%direct-supers135828%_ _%direct-supers135806%_)
               (_%direct-slots135836%_ _%direct-slots135807%_)
               (_%properties135844%_ _%properties135808%_)
               (_%constructor135852%_ _%constructor135809%_))
          (let ((_%$e135886%_
                 (let* ((_%pred135864%_
                         (lambda (_%$obj135861%_)
                           (not (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%$obj135861%_
                                   'class)))))
                        (_%lst135867%_ _%direct-supers135828%_)
                        (_%pred135872%_ _%pred135864%_))
                   (declare (not safe))
                   (__find _%pred135872%_ _%lst135867%_))))
            (if _%$e135886%_
                (error '"Illegal super class; not a class descriptor"
                       _%$e135886%_)
                (let ((_%$e135913%_
                       (let* ((_%pred135893%_ __class-type-final?)
                              (_%lst135896%_ _%direct-supers135828%_)
                              (_%pred135901%_ _%pred135893%_))
                         (declare (not safe))
                         (__find _%pred135901%_ _%lst135896%_))))
                  (if _%$e135913%_
                      (error '"Cannot extend final class" _%$e135913%_)
                      '#!void))))
          (let ((_g140726_ (compute-precedence-list _%direct-supers135828%_)))
            (begin
              (let ((_g140727_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g140726_)
                           (##values-length _g140726_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g140727_ 2)))
                    (error "Context expects 2 values" _g140727_)))
              (let ((_%precedence-list135920%_
                     (let () (declare (not safe)) (##values-ref _g140726_ 0)))
                    (_%struct-super135921%_
                     (let () (declare (not safe)) (##values-ref _g140726_ 1))))
                (let ((_g140728_
                       (compute-class-slots
                        _%precedence-list135920%_
                        _%direct-slots135836%_)))
                  (begin
                    (let ((_g140729_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g140728_)
                                 (##values-length _g140728_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g140729_ 2)))
                          (error "Context expects 2 values" _g140729_)))
                    (let ((_%slot-vector135923%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g140728_ 0)))
                          (_%slot-table135924%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g140728_ 1))))
                      (let* ((_%properties135926%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots135836%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers135828%_)
                                          _%properties135844%_)))
                             (_%constructor*135931%_
                              (let ((_%$e135928%_ _%constructor135852%_))
                                (if _%$e135928%_
                                    _%$e135928%_
                                    (find-super-constructor
                                     _%direct-supers135828%_))))
                             (_%precedence-list135974%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties135926%_))
                                      (memq object::t
                                            _%precedence-list135920%_))
                                  _%precedence-list135920%_
                                  (let _%loop135936%_ ((_%tail135938%_
                                                        _%precedence-list135920%_)
                                                       (_%head135939%_ '()))
                                    (let* ((_%$%tail135940135948%_
                                            _%tail135938%_)
                                           (_%$%else135942135956%_
                                            (lambda ()
                                              (let ((__tmp140730
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp140730
                                                 _%head135939%_))))
                                           (_%$%K135944135962%_
                                            (lambda (_%rest135959%_
                                                     _%hd135960%_)
                                              (if (eq? _%hd135960%_ t::t)
                                                  (let ((__tmp140731
                                                         (cons object::t
                                                               _%tail135938%_)))
                                                    (declare (not safe))
                                                    (foldl__0
                                                     cons
                                                     __tmp140731
                                                     _%head135939%_))
                                                  (_%loop135936%_
                                                   _%rest135959%_
                                                   (cons _%hd135960%_
                                                         _%head135939%_))))))
                                      (if (pair? _%$%tail135940135948%_)
                                          (let ((_%$%hd135945135965%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tail135940135948%_)))
                                                (_%$%tl135946135967%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tail135940135948%_))))
                                            (let* ((_%hd135970%_
                                                    _%$%hd135945135965%_)
                                                   (_%rest135972%_
                                                    _%$%tl135946135967%_))
                                              (_%$%K135944135962%_
                                               _%rest135972%_
                                               _%hd135970%_)))
                                          (_%$%else135942135956%_)))))))
                        (make-class-type-descriptor
                         _%id135812%_
                         _%name135820%_
                         _%struct-super135921%_
                         _%precedence-list135974%_
                         _%slot-vector135923%_
                         _%properties135926%_
                         _%constructor*135931%_
                         _%slot-table135924%_
                         '#f)))))))))))
    (define make-class-type
      (lambda (_%id135729%_
               _%name135730%_
               _%direct-supers135731%_
               _%direct-slots135732%_
               _%properties135733%_
               _%constructor135734%_)
        (if (symbol? _%id135729%_)
            (let ((_%id135738%_ _%id135729%_))
              (if (symbol? _%name135730%_)
                  (let ((_%name135748%_ _%name135730%_))
                    (if (list? _%direct-supers135731%_)
                        (let ((_%direct-supers135758%_
                               _%direct-supers135731%_))
                          (if (list? _%direct-slots135732%_)
                              (let ((_%direct-slots135768%_
                                     _%direct-slots135732%_))
                                (if (list? _%properties135733%_)
                                    (let ((_%properties135778%_
                                           _%properties135733%_))
                                      (if (or (not _%constructor135734%_)
                                              (symbol? _%constructor135734%_))
                                          (let ((_%constructor135794%_
                                                 _%constructor135734%_))
                                            (__make-class-type
                                             _%id135738%_
                                             _%name135748%_
                                             _%direct-supers135758%_
                                             _%direct-slots135768%_
                                             _%properties135778%_
                                             _%constructor135794%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@558.24-558.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor135734%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@557.24-557.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties135733%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@556.24-556.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots135732%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@555.24-555.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers135731%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@554.24-554.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name135730%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@553.24-553.26"
               'contract:
               'symbol?
               'value:
               _%id135729%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass135717%_)
        (let ((_%klass135720%_ _%klass135717%_))
          (cons _%klass135720%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass135720%_ '6 '#f '#f))))))
    (define class-precedence-list
      (lambda (_%klass135703%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135703%_ 'class))
            (let ((_%klass135707%_ _%klass135703%_))
              (__class-precedence-list _%klass135707%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@591.30-591.35"
               'contract:
               'class-type?
               'value:
               _%klass135703%_)
              '#!void))))
    (define compute-precedence-list
      (lambda (_%direct-supers135700%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers135700%_))))
    (define __make-class-predicate
      (lambda (_%klass135616%_)
        (let* ((_%klass135619%_ _%klass135616%_)
               (_%tid135628%_
                (let () (declare (not safe)) (##type-id _%klass135619%_))))
          (if (let* ((_%type135630%_ _%klass135619%_)
                     (_%type135635%_ _%type135630%_))
                (__class-type-final? _%type135635%_))
              (lambda (_%$%g135649135651%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%$%g135649135651%_
                   _%tid135628%_)))
              (if (let* ((_%klass135654%_ _%klass135619%_)
                         (_%klass135659%_ _%klass135654%_))
                    (__class-type-struct? _%klass135659%_))
                  (lambda (_%$%g135669135671%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%$%g135669135671%_
                       _%tid135628%_)))
                  (lambda (_%$%g135674135676%_)
                    (let* ((_%klass135679%_ _%klass135619%_)
                           (_%obj135682%_ _%$%g135674135676%_)
                           (_%klass135687%_ _%klass135679%_))
                      (__class-instance? _%klass135687%_ _%obj135682%_))))))))
    (define make-class-predicate
      (lambda (_%klass135602%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135602%_ 'class))
            (let ((_%klass135606%_ _%klass135602%_))
              (__make-class-predicate _%klass135606%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@603.29-603.34"
               'contract:
               'class-type?
               'value:
               _%klass135602%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass135536%_ _%slot135537%_)
        (let* ((_%klass135540%_ _%klass135536%_)
               (_%slot135548%_ _%slot135537%_)
               (_%field135557%_
                (let ((__tmp140732
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass135540%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp140732 _%slot135548%_ '#f))))
          (if (not _%field135557%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass135540%_
                       'slot:
                       _%slot135548%_)
                '#!void)
              (if (let* ((_%type135561%_ _%klass135540%_)
                         (_%type135566%_ _%type135561%_))
                    (__class-type-final? _%type135566%_))
                  (make-final-slot-accessor
                   _%klass135540%_
                   _%slot135548%_
                   _%field135557%_)
                  (if (let* ((_%klass135581%_ _%klass135540%_)
                             (_%klass135586%_ _%klass135581%_))
                        (__class-type-struct? _%klass135586%_))
                      (make-struct-slot-accessor
                       _%klass135540%_
                       _%slot135548%_
                       _%field135557%_)
                      (if (let ((_%strukt135597%_
                                 (base-struct/1 _%klass135540%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt135597%_
                                    'class))
                                 (let ((__tmp140733
                                        (let ((__tmp140734
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt135597%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp140734))))
                                   (declare (not safe))
                                   (##fx< _%field135557%_ __tmp140733))))
                          (make-struct-subclass-slot-accessor
                           _%klass135540%_
                           _%slot135548%_
                           _%field135557%_)
                          (make-class-cached-slot-accessor
                           _%klass135540%_
                           _%slot135548%_
                           _%field135557%_))))))))
    (define make-class-slot-accessor
      (lambda (_%klass135511%_ _%slot135512%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135511%_ 'class))
            (let ((_%klass135516%_ _%klass135511%_))
              (if (symbol? _%slot135512%_)
                  (let ((_%slot135526%_ _%slot135512%_))
                    (__make-class-slot-accessor
                     _%klass135516%_
                     _%slot135526%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@634.50-634.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot135512%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@634.33-634.38"
               'contract:
               'class-type?
               'value:
               _%klass135511%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass135445%_ _%slot135446%_)
        (let* ((_%klass135449%_ _%klass135445%_)
               (_%slot135457%_ _%slot135446%_)
               (_%field135466%_
                (let ((__tmp140735
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass135449%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp140735 _%slot135457%_ '#f))))
          (if (not _%field135466%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass135449%_
                       'slot:
                       _%slot135457%_)
                '#!void)
              (if (let* ((_%type135470%_ _%klass135449%_)
                         (_%type135475%_ _%type135470%_))
                    (__class-type-final? _%type135475%_))
                  (make-final-slot-mutator
                   _%klass135449%_
                   _%slot135457%_
                   _%field135466%_)
                  (if (let* ((_%klass135490%_ _%klass135449%_)
                             (_%klass135495%_ _%klass135490%_))
                        (__class-type-struct? _%klass135495%_))
                      (make-struct-slot-mutator
                       _%klass135449%_
                       _%slot135457%_
                       _%field135466%_)
                      (if (let ((_%strukt135506%_
                                 (base-struct/1 _%klass135449%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt135506%_
                                    'class))
                                 (let ((__tmp140736
                                        (let ((__tmp140737
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt135506%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp140737))))
                                   (declare (not safe))
                                   (##fx< _%field135466%_ __tmp140736))))
                          (make-struct-subclass-slot-mutator
                           _%klass135449%_
                           _%slot135457%_
                           _%field135466%_)
                          (make-class-cached-slot-mutator
                           _%klass135449%_
                           _%slot135457%_
                           _%field135466%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass135420%_ _%slot135421%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135420%_ 'class))
            (let ((_%klass135425%_ _%klass135420%_))
              (if (symbol? _%slot135421%_)
                  (let ((_%slot135435%_ _%slot135421%_))
                    (__make-class-slot-mutator _%klass135425%_ _%slot135435%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@642.49-642.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot135421%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@642.32-642.37"
               'contract:
               'class-type?
               'value:
               _%klass135420%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass135354%_ _%slot135355%_)
        (let* ((_%klass135358%_ _%klass135354%_)
               (_%slot135366%_ _%slot135355%_)
               (_%field135375%_
                (let ((__tmp140738
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass135358%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp140738 _%slot135366%_ '#f))))
          (if (not _%field135375%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass135358%_
                       'slot:
                       _%slot135366%_)
                '#!void)
              (if (let* ((_%type135379%_ _%klass135358%_)
                         (_%type135384%_ _%type135379%_))
                    (__class-type-final? _%type135384%_))
                  (make-struct-slot-unchecked-accessor
                   _%klass135358%_
                   _%slot135366%_
                   _%field135375%_)
                  (if (let* ((_%klass135399%_ _%klass135358%_)
                             (_%klass135404%_ _%klass135399%_))
                        (__class-type-struct? _%klass135404%_))
                      (make-struct-slot-unchecked-accessor
                       _%klass135358%_
                       _%slot135366%_
                       _%field135375%_)
                      (if (let ((_%strukt135415%_
                                 (base-struct/1 _%klass135358%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt135415%_
                                    'class))
                                 (let ((__tmp140739
                                        (let ((__tmp140740
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt135415%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp140740))))
                                   (declare (not safe))
                                   (##fx< _%field135375%_ __tmp140739))))
                          (make-struct-slot-unchecked-accessor
                           _%klass135358%_
                           _%slot135366%_
                           _%field135375%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass135358%_
                           _%slot135366%_
                           _%field135375%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass135329%_ _%slot135330%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135329%_ 'class))
            (let ((_%klass135334%_ _%klass135329%_))
              (if (symbol? _%slot135330%_)
                  (let ((_%slot135344%_ _%slot135330%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass135334%_
                     _%slot135344%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@650.60-650.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot135330%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@650.43-650.48"
               'contract:
               'class-type?
               'value:
               _%klass135329%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass135263%_ _%slot135264%_)
        (let* ((_%klass135267%_ _%klass135263%_)
               (_%slot135275%_ _%slot135264%_)
               (_%field135284%_
                (let ((__tmp140741
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass135267%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp140741 _%slot135275%_ '#f))))
          (if (not _%field135284%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass135267%_
                       'slot:
                       _%slot135275%_)
                '#!void)
              (if (let* ((_%type135288%_ _%klass135267%_)
                         (_%type135293%_ _%type135288%_))
                    (__class-type-final? _%type135293%_))
                  (make-struct-slot-unchecked-mutator
                   _%klass135267%_
                   _%slot135275%_
                   _%field135284%_)
                  (if (let* ((_%klass135308%_ _%klass135267%_)
                             (_%klass135313%_ _%klass135308%_))
                        (__class-type-struct? _%klass135313%_))
                      (make-struct-slot-unchecked-mutator
                       _%klass135267%_
                       _%slot135275%_
                       _%field135284%_)
                      (if (let ((_%strukt135324%_
                                 (base-struct/1 _%klass135267%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt135324%_
                                    'class))
                                 (let ((__tmp140742
                                        (let ((__tmp140743
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt135324%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp140743))))
                                   (declare (not safe))
                                   (##fx< _%field135284%_ __tmp140742))))
                          (make-struct-slot-unchecked-mutator
                           _%klass135267%_
                           _%slot135275%_
                           _%field135284%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass135267%_
                           _%slot135275%_
                           _%field135284%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass135238%_ _%slot135239%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass135238%_ 'class))
            (let ((_%klass135243%_ _%klass135238%_))
              (if (symbol? _%slot135239%_)
                  (let ((_%slot135253%_ _%slot135239%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass135243%_
                     _%slot135253%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@658.59-658.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot135239%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@658.42-658.47"
               'contract:
               'class-type?
               'value:
               _%klass135238%_)
              '#!void))))
    (define not-an-instance__%
      (lambda (_%object135222%_ _%class135223%_ _%slot135224%_)
        (apply error
               '"not an instance"
               'object:
               _%object135222%_
               'class:
               _%class135223%_
               (if _%slot135224%_
                   (cons 'slot: (cons _%slot135224%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object135229%_ _%class135230%_)
        (let ((_%slot135232%_ '#f))
          (not-an-instance__%
           _%object135229%_
           _%class135230%_
           _%slot135232%_))))
    (define not-an-instance
      (lambda _g140744_
        (let ((_g140745_ (let () (declare (not safe)) (##length _g140744_))))
          (cond ((let () (declare (not safe)) (##fx= _g140745_ 2))
                 (apply not-an-instance__0 _g140744_))
                ((let () (declare (not safe)) (##fx= _g140745_ 3))
                 (apply not-an-instance__% _g140744_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g140744_))))))
    (define make-final-slot-accessor
      (lambda (_%klass135215%_ _%slot135216%_ _%field135217%_)
        (lambda (_%obj135219%_)
          (##direct-structure-ref
           _%obj135219%_
           _%field135217%_
           _%klass135215%_
           _%slot135216%_))))
    (define make-final-slot-mutator
      (lambda (_%klass135208%_ _%slot135209%_ _%field135210%_)
        (lambda (_%obj135212%_ _%val135213%_)
          (##direct-structure-set!
           _%obj135212%_
           _%val135213%_
           _%field135210%_
           _%klass135208%_
           _%slot135209%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass135202%_ _%slot135203%_ _%field135204%_)
        (lambda (_%obj135206%_)
          (##structure-ref
           _%obj135206%_
           _%field135204%_
           _%klass135202%_
           _%slot135203%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass135195%_ _%slot135196%_ _%field135197%_)
        (lambda (_%obj135199%_ _%val135200%_)
          (##structure-set!
           _%obj135199%_
           _%val135200%_
           _%field135197%_
           _%klass135195%_
           _%slot135196%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass135189%_ _%slot135190%_ _%field135191%_)
        (lambda (_%obj135193%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj135193%_
             _%field135191%_
             _%klass135189%_
             _%slot135190%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass135182%_ _%slot135183%_ _%field135184%_)
        (lambda (_%obj135186%_ _%val135187%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj135186%_
             _%val135187%_
             _%field135184%_
             _%klass135182%_
             _%slot135183%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass135155%_ _%slot135156%_ _%field135157%_)
        (lambda (_%obj135159%_)
          (if (let* ((_%klass135161%_ _%klass135155%_)
                     (_%obj135164%_ _%obj135159%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass135161%_ 'class))
                    (let ((_%klass135169%_ _%klass135161%_))
                      (__class-instance? _%klass135169%_ _%obj135164%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass135161%_)
                      '#!void)))
              (unchecked-slot-ref _%obj135159%_ _%field135157%_)
              (not-an-instance__%
               _%obj135159%_
               _%klass135155%_
               _%slot135156%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass135127%_ _%slot135128%_ _%field135129%_)
        (lambda (_%obj135131%_ _%val135132%_)
          (if (let* ((_%klass135134%_ _%klass135127%_)
                     (_%obj135137%_ _%obj135131%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass135134%_ 'class))
                    (let ((_%klass135142%_ _%klass135134%_))
                      (__class-instance? _%klass135142%_ _%obj135137%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass135134%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj135131%_
               _%field135129%_
               _%val135132%_)
              (not-an-instance__%
               _%obj135131%_
               _%klass135127%_
               _%slot135128%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass135078%_ _%slot135079%_ _%field135080%_)
        (lambda (_%obj135082%_)
          (if (let* ((_%klass135084%_ _%klass135078%_)
                     (_%obj135087%_ _%obj135082%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass135084%_ 'class))
                    (let ((_%klass135092%_ _%klass135084%_))
                      (__direct-instance? _%klass135092%_ _%obj135087%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass135084%_)
                      '#!void)))
              (unchecked-field-ref _%obj135082%_ _%field135080%_)
              (if (let* ((_%klass135106%_ _%klass135078%_)
                         (_%obj135109%_ _%obj135082%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass135106%_ 'class))
                        (let ((_%klass135114%_ _%klass135106%_))
                          (__class-instance? _%klass135114%_ _%obj135109%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass135106%_)
                          '#!void)))
                  (unchecked-slot-ref _%obj135082%_ _%slot135079%_)
                  (not-an-instance__%
                   _%obj135082%_
                   _%klass135078%_
                   _%slot135079%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass135028%_ _%slot135029%_ _%field135030%_)
        (lambda (_%obj135032%_ _%val135033%_)
          (if (let* ((_%klass135035%_ _%klass135028%_)
                     (_%obj135038%_ _%obj135032%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass135035%_ 'class))
                    (let ((_%klass135043%_ _%klass135035%_))
                      (__direct-instance? _%klass135043%_ _%obj135038%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass135035%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj135032%_
               _%field135030%_
               _%val135033%_)
              (if (let* ((_%klass135057%_ _%klass135028%_)
                         (_%obj135060%_ _%obj135032%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass135057%_ 'class))
                        (let ((_%klass135065%_ _%klass135057%_))
                          (__class-instance? _%klass135065%_ _%obj135060%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass135057%_)
                          '#!void)))
                  (unchecked-slot-set!
                   _%obj135032%_
                   _%slot135029%_
                   _%val135033%_)
                  (not-an-instance__%
                   _%obj135032%_
                   _%klass135028%_
                   _%slot135029%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass135001%_ _%slot135002%_ _%field135003%_)
        (lambda (_%obj135005%_)
          (if (let* ((_%klass135007%_ _%klass135001%_)
                     (_%obj135010%_ _%obj135005%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass135007%_ 'class))
                    (let ((_%klass135015%_ _%klass135007%_))
                      (__direct-instance? _%klass135015%_ _%obj135010%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass135007%_)
                      '#!void)))
              (unchecked-field-ref _%obj135005%_ _%field135003%_)
              (unchecked-slot-ref _%obj135005%_ _%slot135002%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass134973%_ _%slot134974%_ _%field134975%_)
        (lambda (_%obj134977%_ _%val134978%_)
          (if (let* ((_%klass134980%_ _%klass134973%_)
                     (_%obj134983%_ _%obj134977%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass134980%_ 'class))
                    (let ((_%klass134988%_ _%klass134980%_))
                      (__direct-instance? _%klass134988%_ _%obj134983%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass134980%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj134977%_
               _%field134975%_
               _%val134978%_)
              (unchecked-slot-set!
               _%obj134977%_
               _%slot134974%_
               _%val134978%_)))))
    (define __class-slot-offset
      (lambda (_%klass134952%_ _%slot134953%_)
        (let* ((_%klass134956%_ _%klass134952%_)
               (_%slot134964%_ _%slot134953%_)
               (__tmp140746
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass134956%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp140746 _%slot134964%_ '#f))))
    (define class-slot-offset
      (lambda (_%klass134927%_ _%slot134928%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134927%_ 'class))
            (let ((_%klass134932%_ _%klass134927%_))
              (if (let () (declare (not safe)) (symbolic? _%slot134928%_))
                  (let ((_%slot134942%_ _%slot134928%_))
                    (__class-slot-offset _%klass134932%_ _%slot134942%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@720.43-720.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot134928%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@720.26-720.31"
               'contract:
               'class-type?
               'value:
               _%klass134927%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass134852%_ _%obj134853%_ _%slot134854%_)
        (let* ((_%klass134857%_ _%klass134852%_)
               (_%slot134865%_ _%slot134854%_))
          (if (let* ((_%klass134874%_ _%klass134857%_)
                     (_%obj134877%_ _%obj134853%_)
                     (_%klass134882%_ _%klass134874%_))
                (__class-instance? _%klass134882%_ _%obj134877%_))
              (let ((_%off134925%_
                     (let* ((_%klass134896%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj134853%_)))
                            (_%slot134899%_ _%slot134865%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass134896%_ 'class))
                           (let ((_%klass134904%_ _%klass134896%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot134899%_))
                                 (let ((_%slot134915%_ _%slot134899%_))
                                   (__class-slot-offset
                                    _%klass134904%_
                                    _%slot134915%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot134899%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass134896%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj134853%_
                 _%off134925%_
                 _%klass134857%_
                 _%slot134865%_))
              (not-an-instance__0 _%obj134853%_ _%klass134857%_)))))
    (define class-slot-ref
      (lambda (_%klass134826%_ _%obj134827%_ _%slot134828%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134826%_ 'class))
            (let ((_%klass134832%_ _%klass134826%_))
              (if (let () (declare (not safe)) (symbolic? _%slot134828%_))
                  (let ((_%slot134842%_ _%slot134828%_))
                    (__class-slot-ref
                     _%klass134832%_
                     _%obj134827%_
                     _%slot134842%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@723.44-723.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot134828%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@723.23-723.28"
               'contract:
               'class-type?
               'value:
               _%klass134826%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass134750%_ _%obj134751%_ _%slot134752%_ _%val134753%_)
        (let* ((_%klass134756%_ _%klass134750%_)
               (_%slot134764%_ _%slot134752%_))
          (if (let* ((_%klass134773%_ _%klass134756%_)
                     (_%obj134776%_ _%obj134751%_)
                     (_%klass134781%_ _%klass134773%_))
                (__class-instance? _%klass134781%_ _%obj134776%_))
              (let ((_%off134824%_
                     (let* ((_%klass134795%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj134751%_)))
                            (_%slot134798%_ _%slot134764%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass134795%_ 'class))
                           (let ((_%klass134803%_ _%klass134795%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot134798%_))
                                 (let ((_%slot134814%_ _%slot134798%_))
                                   (__class-slot-offset
                                    _%klass134803%_
                                    _%slot134814%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot134798%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass134795%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj134751%_
                 _%val134753%_
                 _%off134824%_
                 _%klass134756%_
                 _%slot134764%_))
              (not-an-instance__0 _%obj134751%_ _%klass134756%_)))))
    (define class-slot-set!
      (lambda (_%klass134723%_ _%obj134724%_ _%slot134725%_ _%val134726%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134723%_ 'class))
            (let ((_%klass134730%_ _%klass134723%_))
              (if (let () (declare (not safe)) (symbolic? _%slot134725%_))
                  (let ((_%slot134740%_ _%slot134725%_))
                    (__class-slot-set!
                     _%klass134730%_
                     _%obj134724%_
                     _%slot134740%_
                     _%val134726%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@729.45-729.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot134725%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@729.24-729.29"
               'contract:
               'class-type?
               'value:
               _%klass134723%_)
              '#!void))))
    (define unchecked-field-ref
      (lambda (_%obj134720%_ _%off134721%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj134720%_ _%off134721%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj134716%_ _%off134717%_ _%val134718%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj134716%_
           _%val134718%_
           _%off134717%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj134713%_ _%slot134714%_)
        (unchecked-field-ref
         _%obj134713%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj134713%_))
          _%slot134714%_))))
    (define unchecked-slot-set!
      (lambda (_%obj134709%_ _%slot134710%_ _%val134711%_)
        (unchecked-field-set!
         _%obj134709%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj134709%_))
          _%slot134710%_)
         _%val134711%_)))
    (define __slot-error
      (lambda (_%obj134706%_ _%slot134707%_)
        (error '"Cannot find slot"
               'object:
               _%obj134706%_
               'slot:
               _%slot134707%_)))
    (define __slot-ref__%
      (lambda (_%obj134630%_ _%slot134631%_ _%E134632%_)
        (let* ((_%slot134635%_ _%slot134631%_)
               (_%E134643%_ _%E134632%_)
               (_%klass134652%_ (class-of _%obj134630%_))
               (_%$e134688%_
                (let* ((_%klass134655%_ _%klass134652%_)
                       (_%slot134658%_ _%slot134635%_)
                       (_%klass134663%_ _%klass134655%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot134658%_))
                      (let ((_%slot134678%_ _%slot134658%_))
                        (__class-slot-offset _%klass134663%_ _%slot134678%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot134658%_)
                        '#!void)))))
          (if _%$e134688%_
              (unchecked-field-ref _%obj134630%_ _%$e134688%_)
              (let ()
                (declare (not safe))
                (_%E134643%_ _%obj134630%_ _%slot134635%_))))))
    (define __slot-ref__0
      (lambda (_%obj134697%_ _%slot134698%_)
        (let ((_%E134700%_ __slot-error))
          (__slot-ref__% _%obj134697%_ _%slot134698%_ _%E134700%_))))
    (define __slot-ref
      (lambda _g140747_
        (let ((_g140748_ (let () (declare (not safe)) (##length _g140747_))))
          (cond ((let () (declare (not safe)) (##fx= _g140748_ 2))
                 (apply __slot-ref__0 _g140747_))
                ((let () (declare (not safe)) (##fx= _g140748_ 3))
                 (apply __slot-ref__% _g140747_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g140747_))))))
    (define slot-ref__%
      (lambda (_%obj134591%_ _%slot134592%_ _%E134593%_)
        (if (symbol? _%slot134592%_)
            (let ((_%slot134597%_ _%slot134592%_))
              (if (procedure? _%E134593%_)
                  (let ((_%E134607%_ _%E134593%_))
                    (__slot-ref__% _%obj134591%_ _%slot134597%_ _%E134607%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@755.38-755.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E134593%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@755.21-755.25"
               'contract:
               'symbol?
               'value:
               _%slot134592%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj134620%_ _%slot134621%_)
        (let ((_%E134623%_ __slot-error))
          (slot-ref__% _%obj134620%_ _%slot134621%_ _%E134623%_))))
    (define slot-ref
      (lambda _g140749_
        (let ((_g140750_ (let () (declare (not safe)) (##length _g140749_))))
          (cond ((let () (declare (not safe)) (##fx= _g140750_ 2))
                 (apply slot-ref__0 _g140749_))
                ((let () (declare (not safe)) (##fx= _g140750_ 3))
                 (apply slot-ref__% _g140749_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g140749_))))))
    (define __slot-set!__%
      (lambda (_%obj134511%_ _%slot134512%_ _%val134513%_ _%E134514%_)
        (let* ((_%slot134517%_ _%slot134512%_)
               (_%E134525%_ _%E134514%_)
               (_%klass134534%_ (class-of _%obj134511%_))
               (_%$e134570%_
                (let* ((_%klass134537%_ _%klass134534%_)
                       (_%slot134540%_ _%slot134517%_)
                       (_%klass134545%_ _%klass134537%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot134540%_))
                      (let ((_%slot134560%_ _%slot134540%_))
                        (__class-slot-offset _%klass134545%_ _%slot134560%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot134540%_)
                        '#!void)))))
          (if _%$e134570%_
              (unchecked-field-set! _%obj134511%_ _%$e134570%_ _%val134513%_)
              (let ()
                (declare (not safe))
                (_%E134525%_ _%obj134511%_ _%slot134517%_))))))
    (define __slot-set!__0
      (lambda (_%obj134579%_ _%slot134580%_ _%val134581%_)
        (let ((_%E134583%_ __slot-error))
          (__slot-set!__%
           _%obj134579%_
           _%slot134580%_
           _%val134581%_
           _%E134583%_))))
    (define __slot-set!
      (lambda _g140751_
        (let ((_g140752_ (let () (declare (not safe)) (##length _g140751_))))
          (cond ((let () (declare (not safe)) (##fx= _g140752_ 3))
                 (apply __slot-set!__0 _g140751_))
                ((let () (declare (not safe)) (##fx= _g140752_ 4))
                 (apply __slot-set!__% _g140751_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g140751_))))))
    (define slot-set!__%
      (lambda (_%obj134469%_ _%slot134470%_ _%val134471%_ _%E134472%_)
        (if (symbol? _%slot134470%_)
            (let ((_%slot134476%_ _%slot134470%_))
              (if (procedure? _%E134472%_)
                  (let ((_%E134486%_ _%E134472%_))
                    (__slot-set!__%
                     _%obj134469%_
                     _%slot134476%_
                     _%val134471%_
                     _%E134486%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@757.43-757.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E134472%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@757.22-757.26"
               'contract:
               'symbol?
               'value:
               _%slot134470%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj134499%_ _%slot134500%_ _%val134501%_)
        (let ((_%E134503%_ __slot-error))
          (slot-set!__%
           _%obj134499%_
           _%slot134500%_
           _%val134501%_
           _%E134503%_))))
    (define slot-set!
      (lambda _g140753_
        (let ((_g140754_ (let () (declare (not safe)) (##length _g140753_))))
          (cond ((let () (declare (not safe)) (##fx= _g140754_ 3))
                 (apply slot-set!__0 _g140753_))
                ((let () (declare (not safe)) (##fx= _g140754_ 4))
                 (apply slot-set!__% _g140753_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g140753_))))))
    (define __subclass?
      (lambda (_%maybe-sub-class134440%_ _%maybe-super-class134441%_)
        (let* ((_%maybe-sub-class134444%_ _%maybe-sub-class134440%_)
               (_%maybe-super-class134452%_ _%maybe-super-class134441%_)
               (_%maybe-super-class-id134461%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class134452%_)))
               (_%$e134463%_
                (eq? _%maybe-super-class-id134461%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class134444%_)))))
          (if _%$e134463%_
              _%$e134463%_
              (let ((__tmp140756
                     (lambda (_%super-class134466%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class134466%_))
                            _%maybe-super-class-id134461%_)))
                    (__tmp140755
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class134444%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (ormap__0 __tmp140756 __tmp140755))))))
    (define subclass?
      (lambda (_%maybe-sub-class134415%_ _%maybe-super-class134416%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class134415%_ 'class))
            (let ((_%maybe-sub-class134420%_ _%maybe-sub-class134415%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class134416%_
                     'class))
                  (let ((_%maybe-super-class134430%_
                         _%maybe-super-class134416%_))
                    (__subclass?
                     _%maybe-sub-class134420%_
                     _%maybe-super-class134430%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@763.45-763.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class134416%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@763.18-763.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class134415%_)
              '#!void))))
    (define object?
      (lambda (_%o134412%_)
        (if (let () (declare (not safe)) (##structure? _%o134412%_))
            (let ((__tmp140757
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o134412%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp140757 'class))
            '#f)))
    (define __direct-instance?
      (lambda (_%klass134399%_ _%obj134400%_)
        (let* ((_%klass134403%_ _%klass134399%_)
               (__tmp140758
                (let () (declare (not safe)) (##type-id _%klass134403%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj134400%_ __tmp140758))))
    (define direct-instance?
      (lambda (_%klass134384%_ _%obj134385%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134384%_ 'class))
            (let ((_%klass134389%_ _%klass134384%_))
              (__direct-instance? _%klass134389%_ _%obj134385%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@777.25-777.30"
               'contract:
               'class-type?
               'value:
               _%klass134384%_)
              '#!void))))
    (define immediate-instance-of?
      (lambda (_%klass134380%_ _%obj134381%_)
        (if (let () (declare (not safe)) (##structure? _%obj134381%_))
            (eq? _%klass134380%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj134381%_)))
            '#f)))
    (define __struct-instance?
      (lambda (_%klass134367%_ _%obj134368%_)
        (let* ((_%klass134371%_ _%klass134367%_)
               (__tmp140759
                (let () (declare (not safe)) (##type-id _%klass134371%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj134368%_ __tmp140759))))
    (define struct-instance?
      (lambda (_%klass134352%_ _%obj134353%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134352%_ 'class))
            (let ((_%klass134357%_ _%klass134352%_))
              (__struct-instance? _%klass134357%_ _%obj134353%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@806.25-806.30"
               'contract:
               'class-type?
               'value:
               _%klass134352%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass134304%_ _%obj134305%_)
        (let* ((_%klass134308%_ _%klass134304%_)
               (_%type134317%_ (class-of _%obj134305%_))
               (_%maybe-sub-class134319%_ _%type134317%_)
               (_%maybe-super-class134322%_ _%klass134308%_)
               (_%maybe-sub-class134327%_ _%maybe-sub-class134319%_)
               (_%maybe-super-class134342%_ _%maybe-super-class134322%_))
          (__subclass?
           _%maybe-sub-class134327%_
           _%maybe-super-class134342%_))))
    (define class-instance?
      (lambda (_%klass134289%_ _%obj134290%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134289%_ 'class))
            (let ((_%klass134294%_ _%klass134289%_))
              (__class-instance? _%klass134294%_ _%obj134290%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@811.24-811.29"
               'contract:
               'class-type?
               'value:
               _%klass134289%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass134248%_ _%k134249%_)
        (let* ((_%klass134252%_ _%klass134248%_) (_%k134260%_ _%k134249%_))
          (if (let* ((_%klass134269%_ _%klass134252%_)
                     (_%klass134274%_ _%klass134269%_))
                (__class-type-system? _%klass134274%_))
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass134252%_)
                '#!void)
              (let ((_%obj134287%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass134252%_ _%k134260%_))))
                (__object-fill! _%obj134287%_ '#f))))))
    (define make-object
      (lambda (_%klass134223%_ _%k134224%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134223%_ 'class))
            (let ((_%klass134228%_ _%klass134223%_))
              (if (fixnum? _%k134224%_)
                  (let ((_%k134238%_ _%k134224%_))
                    (__make-object _%klass134228%_ _%k134238%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@816.37-816.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k134224%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@816.20-816.25"
               'contract:
               'class-type?
               'value:
               _%klass134223%_)
              '#!void))))
    (define __object-class
      (lambda (_%obj134211%_)
        (let ((_%obj134214%_ _%obj134211%_))
          (declare (not safe))
          (##structure-type _%obj134214%_))))
    (define object-class
      (lambda (_%obj134197%_)
        (if (object? _%obj134197%_)
            (let ((_%obj134201%_ _%obj134197%_))
              (__object-class _%obj134201%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@836.21-836.24"
               'contract:
               'object?
               'value:
               _%obj134197%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj134179%_ _%fill134180%_)
        (let ((_%obj134183%_ _%obj134179%_))
          (let _%loop134192%_ ((_%i134194%_
                                (let ((__tmp140760
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj134183%_))))
                                  (declare (not safe))
                                  (##fx- __tmp140760 '1))))
            (if (let () (declare (not safe)) (##fx> _%i134194%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj134183%_
                     _%fill134180%_
                     _%i134194%_
                     '#f
                     '#f))
                  (_%loop134192%_
                   (let () (declare (not safe)) (##fx- _%i134194%_ '1))))
                _%obj134183%_)))))
    (define object-fill!
      (lambda (_%obj134164%_ _%fill134165%_)
        (if (object? _%obj134164%_)
            (let ((_%obj134169%_ _%obj134164%_))
              (__object-fill! _%obj134169%_ _%fill134165%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@841.21-841.24"
               'contract:
               'object?
               'value:
               _%obj134164%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass134120%_)
        (let* ((_%klass134123%_ _%klass134120%_)
               (_%klass134132%_ _%klass134123%_)
               (_%k134135%_
                (let ((__tmp140761
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass134123%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp140761)))
               (_%klass134140%_ _%klass134132%_)
               (_%k134154%_ _%k134135%_))
          (__make-object _%klass134140%_ _%k134154%_))))
    (define new-instance
      (lambda (_%klass134106%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass134106%_ 'class))
            (let ((_%klass134110%_ _%klass134106%_))
              (__new-instance _%klass134110%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.21-852.26"
               'contract:
               'class-type?
               'value:
               _%klass134106%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass133965%_ . _%args133966%_)
        (let* ((_%klass133969%_ _%klass133965%_)
               (_%$e133978%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass133969%_ '10 '#f '#f))))
          (if _%$e133978%_
              (let ((_%obj134003%_
                     (let* ((_%klass133983%_ _%klass133969%_)
                            (_%klass133988%_ _%klass133983%_))
                       (__new-instance _%klass133988%_))))
                (___constructor-init!
                 _%klass133969%_
                 _%$e133978%_
                 _%obj134003%_
                 _%args133966%_)
                _%obj134003%_)
              (if (let* ((_%klass134005%_ _%klass133969%_)
                         (_%klass134010%_ _%klass134005%_))
                    (__class-type-metaclass? _%klass134010%_))
                  (let ((_%obj134037%_
                         (let* ((_%klass134021%_ _%klass133969%_)
                                (_%klass134026%_ _%klass134021%_))
                           (__new-instance _%klass134026%_))))
                    (__metaclass-instance-init!
                     _%klass133969%_
                     _%obj134037%_
                     _%args133966%_)
                    _%obj134037%_)
                  (if (let* ((_%klass134039%_ _%klass133969%_)
                             (_%klass134044%_ _%klass134039%_))
                        (__class-type-struct? _%klass134044%_))
                      (if (let ((__tmp140763
                                 (let* ((_%klass134073%_ _%klass133969%_)
                                        (_%klass134078%_ _%klass134073%_))
                                   (__class-type-field-count _%klass134078%_)))
                                (__tmp140762
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args133966%_))))
                            (declare (not safe))
                            (##fx= __tmp140763 __tmp140762))
                          (apply ##structure _%klass133969%_ _%args133966%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass133969%_
                                   'slots:
                                   (let* ((_%klass134090%_ _%klass133969%_)
                                          (_%klass134095%_ _%klass134090%_))
                                     (__class-type-slot-list _%klass134095%_))
                                   'args:
                                   _%args133966%_)
                            '#!void))
                      (let ((_%obj134071%_
                             (let* ((_%klass134055%_ _%klass133969%_)
                                    (_%klass134060%_ _%klass134055%_))
                               (__new-instance _%klass134060%_))))
                        (___class-instance-init!
                         _%klass133969%_
                         _%obj134071%_
                         _%args133966%_)
                        _%obj134071%_)))))))
    (define make-instance
      (lambda (_%klass133950%_ . _%args133951%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass133950%_ 'class))
            (let ((_%klass133955%_ _%klass133950%_))
              (declare (not safe))
              (##apply __make-instance _%klass133955%_ _%args133951%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@855.22-855.27"
               'contract:
               'class-type?
               'value:
               _%klass133950%_)
              '#!void))))
    (define make-class-instance make-instance)
    (define __struct-instance-init!
      (lambda (_%obj133937%_ . _%args133938%_)
        (let ((_%obj133941%_ _%obj133937%_))
          (if (let ((__tmp140765
                     (let () (declare (not safe)) (##length _%args133938%_)))
                    (__tmp140764
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj133941%_))))
                (declare (not safe))
                (##fx< __tmp140765 __tmp140764))
              (___struct-instance-init! _%obj133941%_ _%args133938%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj133941%_
                     'args:
                     _%args133938%_))
          '#!void)))
    (define struct-instance-init!
      (lambda (_%obj133922%_ . _%args133923%_)
        (if (object? _%obj133922%_)
            (let ((_%obj133927%_ _%obj133922%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj133927%_ _%args133923%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@880.30-880.33"
               'contract:
               'object?
               'value:
               _%obj133922%_)
              '#!void))))
    (define ___struct-instance-init!
      (lambda (_%obj133881%_ _%args133882%_)
        (let _%lp133884%_ ((_%k133886%_ '1) (_%rest133887%_ _%args133882%_))
          (let* ((_%$%rest133888133896%_ _%rest133887%_)
                 (_%$%else133890133904%_ (lambda () _%obj133881%_))
                 (_%$%K133892133910%_
                  (lambda (_%rest133907%_ _%hd133908%_)
                    (unchecked-field-set!
                     _%obj133881%_
                     _%k133886%_
                     _%hd133908%_)
                    (_%lp133884%_
                     (let () (declare (not safe)) (##fx+ _%k133886%_ '1))
                     _%rest133907%_))))
            (if (pair? _%$%rest133888133896%_)
                (let ((_%$%hd133893133913%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest133888133896%_)))
                      (_%$%tl133894133915%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest133888133896%_))))
                  (let* ((_%hd133918%_ _%$%hd133893133913%_)
                         (_%rest133920%_ _%$%tl133894133915%_))
                    (_%$%K133892133910%_ _%rest133920%_ _%hd133918%_)))
                (_%$%else133890133904%_))))))
    (define __class-instance-init!
      (lambda (_%obj133868%_ . _%args133869%_)
        (let ((_%obj133872%_ _%obj133868%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj133872%_))
           _%obj133872%_
           _%args133869%_)
          '#!void)))
    (define class-instance-init!
      (lambda (_%obj133853%_ . _%args133854%_)
        (if (object? _%obj133853%_)
            (let ((_%obj133858%_ _%obj133853%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj133858%_ _%args133854%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@920.29-920.32"
               'contract:
               'object?
               'value:
               _%obj133853%_)
              '#!void))))
    (define ___class-instance-init!
      (lambda (_%klass133795%_ _%obj133796%_ _%args133797%_)
        (let _%lp133799%_ ((_%rest133801%_ _%args133797%_))
          (let* ((_%$%rest133802133812%_ _%rest133801%_)
                 (_%$%else133804133820%_
                  (lambda ()
                    (if (null? _%rest133801%_)
                        _%obj133796%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass133795%_
                               'rest:
                               _%rest133801%_))))
                 (_%$%K133806133834%_
                  (lambda (_%rest133823%_ _%val133824%_ _%key133825%_)
                    (if (keyword? _%key133825%_)
                        (let ((_%$e133828%_
                               (__class-slot-offset
                                _%klass133795%_
                                _%key133825%_)))
                          (if _%$e133828%_
                              (let ()
                                (unchecked-field-set!
                                 _%obj133796%_
                                 _%$e133828%_
                                 _%val133824%_)
                                (_%lp133799%_ _%rest133823%_))
                              (error '"unknown slot"
                                     'class:
                                     _%klass133795%_
                                     'slot:
                                     _%key133825%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key133825%_)))))
            (if (pair? _%$%rest133802133812%_)
                (let ((_%$%hd133807133837%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest133802133812%_)))
                      (_%$%tl133808133839%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest133802133812%_))))
                  (let ((_%key133842%_ _%$%hd133807133837%_))
                    (if (pair? _%$%tl133808133839%_)
                        (let ((_%$%hd133809133844%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl133808133839%_)))
                              (_%$%tl133810133846%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl133808133839%_))))
                          (let* ((_%val133849%_ _%$%hd133809133844%_)
                                 (_%rest133851%_ _%$%tl133810133846%_))
                            (_%$%K133806133834%_
                             _%rest133851%_
                             _%val133849%_
                             _%key133842%_)))
                        (_%$%else133804133820%_))))
                (_%$%else133804133820%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass133791%_ _%obj133792%_ _%args133793%_)
        (apply call-method
               _%klass133791%_
               'instance-init!
               _%obj133792%_
               _%args133793%_)))
    (define __constructor-init!
      (lambda (_%klass133760%_
               _%kons-id133761%_
               _%obj133762%_
               .
               _%args133763%_)
        (let* ((_%klass133766%_ _%klass133760%_)
               (_%kons-id133774%_ _%kons-id133761%_)
               (_%obj133782%_ _%obj133762%_))
          (___constructor-init!
           _%klass133766%_
           _%kons-id133774%_
           _%obj133782%_
           _%args133763%_)
          '#!void)))
    (define constructor-init!
      (lambda (_%klass133723%_
               _%kons-id133724%_
               _%obj133725%_
               .
               _%args133726%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass133723%_ 'class))
            (let ((_%klass133730%_ _%klass133723%_))
              (if (symbol? _%kons-id133724%_)
                  (let ((_%kons-id133740%_ _%kons-id133724%_))
                    (if (object? _%obj133725%_)
                        (let ((_%obj133750%_ _%obj133725%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass133730%_
                                   _%kons-id133740%_
                                   _%obj133750%_
                                   _%args133726%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@944.63-944.66"
                           'contract:
                           'object?
                           'value:
                           _%obj133725%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@944.43-944.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id133724%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@944.26-944.31"
               'contract:
               'class-type?
               'value:
               _%klass133723%_)
              '#!void))))
    (define ___constructor-init!
      (lambda (_%klass133712%_ _%kons-id133713%_ _%obj133714%_ _%args133715%_)
        (let ((_%$e133717%_
               (__find-method
                _%klass133712%_
                _%obj133714%_
                _%kons-id133713%_)))
          (if _%$e133717%_
              (let ()
                (apply _%$e133717%_ _%obj133714%_ _%args133715%_)
                _%obj133714%_)
              (error '"missing constructor"
                     'class:
                     _%klass133712%_
                     'method:
                     _%kons-id133713%_)))))
    (define __struct-copy
      (lambda (_%struct133700%_)
        (let ((_%struct133703%_ _%struct133700%_))
          (declare (not safe))
          (##structure-copy _%struct133703%_))))
    (define struct-copy
      (lambda (_%struct133686%_)
        (if (object? _%struct133686%_)
            (let ((_%struct133690%_ _%struct133686%_))
              (__struct-copy _%struct133690%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@958.20-958.26"
               'contract:
               'object?
               'value:
               _%struct133686%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj133667%_)
        (let* ((_%obj133670%_ _%obj133667%_)
               (_%len133679%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj133670%_))))
          (let _%recur133681%_ ((_%i133683%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i133683%_ _%len133679%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj133670%_
                         _%i133683%_
                         '#f
                         '#f))
                      (_%recur133681%_
                       (let () (declare (not safe)) (##fx+ _%i133683%_ '1))))
                '())))))
    (define struct->list
      (lambda (_%obj133653%_)
        (if (object? _%obj133653%_)
            (let ((_%obj133657%_ _%obj133653%_))
              (__struct->list _%obj133657%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@961.21-961.24"
               'contract:
               'object?
               'value:
               _%obj133653%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj133605%_)
        (let* ((_%obj133608%_ _%obj133605%_)
               (_%klass133617%_
                (let () (declare (not safe)) (##structure-type _%obj133608%_)))
               (_%slot-vector133619%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass133617%_ '7 '#f '#f))))
          (let _%loop133621%_ ((_%index133623%_
                                (let ((__tmp140766
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector133619%_))))
                                  (declare (not safe))
                                  (##fx- __tmp140766 '1)))
                               (_%plist133624%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index133623%_ '1))
                (cons _%klass133617%_ _%plist133624%_)
                (let ((_%slot133627%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector133619%_
                          _%index133623%_))))
                  (_%loop133621%_
                   (let () (declare (not safe)) (##fx- _%index133623%_ '1))
                   (cons (let ((_%sym133629%_ _%slot133627%_))
                           (if (symbol? _%sym133629%_)
                               (let ((_%sym133634%_ _%sym133629%_))
                                 (declare (not safe))
                                 (__symbol->keyword _%sym133634%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  'symbol?
                                  'value:
                                  _%sym133629%_)
                                 '#!void)))
                         (cons (unchecked-field-ref
                                _%obj133608%_
                                _%index133623%_)
                               _%plist133624%_)))))))))
    (define class->list
      (lambda (_%obj133591%_)
        (if (object? _%obj133591%_)
            (let ((_%obj133595%_ _%obj133591%_)) (__class->list _%obj133595%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@969.20-969.23"
               'contract:
               'object?
               'value:
               _%obj133591%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj133541%_ _%id133542%_ . _%args133543%_)
        (let* ((_%id133546%_ _%id133542%_)
               (_%$e133577%_
                (let* ((_%obj133555%_ _%obj133541%_)
                       (_%id133558%_ _%id133546%_)
                       (_%id133563%_ _%id133558%_))
                  (__method-ref _%obj133555%_ _%id133563%_))))
          (if _%$e133577%_
              (let ((_%method133582%_ _%$e133577%_))
                (apply _%method133582%_ _%obj133541%_ _%args133543%_))
              (error '"cannot find method"
                     'object:
                     _%obj133541%_
                     'method:
                     _%id133546%_)))))
    (define call-method
      (lambda (_%obj133525%_ _%id133526%_ . _%args133527%_)
        (if (symbol? _%id133526%_)
            (let ((_%id133531%_ _%id133526%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj133525%_
                       _%id133531%_
                       _%args133527%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@984.24-984.26"
               'contract:
               'symbol?
               'value:
               _%id133526%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj133476%_ _%id133477%_)
        (let* ((_%id133480%_ _%id133477%_)
               (_%klass133489%_ (class-of _%obj133476%_))
               (_%obj133492%_ _%obj133476%_)
               (_%id133495%_ _%id133480%_)
               (_%klass133500%_ _%klass133489%_)
               (_%id133515%_ _%id133495%_))
          (__find-method _%klass133500%_ _%obj133492%_ _%id133515%_))))
    (define method-ref
      (lambda (_%obj133461%_ _%id133462%_)
        (if (symbol? _%id133462%_)
            (let ((_%id133466%_ _%id133462%_))
              (__method-ref _%obj133461%_ _%id133466%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1011.23-1011.25"
               'contract:
               'symbol?
               'value:
               _%id133462%_)
              '#!void))))
    (define checked-method-ref
      (lambda (_%obj133433%_ _%id133434%_)
        (let ((_%$e133458%_
               (let* ((_%obj133437%_ _%obj133433%_)
                      (_%id133440%_ _%id133434%_))
                 (if (symbol? _%id133440%_)
                     (let ((_%id133445%_ _%id133440%_))
                       (__method-ref _%obj133437%_ _%id133445%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id133440%_)
                       '#!void)))))
          (if _%$e133458%_
              _%$e133458%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj133433%_
                       'method:
                       _%id133434%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj133382%_ _%id133383%_)
        (let* ((_%id133386%_ _%id133383%_)
               (_%$e133417%_
                (let* ((_%obj133395%_ _%obj133382%_)
                       (_%id133398%_ _%id133386%_)
                       (_%id133403%_ _%id133398%_))
                  (__method-ref _%obj133395%_ _%id133403%_))))
          (if _%$e133417%_
              (let ((_%method133422%_ _%$e133417%_))
                (lambda _%args133430%_
                  (apply _%method133422%_ _%obj133382%_ _%args133430%_)))
              '#f))))
    (define bound-method-ref
      (lambda (_%obj133367%_ _%id133368%_)
        (if (symbol? _%id133368%_)
            (let ((_%id133372%_ _%id133368%_))
              (__bound-method-ref _%obj133367%_ _%id133372%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1019.29-1019.31"
               'contract:
               'symbol?
               'value:
               _%id133368%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj133350%_ _%id133351%_)
        (let* ((_%id133354%_ _%id133351%_)
               (_%method133363%_
                (checked-method-ref _%obj133350%_ _%id133354%_)))
          (lambda _%args133365%_
            (apply _%method133363%_ _%obj133350%_ _%args133365%_)))))
    (define checked-bound-method-ref
      (lambda (_%obj133335%_ _%id133336%_)
        (if (symbol? _%id133336%_)
            (let ((_%id133340%_ _%id133336%_))
              (__checked-bound-method-ref _%obj133335%_ _%id133340%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1028.37-1028.39"
               'contract:
               'symbol?
               'value:
               _%id133336%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass133204%_ _%obj133205%_ _%id133206%_)
        (let* ((_%klass133209%_ _%klass133204%_) (_%id133217%_ _%id133206%_))
          (if (let* ((_%klass133226%_ _%klass133209%_)
                     (_%klass133231%_ _%klass133226%_))
                (__class-type-sealed? _%klass133231%_))
              (let ((_%tab133261%_
                     (let* ((_%klass133245%_ _%klass133209%_)
                            (_%klass133250%_ _%klass133245%_))
                       (__specialize-class _%klass133250%_))))
                (declare (not safe))
                (symbolic-table-ref _%tab133261%_ _%id133217%_ '#f))
              (let ((_%$e133296%_
                     (let* ((_%klass133263%_ _%klass133209%_)
                            (_%obj133266%_ _%obj133205%_)
                            (_%id133269%_ _%id133217%_)
                            (_%klass133274%_ _%klass133263%_)
                            (_%id133286%_ _%id133269%_))
                       (__direct-method-ref
                        _%klass133274%_
                        _%obj133266%_
                        _%id133286%_))))
                (if _%$e133296%_
                    _%$e133296%_
                    (let* ((_%klass133300%_ _%klass133209%_)
                           (_%obj133303%_ _%obj133205%_)
                           (_%id133306%_ _%id133217%_)
                           (_%klass133311%_ _%klass133300%_)
                           (_%id133325%_ _%id133306%_))
                      (__mixin-method-ref
                       _%klass133311%_
                       _%obj133303%_
                       _%id133325%_))))))))
    (define find-method
      (lambda (_%klass133178%_ _%obj133179%_ _%id133180%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass133178%_ 'class))
            (let ((_%klass133184%_ _%klass133178%_))
              (if (symbol? _%id133180%_)
                  (let ((_%id133194%_ _%id133180%_))
                    (__find-method _%klass133184%_ _%obj133179%_ _%id133194%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1033.41-1033.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id133180%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1033.20-1033.25"
               'contract:
               'class-type?
               'value:
               _%klass133178%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins133123%_ _%obj133124%_ _%id133125%_)
        (let* ((_%id133128%_ _%id133125%_)
               (__tmp140767
                (lambda (_%$%g133136133138%_)
                  (let* ((_%klass133141%_ _%$%g133136133138%_)
                         (_%obj133144%_ _%obj133124%_)
                         (_%id133147%_ _%id133128%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass133141%_ 'class))
                        (let* ((_%klass133152%_ _%klass133141%_)
                               (_%id133168%_ _%id133147%_))
                          (__direct-method-ref
                           _%klass133152%_
                           _%obj133144%_
                           _%id133168%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass133141%_)
                          '#!void))))))
          (declare (not safe))
          (ormap__0 __tmp140767 _%mixins133123%_))))
    (define mixin-find-method
      (lambda (_%mixins133107%_ _%obj133108%_ _%id133109%_)
        (if (symbol? _%id133109%_)
            (let ((_%id133113%_ _%id133109%_))
              (__mixin-find-method
               _%mixins133107%_
               _%obj133108%_
               _%id133113%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1042.37-1042.39"
               'contract:
               'symbol?
               'value:
               _%id133109%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass133000%_ _%obj133001%_ _%id133002%_)
        (let* ((_%klass133005%_ _%klass133000%_) (_%id133013%_ _%id133002%_))
          (letrec ((_%metaclass-resolve-method133022%_
                    (lambda ()
                      (let* ((_%obj133083%_ _%klass133005%_)
                             (_%id133086%_ 'direct-method-ref)
                             (_%args133089%_ (list _%obj133001%_ _%id133013%_))
                             (_%id133094%_ _%id133086%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj133083%_
                                 _%id133094%_
                                 _%args133089%_))))
                   (_%metaclass-resolve-method!133023%_
                    (lambda ()
                      (let ((_%method133080%_
                             (_%metaclass-resolve-method133022%_)))
                        (let ((__tmp140769
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass133005%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp140768
                               (if _%method133080%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp140769
                           _%id133013%_
                           __tmp140768))
                        _%method133080%_))))
            (let ((_%$e133025%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass133005%_ '11 '#f '#f))))
              (if _%$e133025%_
                  (let ((_%method133030%_
                         (let ()
                           (declare (not safe))
                           (symbolic-table-ref
                            _%$e133025%_
                            _%id133013%_
                            '#f))))
                    (if (procedure? _%method133030%_)
                        _%method133030%_
                        (if (let* ((_%klass133033%_ _%klass133005%_)
                                   (_%klass133038%_ _%klass133033%_))
                              (__class-type-metaclass? _%klass133038%_))
                            (let ((_%$e133056%_ _%method133030%_))
                              (if (eq? 'resolved _%$e133056%_)
                                  (_%metaclass-resolve-method133022%_)
                                  (if (eq? 'unknown _%$e133056%_)
                                      '#f
                                      (_%metaclass-resolve-method!133023%_))))
                            '#f)))
                  (if (let* ((_%klass133060%_ _%klass133005%_)
                             (_%klass133065%_ _%klass133060%_))
                        (__class-type-metaclass? _%klass133065%_))
                      (let ((_%tab133076%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass133005%_
                           _%tab133076%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!133023%_))
                      '#f)))))))
    (define direct-method-ref
      (lambda (_%klass132974%_ _%obj132975%_ _%id132976%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass132974%_ 'class))
            (let ((_%klass132980%_ _%klass132974%_))
              (if (symbol? _%id132976%_)
                  (let ((_%id132990%_ _%id132976%_))
                    (__direct-method-ref
                     _%klass132980%_
                     _%obj132975%_
                     _%id132990%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1045.47-1045.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id132976%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1045.26-1045.31"
               'contract:
               'class-type?
               'value:
               _%klass132974%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass132926%_ _%obj132927%_ _%id132928%_)
        (let* ((_%klass132931%_ _%klass132926%_)
               (_%id132939%_ _%id132928%_)
               (_%mixins132948%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass132931%_ '6 '#f '#f)))
               (_%obj132951%_ _%obj132927%_)
               (_%id132954%_ _%id132939%_)
               (_%id132959%_ _%id132954%_))
          (__mixin-find-method _%mixins132948%_ _%obj132951%_ _%id132959%_))))
    (define mixin-method-ref
      (lambda (_%klass132900%_ _%obj132901%_ _%id132902%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass132900%_ 'class))
            (let ((_%klass132906%_ _%klass132900%_))
              (if (symbol? _%id132902%_)
                  (let ((_%id132916%_ _%id132902%_))
                    (__mixin-method-ref
                     _%klass132906%_
                     _%obj132901%_
                     _%id132916%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1075.46-1075.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id132902%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1075.25-1075.30"
               'contract:
               'class-type?
               'value:
               _%klass132900%_)
              '#!void))))
    (define __bind-method!__%
      (lambda (_%klass132781%_ _%id132782%_ _%proc132783%_ _%rebind?132784%_)
        (let* ((_%id132787%_ _%id132782%_) (_%proc132795%_ _%proc132783%_))
          (letrec ((_%flush-caches!132804%_
                    (lambda (_%klass132858%_)
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%klass132858%_
                             '12
                             '#f
                             '#f))
                          (begin
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-set!
                               _%klass132858%_
                               '#f
                               '12
                               '#f
                               '#f))
                            (if (let ((_%klass132860%_ _%klass132858%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass132860%_
                                         'class))
                                      (let ((_%klass132865%_ _%klass132860%_))
                                        (__class-type-sealed? _%klass132865%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass132860%_)
                                        '#!void)))
                                (let ((__tmp140770
                                       (let ((__tmp140772
                                              (let ()
                                                (declare (not safe))
                                                (##fxnot class-type-flag-sealed)))
                                             (__tmp140771
                                              (let ()
                                                (declare (not safe))
                                                (##type-flags
                                                 _%klass132858%_))))
                                         (declare (not safe))
                                         (##fxand __tmp140772 __tmp140771))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _%klass132858%_
                                   __tmp140770
                                   '3
                                   class::t
                                   bind-method!))
                                '#!void))
                          '#!void)
                      (if (and _%rebind?132784%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass132858%_
                                  '13
                                  '#f
                                  '#f)))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _%klass132858%_
                             '#f
                             '13
                             '#f
                             '#f))
                          '#!void)
                      (let ((_%$e132876%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%klass132858%_
                                '9
                                '#f
                                '#f))))
                        (if _%$e132876%_
                            (let ((_%$e132881%_
                                   (let ()
                                     (declare (not safe))
                                     (agetq__0 'subclasses: _%$e132876%_))))
                              (if _%$e132881%_
                                  (for-each
                                   _%flush-caches!132804%_
                                   _%$e132881%_)
                                  '#!void))
                            '#!void))))
                   (_%bind!132805%_
                    (lambda (_%ht132856%_)
                      (if (and (not _%rebind?132784%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht132856%_
                                  _%id132787%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass132781%_
                                 'method:
                                 _%id132787%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht132856%_
                               _%id132787%_
                               _%proc132795%_))
                            (_%flush-caches!132804%_ _%klass132781%_)
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass132781%_ 'class))
                (let ((_%ht132808%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass132781%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht132808%_
                      (_%bind!132805%_ _%ht132808%_)
                      (let ((_%ht132810%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass132781%_
                           _%ht132810%_
                           '11
                           '#f
                           '#f))
                        (_%bind!132805%_ _%ht132810%_))))
                (if (let () (declare (not safe)) (##type? _%klass132781%_))
                    (let* ((_%klass132813%_
                            (__shadow-class__0 _%klass132781%_))
                           (_%id132816%_ _%id132787%_)
                           (_%proc132819%_ _%proc132795%_)
                           (_%rebind?132822%_ _%rebind?132784%_)
                           (_%id132827%_ _%id132816%_)
                           (_%proc132845%_ _%proc132819%_))
                      (__bind-method!__%
                       _%klass132813%_
                       _%id132827%_
                       _%proc132845%_
                       _%rebind?132822%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass132781%_)))))))
    (define __bind-method!__0
      (lambda (_%klass132889%_ _%id132890%_ _%proc132891%_)
        (let ((_%rebind?132893%_ '#f))
          (__bind-method!__%
           _%klass132889%_
           _%id132890%_
           _%proc132891%_
           _%rebind?132893%_))))
    (define __bind-method!
      (lambda _g140773_
        (let ((_g140774_ (let () (declare (not safe)) (##length _g140773_))))
          (cond ((let () (declare (not safe)) (##fx= _g140774_ 3))
                 (apply __bind-method!__0 _g140773_))
                ((let () (declare (not safe)) (##fx= _g140774_ 4))
                 (apply __bind-method!__% _g140773_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g140773_))))))
    (define bind-method!__%
      (lambda (_%klass132739%_ _%id132740%_ _%proc132741%_ _%rebind?132742%_)
        (if (symbol? _%id132740%_)
            (let ((_%id132746%_ _%id132740%_))
              (if (procedure? _%proc132741%_)
                  (let ((_%proc132756%_ _%proc132741%_))
                    (__bind-method!__%
                     _%klass132739%_
                     _%id132746%_
                     _%proc132756%_
                     _%rebind?132742%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1078.42-1078.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc132741%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1078.27-1078.29"
               'contract:
               'symbol?
               'value:
               _%id132740%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass132769%_ _%id132770%_ _%proc132771%_)
        (let ((_%rebind?132773%_ '#f))
          (bind-method!__%
           _%klass132769%_
           _%id132770%_
           _%proc132771%_
           _%rebind?132773%_))))
    (define bind-method!
      (lambda _g140775_
        (let ((_g140776_ (let () (declare (not safe)) (##length _g140775_))))
          (cond ((let () (declare (not safe)) (##fx= _g140776_ 3))
                 (apply bind-method!__0 _g140775_))
                ((let () (declare (not safe)) (##fx= _g140776_ 4))
                 (apply bind-method!__% _g140775_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g140775_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint132720%_ _%seed132721%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint132720%_
           procedure-hash
           eq?
           _%seed132721%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint132727%_ '#f) (_%seed132729%_ '0))
          (make-method-specializer-table__%
           _%size-hint132727%_
           _%seed132729%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint132731%_)
        (let ((_%seed132733%_ '0))
          (make-method-specializer-table__%
           _%size-hint132731%_
           _%seed132733%_))))
    (define make-method-specializer-table
      (lambda _g140777_
        (let ((_g140778_ (let () (declare (not safe)) (##length _g140777_))))
          (cond ((let () (declare (not safe)) (##fx= _g140778_ 0))
                 (apply make-method-specializer-table__0 _g140777_))
                ((let () (declare (not safe)) (##fx= _g140778_ 1))
                 (apply make-method-specializer-table__1 _g140777_))
                ((let () (declare (not safe)) (##fx= _g140778_ 2))
                 (apply make-method-specializer-table__% _g140777_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g140777_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint132700%_ _%seed132702%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint132700%_
           procedure-hash
           eq?
           _%seed132702%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint132708%_ '#f) (_%seed132710%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint132708%_
           _%seed132710%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint132712%_)
        (let ((_%seed132714%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint132712%_
           _%seed132714%_))))
    (define make-method-specializer-table/lock
      (lambda _g140779_
        (let ((_g140780_ (let () (declare (not safe)) (##length _g140779_))))
          (cond ((let () (declare (not safe)) (##fx= _g140780_ 0))
                 (apply make-method-specializer-table/lock__0 _g140779_))
                ((let () (declare (not safe)) (##fx= _g140780_ 1))
                 (apply make-method-specializer-table/lock__1 _g140779_))
                ((let () (declare (not safe)) (##fx= _g140780_ 2))
                 (apply make-method-specializer-table/lock__% _g140779_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g140779_))))))
    (define method-specializer-table-ref
      (lambda (_%tab132653%_ _%key132654%_ _%default132655%_)
        (let ((_%table132657%_
               (let () (declare (not safe)) (&raw-table-table _%tab132653%_)))
              (_%seed132658%_
               (let () (declare (not safe)) (&raw-table-seed _%tab132653%_))))
          (let* ((_%h132660%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key132654%_))
                         _%seed132658%_))
                 (_%size132663%_ (vector-length _%table132657%_))
                 (_%entries132666%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size132663%_ '2)))
                 (_%start132669%_
                  (let ((__tmp140781
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h132660%_ _%entries132666%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp140781 '1))))
            (let _%loop132673%_ ((_%probe132676%_ _%start132669%_)
                                 (_%i132678%_ '1)
                                 (_%deleted132680%_ '#f))
              (let ((_%k132683%_ (vector-ref _%table132657%_ _%probe132676%_)))
                (if (eq? _%k132683%_ (macro-unused-obj))
                    _%default132655%_
                    (if (eq? _%k132683%_ (macro-deleted-obj))
                        (_%loop132673%_
                         (let ((_%next-probe132688%_
                                (fx+ _%start132669%_
                                     _%i132678%_
                                     (fx* _%i132678%_ _%i132678%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe132688%_ _%size132663%_))
                         (let () (declare (not safe)) (##fx+ _%i132678%_ '1))
                         (let ((_%$e132691%_ _%deleted132680%_))
                           (if _%$e132691%_ _%$e132691%_ _%probe132676%_)))
                        (if (eq? _%key132654%_ _%k132683%_)
                            (vector-ref
                             _%table132657%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe132676%_ '1)))
                            (_%loop132673%_
                             (let ((_%next-probe132696%_
                                    (fx+ _%start132669%_
                                         _%i132678%_
                                         (fx* _%i132678%_ _%i132678%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe132696%_
                                _%size132663%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i132678%_ '1))
                             _%deleted132680%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab132624%_ _%key132625%_ _%default132626%_)
        (let ((_%lock132628%_
               (let () (declare (not safe)) (&raw-table-lock _%tab132624%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again132633%_ ((_%spin132636%_ '0))
              (if (let ((__tmp140782
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock132628%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp140782 '0))
                  (let ((__tmp140783 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock132628%_ '1 __tmp140783))
                  (if (let () (declare (not safe)) (##fx< _%spin132636%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again132633%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin132636%_ '1))))
                      (let ((_%owner132642%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock132628%_ '1))))
                        (if (eq? _%owner132642%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner132642%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again132633%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r132648%_
                 (method-specializer-table-ref
                  _%tab132624%_
                  _%key132625%_
                  _%default132626%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock132628%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock132628%_ '0 '0 '1))))
            _%$r132648%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab132576%_ _%key132577%_ _%value132578%_)
        (let ((_%table132580%_
               (let () (declare (not safe)) (&raw-table-table _%tab132576%_)))
              (_%seed132581%_
               (let () (declare (not safe)) (&raw-table-seed _%tab132576%_))))
          (let* ((_%h132583%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key132577%_))
                         _%seed132581%_))
                 (_%size132586%_ (vector-length _%table132580%_))
                 (_%entries132589%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size132586%_ '2)))
                 (_%start132592%_
                  (let ((__tmp140784
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h132583%_ _%entries132589%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp140784 '1))))
            (let _%loop132596%_ ((_%probe132599%_ _%start132592%_)
                                 (_%i132601%_ '1)
                                 (_%deleted132603%_ '#f))
              (let ((_%k132606%_ (vector-ref _%table132580%_ _%probe132599%_)))
                (if (eq? _%k132606%_ (macro-unused-obj))
                    (if _%deleted132603%_
                        (begin
                          (vector-set!
                           _%table132580%_
                           _%deleted132603%_
                           _%key132577%_)
                          (vector-set!
                           _%table132580%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted132603%_ '1))
                           _%value132578%_)
                          (let ((__tmp140785
                                 (let ((__tmp140786
                                        (let ()
                                          (declare (not safe))
                                          (&raw-table-count _%tab132576%_))))
                                   (declare (not safe))
                                   (##fx+ __tmp140786 '1))))
                            (declare (not safe))
                            (&raw-table-count-set! _%tab132576%_ __tmp140785)))
                        (begin
                          (vector-set!
                           _%table132580%_
                           _%probe132599%_
                           _%key132577%_)
                          (vector-set!
                           _%table132580%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe132599%_ '1))
                           _%value132578%_)
                          (let ()
                            (let ((__tmp140787
                                   (let ((__tmp140788
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-free _%tab132576%_))))
                                     (declare (not safe))
                                     (##fx- __tmp140788 '1))))
                              (declare (not safe))
                              (&raw-table-free-set! _%tab132576%_ __tmp140787))
                            (let ((__tmp140789
                                   (let ((__tmp140790
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-count _%tab132576%_))))
                                     (declare (not safe))
                                     (##fx+ __tmp140790 '1))))
                              (declare (not safe))
                              (&raw-table-count-set!
                               _%tab132576%_
                               __tmp140789)))))
                    (if (eq? _%k132606%_ (macro-deleted-obj))
                        (_%loop132596%_
                         (let ((_%next-probe132613%_
                                (fx+ _%start132592%_
                                     _%i132601%_
                                     (fx* _%i132601%_ _%i132601%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe132613%_ _%size132586%_))
                         (let () (declare (not safe)) (##fx+ _%i132601%_ '1))
                         (let ((_%$e132616%_ _%deleted132603%_))
                           (if _%$e132616%_ _%$e132616%_ _%probe132599%_)))
                        (if (eq? _%key132577%_ _%k132606%_)
                            (let ()
                              (vector-set!
                               _%table132580%_
                               _%probe132599%_
                               _%key132577%_)
                              (vector-set!
                               _%table132580%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe132599%_ '1))
                               _%value132578%_))
                            (_%loop132596%_
                             (let ((_%next-probe132621%_
                                    (fx+ _%start132592%_
                                         _%i132601%_
                                         (fx* _%i132601%_ _%i132601%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe132621%_
                                _%size132586%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i132601%_ '1))
                             _%deleted132603%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab132572%_ _%key132573%_ _%value132574%_)
        (if (let ((__tmp140793
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab132572%_)))
                  (__tmp140791
                   (let ((__tmp140792
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab132572%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp140792 '4))))
              (declare (not safe))
              (##fx< __tmp140793 __tmp140791))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab132572%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab132572%_
         _%key132573%_
         _%value132574%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab132542%_ _%key132543%_ _%value132544%_)
        (let ((_%lock132547%_
               (let () (declare (not safe)) (&raw-table-lock _%tab132542%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again132552%_ ((_%spin132555%_ '0))
              (if (let ((__tmp140794
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock132547%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp140794 '0))
                  (let ((__tmp140795 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock132547%_ '1 __tmp140795))
                  (if (let () (declare (not safe)) (##fx< _%spin132555%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again132552%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin132555%_ '1))))
                      (let ((_%owner132561%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock132547%_ '1))))
                        (if (eq? _%owner132561%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner132561%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again132552%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r132567%_
                 (method-specializer-table-set!
                  _%tab132542%_
                  _%key132543%_
                  _%value132544%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock132547%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock132547%_ '0 '0 '1))))
            _%$r132567%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab132493%_
               _%key132494%_
               _%method-specializer-table-update!132495%_
               _%default132496%_)
        (let ((_%table132498%_
               (let () (declare (not safe)) (&raw-table-table _%tab132493%_)))
              (_%seed132499%_
               (let () (declare (not safe)) (&raw-table-seed _%tab132493%_))))
          (let* ((_%h132501%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key132494%_))
                         _%seed132499%_))
                 (_%size132504%_ (vector-length _%table132498%_))
                 (_%entries132507%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size132504%_ '2)))
                 (_%start132510%_
                  (let ((__tmp140796
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h132501%_ _%entries132507%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp140796 '1))))
            (let _%loop132514%_ ((_%probe132517%_ _%start132510%_)
                                 (_%i132519%_ '1)
                                 (_%deleted132521%_ '#f))
              (let ((_%k132524%_ (vector-ref _%table132498%_ _%probe132517%_)))
                (if (eq? _%k132524%_ (macro-unused-obj))
                    (if _%deleted132521%_
                        (begin
                          (vector-set!
                           _%table132498%_
                           _%deleted132521%_
                           _%key132494%_)
                          (vector-set!
                           _%table132498%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted132521%_ '1))
                           (_%method-specializer-table-update!132495%_
                            _%default132496%_))
                          (let ((__tmp140797
                                 (let ((__tmp140798
                                        (let ()
                                          (declare (not safe))
                                          (&raw-table-count _%tab132493%_))))
                                   (declare (not safe))
                                   (##fx+ __tmp140798 '1))))
                            (declare (not safe))
                            (&raw-table-count-set! _%tab132493%_ __tmp140797)))
                        (begin
                          (vector-set!
                           _%table132498%_
                           _%probe132517%_
                           _%key132494%_)
                          (vector-set!
                           _%table132498%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe132517%_ '1))
                           (_%method-specializer-table-update!132495%_
                            _%default132496%_))
                          (let ()
                            (let ((__tmp140799
                                   (let ((__tmp140800
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-free _%tab132493%_))))
                                     (declare (not safe))
                                     (##fx- __tmp140800 '1))))
                              (declare (not safe))
                              (&raw-table-free-set! _%tab132493%_ __tmp140799))
                            (let ((__tmp140801
                                   (let ((__tmp140802
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-count _%tab132493%_))))
                                     (declare (not safe))
                                     (##fx+ __tmp140802 '1))))
                              (declare (not safe))
                              (&raw-table-count-set!
                               _%tab132493%_
                               __tmp140801)))))
                    (if (eq? _%k132524%_ (macro-deleted-obj))
                        (_%loop132514%_
                         (let ((_%next-probe132531%_
                                (fx+ _%start132510%_
                                     _%i132519%_
                                     (fx* _%i132519%_ _%i132519%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe132531%_ _%size132504%_))
                         (let () (declare (not safe)) (##fx+ _%i132519%_ '1))
                         (let ((_%$e132534%_ _%deleted132521%_))
                           (if _%$e132534%_ _%$e132534%_ _%probe132517%_)))
                        (if (eq? _%key132494%_ _%k132524%_)
                            (let ()
                              (vector-set!
                               _%table132498%_
                               _%probe132517%_
                               _%key132494%_)
                              (vector-set!
                               _%table132498%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe132517%_ '1))
                               (_%method-specializer-table-update!132495%_
                                (vector-ref
                                 _%table132498%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe132517%_ '1))))))
                            (_%loop132514%_
                             (let ((_%next-probe132539%_
                                    (fx+ _%start132510%_
                                         _%i132519%_
                                         (fx* _%i132519%_ _%i132519%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe132539%_
                                _%size132504%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i132519%_ '1))
                             _%deleted132521%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab132488%_
               _%key132489%_
               _%method-specializer-table-update!132490%_
               _%default132491%_)
        (if (let ((__tmp140805
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab132488%_)))
                  (__tmp140803
                   (let ((__tmp140804
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab132488%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp140804 '4))))
              (declare (not safe))
              (##fx< __tmp140805 __tmp140803))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab132488%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab132488%_
         _%key132489%_
         _%method-specializer-table-update!132490%_
         _%default132491%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab132457%_
               _%key132458%_
               _%method-specializer-table-update!132459%_
               _%default132460%_)
        (let ((_%lock132463%_
               (let () (declare (not safe)) (&raw-table-lock _%tab132457%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again132468%_ ((_%spin132471%_ '0))
              (if (let ((__tmp140806
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock132463%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp140806 '0))
                  (let ((__tmp140807 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock132463%_ '1 __tmp140807))
                  (if (let () (declare (not safe)) (##fx< _%spin132471%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again132468%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin132471%_ '1))))
                      (let ((_%owner132477%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock132463%_ '1))))
                        (if (eq? _%owner132477%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner132477%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again132468%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r132483%_
                 (_%method-specializer-table-update!132459%_
                  _%tab132457%_
                  _%key132458%_
                  _%method-specializer-table-update!132459%_
                  _%default132460%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock132463%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock132463%_ '0 '0 '1))))
            _%$r132483%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab132414%_ _%key132415%_)
        (let ((_%table132417%_
               (let () (declare (not safe)) (&raw-table-table _%tab132414%_)))
              (_%seed132419%_
               (let () (declare (not safe)) (&raw-table-seed _%tab132414%_))))
          (let* ((_%h132422%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key132415%_))
                         _%seed132419%_))
                 (_%size132425%_ (vector-length _%table132417%_))
                 (_%entries132428%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size132425%_ '2)))
                 (_%start132431%_
                  (let ((__tmp140808
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h132422%_ _%entries132428%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp140808 '1))))
            (let _%loop132435%_ ((_%probe132438%_ _%start132431%_)
                                 (_%i132440%_ '1))
              (let ((_%k132443%_ (vector-ref _%table132417%_ _%probe132438%_)))
                (if (eq? _%k132443%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k132443%_ (macro-deleted-obj))
                        (_%loop132435%_
                         (let ((_%next-probe132448%_
                                (fx+ _%start132431%_
                                     _%i132440%_
                                     (fx* _%i132440%_ _%i132440%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe132448%_ _%size132425%_))
                         (let () (declare (not safe)) (##fx+ _%i132440%_ '1)))
                        (if (eq? _%key132415%_ _%k132443%_)
                            (let ()
                              (vector-set!
                               _%table132417%_
                               _%probe132438%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table132417%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe132438%_ '1))
                               (macro-absent-obj))
                              (let ((__tmp140809
                                     (let ((__tmp140810
                                            (let ()
                                              (declare (not safe))
                                              (&raw-table-count
                                               _%tab132414%_))))
                                       (declare (not safe))
                                       (##fx- __tmp140810 '1))))
                                (declare (not safe))
                                (&raw-table-count-set!
                                 _%tab132414%_
                                 __tmp140809)))
                            (_%loop132435%_
                             (let ((_%next-probe132454%_
                                    (fx+ _%start132431%_
                                         _%i132440%_
                                         (fx* _%i132440%_ _%i132440%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe132454%_
                                _%size132425%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i132440%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab132384%_ _%key132386%_)
        (let ((_%lock132389%_
               (let () (declare (not safe)) (&raw-table-lock _%tab132384%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again132394%_ ((_%spin132397%_ '0))
              (if (let ((__tmp140811
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock132389%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp140811 '0))
                  (let ((__tmp140812 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock132389%_ '1 __tmp140812))
                  (if (let () (declare (not safe)) (##fx< _%spin132397%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again132394%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin132397%_ '1))))
                      (let ((_%owner132403%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock132389%_ '1))))
                        (if (eq? _%owner132403%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner132403%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again132394%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r132409%_
                 (method-specializer-table-delete!
                  _%tab132384%_
                  _%key132386%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock132389%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock132389%_ '0 '0 '1))))
            _%$r132409%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc132381%_ _%specializer132382%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc132381%_
         _%specializer132382%_)))
    (define __lookup-method-specializer
      (lambda (_%proc132379%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc132379%_
         '#f)))
    (define __specialize-class
      (lambda (_%klass132361%_)
        (let* ((_%klass132364%_ _%klass132361%_)
               (_%$e132373%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass132364%_ '12 '#f '#f))))
          (if _%$e132373%_
              _%$e132373%_
              (let ((_%method-table132377%_
                     (___specialize-class _%klass132364%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass132364%_
                   _%method-table132377%_
                   '12
                   '#f
                   '#f))
                _%method-table132377%_)))))
    (define specialize-class
      (lambda (_%klass132347%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass132347%_ 'class))
            (let ((_%klass132351%_ _%klass132347%_))
              (__specialize-class _%klass132351%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1152.25-1152.30"
               'contract:
               'class-type?
               'value:
               _%klass132347%_)
              '#!void))))
    (define __specialize-method
      (lambda (_%klass132331%_
               _%method-table132332%_
               _%method132333%_
               _%proc132334%_)
        (let ((_%$e132336%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table132332%_
                  _%method132333%_
                  '#f))))
          (if _%$e132336%_
              _%$e132336%_
              (let ((_%$e132339%_
                     (__lookup-method-specializer _%proc132334%_)))
                (if _%$e132339%_
                    (let ((_%specialized-proc132344%_
                           (_%$e132339%_
                            _%klass132331%_
                            _%method-table132332%_)))
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table132332%_
                       _%method132333%_
                       _%specialized-proc132344%_))
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table132332%_
                       _%method132333%_
                       _%proc132334%_))))))))
    (define ___specialize-class
      (lambda (_%klass132198%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass132198%_ 'class))
            (if (let* ((_%klass132201%_ _%klass132198%_)
                       (_%klass132206%_ _%klass132201%_))
                  (__class-type-metaclass? _%klass132206%_))
                (let* ((_%obj132218%_ _%klass132198%_)
                       (_%id132221%_ 'specialize-class)
                       (_%args132224%_ '())
                       (_%id132229%_ _%id132221%_))
                  (declare (not safe))
                  (##apply __call-method
                           _%obj132218%_
                           _%id132229%_
                           _%args132224%_))
                (if (let* ((_%pred132242%_ class-type-metaclass?)
                           (_%lst132245%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass132198%_
                               '6
                               '#f
                               '#f)))
                           (_%pred132250%_ _%pred132242%_))
                      (declare (not safe))
                      (__find _%pred132250%_ _%lst132245%_))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass132198%_)
                    (let ((_%method-table132263%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop132265%_ ((_%rest132267%_
                                            (let* ((_%klass132314%_
                                                    _%klass132198%_)
                                                   (_%klass132319%_
                                                    _%klass132314%_))
                                              (__class-precedence-list
                                               _%klass132319%_))))
                        (let* ((_%$%rest132268132276%_ _%rest132267%_)
                               (_%$%else132270132284%_
                                (lambda () _%method-table132263%_))
                               (_%$%K132272132302%_
                                (lambda (_%rest132287%_ _%xklass132288%_)
                                  (let ((_%$%xmethod-table132289132291%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass132288%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%$%xmethod-table132289132291%_
                                        (let* ((_%xmethod-table132293%_
                                                _%$%xmethod-table132289132291%_)
                                               (__tmp140813
                                                (lambda (_%$%g132294132297%_
                                                         _%$%g132295132299%_)
                                                  (__specialize-method
                                                   _%klass132198%_
                                                   _%method-table132263%_
                                                   _%$%g132294132297%_
                                                   _%$%g132295132299%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table132293%_
                                           __tmp140813))
                                        '#f))
                                  (_%loop132265%_ _%rest132287%_))))
                          (if (pair? _%$%rest132268132276%_)
                              (let ((_%$%hd132273132305%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest132268132276%_)))
                                    (_%$%tl132274132307%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest132268132276%_))))
                                (let* ((_%xklass132310%_ _%$%hd132273132305%_)
                                       (_%rest132312%_ _%$%tl132274132307%_))
                                  (_%$%K132272132302%_
                                   _%rest132312%_
                                   _%xklass132310%_)))
                              (_%$%else132270132284%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass132198%_))
                (__specialize-class (__shadow-class__0 _%klass132198%_))
                (error '"bad class; cannot specialize" _%klass132198%_)))))
    (define __seal-class!
      (lambda (_%klass132061%_)
        (let ((_%klass132064%_ _%klass132061%_))
          (if (let* ((_%klass132073%_ _%klass132064%_)
                     (_%klass132078%_ _%klass132073%_))
                (__class-type-sealed? _%klass132078%_))
              '#!void
              (begin
                (if (let* ((_%klass132091%_ _%klass132064%_)
                           (_%klass132096%_ _%klass132091%_))
                      (__class-type-metaclass? _%klass132096%_))
                    (let ()
                      (let* ((_%obj132107%_ _%klass132064%_)
                             (_%id132110%_ 'seal-class!)
                             (_%args132113%_ '())
                             (_%id132118%_ _%id132110%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj132107%_
                                 _%id132118%_
                                 _%args132113%_))
                      (let* ((_%klass132131%_ _%klass132064%_)
                             (_%klass132136%_ _%klass132131%_))
                        (__specialize-class _%klass132136%_)))
                    (if (let* ((_%pred132146%_ class-type-metaclass?)
                               (_%lst132149%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass132064%_
                                   '6
                                   '#f
                                   '#f)))
                               (_%pred132154%_ _%pred132146%_))
                          (declare (not safe))
                          (__find _%pred132154%_ _%lst132149%_))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass132064%_)
                        (let* ((_%klass132167%_ _%klass132064%_)
                               (_%klass132172%_ _%klass132167%_))
                          (__specialize-class _%klass132172%_))))
                (let* ((_%klass132183%_ _%klass132064%_)
                       (_%klass132188%_ _%klass132183%_))
                  (__class-type-seal! _%klass132188%_)))))))
    (define seal-class!
      (lambda (_%klass132047%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass132047%_ 'class))
            (let ((_%klass132051%_ _%klass132047%_))
              (__seal-class! _%klass132051%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1198.20-1198.25"
               'contract:
               'class-type?
               'value:
               _%klass132047%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass131935%_ _%obj131936%_ _%id131937%_)
        (let* ((_%subklass131940%_ _%subklass131935%_)
               (_%id131948%_ _%id131937%_))
          (letrec ((_%find-next-method131957%_
                    (lambda (_%klass131959%_)
                      (let _%lp131961%_ ((_%rest131963%_
                                          (let ((_%klass132032%_
                                                 _%klass131959%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%klass132032%_
                                                   'class))
                                                (let ((_%klass132037%_
                                                       _%klass132032%_))
                                                  (__class-precedence-list
                                                   _%klass132037%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/mop
                                                   'contract:
                                                   'class-type?
                                                   'value:
                                                   _%klass132032%_)
                                                  '#!void)))))
                        (let* ((_%$%rest131964131972%_ _%rest131963%_)
                               (_%$%else131966131980%_ (lambda () '#f))
                               (_%$%K131968132020%_
                                (lambda (_%rest131983%_ _%klass131984%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass131940%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass131984%_)))
                                      (let* ((_%mixins131986%_ _%rest131983%_)
                                             (_%obj131989%_ _%obj131936%_)
                                             (_%id131992%_ _%id131948%_)
                                             (_%id131997%_ _%id131992%_))
                                        (__mixin-find-method
                                         _%mixins131986%_
                                         _%obj131989%_
                                         _%id131997%_))
                                      (_%lp131961%_ _%rest131983%_)))))
                          (if (pair? _%$%rest131964131972%_)
                              (let ((_%$%hd131969132023%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest131964131972%_)))
                                    (_%$%tl131970132025%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest131964131972%_))))
                                (let* ((_%klass132028%_ _%$%hd131969132023%_)
                                       (_%rest132030%_ _%$%tl131970132025%_))
                                  (_%$%K131968132020%_
                                   _%rest132030%_
                                   _%klass132028%_)))
                              (_%$%else131966131980%_)))))))
            (_%find-next-method131957%_ (class-of _%obj131936%_))))))
    (define next-method
      (lambda (_%subklass131909%_ _%obj131910%_ _%id131911%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass131909%_ 'class))
            (let ((_%subklass131915%_ _%subklass131909%_))
              (if (symbol? _%id131911%_)
                  (let ((_%id131925%_ _%id131911%_))
                    (__next-method
                     _%subklass131915%_
                     _%obj131910%_
                     _%id131925%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1220.44-1220.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id131911%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1220.20-1220.28"
               'contract:
               'class-type?
               'value:
               _%subklass131909%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass131844%_ _%obj131845%_ _%id131846%_ . _%args131847%_)
        (let* ((_%subklass131850%_ _%subklass131844%_)
               (_%id131858%_ _%id131846%_)
               (_%$e131903%_
                (let* ((_%subklass131867%_ _%subklass131850%_)
                       (_%obj131870%_ _%obj131845%_)
                       (_%id131873%_ _%id131858%_)
                       (_%subklass131878%_ _%subklass131867%_)
                       (_%id131893%_ _%id131873%_))
                  (__next-method
                   _%subklass131878%_
                   _%obj131870%_
                   _%id131893%_))))
          (if _%$e131903%_
              (apply _%$e131903%_ _%obj131845%_ _%args131847%_)
              (error '"cannot find next method"
                     'object:
                     _%obj131845%_
                     'method:
                     _%id131858%_)))))
    (define call-next-method
      (lambda (_%subklass131817%_ _%obj131818%_ _%id131819%_ . _%args131820%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass131817%_ 'class))
            (let ((_%subklass131824%_ _%subklass131817%_))
              (if (symbol? _%id131819%_)
                  (let ((_%id131834%_ _%id131819%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass131824%_
                             _%obj131818%_
                             _%id131834%_
                             _%args131820%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1231.49-1231.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id131819%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1231.25-1231.33"
               'contract:
               'class-type?
               'value:
               _%subklass131817%_)
              '#!void))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type131596%_ _%properties131597%_)
        (letrec ((_%shadow-type-id131599%_
                  (lambda (_%type131805%_)
                    (let ((__tmp140814
                           (let ()
                             (declare (not safe))
                             (##type-name _%type131805%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp140814 '"::t"))))
                 (_%shadow-type-name131600%_
                  (lambda (_%type131803%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type131803%_))))
                 (_%make-shadow-class131601%_
                  (lambda (_%type131685%_ _%precedence-list131686%_)
                    (let* ((_%super131688%_
                            (if (pair? _%precedence-list131686%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list131686%_))
                                      '())
                                '()))
                           (_%klass131800%_
                            (let* ((_%id131690%_
                                    (_%shadow-type-id131599%_ _%type131685%_))
                                   (_%name131693%_
                                    (let ()
                                      (declare (not safe))
                                      (##type-name _%type131685%_)))
                                   (_%direct-supers131696%_ _%super131688%_)
                                   (_%direct-slots131699%_ '())
                                   (_%properties131725%_
                                    (cons (cons 'struct: '#t)
                                          (cons (cons 'system: '#t)
                                                (cons (cons 'system-type:
                                                            _%type131685%_)
                                                      (let ((__tmp140815
                                                             (if (let ((_%type131702%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%type131685%_))
                           (if (let ()
                                 (declare (not safe))
                                 (##type? _%type131702%_))
                               (let ((_%type131707%_ _%type131702%_))
                                 (__type-extensible? _%type131707%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  '##type?
                                  'value:
                                  _%type131702%_)
                                 '#!void)))
                         '()
                         (cons (cons 'final: '#t) '()))))
                (declare (not safe))
                (foldr__0 cons _%properties131597%_ __tmp140815))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%constructor131728%_ '#f)
                                   (_%id131733%_ _%id131690%_))
                              (if (symbol? _%name131693%_)
                                  (let* ((_%name131744%_ _%name131693%_)
                                         (_%direct-supers131754%_
                                          _%direct-supers131696%_)
                                         (_%direct-slots131764%_
                                          _%direct-slots131699%_)
                                         (_%properties131774%_
                                          _%properties131725%_))
                                    (if (let ((_%$e131786%_ '#t))
                                          (and _%$e131786%_ _%$e131786%_))
                                        (let ((_%constructor131790%_
                                               _%constructor131728%_))
                                          (__make-class-type
                                           _%id131733%_
                                           _%name131744%_
                                           _%direct-supers131754%_
                                           _%direct-slots131764%_
                                           _%properties131774%_
                                           _%constructor131790%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '(? (or not symbol?))
                                           'value:
                                           _%constructor131728%_)
                                          '#!void)))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     'symbol?
                                     'value:
                                     _%name131693%_)
                                    '#!void)))))
                      (let ((__tmp140816
                             (let ()
                               (declare (not safe))
                               (##type-id _%type131685%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp140816
                         _%klass131800%_))
                      _%klass131800%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again131605%_ ((_%spin131608%_ '0))
              (if (let ((__tmp140817
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp140817 '0))
                  (let ((__tmp140818 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp140818))
                  (if (let () (declare (not safe)) (##fx< _%spin131608%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again131605%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin131608%_ '1))))
                      (let ((_%owner131614%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner131614%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner131614%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again131605%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e131620%_
                 (let ((__tmp140819
                        (let ()
                          (declare (not safe))
                          (##type-id _%type131596%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp140819 '#f))))
            (if _%$e131620%_
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
                  _%$e131620%_)
                (let _%loop131628%_ ((_%super131630%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type131596%_)))
                                     (_%hierarchy131631%_ '()))
                  (if (not _%super131630%_)
                      (let _%loop131634%_ ((_%rest131636%_ _%hierarchy131631%_)
                                           (_%precedence-list131637%_ '()))
                        (let* ((_%$%rest131638131646%_ _%rest131636%_)
                               (_%$%else131640131658%_
                                (lambda ()
                                  (let ((_%klass131654%_
                                         (_%make-shadow-class131601%_
                                          _%type131596%_
                                          _%precedence-list131637%_)))
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
                                    _%klass131654%_)))
                               (_%$%K131642131672%_
                                (lambda (_%rest131661%_ _%type131662%_)
                                  (let ((_%$e131664%_
                                         (let ((__tmp140820
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type131662%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp140820
                                            '#f))))
                                    (if _%$e131664%_
                                        (_%loop131634%_
                                         _%rest131661%_
                                         (cons _%$e131664%_
                                               _%precedence-list131637%_))
                                        (let ((_%klass131670%_
                                               (_%make-shadow-class131601%_
                                                _%type131662%_
                                                _%precedence-list131637%_)))
                                          (_%loop131634%_
                                           _%rest131661%_
                                           (cons _%klass131670%_
                                                 _%precedence-list131637%_))))))))
                          (if (pair? _%$%rest131638131646%_)
                              (let ((_%$%hd131643131675%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest131638131646%_)))
                                    (_%$%tl131644131677%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest131638131646%_))))
                                (let* ((_%type131680%_ _%$%hd131643131675%_)
                                       (_%rest131682%_ _%$%tl131644131677%_))
                                  (_%$%K131642131672%_
                                   _%rest131682%_
                                   _%type131680%_)))
                              (_%$%else131640131658%_))))
                      (_%loop131628%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super131630%_))
                       (cons _%super131630%_ _%hierarchy131631%_)))))))))
    (define __shadow-class__0
      (lambda (_%type131810%_)
        (let ((_%properties131812%_ '()))
          (__shadow-class__% _%type131810%_ _%properties131812%_))))
    (define __shadow-class
      (lambda _g140821_
        (let ((_g140822_ (let () (declare (not safe)) (##length _g140821_))))
          (cond ((let () (declare (not safe)) (##fx= _g140822_ 1))
                 (apply __shadow-class__0 _g140821_))
                ((let () (declare (not safe)) (##fx= _g140822_ 2))
                 (apply __shadow-class__% _g140821_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g140821_))))))
    (define __type
      (let* ((_%tb131584%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e131586%_ _%tb131584%_))
        (if (eq? '2 _%$e131586%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e131586%_)
                (let ((_%flonum-self-tagging-tags131589%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits131590%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e131592%_ _%flonum-self-tagging-tags131589%_))
                    (if (eq? '0 _%$e131592%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits131590%_ '2))
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
                        (if (eq? '1 _%$e131592%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits131590%_ '2))
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
                            (if (eq? '2 _%$e131592%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e131592%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e131592%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags131589%_))))))))
                (error '"unexpected tag width" _%tb131584%_)))))
    (define __primitive-class
      (let ((__tmp140823 (vector-length __type)))
        (declare (not safe))
        (##make-vector __tmp140823 '#f)))
    (define __boxvalues-class
      (let () (declare (not safe)) (##make-vector '2 '#f)))
    (define __subtype-class
      (let () (declare (not safe)) (##make-vector '32 '#f)))
    (define __char-class '#f)
    (define __special-class
      (let () (declare (not safe)) (##make-vector '16 '#f)))
    (define __class-of
      (let* ((_%len131474%_ (vector-length __type))
             (_%cv131476%_
              (let () (declare (not safe)) (##make-vector _%len131474%_ '#f))))
        (let _%loop131479%_ ((_%i131481%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i131481%_ _%len131474%_))
              (let* ((_%t131483%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i131481%_)))
                     (_%f131581%_
                      (if (eq? _%t131483%_ 'undefined)
                          (lambda (_%obj131486%_)
                            (error '"object type is undefined" _%obj131486%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t131483%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj131489%_)
                                (declare (not interrupts-enabled) (not safe))
                                (let ((_%$e131492%_
                                       (##vector-ref
                                        __primitive-class
                                        _%i131481%_)))
                                  (if _%$e131492%_
                                      _%$e131492%_
                                      (let ((_%klass131496%_
                                             (__system-class _%t131483%_)))
                                        (##vector-set!
                                         __primitive-class
                                         _%i131481%_
                                         _%klass131496%_)
                                        _%klass131496%_))))
                              (if (eq? _%t131483%_ 'subtyped)
                                  (lambda (_%obj131500%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st131503%_
                                           (##subtype _%obj131500%_)))
                                      (if (##fx= _%st131503%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass131506%_
                                                 (##structure-type
                                                  _%obj131500%_)))
                                            (if (##structure-instance-of?
                                                 _%klass131506%_
                                                 'class)
                                                _%klass131506%_
                                                (__shadow-class__0
                                                 _%klass131506%_)))
                                          (if (##fx= _%st131503%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj131500%_)
                                                         '1)
                                                  (let ((_%$e131509%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '0)))
                                                    (if _%$e131509%_
                                                        _%$e131509%_
                                                        (let ((_%klass131513%_
                                                               (__system-class
                                                                'box)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '0
                                                           _%klass131513%_)
                                                          _%klass131513%_)))
                                                  (let ((_%$e131516%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '1)))
                                                    (if _%$e131516%_
                                                        _%$e131516%_
                                                        (let ((_%klass131520%_
                                                               (__system-class
                                                                'values)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '1
                                                           _%klass131520%_)
                                                          _%klass131520%_))))
                                              (let ((_%$e131523%_
                                                     (##vector-ref
                                                      __subtype-class
                                                      _%st131503%_)))
                                                (if _%$e131523%_
                                                    _%$e131523%_
                                                    (let ((_%klass131540%_
                                                           (let ((_%$e131527%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##vector-ref __subtype-id _%st131503%_)))
                     (if _%$e131527%_
                         (let ((_%$e131532%_
                                (##vector-ref __subtype-class _%st131503%_)))
                           (if _%$e131532%_
                               _%$e131532%_
                               (let ((_%klass131536%_
                                      (__system-class _%$e131527%_)))
                                 (##vector-set!
                                  __subtype-class
                                  _%st131503%_
                                  _%klass131536%_)
                                 _%klass131536%_)))
                         (error '"unknown class"
                                'object:
                                _%obj131500%_
                                'subtype:
                                _%st131503%_)))))
              (##vector-set! __subtype-class _%st131503%_ _%klass131540%_)
              _%klass131540%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (eq? _%t131483%_ 'special)
                                      (lambda (_%obj131544%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (let ((_%x131547%_
                                               (##type-cast _%obj131544%_ '0)))
                                          (if (##fx> _%x131547%_ '0)
                                              (let ((_%$e131550%_
                                                     __char-class))
                                                (if _%$e131550%_
                                                    _%$e131550%_
                                                    (let ((_%klass131554%_
                                                           (__system-class
                                                            'char)))
                                                      (set! __char-class
                                                            _%klass131554%_)
                                                      _%klass131554%_)))
                                              (let* ((_%t131557%_
                                                      (##fx- _%x131547%_))
                                                     (_%$e131560%_
                                                      (##vector-ref
                                                       __special-class
                                                       _%t131557%_)))
                                                (if _%$e131560%_
                                                    _%$e131560%_
                                                    (let ((_%klass131578%_
                                                           (if (eq? _%obj131544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                       (__system-class 'null)
                       (if (eq? _%obj131544%_ '#f)
                           (__system-class 'false)
                           (if (eq? _%obj131544%_ '#t)
                               (__system-class 'true)
                               (if (eq? _%obj131544%_ '#!void)
                                   (__system-class 'void)
                                   (if (eq? _%obj131544%_ '#!eof)
                                       (__system-class 'eof)
                                       (if (eq? _%obj131544%_ '#!unbound)
                                           (__system-class 'unbound)
                                           (if (eq? _%obj131544%_ '#!unbound2)
                                               (__system-class 'unbound2)
                                               (if (eq? _%obj131544%_
                                                        '#!optional)
                                                   (__system-class 'optional)
                                                   (if (eq? _%obj131544%_
                                                            '#!rest)
                                                       (__system-class 'rest)
                                                       (if (eq? _%obj131544%_
                                                                '#!key)
                                                           (__system-class
                                                            'key)
                                                           (if (eq? _%obj131544%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (macro-unused-obj))
                       (__system-class 'unused)
                       (if (eq? _%obj131544%_ (macro-deleted-obj))
                           (__system-class 'deleted)
                           (if (eq? _%obj131544%_ (macro-absent-obj))
                               (__system-class 'absent)
                               (__system-class 'unknown))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (##vector-set! __special-class _%t131557%_ _%klass131578%_)
              _%klass131578%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t131483%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv131476%_ _%i131481%_ _%f131581%_))
                (_%loop131479%_
                 (let () (declare (not safe)) (##fx+ _%i131481%_ '1))))
              _%cv131476%_))))
    (define type-of
      (lambda (_%obj131470%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj131470%_)))))
    (define class-of
      (lambda (_%obj131461%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t131465%_ (##type _%obj131461%_))
                 (_%f131467%_ (##vector-ref __class-of _%t131465%_)))
            (_%f131467%_ _%obj131461%_)))))
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
      (lambda (_%id131455%_)
        (let ((_%$e131457%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id131455%_ '#f))))
          (if _%$e131457%_
              _%$e131457%_
              (error '"unknown system class" _%id131455%_)))))
    (define __make-system-class
      (lambda (_%id131357%_ _%super131358%_ _%properties131359%_)
        (let ((_%klass131453%_
               (let* ((_%id131361%_ _%id131357%_)
                      (_%name131364%_ _%id131357%_)
                      (_%direct-supers131367%_ _%super131358%_)
                      (_%direct-slots131370%_ '())
                      (_%properties131373%_
                       (cons (cons 'system: '#t)
                             (let ()
                               (declare (not safe))
                               (foldr__0 cons '() _%properties131359%_))))
                      (_%constructor131376%_ '#f))
                 (if (symbol? _%id131361%_)
                     (let ((_%id131381%_ _%id131361%_))
                       (if (symbol? _%name131364%_)
                           (let ((_%name131397%_ _%name131364%_))
                             (if (list? _%direct-supers131367%_)
                                 (let* ((_%direct-supers131407%_
                                         _%direct-supers131367%_)
                                        (_%direct-slots131417%_
                                         _%direct-slots131370%_)
                                        (_%properties131427%_
                                         _%properties131373%_))
                                   (if (let ((_%$e131439%_ '#t))
                                         (and _%$e131439%_ _%$e131439%_))
                                       (let ((_%constructor131443%_
                                              _%constructor131376%_))
                                         (__make-class-type
                                          _%id131381%_
                                          _%name131397%_
                                          _%direct-supers131407%_
                                          _%direct-slots131417%_
                                          _%properties131427%_
                                          _%constructor131443%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          '(? (or not symbol?))
                                          'value:
                                          _%constructor131376%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'list?
                                    'value:
                                    _%direct-supers131367%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'symbol?
                              'value:
                              _%name131364%_)
                             '#!void)))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id131361%_)
                       '#!void)))))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id131357%_
             _%klass131453%_))
          _%klass131453%_)))))
