(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1712823025)
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
      (let ((_%flags98201%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties98202%_ '((direct-slots:) (system: . #t)))
            (_%slot-table98203%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags98201%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table98203%_
           _%properties98202%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots98177%_
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
             (_%slot-vector98179%_ (list->vector (cons '#f _%slots98177%_)))
             (_%slot-table98186%_
              (let ((_%slot-table98181%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp99644
                       (lambda (_%slot98183%_ _%field98184%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table98181%_
                            _%slot98183%_
                            _%field98184%_))
                         (let ((__tmp99645
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot98183%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table98181%_
                            __tmp99645
                            _%field98184%_))))
                      (__tmp99642
                       (let ((__tmp99643
                              (let ()
                                (declare (not safe))
                                (##length _%slots98177%_))))
                         (declare (not safe))
                         (##iota __tmp99643 '1))))
                  (declare (not safe))
                  (##for-each __tmp99644 _%slots98177%_ __tmp99642))
                _%slot-table98181%_))
             (_%flags98188%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields98194%_
              (list->vector
               (let ((__tmp99646
                      (map (lambda (_%g9818998191%_)
                             (list _%g9818998191%_ '5 '#f))
                           (drop _%slots98177%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp99646))))
             (_%properties98196%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots98177%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t98198%_
              (let ((__tmp99647 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags98188%_
                 ##type-type
                 _%fields98194%_
                 __tmp99647
                 _%slot-vector98179%_
                 _%slot-table98186%_
                 _%properties98196%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t98198%_ _%t98198%_))
        _%t98198%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags98173%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties98174%_ '((direct-slots:) (system: . #t)))
            (_%slot-table98175%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp99648 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags98173%_
           '#f
           '#()
           __tmp99648
           '#(#f)
           _%slot-table98175%_
           _%properties98174%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj98171%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj98171%_ 'class))))
    (define class-type=?
      (lambda (_%x98146%_ _%y98147%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x98146%_ 'class))
            (let ((_%x98151%_ _%x98146%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y98147%_ 'class))
                  (let ((_%y98161%_ _%y98147%_))
                    (__class-type=? _%x98151%_ _%y98161%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y98147%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x98146%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x98125%_ _%y98126%_)
        (let* ((_%x98129%_ _%x98125%_) (_%y98137%_ _%y98126%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x98129%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y98137%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type98111%_)
        (if (let () (declare (not safe)) (##type? _%type98111%_))
            (let ((_%type98115%_ _%type98111%_))
              (__type-opaque? _%type98115%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type98111%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type98099%_)
        (let* ((_%type98102%_ _%type98099%_)
               (__tmp99649
                (let ((__tmp99650
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type98102%_))))
                  (declare (not safe))
                  (##fxand __tmp99650 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp99649 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type98085%_)
        (if (let () (declare (not safe)) (##type? _%type98085%_))
            (let ((_%type98089%_ _%type98085%_))
              (__type-extensible? _%type98089%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type98085%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type98073%_)
        (let* ((_%type98076%_ _%type98073%_)
               (__tmp99651
                (let ((__tmp99652
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type98076%_))))
                  (declare (not safe))
                  (##fxand __tmp99652 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp99651 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type98059%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type98059%_ 'class))
            (let ((_%type98063%_ _%type98059%_))
              (__class-type-final? _%type98063%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type98059%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type98047%_)
        (let* ((_%type98050%_ _%type98047%_)
               (__tmp99653
                (let ((__tmp99654
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type98050%_))))
                  (declare (not safe))
                  (##fxand __tmp99654 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp99653 '0))))
    (define class-type-struct?
      (lambda (_%klass98033%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98033%_ 'class))
            (let ((_%klass98037%_ _%klass98033%_))
              (__class-type-struct? _%klass98037%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass98033%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass98021%_)
        (let* ((_%klass98024%_ _%klass98021%_)
               (__tmp99655
                (let ((__tmp99656
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass98024%_))))
                  (declare (not safe))
                  (##fxand __tmp99656 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp99655 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass98007%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98007%_ 'class))
            (let ((_%klass98011%_ _%klass98007%_))
              (__class-type-sealed? _%klass98011%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass98007%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass97995%_)
        (let* ((_%klass97998%_ _%klass97995%_)
               (__tmp99657
                (let ((__tmp99658
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass97998%_))))
                  (declare (not safe))
                  (##fxand __tmp99658 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp99657 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass97981%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97981%_ 'class))
            (let ((_%klass97985%_ _%klass97981%_))
              (__class-type-metaclass? _%klass97985%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass97981%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass97969%_)
        (let* ((_%klass97972%_ _%klass97969%_)
               (__tmp99659
                (let ((__tmp99660
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass97972%_))))
                  (declare (not safe))
                  (##fxand __tmp99660 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp99659 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass97955%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97955%_ 'class))
            (let ((_%klass97959%_ _%klass97955%_))
              (__class-type-system? _%klass97959%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass97955%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass97943%_)
        (let* ((_%klass97946%_ _%klass97943%_)
               (__tmp99661
                (let ((__tmp99662
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass97946%_))))
                  (declare (not safe))
                  (##fxand __tmp99662 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp99661 class-type-flag-system))))
    (define make-class-type-descriptor
      (lambda (_%type-id97828%_
               _%type-name97829%_
               _%type-super97830%_
               _%precedence-list97831%_
               _%slot-vector97832%_
               _%properties97833%_
               _%constructor97834%_
               _%slot-table97835%_
               _%methods97836%_)
        (letrec ((_%make-props!97839%_
                  (lambda (_%key97912%_)
                    (letrec* ((_%ht97914%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!97915%_
                               (lambda (_%ht97936%_ _%slots97937%_)
                                 (for-each
                                  (lambda (_%g9793897940%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht97936%_
                                       _%g9793897940%_
                                       '#t)))
                                  _%slots97937%_)))
                              (_%put-alist!97916%_
                               (lambda (_%ht97925%_
                                        _%key97926%_
                                        _%alist97927%_)
                                 (let ((_%$e97929%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key97926%_
                                           _%alist97927%_))))
                                   (if _%$e97929%_
                                       ((lambda (_%g9793197933%_)
                                          (_%put-slots!97915%_
                                           _%ht97925%_
                                           _%g9793197933%_))
                                        _%$e97929%_)
                                       '#!void)))))
                      (_%put-alist!97916%_
                       _%ht97914%_
                       _%key97912%_
                       _%properties97833%_)
                      (for-each
                       (lambda (_%mixin97918%_)
                         (let ((_%alist97920%_
                                (##structure-ref
                                 _%mixin97918%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist97920%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key97912%_
                                           _%alist97920%_))))
                               (_%put-slots!97915%_
                                _%ht97914%_
                                (class-type-slot-list _%mixin97918%_))
                               (_%put-alist!97916%_
                                _%ht97914%_
                                _%key97912%_
                                _%alist97920%_))))
                       _%precedence-list97831%_)
                      _%ht97914%_))))
          (let* ((_%transparent?97841%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties97833%_)))
                 (_%all-slots-printable?97846%_
                  (let ((_%$e97843%_ _%transparent?97841%_))
                    (if _%$e97843%_
                        _%$e97843%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties97833%_))))))
                 (_%printable97848%_
                  (if (not _%all-slots-printable?97846%_)
                      (_%make-props!97839%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?97853%_
                  (let ((_%$e97850%_ _%transparent?97841%_))
                    (if _%$e97850%_
                        _%$e97850%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties97833%_))))))
                 (_%equalable97855%_
                  (if (not _%all-slots-equalable?97853%_)
                      (_%make-props!97839%_ 'equal:)
                      '#f))
                 (_%first-new-field97857%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super97830%_ 'class))
                      (let ((__tmp99663
                             (##structure-ref
                              _%type-super97830%_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp99663))
                      '1))
                 (_%field-info-length97859%_
                  (let ((__tmp99664
                         (let ((__tmp99665
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector97832%_))))
                           (declare (not safe))
                           (##fx- __tmp99665 _%first-new-field97857%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp99664)))
                 (_%field-info97861%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length97859%_ '#f)))
                 (_%struct?97863%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties97833%_)))
                 (_%final?97865%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties97833%_)))
                 (_%metaclass97873%_
                  (let ((_%metaclass9786697868%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties97833%_))))
                    (if _%metaclass9786697868%_
                        (let ((_%metaclass97871%_ _%metaclass9786697868%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass97871%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id97828%_
                                     'metaclass:
                                     _%metaclass97871%_))
                          _%metaclass97871%_)
                        '#f)))
                 (_%system?97875%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties97833%_)))
                 (_%opaque?97880%_
                  (let ((_%$e97877%_ (not _%all-slots-equalable?97853%_)))
                    (if _%$e97877%_
                        _%$e97877%_
                        (if _%type-super97830%_
                            (__type-opaque? _%type-super97830%_)
                            '#f))))
                 (_%type-flags97882%_
                  (let ((__tmp99670
                         (if _%final?97865%_ '0 type-flag-extensible))
                        (__tmp99669 (if _%opaque?97880%_ type-flag-opaque '0))
                        (__tmp99668
                         (if _%struct?97863%_ class-type-flag-struct '0))
                        (__tmp99667
                         (if _%metaclass97873%_ class-type-flag-metaclass '0))
                        (__tmp99666
                         (if _%system?97875%_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp99670
                             __tmp99669
                             __tmp99668
                             __tmp99667
                             __tmp99666)))
                 (_%precedence-list97890%_
                  (let ((_%$e97884%_ (memq t::t _%precedence-list97831%_)))
                    (if _%$e97884%_
                        ((lambda (_%tail97887%_)
                           (if (null? (cdr _%tail97887%_))
                               _%precedence-list97831%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list97831%_)))
                         _%$e97884%_)
                        (let ((__tmp99671 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list97831%_ __tmp99671))))))
            (let _%loop97893%_ ((_%i97895%_ _%first-new-field97857%_)
                                (_%j97896%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j97896%_ _%field-info-length97859%_))
                  (let* ((_%slot97898%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector97832%_ _%i97895%_)))
                         (_%flags97906%_
                          (if _%transparent?97841%_
                              '0
                              (let ((__tmp99673
                                     (if (or _%all-slots-printable?97846%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable97848%_
                                                _%slot97898%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp99672
                                     (if (or _%all-slots-equalable?97853%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable97855%_
                                                _%slot97898%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp99673 __tmp99672)))))
                    (vector-set! _%field-info97861%_ _%j97896%_ _%slot97898%_)
                    (vector-set!
                     _%field-info97861%_
                     (let () (declare (not safe)) (##fx+ _%j97896%_ '1))
                     _%flags97906%_)
                    (_%loop97893%_
                     (let () (declare (not safe)) (##fx+ _%i97895%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j97896%_ '3))))
                  '#!void))
            (if _%metaclass97873%_
                (let ((_%val97909%_
                       (make-instance
                        _%metaclass97873%_
                        _%type-id97828%_
                        _%type-name97829%_
                        _%type-flags97882%_
                        _%type-super97830%_
                        _%field-info97861%_
                        _%precedence-list97890%_
                        _%slot-vector97832%_
                        _%slot-table97835%_
                        _%properties97833%_
                        _%constructor97834%_
                        _%methods97836%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val97909%_ 'class))
                      _%val97909%_
                      (error '"bad cast" class::t _%val97909%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id97828%_
                   _%type-name97829%_
                   _%type-flags97882%_
                   _%type-super97830%_
                   _%field-info97861%_
                   _%precedence-list97890%_
                   _%slot-vector97832%_
                   _%slot-table97835%_
                   _%properties97833%_
                   _%constructor97834%_
                   _%methods97836%_)))))))
    (define class-type-id
      (lambda (_%klass97826%_)
        (##structure-ref _%klass97826%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass97824%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97824%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass97821%_ _%val97822%_)
        (##structure-set! _%klass97821%_ _%val97822%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass97816%_ _%val97818%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97816%_
           _%val97818%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass97814%_)
        (##structure-ref _%klass97814%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass97812%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97812%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass97809%_ _%val97810%_)
        (##structure-set! _%klass97809%_ _%val97810%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass97804%_ _%val97806%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97804%_
           _%val97806%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass97802%_)
        (##structure-ref _%klass97802%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass97800%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97800%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass97797%_ _%val97798%_)
        (##structure-set! _%klass97797%_ _%val97798%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass97792%_ _%val97794%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97792%_
           _%val97794%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass97790%_)
        (##structure-ref _%klass97790%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass97788%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97788%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass97785%_ _%val97786%_)
        (##structure-set! _%klass97785%_ _%val97786%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass97780%_ _%val97782%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97780%_
           _%val97782%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass97778%_)
        (##structure-ref _%klass97778%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass97776%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97776%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass97773%_ _%val97774%_)
        (##structure-set! _%klass97773%_ _%val97774%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass97768%_ _%val97770%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97768%_
           _%val97770%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass97766%_)
        (##structure-ref _%klass97766%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass97764%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass97764%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass97761%_ _%val97762%_)
        (##structure-set!
         _%klass97761%_
         _%val97762%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass97756%_ _%val97758%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97756%_
           _%val97758%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass97754%_)
        (##structure-ref _%klass97754%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass97752%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass97752%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass97749%_ _%val97750%_)
        (##structure-set!
         _%klass97749%_
         _%val97750%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass97744%_ _%val97746%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97744%_
           _%val97746%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass97742%_)
        (##structure-ref _%klass97742%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass97740%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97740%_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass97737%_ _%val97738%_)
        (##structure-set!
         _%klass97737%_
         _%val97738%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass97732%_ _%val97734%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97732%_
           _%val97734%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass97730%_)
        (##structure-ref _%klass97730%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass97728%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97728%_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_%klass97725%_ _%val97726%_)
        (##structure-set!
         _%klass97725%_
         _%val97726%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass97720%_ _%val97722%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97720%_
           _%val97722%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass97718%_)
        (##structure-ref _%klass97718%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass97716%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass97716%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass97713%_ _%val97714%_)
        (##structure-set!
         _%klass97713%_
         _%val97714%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass97708%_ _%val97710%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97708%_
           _%val97710%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass97706%_)
        (##structure-ref _%klass97706%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass97704%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97704%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass97701%_ _%val97702%_)
        (##structure-set! _%klass97701%_ _%val97702%_ '11 class::t 'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass97696%_ _%val97698%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97696%_
           _%val97698%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass97682%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97682%_ 'class))
            (let ((_%klass97686%_ _%klass97682%_))
              (__class-type-slot-list _%klass97686%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass97682%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass97670%_)
        (let ((_%klass97673%_ _%klass97670%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass97673%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass97656%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97656%_ 'class))
            (let ((_%klass97660%_ _%klass97656%_))
              (__class-type-field-count _%klass97660%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass97656%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass97644%_)
        (let* ((_%klass97647%_ _%klass97644%_)
               (__tmp99674
                (let ((__tmp99675
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass97647%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp99675))))
          (declare (not safe))
          (##fx- __tmp99674 '1))))
    (define class-type-seal!
      (lambda (_%klass97630%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97630%_ 'class))
            (let ((_%klass97634%_ _%klass97630%_))
              (__class-type-seal! _%klass97634%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass97630%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass97618%_)
        (let ((_%klass97621%_ _%klass97618%_))
          (let ((__tmp99676
                 (let ((__tmp99677
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass97621%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp99677))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass97621%_
             __tmp99676
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct97593%_ _%maybe-super-struct97594%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct97593%_ 'class))
            (let ((_%maybe-sub-struct97598%_ _%maybe-sub-struct97593%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct97594%_
                     'class))
                  (let ((_%maybe-super-struct97608%_
                         _%maybe-super-struct97594%_))
                    (__substruct?
                     _%maybe-sub-struct97598%_
                     _%maybe-super-struct97608%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct97594%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct97593%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct97562%_ _%maybe-super-struct97563%_)
        (let* ((_%maybe-sub-struct97566%_ _%maybe-sub-struct97562%_)
               (_%maybe-super-struct97574%_ _%maybe-super-struct97563%_)
               (_%maybe-super-struct-id97583%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct97574%_))))
          (let _%lp97585%_ ((_%super-struct97587%_ _%maybe-sub-struct97566%_))
            (if (not _%super-struct97587%_)
                '#f
                (if (eq? _%maybe-super-struct-id97583%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct97587%_)))
                    '#t
                    (_%lp97585%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct97587%_)))))))))
    (define base-struct/1
      (lambda (_%klass97557%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97557%_ 'class))
            (if (class-type-struct? _%klass97557%_)
                _%klass97557%_
                (let () (declare (not safe)) (##type-super _%klass97557%_)))
            (if (not _%klass97557%_)
                '#f
                (error '"not a class or false" _%klass97557%_)))))
    (define base-struct/2
      (lambda (_%klass197542%_ _%klass297543%_)
        (let ((_%s197545%_ (base-struct/1 _%klass197542%_))
              (_%s297546%_ (base-struct/1 _%klass297543%_)))
          (if (or (not _%s197545%_)
                  (and _%s297546%_ (substruct? _%s197545%_ _%s297546%_)))
              _%s297546%_
              (if (or (not _%s297546%_)
                      (and _%s197545%_ (substruct? _%s297546%_ _%s197545%_)))
                  _%s197545%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass197542%_
                         _%klass297543%_
                         _%s197545%_
                         _%s297546%_))))))
    (define base-struct/list
      (lambda (_%all-supers97426%_)
        (let* ((_%all-supers9742797452%_ _%all-supers97426%_)
               (_%E9743297456%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers9742797452%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K9745097539%_ (lambda () '#f))
                (_%K9744797525%_
                 (lambda (_%x97523%_) (base-struct/1 _%x97523%_)))
                (_%K9744297502%_
                 (lambda (_%y97499%_ _%x97500%_)
                   (base-struct/2 _%x97500%_ _%y97499%_)))
                (_%K9743397463%_
                 (lambda (_%y97460%_ _%x97461%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x97461%_ _%y97460%_)))))
            (let* ((_%__match9963699637%_
                    (lambda (_%hd9743497466%_ _%tl9743597468%_)
                      (let ((_%x97471%_ _%hd9743497466%_))
                        (letrec ((_%splice-rest9743797473%_
                                  (lambda (_%rest9744197480%_ _%y97482%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%rest9744197480%_))
                                        (_%K9743397463%_ _%y97482%_ _%x97471%_)
                                        (_%E9743297456%_))))
                                 (_%splice-try9743997475%_
                                  (lambda (_%hd9744097484%_
                                           _%rest9744197486%_
                                           _%y9743697487%_)
                                    (let ((_%y97490%_ _%hd9744097484%_))
                                      (_%splice-loop9743897477%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest9744197486%_))
                                       (cons _%y97490%_ _%y9743697487%_)))))
                                 (_%splice-loop9743897477%_
                                  (lambda (_%rest9744197492%_ _%y9743697493%_)
                                    (if (pair? _%rest9744197492%_)
                                        (_%splice-try9743997475%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest9744197492%_))
                                         _%rest9744197492%_
                                         _%y9743697493%_)
                                        (_%splice-rest9743797473%_
                                         _%rest9744197492%_
                                         (reverse _%y9743697493%_))))))
                          (_%splice-loop9743897477%_ _%tl9743597468%_ '())))))
                   (_%try-match9742997535%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all-supers9742797452%_))
                          (let ((_%tl9744997530%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers9742797452%_)))
                                (_%hd9744897528%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers9742797452%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl9744997530%_))
                                (let ((_%x97533%_ _%hd9744897528%_))
                                  (base-struct/1 _%x97533%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl9744997530%_))
                                    (let ((_%tl9744697514%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl9744997530%_)))
                                          (_%hd9744597512%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl9744997530%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl9744697514%_))
                                          (let ((_%x97510%_ _%hd9744897528%_)
                                                (_%y97517%_ _%hd9744597512%_))
                                            (_%K9744297502%_
                                             _%y97517%_
                                             _%x97510%_))
                                          (_%__match9963699637%_
                                           _%hd9744897528%_
                                           _%tl9744997530%_)))
                                    (_%__match9963699637%_
                                     _%hd9744897528%_
                                     _%tl9744997530%_))))
                          (_%E9743297456%_)))))
              (if (let ()
                    (declare (not safe))
                    (##null? _%all-supers9742797452%_))
                  (_%K9745097539%_)
                  (_%try-match9742997535%_)))))))
    (define base-struct
      (lambda _%all-supers97424%_ (base-struct/list _%all-supers97424%_)))
    (define find-super-constructor
      (lambda (_%super97375%_)
        (let _%lp97377%_ ((_%rest97379%_ _%super97375%_)
                          (_%constructor97380%_ '#f))
          (let* ((_%rest9738197389%_ _%rest97379%_)
                 (_%else9738397397%_ (lambda () _%constructor97380%_))
                 (_%K9738597412%_
                  (lambda (_%rest97400%_ _%hd97401%_)
                    (let ((_%$e97403%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd97401%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e97403%_
                          ((lambda (_%xconstructor97406%_)
                             (if (or (not _%constructor97380%_)
                                     (eq? _%constructor97380%_
                                          _%xconstructor97406%_))
                                 (_%lp97377%_
                                  _%rest97400%_
                                  _%xconstructor97406%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor97380%_
                                        _%xconstructor97406%_)))
                           _%$e97403%_)
                          (_%lp97377%_ _%rest97400%_ _%constructor97380%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest9738197389%_))
                (let ((_%hd9738697415%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9738197389%_)))
                      (_%tl9738797417%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9738197389%_))))
                  (let* ((_%hd97420%_ _%hd9738697415%_)
                         (_%rest97422%_ _%tl9738797417%_))
                    (_%K9738597412%_ _%rest97422%_ _%hd97420%_)))
                (_%else9738397397%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list97351%_ _%direct-slots97352%_)
        (let* ((_%next-slot97354%_ '1)
               (_%slot-table97356%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots97358%_ '(__class))
               (_%process-slot97362%_
                (lambda (_%slot97360%_)
                  (if (symbol? _%slot97360%_)
                      '#!void
                      (error '"invalid slot name" _%slot97360%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table97356%_
                              _%slot97360%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table97356%_
                           _%slot97360%_
                           _%next-slot97354%_))
                        (let ((__tmp99678
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot97360%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table97356%_
                           __tmp99678
                           _%next-slot97354%_))
                        (set! _%r-slots97358%_
                              (cons _%slot97360%_ _%r-slots97358%_))
                        (set! _%next-slot97354%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot97354%_ '1))))
                      '#!void)))
               (_%process-slots97368%_
                (lambda (_%g9736397365%_)
                  (for-each _%process-slot97362%_ _%g9736397365%_))))
          (let ((__tmp99680
                 (lambda (_%mixin97371%_)
                   (_%process-slots97368%_
                    (let ((__tmp99681
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin97371%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp99681 '())))))
                (__tmp99679 (reverse _%class-precedence-list97351%_)))
            (declare (not safe))
            (##for-each __tmp99680 __tmp99679))
          (_%process-slots97368%_ _%direct-slots97352%_)
          (let ((_%slot-vector97373%_
                 (list->vector
                  (let () (declare (not safe)) (##reverse _%r-slots97358%_)))))
            (values _%slot-vector97373%_ _%slot-table97356%_)))))
    (define make-class-type
      (lambda (_%id97276%_
               _%name97277%_
               _%direct-supers97278%_
               _%direct-slots97279%_
               _%properties97280%_
               _%constructor97281%_)
        (if (symbol? _%id97276%_)
            (let ((_%id97285%_ _%id97276%_))
              (if (symbol? _%name97277%_)
                  (let ((_%name97295%_ _%name97277%_))
                    (if (list? _%direct-supers97278%_)
                        (let ((_%direct-supers97305%_ _%direct-supers97278%_))
                          (if (list? _%direct-slots97279%_)
                              (let ((_%direct-slots97315%_
                                     _%direct-slots97279%_))
                                (if (list? _%properties97280%_)
                                    (let ((_%properties97325%_
                                           _%properties97280%_))
                                      (if ((lambda (_%$obj97334%_)
                                             (or (not _%$obj97334%_)
                                                 (symbol? _%$obj97334%_)))
                                           _%constructor97281%_)
                                          (let ((_%constructor97341%_
                                                 _%constructor97281%_))
                                            (__make-class-type
                                             _%id97285%_
                                             _%name97295%_
                                             _%direct-supers97305%_
                                             _%direct-slots97315%_
                                             _%properties97325%_
                                             _%constructor97341%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor97281%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties97280%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots97279%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers97278%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name97277%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id97276%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id97145%_
               _%name97146%_
               _%direct-supers97147%_
               _%direct-slots97148%_
               _%properties97149%_
               _%constructor97150%_)
        (let* ((_%id97153%_ _%id97145%_)
               (_%name97161%_ _%name97146%_)
               (_%direct-supers97169%_ _%direct-supers97147%_)
               (_%direct-slots97177%_ _%direct-slots97148%_)
               (_%properties97185%_ _%properties97149%_)
               (_%constructor97193%_ _%constructor97150%_))
          (let ((_%$e97205%_
                 (let ((__tmp99682
                        (lambda (_%$obj97202%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj97202%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp99682 _%direct-supers97169%_))))
            (if _%$e97205%_
                ((lambda (_%g9720797209%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g9720797209%_))
                 _%$e97205%_)
                (let ((_%$e97212%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final? _%direct-supers97169%_))))
                  (if _%$e97212%_
                      ((lambda (_%g9721497216%_)
                         (error '"Cannot extend final class" _%g9721497216%_))
                       _%$e97212%_)
                      '#!void))))
          (let ((_g99683_ (compute-precedence-list _%direct-supers97169%_)))
            (begin
              (let ((_g99684_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g99683_)
                           (##vector-length _g99683_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g99684_ 2)))
                    (error "Context expects 2 values" _g99684_)))
              (let ((_%precedence-list97219%_
                     (let () (declare (not safe)) (##vector-ref _g99683_ 0)))
                    (_%struct-super97220%_
                     (let () (declare (not safe)) (##vector-ref _g99683_ 1))))
                (let ((_g99685_
                       (compute-class-slots
                        _%precedence-list97219%_
                        _%direct-slots97177%_)))
                  (begin
                    (let ((_g99686_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g99685_)
                                 (##vector-length _g99685_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g99686_ 2)))
                          (error "Context expects 2 values" _g99686_)))
                    (let ((_%slot-vector97222%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g99685_ 0)))
                          (_%slot-table97223%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g99685_ 1))))
                      (let* ((_%properties97225%_
                              (cons (cons 'direct-slots: _%direct-slots97177%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers97169%_)
                                          _%properties97185%_)))
                             (_%constructor*97230%_
                              (let ((_%$e97227%_ _%constructor97193%_))
                                (if _%$e97227%_
                                    _%$e97227%_
                                    (find-super-constructor
                                     _%direct-supers97169%_))))
                             (_%precedence-list97273%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties97225%_))
                                      (memq object::t
                                            _%precedence-list97219%_))
                                  _%precedence-list97219%_
                                  (let _%loop97235%_ ((_%tail97237%_
                                                       _%precedence-list97219%_)
                                                      (_%head97238%_ '()))
                                    (let* ((_%tail9723997247%_ _%tail97237%_)
                                           (_%else9724197255%_
                                            (lambda ()
                                              (let ((__tmp99687
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp99687
                                                 _%head97238%_))))
                                           (_%K9724397261%_
                                            (lambda (_%rest97258%_ _%hd97259%_)
                                              (if (eq? _%hd97259%_ t::t)
                                                  (let ((__tmp99688
                                                         (cons object::t
                                                               _%tail97237%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp99688
                                                     _%head97238%_))
                                                  (_%loop97235%_
                                                   _%rest97258%_
                                                   (cons _%hd97259%_
                                                         _%head97238%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tail9723997247%_))
                                          (let ((_%hd9724497264%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail9723997247%_)))
                                                (_%tl9724597266%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail9723997247%_))))
                                            (let* ((_%hd97269%_
                                                    _%hd9724497264%_)
                                                   (_%rest97271%_
                                                    _%tl9724597266%_))
                                              (_%K9724397261%_
                                               _%rest97271%_
                                               _%hd97269%_)))
                                          (_%else9724197255%_)))))))
                        (make-class-type-descriptor
                         _%id97153%_
                         _%name97161%_
                         _%struct-super97220%_
                         _%precedence-list97273%_
                         _%slot-vector97222%_
                         _%properties97225%_
                         _%constructor*97230%_
                         _%slot-table97223%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass97131%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97131%_ 'class))
            (let ((_%klass97135%_ _%klass97131%_))
              (__class-precedence-list _%klass97135%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass97131%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass97119%_)
        (let ((_%klass97122%_ _%klass97119%_))
          (cons _%klass97122%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass97122%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers97116%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers97116%_))))
    (define make-class-predicate
      (lambda (_%klass97102%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97102%_ 'class))
            (let ((_%klass97106%_ _%klass97102%_))
              (__make-class-predicate _%klass97106%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass97102%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass97073%_)
        (let* ((_%klass97076%_ _%klass97073%_)
               (_%tid97085%_
                (let () (declare (not safe)) (##type-id _%klass97076%_))))
          (if (__class-type-final? _%klass97076%_)
              (lambda (_%g9708797089%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g9708797089%_
                   _%tid97085%_)))
              (if (__class-type-struct? _%klass97076%_)
                  (lambda (_%g9709297094%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%g9709297094%_ _%tid97085%_)))
                  (lambda (_%g9709797099%_)
                    (__class-instance? _%klass97076%_ _%g9709797099%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass97048%_ _%slot97049%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97048%_ 'class))
            (let ((_%klass97053%_ _%klass97048%_))
              (if (symbol? _%slot97049%_)
                  (let ((_%slot97063%_ _%slot97049%_))
                    (__make-class-slot-accessor _%klass97053%_ _%slot97063%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot97049%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass97048%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass97016%_ _%slot97017%_)
        (let* ((_%klass97020%_ _%klass97016%_)
               (_%slot97028%_ _%slot97017%_)
               (_%field97037%_
                (let ((__tmp99689
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass97020%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp99689 _%slot97028%_ '#f))))
          (if (not _%field97037%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass97020%_
                       'slot:
                       _%slot97028%_)
                '#!void)
              (if (__class-type-final? _%klass97020%_)
                  (make-final-slot-accessor
                   _%klass97020%_
                   _%slot97028%_
                   _%field97037%_)
                  (if (__class-type-struct? _%klass97020%_)
                      (make-struct-slot-accessor
                       _%klass97020%_
                       _%slot97028%_
                       _%field97037%_)
                      (if (let ((_%strukt97043%_
                                 (base-struct/1 _%klass97020%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt97043%_
                                    'class))
                                 (let ((__tmp99690
                                        (let ((__tmp99691
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt97043%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp99691))))
                                   (declare (not safe))
                                   (##fx< _%field97037%_ __tmp99690))))
                          (make-struct-subclass-slot-accessor
                           _%klass97020%_
                           _%slot97028%_
                           _%field97037%_)
                          (make-class-cached-slot-accessor
                           _%klass97020%_
                           _%slot97028%_
                           _%field97037%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass96991%_ _%slot96992%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96991%_ 'class))
            (let ((_%klass96996%_ _%klass96991%_))
              (if (symbol? _%slot96992%_)
                  (let ((_%slot97006%_ _%slot96992%_))
                    (__make-class-slot-mutator _%klass96996%_ _%slot97006%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot96992%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass96991%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass96959%_ _%slot96960%_)
        (let* ((_%klass96963%_ _%klass96959%_)
               (_%slot96971%_ _%slot96960%_)
               (_%field96980%_
                (let ((__tmp99692
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass96963%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp99692 _%slot96971%_ '#f))))
          (if (not _%field96980%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass96963%_
                       'slot:
                       _%slot96971%_)
                '#!void)
              (if (__class-type-final? _%klass96963%_)
                  (make-final-slot-mutator
                   _%klass96963%_
                   _%slot96971%_
                   _%field96980%_)
                  (if (__class-type-struct? _%klass96963%_)
                      (make-struct-slot-mutator
                       _%klass96963%_
                       _%slot96971%_
                       _%field96980%_)
                      (if (let ((_%strukt96986%_
                                 (base-struct/1 _%klass96963%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt96986%_
                                    'class))
                                 (let ((__tmp99693
                                        (let ((__tmp99694
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt96986%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp99694))))
                                   (declare (not safe))
                                   (##fx< _%field96980%_ __tmp99693))))
                          (make-struct-subclass-slot-mutator
                           _%klass96963%_
                           _%slot96971%_
                           _%field96980%_)
                          (make-class-cached-slot-mutator
                           _%klass96963%_
                           _%slot96971%_
                           _%field96980%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass96934%_ _%slot96935%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96934%_ 'class))
            (let ((_%klass96939%_ _%klass96934%_))
              (if (symbol? _%slot96935%_)
                  (let ((_%slot96949%_ _%slot96935%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass96939%_
                     _%slot96949%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot96935%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass96934%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass96902%_ _%slot96903%_)
        (let* ((_%klass96906%_ _%klass96902%_)
               (_%slot96914%_ _%slot96903%_)
               (_%field96923%_
                (let ((__tmp99695
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass96906%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp99695 _%slot96914%_ '#f))))
          (if (not _%field96923%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass96906%_
                       'slot:
                       _%slot96914%_)
                '#!void)
              (if (__class-type-final? _%klass96906%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass96906%_
                   _%slot96914%_
                   _%field96923%_)
                  (if (__class-type-struct? _%klass96906%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass96906%_
                       _%slot96914%_
                       _%field96923%_)
                      (if (let ((_%strukt96929%_
                                 (base-struct/1 _%klass96906%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt96929%_
                                    'class))
                                 (let ((__tmp99696
                                        (let ((__tmp99697
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt96929%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp99697))))
                                   (declare (not safe))
                                   (##fx< _%field96923%_ __tmp99696))))
                          (make-struct-slot-unchecked-accessor
                           _%klass96906%_
                           _%slot96914%_
                           _%field96923%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass96906%_
                           _%slot96914%_
                           _%field96923%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass96877%_ _%slot96878%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96877%_ 'class))
            (let ((_%klass96882%_ _%klass96877%_))
              (if (symbol? _%slot96878%_)
                  (let ((_%slot96892%_ _%slot96878%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass96882%_
                     _%slot96892%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot96878%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass96877%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass96845%_ _%slot96846%_)
        (let* ((_%klass96849%_ _%klass96845%_)
               (_%slot96857%_ _%slot96846%_)
               (_%field96866%_
                (let ((__tmp99698
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass96849%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp99698 _%slot96857%_ '#f))))
          (if (not _%field96866%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass96849%_
                       'slot:
                       _%slot96857%_)
                '#!void)
              (if (__class-type-final? _%klass96849%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass96849%_
                   _%slot96857%_
                   _%field96866%_)
                  (if (__class-type-struct? _%klass96849%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass96849%_
                       _%slot96857%_
                       _%field96866%_)
                      (if (let ((_%strukt96872%_
                                 (base-struct/1 _%klass96849%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt96872%_
                                    'class))
                                 (let ((__tmp99699
                                        (let ((__tmp99700
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt96872%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp99700))))
                                   (declare (not safe))
                                   (##fx< _%field96866%_ __tmp99699))))
                          (make-struct-slot-unchecked-mutator
                           _%klass96849%_
                           _%slot96857%_
                           _%field96866%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass96849%_
                           _%slot96857%_
                           _%field96866%_))))))))
    (define not-an-instance__%
      (lambda (_%object96829%_ _%class96830%_ _%slot96831%_)
        (apply error
               '"not an instance"
               'object:
               _%object96829%_
               'class:
               _%class96830%_
               (if _%slot96831%_ (cons 'slot: (cons _%slot96831%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object96836%_ _%class96837%_)
        (let ((_%slot96839%_ '#f))
          (not-an-instance__% _%object96836%_ _%class96837%_ _%slot96839%_))))
    (define not-an-instance
      (lambda _g99702_
        (let ((_g99701_ (let () (declare (not safe)) (##length _g99702_))))
          (cond ((let () (declare (not safe)) (##fx= _g99701_ 2))
                 (apply not-an-instance__0 _g99702_))
                ((let () (declare (not safe)) (##fx= _g99701_ 3))
                 (apply not-an-instance__% _g99702_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g99702_))))))
    (define make-final-slot-accessor
      (lambda (_%klass96822%_ _%slot96823%_ _%field96824%_)
        (lambda (_%obj96826%_)
          (##direct-structure-ref
           _%obj96826%_
           _%field96824%_
           _%klass96822%_
           _%slot96823%_))))
    (define make-final-slot-mutator
      (lambda (_%klass96815%_ _%slot96816%_ _%field96817%_)
        (lambda (_%obj96819%_ _%val96820%_)
          (##direct-structure-set!
           _%obj96819%_
           _%val96820%_
           _%field96817%_
           _%klass96815%_
           _%slot96816%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass96809%_ _%slot96810%_ _%field96811%_)
        (lambda (_%obj96813%_)
          (##structure-ref
           _%obj96813%_
           _%field96811%_
           _%klass96809%_
           _%slot96810%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass96802%_ _%slot96803%_ _%field96804%_)
        (lambda (_%obj96806%_ _%val96807%_)
          (##structure-set!
           _%obj96806%_
           _%val96807%_
           _%field96804%_
           _%klass96802%_
           _%slot96803%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass96796%_ _%slot96797%_ _%field96798%_)
        (lambda (_%obj96800%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj96800%_
             _%field96798%_
             _%klass96796%_
             _%slot96797%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass96789%_ _%slot96790%_ _%field96791%_)
        (lambda (_%obj96793%_ _%val96794%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj96793%_
             _%val96794%_
             _%field96791%_
             _%klass96789%_
             _%slot96790%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass96783%_ _%slot96784%_ _%field96785%_)
        (lambda (_%obj96787%_)
          (if (class-instance? _%klass96783%_ _%obj96787%_)
              (unchecked-slot-ref _%obj96787%_ _%field96785%_)
              (not-an-instance__%
               _%obj96787%_
               _%klass96783%_
               _%slot96784%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass96776%_ _%slot96777%_ _%field96778%_)
        (lambda (_%obj96780%_ _%val96781%_)
          (if (class-instance? _%klass96776%_ _%obj96780%_)
              (unchecked-field-set! _%obj96780%_ _%field96778%_ _%val96781%_)
              (not-an-instance__%
               _%obj96780%_
               _%klass96776%_
               _%slot96777%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass96767%_ _%slot96768%_ _%field96769%_)
        (lambda (_%obj96771%_)
          (if (let ((__tmp99703
                     (let () (declare (not safe)) (##type-id _%klass96767%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj96771%_ __tmp99703))
              (unchecked-field-ref _%obj96771%_ _%field96769%_)
              (if (class-instance? _%klass96767%_ _%obj96771%_)
                  (unchecked-slot-ref _%obj96771%_ _%slot96768%_)
                  (not-an-instance__%
                   _%obj96771%_
                   _%klass96767%_
                   _%slot96768%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass96757%_ _%slot96758%_ _%field96759%_)
        (lambda (_%obj96761%_ _%val96762%_)
          (if (let ((__tmp99704
                     (let () (declare (not safe)) (##type-id _%klass96757%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj96761%_ __tmp99704))
              (unchecked-field-set! _%obj96761%_ _%field96759%_ _%val96762%_)
              (if (class-instance? _%klass96757%_ _%obj96761%_)
                  (unchecked-slot-set! _%obj96761%_ _%slot96758%_ _%val96762%_)
                  (not-an-instance__%
                   _%obj96761%_
                   _%klass96757%_
                   _%slot96758%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass96751%_ _%slot96752%_ _%field96753%_)
        (lambda (_%obj96755%_)
          (if (let ((__tmp99705
                     (let () (declare (not safe)) (##type-id _%klass96751%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj96755%_ __tmp99705))
              (unchecked-field-ref _%obj96755%_ _%field96753%_)
              (unchecked-slot-ref _%obj96755%_ _%slot96752%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass96744%_ _%slot96745%_ _%field96746%_)
        (lambda (_%obj96748%_ _%val96749%_)
          (if (let ((__tmp99706
                     (let () (declare (not safe)) (##type-id _%klass96744%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj96748%_ __tmp99706))
              (unchecked-field-set! _%obj96748%_ _%field96746%_ _%val96749%_)
              (unchecked-slot-set! _%obj96748%_ _%slot96745%_ _%val96749%_)))))
    (define class-slot-offset
      (lambda (_%klass96719%_ _%slot96720%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96719%_ 'class))
            (let ((_%klass96724%_ _%klass96719%_))
              (if (let () (declare (not safe)) (symbolic? _%slot96720%_))
                  (let ((_%slot96734%_ _%slot96720%_))
                    (__class-slot-offset _%klass96724%_ _%slot96734%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot96720%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass96719%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass96698%_ _%slot96699%_)
        (let* ((_%klass96702%_ _%klass96698%_)
               (_%slot96710%_ _%slot96699%_)
               (__tmp99707
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass96702%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp99707 _%slot96710%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass96672%_ _%obj96673%_ _%slot96674%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96672%_ 'class))
            (let ((_%klass96678%_ _%klass96672%_))
              (if (let () (declare (not safe)) (symbolic? _%slot96674%_))
                  (let ((_%slot96688%_ _%slot96674%_))
                    (__class-slot-ref
                     _%klass96678%_
                     _%obj96673%_
                     _%slot96688%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot96674%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass96672%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass96648%_ _%obj96649%_ _%slot96650%_)
        (let* ((_%klass96653%_ _%klass96648%_) (_%slot96661%_ _%slot96650%_))
          (if (__class-instance? _%klass96653%_ _%obj96649%_)
              (let ((_%off96670%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj96649%_))
                      _%slot96661%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj96649%_
                 _%off96670%_
                 _%klass96653%_
                 _%slot96661%_))
              (not-an-instance__0 _%obj96649%_ _%klass96653%_)))))
    (define class-slot-set!
      (lambda (_%klass96621%_ _%obj96622%_ _%slot96623%_ _%val96624%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96621%_ 'class))
            (let ((_%klass96628%_ _%klass96621%_))
              (if (let () (declare (not safe)) (symbolic? _%slot96623%_))
                  (let ((_%slot96638%_ _%slot96623%_))
                    (__class-slot-set!
                     _%klass96628%_
                     _%obj96622%_
                     _%slot96638%_
                     _%val96624%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot96623%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass96621%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass96596%_ _%obj96597%_ _%slot96598%_ _%val96599%_)
        (let* ((_%klass96602%_ _%klass96596%_) (_%slot96610%_ _%slot96598%_))
          (if (__class-instance? _%klass96602%_ _%obj96597%_)
              (let ((_%off96619%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj96597%_))
                      _%slot96610%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj96597%_
                 _%val96599%_
                 _%off96619%_
                 _%klass96602%_
                 _%slot96610%_))
              (not-an-instance__0 _%obj96597%_ _%klass96602%_)))))
    (define unchecked-field-ref
      (lambda (_%obj96593%_ _%off96594%_)
        (let ((__tmp99708
               (let () (declare (not safe)) (##structure-type _%obj96593%_))))
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj96593%_
           _%off96594%_
           __tmp99708
           '#f))))
    (define unchecked-field-set!
      (lambda (_%obj96589%_ _%off96590%_ _%val96591%_)
        (let ((__tmp99709
               (let () (declare (not safe)) (##structure-type _%obj96589%_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj96589%_
           _%val96591%_
           _%off96590%_
           __tmp99709
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj96586%_ _%slot96587%_)
        (unchecked-field-ref
         _%obj96586%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj96586%_))
          _%slot96587%_))))
    (define unchecked-slot-set!
      (lambda (_%obj96582%_ _%slot96583%_ _%val96584%_)
        (unchecked-field-set!
         _%obj96582%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj96582%_))
          _%slot96583%_)
         _%val96584%_)))
    (define slot-ref__%
      (lambda (_%obj96544%_ _%slot96545%_ _%E96546%_)
        (if (symbol? _%slot96545%_)
            (let ((_%slot96550%_ _%slot96545%_))
              (if (procedure? _%E96546%_)
                  (let ((_%E96560%_ _%E96546%_))
                    (__slot-ref__% _%obj96544%_ _%slot96550%_ _%E96560%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E96546%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot96545%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj96573%_ _%slot96574%_)
        (let ((_%E96576%_ __slot-error))
          (slot-ref__% _%obj96573%_ _%slot96574%_ _%E96576%_))))
    (define slot-ref
      (lambda _g99711_
        (let ((_g99710_ (let () (declare (not safe)) (##length _g99711_))))
          (cond ((let () (declare (not safe)) (##fx= _g99710_ 2))
                 (apply slot-ref__0 _g99711_))
                ((let () (declare (not safe)) (##fx= _g99710_ 3))
                 (apply slot-ref__% _g99711_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g99711_))))))
    (define __slot-ref__%
      (lambda (_%obj96500%_ _%slot96501%_ _%E96502%_)
        (let* ((_%slot96505%_ _%slot96501%_)
               (_%E96513%_ _%E96502%_)
               (_%klass96522%_ (class-of _%obj96500%_))
               (_%$e96525%_
                (__class-slot-offset _%klass96522%_ _%slot96505%_)))
          (if _%$e96525%_
              ((lambda (_%off96528%_)
                 (unchecked-field-ref _%obj96500%_ _%off96528%_))
               _%$e96525%_)
              (let ()
                (declare (not safe))
                (_%E96513%_ _%obj96500%_ _%slot96505%_))))))
    (define __slot-ref__0
      (lambda (_%obj96534%_ _%slot96535%_)
        (let ((_%E96537%_ __slot-error))
          (__slot-ref__% _%obj96534%_ _%slot96535%_ _%E96537%_))))
    (define __slot-ref
      (lambda _g99713_
        (let ((_g99712_ (let () (declare (not safe)) (##length _g99713_))))
          (cond ((let () (declare (not safe)) (##fx= _g99712_ 2))
                 (apply __slot-ref__0 _g99713_))
                ((let () (declare (not safe)) (##fx= _g99712_ 3))
                 (apply __slot-ref__% _g99713_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g99713_))))))
    (define slot-set!__%
      (lambda (_%obj96458%_ _%slot96459%_ _%val96460%_ _%E96461%_)
        (if (symbol? _%slot96459%_)
            (let ((_%slot96465%_ _%slot96459%_))
              (if (procedure? _%E96461%_)
                  (let ((_%E96475%_ _%E96461%_))
                    (__slot-set!__%
                     _%obj96458%_
                     _%slot96465%_
                     _%val96460%_
                     _%E96475%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E96461%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot96459%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj96488%_ _%slot96489%_ _%val96490%_)
        (let ((_%E96492%_ __slot-error))
          (slot-set!__% _%obj96488%_ _%slot96489%_ _%val96490%_ _%E96492%_))))
    (define slot-set!
      (lambda _g99715_
        (let ((_g99714_ (let () (declare (not safe)) (##length _g99715_))))
          (cond ((let () (declare (not safe)) (##fx= _g99714_ 3))
                 (apply slot-set!__0 _g99715_))
                ((let () (declare (not safe)) (##fx= _g99714_ 4))
                 (apply slot-set!__% _g99715_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g99715_))))))
    (define __slot-set!__%
      (lambda (_%obj96411%_ _%slot96412%_ _%val96413%_ _%E96414%_)
        (let* ((_%slot96417%_ _%slot96412%_)
               (_%E96425%_ _%E96414%_)
               (_%klass96434%_ (class-of _%obj96411%_))
               (_%$e96437%_
                (__class-slot-offset _%klass96434%_ _%slot96417%_)))
          (if _%$e96437%_
              ((lambda (_%off96440%_)
                 (unchecked-field-set! _%obj96411%_ _%off96440%_ _%val96413%_))
               _%$e96437%_)
              (let ()
                (declare (not safe))
                (_%E96425%_ _%obj96411%_ _%slot96417%_))))))
    (define __slot-set!__0
      (lambda (_%obj96446%_ _%slot96447%_ _%val96448%_)
        (let ((_%E96450%_ __slot-error))
          (__slot-set!__%
           _%obj96446%_
           _%slot96447%_
           _%val96448%_
           _%E96450%_))))
    (define __slot-set!
      (lambda _g99717_
        (let ((_g99716_ (let () (declare (not safe)) (##length _g99717_))))
          (cond ((let () (declare (not safe)) (##fx= _g99716_ 3))
                 (apply __slot-set!__0 _g99717_))
                ((let () (declare (not safe)) (##fx= _g99716_ 4))
                 (apply __slot-set!__% _g99717_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g99717_))))))
    (define __slot-error
      (lambda (_%obj96407%_ _%slot96408%_)
        (error '"Cannot find slot"
               'object:
               _%obj96407%_
               'slot:
               _%slot96408%_)))
    (define subclass?
      (lambda (_%maybe-sub-class96382%_ _%maybe-super-class96383%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class96382%_ 'class))
            (let ((_%maybe-sub-class96387%_ _%maybe-sub-class96382%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class96383%_
                     'class))
                  (let ((_%maybe-super-class96397%_
                         _%maybe-super-class96383%_))
                    (__subclass?
                     _%maybe-sub-class96387%_
                     _%maybe-super-class96397%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class96383%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class96382%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class96354%_ _%maybe-super-class96355%_)
        (let* ((_%maybe-sub-class96358%_ _%maybe-sub-class96354%_)
               (_%maybe-super-class96366%_ _%maybe-super-class96355%_)
               (_%maybe-super-class-id96375%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class96366%_)))
               (_%$e96377%_
                (eq? _%maybe-super-class-id96375%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class96358%_)))))
          (if _%$e96377%_
              _%$e96377%_
              (let ((__tmp99719
                     (lambda (_%super-class96380%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class96380%_))
                            _%maybe-super-class-id96375%_)))
                    (__tmp99718
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class96358%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp99719 __tmp99718))))))
    (define object?
      (lambda (_%o96351%_)
        (if (let () (declare (not safe)) (##structure? _%o96351%_))
            (let ((__tmp99720
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o96351%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp99720 'class))
            '#f)))
    (define object-type
      (lambda (_%o96346%_)
        (if (let () (declare (not safe)) (##structure? _%o96346%_))
            (let ((_%klass96349%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o96346%_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass96349%_ 'class))
                  _%klass96349%_
                  (begin
                    (error '"not an object" _%o96346%_ _%klass96349%_)
                    '#!void)))
            (begin (error '"not an object" _%o96346%_) '#!void))))
    (define direct-instance?
      (lambda (_%klass96331%_ _%obj96332%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96331%_ 'class))
            (let ((_%klass96336%_ _%klass96331%_))
              (__direct-instance? _%klass96336%_ _%obj96332%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass96331%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass96318%_ _%obj96319%_)
        (let* ((_%klass96322%_ _%klass96318%_)
               (__tmp99721
                (let () (declare (not safe)) (##type-id _%klass96322%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj96319%_ __tmp99721))))
    (define immediate-instance-of?
      (lambda (_%klass96314%_ _%obj96315%_)
        (if (let () (declare (not safe)) (##structure? _%obj96315%_))
            (eq? _%klass96314%_
                 (let () (declare (not safe)) (##structure-type _%obj96315%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass96299%_ _%obj96300%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96299%_ 'class))
            (let ((_%klass96304%_ _%klass96299%_))
              (__struct-instance? _%klass96304%_ _%obj96300%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass96299%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass96286%_ _%obj96287%_)
        (let* ((_%klass96290%_ _%klass96286%_)
               (__tmp99722
                (let () (declare (not safe)) (##type-id _%klass96290%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj96287%_ __tmp99722))))
    (define class-instance?
      (lambda (_%klass96271%_ _%obj96272%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96271%_ 'class))
            (let ((_%klass96276%_ _%klass96271%_))
              (__class-instance? _%klass96276%_ _%obj96272%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass96271%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass96256%_ _%obj96257%_)
        (let* ((_%klass96260%_ _%klass96256%_)
               (_%type96269%_ (class-of _%obj96257%_)))
          (__subclass? _%type96269%_ _%klass96260%_))))
    (define make-object
      (lambda (_%klass96231%_ _%k96232%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96231%_ 'class))
            (let ((_%klass96236%_ _%klass96231%_))
              (if (fixnum? _%k96232%_)
                  (let ((_%k96246%_ _%k96232%_))
                    (__make-object _%klass96236%_ _%k96246%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k96232%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass96231%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass96208%_ _%k96209%_)
        (let* ((_%klass96212%_ _%klass96208%_) (_%k96220%_ _%k96209%_))
          (if (__class-type-system? _%klass96212%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass96212%_)
                '#!void)
              (let ((_%obj96229%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass96212%_ _%k96220%_))))
                (object-fill! _%obj96229%_ '#f))))))
    (define object-fill!
      (lambda (_%obj96193%_ _%fill96194%_)
        (if '#t
            (let ((_%obj96198%_ _%obj96193%_))
              (__object-fill! _%obj96198%_ _%fill96194%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj96193%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj96175%_ _%fill96176%_)
        (let ((_%obj96179%_ _%obj96175%_))
          (let _%loop96188%_ ((_%i96190%_
                               (let ((__tmp99723
                                      (let ()
                                        (declare (not safe))
                                        (##structure-length _%obj96179%_))))
                                 (declare (not safe))
                                 (##fx- __tmp99723 '1))))
            (if (let () (declare (not safe)) (##fx> _%i96190%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj96179%_
                     _%fill96176%_
                     _%i96190%_
                     '#f
                     '#f))
                  (_%loop96188%_
                   (let () (declare (not safe)) (##fx- _%i96190%_ '1))))
                _%obj96179%_)))))
    (define new-instance
      (lambda (_%klass96161%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96161%_ 'class))
            (let ((_%klass96165%_ _%klass96161%_))
              (__new-instance _%klass96165%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass96161%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass96149%_)
        (let* ((_%klass96152%_ _%klass96149%_)
               (__obj99638
                (let ((__tmp99724
                       (let ((__tmp99725
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass96152%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp99725))))
                  (declare (not safe))
                  (##make-structure _%klass96152%_ __tmp99724))))
          (object-fill! __obj99638 '#f)
          __obj99638)))
    (define make-instance
      (lambda (_%klass96134%_ . _%args96135%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96134%_ 'class))
            (let ((_%klass96139%_ _%klass96134%_))
              (declare (not safe))
              (##apply __make-instance _%klass96139%_ _%args96135%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass96134%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass96106%_ . _%args96107%_)
        (let* ((_%klass96110%_ _%klass96106%_)
               (_%$e96119%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass96110%_ '10 '#f '#f))))
          (if _%$e96119%_
              ((lambda (_%kons-id96122%_)
                 (let ((_%obj96124%_ (__new-instance _%klass96110%_)))
                   (___constructor-init!
                    _%klass96110%_
                    _%kons-id96122%_
                    _%obj96124%_
                    _%args96107%_)
                   _%obj96124%_))
               _%$e96119%_)
              (if (__class-type-metaclass? _%klass96110%_)
                  (let ((_%obj96127%_ (__new-instance _%klass96110%_)))
                    (__metaclass-instance-init!
                     _%klass96110%_
                     _%obj96127%_
                     _%args96107%_)
                    _%obj96127%_)
                  (if (not (__class-type-struct? _%klass96110%_))
                      (let ((_%obj96130%_ (__new-instance _%klass96110%_)))
                        (___class-instance-init!
                         _%klass96110%_
                         _%obj96130%_
                         _%args96107%_)
                        _%obj96130%_)
                      (if (let ((__tmp99727
                                 (__class-type-field-count _%klass96110%_))
                                (__tmp99726
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args96107%_))))
                            (declare (not safe))
                            (##fx= __tmp99727 __tmp99726))
                          (apply ##structure _%klass96110%_ _%args96107%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass96110%_
                                   'slots:
                                   (__class-type-slot-list _%klass96110%_)
                                   'args:
                                   _%args96107%_)
                            '#!void))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj96091%_ . _%args96092%_)
        (if '#t
            (let ((_%obj96096%_ _%obj96091%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj96096%_ _%args96092%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj96091%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj96078%_ . _%args96079%_)
        (let ((_%obj96082%_ _%obj96078%_))
          (if (let ((__tmp99729
                     (let () (declare (not safe)) (##length _%args96079%_)))
                    (__tmp99728
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj96082%_))))
                (declare (not safe))
                (##fx< __tmp99729 __tmp99728))
              (___struct-instance-init! _%obj96082%_ _%args96079%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj96082%_
                     'args:
                     _%args96079%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj96037%_ _%args96038%_)
        (let _%lp96040%_ ((_%k96042%_ '1) (_%rest96043%_ _%args96038%_))
          (let* ((_%rest9604496052%_ _%rest96043%_)
                 (_%else9604696060%_ (lambda () _%obj96037%_))
                 (_%K9604896066%_
                  (lambda (_%rest96063%_ _%hd96064%_)
                    (unchecked-field-set! _%obj96037%_ _%k96042%_ _%hd96064%_)
                    (_%lp96040%_
                     (let () (declare (not safe)) (##fx+ _%k96042%_ '1))
                     _%rest96063%_))))
            (if (let () (declare (not safe)) (##pair? _%rest9604496052%_))
                (let ((_%hd9604996069%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9604496052%_)))
                      (_%tl9605096071%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9604496052%_))))
                  (let* ((_%hd96074%_ _%hd9604996069%_)
                         (_%rest96076%_ _%tl9605096071%_))
                    (_%K9604896066%_ _%rest96076%_ _%hd96074%_)))
                (_%else9604696060%_))))))
    (define class-instance-init!
      (lambda (_%obj96022%_ . _%args96023%_)
        (if '#t
            (let ((_%obj96027%_ _%obj96022%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj96027%_ _%args96023%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj96022%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj96009%_ . _%args96010%_)
        (let ((_%obj96013%_ _%obj96009%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj96013%_))
           _%obj96013%_
           _%args96010%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass95951%_ _%obj95952%_ _%args95953%_)
        (let _%lp95955%_ ((_%rest95957%_ _%args95953%_))
          (let* ((_%rest9595895968%_ _%rest95957%_)
                 (_%else9596095976%_
                  (lambda ()
                    (if (null? _%rest95957%_)
                        _%obj95952%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass95951%_
                               'rest:
                               _%rest95957%_))))
                 (_%K9596295990%_
                  (lambda (_%rest95979%_ _%val95980%_ _%key95981%_)
                    (if (not (keyword? _%key95981%_))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key95981%_)
                        (let ((_%$e95984%_
                               (__class-slot-offset
                                _%klass95951%_
                                _%key95981%_)))
                          (if _%$e95984%_
                              ((lambda (_%off95987%_)
                                 (unchecked-field-set!
                                  _%obj95952%_
                                  _%off95987%_
                                  _%val95980%_)
                                 (_%lp95955%_ _%rest95979%_))
                               _%$e95984%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass95951%_
                                     'slot:
                                     _%key95981%_)))))))
            (if (let () (declare (not safe)) (##pair? _%rest9595895968%_))
                (let ((_%hd9596395993%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9595895968%_)))
                      (_%tl9596495995%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9595895968%_))))
                  (let ((_%key95998%_ _%hd9596395993%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9596495995%_))
                        (let ((_%hd9596596000%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9596495995%_)))
                              (_%tl9596696002%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9596495995%_))))
                          (let* ((_%val96005%_ _%hd9596596000%_)
                                 (_%rest96007%_ _%tl9596696002%_))
                            (_%K9596295990%_
                             _%rest96007%_
                             _%val96005%_
                             _%key95998%_)))
                        (_%else9596095976%_))))
                (_%else9596095976%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass95947%_ _%obj95948%_ _%args95949%_)
        (apply call-method
               _%klass95947%_
               'instance-init!
               _%obj95948%_
               _%args95949%_)))
    (define constructor-init!
      (lambda (_%klass95910%_ _%kons-id95911%_ _%obj95912%_ . _%args95913%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95910%_ 'class))
            (let ((_%klass95917%_ _%klass95910%_))
              (if (symbol? _%kons-id95911%_)
                  (let ((_%kons-id95927%_ _%kons-id95911%_))
                    (if '#t
                        (let ((_%obj95937%_ _%obj95912%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass95917%_
                                   _%kons-id95927%_
                                   _%obj95937%_
                                   _%args95913%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                           'contract:
                           'true
                           'value:
                           _%obj95912%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id95911%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass95910%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass95879%_ _%kons-id95880%_ _%obj95881%_ . _%args95882%_)
        (let* ((_%klass95885%_ _%klass95879%_)
               (_%kons-id95893%_ _%kons-id95880%_)
               (_%obj95901%_ _%obj95881%_))
          (___constructor-init!
           _%klass95885%_
           _%kons-id95893%_
           _%obj95901%_
           _%args95882%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass95868%_ _%kons-id95869%_ _%obj95870%_ _%args95871%_)
        (let ((_%$e95873%_
               (__find-method _%klass95868%_ _%obj95870%_ _%kons-id95869%_)))
          (if _%$e95873%_
              ((lambda (_%kons95876%_)
                 (apply _%kons95876%_ _%obj95870%_ _%args95871%_)
                 _%obj95870%_)
               _%$e95873%_)
              (error '"missing constructor"
                     'class:
                     _%klass95868%_
                     'method:
                     _%kons-id95869%_)))))
    (define struct-copy
      (lambda (_%struct95854%_)
        (if '#t
            (let ((_%struct95858%_ _%struct95854%_))
              (__struct-copy _%struct95858%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct95854%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct95842%_)
        (let ((_%struct95845%_ _%struct95842%_))
          (declare (not safe))
          (##structure-copy _%struct95845%_))))
    (define struct->list
      (lambda (_%obj95828%_)
        (if '#t
            (let ((_%obj95832%_ _%obj95828%_)) (__struct->list _%obj95832%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj95828%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj95816%_)
        (let ((_%obj95819%_ _%obj95816%_))
          (declare (not safe))
          (##vector->list _%obj95819%_))))
    (define class->list
      (lambda (_%obj95802%_)
        (if '#t
            (let ((_%obj95806%_ _%obj95802%_)) (__class->list _%obj95806%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@837.20-837.23"
               'contract:
               'true
               'value:
               _%obj95802%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj95778%_)
        (let* ((_%obj95781%_ _%obj95778%_)
               (_%klass95790%_
                (let () (declare (not safe)) (##structure-type _%obj95781%_)))
               (_%slot-vector95792%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass95790%_ '7 '#f '#f))))
          (let _%loop95794%_ ((_%index95796%_
                               (let ((__tmp99730
                                      (let ()
                                        (declare (not safe))
                                        (##vector-length
                                         _%slot-vector95792%_))))
                                 (declare (not safe))
                                 (##fx- __tmp99730 '1)))
                              (_%plist95797%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index95796%_ '1))
                (cons _%klass95790%_ _%plist95797%_)
                (let ((_%slot95800%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%slot-vector95792%_ _%index95796%_))))
                  (_%loop95794%_
                   (let () (declare (not safe)) (##fx- _%index95796%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot95800%_))
                         (cons (unchecked-field-ref
                                _%obj95781%_
                                _%index95796%_)
                               _%plist95797%_)))))))))
    (define call-method
      (lambda (_%obj95762%_ _%id95763%_ . _%args95764%_)
        (if (symbol? _%id95763%_)
            (let ((_%id95768%_ _%id95763%_))
              (declare (not safe))
              (##apply __call-method _%obj95762%_ _%id95768%_ _%args95764%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.24-852.26"
               'contract:
               'symbol?
               'value:
               _%id95763%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj95731%_ _%id95732%_ . _%args95733%_)
        (let* ((_%id95736%_ _%id95732%_)
               (_%$e95745%_ (__method-ref _%obj95731%_ _%id95736%_)))
          (if _%$e95745%_
              ((lambda (_%method95748%_)
                 (let ((_%method95750%_ _%method95748%_))
                   (apply _%method95750%_ _%obj95731%_ _%args95733%_)))
               _%$e95745%_)
              (error '"cannot find method"
                     'object:
                     _%obj95731%_
                     'method:
                     _%id95736%_)))))
    (define method-ref
      (lambda (_%obj95716%_ _%id95717%_)
        (if (symbol? _%id95717%_)
            (let ((_%id95721%_ _%id95717%_))
              (__method-ref _%obj95716%_ _%id95721%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@879.23-879.25"
               'contract:
               'symbol?
               'value:
               _%id95717%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj95703%_ _%id95704%_)
        (let ((_%id95707%_ _%id95704%_))
          (__find-method (class-of _%obj95703%_) _%obj95703%_ _%id95707%_))))
    (define checked-method-ref
      (lambda (_%obj95696%_ _%id95697%_)
        (let ((_%$e95700%_ (method-ref _%obj95696%_ _%id95697%_)))
          (if _%$e95700%_
              _%$e95700%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj95696%_
                       'method:
                       _%id95697%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj95681%_ _%id95682%_)
        (if (symbol? _%id95682%_)
            (let ((_%id95686%_ _%id95682%_))
              (__bound-method-ref _%obj95681%_ _%id95686%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@887.29-887.31"
               'contract:
               'symbol?
               'value:
               _%id95682%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj95649%_ _%id95650%_)
        (let* ((_%id95653%_ _%id95650%_)
               (_%$e95662%_ (__method-ref _%obj95649%_ _%id95653%_)))
          (if _%$e95662%_
              ((lambda (_%method95665%_)
                 (let ((_%method95667%_ _%method95665%_))
                   (lambda _%args95678%_
                     (apply _%method95667%_ _%obj95649%_ _%args95678%_))))
               _%$e95662%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj95634%_ _%id95635%_)
        (if (symbol? _%id95635%_)
            (let ((_%id95639%_ _%id95635%_))
              (__checked-bound-method-ref _%obj95634%_ _%id95639%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@896.37-896.39"
               'contract:
               'symbol?
               'value:
               _%id95635%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj95617%_ _%id95618%_)
        (let* ((_%id95621%_ _%id95618%_)
               (_%method95630%_ (checked-method-ref _%obj95617%_ _%id95621%_)))
          (lambda _%args95632%_
            (apply _%method95630%_ _%obj95617%_ _%args95632%_)))))
    (define find-method
      (lambda (_%klass95591%_ _%obj95592%_ _%id95593%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95591%_ 'class))
            (let ((_%klass95597%_ _%klass95591%_))
              (if (symbol? _%id95593%_)
                  (let ((_%id95607%_ _%id95593%_))
                    (__find-method _%klass95597%_ _%obj95592%_ _%id95607%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@901.41-901.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id95593%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@901.20-901.25"
               'contract:
               'class-type?
               'value:
               _%klass95591%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass95564%_ _%obj95565%_ _%id95566%_)
        (let* ((_%klass95569%_ _%klass95564%_)
               (_%id95577%_ _%id95566%_)
               (_%$e95586%_
                (__direct-method-ref _%klass95569%_ _%obj95565%_ _%id95577%_)))
          (if _%$e95586%_
              _%$e95586%_
              (if (__class-type-sealed? _%klass95569%_)
                  '#f
                  (__mixin-method-ref
                   _%klass95569%_
                   _%obj95565%_
                   _%id95577%_))))))
    (define mixin-find-method
      (lambda (_%mixins95548%_ _%obj95549%_ _%id95550%_)
        (if (symbol? _%id95550%_)
            (let ((_%id95554%_ _%id95550%_))
              (__mixin-find-method _%mixins95548%_ _%obj95549%_ _%id95554%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@909.37-909.39"
               'contract:
               'symbol?
               'value:
               _%id95550%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins95530%_ _%obj95531%_ _%id95532%_)
        (let* ((_%id95535%_ _%id95532%_)
               (__tmp99731
                (lambda (_%g9554395545%_)
                  (direct-method-ref
                   _%g9554395545%_
                   _%obj95531%_
                   _%id95535%_))))
          (declare (not safe))
          (__ormap1 __tmp99731 _%mixins95530%_))))
    (define direct-method-ref
      (lambda (_%klass95504%_ _%obj95505%_ _%id95506%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95504%_ 'class))
            (let ((_%klass95510%_ _%klass95504%_))
              (if (symbol? _%id95506%_)
                  (let ((_%id95520%_ _%id95506%_))
                    (__direct-method-ref
                     _%klass95510%_
                     _%obj95505%_
                     _%id95520%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@912.47-912.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id95506%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@912.26-912.31"
               'contract:
               'class-type?
               'value:
               _%klass95504%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass95458%_ _%obj95459%_ _%id95460%_)
        (let* ((_%klass95463%_ _%klass95458%_) (_%id95471%_ _%id95460%_))
          (letrec ((_%metaclass-resolve-method95480%_
                    (lambda ()
                      (let ((__method99639
                             (__method-ref _%klass95463%_ 'direct-method-ref)))
                        (if __method99639
                            (let ()
                              (declare (not safe))
                              (__method99639
                               _%klass95463%_
                               _%obj95459%_
                               _%id95471%_))
                            (begin
                              (error '"Missing method"
                                     _%klass95463%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!95481%_
                    (lambda ()
                      (let ((_%method95501%_
                             (_%metaclass-resolve-method95480%_)))
                        (let ((__tmp99733
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass95463%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp99732
                               (if _%method95501%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp99733
                           _%id95471%_
                           __tmp99732))
                        _%method95501%_))))
            (let ((_%$e95483%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass95463%_ '11 '#f '#f))))
              (if _%$e95483%_
                  ((lambda (_%ht95486%_)
                     (let ((_%method95488%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht95486%_
                               _%id95471%_
                               '#f))))
                       (if (procedure? _%method95488%_)
                           _%method95488%_
                           (if (__class-type-metaclass? _%klass95463%_)
                               (let ((_%$e95492%_ _%method95488%_))
                                 (if (eq? 'resolved _%$e95492%_)
                                     (_%metaclass-resolve-method95480%_)
                                     (if (eq? 'unknown _%$e95492%_)
                                         '#f
                                         (_%metaclass-resolve-method!95481%_))))
                               '#f))))
                   _%$e95483%_)
                  (if (__class-type-metaclass? _%klass95463%_)
                      (let ((_%tab95497%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass95463%_
                           _%tab95497%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!95481%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass95432%_ _%obj95433%_ _%id95434%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95432%_ 'class))
            (let ((_%klass95438%_ _%klass95432%_))
              (if (symbol? _%id95434%_)
                  (let ((_%id95448%_ _%id95434%_))
                    (__mixin-method-ref
                     _%klass95438%_
                     _%obj95433%_
                     _%id95448%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@942.46-942.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id95434%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@942.25-942.30"
               'contract:
               'class-type?
               'value:
               _%klass95432%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass95410%_ _%obj95411%_ _%id95412%_)
        (let* ((_%klass95415%_ _%klass95410%_) (_%id95423%_ _%id95412%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass95415%_ '6 '#f '#f))
           _%obj95411%_
           _%id95423%_))))
    (define bind-method!__%
      (lambda (_%klass95369%_ _%id95370%_ _%proc95371%_ _%rebind?95372%_)
        (if (symbol? _%id95370%_)
            (let ((_%id95376%_ _%id95370%_))
              (if (procedure? _%proc95371%_)
                  (let ((_%proc95386%_ _%proc95371%_))
                    (__bind-method!__%
                     _%klass95369%_
                     _%id95376%_
                     _%proc95386%_
                     _%rebind?95372%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@945.42-945.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc95371%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@945.27-945.29"
               'contract:
               'symbol?
               'value:
               _%id95370%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass95399%_ _%id95400%_ _%proc95401%_)
        (let ((_%rebind?95403%_ '#f))
          (bind-method!__%
           _%klass95399%_
           _%id95400%_
           _%proc95401%_
           _%rebind?95403%_))))
    (define bind-method!
      (lambda _g99735_
        (let ((_g99734_ (let () (declare (not safe)) (##length _g99735_))))
          (cond ((let () (declare (not safe)) (##fx= _g99734_ 3))
                 (apply bind-method!__0 _g99735_))
                ((let () (declare (not safe)) (##fx= _g99734_ 4))
                 (apply bind-method!__% _g99735_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g99735_))))))
    (define __bind-method!__%
      (lambda (_%klass95320%_ _%id95321%_ _%proc95322%_ _%rebind?95323%_)
        (let* ((_%id95326%_ _%id95321%_) (_%proc95334%_ _%proc95322%_))
          (letrec ((_%bind!95343%_
                    (lambda (_%ht95352%_)
                      (if (and (not _%rebind?95323%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht95352%_
                                  _%id95326%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass95320%_
                                 'method:
                                 _%id95326%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht95352%_
                               _%id95326%_
                               _%proc95334%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass95320%_ 'class))
                (let ((_%ht95346%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass95320%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht95346%_
                      (_%bind!95343%_ _%ht95346%_)
                      (let ((_%ht95348%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass95320%_
                           _%ht95348%_
                           '11
                           '#f
                           '#f))
                        (_%bind!95343%_ _%ht95348%_))))
                (if (let () (declare (not safe)) (##type? _%klass95320%_))
                    (__bind-method!__%
                     (__shadow-class _%klass95320%_)
                     _%id95326%_
                     _%proc95334%_
                     _%rebind?95323%_)
                    (error '"bad class; expected class or builtin type"
                           _%klass95320%_)))))))
    (define __bind-method!__0
      (lambda (_%klass95357%_ _%id95358%_ _%proc95359%_)
        (let ((_%rebind?95361%_ '#f))
          (__bind-method!__%
           _%klass95357%_
           _%id95358%_
           _%proc95359%_
           _%rebind?95361%_))))
    (define __bind-method!
      (lambda _g99737_
        (let ((_g99736_ (let () (declare (not safe)) (##length _g99737_))))
          (cond ((let () (declare (not safe)) (##fx= _g99736_ 3))
                 (apply __bind-method!__0 _g99737_))
                ((let () (declare (not safe)) (##fx= _g99736_ 4))
                 (apply __bind-method!__% _g99737_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g99737_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint95300%_ _%seed95302%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint95300%_
           procedure-hash
           eq?
           _%seed95302%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint95308%_ '#f) (_%seed95310%_ '0))
          (make-method-specializer-table__%
           _%size-hint95308%_
           _%seed95310%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint95312%_)
        (let ((_%seed95314%_ '0))
          (make-method-specializer-table__%
           _%size-hint95312%_
           _%seed95314%_))))
    (define make-method-specializer-table
      (lambda _g99739_
        (let ((_g99738_ (let () (declare (not safe)) (##length _g99739_))))
          (cond ((let () (declare (not safe)) (##fx= _g99738_ 0))
                 (apply make-method-specializer-table__0 _g99739_))
                ((let () (declare (not safe)) (##fx= _g99738_ 1))
                 (apply make-method-specializer-table__1 _g99739_))
                ((let () (declare (not safe)) (##fx= _g99738_ 2))
                 (apply make-method-specializer-table__% _g99739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g99739_))))))
    (define method-specializer-table-ref
      (lambda (_%tab95253%_ _%key95254%_ _%default95255%_)
        (let ((_%table95257%_
               (let () (declare (not safe)) (&raw-table-table _%tab95253%_)))
              (_%seed95258%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95253%_))))
          (let* ((_%h95260%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key95254%_))
                         _%seed95258%_))
                 (_%size95263%_ (vector-length _%table95257%_))
                 (_%entries95266%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95263%_ '2)))
                 (_%start95269%_
                  (let ((__tmp99740
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95260%_ _%entries95266%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99740 '1))))
            (let _%loop95273%_ ((_%probe95276%_ _%start95269%_)
                                (_%i95278%_ '1)
                                (_%deleted95280%_ '#f))
              (let ((_%k95283%_ (vector-ref _%table95257%_ _%probe95276%_)))
                (if (eq? _%k95283%_ (macro-unused-obj))
                    _%default95255%_
                    (if (eq? _%k95283%_ (macro-deleted-obj))
                        (_%loop95273%_
                         (let ((_%next-probe95288%_
                                (fx+ _%start95269%_
                                     _%i95278%_
                                     (fx* _%i95278%_ _%i95278%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95288%_ _%size95263%_))
                         (let () (declare (not safe)) (##fx+ _%i95278%_ '1))
                         (let ((_%$e95291%_ _%deleted95280%_))
                           (if _%$e95291%_ _%$e95291%_ _%probe95276%_)))
                        (if (eq? _%key95254%_ _%k95283%_)
                            (vector-ref
                             _%table95257%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe95276%_ '1)))
                            (_%loop95273%_
                             (let ((_%next-probe95296%_
                                    (fx+ _%start95269%_
                                         _%i95278%_
                                         (fx* _%i95278%_ _%i95278%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95296%_ _%size95263%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95278%_ '1))
                             _%deleted95280%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab95249%_ _%key95250%_ _%value95251%_)
        (if (let ((__tmp99743
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab95249%_)))
                  (__tmp99741
                   (let ((__tmp99742
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab95249%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp99742 '4))))
              (declare (not safe))
              (##fx< __tmp99743 __tmp99741))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab95249%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab95249%_
         _%key95250%_
         _%value95251%_)))
    (define __method-specializer-table-set!
      (lambda (_%tab95200%_ _%key95201%_ _%value95202%_)
        (let ((_%table95205%_
               (let () (declare (not safe)) (&raw-table-table _%tab95200%_)))
              (_%seed95206%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95200%_))))
          (let* ((_%h95208%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key95201%_))
                         _%seed95206%_))
                 (_%size95211%_ (vector-length _%table95205%_))
                 (_%entries95214%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95211%_ '2)))
                 (_%start95217%_
                  (let ((__tmp99744
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95208%_ _%entries95214%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99744 '1))))
            (let _%loop95221%_ ((_%probe95224%_ _%start95217%_)
                                (_%i95226%_ '1)
                                (_%deleted95228%_ '#f))
              (let ((_%k95231%_ (vector-ref _%table95205%_ _%probe95224%_)))
                (if (eq? _%k95231%_ (macro-unused-obj))
                    (if _%deleted95228%_
                        (begin
                          (vector-set!
                           _%table95205%_
                           _%deleted95228%_
                           _%key95201%_)
                          (vector-set!
                           _%table95205%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted95228%_ '1))
                           _%value95202%_)
                          ((lambda ()
                             (let ((__tmp99745
                                    (let ((__tmp99746
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95200%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99746 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95200%_
                                __tmp99745)))))
                        (begin
                          (vector-set!
                           _%table95205%_
                           _%probe95224%_
                           _%key95201%_)
                          (vector-set!
                           _%table95205%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe95224%_ '1))
                           _%value95202%_)
                          ((lambda ()
                             (let ((__tmp99747
                                    (let ((__tmp99748
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab95200%_))))
                                      (declare (not safe))
                                      (##fx- __tmp99748 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab95200%_ __tmp99747))
                             (let ((__tmp99749
                                    (let ((__tmp99750
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95200%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99750 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95200%_
                                __tmp99749))))))
                    (if (eq? _%k95231%_ (macro-deleted-obj))
                        (_%loop95221%_
                         (let ((_%next-probe95238%_
                                (fx+ _%start95217%_
                                     _%i95226%_
                                     (fx* _%i95226%_ _%i95226%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95238%_ _%size95211%_))
                         (let () (declare (not safe)) (##fx+ _%i95226%_ '1))
                         (let ((_%$e95241%_ _%deleted95228%_))
                           (if _%$e95241%_ _%$e95241%_ _%probe95224%_)))
                        (if (eq? _%key95201%_ _%k95231%_)
                            (let ()
                              (vector-set!
                               _%table95205%_
                               _%probe95224%_
                               _%key95201%_)
                              (vector-set!
                               _%table95205%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95224%_ '1))
                               _%value95202%_))
                            (_%loop95221%_
                             (let ((_%next-probe95246%_
                                    (fx+ _%start95217%_
                                         _%i95226%_
                                         (fx* _%i95226%_ _%i95226%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95246%_ _%size95211%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95226%_ '1))
                             _%deleted95228%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab95195%_
               _%key95196%_
               _%method-specializer-table-update!95197%_
               _%default95198%_)
        (if (let ((__tmp99753
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab95195%_)))
                  (__tmp99751
                   (let ((__tmp99752
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab95195%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp99752 '4))))
              (declare (not safe))
              (##fx< __tmp99753 __tmp99751))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab95195%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab95195%_
         _%key95196%_
         _%method-specializer-table-update!95197%_
         _%default95198%_)))
    (define __method-specializer-table-update!
      (lambda (_%tab95145%_
               _%key95146%_
               _%method-specializer-table-update!95147%_
               _%default95148%_)
        (let ((_%table95151%_
               (let () (declare (not safe)) (&raw-table-table _%tab95145%_)))
              (_%seed95152%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95145%_))))
          (let* ((_%h95154%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key95146%_))
                         _%seed95152%_))
                 (_%size95157%_ (vector-length _%table95151%_))
                 (_%entries95160%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95157%_ '2)))
                 (_%start95163%_
                  (let ((__tmp99754
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95154%_ _%entries95160%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99754 '1))))
            (let _%loop95167%_ ((_%probe95170%_ _%start95163%_)
                                (_%i95172%_ '1)
                                (_%deleted95174%_ '#f))
              (let ((_%k95177%_ (vector-ref _%table95151%_ _%probe95170%_)))
                (if (eq? _%k95177%_ (macro-unused-obj))
                    (if _%deleted95174%_
                        (begin
                          (vector-set!
                           _%table95151%_
                           _%deleted95174%_
                           _%key95146%_)
                          (vector-set!
                           _%table95151%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted95174%_ '1))
                           (_%method-specializer-table-update!95147%_
                            _%default95148%_))
                          ((lambda ()
                             (let ((__tmp99755
                                    (let ((__tmp99756
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95145%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99756 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95145%_
                                __tmp99755)))))
                        (begin
                          (vector-set!
                           _%table95151%_
                           _%probe95170%_
                           _%key95146%_)
                          (vector-set!
                           _%table95151%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe95170%_ '1))
                           (_%method-specializer-table-update!95147%_
                            _%default95148%_))
                          ((lambda ()
                             (let ((__tmp99757
                                    (let ((__tmp99758
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab95145%_))))
                                      (declare (not safe))
                                      (##fx- __tmp99758 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab95145%_ __tmp99757))
                             (let ((__tmp99759
                                    (let ((__tmp99760
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95145%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99760 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95145%_
                                __tmp99759))))))
                    (if (eq? _%k95177%_ (macro-deleted-obj))
                        (_%loop95167%_
                         (let ((_%next-probe95184%_
                                (fx+ _%start95163%_
                                     _%i95172%_
                                     (fx* _%i95172%_ _%i95172%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95184%_ _%size95157%_))
                         (let () (declare (not safe)) (##fx+ _%i95172%_ '1))
                         (let ((_%$e95187%_ _%deleted95174%_))
                           (if _%$e95187%_ _%$e95187%_ _%probe95170%_)))
                        (if (eq? _%key95146%_ _%k95177%_)
                            (let ()
                              (vector-set!
                               _%table95151%_
                               _%probe95170%_
                               _%key95146%_)
                              (vector-set!
                               _%table95151%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95170%_ '1))
                               (_%method-specializer-table-update!95147%_
                                (vector-ref
                                 _%table95151%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe95170%_ '1))))))
                            (_%loop95167%_
                             (let ((_%next-probe95192%_
                                    (fx+ _%start95163%_
                                         _%i95172%_
                                         (fx* _%i95172%_ _%i95172%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95192%_ _%size95157%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95172%_ '1))
                             _%deleted95174%_))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab95100%_ _%key95102%_)
        (let ((_%table95105%_
               (let () (declare (not safe)) (&raw-table-table _%tab95100%_)))
              (_%seed95107%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95100%_))))
          (let* ((_%h95110%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key95102%_))
                         _%seed95107%_))
                 (_%size95113%_ (vector-length _%table95105%_))
                 (_%entries95116%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95113%_ '2)))
                 (_%start95119%_
                  (let ((__tmp99761
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95110%_ _%entries95116%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99761 '1))))
            (let _%loop95123%_ ((_%probe95126%_ _%start95119%_)
                                (_%i95128%_ '1))
              (let ((_%k95131%_ (vector-ref _%table95105%_ _%probe95126%_)))
                (if (eq? _%k95131%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k95131%_ (macro-deleted-obj))
                        (_%loop95123%_
                         (let ((_%next-probe95136%_
                                (fx+ _%start95119%_
                                     _%i95128%_
                                     (fx* _%i95128%_ _%i95128%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95136%_ _%size95113%_))
                         (let () (declare (not safe)) (##fx+ _%i95128%_ '1)))
                        (if (eq? _%key95102%_ _%k95131%_)
                            (let ()
                              (vector-set!
                               _%table95105%_
                               _%probe95126%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table95105%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95126%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp99762
                                        (let ((__tmp99763
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab95100%_))))
                                          (declare (not safe))
                                          (##fx- __tmp99763 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab95100%_
                                    __tmp99762)))))
                            (_%loop95123%_
                             (let ((_%next-probe95142%_
                                    (fx+ _%start95119%_
                                         _%i95128%_
                                         (fx* _%i95128%_ _%i95128%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95142%_ _%size95113%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95128%_ '1))))))))))))
    (define __method-specializers (make-method-specializer-table__% '#f '0))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc95091%_ _%specializer95092%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again95096%_ ()
            (if (let ((__tmp99764
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp99764 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again95096%_)))))
        (method-specializer-table-set!
         __method-specializers
         _%method-proc95091%_
         _%specializer95092%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc95081%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again95085%_ ()
            (if (let ((__tmp99765
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp99765 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again95085%_)))))
        (let ((_%specializer95089%_
               (method-specializer-table-ref
                __method-specializers
                _%proc95081%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer95089%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass95079%_)
        (let ((__tmp99766
               (let () (declare (not safe)) (##type-id _%klass95079%_))))
          (declare (not safe))
          (symbolic-hash __tmp99766))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint95060%_ _%seed95062%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint95060%_
           __class-specializer-hash-key
           eq?
           _%seed95062%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint95068%_ '#f) (_%seed95070%_ '0))
          (make-class-specializer-table__% _%size-hint95068%_ _%seed95070%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint95072%_)
        (let ((_%seed95074%_ '0))
          (make-class-specializer-table__% _%size-hint95072%_ _%seed95074%_))))
    (define make-class-specializer-table
      (lambda _g99768_
        (let ((_g99767_ (let () (declare (not safe)) (##length _g99768_))))
          (cond ((let () (declare (not safe)) (##fx= _g99767_ 0))
                 (apply make-class-specializer-table__0 _g99768_))
                ((let () (declare (not safe)) (##fx= _g99767_ 1))
                 (apply make-class-specializer-table__1 _g99768_))
                ((let () (declare (not safe)) (##fx= _g99767_ 2))
                 (apply make-class-specializer-table__% _g99768_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g99768_))))))
    (define class-specializer-table-ref
      (lambda (_%tab95013%_ _%key95014%_ _%default95015%_)
        (let ((_%table95017%_
               (let () (declare (not safe)) (&raw-table-table _%tab95013%_)))
              (_%seed95018%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95013%_))))
          (let* ((_%h95020%_
                  (fxxor (__class-specializer-hash-key _%key95014%_)
                         _%seed95018%_))
                 (_%size95023%_ (vector-length _%table95017%_))
                 (_%entries95026%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95023%_ '2)))
                 (_%start95029%_
                  (let ((__tmp99769
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95020%_ _%entries95026%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99769 '1))))
            (let _%loop95033%_ ((_%probe95036%_ _%start95029%_)
                                (_%i95038%_ '1)
                                (_%deleted95040%_ '#f))
              (let ((_%k95043%_ (vector-ref _%table95017%_ _%probe95036%_)))
                (if (eq? _%k95043%_ (macro-unused-obj))
                    _%default95015%_
                    (if (eq? _%k95043%_ (macro-deleted-obj))
                        (_%loop95033%_
                         (let ((_%next-probe95048%_
                                (fx+ _%start95029%_
                                     _%i95038%_
                                     (fx* _%i95038%_ _%i95038%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95048%_ _%size95023%_))
                         (let () (declare (not safe)) (##fx+ _%i95038%_ '1))
                         (let ((_%$e95051%_ _%deleted95040%_))
                           (if _%$e95051%_ _%$e95051%_ _%probe95036%_)))
                        (if (eq? _%key95014%_ _%k95043%_)
                            (vector-ref
                             _%table95017%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe95036%_ '1)))
                            (_%loop95033%_
                             (let ((_%next-probe95056%_
                                    (fx+ _%start95029%_
                                         _%i95038%_
                                         (fx* _%i95038%_ _%i95038%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95056%_ _%size95023%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95038%_ '1))
                             _%deleted95040%_))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab95009%_ _%key95010%_ _%value95011%_)
        (if (let ((__tmp99772
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab95009%_)))
                  (__tmp99770
                   (let ((__tmp99771
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab95009%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp99771 '4))))
              (declare (not safe))
              (##fx< __tmp99772 __tmp99770))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab95009%_))
            '#!void)
        (__class-specializer-table-set!
         _%tab95009%_
         _%key95010%_
         _%value95011%_)))
    (define __class-specializer-table-set!
      (lambda (_%tab94960%_ _%key94961%_ _%value94962%_)
        (let ((_%table94965%_
               (let () (declare (not safe)) (&raw-table-table _%tab94960%_)))
              (_%seed94966%_
               (let () (declare (not safe)) (&raw-table-seed _%tab94960%_))))
          (let* ((_%h94968%_
                  (fxxor (__class-specializer-hash-key _%key94961%_)
                         _%seed94966%_))
                 (_%size94971%_ (vector-length _%table94965%_))
                 (_%entries94974%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size94971%_ '2)))
                 (_%start94977%_
                  (let ((__tmp99773
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h94968%_ _%entries94974%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99773 '1))))
            (let _%loop94981%_ ((_%probe94984%_ _%start94977%_)
                                (_%i94986%_ '1)
                                (_%deleted94988%_ '#f))
              (let ((_%k94991%_ (vector-ref _%table94965%_ _%probe94984%_)))
                (if (eq? _%k94991%_ (macro-unused-obj))
                    (if _%deleted94988%_
                        (begin
                          (vector-set!
                           _%table94965%_
                           _%deleted94988%_
                           _%key94961%_)
                          (vector-set!
                           _%table94965%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted94988%_ '1))
                           _%value94962%_)
                          ((lambda ()
                             (let ((__tmp99774
                                    (let ((__tmp99775
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab94960%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99775 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab94960%_
                                __tmp99774)))))
                        (begin
                          (vector-set!
                           _%table94965%_
                           _%probe94984%_
                           _%key94961%_)
                          (vector-set!
                           _%table94965%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe94984%_ '1))
                           _%value94962%_)
                          ((lambda ()
                             (let ((__tmp99776
                                    (let ((__tmp99777
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab94960%_))))
                                      (declare (not safe))
                                      (##fx- __tmp99777 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab94960%_ __tmp99776))
                             (let ((__tmp99778
                                    (let ((__tmp99779
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab94960%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99779 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab94960%_
                                __tmp99778))))))
                    (if (eq? _%k94991%_ (macro-deleted-obj))
                        (_%loop94981%_
                         (let ((_%next-probe94998%_
                                (fx+ _%start94977%_
                                     _%i94986%_
                                     (fx* _%i94986%_ _%i94986%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe94998%_ _%size94971%_))
                         (let () (declare (not safe)) (##fx+ _%i94986%_ '1))
                         (let ((_%$e95001%_ _%deleted94988%_))
                           (if _%$e95001%_ _%$e95001%_ _%probe94984%_)))
                        (if (eq? _%key94961%_ _%k94991%_)
                            (let ()
                              (vector-set!
                               _%table94965%_
                               _%probe94984%_
                               _%key94961%_)
                              (vector-set!
                               _%table94965%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe94984%_ '1))
                               _%value94962%_))
                            (_%loop94981%_
                             (let ((_%next-probe95006%_
                                    (fx+ _%start94977%_
                                         _%i94986%_
                                         (fx* _%i94986%_ _%i94986%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95006%_ _%size94971%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i94986%_ '1))
                             _%deleted94988%_))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab94955%_
               _%key94956%_
               _%class-specializer-table-update!94957%_
               _%default94958%_)
        (if (let ((__tmp99782
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab94955%_)))
                  (__tmp99780
                   (let ((__tmp99781
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab94955%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp99781 '4))))
              (declare (not safe))
              (##fx< __tmp99782 __tmp99780))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab94955%_))
            '#!void)
        (__class-specializer-table-update!
         _%tab94955%_
         _%key94956%_
         _%class-specializer-table-update!94957%_
         _%default94958%_)))
    (define __class-specializer-table-update!
      (lambda (_%tab94905%_
               _%key94906%_
               _%class-specializer-table-update!94907%_
               _%default94908%_)
        (let ((_%table94911%_
               (let () (declare (not safe)) (&raw-table-table _%tab94905%_)))
              (_%seed94912%_
               (let () (declare (not safe)) (&raw-table-seed _%tab94905%_))))
          (let* ((_%h94914%_
                  (fxxor (__class-specializer-hash-key _%key94906%_)
                         _%seed94912%_))
                 (_%size94917%_ (vector-length _%table94911%_))
                 (_%entries94920%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size94917%_ '2)))
                 (_%start94923%_
                  (let ((__tmp99783
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h94914%_ _%entries94920%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99783 '1))))
            (let _%loop94927%_ ((_%probe94930%_ _%start94923%_)
                                (_%i94932%_ '1)
                                (_%deleted94934%_ '#f))
              (let ((_%k94937%_ (vector-ref _%table94911%_ _%probe94930%_)))
                (if (eq? _%k94937%_ (macro-unused-obj))
                    (if _%deleted94934%_
                        (begin
                          (vector-set!
                           _%table94911%_
                           _%deleted94934%_
                           _%key94906%_)
                          (vector-set!
                           _%table94911%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted94934%_ '1))
                           (_%class-specializer-table-update!94907%_
                            _%default94908%_))
                          ((lambda ()
                             (let ((__tmp99784
                                    (let ((__tmp99785
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab94905%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99785 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab94905%_
                                __tmp99784)))))
                        (begin
                          (vector-set!
                           _%table94911%_
                           _%probe94930%_
                           _%key94906%_)
                          (vector-set!
                           _%table94911%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe94930%_ '1))
                           (_%class-specializer-table-update!94907%_
                            _%default94908%_))
                          ((lambda ()
                             (let ((__tmp99786
                                    (let ((__tmp99787
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab94905%_))))
                                      (declare (not safe))
                                      (##fx- __tmp99787 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab94905%_ __tmp99786))
                             (let ((__tmp99788
                                    (let ((__tmp99789
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab94905%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99789 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab94905%_
                                __tmp99788))))))
                    (if (eq? _%k94937%_ (macro-deleted-obj))
                        (_%loop94927%_
                         (let ((_%next-probe94944%_
                                (fx+ _%start94923%_
                                     _%i94932%_
                                     (fx* _%i94932%_ _%i94932%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe94944%_ _%size94917%_))
                         (let () (declare (not safe)) (##fx+ _%i94932%_ '1))
                         (let ((_%$e94947%_ _%deleted94934%_))
                           (if _%$e94947%_ _%$e94947%_ _%probe94930%_)))
                        (if (eq? _%key94906%_ _%k94937%_)
                            (let ()
                              (vector-set!
                               _%table94911%_
                               _%probe94930%_
                               _%key94906%_)
                              (vector-set!
                               _%table94911%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe94930%_ '1))
                               (_%class-specializer-table-update!94907%_
                                (vector-ref
                                 _%table94911%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe94930%_ '1))))))
                            (_%loop94927%_
                             (let ((_%next-probe94952%_
                                    (fx+ _%start94923%_
                                         _%i94932%_
                                         (fx* _%i94932%_ _%i94932%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe94952%_ _%size94917%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i94932%_ '1))
                             _%deleted94934%_))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab94860%_ _%key94862%_)
        (let ((_%table94865%_
               (let () (declare (not safe)) (&raw-table-table _%tab94860%_)))
              (_%seed94867%_
               (let () (declare (not safe)) (&raw-table-seed _%tab94860%_))))
          (let* ((_%h94870%_
                  (fxxor (__class-specializer-hash-key _%key94862%_)
                         _%seed94867%_))
                 (_%size94873%_ (vector-length _%table94865%_))
                 (_%entries94876%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size94873%_ '2)))
                 (_%start94879%_
                  (let ((__tmp99790
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h94870%_ _%entries94876%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99790 '1))))
            (let _%loop94883%_ ((_%probe94886%_ _%start94879%_)
                                (_%i94888%_ '1))
              (let ((_%k94891%_ (vector-ref _%table94865%_ _%probe94886%_)))
                (if (eq? _%k94891%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k94891%_ (macro-deleted-obj))
                        (_%loop94883%_
                         (let ((_%next-probe94896%_
                                (fx+ _%start94879%_
                                     _%i94888%_
                                     (fx* _%i94888%_ _%i94888%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe94896%_ _%size94873%_))
                         (let () (declare (not safe)) (##fx+ _%i94888%_ '1)))
                        (if (eq? _%key94862%_ _%k94891%_)
                            (let ()
                              (vector-set!
                               _%table94865%_
                               _%probe94886%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table94865%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe94886%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp99791
                                        (let ((__tmp99792
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab94860%_))))
                                          (declare (not safe))
                                          (##fx- __tmp99792 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab94860%_
                                    __tmp99791)))))
                            (_%loop94883%_
                             (let ((_%next-probe94902%_
                                    (fx+ _%start94879%_
                                         _%i94888%_
                                         (fx* _%i94888%_ _%i94888%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe94902%_ _%size94873%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i94888%_ '1))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers (make-class-specializer-table__% '#f '0))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass94846%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94846%_ 'class))
            (let ((_%klass94850%_ _%klass94846%_))
              (__specialize-class _%klass94850%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1020.25-1020.30"
               'contract:
               'class-type?
               'value:
               _%klass94846%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass94828%_)
        (let* ((_%klass94831%_ _%klass94828%_)
               (_%$e94840%_ (__lookup-class-specializer _%klass94831%_)))
          (if _%$e94840%_
              _%$e94840%_
              (let ((_%method-table94844%_
                     (___specialize-class _%klass94831%_)))
                (__bind-class-specializer!
                 _%klass94831%_
                 _%method-table94844%_)
                _%method-table94844%_)))))
    (define __lookup-class-specializer
      (lambda (_%klass94818%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again94822%_ ()
            (if (let ((__tmp99793
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp99793 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again94822%_)))))
        (let ((_%method-table94826%_
               (class-specializer-table-ref
                __class-specializers
                _%klass94818%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table94826%_)))
    (define __bind-class-specializer!
      (lambda (_%klass94809%_ _%method-table94810%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again94814%_ ()
            (if (let ((__tmp99794
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp99794 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again94814%_)))))
        (class-specializer-table-set!
         __class-specializers
         _%klass94809%_
         _%method-table94810%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass94793%_
               _%method-table94794%_
               _%method94795%_
               _%proc94796%_)
        (let ((_%$e94798%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table94794%_
                  _%method94795%_
                  '#f))))
          (if _%$e94798%_
              _%$e94798%_
              (let ((_%$e94801%_ (__lookup-method-specializer _%proc94796%_)))
                (if _%$e94801%_
                    ((lambda (_%specialize94804%_)
                       (let ((_%specialized-proc94806%_
                              (_%specialize94804%_
                               _%klass94793%_
                               _%method-table94794%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table94794%_
                          _%method94795%_
                          _%specialized-proc94806%_)))
                     _%$e94801%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table94794%_
                       _%method94795%_
                       _%proc94796%_))))))))
    (define ___specialize-class
      (lambda (_%klass94735%_)
        (if (not (let ()
                   (declare (not safe))
                   (##structure-instance-of? _%klass94735%_ 'class)))
            (if (let () (declare (not safe)) (##type? _%klass94735%_))
                (__specialize-class (__shadow-class _%klass94735%_))
                (error '"bad class; cannot specialize" _%klass94735%_))
            (if (class-type-metaclass? _%klass94735%_)
                (let ((__method99640
                       (__method-ref _%klass94735%_ 'specialize-class)))
                  (if __method99640
                      (let ()
                        (declare (not safe))
                        (__method99640 _%klass94735%_))
                      (begin
                        (error '"Missing method"
                               _%klass94735%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp99795
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass94735%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp99795))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass94735%_)
                    (let ((_%method-table94741%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop94743%_ ((_%rest94745%_
                                           (class-precedence-list
                                            _%klass94735%_)))
                        (let* ((_%rest9474694754%_ _%rest94745%_)
                               (_%else9474894762%_
                                (lambda () _%method-table94741%_))
                               (_%K9475094781%_
                                (lambda (_%rest94765%_ _%xklass94766%_)
                                  (let ((_%xmethod-table9476794769%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass94766%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table9476794769%_
                                        (let* ((_%xmethod-table94772%_
                                                _%xmethod-table9476794769%_)
                                               (__tmp99796
                                                (lambda (_%g9477394776%_
                                                         _%g9477494778%_)
                                                  (__specialize-method
                                                   _%klass94735%_
                                                   _%method-table94741%_
                                                   _%g9477394776%_
                                                   _%g9477494778%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table94772%_
                                           __tmp99796))
                                        '#f))
                                  (_%loop94743%_ _%rest94765%_))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9474694754%_))
                              (let ((_%hd9475194784%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9474694754%_)))
                                    (_%tl9475294786%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9474694754%_))))
                                (let* ((_%xklass94789%_ _%hd9475194784%_)
                                       (_%rest94791%_ _%tl9475294786%_))
                                  (_%K9475094781%_
                                   _%rest94791%_
                                   _%xklass94789%_)))
                              (_%else9474894762%_))))))))))
    (define seal-class!
      (lambda (_%klass94721%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94721%_ 'class))
            (let ((_%klass94725%_ _%klass94721%_))
              (__seal-class! _%klass94725%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1077.20-1077.25"
               'contract:
               'class-type?
               'value:
               _%klass94721%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass94704%_)
        (let ((_%klass94707%_ _%klass94704%_))
          (if (__class-type-sealed? _%klass94707%_)
              '#!void
              (begin
                (if (__class-type-final? _%klass94707%_)
                    '#!void
                    (error '"cannot seal non-final class" _%klass94707%_))
                (if (__class-type-metaclass? _%klass94707%_)
                    (let ((__method99641
                           (__method-ref _%klass94707%_ 'seal-class!)))
                      (if __method99641
                          (let ()
                            (declare (not safe))
                            (__method99641 _%klass94707%_))
                          (begin
                            (error '"Missing method"
                                   _%klass94707%_
                                   'seal-class!)
                            '#!void)))
                    (if (let ((__tmp99797
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass94707%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp99797))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass94707%_)
                        (let ((_%method-table94719%_
                               (__specialize-class _%klass94707%_)))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass94707%_
                           _%method-table94719%_
                           '11
                           '#f
                           '#f))))
                (__class-type-seal! _%klass94707%_))))))
    (define next-method
      (lambda (_%subklass94678%_ _%obj94679%_ _%id94680%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass94678%_ 'class))
            (let ((_%subklass94684%_ _%subklass94678%_))
              (if (symbol? _%id94680%_)
                  (let ((_%id94694%_ _%id94680%_))
                    (__next-method _%subklass94684%_ _%obj94679%_ _%id94694%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1101.44-1101.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id94680%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1101.20-1101.28"
               'contract:
               'class-type?
               'value:
               _%subklass94678%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass94615%_ _%obj94616%_ _%id94617%_)
        (let* ((_%subklass94620%_ _%subklass94615%_) (_%id94628%_ _%id94617%_))
          (letrec ((_%find-next-method94637%_
                    (lambda (_%klass94639%_)
                      (let _%lp94641%_ ((_%rest94643%_
                                         (class-precedence-list
                                          _%klass94639%_)))
                        (let* ((_%rest9464494652%_ _%rest94643%_)
                               (_%else9464694660%_ (lambda () '#f))
                               (_%K9464894666%_
                                (lambda (_%rest94663%_ _%klass94664%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass94620%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass94664%_)))
                                      (__mixin-find-method
                                       _%rest94663%_
                                       _%obj94616%_
                                       _%id94628%_)
                                      (_%lp94641%_ _%rest94663%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9464494652%_))
                              (let ((_%hd9464994669%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9464494652%_)))
                                    (_%tl9465094671%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9464494652%_))))
                                (let* ((_%klass94674%_ _%hd9464994669%_)
                                       (_%rest94676%_ _%tl9465094671%_))
                                  (_%K9464894666%_
                                   _%rest94676%_
                                   _%klass94674%_)))
                              (_%else9464694660%_)))))))
            (_%find-next-method94637%_ (class-of _%obj94616%_))))))
    (define call-next-method
      (lambda (_%subklass94588%_ _%obj94589%_ _%id94590%_ . _%args94591%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass94588%_ 'class))
            (let ((_%subklass94595%_ _%subklass94588%_))
              (if (symbol? _%id94590%_)
                  (let ((_%id94605%_ _%id94590%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass94595%_
                             _%obj94589%_
                             _%id94605%_
                             _%args94591%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1112.49-1112.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id94590%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1112.25-1112.33"
               'contract:
               'class-type?
               'value:
               _%subklass94588%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass94559%_ _%obj94560%_ _%id94561%_ . _%args94562%_)
        (let* ((_%subklass94565%_ _%subklass94559%_)
               (_%id94573%_ _%id94561%_)
               (_%$e94582%_
                (__next-method _%subklass94565%_ _%obj94560%_ _%id94573%_)))
          (if _%$e94582%_
              ((lambda (_%methodf94585%_)
                 (apply _%methodf94585%_ _%obj94560%_ _%args94562%_))
               _%$e94582%_)
              (error '"cannot find next method"
                     'object:
                     _%obj94560%_
                     'method:
                     _%id94573%_)))))
    (define write-style
      (lambda (_%we94557%_) (macro-writeenv-style _%we94557%_)))
    (define write-object
      (lambda (_%we94548%_ _%obj94549%_)
        (let ((_%$e94551%_ (__method-ref _%obj94549%_ ':wr)))
          (if _%$e94551%_
              ((lambda (_%method94554%_)
                 (_%method94554%_ _%obj94549%_ _%we94548%_))
               _%$e94551%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we94548%_ _%obj94549%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type94463%_)
        (letrec ((_%shadow-type-id94465%_
                  (lambda (_%type94546%_)
                    (let ((__tmp99798
                           (let ()
                             (declare (not safe))
                             (##type-name _%type94546%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp99798 '"::t"))))
                 (_%shadow-type-name94466%_
                  (lambda (_%type94544%_)
                    (let () (declare (not safe)) (##type-name _%type94544%_))))
                 (_%make-shadow-class94467%_
                  (lambda (_%type94536%_ _%precedence-list94537%_)
                    (let* ((_%super94539%_
                            (if (pair? _%precedence-list94537%_)
                                (cons (car _%precedence-list94537%_) '())
                                '()))
                           (_%klass94541%_
                            (make-class-type
                             (_%shadow-type-id94465%_ _%type94536%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type94536%_))
                             _%super94539%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (if (__type-extensible? _%type94536%_)
                                             '()
                                             (cons (cons 'final: '#t) '()))))
                             '#f)))
                      (let ((__tmp99799
                             (let ()
                               (declare (not safe))
                               (##type-id _%type94536%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp99799
                         _%klass94541%_))
                      _%klass94541%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again94471%_ ()
              (if (let ((__tmp99800
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp99800 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (_%again94471%_)))))
          (let ((_%$e94475%_
                 (let ((__tmp99801
                        (let ()
                          (declare (not safe))
                          (##type-id _%type94463%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp99801 '#f))))
            (if _%$e94475%_
                ((lambda (_%klass94478%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass94478%_)
                 _%$e94475%_)
                (let _%loop94481%_ ((_%super94483%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-super _%type94463%_)))
                                    (_%hierarchy94484%_ '()))
                  (if (not _%super94483%_)
                      (let _%loop94487%_ ((_%rest94489%_ _%hierarchy94484%_)
                                          (_%precedence-list94490%_ '()))
                        (let* ((_%rest9449194499%_ _%rest94489%_)
                               (_%else9449394509%_
                                (lambda ()
                                  (let ((_%klass94507%_
                                         (_%make-shadow-class94467%_
                                          _%type94463%_
                                          _%precedence-list94490%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass94507%_)))
                               (_%K9449594523%_
                                (lambda (_%rest94512%_ _%type94513%_)
                                  (let ((_%$e94515%_
                                         (let ((__tmp99802
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type94513%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp99802
                                            '#f))))
                                    (if _%$e94515%_
                                        ((lambda (_%klass94518%_)
                                           (_%loop94487%_
                                            _%rest94512%_
                                            (cons _%klass94518%_
                                                  _%precedence-list94490%_)))
                                         _%$e94515%_)
                                        (let ((_%klass94521%_
                                               (_%make-shadow-class94467%_
                                                _%type94513%_
                                                _%precedence-list94490%_)))
                                          (_%loop94487%_
                                           _%rest94512%_
                                           (cons _%klass94521%_
                                                 _%precedence-list94490%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9449194499%_))
                              (let ((_%hd9449694526%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9449194499%_)))
                                    (_%tl9449794528%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9449194499%_))))
                                (let* ((_%type94531%_ _%hd9449694526%_)
                                       (_%rest94533%_ _%tl9449794528%_))
                                  (_%K9449594523%_
                                   _%rest94533%_
                                   _%type94531%_)))
                              (_%else9449394509%_))))
                      (_%loop94481%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super94483%_))
                       (cons _%super94483%_ _%hierarchy94484%_)))))))))
    (define class-of
      (lambda (_%obj94436%_)
        (let ()
          (declare (not interrupts-enabled))
          (let ((_%t94440%_
                 (let () (declare (not safe)) (##type _%obj94436%_))))
            (if (fx= _%t94440%_ (macro-type-subtyped))
                (let ((_%st94443%_
                       (let () (declare (not safe)) (##subtype _%obj94436%_))))
                  (if (fx= _%st94443%_ (macro-subtype-structure))
                      (let ((_%klass94446%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj94436%_))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of? _%klass94446%_ 'class))
                            _%klass94446%_
                            (__shadow-class _%klass94446%_)))
                      (if (fx= _%st94443%_ (macro-subtype-boxvalues))
                          (if (let ((__tmp99803
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _%obj94436%_))))
                                (declare (not safe))
                                (##fx= __tmp99803 '1))
                              (__system-class 'box)
                              (__system-class 'values))
                          (let ((_%$e94449%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref __subtype-id _%st94443%_))))
                            (if _%$e94449%_
                                (__system-class _%$e94449%_)
                                (error '"unknown class"
                                       'subtype:
                                       _%st94443%_
                                       'object:
                                       _%obj94436%_))))))
                (if (fx= _%t94440%_ (macro-type-mem2))
                    (__system-class 'pair)
                    (if (fx= _%t94440%_ (macro-type-fixnum))
                        (__system-class 'fixnum)
                        (if (char? _%obj94436%_)
                            (__system-class 'char)
                            (if (eq? _%obj94436%_ '())
                                (__system-class 'null)
                                (if (eq? _%obj94436%_ '#f)
                                    (__system-class 'boolean)
                                    (if (eq? _%obj94436%_ '#t)
                                        (__system-class 'boolean)
                                        (if (eq? _%obj94436%_ '#!void)
                                            (__system-class 'void)
                                            (if (eq? _%obj94436%_ '#!eof)
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
      (lambda (_%id94430%_)
        (let ((_%$e94432%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id94430%_ '#f))))
          (if _%$e94432%_
              _%$e94432%_
              (error '"unknown system class" _%id94430%_)))))
    (define __make-system-class
      (lambda (_%id94425%_ _%super94426%_)
        (let ((_%klass94428%_
               (make-class-type
                _%id94425%_
                _%id94425%_
                _%super94426%_
                '()
                '((system: . #t))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id94425%_ _%klass94428%_))
          _%klass94428%_)))))
