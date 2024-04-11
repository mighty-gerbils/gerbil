(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1712836656)
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
      (let ((_%flags98203%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties98204%_ '((direct-slots:) (system: . #t)))
            (_%slot-table98205%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags98203%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table98205%_
           _%properties98204%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots98179%_
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
             (_%slot-vector98181%_ (list->vector (cons '#f _%slots98179%_)))
             (_%slot-table98188%_
              (let ((_%slot-table98183%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp99646
                       (lambda (_%slot98185%_ _%field98186%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table98183%_
                            _%slot98185%_
                            _%field98186%_))
                         (let ((__tmp99647
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot98185%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table98183%_
                            __tmp99647
                            _%field98186%_))))
                      (__tmp99644
                       (let ((__tmp99645
                              (let ()
                                (declare (not safe))
                                (##length _%slots98179%_))))
                         (declare (not safe))
                         (##iota __tmp99645 '1))))
                  (declare (not safe))
                  (##for-each __tmp99646 _%slots98179%_ __tmp99644))
                _%slot-table98183%_))
             (_%flags98190%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields98196%_
              (list->vector
               (let ((__tmp99648
                      (map (lambda (_%g9819198193%_)
                             (list _%g9819198193%_ '5 '#f))
                           (drop _%slots98179%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp99648))))
             (_%properties98198%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots98179%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t98200%_
              (let ((__tmp99649 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags98190%_
                 ##type-type
                 _%fields98196%_
                 __tmp99649
                 _%slot-vector98181%_
                 _%slot-table98188%_
                 _%properties98198%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t98200%_ _%t98200%_))
        _%t98200%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags98175%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties98176%_ '((direct-slots:) (system: . #t)))
            (_%slot-table98177%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp99650 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags98175%_
           '#f
           '#()
           __tmp99650
           '#(#f)
           _%slot-table98177%_
           _%properties98176%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj98173%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj98173%_ 'class))))
    (define class-type=?
      (lambda (_%x98148%_ _%y98149%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x98148%_ 'class))
            (let ((_%x98153%_ _%x98148%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y98149%_ 'class))
                  (let ((_%y98163%_ _%y98149%_))
                    (__class-type=? _%x98153%_ _%y98163%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y98149%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x98148%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x98127%_ _%y98128%_)
        (let* ((_%x98131%_ _%x98127%_) (_%y98139%_ _%y98128%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x98131%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y98139%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type98113%_)
        (if (let () (declare (not safe)) (##type? _%type98113%_))
            (let ((_%type98117%_ _%type98113%_))
              (__type-opaque? _%type98117%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type98113%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type98101%_)
        (let* ((_%type98104%_ _%type98101%_)
               (__tmp99651
                (let ((__tmp99652
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type98104%_))))
                  (declare (not safe))
                  (##fxand __tmp99652 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp99651 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type98087%_)
        (if (let () (declare (not safe)) (##type? _%type98087%_))
            (let ((_%type98091%_ _%type98087%_))
              (__type-extensible? _%type98091%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type98087%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type98075%_)
        (let* ((_%type98078%_ _%type98075%_)
               (__tmp99653
                (let ((__tmp99654
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type98078%_))))
                  (declare (not safe))
                  (##fxand __tmp99654 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp99653 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type98061%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type98061%_ 'class))
            (let ((_%type98065%_ _%type98061%_))
              (__class-type-final? _%type98065%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type98061%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type98049%_)
        (let* ((_%type98052%_ _%type98049%_)
               (__tmp99655
                (let ((__tmp99656
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type98052%_))))
                  (declare (not safe))
                  (##fxand __tmp99656 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp99655 '0))))
    (define class-type-struct?
      (lambda (_%klass98035%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98035%_ 'class))
            (let ((_%klass98039%_ _%klass98035%_))
              (__class-type-struct? _%klass98039%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass98035%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass98023%_)
        (let* ((_%klass98026%_ _%klass98023%_)
               (__tmp99657
                (let ((__tmp99658
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass98026%_))))
                  (declare (not safe))
                  (##fxand __tmp99658 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp99657 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass98009%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98009%_ 'class))
            (let ((_%klass98013%_ _%klass98009%_))
              (__class-type-sealed? _%klass98013%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass98009%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass97997%_)
        (let* ((_%klass98000%_ _%klass97997%_)
               (__tmp99659
                (let ((__tmp99660
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass98000%_))))
                  (declare (not safe))
                  (##fxand __tmp99660 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp99659 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass97983%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97983%_ 'class))
            (let ((_%klass97987%_ _%klass97983%_))
              (__class-type-metaclass? _%klass97987%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass97983%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass97971%_)
        (let* ((_%klass97974%_ _%klass97971%_)
               (__tmp99661
                (let ((__tmp99662
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass97974%_))))
                  (declare (not safe))
                  (##fxand __tmp99662 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp99661 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass97957%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97957%_ 'class))
            (let ((_%klass97961%_ _%klass97957%_))
              (__class-type-system? _%klass97961%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass97957%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass97945%_)
        (let* ((_%klass97948%_ _%klass97945%_)
               (__tmp99663
                (let ((__tmp99664
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass97948%_))))
                  (declare (not safe))
                  (##fxand __tmp99664 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp99663 class-type-flag-system))))
    (define make-class-type-descriptor
      (lambda (_%type-id97830%_
               _%type-name97831%_
               _%type-super97832%_
               _%precedence-list97833%_
               _%slot-vector97834%_
               _%properties97835%_
               _%constructor97836%_
               _%slot-table97837%_
               _%methods97838%_)
        (letrec ((_%make-props!97841%_
                  (lambda (_%key97914%_)
                    (letrec* ((_%ht97916%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!97917%_
                               (lambda (_%ht97938%_ _%slots97939%_)
                                 (for-each
                                  (lambda (_%g9794097942%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht97938%_
                                       _%g9794097942%_
                                       '#t)))
                                  _%slots97939%_)))
                              (_%put-alist!97918%_
                               (lambda (_%ht97927%_
                                        _%key97928%_
                                        _%alist97929%_)
                                 (let ((_%$e97931%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key97928%_
                                           _%alist97929%_))))
                                   (if _%$e97931%_
                                       ((lambda (_%g9793397935%_)
                                          (_%put-slots!97917%_
                                           _%ht97927%_
                                           _%g9793397935%_))
                                        _%$e97931%_)
                                       '#!void)))))
                      (_%put-alist!97918%_
                       _%ht97916%_
                       _%key97914%_
                       _%properties97835%_)
                      (for-each
                       (lambda (_%mixin97920%_)
                         (let ((_%alist97922%_
                                (##structure-ref
                                 _%mixin97920%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist97922%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key97914%_
                                           _%alist97922%_))))
                               (_%put-slots!97917%_
                                _%ht97916%_
                                (class-type-slot-list _%mixin97920%_))
                               (_%put-alist!97918%_
                                _%ht97916%_
                                _%key97914%_
                                _%alist97922%_))))
                       _%precedence-list97833%_)
                      _%ht97916%_))))
          (let* ((_%transparent?97843%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties97835%_)))
                 (_%all-slots-printable?97848%_
                  (let ((_%$e97845%_ _%transparent?97843%_))
                    (if _%$e97845%_
                        _%$e97845%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties97835%_))))))
                 (_%printable97850%_
                  (if (not _%all-slots-printable?97848%_)
                      (_%make-props!97841%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?97855%_
                  (let ((_%$e97852%_ _%transparent?97843%_))
                    (if _%$e97852%_
                        _%$e97852%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties97835%_))))))
                 (_%equalable97857%_
                  (if (not _%all-slots-equalable?97855%_)
                      (_%make-props!97841%_ 'equal:)
                      '#f))
                 (_%first-new-field97859%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super97832%_ 'class))
                      (let ((__tmp99665
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super97832%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp99665))
                      '1))
                 (_%field-info-length97861%_
                  (let ((__tmp99666
                         (let ((__tmp99667
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector97834%_))))
                           (declare (not safe))
                           (##fx- __tmp99667 _%first-new-field97859%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp99666)))
                 (_%field-info97863%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length97861%_ '#f)))
                 (_%struct?97865%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties97835%_)))
                 (_%final?97867%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties97835%_)))
                 (_%metaclass97875%_
                  (let ((_%metaclass9786897870%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties97835%_))))
                    (if _%metaclass9786897870%_
                        (let ((_%metaclass97873%_ _%metaclass9786897870%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass97873%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id97830%_
                                     'metaclass:
                                     _%metaclass97873%_))
                          _%metaclass97873%_)
                        '#f)))
                 (_%system?97877%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties97835%_)))
                 (_%opaque?97882%_
                  (let ((_%$e97879%_ (not _%all-slots-equalable?97855%_)))
                    (if _%$e97879%_
                        _%$e97879%_
                        (if _%type-super97832%_
                            (__type-opaque? _%type-super97832%_)
                            '#f))))
                 (_%type-flags97884%_
                  (let ((__tmp99672
                         (if _%final?97867%_ '0 type-flag-extensible))
                        (__tmp99671 (if _%opaque?97882%_ type-flag-opaque '0))
                        (__tmp99670
                         (if _%struct?97865%_ class-type-flag-struct '0))
                        (__tmp99669
                         (if _%metaclass97875%_ class-type-flag-metaclass '0))
                        (__tmp99668
                         (if _%system?97877%_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp99672
                             __tmp99671
                             __tmp99670
                             __tmp99669
                             __tmp99668)))
                 (_%precedence-list97892%_
                  (let ((_%$e97886%_ (memq t::t _%precedence-list97833%_)))
                    (if _%$e97886%_
                        ((lambda (_%tail97889%_)
                           (if (null? (cdr _%tail97889%_))
                               _%precedence-list97833%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list97833%_)))
                         _%$e97886%_)
                        (let ((__tmp99673 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list97833%_ __tmp99673))))))
            (let _%loop97895%_ ((_%i97897%_ _%first-new-field97859%_)
                                (_%j97898%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j97898%_ _%field-info-length97861%_))
                  (let* ((_%slot97900%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector97834%_ _%i97897%_)))
                         (_%flags97908%_
                          (if _%transparent?97843%_
                              '0
                              (let ((__tmp99675
                                     (if (or _%all-slots-printable?97848%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable97850%_
                                                _%slot97900%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp99674
                                     (if (or _%all-slots-equalable?97855%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable97857%_
                                                _%slot97900%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp99675 __tmp99674)))))
                    (vector-set! _%field-info97863%_ _%j97898%_ _%slot97900%_)
                    (vector-set!
                     _%field-info97863%_
                     (let () (declare (not safe)) (##fx+ _%j97898%_ '1))
                     _%flags97908%_)
                    (_%loop97895%_
                     (let () (declare (not safe)) (##fx+ _%i97897%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j97898%_ '3))))
                  '#!void))
            (if _%metaclass97875%_
                (let ((_%val97911%_
                       (make-instance
                        _%metaclass97875%_
                        _%type-id97830%_
                        _%type-name97831%_
                        _%type-flags97884%_
                        _%type-super97832%_
                        _%field-info97863%_
                        _%precedence-list97892%_
                        _%slot-vector97834%_
                        _%slot-table97837%_
                        _%properties97835%_
                        _%constructor97836%_
                        _%methods97838%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val97911%_ 'class))
                      _%val97911%_
                      (error '"bad cast" class::t _%val97911%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id97830%_
                   _%type-name97831%_
                   _%type-flags97884%_
                   _%type-super97832%_
                   _%field-info97863%_
                   _%precedence-list97892%_
                   _%slot-vector97834%_
                   _%slot-table97837%_
                   _%properties97835%_
                   _%constructor97836%_
                   _%methods97838%_)))))))
    (define class-type-id
      (lambda (_%klass97828%_)
        (##structure-ref _%klass97828%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass97826%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97826%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass97823%_ _%val97824%_)
        (##structure-set! _%klass97823%_ _%val97824%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass97818%_ _%val97820%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97818%_
           _%val97820%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass97816%_)
        (##structure-ref _%klass97816%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass97814%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97814%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass97811%_ _%val97812%_)
        (##structure-set! _%klass97811%_ _%val97812%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass97806%_ _%val97808%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97806%_
           _%val97808%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass97804%_)
        (##structure-ref _%klass97804%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass97802%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97802%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass97799%_ _%val97800%_)
        (##structure-set! _%klass97799%_ _%val97800%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass97794%_ _%val97796%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97794%_
           _%val97796%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass97792%_)
        (##structure-ref _%klass97792%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass97790%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97790%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass97787%_ _%val97788%_)
        (##structure-set! _%klass97787%_ _%val97788%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass97782%_ _%val97784%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97782%_
           _%val97784%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass97780%_)
        (##structure-ref _%klass97780%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass97778%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97778%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass97775%_ _%val97776%_)
        (##structure-set! _%klass97775%_ _%val97776%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass97770%_ _%val97772%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97770%_
           _%val97772%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass97768%_)
        (##structure-ref _%klass97768%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass97766%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass97766%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass97763%_ _%val97764%_)
        (##structure-set!
         _%klass97763%_
         _%val97764%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass97758%_ _%val97760%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97758%_
           _%val97760%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass97756%_)
        (##structure-ref _%klass97756%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass97754%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass97754%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass97751%_ _%val97752%_)
        (##structure-set!
         _%klass97751%_
         _%val97752%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass97746%_ _%val97748%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97746%_
           _%val97748%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass97744%_)
        (##structure-ref _%klass97744%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass97742%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97742%_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass97739%_ _%val97740%_)
        (##structure-set!
         _%klass97739%_
         _%val97740%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass97734%_ _%val97736%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97734%_
           _%val97736%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass97732%_)
        (##structure-ref _%klass97732%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass97730%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97730%_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_%klass97727%_ _%val97728%_)
        (##structure-set!
         _%klass97727%_
         _%val97728%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass97722%_ _%val97724%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97722%_
           _%val97724%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass97720%_)
        (##structure-ref _%klass97720%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass97718%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass97718%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass97715%_ _%val97716%_)
        (##structure-set!
         _%klass97715%_
         _%val97716%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass97710%_ _%val97712%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97710%_
           _%val97712%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass97708%_)
        (##structure-ref _%klass97708%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass97706%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97706%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass97703%_ _%val97704%_)
        (##structure-set! _%klass97703%_ _%val97704%_ '11 class::t 'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass97698%_ _%val97700%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97698%_
           _%val97700%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass97684%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97684%_ 'class))
            (let ((_%klass97688%_ _%klass97684%_))
              (__class-type-slot-list _%klass97688%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass97684%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass97672%_)
        (let ((_%klass97675%_ _%klass97672%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass97675%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass97658%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97658%_ 'class))
            (let ((_%klass97662%_ _%klass97658%_))
              (__class-type-field-count _%klass97662%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass97658%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass97646%_)
        (let* ((_%klass97649%_ _%klass97646%_)
               (__tmp99676
                (let ((__tmp99677
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass97649%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp99677))))
          (declare (not safe))
          (##fx- __tmp99676 '1))))
    (define class-type-seal!
      (lambda (_%klass97632%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97632%_ 'class))
            (let ((_%klass97636%_ _%klass97632%_))
              (__class-type-seal! _%klass97636%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass97632%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass97620%_)
        (let ((_%klass97623%_ _%klass97620%_))
          (let ((__tmp99678
                 (let ((__tmp99679
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass97623%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp99679))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass97623%_
             __tmp99678
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct97595%_ _%maybe-super-struct97596%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct97595%_ 'class))
            (let ((_%maybe-sub-struct97600%_ _%maybe-sub-struct97595%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct97596%_
                     'class))
                  (let ((_%maybe-super-struct97610%_
                         _%maybe-super-struct97596%_))
                    (__substruct?
                     _%maybe-sub-struct97600%_
                     _%maybe-super-struct97610%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct97596%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct97595%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct97564%_ _%maybe-super-struct97565%_)
        (let* ((_%maybe-sub-struct97568%_ _%maybe-sub-struct97564%_)
               (_%maybe-super-struct97576%_ _%maybe-super-struct97565%_)
               (_%maybe-super-struct-id97585%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct97576%_))))
          (let _%lp97587%_ ((_%super-struct97589%_ _%maybe-sub-struct97568%_))
            (if (not _%super-struct97589%_)
                '#f
                (if (eq? _%maybe-super-struct-id97585%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct97589%_)))
                    '#t
                    (_%lp97587%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct97589%_)))))))))
    (define base-struct/1
      (lambda (_%klass97559%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97559%_ 'class))
            (if (__class-type-struct? _%klass97559%_)
                _%klass97559%_
                (let () (declare (not safe)) (##type-super _%klass97559%_)))
            (if (not _%klass97559%_)
                '#f
                (error '"not a class or false" _%klass97559%_)))))
    (define base-struct/2
      (lambda (_%klass197544%_ _%klass297545%_)
        (let ((_%s197547%_ (base-struct/1 _%klass197544%_))
              (_%s297548%_ (base-struct/1 _%klass297545%_)))
          (if (or (not _%s197547%_)
                  (and _%s297548%_ (substruct? _%s197547%_ _%s297548%_)))
              _%s297548%_
              (if (or (not _%s297548%_)
                      (and _%s197547%_ (substruct? _%s297548%_ _%s197547%_)))
                  _%s197547%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass197544%_
                         _%klass297545%_
                         _%s197547%_
                         _%s297548%_))))))
    (define base-struct/list
      (lambda (_%all-supers97428%_)
        (let* ((_%all-supers9742997454%_ _%all-supers97428%_)
               (_%E9743497458%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers9742997454%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K9745297541%_ (lambda () '#f))
                (_%K9744997527%_
                 (lambda (_%x97525%_) (base-struct/1 _%x97525%_)))
                (_%K9744497504%_
                 (lambda (_%y97501%_ _%x97502%_)
                   (base-struct/2 _%x97502%_ _%y97501%_)))
                (_%K9743597465%_
                 (lambda (_%y97462%_ _%x97463%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x97463%_ _%y97462%_)))))
            (let* ((_%__match9963899639%_
                    (lambda (_%hd9743697468%_ _%tl9743797470%_)
                      (let ((_%x97473%_ _%hd9743697468%_))
                        (letrec ((_%splice-rest9743997475%_
                                  (lambda (_%rest9744397482%_ _%y97484%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%rest9744397482%_))
                                        (_%K9743597465%_ _%y97484%_ _%x97473%_)
                                        (_%E9743497458%_))))
                                 (_%splice-try9744197477%_
                                  (lambda (_%hd9744297486%_
                                           _%rest9744397488%_
                                           _%y9743897489%_)
                                    (let ((_%y97492%_ _%hd9744297486%_))
                                      (_%splice-loop9744097479%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest9744397488%_))
                                       (cons _%y97492%_ _%y9743897489%_)))))
                                 (_%splice-loop9744097479%_
                                  (lambda (_%rest9744397494%_ _%y9743897495%_)
                                    (if (pair? _%rest9744397494%_)
                                        (_%splice-try9744197477%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest9744397494%_))
                                         _%rest9744397494%_
                                         _%y9743897495%_)
                                        (_%splice-rest9743997475%_
                                         _%rest9744397494%_
                                         (reverse _%y9743897495%_))))))
                          (_%splice-loop9744097479%_ _%tl9743797470%_ '())))))
                   (_%try-match9743197537%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all-supers9742997454%_))
                          (let ((_%tl9745197532%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers9742997454%_)))
                                (_%hd9745097530%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers9742997454%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl9745197532%_))
                                (let ((_%x97535%_ _%hd9745097530%_))
                                  (base-struct/1 _%x97535%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl9745197532%_))
                                    (let ((_%tl9744897516%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl9745197532%_)))
                                          (_%hd9744797514%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl9745197532%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl9744897516%_))
                                          (let ((_%x97512%_ _%hd9745097530%_)
                                                (_%y97519%_ _%hd9744797514%_))
                                            (_%K9744497504%_
                                             _%y97519%_
                                             _%x97512%_))
                                          (_%__match9963899639%_
                                           _%hd9745097530%_
                                           _%tl9745197532%_)))
                                    (_%__match9963899639%_
                                     _%hd9745097530%_
                                     _%tl9745197532%_))))
                          (_%E9743497458%_)))))
              (if (let ()
                    (declare (not safe))
                    (##null? _%all-supers9742997454%_))
                  (_%K9745297541%_)
                  (_%try-match9743197537%_)))))))
    (define base-struct
      (lambda _%all-supers97426%_ (base-struct/list _%all-supers97426%_)))
    (define find-super-constructor
      (lambda (_%super97377%_)
        (let _%lp97379%_ ((_%rest97381%_ _%super97377%_)
                          (_%constructor97382%_ '#f))
          (let* ((_%rest9738397391%_ _%rest97381%_)
                 (_%else9738597399%_ (lambda () _%constructor97382%_))
                 (_%K9738797414%_
                  (lambda (_%rest97402%_ _%hd97403%_)
                    (let ((_%$e97405%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd97403%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e97405%_
                          ((lambda (_%xconstructor97408%_)
                             (if (or (not _%constructor97382%_)
                                     (eq? _%constructor97382%_
                                          _%xconstructor97408%_))
                                 (_%lp97379%_
                                  _%rest97402%_
                                  _%xconstructor97408%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor97382%_
                                        _%xconstructor97408%_)))
                           _%$e97405%_)
                          (_%lp97379%_ _%rest97402%_ _%constructor97382%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest9738397391%_))
                (let ((_%hd9738897417%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9738397391%_)))
                      (_%tl9738997419%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9738397391%_))))
                  (let* ((_%hd97422%_ _%hd9738897417%_)
                         (_%rest97424%_ _%tl9738997419%_))
                    (_%K9738797414%_ _%rest97424%_ _%hd97422%_)))
                (_%else9738597399%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list97353%_ _%direct-slots97354%_)
        (let* ((_%next-slot97356%_ '1)
               (_%slot-table97358%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots97360%_ '(__class))
               (_%process-slot97364%_
                (lambda (_%slot97362%_)
                  (if (symbol? _%slot97362%_)
                      '#!void
                      (error '"invalid slot name" _%slot97362%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table97358%_
                              _%slot97362%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table97358%_
                           _%slot97362%_
                           _%next-slot97356%_))
                        (let ((__tmp99680
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot97362%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table97358%_
                           __tmp99680
                           _%next-slot97356%_))
                        (set! _%r-slots97360%_
                              (cons _%slot97362%_ _%r-slots97360%_))
                        (set! _%next-slot97356%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot97356%_ '1))))
                      '#!void)))
               (_%process-slots97370%_
                (lambda (_%g9736597367%_)
                  (for-each _%process-slot97364%_ _%g9736597367%_))))
          (let ((__tmp99682
                 (lambda (_%mixin97373%_)
                   (_%process-slots97370%_
                    (let ((__tmp99683
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin97373%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp99683 '())))))
                (__tmp99681 (reverse _%class-precedence-list97353%_)))
            (declare (not safe))
            (##for-each __tmp99682 __tmp99681))
          (_%process-slots97370%_ _%direct-slots97354%_)
          (let ((_%slot-vector97375%_
                 (list->vector
                  (let () (declare (not safe)) (##reverse _%r-slots97360%_)))))
            (values _%slot-vector97375%_ _%slot-table97358%_)))))
    (define make-class-type
      (lambda (_%id97278%_
               _%name97279%_
               _%direct-supers97280%_
               _%direct-slots97281%_
               _%properties97282%_
               _%constructor97283%_)
        (if (symbol? _%id97278%_)
            (let ((_%id97287%_ _%id97278%_))
              (if (symbol? _%name97279%_)
                  (let ((_%name97297%_ _%name97279%_))
                    (if (list? _%direct-supers97280%_)
                        (let ((_%direct-supers97307%_ _%direct-supers97280%_))
                          (if (list? _%direct-slots97281%_)
                              (let ((_%direct-slots97317%_
                                     _%direct-slots97281%_))
                                (if (list? _%properties97282%_)
                                    (let ((_%properties97327%_
                                           _%properties97282%_))
                                      (if ((lambda (_%$obj97336%_)
                                             (or (not _%$obj97336%_)
                                                 (symbol? _%$obj97336%_)))
                                           _%constructor97283%_)
                                          (let ((_%constructor97343%_
                                                 _%constructor97283%_))
                                            (__make-class-type
                                             _%id97287%_
                                             _%name97297%_
                                             _%direct-supers97307%_
                                             _%direct-slots97317%_
                                             _%properties97327%_
                                             _%constructor97343%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor97283%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties97282%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots97281%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers97280%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name97279%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id97278%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id97147%_
               _%name97148%_
               _%direct-supers97149%_
               _%direct-slots97150%_
               _%properties97151%_
               _%constructor97152%_)
        (let* ((_%id97155%_ _%id97147%_)
               (_%name97163%_ _%name97148%_)
               (_%direct-supers97171%_ _%direct-supers97149%_)
               (_%direct-slots97179%_ _%direct-slots97150%_)
               (_%properties97187%_ _%properties97151%_)
               (_%constructor97195%_ _%constructor97152%_))
          (let ((_%$e97207%_
                 (let ((__tmp99684
                        (lambda (_%$obj97204%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj97204%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp99684 _%direct-supers97171%_))))
            (if _%$e97207%_
                ((lambda (_%g9720997211%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g9720997211%_))
                 _%$e97207%_)
                (let ((_%$e97214%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final? _%direct-supers97171%_))))
                  (if _%$e97214%_
                      ((lambda (_%g9721697218%_)
                         (error '"Cannot extend final class" _%g9721697218%_))
                       _%$e97214%_)
                      '#!void))))
          (let ((_g99685_ (compute-precedence-list _%direct-supers97171%_)))
            (begin
              (let ((_g99686_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g99685_)
                           (##vector-length _g99685_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g99686_ 2)))
                    (error "Context expects 2 values" _g99686_)))
              (let ((_%precedence-list97221%_
                     (let () (declare (not safe)) (##vector-ref _g99685_ 0)))
                    (_%struct-super97222%_
                     (let () (declare (not safe)) (##vector-ref _g99685_ 1))))
                (let ((_g99687_
                       (compute-class-slots
                        _%precedence-list97221%_
                        _%direct-slots97179%_)))
                  (begin
                    (let ((_g99688_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g99687_)
                                 (##vector-length _g99687_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g99688_ 2)))
                          (error "Context expects 2 values" _g99688_)))
                    (let ((_%slot-vector97224%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g99687_ 0)))
                          (_%slot-table97225%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g99687_ 1))))
                      (let* ((_%properties97227%_
                              (cons (cons 'direct-slots: _%direct-slots97179%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers97171%_)
                                          _%properties97187%_)))
                             (_%constructor*97232%_
                              (let ((_%$e97229%_ _%constructor97195%_))
                                (if _%$e97229%_
                                    _%$e97229%_
                                    (find-super-constructor
                                     _%direct-supers97171%_))))
                             (_%precedence-list97275%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties97227%_))
                                      (memq object::t
                                            _%precedence-list97221%_))
                                  _%precedence-list97221%_
                                  (let _%loop97237%_ ((_%tail97239%_
                                                       _%precedence-list97221%_)
                                                      (_%head97240%_ '()))
                                    (let* ((_%tail9724197249%_ _%tail97239%_)
                                           (_%else9724397257%_
                                            (lambda ()
                                              (let ((__tmp99689
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp99689
                                                 _%head97240%_))))
                                           (_%K9724597263%_
                                            (lambda (_%rest97260%_ _%hd97261%_)
                                              (if (eq? _%hd97261%_ t::t)
                                                  (let ((__tmp99690
                                                         (cons object::t
                                                               _%tail97239%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp99690
                                                     _%head97240%_))
                                                  (_%loop97237%_
                                                   _%rest97260%_
                                                   (cons _%hd97261%_
                                                         _%head97240%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tail9724197249%_))
                                          (let ((_%hd9724697266%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail9724197249%_)))
                                                (_%tl9724797268%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail9724197249%_))))
                                            (let* ((_%hd97271%_
                                                    _%hd9724697266%_)
                                                   (_%rest97273%_
                                                    _%tl9724797268%_))
                                              (_%K9724597263%_
                                               _%rest97273%_
                                               _%hd97271%_)))
                                          (_%else9724397257%_)))))))
                        (make-class-type-descriptor
                         _%id97155%_
                         _%name97163%_
                         _%struct-super97222%_
                         _%precedence-list97275%_
                         _%slot-vector97224%_
                         _%properties97227%_
                         _%constructor*97232%_
                         _%slot-table97225%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass97133%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97133%_ 'class))
            (let ((_%klass97137%_ _%klass97133%_))
              (__class-precedence-list _%klass97137%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass97133%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass97121%_)
        (let ((_%klass97124%_ _%klass97121%_))
          (cons _%klass97124%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass97124%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers97118%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers97118%_))))
    (define make-class-predicate
      (lambda (_%klass97104%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97104%_ 'class))
            (let ((_%klass97108%_ _%klass97104%_))
              (__make-class-predicate _%klass97108%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass97104%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass97075%_)
        (let* ((_%klass97078%_ _%klass97075%_)
               (_%tid97087%_
                (let () (declare (not safe)) (##type-id _%klass97078%_))))
          (if (__class-type-final? _%klass97078%_)
              (lambda (_%g9708997091%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g9708997091%_
                   _%tid97087%_)))
              (if (__class-type-struct? _%klass97078%_)
                  (lambda (_%g9709497096%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%g9709497096%_ _%tid97087%_)))
                  (lambda (_%g9709997101%_)
                    (__class-instance? _%klass97078%_ _%g9709997101%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass97050%_ _%slot97051%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97050%_ 'class))
            (let ((_%klass97055%_ _%klass97050%_))
              (if (symbol? _%slot97051%_)
                  (let ((_%slot97065%_ _%slot97051%_))
                    (__make-class-slot-accessor _%klass97055%_ _%slot97065%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot97051%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass97050%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass97018%_ _%slot97019%_)
        (let* ((_%klass97022%_ _%klass97018%_)
               (_%slot97030%_ _%slot97019%_)
               (_%field97039%_
                (let ((__tmp99691
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass97022%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp99691 _%slot97030%_ '#f))))
          (if (not _%field97039%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass97022%_
                       'slot:
                       _%slot97030%_)
                '#!void)
              (if (__class-type-final? _%klass97022%_)
                  (make-final-slot-accessor
                   _%klass97022%_
                   _%slot97030%_
                   _%field97039%_)
                  (if (__class-type-struct? _%klass97022%_)
                      (make-struct-slot-accessor
                       _%klass97022%_
                       _%slot97030%_
                       _%field97039%_)
                      (if (let ((_%strukt97045%_
                                 (base-struct/1 _%klass97022%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt97045%_
                                    'class))
                                 (let ((__tmp99692
                                        (let ((__tmp99693
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt97045%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp99693))))
                                   (declare (not safe))
                                   (##fx< _%field97039%_ __tmp99692))))
                          (make-struct-subclass-slot-accessor
                           _%klass97022%_
                           _%slot97030%_
                           _%field97039%_)
                          (make-class-cached-slot-accessor
                           _%klass97022%_
                           _%slot97030%_
                           _%field97039%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass96993%_ _%slot96994%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96993%_ 'class))
            (let ((_%klass96998%_ _%klass96993%_))
              (if (symbol? _%slot96994%_)
                  (let ((_%slot97008%_ _%slot96994%_))
                    (__make-class-slot-mutator _%klass96998%_ _%slot97008%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot96994%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass96993%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass96961%_ _%slot96962%_)
        (let* ((_%klass96965%_ _%klass96961%_)
               (_%slot96973%_ _%slot96962%_)
               (_%field96982%_
                (let ((__tmp99694
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass96965%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp99694 _%slot96973%_ '#f))))
          (if (not _%field96982%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass96965%_
                       'slot:
                       _%slot96973%_)
                '#!void)
              (if (__class-type-final? _%klass96965%_)
                  (make-final-slot-mutator
                   _%klass96965%_
                   _%slot96973%_
                   _%field96982%_)
                  (if (__class-type-struct? _%klass96965%_)
                      (make-struct-slot-mutator
                       _%klass96965%_
                       _%slot96973%_
                       _%field96982%_)
                      (if (let ((_%strukt96988%_
                                 (base-struct/1 _%klass96965%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt96988%_
                                    'class))
                                 (let ((__tmp99695
                                        (let ((__tmp99696
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt96988%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp99696))))
                                   (declare (not safe))
                                   (##fx< _%field96982%_ __tmp99695))))
                          (make-struct-subclass-slot-mutator
                           _%klass96965%_
                           _%slot96973%_
                           _%field96982%_)
                          (make-class-cached-slot-mutator
                           _%klass96965%_
                           _%slot96973%_
                           _%field96982%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass96936%_ _%slot96937%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96936%_ 'class))
            (let ((_%klass96941%_ _%klass96936%_))
              (if (symbol? _%slot96937%_)
                  (let ((_%slot96951%_ _%slot96937%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass96941%_
                     _%slot96951%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot96937%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass96936%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass96904%_ _%slot96905%_)
        (let* ((_%klass96908%_ _%klass96904%_)
               (_%slot96916%_ _%slot96905%_)
               (_%field96925%_
                (let ((__tmp99697
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass96908%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp99697 _%slot96916%_ '#f))))
          (if (not _%field96925%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass96908%_
                       'slot:
                       _%slot96916%_)
                '#!void)
              (if (__class-type-final? _%klass96908%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass96908%_
                   _%slot96916%_
                   _%field96925%_)
                  (if (__class-type-struct? _%klass96908%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass96908%_
                       _%slot96916%_
                       _%field96925%_)
                      (if (let ((_%strukt96931%_
                                 (base-struct/1 _%klass96908%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt96931%_
                                    'class))
                                 (let ((__tmp99698
                                        (let ((__tmp99699
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt96931%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp99699))))
                                   (declare (not safe))
                                   (##fx< _%field96925%_ __tmp99698))))
                          (make-struct-slot-unchecked-accessor
                           _%klass96908%_
                           _%slot96916%_
                           _%field96925%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass96908%_
                           _%slot96916%_
                           _%field96925%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass96879%_ _%slot96880%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96879%_ 'class))
            (let ((_%klass96884%_ _%klass96879%_))
              (if (symbol? _%slot96880%_)
                  (let ((_%slot96894%_ _%slot96880%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass96884%_
                     _%slot96894%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot96880%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass96879%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass96847%_ _%slot96848%_)
        (let* ((_%klass96851%_ _%klass96847%_)
               (_%slot96859%_ _%slot96848%_)
               (_%field96868%_
                (let ((__tmp99700
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass96851%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp99700 _%slot96859%_ '#f))))
          (if (not _%field96868%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass96851%_
                       'slot:
                       _%slot96859%_)
                '#!void)
              (if (__class-type-final? _%klass96851%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass96851%_
                   _%slot96859%_
                   _%field96868%_)
                  (if (__class-type-struct? _%klass96851%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass96851%_
                       _%slot96859%_
                       _%field96868%_)
                      (if (let ((_%strukt96874%_
                                 (base-struct/1 _%klass96851%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt96874%_
                                    'class))
                                 (let ((__tmp99701
                                        (let ((__tmp99702
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt96874%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp99702))))
                                   (declare (not safe))
                                   (##fx< _%field96868%_ __tmp99701))))
                          (make-struct-slot-unchecked-mutator
                           _%klass96851%_
                           _%slot96859%_
                           _%field96868%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass96851%_
                           _%slot96859%_
                           _%field96868%_))))))))
    (define not-an-instance__%
      (lambda (_%object96831%_ _%class96832%_ _%slot96833%_)
        (apply error
               '"not an instance"
               'object:
               _%object96831%_
               'class:
               _%class96832%_
               (if _%slot96833%_ (cons 'slot: (cons _%slot96833%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object96838%_ _%class96839%_)
        (let ((_%slot96841%_ '#f))
          (not-an-instance__% _%object96838%_ _%class96839%_ _%slot96841%_))))
    (define not-an-instance
      (lambda _g99704_
        (let ((_g99703_ (let () (declare (not safe)) (##length _g99704_))))
          (cond ((let () (declare (not safe)) (##fx= _g99703_ 2))
                 (apply not-an-instance__0 _g99704_))
                ((let () (declare (not safe)) (##fx= _g99703_ 3))
                 (apply not-an-instance__% _g99704_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g99704_))))))
    (define make-final-slot-accessor
      (lambda (_%klass96824%_ _%slot96825%_ _%field96826%_)
        (lambda (_%obj96828%_)
          (##direct-structure-ref
           _%obj96828%_
           _%field96826%_
           _%klass96824%_
           _%slot96825%_))))
    (define make-final-slot-mutator
      (lambda (_%klass96817%_ _%slot96818%_ _%field96819%_)
        (lambda (_%obj96821%_ _%val96822%_)
          (##direct-structure-set!
           _%obj96821%_
           _%val96822%_
           _%field96819%_
           _%klass96817%_
           _%slot96818%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass96811%_ _%slot96812%_ _%field96813%_)
        (lambda (_%obj96815%_)
          (##structure-ref
           _%obj96815%_
           _%field96813%_
           _%klass96811%_
           _%slot96812%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass96804%_ _%slot96805%_ _%field96806%_)
        (lambda (_%obj96808%_ _%val96809%_)
          (##structure-set!
           _%obj96808%_
           _%val96809%_
           _%field96806%_
           _%klass96804%_
           _%slot96805%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass96798%_ _%slot96799%_ _%field96800%_)
        (lambda (_%obj96802%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj96802%_
             _%field96800%_
             _%klass96798%_
             _%slot96799%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass96791%_ _%slot96792%_ _%field96793%_)
        (lambda (_%obj96795%_ _%val96796%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj96795%_
             _%val96796%_
             _%field96793%_
             _%klass96791%_
             _%slot96792%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass96785%_ _%slot96786%_ _%field96787%_)
        (lambda (_%obj96789%_)
          (if (class-instance? _%klass96785%_ _%obj96789%_)
              (unchecked-slot-ref _%obj96789%_ _%field96787%_)
              (not-an-instance__%
               _%obj96789%_
               _%klass96785%_
               _%slot96786%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass96778%_ _%slot96779%_ _%field96780%_)
        (lambda (_%obj96782%_ _%val96783%_)
          (if (class-instance? _%klass96778%_ _%obj96782%_)
              (unchecked-field-set! _%obj96782%_ _%field96780%_ _%val96783%_)
              (not-an-instance__%
               _%obj96782%_
               _%klass96778%_
               _%slot96779%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass96769%_ _%slot96770%_ _%field96771%_)
        (lambda (_%obj96773%_)
          (if (let ((__tmp99705
                     (let () (declare (not safe)) (##type-id _%klass96769%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj96773%_ __tmp99705))
              (unchecked-field-ref _%obj96773%_ _%field96771%_)
              (if (class-instance? _%klass96769%_ _%obj96773%_)
                  (unchecked-slot-ref _%obj96773%_ _%slot96770%_)
                  (not-an-instance__%
                   _%obj96773%_
                   _%klass96769%_
                   _%slot96770%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass96759%_ _%slot96760%_ _%field96761%_)
        (lambda (_%obj96763%_ _%val96764%_)
          (if (let ((__tmp99706
                     (let () (declare (not safe)) (##type-id _%klass96759%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj96763%_ __tmp99706))
              (unchecked-field-set! _%obj96763%_ _%field96761%_ _%val96764%_)
              (if (class-instance? _%klass96759%_ _%obj96763%_)
                  (unchecked-slot-set! _%obj96763%_ _%slot96760%_ _%val96764%_)
                  (not-an-instance__%
                   _%obj96763%_
                   _%klass96759%_
                   _%slot96760%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass96753%_ _%slot96754%_ _%field96755%_)
        (lambda (_%obj96757%_)
          (if (let ((__tmp99707
                     (let () (declare (not safe)) (##type-id _%klass96753%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj96757%_ __tmp99707))
              (unchecked-field-ref _%obj96757%_ _%field96755%_)
              (unchecked-slot-ref _%obj96757%_ _%slot96754%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass96746%_ _%slot96747%_ _%field96748%_)
        (lambda (_%obj96750%_ _%val96751%_)
          (if (let ((__tmp99708
                     (let () (declare (not safe)) (##type-id _%klass96746%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj96750%_ __tmp99708))
              (unchecked-field-set! _%obj96750%_ _%field96748%_ _%val96751%_)
              (unchecked-slot-set! _%obj96750%_ _%slot96747%_ _%val96751%_)))))
    (define class-slot-offset
      (lambda (_%klass96721%_ _%slot96722%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96721%_ 'class))
            (let ((_%klass96726%_ _%klass96721%_))
              (if (let () (declare (not safe)) (symbolic? _%slot96722%_))
                  (let ((_%slot96736%_ _%slot96722%_))
                    (__class-slot-offset _%klass96726%_ _%slot96736%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot96722%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass96721%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass96700%_ _%slot96701%_)
        (let* ((_%klass96704%_ _%klass96700%_)
               (_%slot96712%_ _%slot96701%_)
               (__tmp99709
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass96704%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp99709 _%slot96712%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass96674%_ _%obj96675%_ _%slot96676%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96674%_ 'class))
            (let ((_%klass96680%_ _%klass96674%_))
              (if (let () (declare (not safe)) (symbolic? _%slot96676%_))
                  (let ((_%slot96690%_ _%slot96676%_))
                    (__class-slot-ref
                     _%klass96680%_
                     _%obj96675%_
                     _%slot96690%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot96676%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass96674%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass96650%_ _%obj96651%_ _%slot96652%_)
        (let* ((_%klass96655%_ _%klass96650%_) (_%slot96663%_ _%slot96652%_))
          (if (__class-instance? _%klass96655%_ _%obj96651%_)
              (let ((_%off96672%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj96651%_))
                      _%slot96663%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj96651%_
                 _%off96672%_
                 _%klass96655%_
                 _%slot96663%_))
              (not-an-instance__0 _%obj96651%_ _%klass96655%_)))))
    (define class-slot-set!
      (lambda (_%klass96623%_ _%obj96624%_ _%slot96625%_ _%val96626%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96623%_ 'class))
            (let ((_%klass96630%_ _%klass96623%_))
              (if (let () (declare (not safe)) (symbolic? _%slot96625%_))
                  (let ((_%slot96640%_ _%slot96625%_))
                    (__class-slot-set!
                     _%klass96630%_
                     _%obj96624%_
                     _%slot96640%_
                     _%val96626%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot96625%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass96623%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass96598%_ _%obj96599%_ _%slot96600%_ _%val96601%_)
        (let* ((_%klass96604%_ _%klass96598%_) (_%slot96612%_ _%slot96600%_))
          (if (__class-instance? _%klass96604%_ _%obj96599%_)
              (let ((_%off96621%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj96599%_))
                      _%slot96612%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj96599%_
                 _%val96601%_
                 _%off96621%_
                 _%klass96604%_
                 _%slot96612%_))
              (not-an-instance__0 _%obj96599%_ _%klass96604%_)))))
    (define unchecked-field-ref
      (lambda (_%obj96595%_ _%off96596%_)
        (let ((__tmp99710
               (let () (declare (not safe)) (##structure-type _%obj96595%_))))
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj96595%_
           _%off96596%_
           __tmp99710
           '#f))))
    (define unchecked-field-set!
      (lambda (_%obj96591%_ _%off96592%_ _%val96593%_)
        (let ((__tmp99711
               (let () (declare (not safe)) (##structure-type _%obj96591%_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj96591%_
           _%val96593%_
           _%off96592%_
           __tmp99711
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj96588%_ _%slot96589%_)
        (unchecked-field-ref
         _%obj96588%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj96588%_))
          _%slot96589%_))))
    (define unchecked-slot-set!
      (lambda (_%obj96584%_ _%slot96585%_ _%val96586%_)
        (unchecked-field-set!
         _%obj96584%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj96584%_))
          _%slot96585%_)
         _%val96586%_)))
    (define slot-ref__%
      (lambda (_%obj96546%_ _%slot96547%_ _%E96548%_)
        (if (symbol? _%slot96547%_)
            (let ((_%slot96552%_ _%slot96547%_))
              (if (procedure? _%E96548%_)
                  (let ((_%E96562%_ _%E96548%_))
                    (__slot-ref__% _%obj96546%_ _%slot96552%_ _%E96562%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E96548%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot96547%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj96575%_ _%slot96576%_)
        (let ((_%E96578%_ __slot-error))
          (slot-ref__% _%obj96575%_ _%slot96576%_ _%E96578%_))))
    (define slot-ref
      (lambda _g99713_
        (let ((_g99712_ (let () (declare (not safe)) (##length _g99713_))))
          (cond ((let () (declare (not safe)) (##fx= _g99712_ 2))
                 (apply slot-ref__0 _g99713_))
                ((let () (declare (not safe)) (##fx= _g99712_ 3))
                 (apply slot-ref__% _g99713_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g99713_))))))
    (define __slot-ref__%
      (lambda (_%obj96502%_ _%slot96503%_ _%E96504%_)
        (let* ((_%slot96507%_ _%slot96503%_)
               (_%E96515%_ _%E96504%_)
               (_%klass96524%_ (class-of _%obj96502%_))
               (_%$e96527%_
                (__class-slot-offset _%klass96524%_ _%slot96507%_)))
          (if _%$e96527%_
              ((lambda (_%off96530%_)
                 (unchecked-field-ref _%obj96502%_ _%off96530%_))
               _%$e96527%_)
              (let ()
                (declare (not safe))
                (_%E96515%_ _%obj96502%_ _%slot96507%_))))))
    (define __slot-ref__0
      (lambda (_%obj96536%_ _%slot96537%_)
        (let ((_%E96539%_ __slot-error))
          (__slot-ref__% _%obj96536%_ _%slot96537%_ _%E96539%_))))
    (define __slot-ref
      (lambda _g99715_
        (let ((_g99714_ (let () (declare (not safe)) (##length _g99715_))))
          (cond ((let () (declare (not safe)) (##fx= _g99714_ 2))
                 (apply __slot-ref__0 _g99715_))
                ((let () (declare (not safe)) (##fx= _g99714_ 3))
                 (apply __slot-ref__% _g99715_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g99715_))))))
    (define slot-set!__%
      (lambda (_%obj96460%_ _%slot96461%_ _%val96462%_ _%E96463%_)
        (if (symbol? _%slot96461%_)
            (let ((_%slot96467%_ _%slot96461%_))
              (if (procedure? _%E96463%_)
                  (let ((_%E96477%_ _%E96463%_))
                    (__slot-set!__%
                     _%obj96460%_
                     _%slot96467%_
                     _%val96462%_
                     _%E96477%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E96463%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot96461%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj96490%_ _%slot96491%_ _%val96492%_)
        (let ((_%E96494%_ __slot-error))
          (slot-set!__% _%obj96490%_ _%slot96491%_ _%val96492%_ _%E96494%_))))
    (define slot-set!
      (lambda _g99717_
        (let ((_g99716_ (let () (declare (not safe)) (##length _g99717_))))
          (cond ((let () (declare (not safe)) (##fx= _g99716_ 3))
                 (apply slot-set!__0 _g99717_))
                ((let () (declare (not safe)) (##fx= _g99716_ 4))
                 (apply slot-set!__% _g99717_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g99717_))))))
    (define __slot-set!__%
      (lambda (_%obj96413%_ _%slot96414%_ _%val96415%_ _%E96416%_)
        (let* ((_%slot96419%_ _%slot96414%_)
               (_%E96427%_ _%E96416%_)
               (_%klass96436%_ (class-of _%obj96413%_))
               (_%$e96439%_
                (__class-slot-offset _%klass96436%_ _%slot96419%_)))
          (if _%$e96439%_
              ((lambda (_%off96442%_)
                 (unchecked-field-set! _%obj96413%_ _%off96442%_ _%val96415%_))
               _%$e96439%_)
              (let ()
                (declare (not safe))
                (_%E96427%_ _%obj96413%_ _%slot96419%_))))))
    (define __slot-set!__0
      (lambda (_%obj96448%_ _%slot96449%_ _%val96450%_)
        (let ((_%E96452%_ __slot-error))
          (__slot-set!__%
           _%obj96448%_
           _%slot96449%_
           _%val96450%_
           _%E96452%_))))
    (define __slot-set!
      (lambda _g99719_
        (let ((_g99718_ (let () (declare (not safe)) (##length _g99719_))))
          (cond ((let () (declare (not safe)) (##fx= _g99718_ 3))
                 (apply __slot-set!__0 _g99719_))
                ((let () (declare (not safe)) (##fx= _g99718_ 4))
                 (apply __slot-set!__% _g99719_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g99719_))))))
    (define __slot-error
      (lambda (_%obj96409%_ _%slot96410%_)
        (error '"Cannot find slot"
               'object:
               _%obj96409%_
               'slot:
               _%slot96410%_)))
    (define subclass?
      (lambda (_%maybe-sub-class96384%_ _%maybe-super-class96385%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class96384%_ 'class))
            (let ((_%maybe-sub-class96389%_ _%maybe-sub-class96384%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class96385%_
                     'class))
                  (let ((_%maybe-super-class96399%_
                         _%maybe-super-class96385%_))
                    (__subclass?
                     _%maybe-sub-class96389%_
                     _%maybe-super-class96399%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class96385%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class96384%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class96356%_ _%maybe-super-class96357%_)
        (let* ((_%maybe-sub-class96360%_ _%maybe-sub-class96356%_)
               (_%maybe-super-class96368%_ _%maybe-super-class96357%_)
               (_%maybe-super-class-id96377%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class96368%_)))
               (_%$e96379%_
                (eq? _%maybe-super-class-id96377%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class96360%_)))))
          (if _%$e96379%_
              _%$e96379%_
              (let ((__tmp99721
                     (lambda (_%super-class96382%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class96382%_))
                            _%maybe-super-class-id96377%_)))
                    (__tmp99720
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class96360%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp99721 __tmp99720))))))
    (define object?
      (lambda (_%o96353%_)
        (if (let () (declare (not safe)) (##structure? _%o96353%_))
            (let ((__tmp99722
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o96353%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp99722 'class))
            '#f)))
    (define object-type
      (lambda (_%o96348%_)
        (if (let () (declare (not safe)) (##structure? _%o96348%_))
            (let ((_%klass96351%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o96348%_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass96351%_ 'class))
                  _%klass96351%_
                  (begin
                    (error '"not an object" _%o96348%_ _%klass96351%_)
                    '#!void)))
            (begin (error '"not an object" _%o96348%_) '#!void))))
    (define direct-instance?
      (lambda (_%klass96333%_ _%obj96334%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96333%_ 'class))
            (let ((_%klass96338%_ _%klass96333%_))
              (__direct-instance? _%klass96338%_ _%obj96334%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass96333%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass96320%_ _%obj96321%_)
        (let* ((_%klass96324%_ _%klass96320%_)
               (__tmp99723
                (let () (declare (not safe)) (##type-id _%klass96324%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj96321%_ __tmp99723))))
    (define immediate-instance-of?
      (lambda (_%klass96316%_ _%obj96317%_)
        (if (let () (declare (not safe)) (##structure? _%obj96317%_))
            (eq? _%klass96316%_
                 (let () (declare (not safe)) (##structure-type _%obj96317%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass96301%_ _%obj96302%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96301%_ 'class))
            (let ((_%klass96306%_ _%klass96301%_))
              (__struct-instance? _%klass96306%_ _%obj96302%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass96301%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass96288%_ _%obj96289%_)
        (let* ((_%klass96292%_ _%klass96288%_)
               (__tmp99724
                (let () (declare (not safe)) (##type-id _%klass96292%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj96289%_ __tmp99724))))
    (define class-instance?
      (lambda (_%klass96273%_ _%obj96274%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96273%_ 'class))
            (let ((_%klass96278%_ _%klass96273%_))
              (__class-instance? _%klass96278%_ _%obj96274%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass96273%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass96258%_ _%obj96259%_)
        (let* ((_%klass96262%_ _%klass96258%_)
               (_%type96271%_ (class-of _%obj96259%_)))
          (__subclass? _%type96271%_ _%klass96262%_))))
    (define make-object
      (lambda (_%klass96233%_ _%k96234%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96233%_ 'class))
            (let ((_%klass96238%_ _%klass96233%_))
              (if (fixnum? _%k96234%_)
                  (let ((_%k96248%_ _%k96234%_))
                    (__make-object _%klass96238%_ _%k96248%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k96234%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass96233%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass96210%_ _%k96211%_)
        (let* ((_%klass96214%_ _%klass96210%_) (_%k96222%_ _%k96211%_))
          (if (__class-type-system? _%klass96214%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass96214%_)
                '#!void)
              (let ((_%obj96231%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass96214%_ _%k96222%_))))
                (object-fill! _%obj96231%_ '#f))))))
    (define object-fill!
      (lambda (_%obj96195%_ _%fill96196%_)
        (if '#t
            (let ((_%obj96200%_ _%obj96195%_))
              (__object-fill! _%obj96200%_ _%fill96196%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj96195%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj96177%_ _%fill96178%_)
        (let ((_%obj96181%_ _%obj96177%_))
          (let _%loop96190%_ ((_%i96192%_
                               (let ((__tmp99725
                                      (let ()
                                        (declare (not safe))
                                        (##structure-length _%obj96181%_))))
                                 (declare (not safe))
                                 (##fx- __tmp99725 '1))))
            (if (let () (declare (not safe)) (##fx> _%i96192%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj96181%_
                     _%fill96178%_
                     _%i96192%_
                     '#f
                     '#f))
                  (_%loop96190%_
                   (let () (declare (not safe)) (##fx- _%i96192%_ '1))))
                _%obj96181%_)))))
    (define new-instance
      (lambda (_%klass96163%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96163%_ 'class))
            (let ((_%klass96167%_ _%klass96163%_))
              (__new-instance _%klass96167%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass96163%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass96151%_)
        (let* ((_%klass96154%_ _%klass96151%_)
               (__obj99640
                (let ((__tmp99726
                       (let ((__tmp99727
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass96154%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp99727))))
                  (declare (not safe))
                  (##make-structure _%klass96154%_ __tmp99726))))
          (object-fill! __obj99640 '#f)
          __obj99640)))
    (define make-instance
      (lambda (_%klass96136%_ . _%args96137%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96136%_ 'class))
            (let ((_%klass96141%_ _%klass96136%_))
              (declare (not safe))
              (##apply __make-instance _%klass96141%_ _%args96137%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass96136%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass96108%_ . _%args96109%_)
        (let* ((_%klass96112%_ _%klass96108%_)
               (_%$e96121%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass96112%_ '10 '#f '#f))))
          (if _%$e96121%_
              ((lambda (_%kons-id96124%_)
                 (let ((_%obj96126%_ (__new-instance _%klass96112%_)))
                   (___constructor-init!
                    _%klass96112%_
                    _%kons-id96124%_
                    _%obj96126%_
                    _%args96109%_)
                   _%obj96126%_))
               _%$e96121%_)
              (if (__class-type-metaclass? _%klass96112%_)
                  (let ((_%obj96129%_ (__new-instance _%klass96112%_)))
                    (__metaclass-instance-init!
                     _%klass96112%_
                     _%obj96129%_
                     _%args96109%_)
                    _%obj96129%_)
                  (if (__class-type-struct? _%klass96112%_)
                      (if (let ((__tmp99729
                                 (__class-type-field-count _%klass96112%_))
                                (__tmp99728
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args96109%_))))
                            (declare (not safe))
                            (##fx= __tmp99729 __tmp99728))
                          (apply ##structure _%klass96112%_ _%args96109%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass96112%_
                                   'slots:
                                   (__class-type-slot-list _%klass96112%_)
                                   'args:
                                   _%args96109%_)
                            '#!void))
                      (let ((_%obj96132%_ (__new-instance _%klass96112%_)))
                        (___class-instance-init!
                         _%klass96112%_
                         _%obj96132%_
                         _%args96109%_)
                        _%obj96132%_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj96093%_ . _%args96094%_)
        (if '#t
            (let ((_%obj96098%_ _%obj96093%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj96098%_ _%args96094%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj96093%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj96080%_ . _%args96081%_)
        (let ((_%obj96084%_ _%obj96080%_))
          (if (let ((__tmp99731
                     (let () (declare (not safe)) (##length _%args96081%_)))
                    (__tmp99730
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj96084%_))))
                (declare (not safe))
                (##fx< __tmp99731 __tmp99730))
              (___struct-instance-init! _%obj96084%_ _%args96081%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj96084%_
                     'args:
                     _%args96081%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj96039%_ _%args96040%_)
        (let _%lp96042%_ ((_%k96044%_ '1) (_%rest96045%_ _%args96040%_))
          (let* ((_%rest9604696054%_ _%rest96045%_)
                 (_%else9604896062%_ (lambda () _%obj96039%_))
                 (_%K9605096068%_
                  (lambda (_%rest96065%_ _%hd96066%_)
                    (unchecked-field-set! _%obj96039%_ _%k96044%_ _%hd96066%_)
                    (_%lp96042%_
                     (let () (declare (not safe)) (##fx+ _%k96044%_ '1))
                     _%rest96065%_))))
            (if (let () (declare (not safe)) (##pair? _%rest9604696054%_))
                (let ((_%hd9605196071%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9604696054%_)))
                      (_%tl9605296073%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9604696054%_))))
                  (let* ((_%hd96076%_ _%hd9605196071%_)
                         (_%rest96078%_ _%tl9605296073%_))
                    (_%K9605096068%_ _%rest96078%_ _%hd96076%_)))
                (_%else9604896062%_))))))
    (define class-instance-init!
      (lambda (_%obj96024%_ . _%args96025%_)
        (if '#t
            (let ((_%obj96029%_ _%obj96024%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj96029%_ _%args96025%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj96024%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj96011%_ . _%args96012%_)
        (let ((_%obj96015%_ _%obj96011%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj96015%_))
           _%obj96015%_
           _%args96012%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass95953%_ _%obj95954%_ _%args95955%_)
        (let _%lp95957%_ ((_%rest95959%_ _%args95955%_))
          (let* ((_%rest9596095970%_ _%rest95959%_)
                 (_%else9596295978%_
                  (lambda ()
                    (if (null? _%rest95959%_)
                        _%obj95954%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass95953%_
                               'rest:
                               _%rest95959%_))))
                 (_%K9596495992%_
                  (lambda (_%rest95981%_ _%val95982%_ _%key95983%_)
                    (if (keyword? _%key95983%_)
                        (let ((_%$e95986%_
                               (__class-slot-offset
                                _%klass95953%_
                                _%key95983%_)))
                          (if _%$e95986%_
                              ((lambda (_%off95989%_)
                                 (unchecked-field-set!
                                  _%obj95954%_
                                  _%off95989%_
                                  _%val95982%_)
                                 (_%lp95957%_ _%rest95981%_))
                               _%$e95986%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass95953%_
                                     'slot:
                                     _%key95983%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key95983%_)))))
            (if (let () (declare (not safe)) (##pair? _%rest9596095970%_))
                (let ((_%hd9596595995%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9596095970%_)))
                      (_%tl9596695997%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9596095970%_))))
                  (let ((_%key96000%_ _%hd9596595995%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9596695997%_))
                        (let ((_%hd9596796002%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9596695997%_)))
                              (_%tl9596896004%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9596695997%_))))
                          (let* ((_%val96007%_ _%hd9596796002%_)
                                 (_%rest96009%_ _%tl9596896004%_))
                            (_%K9596495992%_
                             _%rest96009%_
                             _%val96007%_
                             _%key96000%_)))
                        (_%else9596295978%_))))
                (_%else9596295978%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass95949%_ _%obj95950%_ _%args95951%_)
        (apply call-method
               _%klass95949%_
               'instance-init!
               _%obj95950%_
               _%args95951%_)))
    (define constructor-init!
      (lambda (_%klass95912%_ _%kons-id95913%_ _%obj95914%_ . _%args95915%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95912%_ 'class))
            (let ((_%klass95919%_ _%klass95912%_))
              (if (symbol? _%kons-id95913%_)
                  (let ((_%kons-id95929%_ _%kons-id95913%_))
                    (if '#t
                        (let ((_%obj95939%_ _%obj95914%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass95919%_
                                   _%kons-id95929%_
                                   _%obj95939%_
                                   _%args95915%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                           'contract:
                           'true
                           'value:
                           _%obj95914%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id95913%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass95912%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass95881%_ _%kons-id95882%_ _%obj95883%_ . _%args95884%_)
        (let* ((_%klass95887%_ _%klass95881%_)
               (_%kons-id95895%_ _%kons-id95882%_)
               (_%obj95903%_ _%obj95883%_))
          (___constructor-init!
           _%klass95887%_
           _%kons-id95895%_
           _%obj95903%_
           _%args95884%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass95870%_ _%kons-id95871%_ _%obj95872%_ _%args95873%_)
        (let ((_%$e95875%_
               (__find-method _%klass95870%_ _%obj95872%_ _%kons-id95871%_)))
          (if _%$e95875%_
              ((lambda (_%kons95878%_)
                 (apply _%kons95878%_ _%obj95872%_ _%args95873%_)
                 _%obj95872%_)
               _%$e95875%_)
              (error '"missing constructor"
                     'class:
                     _%klass95870%_
                     'method:
                     _%kons-id95871%_)))))
    (define struct-copy
      (lambda (_%struct95856%_)
        (if '#t
            (let ((_%struct95860%_ _%struct95856%_))
              (__struct-copy _%struct95860%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct95856%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct95844%_)
        (let ((_%struct95847%_ _%struct95844%_))
          (declare (not safe))
          (##structure-copy _%struct95847%_))))
    (define struct->list
      (lambda (_%obj95830%_)
        (if '#t
            (let ((_%obj95834%_ _%obj95830%_)) (__struct->list _%obj95834%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj95830%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj95818%_)
        (let ((_%obj95821%_ _%obj95818%_))
          (declare (not safe))
          (##vector->list _%obj95821%_))))
    (define class->list
      (lambda (_%obj95804%_)
        (if '#t
            (let ((_%obj95808%_ _%obj95804%_)) (__class->list _%obj95808%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@837.20-837.23"
               'contract:
               'true
               'value:
               _%obj95804%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj95780%_)
        (let* ((_%obj95783%_ _%obj95780%_)
               (_%klass95792%_
                (let () (declare (not safe)) (##structure-type _%obj95783%_)))
               (_%slot-vector95794%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass95792%_ '7 '#f '#f))))
          (let _%loop95796%_ ((_%index95798%_
                               (let ((__tmp99732
                                      (let ()
                                        (declare (not safe))
                                        (##vector-length
                                         _%slot-vector95794%_))))
                                 (declare (not safe))
                                 (##fx- __tmp99732 '1)))
                              (_%plist95799%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index95798%_ '1))
                (cons _%klass95792%_ _%plist95799%_)
                (let ((_%slot95802%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%slot-vector95794%_ _%index95798%_))))
                  (_%loop95796%_
                   (let () (declare (not safe)) (##fx- _%index95798%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot95802%_))
                         (cons (unchecked-field-ref
                                _%obj95783%_
                                _%index95798%_)
                               _%plist95799%_)))))))))
    (define call-method
      (lambda (_%obj95764%_ _%id95765%_ . _%args95766%_)
        (if (symbol? _%id95765%_)
            (let ((_%id95770%_ _%id95765%_))
              (declare (not safe))
              (##apply __call-method _%obj95764%_ _%id95770%_ _%args95766%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.24-852.26"
               'contract:
               'symbol?
               'value:
               _%id95765%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj95733%_ _%id95734%_ . _%args95735%_)
        (let* ((_%id95738%_ _%id95734%_)
               (_%$e95747%_ (__method-ref _%obj95733%_ _%id95738%_)))
          (if _%$e95747%_
              ((lambda (_%method95750%_)
                 (let ((_%method95752%_ _%method95750%_))
                   (apply _%method95752%_ _%obj95733%_ _%args95735%_)))
               _%$e95747%_)
              (error '"cannot find method"
                     'object:
                     _%obj95733%_
                     'method:
                     _%id95738%_)))))
    (define method-ref
      (lambda (_%obj95718%_ _%id95719%_)
        (if (symbol? _%id95719%_)
            (let ((_%id95723%_ _%id95719%_))
              (__method-ref _%obj95718%_ _%id95723%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@879.23-879.25"
               'contract:
               'symbol?
               'value:
               _%id95719%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj95705%_ _%id95706%_)
        (let ((_%id95709%_ _%id95706%_))
          (__find-method (class-of _%obj95705%_) _%obj95705%_ _%id95709%_))))
    (define checked-method-ref
      (lambda (_%obj95698%_ _%id95699%_)
        (let ((_%$e95702%_ (method-ref _%obj95698%_ _%id95699%_)))
          (if _%$e95702%_
              _%$e95702%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj95698%_
                       'method:
                       _%id95699%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj95683%_ _%id95684%_)
        (if (symbol? _%id95684%_)
            (let ((_%id95688%_ _%id95684%_))
              (__bound-method-ref _%obj95683%_ _%id95688%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@887.29-887.31"
               'contract:
               'symbol?
               'value:
               _%id95684%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj95651%_ _%id95652%_)
        (let* ((_%id95655%_ _%id95652%_)
               (_%$e95664%_ (__method-ref _%obj95651%_ _%id95655%_)))
          (if _%$e95664%_
              ((lambda (_%method95667%_)
                 (let ((_%method95669%_ _%method95667%_))
                   (lambda _%args95680%_
                     (apply _%method95669%_ _%obj95651%_ _%args95680%_))))
               _%$e95664%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj95636%_ _%id95637%_)
        (if (symbol? _%id95637%_)
            (let ((_%id95641%_ _%id95637%_))
              (__checked-bound-method-ref _%obj95636%_ _%id95641%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@896.37-896.39"
               'contract:
               'symbol?
               'value:
               _%id95637%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj95619%_ _%id95620%_)
        (let* ((_%id95623%_ _%id95620%_)
               (_%method95632%_ (checked-method-ref _%obj95619%_ _%id95623%_)))
          (lambda _%args95634%_
            (apply _%method95632%_ _%obj95619%_ _%args95634%_)))))
    (define find-method
      (lambda (_%klass95593%_ _%obj95594%_ _%id95595%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95593%_ 'class))
            (let ((_%klass95599%_ _%klass95593%_))
              (if (symbol? _%id95595%_)
                  (let ((_%id95609%_ _%id95595%_))
                    (__find-method _%klass95599%_ _%obj95594%_ _%id95609%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@901.41-901.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id95595%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@901.20-901.25"
               'contract:
               'class-type?
               'value:
               _%klass95593%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass95566%_ _%obj95567%_ _%id95568%_)
        (let* ((_%klass95571%_ _%klass95566%_)
               (_%id95579%_ _%id95568%_)
               (_%$e95588%_
                (__direct-method-ref _%klass95571%_ _%obj95567%_ _%id95579%_)))
          (if _%$e95588%_
              _%$e95588%_
              (if (__class-type-sealed? _%klass95571%_)
                  '#f
                  (__mixin-method-ref
                   _%klass95571%_
                   _%obj95567%_
                   _%id95579%_))))))
    (define mixin-find-method
      (lambda (_%mixins95550%_ _%obj95551%_ _%id95552%_)
        (if (symbol? _%id95552%_)
            (let ((_%id95556%_ _%id95552%_))
              (__mixin-find-method _%mixins95550%_ _%obj95551%_ _%id95556%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@909.37-909.39"
               'contract:
               'symbol?
               'value:
               _%id95552%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins95532%_ _%obj95533%_ _%id95534%_)
        (let* ((_%id95537%_ _%id95534%_)
               (__tmp99733
                (lambda (_%g9554595547%_)
                  (direct-method-ref
                   _%g9554595547%_
                   _%obj95533%_
                   _%id95537%_))))
          (declare (not safe))
          (__ormap1 __tmp99733 _%mixins95532%_))))
    (define direct-method-ref
      (lambda (_%klass95506%_ _%obj95507%_ _%id95508%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95506%_ 'class))
            (let ((_%klass95512%_ _%klass95506%_))
              (if (symbol? _%id95508%_)
                  (let ((_%id95522%_ _%id95508%_))
                    (__direct-method-ref
                     _%klass95512%_
                     _%obj95507%_
                     _%id95522%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@912.47-912.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id95508%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@912.26-912.31"
               'contract:
               'class-type?
               'value:
               _%klass95506%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass95460%_ _%obj95461%_ _%id95462%_)
        (let* ((_%klass95465%_ _%klass95460%_) (_%id95473%_ _%id95462%_))
          (letrec ((_%metaclass-resolve-method95482%_
                    (lambda ()
                      (let ((__method99641
                             (__method-ref _%klass95465%_ 'direct-method-ref)))
                        (if __method99641
                            (let ()
                              (declare (not safe))
                              (__method99641
                               _%klass95465%_
                               _%obj95461%_
                               _%id95473%_))
                            (begin
                              (error '"Missing method"
                                     _%klass95465%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!95483%_
                    (lambda ()
                      (let ((_%method95503%_
                             (_%metaclass-resolve-method95482%_)))
                        (let ((__tmp99735
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass95465%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp99734
                               (if _%method95503%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp99735
                           _%id95473%_
                           __tmp99734))
                        _%method95503%_))))
            (let ((_%$e95485%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass95465%_ '11 '#f '#f))))
              (if _%$e95485%_
                  ((lambda (_%ht95488%_)
                     (let ((_%method95490%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht95488%_
                               _%id95473%_
                               '#f))))
                       (if (procedure? _%method95490%_)
                           _%method95490%_
                           (if (__class-type-metaclass? _%klass95465%_)
                               (let ((_%$e95494%_ _%method95490%_))
                                 (if (eq? 'resolved _%$e95494%_)
                                     (_%metaclass-resolve-method95482%_)
                                     (if (eq? 'unknown _%$e95494%_)
                                         '#f
                                         (_%metaclass-resolve-method!95483%_))))
                               '#f))))
                   _%$e95485%_)
                  (if (__class-type-metaclass? _%klass95465%_)
                      (let ((_%tab95499%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass95465%_
                           _%tab95499%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!95483%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass95434%_ _%obj95435%_ _%id95436%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95434%_ 'class))
            (let ((_%klass95440%_ _%klass95434%_))
              (if (symbol? _%id95436%_)
                  (let ((_%id95450%_ _%id95436%_))
                    (__mixin-method-ref
                     _%klass95440%_
                     _%obj95435%_
                     _%id95450%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@942.46-942.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id95436%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@942.25-942.30"
               'contract:
               'class-type?
               'value:
               _%klass95434%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass95412%_ _%obj95413%_ _%id95414%_)
        (let* ((_%klass95417%_ _%klass95412%_) (_%id95425%_ _%id95414%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass95417%_ '6 '#f '#f))
           _%obj95413%_
           _%id95425%_))))
    (define bind-method!__%
      (lambda (_%klass95371%_ _%id95372%_ _%proc95373%_ _%rebind?95374%_)
        (if (symbol? _%id95372%_)
            (let ((_%id95378%_ _%id95372%_))
              (if (procedure? _%proc95373%_)
                  (let ((_%proc95388%_ _%proc95373%_))
                    (__bind-method!__%
                     _%klass95371%_
                     _%id95378%_
                     _%proc95388%_
                     _%rebind?95374%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@945.42-945.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc95373%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@945.27-945.29"
               'contract:
               'symbol?
               'value:
               _%id95372%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass95401%_ _%id95402%_ _%proc95403%_)
        (let ((_%rebind?95405%_ '#f))
          (bind-method!__%
           _%klass95401%_
           _%id95402%_
           _%proc95403%_
           _%rebind?95405%_))))
    (define bind-method!
      (lambda _g99737_
        (let ((_g99736_ (let () (declare (not safe)) (##length _g99737_))))
          (cond ((let () (declare (not safe)) (##fx= _g99736_ 3))
                 (apply bind-method!__0 _g99737_))
                ((let () (declare (not safe)) (##fx= _g99736_ 4))
                 (apply bind-method!__% _g99737_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g99737_))))))
    (define __bind-method!__%
      (lambda (_%klass95322%_ _%id95323%_ _%proc95324%_ _%rebind?95325%_)
        (let* ((_%id95328%_ _%id95323%_) (_%proc95336%_ _%proc95324%_))
          (letrec ((_%bind!95345%_
                    (lambda (_%ht95354%_)
                      (if (and (not _%rebind?95325%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht95354%_
                                  _%id95328%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass95322%_
                                 'method:
                                 _%id95328%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht95354%_
                               _%id95328%_
                               _%proc95336%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass95322%_ 'class))
                (let ((_%ht95348%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass95322%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht95348%_
                      (_%bind!95345%_ _%ht95348%_)
                      (let ((_%ht95350%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass95322%_
                           _%ht95350%_
                           '11
                           '#f
                           '#f))
                        (_%bind!95345%_ _%ht95350%_))))
                (if (let () (declare (not safe)) (##type? _%klass95322%_))
                    (__bind-method!__%
                     (__shadow-class _%klass95322%_)
                     _%id95328%_
                     _%proc95336%_
                     _%rebind?95325%_)
                    (error '"bad class; expected class or builtin type"
                           _%klass95322%_)))))))
    (define __bind-method!__0
      (lambda (_%klass95359%_ _%id95360%_ _%proc95361%_)
        (let ((_%rebind?95363%_ '#f))
          (__bind-method!__%
           _%klass95359%_
           _%id95360%_
           _%proc95361%_
           _%rebind?95363%_))))
    (define __bind-method!
      (lambda _g99739_
        (let ((_g99738_ (let () (declare (not safe)) (##length _g99739_))))
          (cond ((let () (declare (not safe)) (##fx= _g99738_ 3))
                 (apply __bind-method!__0 _g99739_))
                ((let () (declare (not safe)) (##fx= _g99738_ 4))
                 (apply __bind-method!__% _g99739_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g99739_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint95302%_ _%seed95304%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint95302%_
           procedure-hash
           eq?
           _%seed95304%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint95310%_ '#f) (_%seed95312%_ '0))
          (make-method-specializer-table__%
           _%size-hint95310%_
           _%seed95312%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint95314%_)
        (let ((_%seed95316%_ '0))
          (make-method-specializer-table__%
           _%size-hint95314%_
           _%seed95316%_))))
    (define make-method-specializer-table
      (lambda _g99741_
        (let ((_g99740_ (let () (declare (not safe)) (##length _g99741_))))
          (cond ((let () (declare (not safe)) (##fx= _g99740_ 0))
                 (apply make-method-specializer-table__0 _g99741_))
                ((let () (declare (not safe)) (##fx= _g99740_ 1))
                 (apply make-method-specializer-table__1 _g99741_))
                ((let () (declare (not safe)) (##fx= _g99740_ 2))
                 (apply make-method-specializer-table__% _g99741_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g99741_))))))
    (define method-specializer-table-ref
      (lambda (_%tab95255%_ _%key95256%_ _%default95257%_)
        (let ((_%table95259%_
               (let () (declare (not safe)) (&raw-table-table _%tab95255%_)))
              (_%seed95260%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95255%_))))
          (let* ((_%h95262%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key95256%_))
                         _%seed95260%_))
                 (_%size95265%_ (vector-length _%table95259%_))
                 (_%entries95268%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95265%_ '2)))
                 (_%start95271%_
                  (let ((__tmp99742
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95262%_ _%entries95268%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99742 '1))))
            (let _%loop95275%_ ((_%probe95278%_ _%start95271%_)
                                (_%i95280%_ '1)
                                (_%deleted95282%_ '#f))
              (let ((_%k95285%_ (vector-ref _%table95259%_ _%probe95278%_)))
                (if (eq? _%k95285%_ (macro-unused-obj))
                    _%default95257%_
                    (if (eq? _%k95285%_ (macro-deleted-obj))
                        (_%loop95275%_
                         (let ((_%next-probe95290%_
                                (fx+ _%start95271%_
                                     _%i95280%_
                                     (fx* _%i95280%_ _%i95280%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95290%_ _%size95265%_))
                         (let () (declare (not safe)) (##fx+ _%i95280%_ '1))
                         (let ((_%$e95293%_ _%deleted95282%_))
                           (if _%$e95293%_ _%$e95293%_ _%probe95278%_)))
                        (if (eq? _%key95256%_ _%k95285%_)
                            (vector-ref
                             _%table95259%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe95278%_ '1)))
                            (_%loop95275%_
                             (let ((_%next-probe95298%_
                                    (fx+ _%start95271%_
                                         _%i95280%_
                                         (fx* _%i95280%_ _%i95280%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95298%_ _%size95265%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95280%_ '1))
                             _%deleted95282%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab95251%_ _%key95252%_ _%value95253%_)
        (if (let ((__tmp99745
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab95251%_)))
                  (__tmp99743
                   (let ((__tmp99744
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab95251%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp99744 '4))))
              (declare (not safe))
              (##fx< __tmp99745 __tmp99743))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab95251%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab95251%_
         _%key95252%_
         _%value95253%_)))
    (define __method-specializer-table-set!
      (lambda (_%tab95202%_ _%key95203%_ _%value95204%_)
        (let ((_%table95207%_
               (let () (declare (not safe)) (&raw-table-table _%tab95202%_)))
              (_%seed95208%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95202%_))))
          (let* ((_%h95210%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key95203%_))
                         _%seed95208%_))
                 (_%size95213%_ (vector-length _%table95207%_))
                 (_%entries95216%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95213%_ '2)))
                 (_%start95219%_
                  (let ((__tmp99746
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95210%_ _%entries95216%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99746 '1))))
            (let _%loop95223%_ ((_%probe95226%_ _%start95219%_)
                                (_%i95228%_ '1)
                                (_%deleted95230%_ '#f))
              (let ((_%k95233%_ (vector-ref _%table95207%_ _%probe95226%_)))
                (if (eq? _%k95233%_ (macro-unused-obj))
                    (if _%deleted95230%_
                        (begin
                          (vector-set!
                           _%table95207%_
                           _%deleted95230%_
                           _%key95203%_)
                          (vector-set!
                           _%table95207%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted95230%_ '1))
                           _%value95204%_)
                          ((lambda ()
                             (let ((__tmp99747
                                    (let ((__tmp99748
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95202%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99748 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95202%_
                                __tmp99747)))))
                        (begin
                          (vector-set!
                           _%table95207%_
                           _%probe95226%_
                           _%key95203%_)
                          (vector-set!
                           _%table95207%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe95226%_ '1))
                           _%value95204%_)
                          ((lambda ()
                             (let ((__tmp99749
                                    (let ((__tmp99750
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab95202%_))))
                                      (declare (not safe))
                                      (##fx- __tmp99750 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab95202%_ __tmp99749))
                             (let ((__tmp99751
                                    (let ((__tmp99752
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95202%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99752 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95202%_
                                __tmp99751))))))
                    (if (eq? _%k95233%_ (macro-deleted-obj))
                        (_%loop95223%_
                         (let ((_%next-probe95240%_
                                (fx+ _%start95219%_
                                     _%i95228%_
                                     (fx* _%i95228%_ _%i95228%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95240%_ _%size95213%_))
                         (let () (declare (not safe)) (##fx+ _%i95228%_ '1))
                         (let ((_%$e95243%_ _%deleted95230%_))
                           (if _%$e95243%_ _%$e95243%_ _%probe95226%_)))
                        (if (eq? _%key95203%_ _%k95233%_)
                            (let ()
                              (vector-set!
                               _%table95207%_
                               _%probe95226%_
                               _%key95203%_)
                              (vector-set!
                               _%table95207%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95226%_ '1))
                               _%value95204%_))
                            (_%loop95223%_
                             (let ((_%next-probe95248%_
                                    (fx+ _%start95219%_
                                         _%i95228%_
                                         (fx* _%i95228%_ _%i95228%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95248%_ _%size95213%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95228%_ '1))
                             _%deleted95230%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab95197%_
               _%key95198%_
               _%method-specializer-table-update!95199%_
               _%default95200%_)
        (if (let ((__tmp99755
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab95197%_)))
                  (__tmp99753
                   (let ((__tmp99754
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab95197%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp99754 '4))))
              (declare (not safe))
              (##fx< __tmp99755 __tmp99753))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab95197%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab95197%_
         _%key95198%_
         _%method-specializer-table-update!95199%_
         _%default95200%_)))
    (define __method-specializer-table-update!
      (lambda (_%tab95147%_
               _%key95148%_
               _%method-specializer-table-update!95149%_
               _%default95150%_)
        (let ((_%table95153%_
               (let () (declare (not safe)) (&raw-table-table _%tab95147%_)))
              (_%seed95154%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95147%_))))
          (let* ((_%h95156%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key95148%_))
                         _%seed95154%_))
                 (_%size95159%_ (vector-length _%table95153%_))
                 (_%entries95162%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95159%_ '2)))
                 (_%start95165%_
                  (let ((__tmp99756
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95156%_ _%entries95162%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99756 '1))))
            (let _%loop95169%_ ((_%probe95172%_ _%start95165%_)
                                (_%i95174%_ '1)
                                (_%deleted95176%_ '#f))
              (let ((_%k95179%_ (vector-ref _%table95153%_ _%probe95172%_)))
                (if (eq? _%k95179%_ (macro-unused-obj))
                    (if _%deleted95176%_
                        (begin
                          (vector-set!
                           _%table95153%_
                           _%deleted95176%_
                           _%key95148%_)
                          (vector-set!
                           _%table95153%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted95176%_ '1))
                           (_%method-specializer-table-update!95149%_
                            _%default95150%_))
                          ((lambda ()
                             (let ((__tmp99757
                                    (let ((__tmp99758
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95147%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99758 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95147%_
                                __tmp99757)))))
                        (begin
                          (vector-set!
                           _%table95153%_
                           _%probe95172%_
                           _%key95148%_)
                          (vector-set!
                           _%table95153%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe95172%_ '1))
                           (_%method-specializer-table-update!95149%_
                            _%default95150%_))
                          ((lambda ()
                             (let ((__tmp99759
                                    (let ((__tmp99760
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab95147%_))))
                                      (declare (not safe))
                                      (##fx- __tmp99760 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab95147%_ __tmp99759))
                             (let ((__tmp99761
                                    (let ((__tmp99762
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95147%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99762 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95147%_
                                __tmp99761))))))
                    (if (eq? _%k95179%_ (macro-deleted-obj))
                        (_%loop95169%_
                         (let ((_%next-probe95186%_
                                (fx+ _%start95165%_
                                     _%i95174%_
                                     (fx* _%i95174%_ _%i95174%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95186%_ _%size95159%_))
                         (let () (declare (not safe)) (##fx+ _%i95174%_ '1))
                         (let ((_%$e95189%_ _%deleted95176%_))
                           (if _%$e95189%_ _%$e95189%_ _%probe95172%_)))
                        (if (eq? _%key95148%_ _%k95179%_)
                            (let ()
                              (vector-set!
                               _%table95153%_
                               _%probe95172%_
                               _%key95148%_)
                              (vector-set!
                               _%table95153%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95172%_ '1))
                               (_%method-specializer-table-update!95149%_
                                (vector-ref
                                 _%table95153%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe95172%_ '1))))))
                            (_%loop95169%_
                             (let ((_%next-probe95194%_
                                    (fx+ _%start95165%_
                                         _%i95174%_
                                         (fx* _%i95174%_ _%i95174%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95194%_ _%size95159%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95174%_ '1))
                             _%deleted95176%_))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab95102%_ _%key95104%_)
        (let ((_%table95107%_
               (let () (declare (not safe)) (&raw-table-table _%tab95102%_)))
              (_%seed95109%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95102%_))))
          (let* ((_%h95112%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key95104%_))
                         _%seed95109%_))
                 (_%size95115%_ (vector-length _%table95107%_))
                 (_%entries95118%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95115%_ '2)))
                 (_%start95121%_
                  (let ((__tmp99763
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95112%_ _%entries95118%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99763 '1))))
            (let _%loop95125%_ ((_%probe95128%_ _%start95121%_)
                                (_%i95130%_ '1))
              (let ((_%k95133%_ (vector-ref _%table95107%_ _%probe95128%_)))
                (if (eq? _%k95133%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k95133%_ (macro-deleted-obj))
                        (_%loop95125%_
                         (let ((_%next-probe95138%_
                                (fx+ _%start95121%_
                                     _%i95130%_
                                     (fx* _%i95130%_ _%i95130%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95138%_ _%size95115%_))
                         (let () (declare (not safe)) (##fx+ _%i95130%_ '1)))
                        (if (eq? _%key95104%_ _%k95133%_)
                            (let ()
                              (vector-set!
                               _%table95107%_
                               _%probe95128%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table95107%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95128%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp99764
                                        (let ((__tmp99765
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab95102%_))))
                                          (declare (not safe))
                                          (##fx- __tmp99765 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab95102%_
                                    __tmp99764)))))
                            (_%loop95125%_
                             (let ((_%next-probe95144%_
                                    (fx+ _%start95121%_
                                         _%i95130%_
                                         (fx* _%i95130%_ _%i95130%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95144%_ _%size95115%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95130%_ '1))))))))))))
    (define __method-specializers (make-method-specializer-table__% '#f '0))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc95093%_ _%specializer95094%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again95098%_ ()
            (if (let ((__tmp99766
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp99766 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again95098%_)))))
        (method-specializer-table-set!
         __method-specializers
         _%method-proc95093%_
         _%specializer95094%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc95083%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again95087%_ ()
            (if (let ((__tmp99767
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp99767 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again95087%_)))))
        (let ((_%specializer95091%_
               (method-specializer-table-ref
                __method-specializers
                _%proc95083%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer95091%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass95081%_)
        (let ((__tmp99768
               (let () (declare (not safe)) (##type-id _%klass95081%_))))
          (declare (not safe))
          (symbolic-hash __tmp99768))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint95062%_ _%seed95064%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint95062%_
           __class-specializer-hash-key
           eq?
           _%seed95064%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint95070%_ '#f) (_%seed95072%_ '0))
          (make-class-specializer-table__% _%size-hint95070%_ _%seed95072%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint95074%_)
        (let ((_%seed95076%_ '0))
          (make-class-specializer-table__% _%size-hint95074%_ _%seed95076%_))))
    (define make-class-specializer-table
      (lambda _g99770_
        (let ((_g99769_ (let () (declare (not safe)) (##length _g99770_))))
          (cond ((let () (declare (not safe)) (##fx= _g99769_ 0))
                 (apply make-class-specializer-table__0 _g99770_))
                ((let () (declare (not safe)) (##fx= _g99769_ 1))
                 (apply make-class-specializer-table__1 _g99770_))
                ((let () (declare (not safe)) (##fx= _g99769_ 2))
                 (apply make-class-specializer-table__% _g99770_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g99770_))))))
    (define class-specializer-table-ref
      (lambda (_%tab95015%_ _%key95016%_ _%default95017%_)
        (let ((_%table95019%_
               (let () (declare (not safe)) (&raw-table-table _%tab95015%_)))
              (_%seed95020%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95015%_))))
          (let* ((_%h95022%_
                  (fxxor (__class-specializer-hash-key _%key95016%_)
                         _%seed95020%_))
                 (_%size95025%_ (vector-length _%table95019%_))
                 (_%entries95028%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95025%_ '2)))
                 (_%start95031%_
                  (let ((__tmp99771
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95022%_ _%entries95028%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99771 '1))))
            (let _%loop95035%_ ((_%probe95038%_ _%start95031%_)
                                (_%i95040%_ '1)
                                (_%deleted95042%_ '#f))
              (let ((_%k95045%_ (vector-ref _%table95019%_ _%probe95038%_)))
                (if (eq? _%k95045%_ (macro-unused-obj))
                    _%default95017%_
                    (if (eq? _%k95045%_ (macro-deleted-obj))
                        (_%loop95035%_
                         (let ((_%next-probe95050%_
                                (fx+ _%start95031%_
                                     _%i95040%_
                                     (fx* _%i95040%_ _%i95040%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95050%_ _%size95025%_))
                         (let () (declare (not safe)) (##fx+ _%i95040%_ '1))
                         (let ((_%$e95053%_ _%deleted95042%_))
                           (if _%$e95053%_ _%$e95053%_ _%probe95038%_)))
                        (if (eq? _%key95016%_ _%k95045%_)
                            (vector-ref
                             _%table95019%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe95038%_ '1)))
                            (_%loop95035%_
                             (let ((_%next-probe95058%_
                                    (fx+ _%start95031%_
                                         _%i95040%_
                                         (fx* _%i95040%_ _%i95040%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95058%_ _%size95025%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95040%_ '1))
                             _%deleted95042%_))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab95011%_ _%key95012%_ _%value95013%_)
        (if (let ((__tmp99774
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab95011%_)))
                  (__tmp99772
                   (let ((__tmp99773
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab95011%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp99773 '4))))
              (declare (not safe))
              (##fx< __tmp99774 __tmp99772))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab95011%_))
            '#!void)
        (__class-specializer-table-set!
         _%tab95011%_
         _%key95012%_
         _%value95013%_)))
    (define __class-specializer-table-set!
      (lambda (_%tab94962%_ _%key94963%_ _%value94964%_)
        (let ((_%table94967%_
               (let () (declare (not safe)) (&raw-table-table _%tab94962%_)))
              (_%seed94968%_
               (let () (declare (not safe)) (&raw-table-seed _%tab94962%_))))
          (let* ((_%h94970%_
                  (fxxor (__class-specializer-hash-key _%key94963%_)
                         _%seed94968%_))
                 (_%size94973%_ (vector-length _%table94967%_))
                 (_%entries94976%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size94973%_ '2)))
                 (_%start94979%_
                  (let ((__tmp99775
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h94970%_ _%entries94976%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99775 '1))))
            (let _%loop94983%_ ((_%probe94986%_ _%start94979%_)
                                (_%i94988%_ '1)
                                (_%deleted94990%_ '#f))
              (let ((_%k94993%_ (vector-ref _%table94967%_ _%probe94986%_)))
                (if (eq? _%k94993%_ (macro-unused-obj))
                    (if _%deleted94990%_
                        (begin
                          (vector-set!
                           _%table94967%_
                           _%deleted94990%_
                           _%key94963%_)
                          (vector-set!
                           _%table94967%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted94990%_ '1))
                           _%value94964%_)
                          ((lambda ()
                             (let ((__tmp99776
                                    (let ((__tmp99777
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab94962%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99777 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab94962%_
                                __tmp99776)))))
                        (begin
                          (vector-set!
                           _%table94967%_
                           _%probe94986%_
                           _%key94963%_)
                          (vector-set!
                           _%table94967%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe94986%_ '1))
                           _%value94964%_)
                          ((lambda ()
                             (let ((__tmp99778
                                    (let ((__tmp99779
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab94962%_))))
                                      (declare (not safe))
                                      (##fx- __tmp99779 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab94962%_ __tmp99778))
                             (let ((__tmp99780
                                    (let ((__tmp99781
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab94962%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99781 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab94962%_
                                __tmp99780))))))
                    (if (eq? _%k94993%_ (macro-deleted-obj))
                        (_%loop94983%_
                         (let ((_%next-probe95000%_
                                (fx+ _%start94979%_
                                     _%i94988%_
                                     (fx* _%i94988%_ _%i94988%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95000%_ _%size94973%_))
                         (let () (declare (not safe)) (##fx+ _%i94988%_ '1))
                         (let ((_%$e95003%_ _%deleted94990%_))
                           (if _%$e95003%_ _%$e95003%_ _%probe94986%_)))
                        (if (eq? _%key94963%_ _%k94993%_)
                            (let ()
                              (vector-set!
                               _%table94967%_
                               _%probe94986%_
                               _%key94963%_)
                              (vector-set!
                               _%table94967%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe94986%_ '1))
                               _%value94964%_))
                            (_%loop94983%_
                             (let ((_%next-probe95008%_
                                    (fx+ _%start94979%_
                                         _%i94988%_
                                         (fx* _%i94988%_ _%i94988%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95008%_ _%size94973%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i94988%_ '1))
                             _%deleted94990%_))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab94957%_
               _%key94958%_
               _%class-specializer-table-update!94959%_
               _%default94960%_)
        (if (let ((__tmp99784
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab94957%_)))
                  (__tmp99782
                   (let ((__tmp99783
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab94957%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp99783 '4))))
              (declare (not safe))
              (##fx< __tmp99784 __tmp99782))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab94957%_))
            '#!void)
        (__class-specializer-table-update!
         _%tab94957%_
         _%key94958%_
         _%class-specializer-table-update!94959%_
         _%default94960%_)))
    (define __class-specializer-table-update!
      (lambda (_%tab94907%_
               _%key94908%_
               _%class-specializer-table-update!94909%_
               _%default94910%_)
        (let ((_%table94913%_
               (let () (declare (not safe)) (&raw-table-table _%tab94907%_)))
              (_%seed94914%_
               (let () (declare (not safe)) (&raw-table-seed _%tab94907%_))))
          (let* ((_%h94916%_
                  (fxxor (__class-specializer-hash-key _%key94908%_)
                         _%seed94914%_))
                 (_%size94919%_ (vector-length _%table94913%_))
                 (_%entries94922%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size94919%_ '2)))
                 (_%start94925%_
                  (let ((__tmp99785
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h94916%_ _%entries94922%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99785 '1))))
            (let _%loop94929%_ ((_%probe94932%_ _%start94925%_)
                                (_%i94934%_ '1)
                                (_%deleted94936%_ '#f))
              (let ((_%k94939%_ (vector-ref _%table94913%_ _%probe94932%_)))
                (if (eq? _%k94939%_ (macro-unused-obj))
                    (if _%deleted94936%_
                        (begin
                          (vector-set!
                           _%table94913%_
                           _%deleted94936%_
                           _%key94908%_)
                          (vector-set!
                           _%table94913%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted94936%_ '1))
                           (_%class-specializer-table-update!94909%_
                            _%default94910%_))
                          ((lambda ()
                             (let ((__tmp99786
                                    (let ((__tmp99787
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab94907%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99787 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab94907%_
                                __tmp99786)))))
                        (begin
                          (vector-set!
                           _%table94913%_
                           _%probe94932%_
                           _%key94908%_)
                          (vector-set!
                           _%table94913%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe94932%_ '1))
                           (_%class-specializer-table-update!94909%_
                            _%default94910%_))
                          ((lambda ()
                             (let ((__tmp99788
                                    (let ((__tmp99789
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab94907%_))))
                                      (declare (not safe))
                                      (##fx- __tmp99789 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab94907%_ __tmp99788))
                             (let ((__tmp99790
                                    (let ((__tmp99791
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab94907%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99791 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab94907%_
                                __tmp99790))))))
                    (if (eq? _%k94939%_ (macro-deleted-obj))
                        (_%loop94929%_
                         (let ((_%next-probe94946%_
                                (fx+ _%start94925%_
                                     _%i94934%_
                                     (fx* _%i94934%_ _%i94934%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe94946%_ _%size94919%_))
                         (let () (declare (not safe)) (##fx+ _%i94934%_ '1))
                         (let ((_%$e94949%_ _%deleted94936%_))
                           (if _%$e94949%_ _%$e94949%_ _%probe94932%_)))
                        (if (eq? _%key94908%_ _%k94939%_)
                            (let ()
                              (vector-set!
                               _%table94913%_
                               _%probe94932%_
                               _%key94908%_)
                              (vector-set!
                               _%table94913%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe94932%_ '1))
                               (_%class-specializer-table-update!94909%_
                                (vector-ref
                                 _%table94913%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe94932%_ '1))))))
                            (_%loop94929%_
                             (let ((_%next-probe94954%_
                                    (fx+ _%start94925%_
                                         _%i94934%_
                                         (fx* _%i94934%_ _%i94934%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe94954%_ _%size94919%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i94934%_ '1))
                             _%deleted94936%_))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab94862%_ _%key94864%_)
        (let ((_%table94867%_
               (let () (declare (not safe)) (&raw-table-table _%tab94862%_)))
              (_%seed94869%_
               (let () (declare (not safe)) (&raw-table-seed _%tab94862%_))))
          (let* ((_%h94872%_
                  (fxxor (__class-specializer-hash-key _%key94864%_)
                         _%seed94869%_))
                 (_%size94875%_ (vector-length _%table94867%_))
                 (_%entries94878%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size94875%_ '2)))
                 (_%start94881%_
                  (let ((__tmp99792
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h94872%_ _%entries94878%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99792 '1))))
            (let _%loop94885%_ ((_%probe94888%_ _%start94881%_)
                                (_%i94890%_ '1))
              (let ((_%k94893%_ (vector-ref _%table94867%_ _%probe94888%_)))
                (if (eq? _%k94893%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k94893%_ (macro-deleted-obj))
                        (_%loop94885%_
                         (let ((_%next-probe94898%_
                                (fx+ _%start94881%_
                                     _%i94890%_
                                     (fx* _%i94890%_ _%i94890%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe94898%_ _%size94875%_))
                         (let () (declare (not safe)) (##fx+ _%i94890%_ '1)))
                        (if (eq? _%key94864%_ _%k94893%_)
                            (let ()
                              (vector-set!
                               _%table94867%_
                               _%probe94888%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table94867%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe94888%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp99793
                                        (let ((__tmp99794
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab94862%_))))
                                          (declare (not safe))
                                          (##fx- __tmp99794 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab94862%_
                                    __tmp99793)))))
                            (_%loop94885%_
                             (let ((_%next-probe94904%_
                                    (fx+ _%start94881%_
                                         _%i94890%_
                                         (fx* _%i94890%_ _%i94890%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe94904%_ _%size94875%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i94890%_ '1))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers (make-class-specializer-table__% '#f '0))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass94848%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94848%_ 'class))
            (let ((_%klass94852%_ _%klass94848%_))
              (__specialize-class _%klass94852%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1020.25-1020.30"
               'contract:
               'class-type?
               'value:
               _%klass94848%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass94830%_)
        (let* ((_%klass94833%_ _%klass94830%_)
               (_%$e94842%_ (__lookup-class-specializer _%klass94833%_)))
          (if _%$e94842%_
              _%$e94842%_
              (let ((_%method-table94846%_
                     (___specialize-class _%klass94833%_)))
                (__bind-class-specializer!
                 _%klass94833%_
                 _%method-table94846%_)
                _%method-table94846%_)))))
    (define __lookup-class-specializer
      (lambda (_%klass94820%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again94824%_ ()
            (if (let ((__tmp99795
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp99795 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again94824%_)))))
        (let ((_%method-table94828%_
               (class-specializer-table-ref
                __class-specializers
                _%klass94820%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table94828%_)))
    (define __bind-class-specializer!
      (lambda (_%klass94811%_ _%method-table94812%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again94816%_ ()
            (if (let ((__tmp99796
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp99796 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again94816%_)))))
        (class-specializer-table-set!
         __class-specializers
         _%klass94811%_
         _%method-table94812%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass94795%_
               _%method-table94796%_
               _%method94797%_
               _%proc94798%_)
        (let ((_%$e94800%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table94796%_
                  _%method94797%_
                  '#f))))
          (if _%$e94800%_
              _%$e94800%_
              (let ((_%$e94803%_ (__lookup-method-specializer _%proc94798%_)))
                (if _%$e94803%_
                    ((lambda (_%specialize94806%_)
                       (let ((_%specialized-proc94808%_
                              (_%specialize94806%_
                               _%klass94795%_
                               _%method-table94796%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table94796%_
                          _%method94797%_
                          _%specialized-proc94808%_)))
                     _%$e94803%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table94796%_
                       _%method94797%_
                       _%proc94798%_))))))))
    (define ___specialize-class
      (lambda (_%klass94737%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94737%_ 'class))
            (if (__class-type-metaclass? _%klass94737%_)
                (let ((__method99642
                       (__method-ref _%klass94737%_ 'specialize-class)))
                  (if __method99642
                      (let ()
                        (declare (not safe))
                        (__method99642 _%klass94737%_))
                      (begin
                        (error '"Missing method"
                               _%klass94737%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp99797
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass94737%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp99797))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass94737%_)
                    (let ((_%method-table94743%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop94745%_ ((_%rest94747%_
                                           (__class-precedence-list
                                            _%klass94737%_)))
                        (let* ((_%rest9474894756%_ _%rest94747%_)
                               (_%else9475094764%_
                                (lambda () _%method-table94743%_))
                               (_%K9475294783%_
                                (lambda (_%rest94767%_ _%xklass94768%_)
                                  (let ((_%xmethod-table9476994771%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass94768%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table9476994771%_
                                        (let* ((_%xmethod-table94774%_
                                                _%xmethod-table9476994771%_)
                                               (__tmp99798
                                                (lambda (_%g9477594778%_
                                                         _%g9477694780%_)
                                                  (__specialize-method
                                                   _%klass94737%_
                                                   _%method-table94743%_
                                                   _%g9477594778%_
                                                   _%g9477694780%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table94774%_
                                           __tmp99798))
                                        '#f))
                                  (_%loop94745%_ _%rest94767%_))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9474894756%_))
                              (let ((_%hd9475394786%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9474894756%_)))
                                    (_%tl9475494788%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9474894756%_))))
                                (let* ((_%xklass94791%_ _%hd9475394786%_)
                                       (_%rest94793%_ _%tl9475494788%_))
                                  (_%K9475294783%_
                                   _%rest94793%_
                                   _%xklass94791%_)))
                              (_%else9475094764%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass94737%_))
                (__specialize-class (__shadow-class _%klass94737%_))
                (error '"bad class; cannot specialize" _%klass94737%_)))))
    (define seal-class!
      (lambda (_%klass94723%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94723%_ 'class))
            (let ((_%klass94727%_ _%klass94723%_))
              (__seal-class! _%klass94727%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1077.20-1077.25"
               'contract:
               'class-type?
               'value:
               _%klass94723%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass94706%_)
        (let ((_%klass94709%_ _%klass94706%_))
          (if (__class-type-sealed? _%klass94709%_)
              '#!void
              (begin
                (if (__class-type-final? _%klass94709%_)
                    '#!void
                    (error '"cannot seal non-final class" _%klass94709%_))
                (if (__class-type-metaclass? _%klass94709%_)
                    (let ((__method99643
                           (__method-ref _%klass94709%_ 'seal-class!)))
                      (if __method99643
                          (let ()
                            (declare (not safe))
                            (__method99643 _%klass94709%_))
                          (begin
                            (error '"Missing method"
                                   _%klass94709%_
                                   'seal-class!)
                            '#!void)))
                    (if (let ((__tmp99799
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass94709%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp99799))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass94709%_)
                        (let ((_%method-table94721%_
                               (__specialize-class _%klass94709%_)))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass94709%_
                           _%method-table94721%_
                           '11
                           '#f
                           '#f))))
                (__class-type-seal! _%klass94709%_))))))
    (define next-method
      (lambda (_%subklass94680%_ _%obj94681%_ _%id94682%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass94680%_ 'class))
            (let ((_%subklass94686%_ _%subklass94680%_))
              (if (symbol? _%id94682%_)
                  (let ((_%id94696%_ _%id94682%_))
                    (__next-method _%subklass94686%_ _%obj94681%_ _%id94696%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1101.44-1101.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id94682%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1101.20-1101.28"
               'contract:
               'class-type?
               'value:
               _%subklass94680%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass94617%_ _%obj94618%_ _%id94619%_)
        (let* ((_%subklass94622%_ _%subklass94617%_) (_%id94630%_ _%id94619%_))
          (letrec ((_%find-next-method94639%_
                    (lambda (_%klass94641%_)
                      (let _%lp94643%_ ((_%rest94645%_
                                         (class-precedence-list
                                          _%klass94641%_)))
                        (let* ((_%rest9464694654%_ _%rest94645%_)
                               (_%else9464894662%_ (lambda () '#f))
                               (_%K9465094668%_
                                (lambda (_%rest94665%_ _%klass94666%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass94622%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass94666%_)))
                                      (__mixin-find-method
                                       _%rest94665%_
                                       _%obj94618%_
                                       _%id94630%_)
                                      (_%lp94643%_ _%rest94665%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9464694654%_))
                              (let ((_%hd9465194671%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9464694654%_)))
                                    (_%tl9465294673%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9464694654%_))))
                                (let* ((_%klass94676%_ _%hd9465194671%_)
                                       (_%rest94678%_ _%tl9465294673%_))
                                  (_%K9465094668%_
                                   _%rest94678%_
                                   _%klass94676%_)))
                              (_%else9464894662%_)))))))
            (_%find-next-method94639%_ (class-of _%obj94618%_))))))
    (define call-next-method
      (lambda (_%subklass94590%_ _%obj94591%_ _%id94592%_ . _%args94593%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass94590%_ 'class))
            (let ((_%subklass94597%_ _%subklass94590%_))
              (if (symbol? _%id94592%_)
                  (let ((_%id94607%_ _%id94592%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass94597%_
                             _%obj94591%_
                             _%id94607%_
                             _%args94593%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1112.49-1112.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id94592%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1112.25-1112.33"
               'contract:
               'class-type?
               'value:
               _%subklass94590%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass94561%_ _%obj94562%_ _%id94563%_ . _%args94564%_)
        (let* ((_%subklass94567%_ _%subklass94561%_)
               (_%id94575%_ _%id94563%_)
               (_%$e94584%_
                (__next-method _%subklass94567%_ _%obj94562%_ _%id94575%_)))
          (if _%$e94584%_
              ((lambda (_%methodf94587%_)
                 (apply _%methodf94587%_ _%obj94562%_ _%args94564%_))
               _%$e94584%_)
              (error '"cannot find next method"
                     'object:
                     _%obj94562%_
                     'method:
                     _%id94575%_)))))
    (define write-style
      (lambda (_%we94559%_) (macro-writeenv-style _%we94559%_)))
    (define write-object
      (lambda (_%we94550%_ _%obj94551%_)
        (let ((_%$e94553%_ (__method-ref _%obj94551%_ ':wr)))
          (if _%$e94553%_
              ((lambda (_%method94556%_)
                 (_%method94556%_ _%obj94551%_ _%we94550%_))
               _%$e94553%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we94550%_ _%obj94551%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type94465%_)
        (letrec ((_%shadow-type-id94467%_
                  (lambda (_%type94548%_)
                    (let ((__tmp99800
                           (let ()
                             (declare (not safe))
                             (##type-name _%type94548%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp99800 '"::t"))))
                 (_%shadow-type-name94468%_
                  (lambda (_%type94546%_)
                    (let () (declare (not safe)) (##type-name _%type94546%_))))
                 (_%make-shadow-class94469%_
                  (lambda (_%type94538%_ _%precedence-list94539%_)
                    (let* ((_%super94541%_
                            (if (pair? _%precedence-list94539%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list94539%_))
                                      '())
                                '()))
                           (_%klass94543%_
                            (make-class-type
                             (_%shadow-type-id94467%_ _%type94538%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type94538%_))
                             _%super94541%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (if (__type-extensible? _%type94538%_)
                                             '()
                                             (cons (cons 'final: '#t) '()))))
                             '#f)))
                      (let ((__tmp99801
                             (let ()
                               (declare (not safe))
                               (##type-id _%type94538%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp99801
                         _%klass94543%_))
                      _%klass94543%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again94473%_ ()
              (if (let ((__tmp99802
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp99802 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (_%again94473%_)))))
          (let ((_%$e94477%_
                 (let ((__tmp99803
                        (let ()
                          (declare (not safe))
                          (##type-id _%type94465%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp99803 '#f))))
            (if _%$e94477%_
                ((lambda (_%klass94480%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass94480%_)
                 _%$e94477%_)
                (let _%loop94483%_ ((_%super94485%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-super _%type94465%_)))
                                    (_%hierarchy94486%_ '()))
                  (if (not _%super94485%_)
                      (let _%loop94489%_ ((_%rest94491%_ _%hierarchy94486%_)
                                          (_%precedence-list94492%_ '()))
                        (let* ((_%rest9449394501%_ _%rest94491%_)
                               (_%else9449594511%_
                                (lambda ()
                                  (let ((_%klass94509%_
                                         (_%make-shadow-class94469%_
                                          _%type94465%_
                                          _%precedence-list94492%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass94509%_)))
                               (_%K9449794525%_
                                (lambda (_%rest94514%_ _%type94515%_)
                                  (let ((_%$e94517%_
                                         (let ((__tmp99804
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type94515%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp99804
                                            '#f))))
                                    (if _%$e94517%_
                                        ((lambda (_%klass94520%_)
                                           (_%loop94489%_
                                            _%rest94514%_
                                            (cons _%klass94520%_
                                                  _%precedence-list94492%_)))
                                         _%$e94517%_)
                                        (let ((_%klass94523%_
                                               (_%make-shadow-class94469%_
                                                _%type94515%_
                                                _%precedence-list94492%_)))
                                          (_%loop94489%_
                                           _%rest94514%_
                                           (cons _%klass94523%_
                                                 _%precedence-list94492%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9449394501%_))
                              (let ((_%hd9449894528%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9449394501%_)))
                                    (_%tl9449994530%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9449394501%_))))
                                (let* ((_%type94533%_ _%hd9449894528%_)
                                       (_%rest94535%_ _%tl9449994530%_))
                                  (_%K9449794525%_
                                   _%rest94535%_
                                   _%type94533%_)))
                              (_%else9449594511%_))))
                      (_%loop94483%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super94485%_))
                       (cons _%super94485%_ _%hierarchy94486%_)))))))))
    (define class-of
      (lambda (_%obj94438%_)
        (let ()
          (declare (not interrupts-enabled))
          (let ((_%t94442%_
                 (let () (declare (not safe)) (##type _%obj94438%_))))
            (if (fx= _%t94442%_ (macro-type-subtyped))
                (let ((_%st94445%_
                       (let () (declare (not safe)) (##subtype _%obj94438%_))))
                  (if (fx= _%st94445%_ (macro-subtype-structure))
                      (let ((_%klass94448%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj94438%_))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of? _%klass94448%_ 'class))
                            _%klass94448%_
                            (__shadow-class _%klass94448%_)))
                      (if (fx= _%st94445%_ (macro-subtype-boxvalues))
                          (if (let ((__tmp99805
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _%obj94438%_))))
                                (declare (not safe))
                                (##fx= __tmp99805 '1))
                              (__system-class 'box)
                              (__system-class 'values))
                          (let ((_%$e94451%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref __subtype-id _%st94445%_))))
                            (if _%$e94451%_
                                (__system-class _%$e94451%_)
                                (error '"unknown class"
                                       'subtype:
                                       _%st94445%_
                                       'object:
                                       _%obj94438%_))))))
                (if (fx= _%t94442%_ (macro-type-mem2))
                    (__system-class 'pair)
                    (if (fx= _%t94442%_ (macro-type-fixnum))
                        (__system-class 'fixnum)
                        (if (char? _%obj94438%_)
                            (__system-class 'char)
                            (if (eq? _%obj94438%_ '())
                                (__system-class 'null)
                                (if (eq? _%obj94438%_ '#f)
                                    (__system-class 'boolean)
                                    (if (eq? _%obj94438%_ '#t)
                                        (__system-class 'boolean)
                                        (if (eq? _%obj94438%_ '#!void)
                                            (__system-class 'void)
                                            (if (eq? _%obj94438%_ '#!eof)
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
      (lambda (_%id94432%_)
        (let ((_%$e94434%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id94432%_ '#f))))
          (if _%$e94434%_
              _%$e94434%_
              (error '"unknown system class" _%id94432%_)))))
    (define __make-system-class
      (lambda (_%id94427%_ _%super94428%_)
        (let ((_%klass94430%_
               (make-class-type
                _%id94427%_
                _%id94427%_
                _%super94428%_
                '()
                '((system: . #t))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id94427%_ _%klass94430%_))
          _%klass94430%_)))))
