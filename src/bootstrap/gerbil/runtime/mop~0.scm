(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1713001406)
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
      (let ((_%flags98483%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties98484%_ '((direct-slots:) (system: . #t)))
            (_%slot-table98485%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags98483%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table98485%_
           _%properties98484%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots98459%_
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
             (_%slot-vector98461%_ (list->vector (cons '#f _%slots98459%_)))
             (_%slot-table98468%_
              (let ((_%slot-table98463%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp99926
                       (lambda (_%slot98465%_ _%field98466%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table98463%_
                            _%slot98465%_
                            _%field98466%_))
                         (let ((__tmp99927
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot98465%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table98463%_
                            __tmp99927
                            _%field98466%_))))
                      (__tmp99924
                       (let ((__tmp99925
                              (let ()
                                (declare (not safe))
                                (##length _%slots98459%_))))
                         (declare (not safe))
                         (##iota __tmp99925 '1))))
                  (declare (not safe))
                  (##for-each __tmp99926 _%slots98459%_ __tmp99924))
                _%slot-table98463%_))
             (_%flags98470%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields98476%_
              (list->vector
               (let ((__tmp99928
                      (map (lambda (_%g9847198473%_)
                             (list _%g9847198473%_ '5 '#f))
                           (drop _%slots98459%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp99928))))
             (_%properties98478%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots98459%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t98480%_
              (let ((__tmp99929 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags98470%_
                 ##type-type
                 _%fields98476%_
                 __tmp99929
                 _%slot-vector98461%_
                 _%slot-table98468%_
                 _%properties98478%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t98480%_ _%t98480%_))
        _%t98480%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags98455%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties98456%_ '((direct-slots:) (system: . #t)))
            (_%slot-table98457%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp99930 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags98455%_
           '#f
           '#()
           __tmp99930
           '#(#f)
           _%slot-table98457%_
           _%properties98456%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj98453%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj98453%_ 'class))))
    (define class-type=?
      (lambda (_%x98428%_ _%y98429%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x98428%_ 'class))
            (let ((_%x98433%_ _%x98428%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y98429%_ 'class))
                  (let ((_%y98443%_ _%y98429%_))
                    (__class-type=? _%x98433%_ _%y98443%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y98429%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x98428%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x98407%_ _%y98408%_)
        (let* ((_%x98411%_ _%x98407%_) (_%y98419%_ _%y98408%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x98411%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y98419%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type98393%_)
        (if (let () (declare (not safe)) (##type? _%type98393%_))
            (let ((_%type98397%_ _%type98393%_))
              (__type-opaque? _%type98397%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type98393%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type98381%_)
        (let* ((_%type98384%_ _%type98381%_)
               (__tmp99931
                (let ((__tmp99932
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type98384%_))))
                  (declare (not safe))
                  (##fxand __tmp99932 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp99931 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type98367%_)
        (if (let () (declare (not safe)) (##type? _%type98367%_))
            (let ((_%type98371%_ _%type98367%_))
              (__type-extensible? _%type98371%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type98367%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type98355%_)
        (let* ((_%type98358%_ _%type98355%_)
               (__tmp99933
                (let ((__tmp99934
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type98358%_))))
                  (declare (not safe))
                  (##fxand __tmp99934 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp99933 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type98341%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type98341%_ 'class))
            (let ((_%type98345%_ _%type98341%_))
              (__class-type-final? _%type98345%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type98341%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type98329%_)
        (let* ((_%type98332%_ _%type98329%_)
               (__tmp99935
                (let ((__tmp99936
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type98332%_))))
                  (declare (not safe))
                  (##fxand __tmp99936 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp99935 '0))))
    (define class-type-struct?
      (lambda (_%klass98315%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98315%_ 'class))
            (let ((_%klass98319%_ _%klass98315%_))
              (__class-type-struct? _%klass98319%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass98315%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass98303%_)
        (let* ((_%klass98306%_ _%klass98303%_)
               (__tmp99937
                (let ((__tmp99938
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass98306%_))))
                  (declare (not safe))
                  (##fxand __tmp99938 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp99937 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass98289%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98289%_ 'class))
            (let ((_%klass98293%_ _%klass98289%_))
              (__class-type-sealed? _%klass98293%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass98289%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass98277%_)
        (let* ((_%klass98280%_ _%klass98277%_)
               (__tmp99939
                (let ((__tmp99940
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass98280%_))))
                  (declare (not safe))
                  (##fxand __tmp99940 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp99939 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass98263%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98263%_ 'class))
            (let ((_%klass98267%_ _%klass98263%_))
              (__class-type-metaclass? _%klass98267%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass98263%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass98251%_)
        (let* ((_%klass98254%_ _%klass98251%_)
               (__tmp99941
                (let ((__tmp99942
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass98254%_))))
                  (declare (not safe))
                  (##fxand __tmp99942 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp99941 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass98237%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98237%_ 'class))
            (let ((_%klass98241%_ _%klass98237%_))
              (__class-type-system? _%klass98241%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass98237%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass98225%_)
        (let* ((_%klass98228%_ _%klass98225%_)
               (__tmp99943
                (let ((__tmp99944
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass98228%_))))
                  (declare (not safe))
                  (##fxand __tmp99944 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp99943 class-type-flag-system))))
    (define make-class-type-descriptor
      (lambda (_%type-id98110%_
               _%type-name98111%_
               _%type-super98112%_
               _%precedence-list98113%_
               _%slot-vector98114%_
               _%properties98115%_
               _%constructor98116%_
               _%slot-table98117%_
               _%methods98118%_)
        (letrec ((_%make-props!98121%_
                  (lambda (_%key98194%_)
                    (letrec* ((_%ht98196%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!98197%_
                               (lambda (_%ht98218%_ _%slots98219%_)
                                 (for-each
                                  (lambda (_%g9822098222%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht98218%_
                                       _%g9822098222%_
                                       '#t)))
                                  _%slots98219%_)))
                              (_%put-alist!98198%_
                               (lambda (_%ht98207%_
                                        _%key98208%_
                                        _%alist98209%_)
                                 (let ((_%$e98211%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key98208%_
                                           _%alist98209%_))))
                                   (if _%$e98211%_
                                       ((lambda (_%g9821398215%_)
                                          (_%put-slots!98197%_
                                           _%ht98207%_
                                           _%g9821398215%_))
                                        _%$e98211%_)
                                       '#!void)))))
                      (_%put-alist!98198%_
                       _%ht98196%_
                       _%key98194%_
                       _%properties98115%_)
                      (for-each
                       (lambda (_%mixin98200%_)
                         (let ((_%alist98202%_
                                (##structure-ref
                                 _%mixin98200%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist98202%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key98194%_
                                           _%alist98202%_))))
                               (_%put-slots!98197%_
                                _%ht98196%_
                                (class-type-slot-list _%mixin98200%_))
                               (_%put-alist!98198%_
                                _%ht98196%_
                                _%key98194%_
                                _%alist98202%_))))
                       _%precedence-list98113%_)
                      _%ht98196%_))))
          (let* ((_%transparent?98123%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties98115%_)))
                 (_%all-slots-printable?98128%_
                  (let ((_%$e98125%_ _%transparent?98123%_))
                    (if _%$e98125%_
                        _%$e98125%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties98115%_))))))
                 (_%printable98130%_
                  (if (not _%all-slots-printable?98128%_)
                      (_%make-props!98121%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?98135%_
                  (let ((_%$e98132%_ _%transparent?98123%_))
                    (if _%$e98132%_
                        _%$e98132%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties98115%_))))))
                 (_%equalable98137%_
                  (if (not _%all-slots-equalable?98135%_)
                      (_%make-props!98121%_ 'equal:)
                      '#f))
                 (_%first-new-field98139%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super98112%_ 'class))
                      (let ((__tmp99945
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super98112%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp99945))
                      '1))
                 (_%field-info-length98141%_
                  (let ((__tmp99946
                         (let ((__tmp99947
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector98114%_))))
                           (declare (not safe))
                           (##fx- __tmp99947 _%first-new-field98139%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp99946)))
                 (_%field-info98143%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length98141%_ '#f)))
                 (_%struct?98145%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties98115%_)))
                 (_%final?98147%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties98115%_)))
                 (_%metaclass98155%_
                  (let ((_%metaclass9814898150%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties98115%_))))
                    (if _%metaclass9814898150%_
                        (let ((_%metaclass98153%_ _%metaclass9814898150%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass98153%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id98110%_
                                     'metaclass:
                                     _%metaclass98153%_))
                          _%metaclass98153%_)
                        '#f)))
                 (_%system?98157%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties98115%_)))
                 (_%opaque?98162%_
                  (let ((_%$e98159%_ (not _%all-slots-equalable?98135%_)))
                    (if _%$e98159%_
                        _%$e98159%_
                        (if _%type-super98112%_
                            (__type-opaque? _%type-super98112%_)
                            '#f))))
                 (_%type-flags98164%_
                  (let ((__tmp99952
                         (if _%final?98147%_ '0 type-flag-extensible))
                        (__tmp99951 (if _%opaque?98162%_ type-flag-opaque '0))
                        (__tmp99950
                         (if _%struct?98145%_ class-type-flag-struct '0))
                        (__tmp99949
                         (if _%metaclass98155%_ class-type-flag-metaclass '0))
                        (__tmp99948
                         (if _%system?98157%_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp99952
                             __tmp99951
                             __tmp99950
                             __tmp99949
                             __tmp99948)))
                 (_%precedence-list98172%_
                  (let ((_%$e98166%_ (memq t::t _%precedence-list98113%_)))
                    (if _%$e98166%_
                        ((lambda (_%tail98169%_)
                           (if (null? (cdr _%tail98169%_))
                               _%precedence-list98113%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list98113%_)))
                         _%$e98166%_)
                        (let ((__tmp99953 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list98113%_ __tmp99953))))))
            (let _%loop98175%_ ((_%i98177%_ _%first-new-field98139%_)
                                (_%j98178%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j98178%_ _%field-info-length98141%_))
                  (let* ((_%slot98180%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector98114%_ _%i98177%_)))
                         (_%flags98188%_
                          (if _%transparent?98123%_
                              '0
                              (let ((__tmp99955
                                     (if (or _%all-slots-printable?98128%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable98130%_
                                                _%slot98180%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp99954
                                     (if (or _%all-slots-equalable?98135%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable98137%_
                                                _%slot98180%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp99955 __tmp99954)))))
                    (vector-set! _%field-info98143%_ _%j98178%_ _%slot98180%_)
                    (vector-set!
                     _%field-info98143%_
                     (let () (declare (not safe)) (##fx+ _%j98178%_ '1))
                     _%flags98188%_)
                    (_%loop98175%_
                     (let () (declare (not safe)) (##fx+ _%i98177%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j98178%_ '3))))
                  '#!void))
            (if _%metaclass98155%_
                (let ((_%val98191%_
                       (make-instance
                        _%metaclass98155%_
                        _%type-id98110%_
                        _%type-name98111%_
                        _%type-flags98164%_
                        _%type-super98112%_
                        _%field-info98143%_
                        _%precedence-list98172%_
                        _%slot-vector98114%_
                        _%slot-table98117%_
                        _%properties98115%_
                        _%constructor98116%_
                        _%methods98118%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val98191%_ 'class))
                      _%val98191%_
                      (error '"bad cast" class::t _%val98191%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id98110%_
                   _%type-name98111%_
                   _%type-flags98164%_
                   _%type-super98112%_
                   _%field-info98143%_
                   _%precedence-list98172%_
                   _%slot-vector98114%_
                   _%slot-table98117%_
                   _%properties98115%_
                   _%constructor98116%_
                   _%methods98118%_)))))))
    (define class-type-id
      (lambda (_%klass98108%_)
        (##structure-ref _%klass98108%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass98106%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98106%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass98103%_ _%val98104%_)
        (##structure-set! _%klass98103%_ _%val98104%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass98098%_ _%val98100%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98098%_
           _%val98100%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass98096%_)
        (##structure-ref _%klass98096%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass98094%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98094%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass98091%_ _%val98092%_)
        (##structure-set! _%klass98091%_ _%val98092%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass98086%_ _%val98088%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98086%_
           _%val98088%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass98084%_)
        (##structure-ref _%klass98084%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass98082%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98082%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass98079%_ _%val98080%_)
        (##structure-set! _%klass98079%_ _%val98080%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass98074%_ _%val98076%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98074%_
           _%val98076%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass98072%_)
        (##structure-ref _%klass98072%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass98070%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98070%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass98067%_ _%val98068%_)
        (##structure-set! _%klass98067%_ _%val98068%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass98062%_ _%val98064%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98062%_
           _%val98064%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass98060%_)
        (##structure-ref _%klass98060%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass98058%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98058%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass98055%_ _%val98056%_)
        (##structure-set! _%klass98055%_ _%val98056%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass98050%_ _%val98052%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98050%_
           _%val98052%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass98048%_)
        (##structure-ref _%klass98048%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass98046%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass98046%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass98043%_ _%val98044%_)
        (##structure-set!
         _%klass98043%_
         _%val98044%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass98038%_ _%val98040%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98038%_
           _%val98040%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass98036%_)
        (##structure-ref _%klass98036%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass98034%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass98034%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass98031%_ _%val98032%_)
        (##structure-set!
         _%klass98031%_
         _%val98032%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass98026%_ _%val98028%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98026%_
           _%val98028%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass98024%_)
        (##structure-ref _%klass98024%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass98022%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98022%_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass98019%_ _%val98020%_)
        (##structure-set!
         _%klass98019%_
         _%val98020%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass98014%_ _%val98016%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98014%_
           _%val98016%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass98012%_)
        (##structure-ref _%klass98012%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass98010%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass98010%_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_%klass98007%_ _%val98008%_)
        (##structure-set!
         _%klass98007%_
         _%val98008%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass98002%_ _%val98004%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass98002%_
           _%val98004%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass98000%_)
        (##structure-ref _%klass98000%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass97998%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass97998%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass97995%_ _%val97996%_)
        (##structure-set!
         _%klass97995%_
         _%val97996%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass97990%_ _%val97992%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97990%_
           _%val97992%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass97988%_)
        (##structure-ref _%klass97988%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass97986%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97986%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass97983%_ _%val97984%_)
        (##structure-set! _%klass97983%_ _%val97984%_ '11 class::t 'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass97978%_ _%val97980%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97978%_
           _%val97980%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass97964%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97964%_ 'class))
            (let ((_%klass97968%_ _%klass97964%_))
              (__class-type-slot-list _%klass97968%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass97964%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass97952%_)
        (let ((_%klass97955%_ _%klass97952%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass97955%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass97938%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97938%_ 'class))
            (let ((_%klass97942%_ _%klass97938%_))
              (__class-type-field-count _%klass97942%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass97938%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass97926%_)
        (let* ((_%klass97929%_ _%klass97926%_)
               (__tmp99956
                (let ((__tmp99957
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass97929%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp99957))))
          (declare (not safe))
          (##fx- __tmp99956 '1))))
    (define class-type-seal!
      (lambda (_%klass97912%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97912%_ 'class))
            (let ((_%klass97916%_ _%klass97912%_))
              (__class-type-seal! _%klass97916%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass97912%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass97900%_)
        (let ((_%klass97903%_ _%klass97900%_))
          (let ((__tmp99958
                 (let ((__tmp99959
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass97903%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp99959))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass97903%_
             __tmp99958
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct97875%_ _%maybe-super-struct97876%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct97875%_ 'class))
            (let ((_%maybe-sub-struct97880%_ _%maybe-sub-struct97875%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct97876%_
                     'class))
                  (let ((_%maybe-super-struct97890%_
                         _%maybe-super-struct97876%_))
                    (__substruct?
                     _%maybe-sub-struct97880%_
                     _%maybe-super-struct97890%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct97876%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct97875%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct97844%_ _%maybe-super-struct97845%_)
        (let* ((_%maybe-sub-struct97848%_ _%maybe-sub-struct97844%_)
               (_%maybe-super-struct97856%_ _%maybe-super-struct97845%_)
               (_%maybe-super-struct-id97865%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct97856%_))))
          (let _%lp97867%_ ((_%super-struct97869%_ _%maybe-sub-struct97848%_))
            (if (not _%super-struct97869%_)
                '#f
                (if (eq? _%maybe-super-struct-id97865%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct97869%_)))
                    '#t
                    (_%lp97867%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct97869%_)))))))))
    (define base-struct/1
      (lambda (_%klass97839%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97839%_ 'class))
            (if (__class-type-struct? _%klass97839%_)
                _%klass97839%_
                (let () (declare (not safe)) (##type-super _%klass97839%_)))
            (if (not _%klass97839%_)
                '#f
                (error '"not a class or false" _%klass97839%_)))))
    (define base-struct/2
      (lambda (_%klass197824%_ _%klass297825%_)
        (let ((_%s197827%_ (base-struct/1 _%klass197824%_))
              (_%s297828%_ (base-struct/1 _%klass297825%_)))
          (if (or (not _%s197827%_)
                  (and _%s297828%_ (substruct? _%s197827%_ _%s297828%_)))
              _%s297828%_
              (if (or (not _%s297828%_)
                      (and _%s197827%_ (substruct? _%s297828%_ _%s197827%_)))
                  _%s197827%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass197824%_
                         _%klass297825%_
                         _%s197827%_
                         _%s297828%_))))))
    (define base-struct/list
      (lambda (_%all-supers97708%_)
        (let* ((_%all-supers9770997734%_ _%all-supers97708%_)
               (_%E9771497738%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers9770997734%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K9773297821%_ (lambda () '#f))
                (_%K9772997807%_
                 (lambda (_%x97805%_) (base-struct/1 _%x97805%_)))
                (_%K9772497784%_
                 (lambda (_%y97781%_ _%x97782%_)
                   (base-struct/2 _%x97782%_ _%y97781%_)))
                (_%K9771597745%_
                 (lambda (_%y97742%_ _%x97743%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x97743%_ _%y97742%_)))))
            (let* ((_%__match9991899919%_
                    (lambda (_%hd9771697748%_ _%tl9771797750%_)
                      (let ((_%x97753%_ _%hd9771697748%_))
                        (letrec ((_%splice-rest9771997755%_
                                  (lambda (_%rest9772397762%_ _%y97764%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%rest9772397762%_))
                                        (_%K9771597745%_ _%y97764%_ _%x97753%_)
                                        (_%E9771497738%_))))
                                 (_%splice-try9772197757%_
                                  (lambda (_%hd9772297766%_
                                           _%rest9772397768%_
                                           _%y9771897769%_)
                                    (let ((_%y97772%_ _%hd9772297766%_))
                                      (_%splice-loop9772097759%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest9772397768%_))
                                       (cons _%y97772%_ _%y9771897769%_)))))
                                 (_%splice-loop9772097759%_
                                  (lambda (_%rest9772397774%_ _%y9771897775%_)
                                    (if (pair? _%rest9772397774%_)
                                        (_%splice-try9772197757%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest9772397774%_))
                                         _%rest9772397774%_
                                         _%y9771897775%_)
                                        (_%splice-rest9771997755%_
                                         _%rest9772397774%_
                                         (reverse _%y9771897775%_))))))
                          (_%splice-loop9772097759%_ _%tl9771797750%_ '())))))
                   (_%try-match9771197817%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all-supers9770997734%_))
                          (let ((_%tl9773197812%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers9770997734%_)))
                                (_%hd9773097810%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers9770997734%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl9773197812%_))
                                (let ((_%x97815%_ _%hd9773097810%_))
                                  (base-struct/1 _%x97815%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl9773197812%_))
                                    (let ((_%tl9772897796%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl9773197812%_)))
                                          (_%hd9772797794%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl9773197812%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl9772897796%_))
                                          (let ((_%x97792%_ _%hd9773097810%_)
                                                (_%y97799%_ _%hd9772797794%_))
                                            (_%K9772497784%_
                                             _%y97799%_
                                             _%x97792%_))
                                          (_%__match9991899919%_
                                           _%hd9773097810%_
                                           _%tl9773197812%_)))
                                    (_%__match9991899919%_
                                     _%hd9773097810%_
                                     _%tl9773197812%_))))
                          (_%E9771497738%_)))))
              (if (let ()
                    (declare (not safe))
                    (##null? _%all-supers9770997734%_))
                  (_%K9773297821%_)
                  (_%try-match9771197817%_)))))))
    (define base-struct
      (lambda _%all-supers97706%_ (base-struct/list _%all-supers97706%_)))
    (define find-super-constructor
      (lambda (_%super97657%_)
        (let _%lp97659%_ ((_%rest97661%_ _%super97657%_)
                          (_%constructor97662%_ '#f))
          (let* ((_%rest9766397671%_ _%rest97661%_)
                 (_%else9766597679%_ (lambda () _%constructor97662%_))
                 (_%K9766797694%_
                  (lambda (_%rest97682%_ _%hd97683%_)
                    (let ((_%$e97685%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd97683%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e97685%_
                          ((lambda (_%xconstructor97688%_)
                             (if (or (not _%constructor97662%_)
                                     (eq? _%constructor97662%_
                                          _%xconstructor97688%_))
                                 (_%lp97659%_
                                  _%rest97682%_
                                  _%xconstructor97688%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor97662%_
                                        _%xconstructor97688%_)))
                           _%$e97685%_)
                          (_%lp97659%_ _%rest97682%_ _%constructor97662%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest9766397671%_))
                (let ((_%hd9766897697%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9766397671%_)))
                      (_%tl9766997699%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9766397671%_))))
                  (let* ((_%hd97702%_ _%hd9766897697%_)
                         (_%rest97704%_ _%tl9766997699%_))
                    (_%K9766797694%_ _%rest97704%_ _%hd97702%_)))
                (_%else9766597679%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list97633%_ _%direct-slots97634%_)
        (let* ((_%next-slot97636%_ '1)
               (_%slot-table97638%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots97640%_ '(__class))
               (_%process-slot97644%_
                (lambda (_%slot97642%_)
                  (if (symbol? _%slot97642%_)
                      '#!void
                      (error '"invalid slot name" _%slot97642%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table97638%_
                              _%slot97642%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table97638%_
                           _%slot97642%_
                           _%next-slot97636%_))
                        (let ((__tmp99960
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot97642%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table97638%_
                           __tmp99960
                           _%next-slot97636%_))
                        (set! _%r-slots97640%_
                              (cons _%slot97642%_ _%r-slots97640%_))
                        (set! _%next-slot97636%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot97636%_ '1))))
                      '#!void)))
               (_%process-slots97650%_
                (lambda (_%g9764597647%_)
                  (for-each _%process-slot97644%_ _%g9764597647%_))))
          (let ((__tmp99962
                 (lambda (_%mixin97653%_)
                   (_%process-slots97650%_
                    (let ((__tmp99963
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin97653%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp99963 '())))))
                (__tmp99961 (reverse _%class-precedence-list97633%_)))
            (declare (not safe))
            (##for-each __tmp99962 __tmp99961))
          (_%process-slots97650%_ _%direct-slots97634%_)
          (let ((_%slot-vector97655%_
                 (list->vector
                  (let () (declare (not safe)) (##reverse _%r-slots97640%_)))))
            (values _%slot-vector97655%_ _%slot-table97638%_)))))
    (define make-class-type
      (lambda (_%id97558%_
               _%name97559%_
               _%direct-supers97560%_
               _%direct-slots97561%_
               _%properties97562%_
               _%constructor97563%_)
        (if (symbol? _%id97558%_)
            (let ((_%id97567%_ _%id97558%_))
              (if (symbol? _%name97559%_)
                  (let ((_%name97577%_ _%name97559%_))
                    (if (list? _%direct-supers97560%_)
                        (let ((_%direct-supers97587%_ _%direct-supers97560%_))
                          (if (list? _%direct-slots97561%_)
                              (let ((_%direct-slots97597%_
                                     _%direct-slots97561%_))
                                (if (list? _%properties97562%_)
                                    (let ((_%properties97607%_
                                           _%properties97562%_))
                                      (if ((lambda (_%$obj97616%_)
                                             (or (not _%$obj97616%_)
                                                 (symbol? _%$obj97616%_)))
                                           _%constructor97563%_)
                                          (let ((_%constructor97623%_
                                                 _%constructor97563%_))
                                            (__make-class-type
                                             _%id97567%_
                                             _%name97577%_
                                             _%direct-supers97587%_
                                             _%direct-slots97597%_
                                             _%properties97607%_
                                             _%constructor97623%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor97563%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties97562%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots97561%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers97560%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name97559%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id97558%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id97427%_
               _%name97428%_
               _%direct-supers97429%_
               _%direct-slots97430%_
               _%properties97431%_
               _%constructor97432%_)
        (let* ((_%id97435%_ _%id97427%_)
               (_%name97443%_ _%name97428%_)
               (_%direct-supers97451%_ _%direct-supers97429%_)
               (_%direct-slots97459%_ _%direct-slots97430%_)
               (_%properties97467%_ _%properties97431%_)
               (_%constructor97475%_ _%constructor97432%_))
          (let ((_%$e97487%_
                 (let ((__tmp99964
                        (lambda (_%$obj97484%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj97484%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp99964 _%direct-supers97451%_))))
            (if _%$e97487%_
                ((lambda (_%g9748997491%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g9748997491%_))
                 _%$e97487%_)
                (let ((_%$e97494%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final? _%direct-supers97451%_))))
                  (if _%$e97494%_
                      ((lambda (_%g9749697498%_)
                         (error '"Cannot extend final class" _%g9749697498%_))
                       _%$e97494%_)
                      '#!void))))
          (let ((_g99965_ (compute-precedence-list _%direct-supers97451%_)))
            (begin
              (let ((_g99966_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g99965_)
                           (##vector-length _g99965_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g99966_ 2)))
                    (error "Context expects 2 values" _g99966_)))
              (let ((_%precedence-list97501%_
                     (let () (declare (not safe)) (##vector-ref _g99965_ 0)))
                    (_%struct-super97502%_
                     (let () (declare (not safe)) (##vector-ref _g99965_ 1))))
                (let ((_g99967_
                       (compute-class-slots
                        _%precedence-list97501%_
                        _%direct-slots97459%_)))
                  (begin
                    (let ((_g99968_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g99967_)
                                 (##vector-length _g99967_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g99968_ 2)))
                          (error "Context expects 2 values" _g99968_)))
                    (let ((_%slot-vector97504%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g99967_ 0)))
                          (_%slot-table97505%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g99967_ 1))))
                      (let* ((_%properties97507%_
                              (cons (cons 'direct-slots: _%direct-slots97459%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers97451%_)
                                          _%properties97467%_)))
                             (_%constructor*97512%_
                              (let ((_%$e97509%_ _%constructor97475%_))
                                (if _%$e97509%_
                                    _%$e97509%_
                                    (find-super-constructor
                                     _%direct-supers97451%_))))
                             (_%precedence-list97555%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties97507%_))
                                      (memq object::t
                                            _%precedence-list97501%_))
                                  _%precedence-list97501%_
                                  (let _%loop97517%_ ((_%tail97519%_
                                                       _%precedence-list97501%_)
                                                      (_%head97520%_ '()))
                                    (let* ((_%tail9752197529%_ _%tail97519%_)
                                           (_%else9752397537%_
                                            (lambda ()
                                              (let ((__tmp99969
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp99969
                                                 _%head97520%_))))
                                           (_%K9752597543%_
                                            (lambda (_%rest97540%_ _%hd97541%_)
                                              (if (eq? _%hd97541%_ t::t)
                                                  (let ((__tmp99970
                                                         (cons object::t
                                                               _%tail97519%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp99970
                                                     _%head97520%_))
                                                  (_%loop97517%_
                                                   _%rest97540%_
                                                   (cons _%hd97541%_
                                                         _%head97520%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tail9752197529%_))
                                          (let ((_%hd9752697546%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail9752197529%_)))
                                                (_%tl9752797548%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail9752197529%_))))
                                            (let* ((_%hd97551%_
                                                    _%hd9752697546%_)
                                                   (_%rest97553%_
                                                    _%tl9752797548%_))
                                              (_%K9752597543%_
                                               _%rest97553%_
                                               _%hd97551%_)))
                                          (_%else9752397537%_)))))))
                        (make-class-type-descriptor
                         _%id97435%_
                         _%name97443%_
                         _%struct-super97502%_
                         _%precedence-list97555%_
                         _%slot-vector97504%_
                         _%properties97507%_
                         _%constructor*97512%_
                         _%slot-table97505%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass97413%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97413%_ 'class))
            (let ((_%klass97417%_ _%klass97413%_))
              (__class-precedence-list _%klass97417%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass97413%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass97401%_)
        (let ((_%klass97404%_ _%klass97401%_))
          (cons _%klass97404%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass97404%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers97398%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers97398%_))))
    (define make-class-predicate
      (lambda (_%klass97384%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97384%_ 'class))
            (let ((_%klass97388%_ _%klass97384%_))
              (__make-class-predicate _%klass97388%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass97384%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass97355%_)
        (let* ((_%klass97358%_ _%klass97355%_)
               (_%tid97367%_
                (let () (declare (not safe)) (##type-id _%klass97358%_))))
          (if (__class-type-final? _%klass97358%_)
              (lambda (_%g9736997371%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g9736997371%_
                   _%tid97367%_)))
              (if (__class-type-struct? _%klass97358%_)
                  (lambda (_%g9737497376%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%g9737497376%_ _%tid97367%_)))
                  (lambda (_%g9737997381%_)
                    (__class-instance? _%klass97358%_ _%g9737997381%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass97330%_ _%slot97331%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97330%_ 'class))
            (let ((_%klass97335%_ _%klass97330%_))
              (if (symbol? _%slot97331%_)
                  (let ((_%slot97345%_ _%slot97331%_))
                    (__make-class-slot-accessor _%klass97335%_ _%slot97345%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot97331%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass97330%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass97298%_ _%slot97299%_)
        (let* ((_%klass97302%_ _%klass97298%_)
               (_%slot97310%_ _%slot97299%_)
               (_%field97319%_
                (let ((__tmp99971
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass97302%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp99971 _%slot97310%_ '#f))))
          (if (not _%field97319%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass97302%_
                       'slot:
                       _%slot97310%_)
                '#!void)
              (if (__class-type-final? _%klass97302%_)
                  (make-final-slot-accessor
                   _%klass97302%_
                   _%slot97310%_
                   _%field97319%_)
                  (if (__class-type-struct? _%klass97302%_)
                      (make-struct-slot-accessor
                       _%klass97302%_
                       _%slot97310%_
                       _%field97319%_)
                      (if (let ((_%strukt97325%_
                                 (base-struct/1 _%klass97302%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt97325%_
                                    'class))
                                 (let ((__tmp99972
                                        (let ((__tmp99973
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt97325%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp99973))))
                                   (declare (not safe))
                                   (##fx< _%field97319%_ __tmp99972))))
                          (make-struct-subclass-slot-accessor
                           _%klass97302%_
                           _%slot97310%_
                           _%field97319%_)
                          (make-class-cached-slot-accessor
                           _%klass97302%_
                           _%slot97310%_
                           _%field97319%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass97273%_ _%slot97274%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97273%_ 'class))
            (let ((_%klass97278%_ _%klass97273%_))
              (if (symbol? _%slot97274%_)
                  (let ((_%slot97288%_ _%slot97274%_))
                    (__make-class-slot-mutator _%klass97278%_ _%slot97288%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot97274%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass97273%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass97241%_ _%slot97242%_)
        (let* ((_%klass97245%_ _%klass97241%_)
               (_%slot97253%_ _%slot97242%_)
               (_%field97262%_
                (let ((__tmp99974
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass97245%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp99974 _%slot97253%_ '#f))))
          (if (not _%field97262%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass97245%_
                       'slot:
                       _%slot97253%_)
                '#!void)
              (if (__class-type-final? _%klass97245%_)
                  (make-final-slot-mutator
                   _%klass97245%_
                   _%slot97253%_
                   _%field97262%_)
                  (if (__class-type-struct? _%klass97245%_)
                      (make-struct-slot-mutator
                       _%klass97245%_
                       _%slot97253%_
                       _%field97262%_)
                      (if (let ((_%strukt97268%_
                                 (base-struct/1 _%klass97245%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt97268%_
                                    'class))
                                 (let ((__tmp99975
                                        (let ((__tmp99976
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt97268%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp99976))))
                                   (declare (not safe))
                                   (##fx< _%field97262%_ __tmp99975))))
                          (make-struct-subclass-slot-mutator
                           _%klass97245%_
                           _%slot97253%_
                           _%field97262%_)
                          (make-class-cached-slot-mutator
                           _%klass97245%_
                           _%slot97253%_
                           _%field97262%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass97216%_ _%slot97217%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97216%_ 'class))
            (let ((_%klass97221%_ _%klass97216%_))
              (if (symbol? _%slot97217%_)
                  (let ((_%slot97231%_ _%slot97217%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass97221%_
                     _%slot97231%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot97217%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass97216%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass97184%_ _%slot97185%_)
        (let* ((_%klass97188%_ _%klass97184%_)
               (_%slot97196%_ _%slot97185%_)
               (_%field97205%_
                (let ((__tmp99977
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass97188%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp99977 _%slot97196%_ '#f))))
          (if (not _%field97205%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass97188%_
                       'slot:
                       _%slot97196%_)
                '#!void)
              (if (__class-type-final? _%klass97188%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass97188%_
                   _%slot97196%_
                   _%field97205%_)
                  (if (__class-type-struct? _%klass97188%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass97188%_
                       _%slot97196%_
                       _%field97205%_)
                      (if (let ((_%strukt97211%_
                                 (base-struct/1 _%klass97188%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt97211%_
                                    'class))
                                 (let ((__tmp99978
                                        (let ((__tmp99979
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt97211%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp99979))))
                                   (declare (not safe))
                                   (##fx< _%field97205%_ __tmp99978))))
                          (make-struct-slot-unchecked-accessor
                           _%klass97188%_
                           _%slot97196%_
                           _%field97205%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass97188%_
                           _%slot97196%_
                           _%field97205%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass97159%_ _%slot97160%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97159%_ 'class))
            (let ((_%klass97164%_ _%klass97159%_))
              (if (symbol? _%slot97160%_)
                  (let ((_%slot97174%_ _%slot97160%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass97164%_
                     _%slot97174%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot97160%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass97159%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass97127%_ _%slot97128%_)
        (let* ((_%klass97131%_ _%klass97127%_)
               (_%slot97139%_ _%slot97128%_)
               (_%field97148%_
                (let ((__tmp99980
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass97131%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp99980 _%slot97139%_ '#f))))
          (if (not _%field97148%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass97131%_
                       'slot:
                       _%slot97139%_)
                '#!void)
              (if (__class-type-final? _%klass97131%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass97131%_
                   _%slot97139%_
                   _%field97148%_)
                  (if (__class-type-struct? _%klass97131%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass97131%_
                       _%slot97139%_
                       _%field97148%_)
                      (if (let ((_%strukt97154%_
                                 (base-struct/1 _%klass97131%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt97154%_
                                    'class))
                                 (let ((__tmp99981
                                        (let ((__tmp99982
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt97154%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp99982))))
                                   (declare (not safe))
                                   (##fx< _%field97148%_ __tmp99981))))
                          (make-struct-slot-unchecked-mutator
                           _%klass97131%_
                           _%slot97139%_
                           _%field97148%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass97131%_
                           _%slot97139%_
                           _%field97148%_))))))))
    (define not-an-instance__%
      (lambda (_%object97111%_ _%class97112%_ _%slot97113%_)
        (apply error
               '"not an instance"
               'object:
               _%object97111%_
               'class:
               _%class97112%_
               (if _%slot97113%_ (cons 'slot: (cons _%slot97113%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object97118%_ _%class97119%_)
        (let ((_%slot97121%_ '#f))
          (not-an-instance__% _%object97118%_ _%class97119%_ _%slot97121%_))))
    (define not-an-instance
      (lambda _g99984_
        (let ((_g99983_ (let () (declare (not safe)) (##length _g99984_))))
          (cond ((let () (declare (not safe)) (##fx= _g99983_ 2))
                 (apply not-an-instance__0 _g99984_))
                ((let () (declare (not safe)) (##fx= _g99983_ 3))
                 (apply not-an-instance__% _g99984_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g99984_))))))
    (define make-final-slot-accessor
      (lambda (_%klass97104%_ _%slot97105%_ _%field97106%_)
        (lambda (_%obj97108%_)
          (##direct-structure-ref
           _%obj97108%_
           _%field97106%_
           _%klass97104%_
           _%slot97105%_))))
    (define make-final-slot-mutator
      (lambda (_%klass97097%_ _%slot97098%_ _%field97099%_)
        (lambda (_%obj97101%_ _%val97102%_)
          (##direct-structure-set!
           _%obj97101%_
           _%val97102%_
           _%field97099%_
           _%klass97097%_
           _%slot97098%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass97091%_ _%slot97092%_ _%field97093%_)
        (lambda (_%obj97095%_)
          (##structure-ref
           _%obj97095%_
           _%field97093%_
           _%klass97091%_
           _%slot97092%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass97084%_ _%slot97085%_ _%field97086%_)
        (lambda (_%obj97088%_ _%val97089%_)
          (##structure-set!
           _%obj97088%_
           _%val97089%_
           _%field97086%_
           _%klass97084%_
           _%slot97085%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass97078%_ _%slot97079%_ _%field97080%_)
        (lambda (_%obj97082%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj97082%_
             _%field97080%_
             _%klass97078%_
             _%slot97079%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass97071%_ _%slot97072%_ _%field97073%_)
        (lambda (_%obj97075%_ _%val97076%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj97075%_
             _%val97076%_
             _%field97073%_
             _%klass97071%_
             _%slot97072%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass97065%_ _%slot97066%_ _%field97067%_)
        (lambda (_%obj97069%_)
          (if (class-instance? _%klass97065%_ _%obj97069%_)
              (unchecked-slot-ref _%obj97069%_ _%field97067%_)
              (not-an-instance__%
               _%obj97069%_
               _%klass97065%_
               _%slot97066%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass97058%_ _%slot97059%_ _%field97060%_)
        (lambda (_%obj97062%_ _%val97063%_)
          (if (class-instance? _%klass97058%_ _%obj97062%_)
              (unchecked-field-set! _%obj97062%_ _%field97060%_ _%val97063%_)
              (not-an-instance__%
               _%obj97062%_
               _%klass97058%_
               _%slot97059%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass97049%_ _%slot97050%_ _%field97051%_)
        (lambda (_%obj97053%_)
          (if (let ((__tmp99985
                     (let () (declare (not safe)) (##type-id _%klass97049%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj97053%_ __tmp99985))
              (unchecked-field-ref _%obj97053%_ _%field97051%_)
              (if (class-instance? _%klass97049%_ _%obj97053%_)
                  (unchecked-slot-ref _%obj97053%_ _%slot97050%_)
                  (not-an-instance__%
                   _%obj97053%_
                   _%klass97049%_
                   _%slot97050%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass97039%_ _%slot97040%_ _%field97041%_)
        (lambda (_%obj97043%_ _%val97044%_)
          (if (let ((__tmp99986
                     (let () (declare (not safe)) (##type-id _%klass97039%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj97043%_ __tmp99986))
              (unchecked-field-set! _%obj97043%_ _%field97041%_ _%val97044%_)
              (if (class-instance? _%klass97039%_ _%obj97043%_)
                  (unchecked-slot-set! _%obj97043%_ _%slot97040%_ _%val97044%_)
                  (not-an-instance__%
                   _%obj97043%_
                   _%klass97039%_
                   _%slot97040%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass97033%_ _%slot97034%_ _%field97035%_)
        (lambda (_%obj97037%_)
          (if (let ((__tmp99987
                     (let () (declare (not safe)) (##type-id _%klass97033%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj97037%_ __tmp99987))
              (unchecked-field-ref _%obj97037%_ _%field97035%_)
              (unchecked-slot-ref _%obj97037%_ _%slot97034%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass97026%_ _%slot97027%_ _%field97028%_)
        (lambda (_%obj97030%_ _%val97031%_)
          (if (let ((__tmp99988
                     (let () (declare (not safe)) (##type-id _%klass97026%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj97030%_ __tmp99988))
              (unchecked-field-set! _%obj97030%_ _%field97028%_ _%val97031%_)
              (unchecked-slot-set! _%obj97030%_ _%slot97027%_ _%val97031%_)))))
    (define class-slot-offset
      (lambda (_%klass97001%_ _%slot97002%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97001%_ 'class))
            (let ((_%klass97006%_ _%klass97001%_))
              (if (let () (declare (not safe)) (symbolic? _%slot97002%_))
                  (let ((_%slot97016%_ _%slot97002%_))
                    (__class-slot-offset _%klass97006%_ _%slot97016%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot97002%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass97001%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass96980%_ _%slot96981%_)
        (let* ((_%klass96984%_ _%klass96980%_)
               (_%slot96992%_ _%slot96981%_)
               (__tmp99989
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass96984%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp99989 _%slot96992%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass96954%_ _%obj96955%_ _%slot96956%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96954%_ 'class))
            (let ((_%klass96960%_ _%klass96954%_))
              (if (let () (declare (not safe)) (symbolic? _%slot96956%_))
                  (let ((_%slot96970%_ _%slot96956%_))
                    (__class-slot-ref
                     _%klass96960%_
                     _%obj96955%_
                     _%slot96970%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot96956%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass96954%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass96930%_ _%obj96931%_ _%slot96932%_)
        (let* ((_%klass96935%_ _%klass96930%_) (_%slot96943%_ _%slot96932%_))
          (if (__class-instance? _%klass96935%_ _%obj96931%_)
              (let ((_%off96952%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj96931%_))
                      _%slot96943%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj96931%_
                 _%off96952%_
                 _%klass96935%_
                 _%slot96943%_))
              (not-an-instance__0 _%obj96931%_ _%klass96935%_)))))
    (define class-slot-set!
      (lambda (_%klass96903%_ _%obj96904%_ _%slot96905%_ _%val96906%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96903%_ 'class))
            (let ((_%klass96910%_ _%klass96903%_))
              (if (let () (declare (not safe)) (symbolic? _%slot96905%_))
                  (let ((_%slot96920%_ _%slot96905%_))
                    (__class-slot-set!
                     _%klass96910%_
                     _%obj96904%_
                     _%slot96920%_
                     _%val96906%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot96905%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass96903%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass96878%_ _%obj96879%_ _%slot96880%_ _%val96881%_)
        (let* ((_%klass96884%_ _%klass96878%_) (_%slot96892%_ _%slot96880%_))
          (if (__class-instance? _%klass96884%_ _%obj96879%_)
              (let ((_%off96901%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj96879%_))
                      _%slot96892%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj96879%_
                 _%val96881%_
                 _%off96901%_
                 _%klass96884%_
                 _%slot96892%_))
              (not-an-instance__0 _%obj96879%_ _%klass96884%_)))))
    (define unchecked-field-ref
      (lambda (_%obj96875%_ _%off96876%_)
        (let ((__tmp99990
               (let () (declare (not safe)) (##structure-type _%obj96875%_))))
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj96875%_
           _%off96876%_
           __tmp99990
           '#f))))
    (define unchecked-field-set!
      (lambda (_%obj96871%_ _%off96872%_ _%val96873%_)
        (let ((__tmp99991
               (let () (declare (not safe)) (##structure-type _%obj96871%_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj96871%_
           _%val96873%_
           _%off96872%_
           __tmp99991
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj96868%_ _%slot96869%_)
        (unchecked-field-ref
         _%obj96868%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj96868%_))
          _%slot96869%_))))
    (define unchecked-slot-set!
      (lambda (_%obj96864%_ _%slot96865%_ _%val96866%_)
        (unchecked-field-set!
         _%obj96864%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj96864%_))
          _%slot96865%_)
         _%val96866%_)))
    (define slot-ref__%
      (lambda (_%obj96826%_ _%slot96827%_ _%E96828%_)
        (if (symbol? _%slot96827%_)
            (let ((_%slot96832%_ _%slot96827%_))
              (if (procedure? _%E96828%_)
                  (let ((_%E96842%_ _%E96828%_))
                    (__slot-ref__% _%obj96826%_ _%slot96832%_ _%E96842%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E96828%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot96827%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj96855%_ _%slot96856%_)
        (let ((_%E96858%_ __slot-error))
          (slot-ref__% _%obj96855%_ _%slot96856%_ _%E96858%_))))
    (define slot-ref
      (lambda _g99993_
        (let ((_g99992_ (let () (declare (not safe)) (##length _g99993_))))
          (cond ((let () (declare (not safe)) (##fx= _g99992_ 2))
                 (apply slot-ref__0 _g99993_))
                ((let () (declare (not safe)) (##fx= _g99992_ 3))
                 (apply slot-ref__% _g99993_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g99993_))))))
    (define __slot-ref__%
      (lambda (_%obj96782%_ _%slot96783%_ _%E96784%_)
        (let* ((_%slot96787%_ _%slot96783%_)
               (_%E96795%_ _%E96784%_)
               (_%klass96804%_ (class-of _%obj96782%_))
               (_%$e96807%_
                (__class-slot-offset _%klass96804%_ _%slot96787%_)))
          (if _%$e96807%_
              ((lambda (_%off96810%_)
                 (unchecked-field-ref _%obj96782%_ _%off96810%_))
               _%$e96807%_)
              (let ()
                (declare (not safe))
                (_%E96795%_ _%obj96782%_ _%slot96787%_))))))
    (define __slot-ref__0
      (lambda (_%obj96816%_ _%slot96817%_)
        (let ((_%E96819%_ __slot-error))
          (__slot-ref__% _%obj96816%_ _%slot96817%_ _%E96819%_))))
    (define __slot-ref
      (lambda _g99995_
        (let ((_g99994_ (let () (declare (not safe)) (##length _g99995_))))
          (cond ((let () (declare (not safe)) (##fx= _g99994_ 2))
                 (apply __slot-ref__0 _g99995_))
                ((let () (declare (not safe)) (##fx= _g99994_ 3))
                 (apply __slot-ref__% _g99995_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g99995_))))))
    (define slot-set!__%
      (lambda (_%obj96740%_ _%slot96741%_ _%val96742%_ _%E96743%_)
        (if (symbol? _%slot96741%_)
            (let ((_%slot96747%_ _%slot96741%_))
              (if (procedure? _%E96743%_)
                  (let ((_%E96757%_ _%E96743%_))
                    (__slot-set!__%
                     _%obj96740%_
                     _%slot96747%_
                     _%val96742%_
                     _%E96757%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E96743%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot96741%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj96770%_ _%slot96771%_ _%val96772%_)
        (let ((_%E96774%_ __slot-error))
          (slot-set!__% _%obj96770%_ _%slot96771%_ _%val96772%_ _%E96774%_))))
    (define slot-set!
      (lambda _g99997_
        (let ((_g99996_ (let () (declare (not safe)) (##length _g99997_))))
          (cond ((let () (declare (not safe)) (##fx= _g99996_ 3))
                 (apply slot-set!__0 _g99997_))
                ((let () (declare (not safe)) (##fx= _g99996_ 4))
                 (apply slot-set!__% _g99997_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g99997_))))))
    (define __slot-set!__%
      (lambda (_%obj96693%_ _%slot96694%_ _%val96695%_ _%E96696%_)
        (let* ((_%slot96699%_ _%slot96694%_)
               (_%E96707%_ _%E96696%_)
               (_%klass96716%_ (class-of _%obj96693%_))
               (_%$e96719%_
                (__class-slot-offset _%klass96716%_ _%slot96699%_)))
          (if _%$e96719%_
              ((lambda (_%off96722%_)
                 (unchecked-field-set! _%obj96693%_ _%off96722%_ _%val96695%_))
               _%$e96719%_)
              (let ()
                (declare (not safe))
                (_%E96707%_ _%obj96693%_ _%slot96699%_))))))
    (define __slot-set!__0
      (lambda (_%obj96728%_ _%slot96729%_ _%val96730%_)
        (let ((_%E96732%_ __slot-error))
          (__slot-set!__%
           _%obj96728%_
           _%slot96729%_
           _%val96730%_
           _%E96732%_))))
    (define __slot-set!
      (lambda _g99999_
        (let ((_g99998_ (let () (declare (not safe)) (##length _g99999_))))
          (cond ((let () (declare (not safe)) (##fx= _g99998_ 3))
                 (apply __slot-set!__0 _g99999_))
                ((let () (declare (not safe)) (##fx= _g99998_ 4))
                 (apply __slot-set!__% _g99999_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g99999_))))))
    (define __slot-error
      (lambda (_%obj96689%_ _%slot96690%_)
        (error '"Cannot find slot"
               'object:
               _%obj96689%_
               'slot:
               _%slot96690%_)))
    (define subclass?
      (lambda (_%maybe-sub-class96664%_ _%maybe-super-class96665%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class96664%_ 'class))
            (let ((_%maybe-sub-class96669%_ _%maybe-sub-class96664%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class96665%_
                     'class))
                  (let ((_%maybe-super-class96679%_
                         _%maybe-super-class96665%_))
                    (__subclass?
                     _%maybe-sub-class96669%_
                     _%maybe-super-class96679%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class96665%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class96664%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class96636%_ _%maybe-super-class96637%_)
        (let* ((_%maybe-sub-class96640%_ _%maybe-sub-class96636%_)
               (_%maybe-super-class96648%_ _%maybe-super-class96637%_)
               (_%maybe-super-class-id96657%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class96648%_)))
               (_%$e96659%_
                (eq? _%maybe-super-class-id96657%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class96640%_)))))
          (if _%$e96659%_
              _%$e96659%_
              (let ((__tmp100001
                     (lambda (_%super-class96662%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class96662%_))
                            _%maybe-super-class-id96657%_)))
                    (__tmp100000
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class96640%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp100001 __tmp100000))))))
    (define object?
      (lambda (_%o96633%_)
        (if (let () (declare (not safe)) (##structure? _%o96633%_))
            (let ((__tmp100002
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o96633%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp100002 'class))
            '#f)))
    (define object-type
      (lambda (_%o96628%_)
        (if (let () (declare (not safe)) (##structure? _%o96628%_))
            (let ((_%klass96631%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o96628%_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass96631%_ 'class))
                  _%klass96631%_
                  (begin
                    (error '"not an object" _%o96628%_ _%klass96631%_)
                    '#!void)))
            (begin (error '"not an object" _%o96628%_) '#!void))))
    (define direct-instance?
      (lambda (_%klass96613%_ _%obj96614%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96613%_ 'class))
            (let ((_%klass96618%_ _%klass96613%_))
              (__direct-instance? _%klass96618%_ _%obj96614%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass96613%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass96600%_ _%obj96601%_)
        (let* ((_%klass96604%_ _%klass96600%_)
               (__tmp100003
                (let () (declare (not safe)) (##type-id _%klass96604%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj96601%_ __tmp100003))))
    (define immediate-instance-of?
      (lambda (_%klass96596%_ _%obj96597%_)
        (if (let () (declare (not safe)) (##structure? _%obj96597%_))
            (eq? _%klass96596%_
                 (let () (declare (not safe)) (##structure-type _%obj96597%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass96581%_ _%obj96582%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96581%_ 'class))
            (let ((_%klass96586%_ _%klass96581%_))
              (__struct-instance? _%klass96586%_ _%obj96582%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass96581%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass96568%_ _%obj96569%_)
        (let* ((_%klass96572%_ _%klass96568%_)
               (__tmp100004
                (let () (declare (not safe)) (##type-id _%klass96572%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj96569%_ __tmp100004))))
    (define class-instance?
      (lambda (_%klass96553%_ _%obj96554%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96553%_ 'class))
            (let ((_%klass96558%_ _%klass96553%_))
              (__class-instance? _%klass96558%_ _%obj96554%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass96553%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass96538%_ _%obj96539%_)
        (let* ((_%klass96542%_ _%klass96538%_)
               (_%type96551%_ (class-of _%obj96539%_)))
          (__subclass? _%type96551%_ _%klass96542%_))))
    (define make-object
      (lambda (_%klass96513%_ _%k96514%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96513%_ 'class))
            (let ((_%klass96518%_ _%klass96513%_))
              (if (fixnum? _%k96514%_)
                  (let ((_%k96528%_ _%k96514%_))
                    (__make-object _%klass96518%_ _%k96528%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k96514%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass96513%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass96490%_ _%k96491%_)
        (let* ((_%klass96494%_ _%klass96490%_) (_%k96502%_ _%k96491%_))
          (if (__class-type-system? _%klass96494%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass96494%_)
                '#!void)
              (let ((_%obj96511%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass96494%_ _%k96502%_))))
                (object-fill! _%obj96511%_ '#f))))))
    (define object-fill!
      (lambda (_%obj96475%_ _%fill96476%_)
        (if '#t
            (let ((_%obj96480%_ _%obj96475%_))
              (__object-fill! _%obj96480%_ _%fill96476%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj96475%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj96457%_ _%fill96458%_)
        (let ((_%obj96461%_ _%obj96457%_))
          (let _%loop96470%_ ((_%i96472%_
                               (let ((__tmp100005
                                      (let ()
                                        (declare (not safe))
                                        (##structure-length _%obj96461%_))))
                                 (declare (not safe))
                                 (##fx- __tmp100005 '1))))
            (if (let () (declare (not safe)) (##fx> _%i96472%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj96461%_
                     _%fill96458%_
                     _%i96472%_
                     '#f
                     '#f))
                  (_%loop96470%_
                   (let () (declare (not safe)) (##fx- _%i96472%_ '1))))
                _%obj96461%_)))))
    (define new-instance
      (lambda (_%klass96443%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96443%_ 'class))
            (let ((_%klass96447%_ _%klass96443%_))
              (__new-instance _%klass96447%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass96443%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass96431%_)
        (let* ((_%klass96434%_ _%klass96431%_)
               (__obj99920
                (let ((__tmp100006
                       (let ((__tmp100007
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass96434%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp100007))))
                  (declare (not safe))
                  (##make-structure _%klass96434%_ __tmp100006))))
          (object-fill! __obj99920 '#f)
          __obj99920)))
    (define make-instance
      (lambda (_%klass96416%_ . _%args96417%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96416%_ 'class))
            (let ((_%klass96421%_ _%klass96416%_))
              (declare (not safe))
              (##apply __make-instance _%klass96421%_ _%args96417%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass96416%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass96388%_ . _%args96389%_)
        (let* ((_%klass96392%_ _%klass96388%_)
               (_%$e96401%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass96392%_ '10 '#f '#f))))
          (if _%$e96401%_
              ((lambda (_%kons-id96404%_)
                 (let ((_%obj96406%_ (__new-instance _%klass96392%_)))
                   (___constructor-init!
                    _%klass96392%_
                    _%kons-id96404%_
                    _%obj96406%_
                    _%args96389%_)
                   _%obj96406%_))
               _%$e96401%_)
              (if (__class-type-metaclass? _%klass96392%_)
                  (let ((_%obj96409%_ (__new-instance _%klass96392%_)))
                    (__metaclass-instance-init!
                     _%klass96392%_
                     _%obj96409%_
                     _%args96389%_)
                    _%obj96409%_)
                  (if (__class-type-struct? _%klass96392%_)
                      (if (let ((__tmp100009
                                 (__class-type-field-count _%klass96392%_))
                                (__tmp100008
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args96389%_))))
                            (declare (not safe))
                            (##fx= __tmp100009 __tmp100008))
                          (apply ##structure _%klass96392%_ _%args96389%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass96392%_
                                   'slots:
                                   (__class-type-slot-list _%klass96392%_)
                                   'args:
                                   _%args96389%_)
                            '#!void))
                      (let ((_%obj96412%_ (__new-instance _%klass96392%_)))
                        (___class-instance-init!
                         _%klass96392%_
                         _%obj96412%_
                         _%args96389%_)
                        _%obj96412%_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj96373%_ . _%args96374%_)
        (if '#t
            (let ((_%obj96378%_ _%obj96373%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj96378%_ _%args96374%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj96373%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj96360%_ . _%args96361%_)
        (let ((_%obj96364%_ _%obj96360%_))
          (if (let ((__tmp100011
                     (let () (declare (not safe)) (##length _%args96361%_)))
                    (__tmp100010
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj96364%_))))
                (declare (not safe))
                (##fx< __tmp100011 __tmp100010))
              (___struct-instance-init! _%obj96364%_ _%args96361%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj96364%_
                     'args:
                     _%args96361%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj96319%_ _%args96320%_)
        (let _%lp96322%_ ((_%k96324%_ '1) (_%rest96325%_ _%args96320%_))
          (let* ((_%rest9632696334%_ _%rest96325%_)
                 (_%else9632896342%_ (lambda () _%obj96319%_))
                 (_%K9633096348%_
                  (lambda (_%rest96345%_ _%hd96346%_)
                    (unchecked-field-set! _%obj96319%_ _%k96324%_ _%hd96346%_)
                    (_%lp96322%_
                     (let () (declare (not safe)) (##fx+ _%k96324%_ '1))
                     _%rest96345%_))))
            (if (let () (declare (not safe)) (##pair? _%rest9632696334%_))
                (let ((_%hd9633196351%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9632696334%_)))
                      (_%tl9633296353%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9632696334%_))))
                  (let* ((_%hd96356%_ _%hd9633196351%_)
                         (_%rest96358%_ _%tl9633296353%_))
                    (_%K9633096348%_ _%rest96358%_ _%hd96356%_)))
                (_%else9632896342%_))))))
    (define class-instance-init!
      (lambda (_%obj96304%_ . _%args96305%_)
        (if '#t
            (let ((_%obj96309%_ _%obj96304%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj96309%_ _%args96305%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj96304%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj96291%_ . _%args96292%_)
        (let ((_%obj96295%_ _%obj96291%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj96295%_))
           _%obj96295%_
           _%args96292%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass96233%_ _%obj96234%_ _%args96235%_)
        (let _%lp96237%_ ((_%rest96239%_ _%args96235%_))
          (let* ((_%rest9624096250%_ _%rest96239%_)
                 (_%else9624296258%_
                  (lambda ()
                    (if (null? _%rest96239%_)
                        _%obj96234%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass96233%_
                               'rest:
                               _%rest96239%_))))
                 (_%K9624496272%_
                  (lambda (_%rest96261%_ _%val96262%_ _%key96263%_)
                    (if (keyword? _%key96263%_)
                        (let ((_%$e96266%_
                               (__class-slot-offset
                                _%klass96233%_
                                _%key96263%_)))
                          (if _%$e96266%_
                              ((lambda (_%off96269%_)
                                 (unchecked-field-set!
                                  _%obj96234%_
                                  _%off96269%_
                                  _%val96262%_)
                                 (_%lp96237%_ _%rest96261%_))
                               _%$e96266%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass96233%_
                                     'slot:
                                     _%key96263%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key96263%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest9624096250%_))
                (let ((_%hd9624596275%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9624096250%_)))
                      (_%tl9624696277%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9624096250%_))))
                  (let ((_%key96280%_ _%hd9624596275%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9624696277%_))
                        (let ((_%hd9624796282%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9624696277%_)))
                              (_%tl9624896284%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9624696277%_))))
                          (let* ((_%val96287%_ _%hd9624796282%_)
                                 (_%rest96289%_ _%tl9624896284%_))
                            (_%K9624496272%_
                             _%rest96289%_
                             _%val96287%_
                             _%key96280%_)))
                        (_%else9624296258%_))))
                (_%else9624296258%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass96229%_ _%obj96230%_ _%args96231%_)
        (apply call-method
               _%klass96229%_
               'instance-init!
               _%obj96230%_
               _%args96231%_)))
    (define constructor-init!
      (lambda (_%klass96192%_ _%kons-id96193%_ _%obj96194%_ . _%args96195%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96192%_ 'class))
            (let ((_%klass96199%_ _%klass96192%_))
              (if (symbol? _%kons-id96193%_)
                  (let ((_%kons-id96209%_ _%kons-id96193%_))
                    (if '#t
                        (let ((_%obj96219%_ _%obj96194%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass96199%_
                                   _%kons-id96209%_
                                   _%obj96219%_
                                   _%args96195%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                           'contract:
                           'true
                           'value:
                           _%obj96194%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id96193%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass96192%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass96161%_ _%kons-id96162%_ _%obj96163%_ . _%args96164%_)
        (let* ((_%klass96167%_ _%klass96161%_)
               (_%kons-id96175%_ _%kons-id96162%_)
               (_%obj96183%_ _%obj96163%_))
          (___constructor-init!
           _%klass96167%_
           _%kons-id96175%_
           _%obj96183%_
           _%args96164%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass96150%_ _%kons-id96151%_ _%obj96152%_ _%args96153%_)
        (let ((_%$e96155%_
               (__find-method _%klass96150%_ _%obj96152%_ _%kons-id96151%_)))
          (if _%$e96155%_
              ((lambda (_%kons96158%_)
                 (apply _%kons96158%_ _%obj96152%_ _%args96153%_)
                 _%obj96152%_)
               _%$e96155%_)
              (error '"missing constructor"
                     'class:
                     _%klass96150%_
                     'method:
                     _%kons-id96151%_)))))
    (define struct-copy
      (lambda (_%struct96136%_)
        (if '#t
            (let ((_%struct96140%_ _%struct96136%_))
              (__struct-copy _%struct96140%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct96136%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct96124%_)
        (let ((_%struct96127%_ _%struct96124%_))
          (declare (not safe))
          (##structure-copy _%struct96127%_))))
    (define struct->list
      (lambda (_%obj96110%_)
        (if '#t
            (let ((_%obj96114%_ _%obj96110%_)) (__struct->list _%obj96114%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj96110%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj96098%_)
        (let ((_%obj96101%_ _%obj96098%_))
          (declare (not safe))
          (##vector->list _%obj96101%_))))
    (define class->list
      (lambda (_%obj96084%_)
        (if '#t
            (let ((_%obj96088%_ _%obj96084%_)) (__class->list _%obj96088%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@837.20-837.23"
               'contract:
               'true
               'value:
               _%obj96084%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj96060%_)
        (let* ((_%obj96063%_ _%obj96060%_)
               (_%klass96072%_
                (let () (declare (not safe)) (##structure-type _%obj96063%_)))
               (_%slot-vector96074%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass96072%_ '7 '#f '#f))))
          (let _%loop96076%_ ((_%index96078%_
                               (let ((__tmp100012
                                      (let ()
                                        (declare (not safe))
                                        (##vector-length
                                         _%slot-vector96074%_))))
                                 (declare (not safe))
                                 (##fx- __tmp100012 '1)))
                              (_%plist96079%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index96078%_ '1))
                (cons _%klass96072%_ _%plist96079%_)
                (let ((_%slot96082%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%slot-vector96074%_ _%index96078%_))))
                  (_%loop96076%_
                   (let () (declare (not safe)) (##fx- _%index96078%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot96082%_))
                         (cons (unchecked-field-ref
                                _%obj96063%_
                                _%index96078%_)
                               _%plist96079%_)))))))))
    (define call-method
      (lambda (_%obj96044%_ _%id96045%_ . _%args96046%_)
        (if (symbol? _%id96045%_)
            (let ((_%id96050%_ _%id96045%_))
              (declare (not safe))
              (##apply __call-method _%obj96044%_ _%id96050%_ _%args96046%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.24-852.26"
               'contract:
               'symbol?
               'value:
               _%id96045%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj96013%_ _%id96014%_ . _%args96015%_)
        (let* ((_%id96018%_ _%id96014%_)
               (_%$e96027%_ (__method-ref _%obj96013%_ _%id96018%_)))
          (if _%$e96027%_
              ((lambda (_%method96030%_)
                 (let ((_%method96032%_ _%method96030%_))
                   (apply _%method96032%_ _%obj96013%_ _%args96015%_)))
               _%$e96027%_)
              (error '"cannot find method"
                     'object:
                     _%obj96013%_
                     'method:
                     _%id96018%_)))))
    (define method-ref
      (lambda (_%obj95998%_ _%id95999%_)
        (if (symbol? _%id95999%_)
            (let ((_%id96003%_ _%id95999%_))
              (__method-ref _%obj95998%_ _%id96003%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@879.23-879.25"
               'contract:
               'symbol?
               'value:
               _%id95999%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj95985%_ _%id95986%_)
        (let ((_%id95989%_ _%id95986%_))
          (__find-method (class-of _%obj95985%_) _%obj95985%_ _%id95989%_))))
    (define checked-method-ref
      (lambda (_%obj95978%_ _%id95979%_)
        (let ((_%$e95982%_ (method-ref _%obj95978%_ _%id95979%_)))
          (if _%$e95982%_
              _%$e95982%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj95978%_
                       'method:
                       _%id95979%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj95963%_ _%id95964%_)
        (if (symbol? _%id95964%_)
            (let ((_%id95968%_ _%id95964%_))
              (__bound-method-ref _%obj95963%_ _%id95968%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@887.29-887.31"
               'contract:
               'symbol?
               'value:
               _%id95964%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj95931%_ _%id95932%_)
        (let* ((_%id95935%_ _%id95932%_)
               (_%$e95944%_ (__method-ref _%obj95931%_ _%id95935%_)))
          (if _%$e95944%_
              ((lambda (_%method95947%_)
                 (let ((_%method95949%_ _%method95947%_))
                   (lambda _%args95960%_
                     (apply _%method95949%_ _%obj95931%_ _%args95960%_))))
               _%$e95944%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj95916%_ _%id95917%_)
        (if (symbol? _%id95917%_)
            (let ((_%id95921%_ _%id95917%_))
              (__checked-bound-method-ref _%obj95916%_ _%id95921%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@896.37-896.39"
               'contract:
               'symbol?
               'value:
               _%id95917%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj95899%_ _%id95900%_)
        (let* ((_%id95903%_ _%id95900%_)
               (_%method95912%_ (checked-method-ref _%obj95899%_ _%id95903%_)))
          (lambda _%args95914%_
            (apply _%method95912%_ _%obj95899%_ _%args95914%_)))))
    (define find-method
      (lambda (_%klass95873%_ _%obj95874%_ _%id95875%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95873%_ 'class))
            (let ((_%klass95879%_ _%klass95873%_))
              (if (symbol? _%id95875%_)
                  (let ((_%id95889%_ _%id95875%_))
                    (__find-method _%klass95879%_ _%obj95874%_ _%id95889%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@901.41-901.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id95875%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@901.20-901.25"
               'contract:
               'class-type?
               'value:
               _%klass95873%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass95846%_ _%obj95847%_ _%id95848%_)
        (let* ((_%klass95851%_ _%klass95846%_)
               (_%id95859%_ _%id95848%_)
               (_%$e95868%_
                (__direct-method-ref _%klass95851%_ _%obj95847%_ _%id95859%_)))
          (if _%$e95868%_
              _%$e95868%_
              (if (__class-type-sealed? _%klass95851%_)
                  '#f
                  (__mixin-method-ref
                   _%klass95851%_
                   _%obj95847%_
                   _%id95859%_))))))
    (define mixin-find-method
      (lambda (_%mixins95830%_ _%obj95831%_ _%id95832%_)
        (if (symbol? _%id95832%_)
            (let ((_%id95836%_ _%id95832%_))
              (__mixin-find-method _%mixins95830%_ _%obj95831%_ _%id95836%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@909.37-909.39"
               'contract:
               'symbol?
               'value:
               _%id95832%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins95812%_ _%obj95813%_ _%id95814%_)
        (let* ((_%id95817%_ _%id95814%_)
               (__tmp100013
                (lambda (_%g9582595827%_)
                  (direct-method-ref
                   _%g9582595827%_
                   _%obj95813%_
                   _%id95817%_))))
          (declare (not safe))
          (__ormap1 __tmp100013 _%mixins95812%_))))
    (define direct-method-ref
      (lambda (_%klass95786%_ _%obj95787%_ _%id95788%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95786%_ 'class))
            (let ((_%klass95792%_ _%klass95786%_))
              (if (symbol? _%id95788%_)
                  (let ((_%id95802%_ _%id95788%_))
                    (__direct-method-ref
                     _%klass95792%_
                     _%obj95787%_
                     _%id95802%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@912.47-912.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id95788%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@912.26-912.31"
               'contract:
               'class-type?
               'value:
               _%klass95786%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass95740%_ _%obj95741%_ _%id95742%_)
        (let* ((_%klass95745%_ _%klass95740%_) (_%id95753%_ _%id95742%_))
          (letrec ((_%metaclass-resolve-method95762%_
                    (lambda ()
                      (let ((__method99921
                             (__method-ref _%klass95745%_ 'direct-method-ref)))
                        (if __method99921
                            (let ()
                              (declare (not safe))
                              (__method99921
                               _%klass95745%_
                               _%obj95741%_
                               _%id95753%_))
                            (begin
                              (error '"Missing method"
                                     _%klass95745%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!95763%_
                    (lambda ()
                      (let ((_%method95783%_
                             (_%metaclass-resolve-method95762%_)))
                        (let ((__tmp100015
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass95745%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp100014
                               (if _%method95783%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp100015
                           _%id95753%_
                           __tmp100014))
                        _%method95783%_))))
            (let ((_%$e95765%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass95745%_ '11 '#f '#f))))
              (if _%$e95765%_
                  ((lambda (_%ht95768%_)
                     (let ((_%method95770%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht95768%_
                               _%id95753%_
                               '#f))))
                       (if (procedure? _%method95770%_)
                           _%method95770%_
                           (if (__class-type-metaclass? _%klass95745%_)
                               (let ((_%$e95774%_ _%method95770%_))
                                 (if (eq? 'resolved _%$e95774%_)
                                     (_%metaclass-resolve-method95762%_)
                                     (if (eq? 'unknown _%$e95774%_)
                                         '#f
                                         (_%metaclass-resolve-method!95763%_))))
                               '#f))))
                   _%$e95765%_)
                  (if (__class-type-metaclass? _%klass95745%_)
                      (let ((_%tab95779%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass95745%_
                           _%tab95779%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!95763%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass95714%_ _%obj95715%_ _%id95716%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95714%_ 'class))
            (let ((_%klass95720%_ _%klass95714%_))
              (if (symbol? _%id95716%_)
                  (let ((_%id95730%_ _%id95716%_))
                    (__mixin-method-ref
                     _%klass95720%_
                     _%obj95715%_
                     _%id95730%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@942.46-942.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id95716%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@942.25-942.30"
               'contract:
               'class-type?
               'value:
               _%klass95714%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass95692%_ _%obj95693%_ _%id95694%_)
        (let* ((_%klass95697%_ _%klass95692%_) (_%id95705%_ _%id95694%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass95697%_ '6 '#f '#f))
           _%obj95693%_
           _%id95705%_))))
    (define bind-method!__%
      (lambda (_%klass95651%_ _%id95652%_ _%proc95653%_ _%rebind?95654%_)
        (if (symbol? _%id95652%_)
            (let ((_%id95658%_ _%id95652%_))
              (if (procedure? _%proc95653%_)
                  (let ((_%proc95668%_ _%proc95653%_))
                    (__bind-method!__%
                     _%klass95651%_
                     _%id95658%_
                     _%proc95668%_
                     _%rebind?95654%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@945.42-945.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc95653%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@945.27-945.29"
               'contract:
               'symbol?
               'value:
               _%id95652%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass95681%_ _%id95682%_ _%proc95683%_)
        (let ((_%rebind?95685%_ '#f))
          (bind-method!__%
           _%klass95681%_
           _%id95682%_
           _%proc95683%_
           _%rebind?95685%_))))
    (define bind-method!
      (lambda _g100017_
        (let ((_g100016_ (let () (declare (not safe)) (##length _g100017_))))
          (cond ((let () (declare (not safe)) (##fx= _g100016_ 3))
                 (apply bind-method!__0 _g100017_))
                ((let () (declare (not safe)) (##fx= _g100016_ 4))
                 (apply bind-method!__% _g100017_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g100017_))))))
    (define __bind-method!__%
      (lambda (_%klass95602%_ _%id95603%_ _%proc95604%_ _%rebind?95605%_)
        (let* ((_%id95608%_ _%id95603%_) (_%proc95616%_ _%proc95604%_))
          (letrec ((_%bind!95625%_
                    (lambda (_%ht95634%_)
                      (if (and (not _%rebind?95605%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht95634%_
                                  _%id95608%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass95602%_
                                 'method:
                                 _%id95608%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht95634%_
                               _%id95608%_
                               _%proc95616%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass95602%_ 'class))
                (let ((_%ht95628%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass95602%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht95628%_
                      (_%bind!95625%_ _%ht95628%_)
                      (let ((_%ht95630%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass95602%_
                           _%ht95630%_
                           '11
                           '#f
                           '#f))
                        (_%bind!95625%_ _%ht95630%_))))
                (if (let () (declare (not safe)) (##type? _%klass95602%_))
                    (__bind-method!__%
                     (__shadow-class _%klass95602%_)
                     _%id95608%_
                     _%proc95616%_
                     _%rebind?95605%_)
                    (error '"bad class; expected class or builtin type"
                           _%klass95602%_)))))))
    (define __bind-method!__0
      (lambda (_%klass95639%_ _%id95640%_ _%proc95641%_)
        (let ((_%rebind?95643%_ '#f))
          (__bind-method!__%
           _%klass95639%_
           _%id95640%_
           _%proc95641%_
           _%rebind?95643%_))))
    (define __bind-method!
      (lambda _g100019_
        (let ((_g100018_ (let () (declare (not safe)) (##length _g100019_))))
          (cond ((let () (declare (not safe)) (##fx= _g100018_ 3))
                 (apply __bind-method!__0 _g100019_))
                ((let () (declare (not safe)) (##fx= _g100018_ 4))
                 (apply __bind-method!__% _g100019_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g100019_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint95582%_ _%seed95584%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint95582%_
           procedure-hash
           eq?
           _%seed95584%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint95590%_ '#f) (_%seed95592%_ '0))
          (make-method-specializer-table__%
           _%size-hint95590%_
           _%seed95592%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint95594%_)
        (let ((_%seed95596%_ '0))
          (make-method-specializer-table__%
           _%size-hint95594%_
           _%seed95596%_))))
    (define make-method-specializer-table
      (lambda _g100021_
        (let ((_g100020_ (let () (declare (not safe)) (##length _g100021_))))
          (cond ((let () (declare (not safe)) (##fx= _g100020_ 0))
                 (apply make-method-specializer-table__0 _g100021_))
                ((let () (declare (not safe)) (##fx= _g100020_ 1))
                 (apply make-method-specializer-table__1 _g100021_))
                ((let () (declare (not safe)) (##fx= _g100020_ 2))
                 (apply make-method-specializer-table__% _g100021_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g100021_))))))
    (define method-specializer-table-ref
      (lambda (_%tab95535%_ _%key95536%_ _%default95537%_)
        (let ((_%table95539%_
               (let () (declare (not safe)) (&raw-table-table _%tab95535%_)))
              (_%seed95540%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95535%_))))
          (let* ((_%h95542%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key95536%_))
                         _%seed95540%_))
                 (_%size95545%_ (vector-length _%table95539%_))
                 (_%entries95548%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95545%_ '2)))
                 (_%start95551%_
                  (let ((__tmp100022
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95542%_ _%entries95548%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100022 '1))))
            (let _%loop95555%_ ((_%probe95558%_ _%start95551%_)
                                (_%i95560%_ '1)
                                (_%deleted95562%_ '#f))
              (let ((_%k95565%_ (vector-ref _%table95539%_ _%probe95558%_)))
                (if (eq? _%k95565%_ (macro-unused-obj))
                    _%default95537%_
                    (if (eq? _%k95565%_ (macro-deleted-obj))
                        (_%loop95555%_
                         (let ((_%next-probe95570%_
                                (fx+ _%start95551%_
                                     _%i95560%_
                                     (fx* _%i95560%_ _%i95560%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95570%_ _%size95545%_))
                         (let () (declare (not safe)) (##fx+ _%i95560%_ '1))
                         (let ((_%$e95573%_ _%deleted95562%_))
                           (if _%$e95573%_ _%$e95573%_ _%probe95558%_)))
                        (if (eq? _%key95536%_ _%k95565%_)
                            (vector-ref
                             _%table95539%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe95558%_ '1)))
                            (_%loop95555%_
                             (let ((_%next-probe95578%_
                                    (fx+ _%start95551%_
                                         _%i95560%_
                                         (fx* _%i95560%_ _%i95560%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95578%_ _%size95545%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95560%_ '1))
                             _%deleted95562%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab95531%_ _%key95532%_ _%value95533%_)
        (if (let ((__tmp100025
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab95531%_)))
                  (__tmp100023
                   (let ((__tmp100024
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab95531%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp100024 '4))))
              (declare (not safe))
              (##fx< __tmp100025 __tmp100023))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab95531%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab95531%_
         _%key95532%_
         _%value95533%_)))
    (define __method-specializer-table-set!
      (lambda (_%tab95482%_ _%key95483%_ _%value95484%_)
        (let ((_%table95487%_
               (let () (declare (not safe)) (&raw-table-table _%tab95482%_)))
              (_%seed95488%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95482%_))))
          (let* ((_%h95490%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key95483%_))
                         _%seed95488%_))
                 (_%size95493%_ (vector-length _%table95487%_))
                 (_%entries95496%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95493%_ '2)))
                 (_%start95499%_
                  (let ((__tmp100026
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95490%_ _%entries95496%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100026 '1))))
            (let _%loop95503%_ ((_%probe95506%_ _%start95499%_)
                                (_%i95508%_ '1)
                                (_%deleted95510%_ '#f))
              (let ((_%k95513%_ (vector-ref _%table95487%_ _%probe95506%_)))
                (if (eq? _%k95513%_ (macro-unused-obj))
                    (if _%deleted95510%_
                        (begin
                          (vector-set!
                           _%table95487%_
                           _%deleted95510%_
                           _%key95483%_)
                          (vector-set!
                           _%table95487%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted95510%_ '1))
                           _%value95484%_)
                          ((lambda ()
                             (let ((__tmp100027
                                    (let ((__tmp100028
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95482%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100028 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95482%_
                                __tmp100027)))))
                        (begin
                          (vector-set!
                           _%table95487%_
                           _%probe95506%_
                           _%key95483%_)
                          (vector-set!
                           _%table95487%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe95506%_ '1))
                           _%value95484%_)
                          ((lambda ()
                             (let ((__tmp100029
                                    (let ((__tmp100030
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab95482%_))))
                                      (declare (not safe))
                                      (##fx- __tmp100030 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab95482%_ __tmp100029))
                             (let ((__tmp100031
                                    (let ((__tmp100032
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95482%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100032 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95482%_
                                __tmp100031))))))
                    (if (eq? _%k95513%_ (macro-deleted-obj))
                        (_%loop95503%_
                         (let ((_%next-probe95520%_
                                (fx+ _%start95499%_
                                     _%i95508%_
                                     (fx* _%i95508%_ _%i95508%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95520%_ _%size95493%_))
                         (let () (declare (not safe)) (##fx+ _%i95508%_ '1))
                         (let ((_%$e95523%_ _%deleted95510%_))
                           (if _%$e95523%_ _%$e95523%_ _%probe95506%_)))
                        (if (eq? _%key95483%_ _%k95513%_)
                            (let ()
                              (vector-set!
                               _%table95487%_
                               _%probe95506%_
                               _%key95483%_)
                              (vector-set!
                               _%table95487%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95506%_ '1))
                               _%value95484%_))
                            (_%loop95503%_
                             (let ((_%next-probe95528%_
                                    (fx+ _%start95499%_
                                         _%i95508%_
                                         (fx* _%i95508%_ _%i95508%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95528%_ _%size95493%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95508%_ '1))
                             _%deleted95510%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab95477%_
               _%key95478%_
               _%method-specializer-table-update!95479%_
               _%default95480%_)
        (if (let ((__tmp100035
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab95477%_)))
                  (__tmp100033
                   (let ((__tmp100034
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab95477%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp100034 '4))))
              (declare (not safe))
              (##fx< __tmp100035 __tmp100033))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab95477%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab95477%_
         _%key95478%_
         _%method-specializer-table-update!95479%_
         _%default95480%_)))
    (define __method-specializer-table-update!
      (lambda (_%tab95427%_
               _%key95428%_
               _%method-specializer-table-update!95429%_
               _%default95430%_)
        (let ((_%table95433%_
               (let () (declare (not safe)) (&raw-table-table _%tab95427%_)))
              (_%seed95434%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95427%_))))
          (let* ((_%h95436%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key95428%_))
                         _%seed95434%_))
                 (_%size95439%_ (vector-length _%table95433%_))
                 (_%entries95442%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95439%_ '2)))
                 (_%start95445%_
                  (let ((__tmp100036
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95436%_ _%entries95442%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100036 '1))))
            (let _%loop95449%_ ((_%probe95452%_ _%start95445%_)
                                (_%i95454%_ '1)
                                (_%deleted95456%_ '#f))
              (let ((_%k95459%_ (vector-ref _%table95433%_ _%probe95452%_)))
                (if (eq? _%k95459%_ (macro-unused-obj))
                    (if _%deleted95456%_
                        (begin
                          (vector-set!
                           _%table95433%_
                           _%deleted95456%_
                           _%key95428%_)
                          (vector-set!
                           _%table95433%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted95456%_ '1))
                           (_%method-specializer-table-update!95429%_
                            _%default95430%_))
                          ((lambda ()
                             (let ((__tmp100037
                                    (let ((__tmp100038
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95427%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100038 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95427%_
                                __tmp100037)))))
                        (begin
                          (vector-set!
                           _%table95433%_
                           _%probe95452%_
                           _%key95428%_)
                          (vector-set!
                           _%table95433%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe95452%_ '1))
                           (_%method-specializer-table-update!95429%_
                            _%default95430%_))
                          ((lambda ()
                             (let ((__tmp100039
                                    (let ((__tmp100040
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab95427%_))))
                                      (declare (not safe))
                                      (##fx- __tmp100040 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab95427%_ __tmp100039))
                             (let ((__tmp100041
                                    (let ((__tmp100042
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95427%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100042 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95427%_
                                __tmp100041))))))
                    (if (eq? _%k95459%_ (macro-deleted-obj))
                        (_%loop95449%_
                         (let ((_%next-probe95466%_
                                (fx+ _%start95445%_
                                     _%i95454%_
                                     (fx* _%i95454%_ _%i95454%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95466%_ _%size95439%_))
                         (let () (declare (not safe)) (##fx+ _%i95454%_ '1))
                         (let ((_%$e95469%_ _%deleted95456%_))
                           (if _%$e95469%_ _%$e95469%_ _%probe95452%_)))
                        (if (eq? _%key95428%_ _%k95459%_)
                            (let ()
                              (vector-set!
                               _%table95433%_
                               _%probe95452%_
                               _%key95428%_)
                              (vector-set!
                               _%table95433%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95452%_ '1))
                               (_%method-specializer-table-update!95429%_
                                (vector-ref
                                 _%table95433%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe95452%_ '1))))))
                            (_%loop95449%_
                             (let ((_%next-probe95474%_
                                    (fx+ _%start95445%_
                                         _%i95454%_
                                         (fx* _%i95454%_ _%i95454%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95474%_ _%size95439%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95454%_ '1))
                             _%deleted95456%_))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab95382%_ _%key95384%_)
        (let ((_%table95387%_
               (let () (declare (not safe)) (&raw-table-table _%tab95382%_)))
              (_%seed95389%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95382%_))))
          (let* ((_%h95392%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key95384%_))
                         _%seed95389%_))
                 (_%size95395%_ (vector-length _%table95387%_))
                 (_%entries95398%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95395%_ '2)))
                 (_%start95401%_
                  (let ((__tmp100043
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95392%_ _%entries95398%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100043 '1))))
            (let _%loop95405%_ ((_%probe95408%_ _%start95401%_)
                                (_%i95410%_ '1))
              (let ((_%k95413%_ (vector-ref _%table95387%_ _%probe95408%_)))
                (if (eq? _%k95413%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k95413%_ (macro-deleted-obj))
                        (_%loop95405%_
                         (let ((_%next-probe95418%_
                                (fx+ _%start95401%_
                                     _%i95410%_
                                     (fx* _%i95410%_ _%i95410%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95418%_ _%size95395%_))
                         (let () (declare (not safe)) (##fx+ _%i95410%_ '1)))
                        (if (eq? _%key95384%_ _%k95413%_)
                            (let ()
                              (vector-set!
                               _%table95387%_
                               _%probe95408%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table95387%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95408%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp100044
                                        (let ((__tmp100045
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab95382%_))))
                                          (declare (not safe))
                                          (##fx- __tmp100045 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab95382%_
                                    __tmp100044)))))
                            (_%loop95405%_
                             (let ((_%next-probe95424%_
                                    (fx+ _%start95401%_
                                         _%i95410%_
                                         (fx* _%i95410%_ _%i95410%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95424%_ _%size95395%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95410%_ '1))))))))))))
    (define __method-specializers (make-method-specializer-table__% '#f '0))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc95373%_ _%specializer95374%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again95378%_ ()
            (if (let ((__tmp100046
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp100046 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again95378%_)))))
        (method-specializer-table-set!
         __method-specializers
         _%method-proc95373%_
         _%specializer95374%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc95363%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again95367%_ ()
            (if (let ((__tmp100047
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp100047 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again95367%_)))))
        (let ((_%specializer95371%_
               (method-specializer-table-ref
                __method-specializers
                _%proc95363%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer95371%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass95361%_)
        (let ((__tmp100048
               (let () (declare (not safe)) (##type-id _%klass95361%_))))
          (declare (not safe))
          (symbolic-hash __tmp100048))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint95342%_ _%seed95344%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint95342%_
           __class-specializer-hash-key
           eq?
           _%seed95344%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint95350%_ '#f) (_%seed95352%_ '0))
          (make-class-specializer-table__% _%size-hint95350%_ _%seed95352%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint95354%_)
        (let ((_%seed95356%_ '0))
          (make-class-specializer-table__% _%size-hint95354%_ _%seed95356%_))))
    (define make-class-specializer-table
      (lambda _g100050_
        (let ((_g100049_ (let () (declare (not safe)) (##length _g100050_))))
          (cond ((let () (declare (not safe)) (##fx= _g100049_ 0))
                 (apply make-class-specializer-table__0 _g100050_))
                ((let () (declare (not safe)) (##fx= _g100049_ 1))
                 (apply make-class-specializer-table__1 _g100050_))
                ((let () (declare (not safe)) (##fx= _g100049_ 2))
                 (apply make-class-specializer-table__% _g100050_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g100050_))))))
    (define class-specializer-table-ref
      (lambda (_%tab95295%_ _%key95296%_ _%default95297%_)
        (let ((_%table95299%_
               (let () (declare (not safe)) (&raw-table-table _%tab95295%_)))
              (_%seed95300%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95295%_))))
          (let* ((_%h95302%_
                  (fxxor (__class-specializer-hash-key _%key95296%_)
                         _%seed95300%_))
                 (_%size95305%_ (vector-length _%table95299%_))
                 (_%entries95308%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95305%_ '2)))
                 (_%start95311%_
                  (let ((__tmp100051
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95302%_ _%entries95308%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100051 '1))))
            (let _%loop95315%_ ((_%probe95318%_ _%start95311%_)
                                (_%i95320%_ '1)
                                (_%deleted95322%_ '#f))
              (let ((_%k95325%_ (vector-ref _%table95299%_ _%probe95318%_)))
                (if (eq? _%k95325%_ (macro-unused-obj))
                    _%default95297%_
                    (if (eq? _%k95325%_ (macro-deleted-obj))
                        (_%loop95315%_
                         (let ((_%next-probe95330%_
                                (fx+ _%start95311%_
                                     _%i95320%_
                                     (fx* _%i95320%_ _%i95320%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95330%_ _%size95305%_))
                         (let () (declare (not safe)) (##fx+ _%i95320%_ '1))
                         (let ((_%$e95333%_ _%deleted95322%_))
                           (if _%$e95333%_ _%$e95333%_ _%probe95318%_)))
                        (if (eq? _%key95296%_ _%k95325%_)
                            (vector-ref
                             _%table95299%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe95318%_ '1)))
                            (_%loop95315%_
                             (let ((_%next-probe95338%_
                                    (fx+ _%start95311%_
                                         _%i95320%_
                                         (fx* _%i95320%_ _%i95320%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95338%_ _%size95305%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95320%_ '1))
                             _%deleted95322%_))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab95291%_ _%key95292%_ _%value95293%_)
        (if (let ((__tmp100054
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab95291%_)))
                  (__tmp100052
                   (let ((__tmp100053
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab95291%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp100053 '4))))
              (declare (not safe))
              (##fx< __tmp100054 __tmp100052))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab95291%_))
            '#!void)
        (__class-specializer-table-set!
         _%tab95291%_
         _%key95292%_
         _%value95293%_)))
    (define __class-specializer-table-set!
      (lambda (_%tab95242%_ _%key95243%_ _%value95244%_)
        (let ((_%table95247%_
               (let () (declare (not safe)) (&raw-table-table _%tab95242%_)))
              (_%seed95248%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95242%_))))
          (let* ((_%h95250%_
                  (fxxor (__class-specializer-hash-key _%key95243%_)
                         _%seed95248%_))
                 (_%size95253%_ (vector-length _%table95247%_))
                 (_%entries95256%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95253%_ '2)))
                 (_%start95259%_
                  (let ((__tmp100055
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95250%_ _%entries95256%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100055 '1))))
            (let _%loop95263%_ ((_%probe95266%_ _%start95259%_)
                                (_%i95268%_ '1)
                                (_%deleted95270%_ '#f))
              (let ((_%k95273%_ (vector-ref _%table95247%_ _%probe95266%_)))
                (if (eq? _%k95273%_ (macro-unused-obj))
                    (if _%deleted95270%_
                        (begin
                          (vector-set!
                           _%table95247%_
                           _%deleted95270%_
                           _%key95243%_)
                          (vector-set!
                           _%table95247%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted95270%_ '1))
                           _%value95244%_)
                          ((lambda ()
                             (let ((__tmp100056
                                    (let ((__tmp100057
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95242%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100057 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95242%_
                                __tmp100056)))))
                        (begin
                          (vector-set!
                           _%table95247%_
                           _%probe95266%_
                           _%key95243%_)
                          (vector-set!
                           _%table95247%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe95266%_ '1))
                           _%value95244%_)
                          ((lambda ()
                             (let ((__tmp100058
                                    (let ((__tmp100059
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab95242%_))))
                                      (declare (not safe))
                                      (##fx- __tmp100059 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab95242%_ __tmp100058))
                             (let ((__tmp100060
                                    (let ((__tmp100061
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95242%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100061 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95242%_
                                __tmp100060))))))
                    (if (eq? _%k95273%_ (macro-deleted-obj))
                        (_%loop95263%_
                         (let ((_%next-probe95280%_
                                (fx+ _%start95259%_
                                     _%i95268%_
                                     (fx* _%i95268%_ _%i95268%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95280%_ _%size95253%_))
                         (let () (declare (not safe)) (##fx+ _%i95268%_ '1))
                         (let ((_%$e95283%_ _%deleted95270%_))
                           (if _%$e95283%_ _%$e95283%_ _%probe95266%_)))
                        (if (eq? _%key95243%_ _%k95273%_)
                            (let ()
                              (vector-set!
                               _%table95247%_
                               _%probe95266%_
                               _%key95243%_)
                              (vector-set!
                               _%table95247%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95266%_ '1))
                               _%value95244%_))
                            (_%loop95263%_
                             (let ((_%next-probe95288%_
                                    (fx+ _%start95259%_
                                         _%i95268%_
                                         (fx* _%i95268%_ _%i95268%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95288%_ _%size95253%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95268%_ '1))
                             _%deleted95270%_))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab95237%_
               _%key95238%_
               _%class-specializer-table-update!95239%_
               _%default95240%_)
        (if (let ((__tmp100064
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab95237%_)))
                  (__tmp100062
                   (let ((__tmp100063
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab95237%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp100063 '4))))
              (declare (not safe))
              (##fx< __tmp100064 __tmp100062))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab95237%_))
            '#!void)
        (__class-specializer-table-update!
         _%tab95237%_
         _%key95238%_
         _%class-specializer-table-update!95239%_
         _%default95240%_)))
    (define __class-specializer-table-update!
      (lambda (_%tab95187%_
               _%key95188%_
               _%class-specializer-table-update!95189%_
               _%default95190%_)
        (let ((_%table95193%_
               (let () (declare (not safe)) (&raw-table-table _%tab95187%_)))
              (_%seed95194%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95187%_))))
          (let* ((_%h95196%_
                  (fxxor (__class-specializer-hash-key _%key95188%_)
                         _%seed95194%_))
                 (_%size95199%_ (vector-length _%table95193%_))
                 (_%entries95202%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95199%_ '2)))
                 (_%start95205%_
                  (let ((__tmp100065
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95196%_ _%entries95202%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100065 '1))))
            (let _%loop95209%_ ((_%probe95212%_ _%start95205%_)
                                (_%i95214%_ '1)
                                (_%deleted95216%_ '#f))
              (let ((_%k95219%_ (vector-ref _%table95193%_ _%probe95212%_)))
                (if (eq? _%k95219%_ (macro-unused-obj))
                    (if _%deleted95216%_
                        (begin
                          (vector-set!
                           _%table95193%_
                           _%deleted95216%_
                           _%key95188%_)
                          (vector-set!
                           _%table95193%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted95216%_ '1))
                           (_%class-specializer-table-update!95189%_
                            _%default95190%_))
                          ((lambda ()
                             (let ((__tmp100066
                                    (let ((__tmp100067
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95187%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100067 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95187%_
                                __tmp100066)))))
                        (begin
                          (vector-set!
                           _%table95193%_
                           _%probe95212%_
                           _%key95188%_)
                          (vector-set!
                           _%table95193%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe95212%_ '1))
                           (_%class-specializer-table-update!95189%_
                            _%default95190%_))
                          ((lambda ()
                             (let ((__tmp100068
                                    (let ((__tmp100069
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab95187%_))))
                                      (declare (not safe))
                                      (##fx- __tmp100069 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab95187%_ __tmp100068))
                             (let ((__tmp100070
                                    (let ((__tmp100071
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95187%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp100071 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95187%_
                                __tmp100070))))))
                    (if (eq? _%k95219%_ (macro-deleted-obj))
                        (_%loop95209%_
                         (let ((_%next-probe95226%_
                                (fx+ _%start95205%_
                                     _%i95214%_
                                     (fx* _%i95214%_ _%i95214%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95226%_ _%size95199%_))
                         (let () (declare (not safe)) (##fx+ _%i95214%_ '1))
                         (let ((_%$e95229%_ _%deleted95216%_))
                           (if _%$e95229%_ _%$e95229%_ _%probe95212%_)))
                        (if (eq? _%key95188%_ _%k95219%_)
                            (let ()
                              (vector-set!
                               _%table95193%_
                               _%probe95212%_
                               _%key95188%_)
                              (vector-set!
                               _%table95193%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95212%_ '1))
                               (_%class-specializer-table-update!95189%_
                                (vector-ref
                                 _%table95193%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe95212%_ '1))))))
                            (_%loop95209%_
                             (let ((_%next-probe95234%_
                                    (fx+ _%start95205%_
                                         _%i95214%_
                                         (fx* _%i95214%_ _%i95214%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95234%_ _%size95199%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95214%_ '1))
                             _%deleted95216%_))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab95142%_ _%key95144%_)
        (let ((_%table95147%_
               (let () (declare (not safe)) (&raw-table-table _%tab95142%_)))
              (_%seed95149%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95142%_))))
          (let* ((_%h95152%_
                  (fxxor (__class-specializer-hash-key _%key95144%_)
                         _%seed95149%_))
                 (_%size95155%_ (vector-length _%table95147%_))
                 (_%entries95158%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95155%_ '2)))
                 (_%start95161%_
                  (let ((__tmp100072
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95152%_ _%entries95158%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp100072 '1))))
            (let _%loop95165%_ ((_%probe95168%_ _%start95161%_)
                                (_%i95170%_ '1))
              (let ((_%k95173%_ (vector-ref _%table95147%_ _%probe95168%_)))
                (if (eq? _%k95173%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k95173%_ (macro-deleted-obj))
                        (_%loop95165%_
                         (let ((_%next-probe95178%_
                                (fx+ _%start95161%_
                                     _%i95170%_
                                     (fx* _%i95170%_ _%i95170%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95178%_ _%size95155%_))
                         (let () (declare (not safe)) (##fx+ _%i95170%_ '1)))
                        (if (eq? _%key95144%_ _%k95173%_)
                            (let ()
                              (vector-set!
                               _%table95147%_
                               _%probe95168%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table95147%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95168%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp100073
                                        (let ((__tmp100074
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab95142%_))))
                                          (declare (not safe))
                                          (##fx- __tmp100074 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab95142%_
                                    __tmp100073)))))
                            (_%loop95165%_
                             (let ((_%next-probe95184%_
                                    (fx+ _%start95161%_
                                         _%i95170%_
                                         (fx* _%i95170%_ _%i95170%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95184%_ _%size95155%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95170%_ '1))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers (make-class-specializer-table__% '#f '0))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass95128%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95128%_ 'class))
            (let ((_%klass95132%_ _%klass95128%_))
              (__specialize-class _%klass95132%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1020.25-1020.30"
               'contract:
               'class-type?
               'value:
               _%klass95128%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass95110%_)
        (let* ((_%klass95113%_ _%klass95110%_)
               (_%$e95122%_ (__lookup-class-specializer _%klass95113%_)))
          (if _%$e95122%_
              _%$e95122%_
              (let ((_%method-table95126%_
                     (___specialize-class _%klass95113%_)))
                (__bind-class-specializer!
                 _%klass95113%_
                 _%method-table95126%_)
                _%method-table95126%_)))))
    (define __lookup-class-specializer
      (lambda (_%klass95100%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again95104%_ ()
            (if (let ((__tmp100075
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp100075 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again95104%_)))))
        (let ((_%method-table95108%_
               (class-specializer-table-ref
                __class-specializers
                _%klass95100%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table95108%_)))
    (define __bind-class-specializer!
      (lambda (_%klass95091%_ _%method-table95092%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again95096%_ ()
            (if (let ((__tmp100076
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp100076 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again95096%_)))))
        (class-specializer-table-set!
         __class-specializers
         _%klass95091%_
         _%method-table95092%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass95075%_
               _%method-table95076%_
               _%method95077%_
               _%proc95078%_)
        (let ((_%$e95080%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table95076%_
                  _%method95077%_
                  '#f))))
          (if _%$e95080%_
              _%$e95080%_
              (let ((_%$e95083%_ (__lookup-method-specializer _%proc95078%_)))
                (if _%$e95083%_
                    ((lambda (_%specialize95086%_)
                       (let ((_%specialized-proc95088%_
                              (_%specialize95086%_
                               _%klass95075%_
                               _%method-table95076%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table95076%_
                          _%method95077%_
                          _%specialized-proc95088%_)))
                     _%$e95083%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table95076%_
                       _%method95077%_
                       _%proc95078%_))))))))
    (define ___specialize-class
      (lambda (_%klass95017%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95017%_ 'class))
            (if (__class-type-metaclass? _%klass95017%_)
                (let ((__method99922
                       (__method-ref _%klass95017%_ 'specialize-class)))
                  (if __method99922
                      (let ()
                        (declare (not safe))
                        (__method99922 _%klass95017%_))
                      (begin
                        (error '"Missing method"
                               _%klass95017%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp100077
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass95017%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp100077))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass95017%_)
                    (let ((_%method-table95023%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop95025%_ ((_%rest95027%_
                                           (__class-precedence-list
                                            _%klass95017%_)))
                        (let* ((_%rest9502895036%_ _%rest95027%_)
                               (_%else9503095044%_
                                (lambda () _%method-table95023%_))
                               (_%K9503295063%_
                                (lambda (_%rest95047%_ _%xklass95048%_)
                                  (let ((_%xmethod-table9504995051%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass95048%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table9504995051%_
                                        (let* ((_%xmethod-table95054%_
                                                _%xmethod-table9504995051%_)
                                               (__tmp100078
                                                (lambda (_%g9505595058%_
                                                         _%g9505695060%_)
                                                  (__specialize-method
                                                   _%klass95017%_
                                                   _%method-table95023%_
                                                   _%g9505595058%_
                                                   _%g9505695060%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table95054%_
                                           __tmp100078))
                                        '#f))
                                  (_%loop95025%_ _%rest95047%_))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9502895036%_))
                              (let ((_%hd9503395066%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9502895036%_)))
                                    (_%tl9503495068%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9502895036%_))))
                                (let* ((_%xklass95071%_ _%hd9503395066%_)
                                       (_%rest95073%_ _%tl9503495068%_))
                                  (_%K9503295063%_
                                   _%rest95073%_
                                   _%xklass95071%_)))
                              (_%else9503095044%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass95017%_))
                (__specialize-class (__shadow-class _%klass95017%_))
                (error '"bad class; cannot specialize" _%klass95017%_)))))
    (define seal-class!
      (lambda (_%klass95003%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95003%_ 'class))
            (let ((_%klass95007%_ _%klass95003%_))
              (__seal-class! _%klass95007%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1077.20-1077.25"
               'contract:
               'class-type?
               'value:
               _%klass95003%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass94986%_)
        (let ((_%klass94989%_ _%klass94986%_))
          (if (__class-type-sealed? _%klass94989%_)
              '#!void
              (begin
                (if (__class-type-final? _%klass94989%_)
                    '#!void
                    (error '"cannot seal non-final class" _%klass94989%_))
                (if (__class-type-metaclass? _%klass94989%_)
                    (let ((__method99923
                           (__method-ref _%klass94989%_ 'seal-class!)))
                      (if __method99923
                          (let ()
                            (declare (not safe))
                            (__method99923 _%klass94989%_))
                          (begin
                            (error '"Missing method"
                                   _%klass94989%_
                                   'seal-class!)
                            '#!void)))
                    (if (let ((__tmp100079
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass94989%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp100079))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass94989%_)
                        (let ((_%method-table95001%_
                               (__specialize-class _%klass94989%_)))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass94989%_
                           _%method-table95001%_
                           '11
                           '#f
                           '#f))))
                (__class-type-seal! _%klass94989%_))))))
    (define next-method
      (lambda (_%subklass94960%_ _%obj94961%_ _%id94962%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass94960%_ 'class))
            (let ((_%subklass94966%_ _%subklass94960%_))
              (if (symbol? _%id94962%_)
                  (let ((_%id94976%_ _%id94962%_))
                    (__next-method _%subklass94966%_ _%obj94961%_ _%id94976%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1101.44-1101.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id94962%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1101.20-1101.28"
               'contract:
               'class-type?
               'value:
               _%subklass94960%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass94897%_ _%obj94898%_ _%id94899%_)
        (let* ((_%subklass94902%_ _%subklass94897%_) (_%id94910%_ _%id94899%_))
          (letrec ((_%find-next-method94919%_
                    (lambda (_%klass94921%_)
                      (let _%lp94923%_ ((_%rest94925%_
                                         (class-precedence-list
                                          _%klass94921%_)))
                        (let* ((_%rest9492694934%_ _%rest94925%_)
                               (_%else9492894942%_ (lambda () '#f))
                               (_%K9493094948%_
                                (lambda (_%rest94945%_ _%klass94946%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass94902%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass94946%_)))
                                      (__mixin-find-method
                                       _%rest94945%_
                                       _%obj94898%_
                                       _%id94910%_)
                                      (_%lp94923%_ _%rest94945%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9492694934%_))
                              (let ((_%hd9493194951%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9492694934%_)))
                                    (_%tl9493294953%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9492694934%_))))
                                (let* ((_%klass94956%_ _%hd9493194951%_)
                                       (_%rest94958%_ _%tl9493294953%_))
                                  (_%K9493094948%_
                                   _%rest94958%_
                                   _%klass94956%_)))
                              (_%else9492894942%_)))))))
            (_%find-next-method94919%_ (class-of _%obj94898%_))))))
    (define call-next-method
      (lambda (_%subklass94870%_ _%obj94871%_ _%id94872%_ . _%args94873%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass94870%_ 'class))
            (let ((_%subklass94877%_ _%subklass94870%_))
              (if (symbol? _%id94872%_)
                  (let ((_%id94887%_ _%id94872%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass94877%_
                             _%obj94871%_
                             _%id94887%_
                             _%args94873%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1112.49-1112.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id94872%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1112.25-1112.33"
               'contract:
               'class-type?
               'value:
               _%subklass94870%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass94841%_ _%obj94842%_ _%id94843%_ . _%args94844%_)
        (let* ((_%subklass94847%_ _%subklass94841%_)
               (_%id94855%_ _%id94843%_)
               (_%$e94864%_
                (__next-method _%subklass94847%_ _%obj94842%_ _%id94855%_)))
          (if _%$e94864%_
              ((lambda (_%methodf94867%_)
                 (apply _%methodf94867%_ _%obj94842%_ _%args94844%_))
               _%$e94864%_)
              (error '"cannot find next method"
                     'object:
                     _%obj94842%_
                     'method:
                     _%id94855%_)))))
    (define write-style
      (lambda (_%we94839%_) (macro-writeenv-style _%we94839%_)))
    (define write-object
      (lambda (_%we94830%_ _%obj94831%_)
        (let ((_%$e94833%_ (__method-ref _%obj94831%_ ':wr)))
          (if _%$e94833%_
              ((lambda (_%method94836%_)
                 (_%method94836%_ _%obj94831%_ _%we94830%_))
               _%$e94833%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we94830%_ _%obj94831%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type94745%_)
        (letrec ((_%shadow-type-id94747%_
                  (lambda (_%type94828%_)
                    (let ((__tmp100080
                           (let ()
                             (declare (not safe))
                             (##type-name _%type94828%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp100080 '"::t"))))
                 (_%shadow-type-name94748%_
                  (lambda (_%type94826%_)
                    (let () (declare (not safe)) (##type-name _%type94826%_))))
                 (_%make-shadow-class94749%_
                  (lambda (_%type94818%_ _%precedence-list94819%_)
                    (let* ((_%super94821%_
                            (if (pair? _%precedence-list94819%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list94819%_))
                                      '())
                                '()))
                           (_%klass94823%_
                            (make-class-type
                             (_%shadow-type-id94747%_ _%type94818%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type94818%_))
                             _%super94821%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (if (__type-extensible? _%type94818%_)
                                             '()
                                             (cons (cons 'final: '#t) '()))))
                             '#f)))
                      (let ((__tmp100081
                             (let ()
                               (declare (not safe))
                               (##type-id _%type94818%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp100081
                         _%klass94823%_))
                      _%klass94823%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again94753%_ ()
              (if (let ((__tmp100082
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp100082 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (_%again94753%_)))))
          (let ((_%$e94757%_
                 (let ((__tmp100083
                        (let ()
                          (declare (not safe))
                          (##type-id _%type94745%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp100083 '#f))))
            (if _%$e94757%_
                ((lambda (_%klass94760%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass94760%_)
                 _%$e94757%_)
                (let _%loop94763%_ ((_%super94765%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-super _%type94745%_)))
                                    (_%hierarchy94766%_ '()))
                  (if (not _%super94765%_)
                      (let _%loop94769%_ ((_%rest94771%_ _%hierarchy94766%_)
                                          (_%precedence-list94772%_ '()))
                        (let* ((_%rest9477394781%_ _%rest94771%_)
                               (_%else9477594791%_
                                (lambda ()
                                  (let ((_%klass94789%_
                                         (_%make-shadow-class94749%_
                                          _%type94745%_
                                          _%precedence-list94772%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass94789%_)))
                               (_%K9477794805%_
                                (lambda (_%rest94794%_ _%type94795%_)
                                  (let ((_%$e94797%_
                                         (let ((__tmp100084
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type94795%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp100084
                                            '#f))))
                                    (if _%$e94797%_
                                        ((lambda (_%klass94800%_)
                                           (_%loop94769%_
                                            _%rest94794%_
                                            (cons _%klass94800%_
                                                  _%precedence-list94772%_)))
                                         _%$e94797%_)
                                        (let ((_%klass94803%_
                                               (_%make-shadow-class94749%_
                                                _%type94795%_
                                                _%precedence-list94772%_)))
                                          (_%loop94769%_
                                           _%rest94794%_
                                           (cons _%klass94803%_
                                                 _%precedence-list94772%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9477394781%_))
                              (let ((_%hd9477894808%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9477394781%_)))
                                    (_%tl9477994810%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9477394781%_))))
                                (let* ((_%type94813%_ _%hd9477894808%_)
                                       (_%rest94815%_ _%tl9477994810%_))
                                  (_%K9477794805%_
                                   _%rest94815%_
                                   _%type94813%_)))
                              (_%else9477594791%_))))
                      (_%loop94763%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super94765%_))
                       (cons _%super94765%_ _%hierarchy94766%_)))))))))
    (define class-of
      (lambda (_%obj94718%_)
        (let ()
          (declare (not interrupts-enabled))
          (let ((_%t94722%_
                 (let () (declare (not safe)) (##type _%obj94718%_))))
            (if (fx= _%t94722%_ (macro-type-subtyped))
                (let ((_%st94725%_
                       (let () (declare (not safe)) (##subtype _%obj94718%_))))
                  (if (fx= _%st94725%_ (macro-subtype-structure))
                      (let ((_%klass94728%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj94718%_))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of? _%klass94728%_ 'class))
                            _%klass94728%_
                            (__shadow-class _%klass94728%_)))
                      (if (fx= _%st94725%_ (macro-subtype-boxvalues))
                          (if (let ((__tmp100085
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _%obj94718%_))))
                                (declare (not safe))
                                (##fx= __tmp100085 '1))
                              (__system-class 'box)
                              (__system-class 'values))
                          (let ((_%$e94731%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref __subtype-id _%st94725%_))))
                            (if _%$e94731%_
                                (__system-class _%$e94731%_)
                                (error '"unknown class"
                                       'subtype:
                                       _%st94725%_
                                       'object:
                                       _%obj94718%_))))))
                (if (fx= _%t94722%_ (macro-type-mem2))
                    (__system-class 'pair)
                    (if (fx= _%t94722%_ (macro-type-fixnum))
                        (__system-class 'fixnum)
                        (if (char? _%obj94718%_)
                            (__system-class 'char)
                            (if (eq? _%obj94718%_ '())
                                (__system-class 'null)
                                (if (eq? _%obj94718%_ '#f)
                                    (__system-class 'boolean)
                                    (if (eq? _%obj94718%_ '#t)
                                        (__system-class 'boolean)
                                        (if (eq? _%obj94718%_ '#!void)
                                            (__system-class 'void)
                                            (if (eq? _%obj94718%_ '#!eof)
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
      (lambda (_%id94712%_)
        (let ((_%$e94714%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id94712%_ '#f))))
          (if _%$e94714%_
              _%$e94714%_
              (error '"unknown system class" _%id94712%_)))))
    (define __make-system-class
      (lambda (_%id94707%_ _%super94708%_)
        (let ((_%klass94710%_
               (make-class-type
                _%id94707%_
                _%id94707%_
                _%super94708%_
                '()
                '((system: . #t))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id94707%_ _%klass94710%_))
          _%klass94710%_)))))
