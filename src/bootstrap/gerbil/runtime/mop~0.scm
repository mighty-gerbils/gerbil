(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1712786277)
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
      (let ((_%flags98202%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties98203%_ '((direct-slots:) (system: . #t)))
            (_%slot-table98204%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags98202%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table98204%_
           _%properties98203%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots98178%_
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
             (_%slot-vector98180%_ (list->vector (cons '#f _%slots98178%_)))
             (_%slot-table98187%_
              (let ((_%slot-table98182%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp99645
                       (lambda (_%slot98184%_ _%field98185%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table98182%_
                            _%slot98184%_
                            _%field98185%_))
                         (let ((__tmp99646
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot98184%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table98182%_
                            __tmp99646
                            _%field98185%_))))
                      (__tmp99643
                       (let ((__tmp99644
                              (let ()
                                (declare (not safe))
                                (##length _%slots98178%_))))
                         (declare (not safe))
                         (##iota __tmp99644 '1))))
                  (declare (not safe))
                  (##for-each __tmp99645 _%slots98178%_ __tmp99643))
                _%slot-table98182%_))
             (_%flags98189%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields98195%_
              (list->vector
               (let ((__tmp99647
                      (map (lambda (_%g9819098192%_)
                             (list _%g9819098192%_ '5 '#f))
                           (drop _%slots98178%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp99647))))
             (_%properties98197%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots98178%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t98199%_
              (let ((__tmp99648 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags98189%_
                 ##type-type
                 _%fields98195%_
                 __tmp99648
                 _%slot-vector98180%_
                 _%slot-table98187%_
                 _%properties98197%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t98199%_ _%t98199%_))
        _%t98199%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags98174%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties98175%_ '((direct-slots:) (system: . #t)))
            (_%slot-table98176%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp99649 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags98174%_
           '#f
           '#()
           __tmp99649
           '#(#f)
           _%slot-table98176%_
           _%properties98175%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj98172%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj98172%_ 'class))))
    (define class-type=?
      (lambda (_%x98147%_ _%y98148%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x98147%_ 'class))
            (let ((_%x98152%_ _%x98147%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y98148%_ 'class))
                  (let ((_%y98162%_ _%y98148%_))
                    (__class-type=? _%x98152%_ _%y98162%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y98148%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x98147%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x98126%_ _%y98127%_)
        (let* ((_%x98130%_ _%x98126%_) (_%y98138%_ _%y98127%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x98130%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y98138%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type98112%_)
        (if (let () (declare (not safe)) (##type? _%type98112%_))
            (let ((_%type98116%_ _%type98112%_))
              (__type-opaque? _%type98116%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type98112%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type98100%_)
        (let* ((_%type98103%_ _%type98100%_)
               (__tmp99650
                (let ((__tmp99651
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type98103%_))))
                  (declare (not safe))
                  (##fxand __tmp99651 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp99650 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type98086%_)
        (if (let () (declare (not safe)) (##type? _%type98086%_))
            (let ((_%type98090%_ _%type98086%_))
              (__type-extensible? _%type98090%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type98086%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type98074%_)
        (let* ((_%type98077%_ _%type98074%_)
               (__tmp99652
                (let ((__tmp99653
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type98077%_))))
                  (declare (not safe))
                  (##fxand __tmp99653 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp99652 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type98060%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type98060%_ 'class))
            (let ((_%type98064%_ _%type98060%_))
              (__class-type-final? _%type98064%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type98060%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type98048%_)
        (let* ((_%type98051%_ _%type98048%_)
               (__tmp99654
                (let ((__tmp99655
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type98051%_))))
                  (declare (not safe))
                  (##fxand __tmp99655 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp99654 '0))))
    (define class-type-struct?
      (lambda (_%klass98034%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98034%_ 'class))
            (let ((_%klass98038%_ _%klass98034%_))
              (__class-type-struct? _%klass98038%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass98034%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass98022%_)
        (let* ((_%klass98025%_ _%klass98022%_)
               (__tmp99656
                (let ((__tmp99657
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass98025%_))))
                  (declare (not safe))
                  (##fxand __tmp99657 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp99656 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass98008%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass98008%_ 'class))
            (let ((_%klass98012%_ _%klass98008%_))
              (__class-type-sealed? _%klass98012%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass98008%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass97996%_)
        (let* ((_%klass97999%_ _%klass97996%_)
               (__tmp99658
                (let ((__tmp99659
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass97999%_))))
                  (declare (not safe))
                  (##fxand __tmp99659 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp99658 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass97982%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97982%_ 'class))
            (let ((_%klass97986%_ _%klass97982%_))
              (__class-type-metaclass? _%klass97986%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass97982%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass97970%_)
        (let* ((_%klass97973%_ _%klass97970%_)
               (__tmp99660
                (let ((__tmp99661
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass97973%_))))
                  (declare (not safe))
                  (##fxand __tmp99661 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp99660 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass97956%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97956%_ 'class))
            (let ((_%klass97960%_ _%klass97956%_))
              (__class-type-system? _%klass97960%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass97956%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass97944%_)
        (let* ((_%klass97947%_ _%klass97944%_)
               (__tmp99662
                (let ((__tmp99663
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass97947%_))))
                  (declare (not safe))
                  (##fxand __tmp99663 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp99662 class-type-flag-system))))
    (define make-class-type-descriptor
      (lambda (_%type-id97829%_
               _%type-name97830%_
               _%type-super97831%_
               _%precedence-list97832%_
               _%slot-vector97833%_
               _%properties97834%_
               _%constructor97835%_
               _%slot-table97836%_
               _%methods97837%_)
        (letrec ((_%make-props!97840%_
                  (lambda (_%key97913%_)
                    (letrec* ((_%ht97915%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!97916%_
                               (lambda (_%ht97937%_ _%slots97938%_)
                                 (for-each
                                  (lambda (_%g9793997941%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht97937%_
                                       _%g9793997941%_
                                       '#t)))
                                  _%slots97938%_)))
                              (_%put-alist!97917%_
                               (lambda (_%ht97926%_
                                        _%key97927%_
                                        _%alist97928%_)
                                 (let ((_%$e97930%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key97927%_
                                           _%alist97928%_))))
                                   (if _%$e97930%_
                                       ((lambda (_%g9793297934%_)
                                          (_%put-slots!97916%_
                                           _%ht97926%_
                                           _%g9793297934%_))
                                        _%$e97930%_)
                                       '#!void)))))
                      (_%put-alist!97917%_
                       _%ht97915%_
                       _%key97913%_
                       _%properties97834%_)
                      (for-each
                       (lambda (_%mixin97919%_)
                         (let ((_%alist97921%_
                                (##structure-ref
                                 _%mixin97919%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist97921%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key97913%_
                                           _%alist97921%_))))
                               (_%put-slots!97916%_
                                _%ht97915%_
                                (class-type-slot-list _%mixin97919%_))
                               (_%put-alist!97917%_
                                _%ht97915%_
                                _%key97913%_
                                _%alist97921%_))))
                       _%precedence-list97832%_)
                      _%ht97915%_))))
          (let* ((_%transparent?97842%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties97834%_)))
                 (_%all-slots-printable?97847%_
                  (let ((_%$e97844%_ _%transparent?97842%_))
                    (if _%$e97844%_
                        _%$e97844%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties97834%_))))))
                 (_%printable97849%_
                  (if (not _%all-slots-printable?97847%_)
                      (_%make-props!97840%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?97854%_
                  (let ((_%$e97851%_ _%transparent?97842%_))
                    (if _%$e97851%_
                        _%$e97851%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties97834%_))))))
                 (_%equalable97856%_
                  (if (not _%all-slots-equalable?97854%_)
                      (_%make-props!97840%_ 'equal:)
                      '#f))
                 (_%first-new-field97858%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super97831%_ 'class))
                      (let ((__tmp99664
                             (##structure-ref
                              _%type-super97831%_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp99664))
                      '1))
                 (_%field-info-length97860%_
                  (let ((__tmp99665
                         (let ((__tmp99666
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector97833%_))))
                           (declare (not safe))
                           (##fx- __tmp99666 _%first-new-field97858%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp99665)))
                 (_%field-info97862%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length97860%_ '#f)))
                 (_%struct?97864%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties97834%_)))
                 (_%final?97866%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties97834%_)))
                 (_%metaclass97874%_
                  (let ((_%metaclass9786797869%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties97834%_))))
                    (if _%metaclass9786797869%_
                        (let ((_%metaclass97872%_ _%metaclass9786797869%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass97872%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id97829%_
                                     'metaclass:
                                     _%metaclass97872%_))
                          _%metaclass97872%_)
                        '#f)))
                 (_%system?97876%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties97834%_)))
                 (_%opaque?97881%_
                  (let ((_%$e97878%_ (not _%all-slots-equalable?97854%_)))
                    (if _%$e97878%_
                        _%$e97878%_
                        (if _%type-super97831%_
                            (__type-opaque? _%type-super97831%_)
                            '#f))))
                 (_%type-flags97883%_
                  (let ((__tmp99671
                         (if _%final?97866%_ '0 type-flag-extensible))
                        (__tmp99670 (if _%opaque?97881%_ type-flag-opaque '0))
                        (__tmp99669
                         (if _%struct?97864%_ class-type-flag-struct '0))
                        (__tmp99668
                         (if _%metaclass97874%_ class-type-flag-metaclass '0))
                        (__tmp99667
                         (if _%system?97876%_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp99671
                             __tmp99670
                             __tmp99669
                             __tmp99668
                             __tmp99667)))
                 (_%precedence-list97891%_
                  (let ((_%$e97885%_ (memq t::t _%precedence-list97832%_)))
                    (if _%$e97885%_
                        ((lambda (_%tail97888%_)
                           (if (null? (cdr _%tail97888%_))
                               _%precedence-list97832%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list97832%_)))
                         _%$e97885%_)
                        (let ((__tmp99672 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list97832%_ __tmp99672))))))
            (let _%loop97894%_ ((_%i97896%_ _%first-new-field97858%_)
                                (_%j97897%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j97897%_ _%field-info-length97860%_))
                  (let* ((_%slot97899%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector97833%_ _%i97896%_)))
                         (_%flags97907%_
                          (if _%transparent?97842%_
                              '0
                              (let ((__tmp99674
                                     (if (or _%all-slots-printable?97847%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable97849%_
                                                _%slot97899%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp99673
                                     (if (or _%all-slots-equalable?97854%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable97856%_
                                                _%slot97899%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp99674 __tmp99673)))))
                    (vector-set! _%field-info97862%_ _%j97897%_ _%slot97899%_)
                    (vector-set!
                     _%field-info97862%_
                     (let () (declare (not safe)) (##fx+ _%j97897%_ '1))
                     _%flags97907%_)
                    (_%loop97894%_
                     (let () (declare (not safe)) (##fx+ _%i97896%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j97897%_ '3))))
                  '#!void))
            (if _%metaclass97874%_
                (let ((_%val97910%_
                       (make-instance
                        _%metaclass97874%_
                        _%type-id97829%_
                        _%type-name97830%_
                        _%type-flags97883%_
                        _%type-super97831%_
                        _%field-info97862%_
                        _%precedence-list97891%_
                        _%slot-vector97833%_
                        _%slot-table97836%_
                        _%properties97834%_
                        _%constructor97835%_
                        _%methods97837%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val97910%_ 'class))
                      _%val97910%_
                      (error '"bad cast" class::t _%val97910%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id97829%_
                   _%type-name97830%_
                   _%type-flags97883%_
                   _%type-super97831%_
                   _%field-info97862%_
                   _%precedence-list97891%_
                   _%slot-vector97833%_
                   _%slot-table97836%_
                   _%properties97834%_
                   _%constructor97835%_
                   _%methods97837%_)))))))
    (define class-type-id
      (lambda (_%klass97827%_)
        (##structure-ref _%klass97827%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass97825%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97825%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass97822%_ _%val97823%_)
        (##structure-set! _%klass97822%_ _%val97823%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass97817%_ _%val97819%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97817%_
           _%val97819%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass97815%_)
        (##structure-ref _%klass97815%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass97813%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97813%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass97810%_ _%val97811%_)
        (##structure-set! _%klass97810%_ _%val97811%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass97805%_ _%val97807%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97805%_
           _%val97807%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass97803%_)
        (##structure-ref _%klass97803%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass97801%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97801%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass97798%_ _%val97799%_)
        (##structure-set! _%klass97798%_ _%val97799%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass97793%_ _%val97795%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97793%_
           _%val97795%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass97791%_)
        (##structure-ref _%klass97791%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass97789%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97789%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass97786%_ _%val97787%_)
        (##structure-set! _%klass97786%_ _%val97787%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass97781%_ _%val97783%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97781%_
           _%val97783%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass97779%_)
        (##structure-ref _%klass97779%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass97777%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97777%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass97774%_ _%val97775%_)
        (##structure-set! _%klass97774%_ _%val97775%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass97769%_ _%val97771%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97769%_
           _%val97771%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass97767%_)
        (##structure-ref _%klass97767%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass97765%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass97765%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass97762%_ _%val97763%_)
        (##structure-set!
         _%klass97762%_
         _%val97763%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass97757%_ _%val97759%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97757%_
           _%val97759%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass97755%_)
        (##structure-ref _%klass97755%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass97753%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass97753%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass97750%_ _%val97751%_)
        (##structure-set!
         _%klass97750%_
         _%val97751%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass97745%_ _%val97747%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97745%_
           _%val97747%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass97743%_)
        (##structure-ref _%klass97743%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass97741%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97741%_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass97738%_ _%val97739%_)
        (##structure-set!
         _%klass97738%_
         _%val97739%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass97733%_ _%val97735%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97733%_
           _%val97735%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass97731%_)
        (##structure-ref _%klass97731%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass97729%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97729%_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_%klass97726%_ _%val97727%_)
        (##structure-set!
         _%klass97726%_
         _%val97727%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass97721%_ _%val97723%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97721%_
           _%val97723%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass97719%_)
        (##structure-ref _%klass97719%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass97717%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass97717%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass97714%_ _%val97715%_)
        (##structure-set!
         _%klass97714%_
         _%val97715%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass97709%_ _%val97711%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97709%_
           _%val97711%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass97707%_)
        (##structure-ref _%klass97707%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass97705%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass97705%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass97702%_ _%val97703%_)
        (##structure-set! _%klass97702%_ _%val97703%_ '11 class::t 'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass97697%_ _%val97699%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass97697%_
           _%val97699%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass97683%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97683%_ 'class))
            (let ((_%klass97687%_ _%klass97683%_))
              (__class-type-slot-list _%klass97687%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass97683%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass97671%_)
        (let ((_%klass97674%_ _%klass97671%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass97674%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass97657%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97657%_ 'class))
            (let ((_%klass97661%_ _%klass97657%_))
              (__class-type-field-count _%klass97661%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass97657%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass97645%_)
        (let* ((_%klass97648%_ _%klass97645%_)
               (__tmp99675
                (let ((__tmp99676
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass97648%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp99676))))
          (declare (not safe))
          (##fx- __tmp99675 '1))))
    (define class-type-seal!
      (lambda (_%klass97631%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97631%_ 'class))
            (let ((_%klass97635%_ _%klass97631%_))
              (__class-type-seal! _%klass97635%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass97631%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass97619%_)
        (let ((_%klass97622%_ _%klass97619%_))
          (let ((__tmp99677
                 (let ((__tmp99678
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass97622%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp99678))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass97622%_
             __tmp99677
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct97594%_ _%maybe-super-struct97595%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct97594%_ 'class))
            (let ((_%maybe-sub-struct97599%_ _%maybe-sub-struct97594%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct97595%_
                     'class))
                  (let ((_%maybe-super-struct97609%_
                         _%maybe-super-struct97595%_))
                    (__substruct?
                     _%maybe-sub-struct97599%_
                     _%maybe-super-struct97609%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct97595%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct97594%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct97563%_ _%maybe-super-struct97564%_)
        (let* ((_%maybe-sub-struct97567%_ _%maybe-sub-struct97563%_)
               (_%maybe-super-struct97575%_ _%maybe-super-struct97564%_)
               (_%maybe-super-struct-id97584%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct97575%_))))
          (let _%lp97586%_ ((_%super-struct97588%_ _%maybe-sub-struct97567%_))
            (if (not _%super-struct97588%_)
                '#f
                (if (eq? _%maybe-super-struct-id97584%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct97588%_)))
                    '#t
                    (_%lp97586%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct97588%_)))))))))
    (define base-struct/1
      (lambda (_%klass97558%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97558%_ 'class))
            (if (class-type-struct? _%klass97558%_)
                _%klass97558%_
                (let () (declare (not safe)) (##type-super _%klass97558%_)))
            (if (not _%klass97558%_)
                '#f
                (error '"not a class or false" _%klass97558%_)))))
    (define base-struct/2
      (lambda (_%klass197543%_ _%klass297544%_)
        (let ((_%s197546%_ (base-struct/1 _%klass197543%_))
              (_%s297547%_ (base-struct/1 _%klass297544%_)))
          (if (or (not _%s197546%_)
                  (and _%s297547%_ (substruct? _%s197546%_ _%s297547%_)))
              _%s297547%_
              (if (or (not _%s297547%_)
                      (and _%s197546%_ (substruct? _%s297547%_ _%s197546%_)))
                  _%s197546%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass197543%_
                         _%klass297544%_
                         _%s197546%_
                         _%s297547%_))))))
    (define base-struct/list
      (lambda (_%all-supers97427%_)
        (let* ((_%all-supers9742897453%_ _%all-supers97427%_)
               (_%E9743397457%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers9742897453%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K9745197540%_ (lambda () '#f))
                (_%K9744897526%_
                 (lambda (_%x97524%_) (base-struct/1 _%x97524%_)))
                (_%K9744397503%_
                 (lambda (_%y97500%_ _%x97501%_)
                   (base-struct/2 _%x97501%_ _%y97500%_)))
                (_%K9743497464%_
                 (lambda (_%y97461%_ _%x97462%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x97462%_ _%y97461%_)))))
            (let* ((_%__match9963799638%_
                    (lambda (_%hd9743597467%_ _%tl9743697469%_)
                      (let ((_%x97472%_ _%hd9743597467%_))
                        (letrec ((_%splice-rest9743897474%_
                                  (lambda (_%rest9744297481%_ _%y97483%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%rest9744297481%_))
                                        (_%K9743497464%_ _%y97483%_ _%x97472%_)
                                        (_%E9743397457%_))))
                                 (_%splice-try9744097476%_
                                  (lambda (_%hd9744197485%_
                                           _%rest9744297487%_
                                           _%y9743797488%_)
                                    (let ((_%y97491%_ _%hd9744197485%_))
                                      (_%splice-loop9743997478%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest9744297487%_))
                                       (cons _%y97491%_ _%y9743797488%_)))))
                                 (_%splice-loop9743997478%_
                                  (lambda (_%rest9744297493%_ _%y9743797494%_)
                                    (if (pair? _%rest9744297493%_)
                                        (_%splice-try9744097476%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest9744297493%_))
                                         _%rest9744297493%_
                                         _%y9743797494%_)
                                        (_%splice-rest9743897474%_
                                         _%rest9744297493%_
                                         (reverse _%y9743797494%_))))))
                          (_%splice-loop9743997478%_ _%tl9743697469%_ '())))))
                   (_%try-match9743097536%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all-supers9742897453%_))
                          (let ((_%tl9745097531%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers9742897453%_)))
                                (_%hd9744997529%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers9742897453%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl9745097531%_))
                                (let ((_%x97534%_ _%hd9744997529%_))
                                  (base-struct/1 _%x97534%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl9745097531%_))
                                    (let ((_%tl9744797515%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl9745097531%_)))
                                          (_%hd9744697513%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl9745097531%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl9744797515%_))
                                          (let ((_%x97511%_ _%hd9744997529%_)
                                                (_%y97518%_ _%hd9744697513%_))
                                            (_%K9744397503%_
                                             _%y97518%_
                                             _%x97511%_))
                                          (_%__match9963799638%_
                                           _%hd9744997529%_
                                           _%tl9745097531%_)))
                                    (_%__match9963799638%_
                                     _%hd9744997529%_
                                     _%tl9745097531%_))))
                          (_%E9743397457%_)))))
              (if (let ()
                    (declare (not safe))
                    (##null? _%all-supers9742897453%_))
                  (_%K9745197540%_)
                  (_%try-match9743097536%_)))))))
    (define base-struct
      (lambda _%all-supers97425%_ (base-struct/list _%all-supers97425%_)))
    (define find-super-constructor
      (lambda (_%super97376%_)
        (let _%lp97378%_ ((_%rest97380%_ _%super97376%_)
                          (_%constructor97381%_ '#f))
          (let* ((_%rest9738297390%_ _%rest97380%_)
                 (_%else9738497398%_ (lambda () _%constructor97381%_))
                 (_%K9738697413%_
                  (lambda (_%rest97401%_ _%hd97402%_)
                    (let ((_%$e97404%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd97402%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e97404%_
                          ((lambda (_%xconstructor97407%_)
                             (if (or (not _%constructor97381%_)
                                     (eq? _%constructor97381%_
                                          _%xconstructor97407%_))
                                 (_%lp97378%_
                                  _%rest97401%_
                                  _%xconstructor97407%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor97381%_
                                        _%xconstructor97407%_)))
                           _%$e97404%_)
                          (_%lp97378%_ _%rest97401%_ _%constructor97381%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest9738297390%_))
                (let ((_%hd9738797416%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9738297390%_)))
                      (_%tl9738897418%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9738297390%_))))
                  (let* ((_%hd97421%_ _%hd9738797416%_)
                         (_%rest97423%_ _%tl9738897418%_))
                    (_%K9738697413%_ _%rest97423%_ _%hd97421%_)))
                (_%else9738497398%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list97352%_ _%direct-slots97353%_)
        (let* ((_%next-slot97355%_ '1)
               (_%slot-table97357%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots97359%_ '(__class))
               (_%process-slot97363%_
                (lambda (_%slot97361%_)
                  (if (symbol? _%slot97361%_)
                      '#!void
                      (error '"invalid slot name" _%slot97361%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table97357%_
                              _%slot97361%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table97357%_
                           _%slot97361%_
                           _%next-slot97355%_))
                        (let ((__tmp99679
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot97361%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table97357%_
                           __tmp99679
                           _%next-slot97355%_))
                        (set! _%r-slots97359%_
                              (cons _%slot97361%_ _%r-slots97359%_))
                        (set! _%next-slot97355%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot97355%_ '1))))
                      '#!void)))
               (_%process-slots97369%_
                (lambda (_%g9736497366%_)
                  (for-each _%process-slot97363%_ _%g9736497366%_))))
          (let ((__tmp99681
                 (lambda (_%mixin97372%_)
                   (_%process-slots97369%_
                    (let ((__tmp99682
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin97372%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp99682 '())))))
                (__tmp99680 (reverse _%class-precedence-list97352%_)))
            (declare (not safe))
            (##for-each __tmp99681 __tmp99680))
          (_%process-slots97369%_ _%direct-slots97353%_)
          (let ((_%slot-vector97374%_
                 (list->vector
                  (let () (declare (not safe)) (##reverse _%r-slots97359%_)))))
            (values _%slot-vector97374%_ _%slot-table97357%_)))))
    (define make-class-type
      (lambda (_%id97277%_
               _%name97278%_
               _%direct-supers97279%_
               _%direct-slots97280%_
               _%properties97281%_
               _%constructor97282%_)
        (if (symbol? _%id97277%_)
            (let ((_%id97286%_ _%id97277%_))
              (if (symbol? _%name97278%_)
                  (let ((_%name97296%_ _%name97278%_))
                    (if (list? _%direct-supers97279%_)
                        (let ((_%direct-supers97306%_ _%direct-supers97279%_))
                          (if (list? _%direct-slots97280%_)
                              (let ((_%direct-slots97316%_
                                     _%direct-slots97280%_))
                                (if (list? _%properties97281%_)
                                    (let ((_%properties97326%_
                                           _%properties97281%_))
                                      (if ((lambda (_%$obj97335%_)
                                             (or (not _%$obj97335%_)
                                                 (symbol? _%$obj97335%_)))
                                           _%constructor97282%_)
                                          (let ((_%constructor97342%_
                                                 _%constructor97282%_))
                                            (__make-class-type
                                             _%id97286%_
                                             _%name97296%_
                                             _%direct-supers97306%_
                                             _%direct-slots97316%_
                                             _%properties97326%_
                                             _%constructor97342%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor97282%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties97281%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots97280%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers97279%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name97278%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id97277%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id97146%_
               _%name97147%_
               _%direct-supers97148%_
               _%direct-slots97149%_
               _%properties97150%_
               _%constructor97151%_)
        (let* ((_%id97154%_ _%id97146%_)
               (_%name97162%_ _%name97147%_)
               (_%direct-supers97170%_ _%direct-supers97148%_)
               (_%direct-slots97178%_ _%direct-slots97149%_)
               (_%properties97186%_ _%properties97150%_)
               (_%constructor97194%_ _%constructor97151%_))
          (let ((_%$e97206%_
                 (let ((__tmp99683
                        (lambda (_%$obj97203%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj97203%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp99683 _%direct-supers97170%_))))
            (if _%$e97206%_
                ((lambda (_%g9720897210%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g9720897210%_))
                 _%$e97206%_)
                (let ((_%$e97213%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final? _%direct-supers97170%_))))
                  (if _%$e97213%_
                      ((lambda (_%g9721597217%_)
                         (error '"Cannot extend final class" _%g9721597217%_))
                       _%$e97213%_)
                      '#!void))))
          (let ((_g99684_ (compute-precedence-list _%direct-supers97170%_)))
            (begin
              (let ((_g99685_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g99684_)
                           (##vector-length _g99684_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g99685_ 2)))
                    (error "Context expects 2 values" _g99685_)))
              (let ((_%precedence-list97220%_
                     (let () (declare (not safe)) (##vector-ref _g99684_ 0)))
                    (_%struct-super97221%_
                     (let () (declare (not safe)) (##vector-ref _g99684_ 1))))
                (let ((_g99686_
                       (compute-class-slots
                        _%precedence-list97220%_
                        _%direct-slots97178%_)))
                  (begin
                    (let ((_g99687_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g99686_)
                                 (##vector-length _g99686_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g99687_ 2)))
                          (error "Context expects 2 values" _g99687_)))
                    (let ((_%slot-vector97223%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g99686_ 0)))
                          (_%slot-table97224%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g99686_ 1))))
                      (let* ((_%properties97226%_
                              (cons (cons 'direct-slots: _%direct-slots97178%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers97170%_)
                                          _%properties97186%_)))
                             (_%constructor*97231%_
                              (let ((_%$e97228%_ _%constructor97194%_))
                                (if _%$e97228%_
                                    _%$e97228%_
                                    (find-super-constructor
                                     _%direct-supers97170%_))))
                             (_%precedence-list97274%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties97226%_))
                                      (memq object::t
                                            _%precedence-list97220%_))
                                  _%precedence-list97220%_
                                  (let _%loop97236%_ ((_%tail97238%_
                                                       _%precedence-list97220%_)
                                                      (_%head97239%_ '()))
                                    (let* ((_%tail9724097248%_ _%tail97238%_)
                                           (_%else9724297256%_
                                            (lambda ()
                                              (let ((__tmp99688
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp99688
                                                 _%head97239%_))))
                                           (_%K9724497262%_
                                            (lambda (_%rest97259%_ _%hd97260%_)
                                              (if (eq? _%hd97260%_ t::t)
                                                  (let ((__tmp99689
                                                         (cons object::t
                                                               _%tail97238%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp99689
                                                     _%head97239%_))
                                                  (_%loop97236%_
                                                   _%rest97259%_
                                                   (cons _%hd97260%_
                                                         _%head97239%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tail9724097248%_))
                                          (let ((_%hd9724597265%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail9724097248%_)))
                                                (_%tl9724697267%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail9724097248%_))))
                                            (let* ((_%hd97270%_
                                                    _%hd9724597265%_)
                                                   (_%rest97272%_
                                                    _%tl9724697267%_))
                                              (_%K9724497262%_
                                               _%rest97272%_
                                               _%hd97270%_)))
                                          (_%else9724297256%_)))))))
                        (make-class-type-descriptor
                         _%id97154%_
                         _%name97162%_
                         _%struct-super97221%_
                         _%precedence-list97274%_
                         _%slot-vector97223%_
                         _%properties97226%_
                         _%constructor*97231%_
                         _%slot-table97224%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass97132%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97132%_ 'class))
            (let ((_%klass97136%_ _%klass97132%_))
              (__class-precedence-list _%klass97136%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass97132%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass97120%_)
        (let ((_%klass97123%_ _%klass97120%_))
          (cons _%klass97123%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass97123%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers97117%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers97117%_))))
    (define make-class-predicate
      (lambda (_%klass97103%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97103%_ 'class))
            (let ((_%klass97107%_ _%klass97103%_))
              (__make-class-predicate _%klass97107%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass97103%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass97074%_)
        (let* ((_%klass97077%_ _%klass97074%_)
               (_%tid97086%_
                (let () (declare (not safe)) (##type-id _%klass97077%_))))
          (if (__class-type-final? _%klass97077%_)
              (lambda (_%g9708897090%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g9708897090%_
                   _%tid97086%_)))
              (if (__class-type-struct? _%klass97077%_)
                  (lambda (_%g9709397095%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%g9709397095%_ _%tid97086%_)))
                  (lambda (_%g9709897100%_)
                    (__class-instance? _%klass97077%_ _%g9709897100%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass97049%_ _%slot97050%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass97049%_ 'class))
            (let ((_%klass97054%_ _%klass97049%_))
              (if (symbol? _%slot97050%_)
                  (let ((_%slot97064%_ _%slot97050%_))
                    (__make-class-slot-accessor _%klass97054%_ _%slot97064%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot97050%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass97049%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass97017%_ _%slot97018%_)
        (let* ((_%klass97021%_ _%klass97017%_)
               (_%slot97029%_ _%slot97018%_)
               (_%field97038%_
                (let ((__tmp99690
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass97021%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp99690 _%slot97029%_ '#f))))
          (if (not _%field97038%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass97021%_
                       'slot:
                       _%slot97029%_)
                '#!void)
              (if (__class-type-final? _%klass97021%_)
                  (make-final-slot-accessor
                   _%klass97021%_
                   _%slot97029%_
                   _%field97038%_)
                  (if (__class-type-struct? _%klass97021%_)
                      (make-struct-slot-accessor
                       _%klass97021%_
                       _%slot97029%_
                       _%field97038%_)
                      (if (let ((_%strukt97044%_
                                 (base-struct/1 _%klass97021%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt97044%_
                                    'class))
                                 (let ((__tmp99691
                                        (let ((__tmp99692
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt97044%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp99692))))
                                   (declare (not safe))
                                   (##fx< _%field97038%_ __tmp99691))))
                          (make-struct-subclass-slot-accessor
                           _%klass97021%_
                           _%slot97029%_
                           _%field97038%_)
                          (make-class-cached-slot-accessor
                           _%klass97021%_
                           _%slot97029%_
                           _%field97038%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass96992%_ _%slot96993%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96992%_ 'class))
            (let ((_%klass96997%_ _%klass96992%_))
              (if (symbol? _%slot96993%_)
                  (let ((_%slot97007%_ _%slot96993%_))
                    (__make-class-slot-mutator _%klass96997%_ _%slot97007%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot96993%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass96992%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass96960%_ _%slot96961%_)
        (let* ((_%klass96964%_ _%klass96960%_)
               (_%slot96972%_ _%slot96961%_)
               (_%field96981%_
                (let ((__tmp99693
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass96964%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp99693 _%slot96972%_ '#f))))
          (if (not _%field96981%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass96964%_
                       'slot:
                       _%slot96972%_)
                '#!void)
              (if (__class-type-final? _%klass96964%_)
                  (make-final-slot-mutator
                   _%klass96964%_
                   _%slot96972%_
                   _%field96981%_)
                  (if (__class-type-struct? _%klass96964%_)
                      (make-struct-slot-mutator
                       _%klass96964%_
                       _%slot96972%_
                       _%field96981%_)
                      (if (let ((_%strukt96987%_
                                 (base-struct/1 _%klass96964%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt96987%_
                                    'class))
                                 (let ((__tmp99694
                                        (let ((__tmp99695
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt96987%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp99695))))
                                   (declare (not safe))
                                   (##fx< _%field96981%_ __tmp99694))))
                          (make-struct-subclass-slot-mutator
                           _%klass96964%_
                           _%slot96972%_
                           _%field96981%_)
                          (make-class-cached-slot-mutator
                           _%klass96964%_
                           _%slot96972%_
                           _%field96981%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass96935%_ _%slot96936%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96935%_ 'class))
            (let ((_%klass96940%_ _%klass96935%_))
              (if (symbol? _%slot96936%_)
                  (let ((_%slot96950%_ _%slot96936%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass96940%_
                     _%slot96950%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot96936%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass96935%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass96903%_ _%slot96904%_)
        (let* ((_%klass96907%_ _%klass96903%_)
               (_%slot96915%_ _%slot96904%_)
               (_%field96924%_
                (let ((__tmp99696
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass96907%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp99696 _%slot96915%_ '#f))))
          (if (not _%field96924%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass96907%_
                       'slot:
                       _%slot96915%_)
                '#!void)
              (if (__class-type-final? _%klass96907%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass96907%_
                   _%slot96915%_
                   _%field96924%_)
                  (if (__class-type-struct? _%klass96907%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass96907%_
                       _%slot96915%_
                       _%field96924%_)
                      (if (let ((_%strukt96930%_
                                 (base-struct/1 _%klass96907%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt96930%_
                                    'class))
                                 (let ((__tmp99697
                                        (let ((__tmp99698
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt96930%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp99698))))
                                   (declare (not safe))
                                   (##fx< _%field96924%_ __tmp99697))))
                          (make-struct-slot-unchecked-accessor
                           _%klass96907%_
                           _%slot96915%_
                           _%field96924%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass96907%_
                           _%slot96915%_
                           _%field96924%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass96878%_ _%slot96879%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96878%_ 'class))
            (let ((_%klass96883%_ _%klass96878%_))
              (if (symbol? _%slot96879%_)
                  (let ((_%slot96893%_ _%slot96879%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass96883%_
                     _%slot96893%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot96879%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass96878%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass96846%_ _%slot96847%_)
        (let* ((_%klass96850%_ _%klass96846%_)
               (_%slot96858%_ _%slot96847%_)
               (_%field96867%_
                (let ((__tmp99699
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass96850%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp99699 _%slot96858%_ '#f))))
          (if (not _%field96867%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass96850%_
                       'slot:
                       _%slot96858%_)
                '#!void)
              (if (__class-type-final? _%klass96850%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass96850%_
                   _%slot96858%_
                   _%field96867%_)
                  (if (__class-type-struct? _%klass96850%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass96850%_
                       _%slot96858%_
                       _%field96867%_)
                      (if (let ((_%strukt96873%_
                                 (base-struct/1 _%klass96850%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt96873%_
                                    'class))
                                 (let ((__tmp99700
                                        (let ((__tmp99701
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt96873%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp99701))))
                                   (declare (not safe))
                                   (##fx< _%field96867%_ __tmp99700))))
                          (make-struct-slot-unchecked-mutator
                           _%klass96850%_
                           _%slot96858%_
                           _%field96867%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass96850%_
                           _%slot96858%_
                           _%field96867%_))))))))
    (define not-an-instance__%
      (lambda (_%object96830%_ _%class96831%_ _%slot96832%_)
        (apply error
               '"not an instance"
               'object:
               _%object96830%_
               'class:
               _%class96831%_
               (if _%slot96832%_ (cons 'slot: (cons _%slot96832%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object96837%_ _%class96838%_)
        (let ((_%slot96840%_ '#f))
          (not-an-instance__% _%object96837%_ _%class96838%_ _%slot96840%_))))
    (define not-an-instance
      (lambda _g99703_
        (let ((_g99702_ (let () (declare (not safe)) (##length _g99703_))))
          (cond ((let () (declare (not safe)) (##fx= _g99702_ 2))
                 (apply not-an-instance__0 _g99703_))
                ((let () (declare (not safe)) (##fx= _g99702_ 3))
                 (apply not-an-instance__% _g99703_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g99703_))))))
    (define make-final-slot-accessor
      (lambda (_%klass96823%_ _%slot96824%_ _%field96825%_)
        (lambda (_%obj96827%_)
          (##direct-structure-ref
           _%obj96827%_
           _%field96825%_
           _%klass96823%_
           _%slot96824%_))))
    (define make-final-slot-mutator
      (lambda (_%klass96816%_ _%slot96817%_ _%field96818%_)
        (lambda (_%obj96820%_ _%val96821%_)
          (##direct-structure-set!
           _%obj96820%_
           _%val96821%_
           _%field96818%_
           _%klass96816%_
           _%slot96817%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass96810%_ _%slot96811%_ _%field96812%_)
        (lambda (_%obj96814%_)
          (##structure-ref
           _%obj96814%_
           _%field96812%_
           _%klass96810%_
           _%slot96811%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass96803%_ _%slot96804%_ _%field96805%_)
        (lambda (_%obj96807%_ _%val96808%_)
          (##structure-set!
           _%obj96807%_
           _%val96808%_
           _%field96805%_
           _%klass96803%_
           _%slot96804%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass96797%_ _%slot96798%_ _%field96799%_)
        (lambda (_%obj96801%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj96801%_
             _%field96799%_
             _%klass96797%_
             _%slot96798%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass96790%_ _%slot96791%_ _%field96792%_)
        (lambda (_%obj96794%_ _%val96795%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj96794%_
             _%val96795%_
             _%field96792%_
             _%klass96790%_
             _%slot96791%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass96784%_ _%slot96785%_ _%field96786%_)
        (lambda (_%obj96788%_)
          (if (class-instance? _%klass96784%_ _%obj96788%_)
              (unchecked-slot-ref _%obj96788%_ _%field96786%_)
              (not-an-instance__%
               _%obj96788%_
               _%klass96784%_
               _%slot96785%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass96777%_ _%slot96778%_ _%field96779%_)
        (lambda (_%obj96781%_ _%val96782%_)
          (if (class-instance? _%klass96777%_ _%obj96781%_)
              (unchecked-field-set! _%obj96781%_ _%field96779%_ _%val96782%_)
              (not-an-instance__%
               _%obj96781%_
               _%klass96777%_
               _%slot96778%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass96768%_ _%slot96769%_ _%field96770%_)
        (lambda (_%obj96772%_)
          (if (let ((__tmp99704
                     (let () (declare (not safe)) (##type-id _%klass96768%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj96772%_ __tmp99704))
              (unchecked-field-ref _%obj96772%_ _%field96770%_)
              (if (class-instance? _%klass96768%_ _%obj96772%_)
                  (unchecked-slot-ref _%obj96772%_ _%slot96769%_)
                  (not-an-instance__%
                   _%obj96772%_
                   _%klass96768%_
                   _%slot96769%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass96758%_ _%slot96759%_ _%field96760%_)
        (lambda (_%obj96762%_ _%val96763%_)
          (if (let ((__tmp99705
                     (let () (declare (not safe)) (##type-id _%klass96758%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj96762%_ __tmp99705))
              (unchecked-field-set! _%obj96762%_ _%field96760%_ _%val96763%_)
              (if (class-instance? _%klass96758%_ _%obj96762%_)
                  (unchecked-slot-set! _%obj96762%_ _%slot96759%_ _%val96763%_)
                  (not-an-instance__%
                   _%obj96762%_
                   _%klass96758%_
                   _%slot96759%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass96752%_ _%slot96753%_ _%field96754%_)
        (lambda (_%obj96756%_)
          (if (let ((__tmp99706
                     (let () (declare (not safe)) (##type-id _%klass96752%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj96756%_ __tmp99706))
              (unchecked-field-ref _%obj96756%_ _%field96754%_)
              (unchecked-slot-ref _%obj96756%_ _%slot96753%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass96745%_ _%slot96746%_ _%field96747%_)
        (lambda (_%obj96749%_ _%val96750%_)
          (if (let ((__tmp99707
                     (let () (declare (not safe)) (##type-id _%klass96745%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj96749%_ __tmp99707))
              (unchecked-field-set! _%obj96749%_ _%field96747%_ _%val96750%_)
              (unchecked-slot-set! _%obj96749%_ _%slot96746%_ _%val96750%_)))))
    (define class-slot-offset
      (lambda (_%klass96720%_ _%slot96721%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96720%_ 'class))
            (let ((_%klass96725%_ _%klass96720%_))
              (if (let () (declare (not safe)) (symbolic? _%slot96721%_))
                  (let ((_%slot96735%_ _%slot96721%_))
                    (__class-slot-offset _%klass96725%_ _%slot96735%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot96721%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass96720%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass96699%_ _%slot96700%_)
        (let* ((_%klass96703%_ _%klass96699%_)
               (_%slot96711%_ _%slot96700%_)
               (__tmp99708
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass96703%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp99708 _%slot96711%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass96673%_ _%obj96674%_ _%slot96675%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96673%_ 'class))
            (let ((_%klass96679%_ _%klass96673%_))
              (if (let () (declare (not safe)) (symbolic? _%slot96675%_))
                  (let ((_%slot96689%_ _%slot96675%_))
                    (__class-slot-ref
                     _%klass96679%_
                     _%obj96674%_
                     _%slot96689%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot96675%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass96673%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass96649%_ _%obj96650%_ _%slot96651%_)
        (let* ((_%klass96654%_ _%klass96649%_) (_%slot96662%_ _%slot96651%_))
          (if (__class-instance? _%klass96654%_ _%obj96650%_)
              (let ((_%off96671%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj96650%_))
                      _%slot96662%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj96650%_
                 _%off96671%_
                 _%klass96654%_
                 _%slot96662%_))
              (not-an-instance__0 _%obj96650%_ _%klass96654%_)))))
    (define class-slot-set!
      (lambda (_%klass96622%_ _%obj96623%_ _%slot96624%_ _%val96625%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96622%_ 'class))
            (let ((_%klass96629%_ _%klass96622%_))
              (if (let () (declare (not safe)) (symbolic? _%slot96624%_))
                  (let ((_%slot96639%_ _%slot96624%_))
                    (__class-slot-set!
                     _%klass96629%_
                     _%obj96623%_
                     _%slot96639%_
                     _%val96625%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot96624%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass96622%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass96597%_ _%obj96598%_ _%slot96599%_ _%val96600%_)
        (let* ((_%klass96603%_ _%klass96597%_) (_%slot96611%_ _%slot96599%_))
          (if (__class-instance? _%klass96603%_ _%obj96598%_)
              (let ((_%off96620%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj96598%_))
                      _%slot96611%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj96598%_
                 _%val96600%_
                 _%off96620%_
                 _%klass96603%_
                 _%slot96611%_))
              (not-an-instance__0 _%obj96598%_ _%klass96603%_)))))
    (define unchecked-field-ref
      (lambda (_%obj96594%_ _%off96595%_)
        (let ((__tmp99709
               (let () (declare (not safe)) (##structure-type _%obj96594%_))))
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj96594%_
           _%off96595%_
           __tmp99709
           '#f))))
    (define unchecked-field-set!
      (lambda (_%obj96590%_ _%off96591%_ _%val96592%_)
        (let ((__tmp99710
               (let () (declare (not safe)) (##structure-type _%obj96590%_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj96590%_
           _%val96592%_
           _%off96591%_
           __tmp99710
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj96587%_ _%slot96588%_)
        (unchecked-field-ref
         _%obj96587%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj96587%_))
          _%slot96588%_))))
    (define unchecked-slot-set!
      (lambda (_%obj96583%_ _%slot96584%_ _%val96585%_)
        (unchecked-field-set!
         _%obj96583%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj96583%_))
          _%slot96584%_)
         _%val96585%_)))
    (define slot-ref__%
      (lambda (_%obj96545%_ _%slot96546%_ _%E96547%_)
        (if (symbol? _%slot96546%_)
            (let ((_%slot96551%_ _%slot96546%_))
              (if (procedure? _%E96547%_)
                  (let ((_%E96561%_ _%E96547%_))
                    (__slot-ref__% _%obj96545%_ _%slot96551%_ _%E96561%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E96547%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot96546%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj96574%_ _%slot96575%_)
        (let ((_%E96577%_ __slot-error))
          (slot-ref__% _%obj96574%_ _%slot96575%_ _%E96577%_))))
    (define slot-ref
      (lambda _g99712_
        (let ((_g99711_ (let () (declare (not safe)) (##length _g99712_))))
          (cond ((let () (declare (not safe)) (##fx= _g99711_ 2))
                 (apply slot-ref__0 _g99712_))
                ((let () (declare (not safe)) (##fx= _g99711_ 3))
                 (apply slot-ref__% _g99712_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g99712_))))))
    (define __slot-ref__%
      (lambda (_%obj96501%_ _%slot96502%_ _%E96503%_)
        (let* ((_%slot96506%_ _%slot96502%_)
               (_%E96514%_ _%E96503%_)
               (_%klass96523%_ (class-of _%obj96501%_))
               (_%$e96526%_
                (__class-slot-offset _%klass96523%_ _%slot96506%_)))
          (if _%$e96526%_
              ((lambda (_%off96529%_)
                 (unchecked-field-ref _%obj96501%_ _%off96529%_))
               _%$e96526%_)
              (let ()
                (declare (not safe))
                (_%E96514%_ _%obj96501%_ _%slot96506%_))))))
    (define __slot-ref__0
      (lambda (_%obj96535%_ _%slot96536%_)
        (let ((_%E96538%_ __slot-error))
          (__slot-ref__% _%obj96535%_ _%slot96536%_ _%E96538%_))))
    (define __slot-ref
      (lambda _g99714_
        (let ((_g99713_ (let () (declare (not safe)) (##length _g99714_))))
          (cond ((let () (declare (not safe)) (##fx= _g99713_ 2))
                 (apply __slot-ref__0 _g99714_))
                ((let () (declare (not safe)) (##fx= _g99713_ 3))
                 (apply __slot-ref__% _g99714_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g99714_))))))
    (define slot-set!__%
      (lambda (_%obj96459%_ _%slot96460%_ _%val96461%_ _%E96462%_)
        (if (symbol? _%slot96460%_)
            (let ((_%slot96466%_ _%slot96460%_))
              (if (procedure? _%E96462%_)
                  (let ((_%E96476%_ _%E96462%_))
                    (__slot-set!__%
                     _%obj96459%_
                     _%slot96466%_
                     _%val96461%_
                     _%E96476%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E96462%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot96460%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj96489%_ _%slot96490%_ _%val96491%_)
        (let ((_%E96493%_ __slot-error))
          (slot-set!__% _%obj96489%_ _%slot96490%_ _%val96491%_ _%E96493%_))))
    (define slot-set!
      (lambda _g99716_
        (let ((_g99715_ (let () (declare (not safe)) (##length _g99716_))))
          (cond ((let () (declare (not safe)) (##fx= _g99715_ 3))
                 (apply slot-set!__0 _g99716_))
                ((let () (declare (not safe)) (##fx= _g99715_ 4))
                 (apply slot-set!__% _g99716_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g99716_))))))
    (define __slot-set!__%
      (lambda (_%obj96412%_ _%slot96413%_ _%val96414%_ _%E96415%_)
        (let* ((_%slot96418%_ _%slot96413%_)
               (_%E96426%_ _%E96415%_)
               (_%klass96435%_ (class-of _%obj96412%_))
               (_%$e96438%_
                (__class-slot-offset _%klass96435%_ _%slot96418%_)))
          (if _%$e96438%_
              ((lambda (_%off96441%_)
                 (unchecked-field-set! _%obj96412%_ _%off96441%_ _%val96414%_))
               _%$e96438%_)
              (let ()
                (declare (not safe))
                (_%E96426%_ _%obj96412%_ _%slot96418%_))))))
    (define __slot-set!__0
      (lambda (_%obj96447%_ _%slot96448%_ _%val96449%_)
        (let ((_%E96451%_ __slot-error))
          (__slot-set!__%
           _%obj96447%_
           _%slot96448%_
           _%val96449%_
           _%E96451%_))))
    (define __slot-set!
      (lambda _g99718_
        (let ((_g99717_ (let () (declare (not safe)) (##length _g99718_))))
          (cond ((let () (declare (not safe)) (##fx= _g99717_ 3))
                 (apply __slot-set!__0 _g99718_))
                ((let () (declare (not safe)) (##fx= _g99717_ 4))
                 (apply __slot-set!__% _g99718_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g99718_))))))
    (define __slot-error
      (lambda (_%obj96408%_ _%slot96409%_)
        (error '"Cannot find slot"
               'object:
               _%obj96408%_
               'slot:
               _%slot96409%_)))
    (define subclass?
      (lambda (_%maybe-sub-class96383%_ _%maybe-super-class96384%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class96383%_ 'class))
            (let ((_%maybe-sub-class96388%_ _%maybe-sub-class96383%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class96384%_
                     'class))
                  (let ((_%maybe-super-class96398%_
                         _%maybe-super-class96384%_))
                    (__subclass?
                     _%maybe-sub-class96388%_
                     _%maybe-super-class96398%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class96384%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class96383%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class96355%_ _%maybe-super-class96356%_)
        (let* ((_%maybe-sub-class96359%_ _%maybe-sub-class96355%_)
               (_%maybe-super-class96367%_ _%maybe-super-class96356%_)
               (_%maybe-super-class-id96376%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class96367%_)))
               (_%$e96378%_
                (eq? _%maybe-super-class-id96376%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class96359%_)))))
          (if _%$e96378%_
              _%$e96378%_
              (let ((__tmp99720
                     (lambda (_%super-class96381%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class96381%_))
                            _%maybe-super-class-id96376%_)))
                    (__tmp99719
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class96359%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp99720 __tmp99719))))))
    (define object?
      (lambda (_%o96352%_)
        (if (let () (declare (not safe)) (##structure? _%o96352%_))
            (let ((__tmp99721
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o96352%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp99721 'class))
            '#f)))
    (define object-type
      (lambda (_%o96347%_)
        (if (let () (declare (not safe)) (##structure? _%o96347%_))
            (let ((_%klass96350%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o96347%_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass96350%_ 'class))
                  _%klass96350%_
                  (begin
                    (error '"not an object" _%o96347%_ _%klass96350%_)
                    '#!void)))
            (begin (error '"not an object" _%o96347%_) '#!void))))
    (define direct-instance?
      (lambda (_%klass96332%_ _%obj96333%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96332%_ 'class))
            (let ((_%klass96337%_ _%klass96332%_))
              (__direct-instance? _%klass96337%_ _%obj96333%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass96332%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass96319%_ _%obj96320%_)
        (let* ((_%klass96323%_ _%klass96319%_)
               (__tmp99722
                (let () (declare (not safe)) (##type-id _%klass96323%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj96320%_ __tmp99722))))
    (define immediate-instance-of?
      (lambda (_%klass96315%_ _%obj96316%_)
        (if (let () (declare (not safe)) (##structure? _%obj96316%_))
            (eq? _%klass96315%_
                 (let () (declare (not safe)) (##structure-type _%obj96316%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass96300%_ _%obj96301%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96300%_ 'class))
            (let ((_%klass96305%_ _%klass96300%_))
              (__struct-instance? _%klass96305%_ _%obj96301%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass96300%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass96287%_ _%obj96288%_)
        (let* ((_%klass96291%_ _%klass96287%_)
               (__tmp99723
                (let () (declare (not safe)) (##type-id _%klass96291%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj96288%_ __tmp99723))))
    (define class-instance?
      (lambda (_%klass96272%_ _%obj96273%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96272%_ 'class))
            (let ((_%klass96277%_ _%klass96272%_))
              (__class-instance? _%klass96277%_ _%obj96273%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass96272%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass96257%_ _%obj96258%_)
        (let* ((_%klass96261%_ _%klass96257%_)
               (_%type96270%_ (class-of _%obj96258%_)))
          (__subclass? _%type96270%_ _%klass96261%_))))
    (define make-object
      (lambda (_%klass96232%_ _%k96233%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96232%_ 'class))
            (let ((_%klass96237%_ _%klass96232%_))
              (if (fixnum? _%k96233%_)
                  (let ((_%k96247%_ _%k96233%_))
                    (__make-object _%klass96237%_ _%k96247%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k96233%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass96232%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass96209%_ _%k96210%_)
        (let* ((_%klass96213%_ _%klass96209%_) (_%k96221%_ _%k96210%_))
          (if (__class-type-system? _%klass96213%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass96213%_)
                '#!void)
              (let ((_%obj96230%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass96213%_ _%k96221%_))))
                (object-fill! _%obj96230%_ '#f))))))
    (define object-fill!
      (lambda (_%obj96194%_ _%fill96195%_)
        (if '#t
            (let ((_%obj96199%_ _%obj96194%_))
              (__object-fill! _%obj96199%_ _%fill96195%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj96194%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj96176%_ _%fill96177%_)
        (let ((_%obj96180%_ _%obj96176%_))
          (let _%loop96189%_ ((_%i96191%_
                               (let ((__tmp99724
                                      (let ()
                                        (declare (not safe))
                                        (##structure-length _%obj96180%_))))
                                 (declare (not safe))
                                 (##fx- __tmp99724 '1))))
            (if (let () (declare (not safe)) (##fx> _%i96191%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj96180%_
                     _%fill96177%_
                     _%i96191%_
                     '#f
                     '#f))
                  (_%loop96189%_
                   (let () (declare (not safe)) (##fx- _%i96191%_ '1))))
                _%obj96180%_)))))
    (define new-instance
      (lambda (_%klass96162%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96162%_ 'class))
            (let ((_%klass96166%_ _%klass96162%_))
              (__new-instance _%klass96166%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass96162%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass96150%_)
        (let* ((_%klass96153%_ _%klass96150%_)
               (__obj99639
                (let ((__tmp99725
                       (let ((__tmp99726
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass96153%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp99726))))
                  (declare (not safe))
                  (##make-structure _%klass96153%_ __tmp99725))))
          (object-fill! __obj99639 '#f)
          __obj99639)))
    (define make-instance
      (lambda (_%klass96135%_ . _%args96136%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96135%_ 'class))
            (let ((_%klass96140%_ _%klass96135%_))
              (declare (not safe))
              (##apply __make-instance _%klass96140%_ _%args96136%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass96135%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass96107%_ . _%args96108%_)
        (let* ((_%klass96111%_ _%klass96107%_)
               (_%$e96120%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass96111%_ '10 '#f '#f))))
          (if _%$e96120%_
              ((lambda (_%kons-id96123%_)
                 (let ((_%obj96125%_ (__new-instance _%klass96111%_)))
                   (___constructor-init!
                    _%klass96111%_
                    _%kons-id96123%_
                    _%obj96125%_
                    _%args96108%_)
                   _%obj96125%_))
               _%$e96120%_)
              (if (__class-type-metaclass? _%klass96111%_)
                  (let ((_%obj96128%_ (__new-instance _%klass96111%_)))
                    (__metaclass-instance-init!
                     _%klass96111%_
                     _%obj96128%_
                     _%args96108%_)
                    _%obj96128%_)
                  (if (not (__class-type-struct? _%klass96111%_))
                      (let ((_%obj96131%_ (__new-instance _%klass96111%_)))
                        (___class-instance-init!
                         _%klass96111%_
                         _%obj96131%_
                         _%args96108%_)
                        _%obj96131%_)
                      (if (let ((__tmp99728
                                 (__class-type-field-count _%klass96111%_))
                                (__tmp99727
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args96108%_))))
                            (declare (not safe))
                            (##fx= __tmp99728 __tmp99727))
                          (apply ##structure _%klass96111%_ _%args96108%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass96111%_
                                   'slots:
                                   (__class-type-slot-list _%klass96111%_)
                                   'args:
                                   _%args96108%_)
                            '#!void))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj96092%_ . _%args96093%_)
        (if '#t
            (let ((_%obj96097%_ _%obj96092%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj96097%_ _%args96093%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj96092%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj96079%_ . _%args96080%_)
        (let ((_%obj96083%_ _%obj96079%_))
          (if (let ((__tmp99730
                     (let () (declare (not safe)) (##length _%args96080%_)))
                    (__tmp99729
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj96083%_))))
                (declare (not safe))
                (##fx< __tmp99730 __tmp99729))
              (___struct-instance-init! _%obj96083%_ _%args96080%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj96083%_
                     'args:
                     _%args96080%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj96038%_ _%args96039%_)
        (let _%lp96041%_ ((_%k96043%_ '1) (_%rest96044%_ _%args96039%_))
          (let* ((_%rest9604596053%_ _%rest96044%_)
                 (_%else9604796061%_ (lambda () _%obj96038%_))
                 (_%K9604996067%_
                  (lambda (_%rest96064%_ _%hd96065%_)
                    (unchecked-field-set! _%obj96038%_ _%k96043%_ _%hd96065%_)
                    (_%lp96041%_
                     (let () (declare (not safe)) (##fx+ _%k96043%_ '1))
                     _%rest96064%_))))
            (if (let () (declare (not safe)) (##pair? _%rest9604596053%_))
                (let ((_%hd9605096070%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9604596053%_)))
                      (_%tl9605196072%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9604596053%_))))
                  (let* ((_%hd96075%_ _%hd9605096070%_)
                         (_%rest96077%_ _%tl9605196072%_))
                    (_%K9604996067%_ _%rest96077%_ _%hd96075%_)))
                (_%else9604796061%_))))))
    (define class-instance-init!
      (lambda (_%obj96023%_ . _%args96024%_)
        (if '#t
            (let ((_%obj96028%_ _%obj96023%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj96028%_ _%args96024%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj96023%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj96010%_ . _%args96011%_)
        (let ((_%obj96014%_ _%obj96010%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj96014%_))
           _%obj96014%_
           _%args96011%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass95952%_ _%obj95953%_ _%args95954%_)
        (let _%lp95956%_ ((_%rest95958%_ _%args95954%_))
          (let* ((_%rest9595995969%_ _%rest95958%_)
                 (_%else9596195977%_
                  (lambda ()
                    (if (null? _%rest95958%_)
                        _%obj95953%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass95952%_
                               'rest:
                               _%rest95958%_))))
                 (_%K9596395991%_
                  (lambda (_%rest95980%_ _%val95981%_ _%key95982%_)
                    (if (not (keyword? _%key95982%_))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key95982%_)
                        (let ((_%$e95985%_
                               (__class-slot-offset
                                _%klass95952%_
                                _%key95982%_)))
                          (if _%$e95985%_
                              ((lambda (_%off95988%_)
                                 (unchecked-field-set!
                                  _%obj95953%_
                                  _%off95988%_
                                  _%val95981%_)
                                 (_%lp95956%_ _%rest95980%_))
                               _%$e95985%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass95952%_
                                     'slot:
                                     _%key95982%_)))))))
            (if (let () (declare (not safe)) (##pair? _%rest9595995969%_))
                (let ((_%hd9596495994%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9595995969%_)))
                      (_%tl9596595996%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9595995969%_))))
                  (let ((_%key95999%_ _%hd9596495994%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9596595996%_))
                        (let ((_%hd9596696001%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9596595996%_)))
                              (_%tl9596796003%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9596595996%_))))
                          (let* ((_%val96006%_ _%hd9596696001%_)
                                 (_%rest96008%_ _%tl9596796003%_))
                            (_%K9596395991%_
                             _%rest96008%_
                             _%val96006%_
                             _%key95999%_)))
                        (_%else9596195977%_))))
                (_%else9596195977%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass95948%_ _%obj95949%_ _%args95950%_)
        (apply call-method
               _%klass95948%_
               'instance-init!
               _%obj95949%_
               _%args95950%_)))
    (define constructor-init!
      (lambda (_%klass95911%_ _%kons-id95912%_ _%obj95913%_ . _%args95914%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95911%_ 'class))
            (let ((_%klass95918%_ _%klass95911%_))
              (if (symbol? _%kons-id95912%_)
                  (let ((_%kons-id95928%_ _%kons-id95912%_))
                    (if '#t
                        (let ((_%obj95938%_ _%obj95913%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass95918%_
                                   _%kons-id95928%_
                                   _%obj95938%_
                                   _%args95914%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                           'contract:
                           'true
                           'value:
                           _%obj95913%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id95912%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass95911%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass95880%_ _%kons-id95881%_ _%obj95882%_ . _%args95883%_)
        (let* ((_%klass95886%_ _%klass95880%_)
               (_%kons-id95894%_ _%kons-id95881%_)
               (_%obj95902%_ _%obj95882%_))
          (___constructor-init!
           _%klass95886%_
           _%kons-id95894%_
           _%obj95902%_
           _%args95883%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass95869%_ _%kons-id95870%_ _%obj95871%_ _%args95872%_)
        (let ((_%$e95874%_
               (__find-method _%klass95869%_ _%obj95871%_ _%kons-id95870%_)))
          (if _%$e95874%_
              ((lambda (_%kons95877%_)
                 (apply _%kons95877%_ _%obj95871%_ _%args95872%_)
                 _%obj95871%_)
               _%$e95874%_)
              (error '"missing constructor"
                     'class:
                     _%klass95869%_
                     'method:
                     _%kons-id95870%_)))))
    (define struct-copy
      (lambda (_%struct95855%_)
        (if '#t
            (let ((_%struct95859%_ _%struct95855%_))
              (__struct-copy _%struct95859%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct95855%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct95843%_)
        (let ((_%struct95846%_ _%struct95843%_))
          (declare (not safe))
          (##structure-copy _%struct95846%_))))
    (define struct->list
      (lambda (_%obj95829%_)
        (if '#t
            (let ((_%obj95833%_ _%obj95829%_)) (__struct->list _%obj95833%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj95829%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj95817%_)
        (let ((_%obj95820%_ _%obj95817%_))
          (declare (not safe))
          (##vector->list _%obj95820%_))))
    (define class->list
      (lambda (_%obj95803%_)
        (if '#t
            (let ((_%obj95807%_ _%obj95803%_)) (__class->list _%obj95807%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@837.20-837.23"
               'contract:
               'true
               'value:
               _%obj95803%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj95779%_)
        (let* ((_%obj95782%_ _%obj95779%_)
               (_%klass95791%_
                (let () (declare (not safe)) (##structure-type _%obj95782%_)))
               (_%slot-vector95793%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass95791%_ '7 '#f '#f))))
          (let _%loop95795%_ ((_%index95797%_
                               (let ((__tmp99731
                                      (let ()
                                        (declare (not safe))
                                        (##vector-length
                                         _%slot-vector95793%_))))
                                 (declare (not safe))
                                 (##fx- __tmp99731 '1)))
                              (_%plist95798%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index95797%_ '1))
                (cons _%klass95791%_ _%plist95798%_)
                (let ((_%slot95801%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%slot-vector95793%_ _%index95797%_))))
                  (_%loop95795%_
                   (let () (declare (not safe)) (##fx- _%index95797%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot95801%_))
                         (cons (unchecked-field-ref
                                _%obj95782%_
                                _%index95797%_)
                               _%plist95798%_)))))))))
    (define call-method
      (lambda (_%obj95763%_ _%id95764%_ . _%args95765%_)
        (if (symbol? _%id95764%_)
            (let ((_%id95769%_ _%id95764%_))
              (declare (not safe))
              (##apply __call-method _%obj95763%_ _%id95769%_ _%args95765%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.24-852.26"
               'contract:
               'symbol?
               'value:
               _%id95764%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj95732%_ _%id95733%_ . _%args95734%_)
        (let* ((_%id95737%_ _%id95733%_)
               (_%$e95746%_ (__method-ref _%obj95732%_ _%id95737%_)))
          (if _%$e95746%_
              ((lambda (_%method95749%_)
                 (let ((_%method95751%_ _%method95749%_))
                   (apply _%method95751%_ _%obj95732%_ _%args95734%_)))
               _%$e95746%_)
              (error '"cannot find method"
                     'object:
                     _%obj95732%_
                     'method:
                     _%id95737%_)))))
    (define method-ref
      (lambda (_%obj95717%_ _%id95718%_)
        (if (symbol? _%id95718%_)
            (let ((_%id95722%_ _%id95718%_))
              (__method-ref _%obj95717%_ _%id95722%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@879.23-879.25"
               'contract:
               'symbol?
               'value:
               _%id95718%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj95704%_ _%id95705%_)
        (let ((_%id95708%_ _%id95705%_))
          (__find-method (class-of _%obj95704%_) _%obj95704%_ _%id95708%_))))
    (define checked-method-ref
      (lambda (_%obj95697%_ _%id95698%_)
        (let ((_%$e95701%_ (method-ref _%obj95697%_ _%id95698%_)))
          (if _%$e95701%_
              _%$e95701%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj95697%_
                       'method:
                       _%id95698%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj95682%_ _%id95683%_)
        (if (symbol? _%id95683%_)
            (let ((_%id95687%_ _%id95683%_))
              (__bound-method-ref _%obj95682%_ _%id95687%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@887.29-887.31"
               'contract:
               'symbol?
               'value:
               _%id95683%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj95650%_ _%id95651%_)
        (let* ((_%id95654%_ _%id95651%_)
               (_%$e95663%_ (__method-ref _%obj95650%_ _%id95654%_)))
          (if _%$e95663%_
              ((lambda (_%method95666%_)
                 (let ((_%method95668%_ _%method95666%_))
                   (lambda _%args95679%_
                     (apply _%method95668%_ _%obj95650%_ _%args95679%_))))
               _%$e95663%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj95635%_ _%id95636%_)
        (if (symbol? _%id95636%_)
            (let ((_%id95640%_ _%id95636%_))
              (__checked-bound-method-ref _%obj95635%_ _%id95640%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@896.37-896.39"
               'contract:
               'symbol?
               'value:
               _%id95636%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj95618%_ _%id95619%_)
        (let* ((_%id95622%_ _%id95619%_)
               (_%method95631%_ (checked-method-ref _%obj95618%_ _%id95622%_)))
          (lambda _%args95633%_
            (apply _%method95631%_ _%obj95618%_ _%args95633%_)))))
    (define find-method
      (lambda (_%klass95592%_ _%obj95593%_ _%id95594%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95592%_ 'class))
            (let ((_%klass95598%_ _%klass95592%_))
              (if (symbol? _%id95594%_)
                  (let ((_%id95608%_ _%id95594%_))
                    (__find-method _%klass95598%_ _%obj95593%_ _%id95608%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@901.41-901.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id95594%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@901.20-901.25"
               'contract:
               'class-type?
               'value:
               _%klass95592%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass95565%_ _%obj95566%_ _%id95567%_)
        (let* ((_%klass95570%_ _%klass95565%_)
               (_%id95578%_ _%id95567%_)
               (_%$e95587%_
                (__direct-method-ref _%klass95570%_ _%obj95566%_ _%id95578%_)))
          (if _%$e95587%_
              _%$e95587%_
              (if (__class-type-sealed? _%klass95570%_)
                  '#f
                  (__mixin-method-ref
                   _%klass95570%_
                   _%obj95566%_
                   _%id95578%_))))))
    (define mixin-find-method
      (lambda (_%mixins95549%_ _%obj95550%_ _%id95551%_)
        (if (symbol? _%id95551%_)
            (let ((_%id95555%_ _%id95551%_))
              (__mixin-find-method _%mixins95549%_ _%obj95550%_ _%id95555%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@909.37-909.39"
               'contract:
               'symbol?
               'value:
               _%id95551%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins95531%_ _%obj95532%_ _%id95533%_)
        (let* ((_%id95536%_ _%id95533%_)
               (__tmp99732
                (lambda (_%g9554495546%_)
                  (direct-method-ref
                   _%g9554495546%_
                   _%obj95532%_
                   _%id95536%_))))
          (declare (not safe))
          (__ormap1 __tmp99732 _%mixins95531%_))))
    (define direct-method-ref
      (lambda (_%klass95505%_ _%obj95506%_ _%id95507%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95505%_ 'class))
            (let ((_%klass95511%_ _%klass95505%_))
              (if (symbol? _%id95507%_)
                  (let ((_%id95521%_ _%id95507%_))
                    (__direct-method-ref
                     _%klass95511%_
                     _%obj95506%_
                     _%id95521%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@912.47-912.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id95507%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@912.26-912.31"
               'contract:
               'class-type?
               'value:
               _%klass95505%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass95459%_ _%obj95460%_ _%id95461%_)
        (let* ((_%klass95464%_ _%klass95459%_) (_%id95472%_ _%id95461%_))
          (letrec ((_%metaclass-resolve-method95481%_
                    (lambda ()
                      (let ((__method99640
                             (__method-ref _%klass95464%_ 'direct-method-ref)))
                        (if __method99640
                            (let ()
                              (declare (not safe))
                              (__method99640
                               _%klass95464%_
                               _%obj95460%_
                               _%id95472%_))
                            (begin
                              (error '"Missing method"
                                     _%klass95464%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!95482%_
                    (lambda ()
                      (let ((_%method95502%_
                             (_%metaclass-resolve-method95481%_)))
                        (let ((__tmp99734
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass95464%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp99733
                               (if _%method95502%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp99734
                           _%id95472%_
                           __tmp99733))
                        _%method95502%_))))
            (let ((_%$e95484%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass95464%_ '11 '#f '#f))))
              (if _%$e95484%_
                  ((lambda (_%ht95487%_)
                     (let ((_%method95489%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht95487%_
                               _%id95472%_
                               '#f))))
                       (if (procedure? _%method95489%_)
                           _%method95489%_
                           (if (__class-type-metaclass? _%klass95464%_)
                               (let ((_%$e95493%_ _%method95489%_))
                                 (if (eq? 'resolved _%$e95493%_)
                                     (_%metaclass-resolve-method95481%_)
                                     (if (eq? 'unknown _%$e95493%_)
                                         '#f
                                         (_%metaclass-resolve-method!95482%_))))
                               '#f))))
                   _%$e95484%_)
                  (if (__class-type-metaclass? _%klass95464%_)
                      (let ((_%tab95498%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass95464%_
                           _%tab95498%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!95482%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass95433%_ _%obj95434%_ _%id95435%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95433%_ 'class))
            (let ((_%klass95439%_ _%klass95433%_))
              (if (symbol? _%id95435%_)
                  (let ((_%id95449%_ _%id95435%_))
                    (__mixin-method-ref
                     _%klass95439%_
                     _%obj95434%_
                     _%id95449%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@942.46-942.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id95435%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@942.25-942.30"
               'contract:
               'class-type?
               'value:
               _%klass95433%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass95411%_ _%obj95412%_ _%id95413%_)
        (let* ((_%klass95416%_ _%klass95411%_) (_%id95424%_ _%id95413%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass95416%_ '6 '#f '#f))
           _%obj95412%_
           _%id95424%_))))
    (define bind-method!__%
      (lambda (_%klass95370%_ _%id95371%_ _%proc95372%_ _%rebind?95373%_)
        (if (symbol? _%id95371%_)
            (let ((_%id95377%_ _%id95371%_))
              (if (procedure? _%proc95372%_)
                  (let ((_%proc95387%_ _%proc95372%_))
                    (__bind-method!__%
                     _%klass95370%_
                     _%id95377%_
                     _%proc95387%_
                     _%rebind?95373%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@945.42-945.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc95372%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@945.27-945.29"
               'contract:
               'symbol?
               'value:
               _%id95371%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass95400%_ _%id95401%_ _%proc95402%_)
        (let ((_%rebind?95404%_ '#f))
          (bind-method!__%
           _%klass95400%_
           _%id95401%_
           _%proc95402%_
           _%rebind?95404%_))))
    (define bind-method!
      (lambda _g99736_
        (let ((_g99735_ (let () (declare (not safe)) (##length _g99736_))))
          (cond ((let () (declare (not safe)) (##fx= _g99735_ 3))
                 (apply bind-method!__0 _g99736_))
                ((let () (declare (not safe)) (##fx= _g99735_ 4))
                 (apply bind-method!__% _g99736_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g99736_))))))
    (define __bind-method!__%
      (lambda (_%klass95321%_ _%id95322%_ _%proc95323%_ _%rebind?95324%_)
        (let* ((_%id95327%_ _%id95322%_) (_%proc95335%_ _%proc95323%_))
          (letrec ((_%bind!95344%_
                    (lambda (_%ht95353%_)
                      (if (and (not _%rebind?95324%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht95353%_
                                  _%id95327%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass95321%_
                                 'method:
                                 _%id95327%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht95353%_
                               _%id95327%_
                               _%proc95335%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass95321%_ 'class))
                (let ((_%ht95347%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass95321%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht95347%_
                      (_%bind!95344%_ _%ht95347%_)
                      (let ((_%ht95349%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass95321%_
                           _%ht95349%_
                           '11
                           '#f
                           '#f))
                        (_%bind!95344%_ _%ht95349%_))))
                (if (let () (declare (not safe)) (##type? _%klass95321%_))
                    (let ((__tmp99737 (__shadow-class _%klass95321%_)))
                      (declare (not safe))
                      (__bind-method!
                       __tmp99737
                       _%id95327%_
                       _%proc95335%_
                       _%rebind?95324%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass95321%_)))))))
    (define __bind-method!__0
      (lambda (_%klass95358%_ _%id95359%_ _%proc95360%_)
        (let ((_%rebind?95362%_ '#f))
          (__bind-method!__%
           _%klass95358%_
           _%id95359%_
           _%proc95360%_
           _%rebind?95362%_))))
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
      (lambda (_%size-hint95301%_ _%seed95303%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint95301%_
           procedure-hash
           eq?
           _%seed95303%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint95309%_ '#f) (_%seed95311%_ '0))
          (make-method-specializer-table__%
           _%size-hint95309%_
           _%seed95311%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint95313%_)
        (let ((_%seed95315%_ '0))
          (make-method-specializer-table__%
           _%size-hint95313%_
           _%seed95315%_))))
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
      (lambda (_%tab95254%_ _%key95255%_ _%default95256%_)
        (let ((_%table95258%_
               (let () (declare (not safe)) (&raw-table-table _%tab95254%_)))
              (_%seed95259%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95254%_))))
          (let* ((_%h95261%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key95255%_))
                         _%seed95259%_))
                 (_%size95264%_ (vector-length _%table95258%_))
                 (_%entries95267%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95264%_ '2)))
                 (_%start95270%_
                  (let ((__tmp99742
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95261%_ _%entries95267%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99742 '1))))
            (let _%loop95274%_ ((_%probe95277%_ _%start95270%_)
                                (_%i95279%_ '1)
                                (_%deleted95281%_ '#f))
              (let ((_%k95284%_ (vector-ref _%table95258%_ _%probe95277%_)))
                (if (eq? _%k95284%_ (macro-unused-obj))
                    _%default95256%_
                    (if (eq? _%k95284%_ (macro-deleted-obj))
                        (_%loop95274%_
                         (let ((_%next-probe95289%_
                                (fx+ _%start95270%_
                                     _%i95279%_
                                     (fx* _%i95279%_ _%i95279%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95289%_ _%size95264%_))
                         (let () (declare (not safe)) (##fx+ _%i95279%_ '1))
                         (let ((_%$e95292%_ _%deleted95281%_))
                           (if _%$e95292%_ _%$e95292%_ _%probe95277%_)))
                        (if (eq? _%key95255%_ _%k95284%_)
                            (vector-ref
                             _%table95258%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe95277%_ '1)))
                            (_%loop95274%_
                             (let ((_%next-probe95297%_
                                    (fx+ _%start95270%_
                                         _%i95279%_
                                         (fx* _%i95279%_ _%i95279%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95297%_ _%size95264%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95279%_ '1))
                             _%deleted95281%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab95250%_ _%key95251%_ _%value95252%_)
        (if (let ((__tmp99745
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab95250%_)))
                  (__tmp99743
                   (let ((__tmp99744
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab95250%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp99744 '4))))
              (declare (not safe))
              (##fx< __tmp99745 __tmp99743))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab95250%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab95250%_
         _%key95251%_
         _%value95252%_)))
    (define __method-specializer-table-set!
      (lambda (_%tab95201%_ _%key95202%_ _%value95203%_)
        (let ((_%table95206%_
               (let () (declare (not safe)) (&raw-table-table _%tab95201%_)))
              (_%seed95207%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95201%_))))
          (let* ((_%h95209%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key95202%_))
                         _%seed95207%_))
                 (_%size95212%_ (vector-length _%table95206%_))
                 (_%entries95215%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95212%_ '2)))
                 (_%start95218%_
                  (let ((__tmp99746
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95209%_ _%entries95215%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99746 '1))))
            (let _%loop95222%_ ((_%probe95225%_ _%start95218%_)
                                (_%i95227%_ '1)
                                (_%deleted95229%_ '#f))
              (let ((_%k95232%_ (vector-ref _%table95206%_ _%probe95225%_)))
                (if (eq? _%k95232%_ (macro-unused-obj))
                    (if _%deleted95229%_
                        (begin
                          (vector-set!
                           _%table95206%_
                           _%deleted95229%_
                           _%key95202%_)
                          (vector-set!
                           _%table95206%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted95229%_ '1))
                           _%value95203%_)
                          ((lambda ()
                             (let ((__tmp99747
                                    (let ((__tmp99748
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95201%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99748 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95201%_
                                __tmp99747)))))
                        (begin
                          (vector-set!
                           _%table95206%_
                           _%probe95225%_
                           _%key95202%_)
                          (vector-set!
                           _%table95206%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe95225%_ '1))
                           _%value95203%_)
                          ((lambda ()
                             (let ((__tmp99749
                                    (let ((__tmp99750
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab95201%_))))
                                      (declare (not safe))
                                      (##fx- __tmp99750 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab95201%_ __tmp99749))
                             (let ((__tmp99751
                                    (let ((__tmp99752
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95201%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99752 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95201%_
                                __tmp99751))))))
                    (if (eq? _%k95232%_ (macro-deleted-obj))
                        (_%loop95222%_
                         (let ((_%next-probe95239%_
                                (fx+ _%start95218%_
                                     _%i95227%_
                                     (fx* _%i95227%_ _%i95227%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95239%_ _%size95212%_))
                         (let () (declare (not safe)) (##fx+ _%i95227%_ '1))
                         (let ((_%$e95242%_ _%deleted95229%_))
                           (if _%$e95242%_ _%$e95242%_ _%probe95225%_)))
                        (if (eq? _%key95202%_ _%k95232%_)
                            (let ()
                              (vector-set!
                               _%table95206%_
                               _%probe95225%_
                               _%key95202%_)
                              (vector-set!
                               _%table95206%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95225%_ '1))
                               _%value95203%_))
                            (_%loop95222%_
                             (let ((_%next-probe95247%_
                                    (fx+ _%start95218%_
                                         _%i95227%_
                                         (fx* _%i95227%_ _%i95227%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95247%_ _%size95212%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95227%_ '1))
                             _%deleted95229%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab95196%_
               _%key95197%_
               _%method-specializer-table-update!95198%_
               _%default95199%_)
        (if (let ((__tmp99755
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab95196%_)))
                  (__tmp99753
                   (let ((__tmp99754
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab95196%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp99754 '4))))
              (declare (not safe))
              (##fx< __tmp99755 __tmp99753))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab95196%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab95196%_
         _%key95197%_
         _%method-specializer-table-update!95198%_
         _%default95199%_)))
    (define __method-specializer-table-update!
      (lambda (_%tab95146%_
               _%key95147%_
               _%method-specializer-table-update!95148%_
               _%default95149%_)
        (let ((_%table95152%_
               (let () (declare (not safe)) (&raw-table-table _%tab95146%_)))
              (_%seed95153%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95146%_))))
          (let* ((_%h95155%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key95147%_))
                         _%seed95153%_))
                 (_%size95158%_ (vector-length _%table95152%_))
                 (_%entries95161%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95158%_ '2)))
                 (_%start95164%_
                  (let ((__tmp99756
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95155%_ _%entries95161%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99756 '1))))
            (let _%loop95168%_ ((_%probe95171%_ _%start95164%_)
                                (_%i95173%_ '1)
                                (_%deleted95175%_ '#f))
              (let ((_%k95178%_ (vector-ref _%table95152%_ _%probe95171%_)))
                (if (eq? _%k95178%_ (macro-unused-obj))
                    (if _%deleted95175%_
                        (begin
                          (vector-set!
                           _%table95152%_
                           _%deleted95175%_
                           _%key95147%_)
                          (vector-set!
                           _%table95152%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted95175%_ '1))
                           (_%method-specializer-table-update!95148%_
                            _%default95149%_))
                          ((lambda ()
                             (let ((__tmp99757
                                    (let ((__tmp99758
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95146%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99758 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95146%_
                                __tmp99757)))))
                        (begin
                          (vector-set!
                           _%table95152%_
                           _%probe95171%_
                           _%key95147%_)
                          (vector-set!
                           _%table95152%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe95171%_ '1))
                           (_%method-specializer-table-update!95148%_
                            _%default95149%_))
                          ((lambda ()
                             (let ((__tmp99759
                                    (let ((__tmp99760
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab95146%_))))
                                      (declare (not safe))
                                      (##fx- __tmp99760 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab95146%_ __tmp99759))
                             (let ((__tmp99761
                                    (let ((__tmp99762
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab95146%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99762 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab95146%_
                                __tmp99761))))))
                    (if (eq? _%k95178%_ (macro-deleted-obj))
                        (_%loop95168%_
                         (let ((_%next-probe95185%_
                                (fx+ _%start95164%_
                                     _%i95173%_
                                     (fx* _%i95173%_ _%i95173%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95185%_ _%size95158%_))
                         (let () (declare (not safe)) (##fx+ _%i95173%_ '1))
                         (let ((_%$e95188%_ _%deleted95175%_))
                           (if _%$e95188%_ _%$e95188%_ _%probe95171%_)))
                        (if (eq? _%key95147%_ _%k95178%_)
                            (let ()
                              (vector-set!
                               _%table95152%_
                               _%probe95171%_
                               _%key95147%_)
                              (vector-set!
                               _%table95152%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95171%_ '1))
                               (_%method-specializer-table-update!95148%_
                                (vector-ref
                                 _%table95152%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe95171%_ '1))))))
                            (_%loop95168%_
                             (let ((_%next-probe95193%_
                                    (fx+ _%start95164%_
                                         _%i95173%_
                                         (fx* _%i95173%_ _%i95173%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95193%_ _%size95158%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95173%_ '1))
                             _%deleted95175%_))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab95101%_ _%key95103%_)
        (let ((_%table95106%_
               (let () (declare (not safe)) (&raw-table-table _%tab95101%_)))
              (_%seed95108%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95101%_))))
          (let* ((_%h95111%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key95103%_))
                         _%seed95108%_))
                 (_%size95114%_ (vector-length _%table95106%_))
                 (_%entries95117%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95114%_ '2)))
                 (_%start95120%_
                  (let ((__tmp99763
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95111%_ _%entries95117%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99763 '1))))
            (let _%loop95124%_ ((_%probe95127%_ _%start95120%_)
                                (_%i95129%_ '1))
              (let ((_%k95132%_ (vector-ref _%table95106%_ _%probe95127%_)))
                (if (eq? _%k95132%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k95132%_ (macro-deleted-obj))
                        (_%loop95124%_
                         (let ((_%next-probe95137%_
                                (fx+ _%start95120%_
                                     _%i95129%_
                                     (fx* _%i95129%_ _%i95129%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95137%_ _%size95114%_))
                         (let () (declare (not safe)) (##fx+ _%i95129%_ '1)))
                        (if (eq? _%key95103%_ _%k95132%_)
                            (let ()
                              (vector-set!
                               _%table95106%_
                               _%probe95127%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table95106%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe95127%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp99764
                                        (let ((__tmp99765
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab95101%_))))
                                          (declare (not safe))
                                          (##fx- __tmp99765 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab95101%_
                                    __tmp99764)))))
                            (_%loop95124%_
                             (let ((_%next-probe95143%_
                                    (fx+ _%start95120%_
                                         _%i95129%_
                                         (fx* _%i95129%_ _%i95129%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95143%_ _%size95114%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95129%_ '1))))))))))))
    (define __method-specializers (make-method-specializer-table__% '#f '0))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc95092%_ _%specializer95093%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again95097%_ ()
            (if (let ((__tmp99766
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp99766 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again95097%_)))))
        (method-specializer-table-set!
         __method-specializers
         _%method-proc95092%_
         _%specializer95093%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc95082%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again95086%_ ()
            (if (let ((__tmp99767
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp99767 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again95086%_)))))
        (let ((_%specializer95090%_
               (method-specializer-table-ref
                __method-specializers
                _%proc95082%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer95090%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass95080%_)
        (let ((__tmp99768
               (let () (declare (not safe)) (##type-id _%klass95080%_))))
          (declare (not safe))
          (symbolic-hash __tmp99768))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint95061%_ _%seed95063%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint95061%_
           __class-specializer-hash-key
           eq?
           _%seed95063%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint95069%_ '#f) (_%seed95071%_ '0))
          (make-class-specializer-table__% _%size-hint95069%_ _%seed95071%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint95073%_)
        (let ((_%seed95075%_ '0))
          (make-class-specializer-table__% _%size-hint95073%_ _%seed95075%_))))
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
      (lambda (_%tab95014%_ _%key95015%_ _%default95016%_)
        (let ((_%table95018%_
               (let () (declare (not safe)) (&raw-table-table _%tab95014%_)))
              (_%seed95019%_
               (let () (declare (not safe)) (&raw-table-seed _%tab95014%_))))
          (let* ((_%h95021%_
                  (fxxor (__class-specializer-hash-key _%key95015%_)
                         _%seed95019%_))
                 (_%size95024%_ (vector-length _%table95018%_))
                 (_%entries95027%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size95024%_ '2)))
                 (_%start95030%_
                  (let ((__tmp99771
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h95021%_ _%entries95027%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99771 '1))))
            (let _%loop95034%_ ((_%probe95037%_ _%start95030%_)
                                (_%i95039%_ '1)
                                (_%deleted95041%_ '#f))
              (let ((_%k95044%_ (vector-ref _%table95018%_ _%probe95037%_)))
                (if (eq? _%k95044%_ (macro-unused-obj))
                    _%default95016%_
                    (if (eq? _%k95044%_ (macro-deleted-obj))
                        (_%loop95034%_
                         (let ((_%next-probe95049%_
                                (fx+ _%start95030%_
                                     _%i95039%_
                                     (fx* _%i95039%_ _%i95039%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe95049%_ _%size95024%_))
                         (let () (declare (not safe)) (##fx+ _%i95039%_ '1))
                         (let ((_%$e95052%_ _%deleted95041%_))
                           (if _%$e95052%_ _%$e95052%_ _%probe95037%_)))
                        (if (eq? _%key95015%_ _%k95044%_)
                            (vector-ref
                             _%table95018%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe95037%_ '1)))
                            (_%loop95034%_
                             (let ((_%next-probe95057%_
                                    (fx+ _%start95030%_
                                         _%i95039%_
                                         (fx* _%i95039%_ _%i95039%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95057%_ _%size95024%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i95039%_ '1))
                             _%deleted95041%_))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab95010%_ _%key95011%_ _%value95012%_)
        (if (let ((__tmp99774
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab95010%_)))
                  (__tmp99772
                   (let ((__tmp99773
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab95010%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp99773 '4))))
              (declare (not safe))
              (##fx< __tmp99774 __tmp99772))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab95010%_))
            '#!void)
        (__class-specializer-table-set!
         _%tab95010%_
         _%key95011%_
         _%value95012%_)))
    (define __class-specializer-table-set!
      (lambda (_%tab94961%_ _%key94962%_ _%value94963%_)
        (let ((_%table94966%_
               (let () (declare (not safe)) (&raw-table-table _%tab94961%_)))
              (_%seed94967%_
               (let () (declare (not safe)) (&raw-table-seed _%tab94961%_))))
          (let* ((_%h94969%_
                  (fxxor (__class-specializer-hash-key _%key94962%_)
                         _%seed94967%_))
                 (_%size94972%_ (vector-length _%table94966%_))
                 (_%entries94975%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size94972%_ '2)))
                 (_%start94978%_
                  (let ((__tmp99775
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h94969%_ _%entries94975%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99775 '1))))
            (let _%loop94982%_ ((_%probe94985%_ _%start94978%_)
                                (_%i94987%_ '1)
                                (_%deleted94989%_ '#f))
              (let ((_%k94992%_ (vector-ref _%table94966%_ _%probe94985%_)))
                (if (eq? _%k94992%_ (macro-unused-obj))
                    (if _%deleted94989%_
                        (begin
                          (vector-set!
                           _%table94966%_
                           _%deleted94989%_
                           _%key94962%_)
                          (vector-set!
                           _%table94966%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted94989%_ '1))
                           _%value94963%_)
                          ((lambda ()
                             (let ((__tmp99776
                                    (let ((__tmp99777
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab94961%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99777 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab94961%_
                                __tmp99776)))))
                        (begin
                          (vector-set!
                           _%table94966%_
                           _%probe94985%_
                           _%key94962%_)
                          (vector-set!
                           _%table94966%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe94985%_ '1))
                           _%value94963%_)
                          ((lambda ()
                             (let ((__tmp99778
                                    (let ((__tmp99779
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab94961%_))))
                                      (declare (not safe))
                                      (##fx- __tmp99779 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab94961%_ __tmp99778))
                             (let ((__tmp99780
                                    (let ((__tmp99781
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab94961%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99781 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab94961%_
                                __tmp99780))))))
                    (if (eq? _%k94992%_ (macro-deleted-obj))
                        (_%loop94982%_
                         (let ((_%next-probe94999%_
                                (fx+ _%start94978%_
                                     _%i94987%_
                                     (fx* _%i94987%_ _%i94987%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe94999%_ _%size94972%_))
                         (let () (declare (not safe)) (##fx+ _%i94987%_ '1))
                         (let ((_%$e95002%_ _%deleted94989%_))
                           (if _%$e95002%_ _%$e95002%_ _%probe94985%_)))
                        (if (eq? _%key94962%_ _%k94992%_)
                            (let ()
                              (vector-set!
                               _%table94966%_
                               _%probe94985%_
                               _%key94962%_)
                              (vector-set!
                               _%table94966%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe94985%_ '1))
                               _%value94963%_))
                            (_%loop94982%_
                             (let ((_%next-probe95007%_
                                    (fx+ _%start94978%_
                                         _%i94987%_
                                         (fx* _%i94987%_ _%i94987%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe95007%_ _%size94972%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i94987%_ '1))
                             _%deleted94989%_))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab94956%_
               _%key94957%_
               _%class-specializer-table-update!94958%_
               _%default94959%_)
        (if (let ((__tmp99784
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab94956%_)))
                  (__tmp99782
                   (let ((__tmp99783
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab94956%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp99783 '4))))
              (declare (not safe))
              (##fx< __tmp99784 __tmp99782))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab94956%_))
            '#!void)
        (__class-specializer-table-update!
         _%tab94956%_
         _%key94957%_
         _%class-specializer-table-update!94958%_
         _%default94959%_)))
    (define __class-specializer-table-update!
      (lambda (_%tab94906%_
               _%key94907%_
               _%class-specializer-table-update!94908%_
               _%default94909%_)
        (let ((_%table94912%_
               (let () (declare (not safe)) (&raw-table-table _%tab94906%_)))
              (_%seed94913%_
               (let () (declare (not safe)) (&raw-table-seed _%tab94906%_))))
          (let* ((_%h94915%_
                  (fxxor (__class-specializer-hash-key _%key94907%_)
                         _%seed94913%_))
                 (_%size94918%_ (vector-length _%table94912%_))
                 (_%entries94921%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size94918%_ '2)))
                 (_%start94924%_
                  (let ((__tmp99785
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h94915%_ _%entries94921%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99785 '1))))
            (let _%loop94928%_ ((_%probe94931%_ _%start94924%_)
                                (_%i94933%_ '1)
                                (_%deleted94935%_ '#f))
              (let ((_%k94938%_ (vector-ref _%table94912%_ _%probe94931%_)))
                (if (eq? _%k94938%_ (macro-unused-obj))
                    (if _%deleted94935%_
                        (begin
                          (vector-set!
                           _%table94912%_
                           _%deleted94935%_
                           _%key94907%_)
                          (vector-set!
                           _%table94912%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted94935%_ '1))
                           (_%class-specializer-table-update!94908%_
                            _%default94909%_))
                          ((lambda ()
                             (let ((__tmp99786
                                    (let ((__tmp99787
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab94906%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99787 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab94906%_
                                __tmp99786)))))
                        (begin
                          (vector-set!
                           _%table94912%_
                           _%probe94931%_
                           _%key94907%_)
                          (vector-set!
                           _%table94912%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe94931%_ '1))
                           (_%class-specializer-table-update!94908%_
                            _%default94909%_))
                          ((lambda ()
                             (let ((__tmp99788
                                    (let ((__tmp99789
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab94906%_))))
                                      (declare (not safe))
                                      (##fx- __tmp99789 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab94906%_ __tmp99788))
                             (let ((__tmp99790
                                    (let ((__tmp99791
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab94906%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp99791 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab94906%_
                                __tmp99790))))))
                    (if (eq? _%k94938%_ (macro-deleted-obj))
                        (_%loop94928%_
                         (let ((_%next-probe94945%_
                                (fx+ _%start94924%_
                                     _%i94933%_
                                     (fx* _%i94933%_ _%i94933%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe94945%_ _%size94918%_))
                         (let () (declare (not safe)) (##fx+ _%i94933%_ '1))
                         (let ((_%$e94948%_ _%deleted94935%_))
                           (if _%$e94948%_ _%$e94948%_ _%probe94931%_)))
                        (if (eq? _%key94907%_ _%k94938%_)
                            (let ()
                              (vector-set!
                               _%table94912%_
                               _%probe94931%_
                               _%key94907%_)
                              (vector-set!
                               _%table94912%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe94931%_ '1))
                               (_%class-specializer-table-update!94908%_
                                (vector-ref
                                 _%table94912%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe94931%_ '1))))))
                            (_%loop94928%_
                             (let ((_%next-probe94953%_
                                    (fx+ _%start94924%_
                                         _%i94933%_
                                         (fx* _%i94933%_ _%i94933%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe94953%_ _%size94918%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i94933%_ '1))
                             _%deleted94935%_))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab94861%_ _%key94863%_)
        (let ((_%table94866%_
               (let () (declare (not safe)) (&raw-table-table _%tab94861%_)))
              (_%seed94868%_
               (let () (declare (not safe)) (&raw-table-seed _%tab94861%_))))
          (let* ((_%h94871%_
                  (fxxor (__class-specializer-hash-key _%key94863%_)
                         _%seed94868%_))
                 (_%size94874%_ (vector-length _%table94866%_))
                 (_%entries94877%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size94874%_ '2)))
                 (_%start94880%_
                  (let ((__tmp99792
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h94871%_ _%entries94877%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp99792 '1))))
            (let _%loop94884%_ ((_%probe94887%_ _%start94880%_)
                                (_%i94889%_ '1))
              (let ((_%k94892%_ (vector-ref _%table94866%_ _%probe94887%_)))
                (if (eq? _%k94892%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k94892%_ (macro-deleted-obj))
                        (_%loop94884%_
                         (let ((_%next-probe94897%_
                                (fx+ _%start94880%_
                                     _%i94889%_
                                     (fx* _%i94889%_ _%i94889%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe94897%_ _%size94874%_))
                         (let () (declare (not safe)) (##fx+ _%i94889%_ '1)))
                        (if (eq? _%key94863%_ _%k94892%_)
                            (let ()
                              (vector-set!
                               _%table94866%_
                               _%probe94887%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table94866%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe94887%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp99793
                                        (let ((__tmp99794
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab94861%_))))
                                          (declare (not safe))
                                          (##fx- __tmp99794 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab94861%_
                                    __tmp99793)))))
                            (_%loop94884%_
                             (let ((_%next-probe94903%_
                                    (fx+ _%start94880%_
                                         _%i94889%_
                                         (fx* _%i94889%_ _%i94889%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe94903%_ _%size94874%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i94889%_ '1))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers (make-class-specializer-table__% '#f '0))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass94847%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94847%_ 'class))
            (let ((_%klass94851%_ _%klass94847%_))
              (__specialize-class _%klass94851%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1020.25-1020.30"
               'contract:
               'class-type?
               'value:
               _%klass94847%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass94829%_)
        (let* ((_%klass94832%_ _%klass94829%_)
               (_%$e94841%_ (__lookup-class-specializer _%klass94832%_)))
          (if _%$e94841%_
              _%$e94841%_
              (let ((_%method-table94845%_
                     (___specialize-class _%klass94832%_)))
                (__bind-class-specializer!
                 _%klass94832%_
                 _%method-table94845%_)
                _%method-table94845%_)))))
    (define __lookup-class-specializer
      (lambda (_%klass94819%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again94823%_ ()
            (if (let ((__tmp99795
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp99795 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again94823%_)))))
        (let ((_%method-table94827%_
               (class-specializer-table-ref
                __class-specializers
                _%klass94819%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table94827%_)))
    (define __bind-class-specializer!
      (lambda (_%klass94810%_ _%method-table94811%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again94815%_ ()
            (if (let ((__tmp99796
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp99796 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again94815%_)))))
        (class-specializer-table-set!
         __class-specializers
         _%klass94810%_
         _%method-table94811%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass94794%_
               _%method-table94795%_
               _%method94796%_
               _%proc94797%_)
        (let ((_%$e94799%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table94795%_
                  _%method94796%_
                  '#f))))
          (if _%$e94799%_
              _%$e94799%_
              (let ((_%$e94802%_ (__lookup-method-specializer _%proc94797%_)))
                (if _%$e94802%_
                    ((lambda (_%specialize94805%_)
                       (let ((_%specialized-proc94807%_
                              (_%specialize94805%_
                               _%klass94794%_
                               _%method-table94795%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table94795%_
                          _%method94796%_
                          _%specialized-proc94807%_)))
                     _%$e94802%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table94795%_
                       _%method94796%_
                       _%proc94797%_))))))))
    (define ___specialize-class
      (lambda (_%klass94736%_)
        (if (not (let ()
                   (declare (not safe))
                   (##structure-instance-of? _%klass94736%_ 'class)))
            (if (let () (declare (not safe)) (##type? _%klass94736%_))
                (__specialize-class (__shadow-class _%klass94736%_))
                (error '"bad class; cannot specialize" _%klass94736%_))
            (if (class-type-metaclass? _%klass94736%_)
                (let ((__method99641
                       (__method-ref _%klass94736%_ 'specialize-class)))
                  (if __method99641
                      (let ()
                        (declare (not safe))
                        (__method99641 _%klass94736%_))
                      (begin
                        (error '"Missing method"
                               _%klass94736%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp99797
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass94736%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp99797))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass94736%_)
                    (let ((_%method-table94742%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop94744%_ ((_%rest94746%_
                                           (class-precedence-list
                                            _%klass94736%_)))
                        (let* ((_%rest9474794755%_ _%rest94746%_)
                               (_%else9474994763%_
                                (lambda () _%method-table94742%_))
                               (_%K9475194782%_
                                (lambda (_%rest94766%_ _%xklass94767%_)
                                  (let ((_%xmethod-table9476894770%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass94767%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table9476894770%_
                                        (let* ((_%xmethod-table94773%_
                                                _%xmethod-table9476894770%_)
                                               (__tmp99798
                                                (lambda (_%g9477494777%_
                                                         _%g9477594779%_)
                                                  (__specialize-method
                                                   _%klass94736%_
                                                   _%method-table94742%_
                                                   _%g9477494777%_
                                                   _%g9477594779%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table94773%_
                                           __tmp99798))
                                        '#f))
                                  (_%loop94744%_ _%rest94766%_))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9474794755%_))
                              (let ((_%hd9475294785%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9474794755%_)))
                                    (_%tl9475394787%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9474794755%_))))
                                (let* ((_%xklass94790%_ _%hd9475294785%_)
                                       (_%rest94792%_ _%tl9475394787%_))
                                  (_%K9475194782%_
                                   _%rest94792%_
                                   _%xklass94790%_)))
                              (_%else9474994763%_))))))))))
    (define seal-class!
      (lambda (_%klass94722%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94722%_ 'class))
            (let ((_%klass94726%_ _%klass94722%_))
              (__seal-class! _%klass94726%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1077.20-1077.25"
               'contract:
               'class-type?
               'value:
               _%klass94722%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass94705%_)
        (let ((_%klass94708%_ _%klass94705%_))
          (if (__class-type-sealed? _%klass94708%_)
              '#!void
              (begin
                (if (__class-type-final? _%klass94708%_)
                    '#!void
                    (error '"cannot seal non-final class" _%klass94708%_))
                (if (__class-type-metaclass? _%klass94708%_)
                    (let ((__method99642
                           (__method-ref _%klass94708%_ 'seal-class!)))
                      (if __method99642
                          (let ()
                            (declare (not safe))
                            (__method99642 _%klass94708%_))
                          (begin
                            (error '"Missing method"
                                   _%klass94708%_
                                   'seal-class!)
                            '#!void)))
                    (if (let ((__tmp99799
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass94708%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp99799))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass94708%_)
                        (let ((_%method-table94720%_
                               (__specialize-class _%klass94708%_)))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass94708%_
                           _%method-table94720%_
                           '11
                           '#f
                           '#f))))
                (__class-type-seal! _%klass94708%_))))))
    (define next-method
      (lambda (_%subklass94679%_ _%obj94680%_ _%id94681%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass94679%_ 'class))
            (let ((_%subklass94685%_ _%subklass94679%_))
              (if (symbol? _%id94681%_)
                  (let ((_%id94695%_ _%id94681%_))
                    (__next-method _%subklass94685%_ _%obj94680%_ _%id94695%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1101.44-1101.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id94681%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1101.20-1101.28"
               'contract:
               'class-type?
               'value:
               _%subklass94679%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass94616%_ _%obj94617%_ _%id94618%_)
        (let* ((_%subklass94621%_ _%subklass94616%_) (_%id94629%_ _%id94618%_))
          (letrec ((_%find-next-method94638%_
                    (lambda (_%klass94640%_)
                      (let _%lp94642%_ ((_%rest94644%_
                                         (class-precedence-list
                                          _%klass94640%_)))
                        (let* ((_%rest9464594653%_ _%rest94644%_)
                               (_%else9464794661%_ (lambda () '#f))
                               (_%K9464994667%_
                                (lambda (_%rest94664%_ _%klass94665%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass94621%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass94665%_)))
                                      (__mixin-find-method
                                       _%rest94664%_
                                       _%obj94617%_
                                       _%id94629%_)
                                      (_%lp94642%_ _%rest94664%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9464594653%_))
                              (let ((_%hd9465094670%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9464594653%_)))
                                    (_%tl9465194672%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9464594653%_))))
                                (let* ((_%klass94675%_ _%hd9465094670%_)
                                       (_%rest94677%_ _%tl9465194672%_))
                                  (_%K9464994667%_
                                   _%rest94677%_
                                   _%klass94675%_)))
                              (_%else9464794661%_)))))))
            (_%find-next-method94638%_ (class-of _%obj94617%_))))))
    (define call-next-method
      (lambda (_%subklass94589%_ _%obj94590%_ _%id94591%_ . _%args94592%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass94589%_ 'class))
            (let ((_%subklass94596%_ _%subklass94589%_))
              (if (symbol? _%id94591%_)
                  (let ((_%id94606%_ _%id94591%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass94596%_
                             _%obj94590%_
                             _%id94606%_
                             _%args94592%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1112.49-1112.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id94591%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1112.25-1112.33"
               'contract:
               'class-type?
               'value:
               _%subklass94589%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass94560%_ _%obj94561%_ _%id94562%_ . _%args94563%_)
        (let* ((_%subklass94566%_ _%subklass94560%_)
               (_%id94574%_ _%id94562%_)
               (_%$e94583%_
                (__next-method _%subklass94566%_ _%obj94561%_ _%id94574%_)))
          (if _%$e94583%_
              ((lambda (_%methodf94586%_)
                 (apply _%methodf94586%_ _%obj94561%_ _%args94563%_))
               _%$e94583%_)
              (error '"cannot find next method"
                     'object:
                     _%obj94561%_
                     'method:
                     _%id94574%_)))))
    (define write-style
      (lambda (_%we94558%_) (macro-writeenv-style _%we94558%_)))
    (define write-object
      (lambda (_%we94549%_ _%obj94550%_)
        (let ((_%$e94552%_ (__method-ref _%obj94550%_ ':wr)))
          (if _%$e94552%_
              ((lambda (_%method94555%_)
                 (_%method94555%_ _%obj94550%_ _%we94549%_))
               _%$e94552%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we94549%_ _%obj94550%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type94464%_)
        (letrec ((_%shadow-type-id94466%_
                  (lambda (_%type94547%_)
                    (let ((__tmp99800
                           (let ()
                             (declare (not safe))
                             (##type-name _%type94547%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp99800 '"::t"))))
                 (_%shadow-type-name94467%_
                  (lambda (_%type94545%_)
                    (let () (declare (not safe)) (##type-name _%type94545%_))))
                 (_%make-shadow-class94468%_
                  (lambda (_%type94537%_ _%precedence-list94538%_)
                    (let* ((_%super94540%_
                            (if (pair? _%precedence-list94538%_)
                                (cons (car _%precedence-list94538%_) '())
                                '()))
                           (_%klass94542%_
                            (make-class-type
                             (_%shadow-type-id94466%_ _%type94537%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type94537%_))
                             _%super94540%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (if (__type-extensible? _%type94537%_)
                                             '()
                                             (cons (cons 'final: '#t) '()))))
                             '#f)))
                      (let ((__tmp99801
                             (let ()
                               (declare (not safe))
                               (##type-id _%type94537%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp99801
                         _%klass94542%_))
                      _%klass94542%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again94472%_ ()
              (if (let ((__tmp99802
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp99802 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (_%again94472%_)))))
          (let ((_%$e94476%_
                 (let ((__tmp99803
                        (let ()
                          (declare (not safe))
                          (##type-id _%type94464%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp99803 '#f))))
            (if _%$e94476%_
                ((lambda (_%klass94479%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass94479%_)
                 _%$e94476%_)
                (let _%loop94482%_ ((_%super94484%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-super _%type94464%_)))
                                    (_%hierarchy94485%_ '()))
                  (if (not _%super94484%_)
                      (let _%loop94488%_ ((_%rest94490%_ _%hierarchy94485%_)
                                          (_%precedence-list94491%_ '()))
                        (let* ((_%rest9449294500%_ _%rest94490%_)
                               (_%else9449494510%_
                                (lambda ()
                                  (let ((_%klass94508%_
                                         (_%make-shadow-class94468%_
                                          _%type94464%_
                                          _%precedence-list94491%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass94508%_)))
                               (_%K9449694524%_
                                (lambda (_%rest94513%_ _%type94514%_)
                                  (let ((_%$e94516%_
                                         (let ((__tmp99804
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type94514%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp99804
                                            '#f))))
                                    (if _%$e94516%_
                                        ((lambda (_%klass94519%_)
                                           (_%loop94488%_
                                            _%rest94513%_
                                            (cons _%klass94519%_
                                                  _%precedence-list94491%_)))
                                         _%$e94516%_)
                                        (let ((_%klass94522%_
                                               (_%make-shadow-class94468%_
                                                _%type94514%_
                                                _%precedence-list94491%_)))
                                          (_%loop94488%_
                                           _%rest94513%_
                                           (cons _%klass94522%_
                                                 _%precedence-list94491%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9449294500%_))
                              (let ((_%hd9449794527%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9449294500%_)))
                                    (_%tl9449894529%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9449294500%_))))
                                (let* ((_%type94532%_ _%hd9449794527%_)
                                       (_%rest94534%_ _%tl9449894529%_))
                                  (_%K9449694524%_
                                   _%rest94534%_
                                   _%type94532%_)))
                              (_%else9449494510%_))))
                      (_%loop94482%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super94484%_))
                       (cons _%super94484%_ _%hierarchy94485%_)))))))))
    (define class-of
      (lambda (_%obj94437%_)
        (let ()
          (declare (not interrupts-enabled))
          (let ((_%t94441%_
                 (let () (declare (not safe)) (##type _%obj94437%_))))
            (if (fx= _%t94441%_ (macro-type-subtyped))
                (let ((_%st94444%_
                       (let () (declare (not safe)) (##subtype _%obj94437%_))))
                  (if (fx= _%st94444%_ (macro-subtype-structure))
                      (let ((_%klass94447%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj94437%_))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of? _%klass94447%_ 'class))
                            _%klass94447%_
                            (__shadow-class _%klass94447%_)))
                      (if (fx= _%st94444%_ (macro-subtype-boxvalues))
                          (if (let ((__tmp99805
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _%obj94437%_))))
                                (declare (not safe))
                                (##fx= __tmp99805 '1))
                              (__system-class 'box)
                              (__system-class 'values))
                          (let ((_%$e94450%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref __subtype-id _%st94444%_))))
                            (if _%$e94450%_
                                (__system-class _%$e94450%_)
                                (error '"unknown class"
                                       'subtype:
                                       _%st94444%_
                                       'object:
                                       _%obj94437%_))))))
                (if (fx= _%t94441%_ (macro-type-mem2))
                    (__system-class 'pair)
                    (if (fx= _%t94441%_ (macro-type-fixnum))
                        (__system-class 'fixnum)
                        (if (char? _%obj94437%_)
                            (__system-class 'char)
                            (if (eq? _%obj94437%_ '())
                                (__system-class 'null)
                                (if (eq? _%obj94437%_ '#f)
                                    (__system-class 'boolean)
                                    (if (eq? _%obj94437%_ '#t)
                                        (__system-class 'boolean)
                                        (if (eq? _%obj94437%_ '#!void)
                                            (__system-class 'void)
                                            (if (eq? _%obj94437%_ '#!eof)
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
      (lambda (_%id94431%_)
        (let ((_%$e94433%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id94431%_ '#f))))
          (if _%$e94433%_
              _%$e94433%_
              (error '"unknown system class" _%id94431%_)))))
    (define __make-system-class
      (lambda (_%id94426%_ _%super94427%_)
        (let ((_%klass94429%_
               (make-class-type
                _%id94426%_
                _%id94426%_
                _%super94427%_
                '()
                '((system: . #t))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id94426%_ _%klass94429%_))
          _%klass94429%_)))))
