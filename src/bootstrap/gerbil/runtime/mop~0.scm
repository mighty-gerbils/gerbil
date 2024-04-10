(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1712773523)
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
      (let ((_%flags97042%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties97043%_ '((direct-slots:) (system: . #t)))
            (_%slot-table97044%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags97042%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table97044%_
           _%properties97043%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots97018%_
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
             (_%slot-vector97020%_ (list->vector (cons '#f _%slots97018%_)))
             (_%slot-table97027%_
              (let ((_%slot-table97022%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp98490
                       (lambda (_%slot97024%_ _%field97025%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table97022%_
                            _%slot97024%_
                            _%field97025%_))
                         (let ((__tmp98491
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot97024%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table97022%_
                            __tmp98491
                            _%field97025%_))))
                      (__tmp98488
                       (let ((__tmp98489
                              (let ()
                                (declare (not safe))
                                (##length _%slots97018%_))))
                         (declare (not safe))
                         (##iota __tmp98489 '1))))
                  (declare (not safe))
                  (##for-each __tmp98490 _%slots97018%_ __tmp98488))
                _%slot-table97022%_))
             (_%flags97029%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields97035%_
              (list->vector
               (let ((__tmp98492
                      (map (lambda (_%g9703097032%_)
                             (list _%g9703097032%_ '5 '#f))
                           (drop _%slots97018%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp98492))))
             (_%properties97037%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots97018%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t97039%_
              (let ((__tmp98493 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags97029%_
                 ##type-type
                 _%fields97035%_
                 __tmp98493
                 _%slot-vector97020%_
                 _%slot-table97027%_
                 _%properties97037%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t97039%_ _%t97039%_))
        _%t97039%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags97014%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties97015%_ '((direct-slots:) (system: . #t)))
            (_%slot-table97016%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp98494 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags97014%_
           '#f
           '#()
           __tmp98494
           '#(#f)
           _%slot-table97016%_
           _%properties97015%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj97012%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj97012%_ 'class))))
    (define class-type=?
      (lambda (_%x96987%_ _%y96988%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x96987%_ 'class))
            (let ((_%x96992%_ _%x96987%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y96988%_ 'class))
                  (let ((_%y97002%_ _%y96988%_))
                    (__class-type=? _%x96992%_ _%y97002%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y96988%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x96987%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x96966%_ _%y96967%_)
        (let* ((_%x96970%_ _%x96966%_) (_%y96978%_ _%y96967%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x96970%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y96978%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type96952%_)
        (if (let () (declare (not safe)) (##type? _%type96952%_))
            (let ((_%type96956%_ _%type96952%_))
              (__type-opaque? _%type96956%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type96952%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type96940%_)
        (let* ((_%type96943%_ _%type96940%_)
               (__tmp98495
                (let ((__tmp98496
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type96943%_))))
                  (declare (not safe))
                  (##fxand __tmp98496 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp98495 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type96926%_)
        (if (let () (declare (not safe)) (##type? _%type96926%_))
            (let ((_%type96930%_ _%type96926%_))
              (__type-extensible? _%type96930%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type96926%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type96914%_)
        (let* ((_%type96917%_ _%type96914%_)
               (__tmp98497
                (let ((__tmp98498
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type96917%_))))
                  (declare (not safe))
                  (##fxand __tmp98498 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp98497 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type96900%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type96900%_ 'class))
            (let ((_%type96904%_ _%type96900%_))
              (__class-type-final? _%type96904%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type96900%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type96888%_)
        (let* ((_%type96891%_ _%type96888%_)
               (__tmp98499
                (let ((__tmp98500
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type96891%_))))
                  (declare (not safe))
                  (##fxand __tmp98500 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp98499 '0))))
    (define class-type-struct?
      (lambda (_%klass96874%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96874%_ 'class))
            (let ((_%klass96878%_ _%klass96874%_))
              (__class-type-struct? _%klass96878%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass96874%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass96862%_)
        (let* ((_%klass96865%_ _%klass96862%_)
               (__tmp98501
                (let ((__tmp98502
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass96865%_))))
                  (declare (not safe))
                  (##fxand __tmp98502 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp98501 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass96848%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96848%_ 'class))
            (let ((_%klass96852%_ _%klass96848%_))
              (__class-type-sealed? _%klass96852%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass96848%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass96836%_)
        (let* ((_%klass96839%_ _%klass96836%_)
               (__tmp98503
                (let ((__tmp98504
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass96839%_))))
                  (declare (not safe))
                  (##fxand __tmp98504 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp98503 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass96822%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96822%_ 'class))
            (let ((_%klass96826%_ _%klass96822%_))
              (__class-type-metaclass? _%klass96826%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass96822%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass96810%_)
        (let* ((_%klass96813%_ _%klass96810%_)
               (__tmp98505
                (let ((__tmp98506
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass96813%_))))
                  (declare (not safe))
                  (##fxand __tmp98506 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp98505 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass96796%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96796%_ 'class))
            (let ((_%klass96800%_ _%klass96796%_))
              (__class-type-system? _%klass96800%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass96796%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass96784%_)
        (let* ((_%klass96787%_ _%klass96784%_)
               (__tmp98507
                (let ((__tmp98508
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass96787%_))))
                  (declare (not safe))
                  (##fxand __tmp98508 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp98507 class-type-flag-system))))
    (define make-class-type-descriptor
      (lambda (_%type-id96669%_
               _%type-name96670%_
               _%type-super96671%_
               _%precedence-list96672%_
               _%slot-vector96673%_
               _%properties96674%_
               _%constructor96675%_
               _%slot-table96676%_
               _%methods96677%_)
        (letrec ((_%make-props!96680%_
                  (lambda (_%key96753%_)
                    (letrec* ((_%ht96755%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!96756%_
                               (lambda (_%ht96777%_ _%slots96778%_)
                                 (for-each
                                  (lambda (_%g9677996781%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht96777%_
                                       _%g9677996781%_
                                       '#t)))
                                  _%slots96778%_)))
                              (_%put-alist!96757%_
                               (lambda (_%ht96766%_
                                        _%key96767%_
                                        _%alist96768%_)
                                 (let ((_%$e96770%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key96767%_
                                           _%alist96768%_))))
                                   (if _%$e96770%_
                                       ((lambda (_%g9677296774%_)
                                          (_%put-slots!96756%_
                                           _%ht96766%_
                                           _%g9677296774%_))
                                        _%$e96770%_)
                                       '#!void)))))
                      (_%put-alist!96757%_
                       _%ht96755%_
                       _%key96753%_
                       _%properties96674%_)
                      (for-each
                       (lambda (_%mixin96759%_)
                         (let ((_%alist96761%_
                                (##structure-ref
                                 _%mixin96759%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist96761%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key96753%_
                                           _%alist96761%_))))
                               (_%put-slots!96756%_
                                _%ht96755%_
                                (class-type-slot-list _%mixin96759%_))
                               (_%put-alist!96757%_
                                _%ht96755%_
                                _%key96753%_
                                _%alist96761%_))))
                       _%precedence-list96672%_)
                      _%ht96755%_))))
          (let* ((_%transparent?96682%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties96674%_)))
                 (_%all-slots-printable?96687%_
                  (let ((_%$e96684%_ _%transparent?96682%_))
                    (if _%$e96684%_
                        _%$e96684%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties96674%_))))))
                 (_%printable96689%_
                  (if (not _%all-slots-printable?96687%_)
                      (_%make-props!96680%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?96694%_
                  (let ((_%$e96691%_ _%transparent?96682%_))
                    (if _%$e96691%_
                        _%$e96691%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties96674%_))))))
                 (_%equalable96696%_
                  (if (not _%all-slots-equalable?96694%_)
                      (_%make-props!96680%_ 'equal:)
                      '#f))
                 (_%first-new-field96698%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super96671%_ 'class))
                      (let ((__tmp98509
                             (##structure-ref
                              _%type-super96671%_
                              '7
                              class::t
                              '#f)))
                        (declare (not safe))
                        (##vector-length __tmp98509))
                      '1))
                 (_%field-info-length96700%_
                  (let ((__tmp98510
                         (let ((__tmp98511
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector96673%_))))
                           (declare (not safe))
                           (##fx- __tmp98511 _%first-new-field96698%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp98510)))
                 (_%field-info96702%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length96700%_ '#f)))
                 (_%struct?96704%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties96674%_)))
                 (_%final?96706%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties96674%_)))
                 (_%metaclass96714%_
                  (let ((_%metaclass9670796709%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties96674%_))))
                    (if _%metaclass9670796709%_
                        (let ((_%metaclass96712%_ _%metaclass9670796709%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass96712%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id96669%_
                                     'metaclass:
                                     _%metaclass96712%_))
                          _%metaclass96712%_)
                        '#f)))
                 (_%system?96716%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties96674%_)))
                 (_%opaque?96721%_
                  (let ((_%$e96718%_ (not _%all-slots-equalable?96694%_)))
                    (if _%$e96718%_
                        _%$e96718%_
                        (if _%type-super96671%_
                            (__type-opaque? _%type-super96671%_)
                            '#f))))
                 (_%type-flags96723%_
                  (let ((__tmp98516
                         (if _%final?96706%_ '0 type-flag-extensible))
                        (__tmp98515 (if _%opaque?96721%_ type-flag-opaque '0))
                        (__tmp98514
                         (if _%struct?96704%_ class-type-flag-struct '0))
                        (__tmp98513
                         (if _%metaclass96714%_ class-type-flag-metaclass '0))
                        (__tmp98512
                         (if _%system?96716%_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp98516
                             __tmp98515
                             __tmp98514
                             __tmp98513
                             __tmp98512)))
                 (_%precedence-list96731%_
                  (let ((_%$e96725%_ (memq t::t _%precedence-list96672%_)))
                    (if _%$e96725%_
                        ((lambda (_%tail96728%_)
                           (if (null? (cdr _%tail96728%_))
                               _%precedence-list96672%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list96672%_)))
                         _%$e96725%_)
                        (let ((__tmp98517 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list96672%_ __tmp98517))))))
            (let _%loop96734%_ ((_%i96736%_ _%first-new-field96698%_)
                                (_%j96737%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j96737%_ _%field-info-length96700%_))
                  (let* ((_%slot96739%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector96673%_ _%i96736%_)))
                         (_%flags96747%_
                          (if _%transparent?96682%_
                              '0
                              (let ((__tmp98519
                                     (if (or _%all-slots-printable?96687%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable96689%_
                                                _%slot96739%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp98518
                                     (if (or _%all-slots-equalable?96694%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable96696%_
                                                _%slot96739%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp98519 __tmp98518)))))
                    (vector-set! _%field-info96702%_ _%j96737%_ _%slot96739%_)
                    (vector-set!
                     _%field-info96702%_
                     (let () (declare (not safe)) (##fx+ _%j96737%_ '1))
                     _%flags96747%_)
                    (_%loop96734%_
                     (let () (declare (not safe)) (##fx+ _%i96736%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j96737%_ '3))))
                  '#!void))
            (if _%metaclass96714%_
                (let ((_%val96750%_
                       (make-instance
                        _%metaclass96714%_
                        _%type-id96669%_
                        _%type-name96670%_
                        _%type-flags96723%_
                        _%type-super96671%_
                        _%field-info96702%_
                        _%precedence-list96731%_
                        _%slot-vector96673%_
                        _%slot-table96676%_
                        _%properties96674%_
                        _%constructor96675%_
                        _%methods96677%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val96750%_ 'class))
                      _%val96750%_
                      (error '"bad cast" class::t _%val96750%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id96669%_
                   _%type-name96670%_
                   _%type-flags96723%_
                   _%type-super96671%_
                   _%field-info96702%_
                   _%precedence-list96731%_
                   _%slot-vector96673%_
                   _%slot-table96676%_
                   _%properties96674%_
                   _%constructor96675%_
                   _%methods96677%_)))))))
    (define class-type-id
      (lambda (_%klass96667%_)
        (##structure-ref _%klass96667%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass96665%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96665%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass96662%_ _%val96663%_)
        (##structure-set! _%klass96662%_ _%val96663%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass96657%_ _%val96659%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96657%_
           _%val96659%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass96655%_)
        (##structure-ref _%klass96655%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass96653%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96653%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass96650%_ _%val96651%_)
        (##structure-set! _%klass96650%_ _%val96651%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass96645%_ _%val96647%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96645%_
           _%val96647%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass96643%_)
        (##structure-ref _%klass96643%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass96641%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96641%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass96638%_ _%val96639%_)
        (##structure-set! _%klass96638%_ _%val96639%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass96633%_ _%val96635%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96633%_
           _%val96635%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass96631%_)
        (##structure-ref _%klass96631%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass96629%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96629%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass96626%_ _%val96627%_)
        (##structure-set! _%klass96626%_ _%val96627%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass96621%_ _%val96623%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96621%_
           _%val96623%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass96619%_)
        (##structure-ref _%klass96619%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass96617%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96617%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass96614%_ _%val96615%_)
        (##structure-set! _%klass96614%_ _%val96615%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass96609%_ _%val96611%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96609%_
           _%val96611%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass96607%_)
        (##structure-ref _%klass96607%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass96605%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass96605%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass96602%_ _%val96603%_)
        (##structure-set!
         _%klass96602%_
         _%val96603%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass96597%_ _%val96599%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96597%_
           _%val96599%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass96595%_)
        (##structure-ref _%klass96595%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass96593%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass96593%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass96590%_ _%val96591%_)
        (##structure-set!
         _%klass96590%_
         _%val96591%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass96585%_ _%val96587%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96585%_
           _%val96587%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass96583%_)
        (##structure-ref _%klass96583%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass96581%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96581%_ '8 class::t 'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass96578%_ _%val96579%_)
        (##structure-set!
         _%klass96578%_
         _%val96579%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass96573%_ _%val96575%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96573%_
           _%val96575%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass96571%_)
        (##structure-ref _%klass96571%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass96569%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96569%_ '9 class::t 'properties))))
    (define class-type-properties-set!
      (lambda (_%klass96566%_ _%val96567%_)
        (##structure-set!
         _%klass96566%_
         _%val96567%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass96561%_ _%val96563%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96561%_
           _%val96563%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass96559%_)
        (##structure-ref _%klass96559%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass96557%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass96557%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass96554%_ _%val96555%_)
        (##structure-set!
         _%klass96554%_
         _%val96555%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass96549%_ _%val96551%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96549%_
           _%val96551%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass96547%_)
        (##structure-ref _%klass96547%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass96545%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass96545%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass96542%_ _%val96543%_)
        (##structure-set! _%klass96542%_ _%val96543%_ '11 class::t 'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass96537%_ _%val96539%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass96537%_
           _%val96539%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass96523%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96523%_ 'class))
            (let ((_%klass96527%_ _%klass96523%_))
              (__class-type-slot-list _%klass96527%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass96523%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass96511%_)
        (let ((_%klass96514%_ _%klass96511%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass96514%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass96497%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96497%_ 'class))
            (let ((_%klass96501%_ _%klass96497%_))
              (__class-type-field-count _%klass96501%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass96497%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass96485%_)
        (let* ((_%klass96488%_ _%klass96485%_)
               (__tmp98520
                (let ((__tmp98521
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass96488%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp98521))))
          (declare (not safe))
          (##fx- __tmp98520 '1))))
    (define class-type-seal!
      (lambda (_%klass96471%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96471%_ 'class))
            (let ((_%klass96475%_ _%klass96471%_))
              (__class-type-seal! _%klass96475%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass96471%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass96459%_)
        (let ((_%klass96462%_ _%klass96459%_))
          (let ((__tmp98522
                 (let ((__tmp98523
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass96462%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp98523))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass96462%_
             __tmp98522
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct96434%_ _%maybe-super-struct96435%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct96434%_ 'class))
            (let ((_%maybe-sub-struct96439%_ _%maybe-sub-struct96434%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct96435%_
                     'class))
                  (let ((_%maybe-super-struct96449%_
                         _%maybe-super-struct96435%_))
                    (__substruct?
                     _%maybe-sub-struct96439%_
                     _%maybe-super-struct96449%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct96435%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct96434%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct96403%_ _%maybe-super-struct96404%_)
        (let* ((_%maybe-sub-struct96407%_ _%maybe-sub-struct96403%_)
               (_%maybe-super-struct96415%_ _%maybe-super-struct96404%_)
               (_%maybe-super-struct-id96424%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct96415%_))))
          (let _%lp96426%_ ((_%super-struct96428%_ _%maybe-sub-struct96407%_))
            (if (not _%super-struct96428%_)
                '#f
                (if (eq? _%maybe-super-struct-id96424%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct96428%_)))
                    '#t
                    (_%lp96426%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct96428%_)))))))))
    (define base-struct/1
      (lambda (_%klass96398%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass96398%_ 'class))
            (if (class-type-struct? _%klass96398%_)
                _%klass96398%_
                (let () (declare (not safe)) (##type-super _%klass96398%_)))
            (if (not _%klass96398%_)
                '#f
                (error '"not a class or false" _%klass96398%_)))))
    (define base-struct/2
      (lambda (_%klass196383%_ _%klass296384%_)
        (let ((_%s196386%_ (base-struct/1 _%klass196383%_))
              (_%s296387%_ (base-struct/1 _%klass296384%_)))
          (if (or (not _%s196386%_)
                  (and _%s296387%_ (substruct? _%s196386%_ _%s296387%_)))
              _%s296387%_
              (if (or (not _%s296387%_)
                      (and _%s196386%_ (substruct? _%s296387%_ _%s196386%_)))
                  _%s196386%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass196383%_
                         _%klass296384%_
                         _%s196386%_
                         _%s296387%_))))))
    (define base-struct/list
      (lambda (_%all-supers96267%_)
        (let* ((_%all-supers9626896293%_ _%all-supers96267%_)
               (_%E9627396297%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers9626896293%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K9629196380%_ (lambda () '#f))
                (_%K9628896366%_
                 (lambda (_%x96364%_) (base-struct/1 _%x96364%_)))
                (_%K9628396343%_
                 (lambda (_%y96340%_ _%x96341%_)
                   (base-struct/2 _%x96341%_ _%y96340%_)))
                (_%K9627496304%_
                 (lambda (_%y96301%_ _%x96302%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x96302%_ _%y96301%_)))))
            (let* ((_%__match9848298483%_
                    (lambda (_%hd9627596307%_ _%tl9627696309%_)
                      (let ((_%x96312%_ _%hd9627596307%_))
                        (letrec ((_%splice-rest9627896314%_
                                  (lambda (_%rest9628296321%_ _%y96323%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (##null? _%rest9628296321%_))
                                        (_%K9627496304%_ _%y96323%_ _%x96312%_)
                                        (_%E9627396297%_))))
                                 (_%splice-try9628096316%_
                                  (lambda (_%hd9628196325%_
                                           _%rest9628296327%_
                                           _%y9627796328%_)
                                    (let ((_%y96331%_ _%hd9628196325%_))
                                      (_%splice-loop9627996318%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest9628296327%_))
                                       (cons _%y96331%_ _%y9627796328%_)))))
                                 (_%splice-loop9627996318%_
                                  (lambda (_%rest9628296333%_ _%y9627796334%_)
                                    (if (pair? _%rest9628296333%_)
                                        (_%splice-try9628096316%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest9628296333%_))
                                         _%rest9628296333%_
                                         _%y9627796334%_)
                                        (_%splice-rest9627896314%_
                                         _%rest9628296333%_
                                         (reverse _%y9627796334%_))))))
                          (_%splice-loop9627996318%_ _%tl9627696309%_ '())))))
                   (_%try-match9627096376%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (##pair? _%all-supers9626896293%_))
                          (let ((_%tl9629096371%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers9626896293%_)))
                                (_%hd9628996369%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers9626896293%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (##null? _%tl9629096371%_))
                                (let ((_%x96374%_ _%hd9628996369%_))
                                  (base-struct/1 _%x96374%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##pair? _%tl9629096371%_))
                                    (let ((_%tl9628796355%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl9629096371%_)))
                                          (_%hd9628696353%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl9629096371%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##null? _%tl9628796355%_))
                                          (let ((_%x96351%_ _%hd9628996369%_)
                                                (_%y96358%_ _%hd9628696353%_))
                                            (_%K9628396343%_
                                             _%y96358%_
                                             _%x96351%_))
                                          (_%__match9848298483%_
                                           _%hd9628996369%_
                                           _%tl9629096371%_)))
                                    (_%__match9848298483%_
                                     _%hd9628996369%_
                                     _%tl9629096371%_))))
                          (_%E9627396297%_)))))
              (if (let ()
                    (declare (not safe))
                    (##null? _%all-supers9626896293%_))
                  (_%K9629196380%_)
                  (_%try-match9627096376%_)))))))
    (define base-struct
      (lambda _%all-supers96265%_ (base-struct/list _%all-supers96265%_)))
    (define find-super-constructor
      (lambda (_%super96216%_)
        (let _%lp96218%_ ((_%rest96220%_ _%super96216%_)
                          (_%constructor96221%_ '#f))
          (let* ((_%rest9622296230%_ _%rest96220%_)
                 (_%else9622496238%_ (lambda () _%constructor96221%_))
                 (_%K9622696253%_
                  (lambda (_%rest96241%_ _%hd96242%_)
                    (let ((_%$e96244%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd96242%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e96244%_
                          ((lambda (_%xconstructor96247%_)
                             (if (or (not _%constructor96221%_)
                                     (eq? _%constructor96221%_
                                          _%xconstructor96247%_))
                                 (_%lp96218%_
                                  _%rest96241%_
                                  _%xconstructor96247%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor96221%_
                                        _%xconstructor96247%_)))
                           _%$e96244%_)
                          (_%lp96218%_ _%rest96241%_ _%constructor96221%_))))))
            (if (let () (declare (not safe)) (##pair? _%rest9622296230%_))
                (let ((_%hd9622796256%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9622296230%_)))
                      (_%tl9622896258%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9622296230%_))))
                  (let* ((_%hd96261%_ _%hd9622796256%_)
                         (_%rest96263%_ _%tl9622896258%_))
                    (_%K9622696253%_ _%rest96263%_ _%hd96261%_)))
                (_%else9622496238%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list96192%_ _%direct-slots96193%_)
        (let* ((_%next-slot96195%_ '1)
               (_%slot-table96197%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots96199%_ '(__class))
               (_%process-slot96203%_
                (lambda (_%slot96201%_)
                  (if (symbol? _%slot96201%_)
                      '#!void
                      (error '"invalid slot name" _%slot96201%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table96197%_
                              _%slot96201%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table96197%_
                           _%slot96201%_
                           _%next-slot96195%_))
                        (let ((__tmp98524
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot96201%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table96197%_
                           __tmp98524
                           _%next-slot96195%_))
                        (set! _%r-slots96199%_
                              (cons _%slot96201%_ _%r-slots96199%_))
                        (set! _%next-slot96195%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot96195%_ '1))))
                      '#!void)))
               (_%process-slots96209%_
                (lambda (_%g9620496206%_)
                  (for-each _%process-slot96203%_ _%g9620496206%_))))
          (let ((__tmp98526
                 (lambda (_%mixin96212%_)
                   (_%process-slots96209%_
                    (let ((__tmp98527
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin96212%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp98527 '())))))
                (__tmp98525 (reverse _%class-precedence-list96192%_)))
            (declare (not safe))
            (##for-each __tmp98526 __tmp98525))
          (_%process-slots96209%_ _%direct-slots96193%_)
          (let ((_%slot-vector96214%_
                 (list->vector
                  (let () (declare (not safe)) (##reverse _%r-slots96199%_)))))
            (values _%slot-vector96214%_ _%slot-table96197%_)))))
    (define make-class-type
      (lambda (_%id96117%_
               _%name96118%_
               _%direct-supers96119%_
               _%direct-slots96120%_
               _%properties96121%_
               _%constructor96122%_)
        (if (symbol? _%id96117%_)
            (let ((_%id96126%_ _%id96117%_))
              (if (symbol? _%name96118%_)
                  (let ((_%name96136%_ _%name96118%_))
                    (if (list? _%direct-supers96119%_)
                        (let ((_%direct-supers96146%_ _%direct-supers96119%_))
                          (if (list? _%direct-slots96120%_)
                              (let ((_%direct-slots96156%_
                                     _%direct-slots96120%_))
                                (if (list? _%properties96121%_)
                                    (let ((_%properties96166%_
                                           _%properties96121%_))
                                      (if ((lambda (_%$obj96175%_)
                                             (or (not _%$obj96175%_)
                                                 (symbol? _%$obj96175%_)))
                                           _%constructor96122%_)
                                          (let ((_%constructor96182%_
                                                 _%constructor96122%_))
                                            (__make-class-type
                                             _%id96126%_
                                             _%name96136%_
                                             _%direct-supers96146%_
                                             _%direct-slots96156%_
                                             _%properties96166%_
                                             _%constructor96182%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor96122%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties96121%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots96120%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers96119%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name96118%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id96117%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id95986%_
               _%name95987%_
               _%direct-supers95988%_
               _%direct-slots95989%_
               _%properties95990%_
               _%constructor95991%_)
        (let* ((_%id95994%_ _%id95986%_)
               (_%name96002%_ _%name95987%_)
               (_%direct-supers96010%_ _%direct-supers95988%_)
               (_%direct-slots96018%_ _%direct-slots95989%_)
               (_%properties96026%_ _%properties95990%_)
               (_%constructor96034%_ _%constructor95991%_))
          (let ((_%$e96046%_
                 (let ((__tmp98528
                        (lambda (_%$obj96043%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj96043%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp98528 _%direct-supers96010%_))))
            (if _%$e96046%_
                ((lambda (_%g9604896050%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g9604896050%_))
                 _%$e96046%_)
                (let ((_%$e96053%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final? _%direct-supers96010%_))))
                  (if _%$e96053%_
                      ((lambda (_%g9605596057%_)
                         (error '"Cannot extend final class" _%g9605596057%_))
                       _%$e96053%_)
                      '#!void))))
          (let ((_g98529_ (compute-precedence-list _%direct-supers96010%_)))
            (begin
              (let ((_g98530_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g98529_)
                           (##vector-length _g98529_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g98530_ 2)))
                    (error "Context expects 2 values" _g98530_)))
              (let ((_%precedence-list96060%_
                     (let () (declare (not safe)) (##vector-ref _g98529_ 0)))
                    (_%struct-super96061%_
                     (let () (declare (not safe)) (##vector-ref _g98529_ 1))))
                (let ((_g98531_
                       (compute-class-slots
                        _%precedence-list96060%_
                        _%direct-slots96018%_)))
                  (begin
                    (let ((_g98532_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g98531_)
                                 (##vector-length _g98531_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g98532_ 2)))
                          (error "Context expects 2 values" _g98532_)))
                    (let ((_%slot-vector96063%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g98531_ 0)))
                          (_%slot-table96064%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref _g98531_ 1))))
                      (let* ((_%properties96066%_
                              (cons (cons 'direct-slots: _%direct-slots96018%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers96010%_)
                                          _%properties96026%_)))
                             (_%constructor*96071%_
                              (let ((_%$e96068%_ _%constructor96034%_))
                                (if _%$e96068%_
                                    _%$e96068%_
                                    (find-super-constructor
                                     _%direct-supers96010%_))))
                             (_%precedence-list96114%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties96066%_))
                                      (memq object::t
                                            _%precedence-list96060%_))
                                  _%precedence-list96060%_
                                  (let _%loop96076%_ ((_%tail96078%_
                                                       _%precedence-list96060%_)
                                                      (_%head96079%_ '()))
                                    (let* ((_%tail9608096088%_ _%tail96078%_)
                                           (_%else9608296096%_
                                            (lambda ()
                                              (let ((__tmp98533
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp98533
                                                 _%head96079%_))))
                                           (_%K9608496102%_
                                            (lambda (_%rest96099%_ _%hd96100%_)
                                              (if (eq? _%hd96100%_ t::t)
                                                  (let ((__tmp98534
                                                         (cons object::t
                                                               _%tail96078%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp98534
                                                     _%head96079%_))
                                                  (_%loop96076%_
                                                   _%rest96099%_
                                                   (cons _%hd96100%_
                                                         _%head96079%_))))))
                                      (if (let ()
                                            (declare (not safe))
                                            (##pair? _%tail9608096088%_))
                                          (let ((_%hd9608596105%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail9608096088%_)))
                                                (_%tl9608696107%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail9608096088%_))))
                                            (let* ((_%hd96110%_
                                                    _%hd9608596105%_)
                                                   (_%rest96112%_
                                                    _%tl9608696107%_))
                                              (_%K9608496102%_
                                               _%rest96112%_
                                               _%hd96110%_)))
                                          (_%else9608296096%_)))))))
                        (make-class-type-descriptor
                         _%id95994%_
                         _%name96002%_
                         _%struct-super96061%_
                         _%precedence-list96114%_
                         _%slot-vector96063%_
                         _%properties96066%_
                         _%constructor*96071%_
                         _%slot-table96064%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass95972%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95972%_ 'class))
            (let ((_%klass95976%_ _%klass95972%_))
              (__class-precedence-list _%klass95976%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass95972%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass95960%_)
        (let ((_%klass95963%_ _%klass95960%_))
          (cons _%klass95963%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass95963%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers95957%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers95957%_))))
    (define make-class-predicate
      (lambda (_%klass95943%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95943%_ 'class))
            (let ((_%klass95947%_ _%klass95943%_))
              (__make-class-predicate _%klass95947%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass95943%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass95914%_)
        (let* ((_%klass95917%_ _%klass95914%_)
               (_%tid95926%_
                (let () (declare (not safe)) (##type-id _%klass95917%_))))
          (if (__class-type-final? _%klass95917%_)
              (lambda (_%g9592895930%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g9592895930%_
                   _%tid95926%_)))
              (if (__class-type-struct? _%klass95917%_)
                  (lambda (_%g9593395935%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%g9593395935%_ _%tid95926%_)))
                  (lambda (_%g9593895940%_)
                    (__class-instance? _%klass95917%_ _%g9593895940%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass95889%_ _%slot95890%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95889%_ 'class))
            (let ((_%klass95894%_ _%klass95889%_))
              (if (symbol? _%slot95890%_)
                  (let ((_%slot95904%_ _%slot95890%_))
                    (__make-class-slot-accessor _%klass95894%_ _%slot95904%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot95890%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass95889%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass95857%_ _%slot95858%_)
        (let* ((_%klass95861%_ _%klass95857%_)
               (_%slot95869%_ _%slot95858%_)
               (_%field95878%_
                (let ((__tmp98535
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass95861%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp98535 _%slot95869%_ '#f))))
          (if (not _%field95878%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass95861%_
                       'slot:
                       _%slot95869%_)
                '#!void)
              (if (__class-type-final? _%klass95861%_)
                  (make-final-slot-accessor
                   _%klass95861%_
                   _%slot95869%_
                   _%field95878%_)
                  (if (__class-type-struct? _%klass95861%_)
                      (make-struct-slot-accessor
                       _%klass95861%_
                       _%slot95869%_
                       _%field95878%_)
                      (if (let ((_%strukt95884%_
                                 (base-struct/1 _%klass95861%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt95884%_
                                    'class))
                                 (let ((__tmp98536
                                        (let ((__tmp98537
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt95884%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp98537))))
                                   (declare (not safe))
                                   (##fx< _%field95878%_ __tmp98536))))
                          (make-struct-subclass-slot-accessor
                           _%klass95861%_
                           _%slot95869%_
                           _%field95878%_)
                          (make-class-cached-slot-accessor
                           _%klass95861%_
                           _%slot95869%_
                           _%field95878%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass95832%_ _%slot95833%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95832%_ 'class))
            (let ((_%klass95837%_ _%klass95832%_))
              (if (symbol? _%slot95833%_)
                  (let ((_%slot95847%_ _%slot95833%_))
                    (__make-class-slot-mutator _%klass95837%_ _%slot95847%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot95833%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass95832%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass95800%_ _%slot95801%_)
        (let* ((_%klass95804%_ _%klass95800%_)
               (_%slot95812%_ _%slot95801%_)
               (_%field95821%_
                (let ((__tmp98538
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass95804%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp98538 _%slot95812%_ '#f))))
          (if (not _%field95821%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass95804%_
                       'slot:
                       _%slot95812%_)
                '#!void)
              (if (__class-type-final? _%klass95804%_)
                  (make-final-slot-mutator
                   _%klass95804%_
                   _%slot95812%_
                   _%field95821%_)
                  (if (__class-type-struct? _%klass95804%_)
                      (make-struct-slot-mutator
                       _%klass95804%_
                       _%slot95812%_
                       _%field95821%_)
                      (if (let ((_%strukt95827%_
                                 (base-struct/1 _%klass95804%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt95827%_
                                    'class))
                                 (let ((__tmp98539
                                        (let ((__tmp98540
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt95827%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp98540))))
                                   (declare (not safe))
                                   (##fx< _%field95821%_ __tmp98539))))
                          (make-struct-subclass-slot-mutator
                           _%klass95804%_
                           _%slot95812%_
                           _%field95821%_)
                          (make-class-cached-slot-mutator
                           _%klass95804%_
                           _%slot95812%_
                           _%field95821%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass95775%_ _%slot95776%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95775%_ 'class))
            (let ((_%klass95780%_ _%klass95775%_))
              (if (symbol? _%slot95776%_)
                  (let ((_%slot95790%_ _%slot95776%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass95780%_
                     _%slot95790%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot95776%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass95775%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass95743%_ _%slot95744%_)
        (let* ((_%klass95747%_ _%klass95743%_)
               (_%slot95755%_ _%slot95744%_)
               (_%field95764%_
                (let ((__tmp98541
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass95747%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp98541 _%slot95755%_ '#f))))
          (if (not _%field95764%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass95747%_
                       'slot:
                       _%slot95755%_)
                '#!void)
              (if (__class-type-final? _%klass95747%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass95747%_
                   _%slot95755%_
                   _%field95764%_)
                  (if (__class-type-struct? _%klass95747%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass95747%_
                       _%slot95755%_
                       _%field95764%_)
                      (if (let ((_%strukt95770%_
                                 (base-struct/1 _%klass95747%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt95770%_
                                    'class))
                                 (let ((__tmp98542
                                        (let ((__tmp98543
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt95770%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp98543))))
                                   (declare (not safe))
                                   (##fx< _%field95764%_ __tmp98542))))
                          (make-struct-slot-unchecked-accessor
                           _%klass95747%_
                           _%slot95755%_
                           _%field95764%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass95747%_
                           _%slot95755%_
                           _%field95764%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass95718%_ _%slot95719%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95718%_ 'class))
            (let ((_%klass95723%_ _%klass95718%_))
              (if (symbol? _%slot95719%_)
                  (let ((_%slot95733%_ _%slot95719%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass95723%_
                     _%slot95733%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot95719%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass95718%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass95686%_ _%slot95687%_)
        (let* ((_%klass95690%_ _%klass95686%_)
               (_%slot95698%_ _%slot95687%_)
               (_%field95707%_
                (let ((__tmp98544
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass95690%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp98544 _%slot95698%_ '#f))))
          (if (not _%field95707%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass95690%_
                       'slot:
                       _%slot95698%_)
                '#!void)
              (if (__class-type-final? _%klass95690%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass95690%_
                   _%slot95698%_
                   _%field95707%_)
                  (if (__class-type-struct? _%klass95690%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass95690%_
                       _%slot95698%_
                       _%field95707%_)
                      (if (let ((_%strukt95713%_
                                 (base-struct/1 _%klass95690%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt95713%_
                                    'class))
                                 (let ((__tmp98545
                                        (let ((__tmp98546
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt95713%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp98546))))
                                   (declare (not safe))
                                   (##fx< _%field95707%_ __tmp98545))))
                          (make-struct-slot-unchecked-mutator
                           _%klass95690%_
                           _%slot95698%_
                           _%field95707%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass95690%_
                           _%slot95698%_
                           _%field95707%_))))))))
    (define not-an-instance__%
      (lambda (_%object95670%_ _%class95671%_ _%slot95672%_)
        (apply error
               '"not an instance"
               'object:
               _%object95670%_
               'class:
               _%class95671%_
               (if _%slot95672%_ (cons 'slot: (cons _%slot95672%_ '())) '()))))
    (define not-an-instance__0
      (lambda (_%object95677%_ _%class95678%_)
        (let ((_%slot95680%_ '#f))
          (not-an-instance__% _%object95677%_ _%class95678%_ _%slot95680%_))))
    (define not-an-instance
      (lambda _g98548_
        (let ((_g98547_ (let () (declare (not safe)) (##length _g98548_))))
          (cond ((let () (declare (not safe)) (##fx= _g98547_ 2))
                 (apply not-an-instance__0 _g98548_))
                ((let () (declare (not safe)) (##fx= _g98547_ 3))
                 (apply not-an-instance__% _g98548_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g98548_))))))
    (define make-final-slot-accessor
      (lambda (_%klass95663%_ _%slot95664%_ _%field95665%_)
        (lambda (_%obj95667%_)
          (##direct-structure-ref
           _%obj95667%_
           _%field95665%_
           _%klass95663%_
           _%slot95664%_))))
    (define make-final-slot-mutator
      (lambda (_%klass95656%_ _%slot95657%_ _%field95658%_)
        (lambda (_%obj95660%_ _%val95661%_)
          (##direct-structure-set!
           _%obj95660%_
           _%val95661%_
           _%field95658%_
           _%klass95656%_
           _%slot95657%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass95650%_ _%slot95651%_ _%field95652%_)
        (lambda (_%obj95654%_)
          (##structure-ref
           _%obj95654%_
           _%field95652%_
           _%klass95650%_
           _%slot95651%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass95643%_ _%slot95644%_ _%field95645%_)
        (lambda (_%obj95647%_ _%val95648%_)
          (##structure-set!
           _%obj95647%_
           _%val95648%_
           _%field95645%_
           _%klass95643%_
           _%slot95644%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass95637%_ _%slot95638%_ _%field95639%_)
        (lambda (_%obj95641%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj95641%_
             _%field95639%_
             _%klass95637%_
             _%slot95638%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass95630%_ _%slot95631%_ _%field95632%_)
        (lambda (_%obj95634%_ _%val95635%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj95634%_
             _%val95635%_
             _%field95632%_
             _%klass95630%_
             _%slot95631%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass95624%_ _%slot95625%_ _%field95626%_)
        (lambda (_%obj95628%_)
          (if (class-instance? _%klass95624%_ _%obj95628%_)
              (unchecked-slot-ref _%obj95628%_ _%field95626%_)
              (not-an-instance__%
               _%obj95628%_
               _%klass95624%_
               _%slot95625%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass95617%_ _%slot95618%_ _%field95619%_)
        (lambda (_%obj95621%_ _%val95622%_)
          (if (class-instance? _%klass95617%_ _%obj95621%_)
              (unchecked-field-set! _%obj95621%_ _%field95619%_ _%val95622%_)
              (not-an-instance__%
               _%obj95621%_
               _%klass95617%_
               _%slot95618%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass95608%_ _%slot95609%_ _%field95610%_)
        (lambda (_%obj95612%_)
          (if (let ((__tmp98549
                     (let () (declare (not safe)) (##type-id _%klass95608%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj95612%_ __tmp98549))
              (unchecked-field-ref _%obj95612%_ _%field95610%_)
              (if (class-instance? _%klass95608%_ _%obj95612%_)
                  (unchecked-slot-ref _%obj95612%_ _%slot95609%_)
                  (not-an-instance__%
                   _%obj95612%_
                   _%klass95608%_
                   _%slot95609%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass95598%_ _%slot95599%_ _%field95600%_)
        (lambda (_%obj95602%_ _%val95603%_)
          (if (let ((__tmp98550
                     (let () (declare (not safe)) (##type-id _%klass95598%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj95602%_ __tmp98550))
              (unchecked-field-set! _%obj95602%_ _%field95600%_ _%val95603%_)
              (if (class-instance? _%klass95598%_ _%obj95602%_)
                  (unchecked-slot-set! _%obj95602%_ _%slot95599%_ _%val95603%_)
                  (not-an-instance__%
                   _%obj95602%_
                   _%klass95598%_
                   _%slot95599%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass95592%_ _%slot95593%_ _%field95594%_)
        (lambda (_%obj95596%_)
          (if (let ((__tmp98551
                     (let () (declare (not safe)) (##type-id _%klass95592%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj95596%_ __tmp98551))
              (unchecked-field-ref _%obj95596%_ _%field95594%_)
              (unchecked-slot-ref _%obj95596%_ _%slot95593%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass95585%_ _%slot95586%_ _%field95587%_)
        (lambda (_%obj95589%_ _%val95590%_)
          (if (let ((__tmp98552
                     (let () (declare (not safe)) (##type-id _%klass95585%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj95589%_ __tmp98552))
              (unchecked-field-set! _%obj95589%_ _%field95587%_ _%val95590%_)
              (unchecked-slot-set! _%obj95589%_ _%slot95586%_ _%val95590%_)))))
    (define class-slot-offset
      (lambda (_%klass95560%_ _%slot95561%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95560%_ 'class))
            (let ((_%klass95565%_ _%klass95560%_))
              (if (let () (declare (not safe)) (symbolic? _%slot95561%_))
                  (let ((_%slot95575%_ _%slot95561%_))
                    (__class-slot-offset _%klass95565%_ _%slot95575%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot95561%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass95560%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass95539%_ _%slot95540%_)
        (let* ((_%klass95543%_ _%klass95539%_)
               (_%slot95551%_ _%slot95540%_)
               (__tmp98553
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass95543%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp98553 _%slot95551%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass95513%_ _%obj95514%_ _%slot95515%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95513%_ 'class))
            (let ((_%klass95519%_ _%klass95513%_))
              (if (let () (declare (not safe)) (symbolic? _%slot95515%_))
                  (let ((_%slot95529%_ _%slot95515%_))
                    (__class-slot-ref
                     _%klass95519%_
                     _%obj95514%_
                     _%slot95529%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot95515%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass95513%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass95489%_ _%obj95490%_ _%slot95491%_)
        (let* ((_%klass95494%_ _%klass95489%_) (_%slot95502%_ _%slot95491%_))
          (if (__class-instance? _%klass95494%_ _%obj95490%_)
              (let ((_%off95511%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj95490%_))
                      _%slot95502%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj95490%_
                 _%off95511%_
                 _%klass95494%_
                 _%slot95502%_))
              (not-an-instance__0 _%obj95490%_ _%klass95494%_)))))
    (define class-slot-set!
      (lambda (_%klass95462%_ _%obj95463%_ _%slot95464%_ _%val95465%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95462%_ 'class))
            (let ((_%klass95469%_ _%klass95462%_))
              (if (let () (declare (not safe)) (symbolic? _%slot95464%_))
                  (let ((_%slot95479%_ _%slot95464%_))
                    (__class-slot-set!
                     _%klass95469%_
                     _%obj95463%_
                     _%slot95479%_
                     _%val95465%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot95464%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass95462%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass95437%_ _%obj95438%_ _%slot95439%_ _%val95440%_)
        (let* ((_%klass95443%_ _%klass95437%_) (_%slot95451%_ _%slot95439%_))
          (if (__class-instance? _%klass95443%_ _%obj95438%_)
              (let ((_%off95460%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj95438%_))
                      _%slot95451%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj95438%_
                 _%val95440%_
                 _%off95460%_
                 _%klass95443%_
                 _%slot95451%_))
              (not-an-instance__0 _%obj95438%_ _%klass95443%_)))))
    (define unchecked-field-ref
      (lambda (_%obj95434%_ _%off95435%_)
        (let ((__tmp98554
               (let () (declare (not safe)) (##structure-type _%obj95434%_))))
          (declare (not safe))
          (##unchecked-structure-ref
           _%obj95434%_
           _%off95435%_
           __tmp98554
           '#f))))
    (define unchecked-field-set!
      (lambda (_%obj95430%_ _%off95431%_ _%val95432%_)
        (let ((__tmp98555
               (let () (declare (not safe)) (##structure-type _%obj95430%_))))
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj95430%_
           _%val95432%_
           _%off95431%_
           __tmp98555
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj95427%_ _%slot95428%_)
        (unchecked-field-ref
         _%obj95427%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj95427%_))
          _%slot95428%_))))
    (define unchecked-slot-set!
      (lambda (_%obj95423%_ _%slot95424%_ _%val95425%_)
        (unchecked-field-set!
         _%obj95423%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj95423%_))
          _%slot95424%_)
         _%val95425%_)))
    (define slot-ref__%
      (lambda (_%obj95385%_ _%slot95386%_ _%E95387%_)
        (if (symbol? _%slot95386%_)
            (let ((_%slot95391%_ _%slot95386%_))
              (if (procedure? _%E95387%_)
                  (let ((_%E95401%_ _%E95387%_))
                    (__slot-ref__% _%obj95385%_ _%slot95391%_ _%E95401%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E95387%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot95386%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj95414%_ _%slot95415%_)
        (let ((_%E95417%_ __slot-error))
          (slot-ref__% _%obj95414%_ _%slot95415%_ _%E95417%_))))
    (define slot-ref
      (lambda _g98557_
        (let ((_g98556_ (let () (declare (not safe)) (##length _g98557_))))
          (cond ((let () (declare (not safe)) (##fx= _g98556_ 2))
                 (apply slot-ref__0 _g98557_))
                ((let () (declare (not safe)) (##fx= _g98556_ 3))
                 (apply slot-ref__% _g98557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g98557_))))))
    (define __slot-ref__%
      (lambda (_%obj95341%_ _%slot95342%_ _%E95343%_)
        (let* ((_%slot95346%_ _%slot95342%_)
               (_%E95354%_ _%E95343%_)
               (_%klass95363%_ (class-of _%obj95341%_))
               (_%$e95366%_
                (__class-slot-offset _%klass95363%_ _%slot95346%_)))
          (if _%$e95366%_
              ((lambda (_%off95369%_)
                 (unchecked-field-ref _%obj95341%_ _%off95369%_))
               _%$e95366%_)
              (let ()
                (declare (not safe))
                (_%E95354%_ _%obj95341%_ _%slot95346%_))))))
    (define __slot-ref__0
      (lambda (_%obj95375%_ _%slot95376%_)
        (let ((_%E95378%_ __slot-error))
          (__slot-ref__% _%obj95375%_ _%slot95376%_ _%E95378%_))))
    (define __slot-ref
      (lambda _g98559_
        (let ((_g98558_ (let () (declare (not safe)) (##length _g98559_))))
          (cond ((let () (declare (not safe)) (##fx= _g98558_ 2))
                 (apply __slot-ref__0 _g98559_))
                ((let () (declare (not safe)) (##fx= _g98558_ 3))
                 (apply __slot-ref__% _g98559_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g98559_))))))
    (define slot-set!__%
      (lambda (_%obj95299%_ _%slot95300%_ _%val95301%_ _%E95302%_)
        (if (symbol? _%slot95300%_)
            (let ((_%slot95306%_ _%slot95300%_))
              (if (procedure? _%E95302%_)
                  (let ((_%E95316%_ _%E95302%_))
                    (__slot-set!__%
                     _%obj95299%_
                     _%slot95306%_
                     _%val95301%_
                     _%E95316%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E95302%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot95300%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj95329%_ _%slot95330%_ _%val95331%_)
        (let ((_%E95333%_ __slot-error))
          (slot-set!__% _%obj95329%_ _%slot95330%_ _%val95331%_ _%E95333%_))))
    (define slot-set!
      (lambda _g98561_
        (let ((_g98560_ (let () (declare (not safe)) (##length _g98561_))))
          (cond ((let () (declare (not safe)) (##fx= _g98560_ 3))
                 (apply slot-set!__0 _g98561_))
                ((let () (declare (not safe)) (##fx= _g98560_ 4))
                 (apply slot-set!__% _g98561_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g98561_))))))
    (define __slot-set!__%
      (lambda (_%obj95252%_ _%slot95253%_ _%val95254%_ _%E95255%_)
        (let* ((_%slot95258%_ _%slot95253%_)
               (_%E95266%_ _%E95255%_)
               (_%klass95275%_ (class-of _%obj95252%_))
               (_%$e95278%_
                (__class-slot-offset _%klass95275%_ _%slot95258%_)))
          (if _%$e95278%_
              ((lambda (_%off95281%_)
                 (unchecked-field-set! _%obj95252%_ _%off95281%_ _%val95254%_))
               _%$e95278%_)
              (let ()
                (declare (not safe))
                (_%E95266%_ _%obj95252%_ _%slot95258%_))))))
    (define __slot-set!__0
      (lambda (_%obj95287%_ _%slot95288%_ _%val95289%_)
        (let ((_%E95291%_ __slot-error))
          (__slot-set!__%
           _%obj95287%_
           _%slot95288%_
           _%val95289%_
           _%E95291%_))))
    (define __slot-set!
      (lambda _g98563_
        (let ((_g98562_ (let () (declare (not safe)) (##length _g98563_))))
          (cond ((let () (declare (not safe)) (##fx= _g98562_ 3))
                 (apply __slot-set!__0 _g98563_))
                ((let () (declare (not safe)) (##fx= _g98562_ 4))
                 (apply __slot-set!__% _g98563_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g98563_))))))
    (define __slot-error
      (lambda (_%obj95248%_ _%slot95249%_)
        (error '"Cannot find slot"
               'object:
               _%obj95248%_
               'slot:
               _%slot95249%_)))
    (define subclass?
      (lambda (_%maybe-sub-class95223%_ _%maybe-super-class95224%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class95223%_ 'class))
            (let ((_%maybe-sub-class95228%_ _%maybe-sub-class95223%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class95224%_
                     'class))
                  (let ((_%maybe-super-class95238%_
                         _%maybe-super-class95224%_))
                    (__subclass?
                     _%maybe-sub-class95228%_
                     _%maybe-super-class95238%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class95224%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class95223%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class95195%_ _%maybe-super-class95196%_)
        (let* ((_%maybe-sub-class95199%_ _%maybe-sub-class95195%_)
               (_%maybe-super-class95207%_ _%maybe-super-class95196%_)
               (_%maybe-super-class-id95216%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class95207%_)))
               (_%$e95218%_
                (eq? _%maybe-super-class-id95216%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class95199%_)))))
          (if _%$e95218%_
              _%$e95218%_
              (let ((__tmp98565
                     (lambda (_%super-class95221%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class95221%_))
                            _%maybe-super-class-id95216%_)))
                    (__tmp98564
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class95199%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp98565 __tmp98564))))))
    (define object?
      (lambda (_%o95192%_)
        (if (let () (declare (not safe)) (##structure? _%o95192%_))
            (let ((__tmp98566
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o95192%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp98566 'class))
            '#f)))
    (define object-type
      (lambda (_%o95187%_)
        (if (let () (declare (not safe)) (##structure? _%o95187%_))
            (let ((_%klass95190%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o95187%_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass95190%_ 'class))
                  _%klass95190%_
                  (begin
                    (error '"not an object" _%o95187%_ _%klass95190%_)
                    '#!void)))
            (begin (error '"not an object" _%o95187%_) '#!void))))
    (define direct-instance?
      (lambda (_%klass95172%_ _%obj95173%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95172%_ 'class))
            (let ((_%klass95177%_ _%klass95172%_))
              (__direct-instance? _%klass95177%_ _%obj95173%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass95172%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass95159%_ _%obj95160%_)
        (let* ((_%klass95163%_ _%klass95159%_)
               (__tmp98567
                (let () (declare (not safe)) (##type-id _%klass95163%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj95160%_ __tmp98567))))
    (define immediate-instance-of?
      (lambda (_%klass95155%_ _%obj95156%_)
        (if (let () (declare (not safe)) (##structure? _%obj95156%_))
            (eq? _%klass95155%_
                 (let () (declare (not safe)) (##structure-type _%obj95156%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass95140%_ _%obj95141%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95140%_ 'class))
            (let ((_%klass95145%_ _%klass95140%_))
              (__struct-instance? _%klass95145%_ _%obj95141%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass95140%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass95127%_ _%obj95128%_)
        (let* ((_%klass95131%_ _%klass95127%_)
               (__tmp98568
                (let () (declare (not safe)) (##type-id _%klass95131%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj95128%_ __tmp98568))))
    (define class-instance?
      (lambda (_%klass95112%_ _%obj95113%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95112%_ 'class))
            (let ((_%klass95117%_ _%klass95112%_))
              (__class-instance? _%klass95117%_ _%obj95113%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass95112%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass95097%_ _%obj95098%_)
        (let* ((_%klass95101%_ _%klass95097%_)
               (_%type95110%_ (class-of _%obj95098%_)))
          (__subclass? _%type95110%_ _%klass95101%_))))
    (define make-object
      (lambda (_%klass95072%_ _%k95073%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95072%_ 'class))
            (let ((_%klass95077%_ _%klass95072%_))
              (if (fixnum? _%k95073%_)
                  (let ((_%k95087%_ _%k95073%_))
                    (__make-object _%klass95077%_ _%k95087%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k95073%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass95072%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass95049%_ _%k95050%_)
        (let* ((_%klass95053%_ _%klass95049%_) (_%k95061%_ _%k95050%_))
          (if (__class-type-system? _%klass95053%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass95053%_)
                '#!void)
              (let ((_%obj95070%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass95053%_ _%k95061%_))))
                (object-fill! _%obj95070%_ '#f))))))
    (define object-fill!
      (lambda (_%obj95034%_ _%fill95035%_)
        (if '#t
            (let ((_%obj95039%_ _%obj95034%_))
              (__object-fill! _%obj95039%_ _%fill95035%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj95034%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj95016%_ _%fill95017%_)
        (let ((_%obj95020%_ _%obj95016%_))
          (let _%loop95029%_ ((_%i95031%_
                               (let ((__tmp98569
                                      (let ()
                                        (declare (not safe))
                                        (##structure-length _%obj95020%_))))
                                 (declare (not safe))
                                 (##fx- __tmp98569 '1))))
            (if (let () (declare (not safe)) (##fx> _%i95031%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj95020%_
                     _%fill95017%_
                     _%i95031%_
                     '#f
                     '#f))
                  (_%loop95029%_
                   (let () (declare (not safe)) (##fx- _%i95031%_ '1))))
                _%obj95020%_)))))
    (define new-instance
      (lambda (_%klass95002%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass95002%_ 'class))
            (let ((_%klass95006%_ _%klass95002%_))
              (__new-instance _%klass95006%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass95002%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass94990%_)
        (let* ((_%klass94993%_ _%klass94990%_)
               (__obj98484
                (let ((__tmp98570
                       (let ((__tmp98571
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass94993%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp98571))))
                  (declare (not safe))
                  (##make-structure _%klass94993%_ __tmp98570))))
          (object-fill! __obj98484 '#f)
          __obj98484)))
    (define make-instance
      (lambda (_%klass94975%_ . _%args94976%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94975%_ 'class))
            (let ((_%klass94980%_ _%klass94975%_))
              (declare (not safe))
              (##apply __make-instance _%klass94980%_ _%args94976%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass94975%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass94947%_ . _%args94948%_)
        (let* ((_%klass94951%_ _%klass94947%_)
               (_%$e94960%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass94951%_ '10 '#f '#f))))
          (if _%$e94960%_
              ((lambda (_%kons-id94963%_)
                 (let ((_%obj94965%_ (__new-instance _%klass94951%_)))
                   (___constructor-init!
                    _%klass94951%_
                    _%kons-id94963%_
                    _%obj94965%_
                    _%args94948%_)
                   _%obj94965%_))
               _%$e94960%_)
              (if (__class-type-metaclass? _%klass94951%_)
                  (let ((_%obj94968%_ (__new-instance _%klass94951%_)))
                    (__metaclass-instance-init!
                     _%klass94951%_
                     _%obj94968%_
                     _%args94948%_)
                    _%obj94968%_)
                  (if (not (__class-type-struct? _%klass94951%_))
                      (let ((_%obj94971%_ (__new-instance _%klass94951%_)))
                        (___class-instance-init!
                         _%klass94951%_
                         _%obj94971%_
                         _%args94948%_)
                        _%obj94971%_)
                      (if (let ((__tmp98573
                                 (__class-type-field-count _%klass94951%_))
                                (__tmp98572
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args94948%_))))
                            (declare (not safe))
                            (##fx= __tmp98573 __tmp98572))
                          (apply ##structure _%klass94951%_ _%args94948%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass94951%_
                                   'slots:
                                   (__class-type-slot-list _%klass94951%_)
                                   'args:
                                   _%args94948%_)
                            '#!void))))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj94932%_ . _%args94933%_)
        (if '#t
            (let ((_%obj94937%_ _%obj94932%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj94937%_ _%args94933%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj94932%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj94919%_ . _%args94920%_)
        (let ((_%obj94923%_ _%obj94919%_))
          (if (let ((__tmp98575
                     (let () (declare (not safe)) (##length _%args94920%_)))
                    (__tmp98574
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj94923%_))))
                (declare (not safe))
                (##fx< __tmp98575 __tmp98574))
              (___struct-instance-init! _%obj94923%_ _%args94920%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj94923%_
                     'args:
                     _%args94920%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj94878%_ _%args94879%_)
        (let _%lp94881%_ ((_%k94883%_ '1) (_%rest94884%_ _%args94879%_))
          (let* ((_%rest9488594893%_ _%rest94884%_)
                 (_%else9488794901%_ (lambda () _%obj94878%_))
                 (_%K9488994907%_
                  (lambda (_%rest94904%_ _%hd94905%_)
                    (unchecked-field-set! _%obj94878%_ _%k94883%_ _%hd94905%_)
                    (_%lp94881%_
                     (let () (declare (not safe)) (##fx+ _%k94883%_ '1))
                     _%rest94904%_))))
            (if (let () (declare (not safe)) (##pair? _%rest9488594893%_))
                (let ((_%hd9489094910%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9488594893%_)))
                      (_%tl9489194912%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9488594893%_))))
                  (let* ((_%hd94915%_ _%hd9489094910%_)
                         (_%rest94917%_ _%tl9489194912%_))
                    (_%K9488994907%_ _%rest94917%_ _%hd94915%_)))
                (_%else9488794901%_))))))
    (define class-instance-init!
      (lambda (_%obj94863%_ . _%args94864%_)
        (if '#t
            (let ((_%obj94868%_ _%obj94863%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj94868%_ _%args94864%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj94863%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj94850%_ . _%args94851%_)
        (let ((_%obj94854%_ _%obj94850%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj94854%_))
           _%obj94854%_
           _%args94851%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass94792%_ _%obj94793%_ _%args94794%_)
        (let _%lp94796%_ ((_%rest94798%_ _%args94794%_))
          (let* ((_%rest9479994809%_ _%rest94798%_)
                 (_%else9480194817%_
                  (lambda ()
                    (if (null? _%rest94798%_)
                        _%obj94793%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass94792%_
                               'rest:
                               _%rest94798%_))))
                 (_%K9480394831%_
                  (lambda (_%rest94820%_ _%val94821%_ _%key94822%_)
                    (if (not (keyword? _%key94822%_))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key94822%_)
                        (let ((_%$e94825%_
                               (__class-slot-offset
                                _%klass94792%_
                                _%key94822%_)))
                          (if _%$e94825%_
                              ((lambda (_%off94828%_)
                                 (unchecked-field-set!
                                  _%obj94793%_
                                  _%off94828%_
                                  _%val94821%_)
                                 (_%lp94796%_ _%rest94820%_))
                               _%$e94825%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass94792%_
                                     'slot:
                                     _%key94822%_)))))))
            (if (let () (declare (not safe)) (##pair? _%rest9479994809%_))
                (let ((_%hd9480494834%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest9479994809%_)))
                      (_%tl9480594836%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest9479994809%_))))
                  (let ((_%key94839%_ _%hd9480494834%_))
                    (if (let ()
                          (declare (not safe))
                          (##pair? _%tl9480594836%_))
                        (let ((_%hd9480694841%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl9480594836%_)))
                              (_%tl9480794843%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl9480594836%_))))
                          (let* ((_%val94846%_ _%hd9480694841%_)
                                 (_%rest94848%_ _%tl9480794843%_))
                            (_%K9480394831%_
                             _%rest94848%_
                             _%val94846%_
                             _%key94839%_)))
                        (_%else9480194817%_))))
                (_%else9480194817%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass94788%_ _%obj94789%_ _%args94790%_)
        (apply call-method
               _%klass94788%_
               'instance-init!
               _%obj94789%_
               _%args94790%_)))
    (define constructor-init!
      (lambda (_%klass94751%_ _%kons-id94752%_ _%obj94753%_ . _%args94754%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94751%_ 'class))
            (let ((_%klass94758%_ _%klass94751%_))
              (if (symbol? _%kons-id94752%_)
                  (let ((_%kons-id94768%_ _%kons-id94752%_))
                    (if '#t
                        (let ((_%obj94778%_ _%obj94753%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass94758%_
                                   _%kons-id94768%_
                                   _%obj94778%_
                                   _%args94754%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                           'contract:
                           'true
                           'value:
                           _%obj94753%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id94752%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass94751%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass94720%_ _%kons-id94721%_ _%obj94722%_ . _%args94723%_)
        (let* ((_%klass94726%_ _%klass94720%_)
               (_%kons-id94734%_ _%kons-id94721%_)
               (_%obj94742%_ _%obj94722%_))
          (___constructor-init!
           _%klass94726%_
           _%kons-id94734%_
           _%obj94742%_
           _%args94723%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass94709%_ _%kons-id94710%_ _%obj94711%_ _%args94712%_)
        (let ((_%$e94714%_
               (__find-method _%klass94709%_ _%obj94711%_ _%kons-id94710%_)))
          (if _%$e94714%_
              ((lambda (_%kons94717%_)
                 (apply _%kons94717%_ _%obj94711%_ _%args94712%_)
                 _%obj94711%_)
               _%$e94714%_)
              (error '"missing constructor"
                     'class:
                     _%klass94709%_
                     'method:
                     _%kons-id94710%_)))))
    (define struct-copy
      (lambda (_%struct94695%_)
        (if '#t
            (let ((_%struct94699%_ _%struct94695%_))
              (__struct-copy _%struct94699%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct94695%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct94683%_)
        (let ((_%struct94686%_ _%struct94683%_))
          (declare (not safe))
          (##structure-copy _%struct94686%_))))
    (define struct->list
      (lambda (_%obj94669%_)
        (if '#t
            (let ((_%obj94673%_ _%obj94669%_)) (__struct->list _%obj94673%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj94669%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj94657%_)
        (let ((_%obj94660%_ _%obj94657%_))
          (declare (not safe))
          (##vector->list _%obj94660%_))))
    (define class->list
      (lambda (_%obj94643%_)
        (if '#t
            (let ((_%obj94647%_ _%obj94643%_)) (__class->list _%obj94647%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@837.20-837.23"
               'contract:
               'true
               'value:
               _%obj94643%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj94619%_)
        (let* ((_%obj94622%_ _%obj94619%_)
               (_%klass94631%_
                (let () (declare (not safe)) (##structure-type _%obj94622%_)))
               (_%slot-vector94633%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass94631%_ '7 '#f '#f))))
          (let _%loop94635%_ ((_%index94637%_
                               (let ((__tmp98576
                                      (let ()
                                        (declare (not safe))
                                        (##vector-length
                                         _%slot-vector94633%_))))
                                 (declare (not safe))
                                 (##fx- __tmp98576 '1)))
                              (_%plist94638%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index94637%_ '1))
                (cons _%klass94631%_ _%plist94638%_)
                (let ((_%slot94641%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%slot-vector94633%_ _%index94637%_))))
                  (_%loop94635%_
                   (let () (declare (not safe)) (##fx- _%index94637%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot94641%_))
                         (cons (unchecked-field-ref
                                _%obj94622%_
                                _%index94637%_)
                               _%plist94638%_)))))))))
    (define call-method
      (lambda (_%obj94603%_ _%id94604%_ . _%args94605%_)
        (if (symbol? _%id94604%_)
            (let ((_%id94609%_ _%id94604%_))
              (declare (not safe))
              (##apply __call-method _%obj94603%_ _%id94609%_ _%args94605%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@852.24-852.26"
               'contract:
               'symbol?
               'value:
               _%id94604%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj94572%_ _%id94573%_ . _%args94574%_)
        (let* ((_%id94577%_ _%id94573%_)
               (_%$e94586%_ (__method-ref _%obj94572%_ _%id94577%_)))
          (if _%$e94586%_
              ((lambda (_%method94589%_)
                 (let ((_%method94591%_ _%method94589%_))
                   (apply _%method94591%_ _%obj94572%_ _%args94574%_)))
               _%$e94586%_)
              (error '"cannot find method"
                     'object:
                     _%obj94572%_
                     'method:
                     _%id94577%_)))))
    (define method-ref
      (lambda (_%obj94557%_ _%id94558%_)
        (if (symbol? _%id94558%_)
            (let ((_%id94562%_ _%id94558%_))
              (__method-ref _%obj94557%_ _%id94562%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@879.23-879.25"
               'contract:
               'symbol?
               'value:
               _%id94558%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj94544%_ _%id94545%_)
        (let ((_%id94548%_ _%id94545%_))
          (__find-method (class-of _%obj94544%_) _%obj94544%_ _%id94548%_))))
    (define checked-method-ref
      (lambda (_%obj94537%_ _%id94538%_)
        (let ((_%$e94541%_ (method-ref _%obj94537%_ _%id94538%_)))
          (if _%$e94541%_
              _%$e94541%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj94537%_
                       'method:
                       _%id94538%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj94522%_ _%id94523%_)
        (if (symbol? _%id94523%_)
            (let ((_%id94527%_ _%id94523%_))
              (__bound-method-ref _%obj94522%_ _%id94527%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@887.29-887.31"
               'contract:
               'symbol?
               'value:
               _%id94523%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj94490%_ _%id94491%_)
        (let* ((_%id94494%_ _%id94491%_)
               (_%$e94503%_ (__method-ref _%obj94490%_ _%id94494%_)))
          (if _%$e94503%_
              ((lambda (_%method94506%_)
                 (let ((_%method94508%_ _%method94506%_))
                   (lambda _%args94519%_
                     (apply _%method94508%_ _%obj94490%_ _%args94519%_))))
               _%$e94503%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj94475%_ _%id94476%_)
        (if (symbol? _%id94476%_)
            (let ((_%id94480%_ _%id94476%_))
              (__checked-bound-method-ref _%obj94475%_ _%id94480%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@896.37-896.39"
               'contract:
               'symbol?
               'value:
               _%id94476%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj94458%_ _%id94459%_)
        (let* ((_%id94462%_ _%id94459%_)
               (_%method94471%_ (checked-method-ref _%obj94458%_ _%id94462%_)))
          (lambda _%args94473%_
            (apply _%method94471%_ _%obj94458%_ _%args94473%_)))))
    (define find-method
      (lambda (_%klass94432%_ _%obj94433%_ _%id94434%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94432%_ 'class))
            (let ((_%klass94438%_ _%klass94432%_))
              (if (symbol? _%id94434%_)
                  (let ((_%id94448%_ _%id94434%_))
                    (__find-method _%klass94438%_ _%obj94433%_ _%id94448%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@901.41-901.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id94434%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@901.20-901.25"
               'contract:
               'class-type?
               'value:
               _%klass94432%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass94405%_ _%obj94406%_ _%id94407%_)
        (let* ((_%klass94410%_ _%klass94405%_)
               (_%id94418%_ _%id94407%_)
               (_%$e94427%_
                (__direct-method-ref _%klass94410%_ _%obj94406%_ _%id94418%_)))
          (if _%$e94427%_
              _%$e94427%_
              (if (__class-type-sealed? _%klass94410%_)
                  '#f
                  (__mixin-method-ref
                   _%klass94410%_
                   _%obj94406%_
                   _%id94418%_))))))
    (define mixin-find-method
      (lambda (_%mixins94389%_ _%obj94390%_ _%id94391%_)
        (if (symbol? _%id94391%_)
            (let ((_%id94395%_ _%id94391%_))
              (__mixin-find-method _%mixins94389%_ _%obj94390%_ _%id94395%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@909.37-909.39"
               'contract:
               'symbol?
               'value:
               _%id94391%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins94371%_ _%obj94372%_ _%id94373%_)
        (let* ((_%id94376%_ _%id94373%_)
               (__tmp98577
                (lambda (_%g9438494386%_)
                  (direct-method-ref
                   _%g9438494386%_
                   _%obj94372%_
                   _%id94376%_))))
          (declare (not safe))
          (__ormap1 __tmp98577 _%mixins94371%_))))
    (define direct-method-ref
      (lambda (_%klass94345%_ _%obj94346%_ _%id94347%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94345%_ 'class))
            (let ((_%klass94351%_ _%klass94345%_))
              (if (symbol? _%id94347%_)
                  (let ((_%id94361%_ _%id94347%_))
                    (__direct-method-ref
                     _%klass94351%_
                     _%obj94346%_
                     _%id94361%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@912.47-912.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id94347%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@912.26-912.31"
               'contract:
               'class-type?
               'value:
               _%klass94345%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass94299%_ _%obj94300%_ _%id94301%_)
        (let* ((_%klass94304%_ _%klass94299%_) (_%id94312%_ _%id94301%_))
          (letrec ((_%metaclass-resolve-method94321%_
                    (lambda ()
                      (let ((__method98485
                             (__method-ref _%klass94304%_ 'direct-method-ref)))
                        (if __method98485
                            (let ()
                              (declare (not safe))
                              (__method98485
                               _%klass94304%_
                               _%obj94300%_
                               _%id94312%_))
                            (begin
                              (error '"Missing method"
                                     _%klass94304%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!94322%_
                    (lambda ()
                      (let ((_%method94342%_
                             (_%metaclass-resolve-method94321%_)))
                        (let ((__tmp98579
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass94304%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp98578
                               (if _%method94342%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp98579
                           _%id94312%_
                           __tmp98578))
                        _%method94342%_))))
            (let ((_%$e94324%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass94304%_ '11 '#f '#f))))
              (if _%$e94324%_
                  ((lambda (_%ht94327%_)
                     (let ((_%method94329%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht94327%_
                               _%id94312%_
                               '#f))))
                       (if (procedure? _%method94329%_)
                           _%method94329%_
                           (if (__class-type-metaclass? _%klass94304%_)
                               (let ((_%$e94333%_ _%method94329%_))
                                 (if (eq? 'resolved _%$e94333%_)
                                     (_%metaclass-resolve-method94321%_)
                                     (if (eq? 'unknown _%$e94333%_)
                                         '#f
                                         (_%metaclass-resolve-method!94322%_))))
                               '#f))))
                   _%$e94324%_)
                  (if (__class-type-metaclass? _%klass94304%_)
                      (let ((_%tab94338%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass94304%_
                           _%tab94338%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!94322%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass94273%_ _%obj94274%_ _%id94275%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass94273%_ 'class))
            (let ((_%klass94279%_ _%klass94273%_))
              (if (symbol? _%id94275%_)
                  (let ((_%id94289%_ _%id94275%_))
                    (__mixin-method-ref
                     _%klass94279%_
                     _%obj94274%_
                     _%id94289%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@942.46-942.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id94275%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@942.25-942.30"
               'contract:
               'class-type?
               'value:
               _%klass94273%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass94251%_ _%obj94252%_ _%id94253%_)
        (let* ((_%klass94256%_ _%klass94251%_) (_%id94264%_ _%id94253%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass94256%_ '6 '#f '#f))
           _%obj94252%_
           _%id94264%_))))
    (define bind-method!__%
      (lambda (_%klass94210%_ _%id94211%_ _%proc94212%_ _%rebind?94213%_)
        (if (symbol? _%id94211%_)
            (let ((_%id94217%_ _%id94211%_))
              (if (procedure? _%proc94212%_)
                  (let ((_%proc94227%_ _%proc94212%_))
                    (__bind-method!__%
                     _%klass94210%_
                     _%id94217%_
                     _%proc94227%_
                     _%rebind?94213%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@945.42-945.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc94212%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@945.27-945.29"
               'contract:
               'symbol?
               'value:
               _%id94211%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass94240%_ _%id94241%_ _%proc94242%_)
        (let ((_%rebind?94244%_ '#f))
          (bind-method!__%
           _%klass94240%_
           _%id94241%_
           _%proc94242%_
           _%rebind?94244%_))))
    (define bind-method!
      (lambda _g98581_
        (let ((_g98580_ (let () (declare (not safe)) (##length _g98581_))))
          (cond ((let () (declare (not safe)) (##fx= _g98580_ 3))
                 (apply bind-method!__0 _g98581_))
                ((let () (declare (not safe)) (##fx= _g98580_ 4))
                 (apply bind-method!__% _g98581_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g98581_))))))
    (define __bind-method!__%
      (lambda (_%klass94161%_ _%id94162%_ _%proc94163%_ _%rebind?94164%_)
        (let* ((_%id94167%_ _%id94162%_) (_%proc94175%_ _%proc94163%_))
          (letrec ((_%bind!94184%_
                    (lambda (_%ht94193%_)
                      (if (and (not _%rebind?94164%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht94193%_
                                  _%id94167%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass94161%_
                                 'method:
                                 _%id94167%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht94193%_
                               _%id94167%_
                               _%proc94175%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass94161%_ 'class))
                (let ((_%ht94187%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass94161%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht94187%_
                      (_%bind!94184%_ _%ht94187%_)
                      (let ((_%ht94189%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass94161%_
                           _%ht94189%_
                           '11
                           '#f
                           '#f))
                        (_%bind!94184%_ _%ht94189%_))))
                (if (let () (declare (not safe)) (##type? _%klass94161%_))
                    (let ((__tmp98582 (__shadow-class _%klass94161%_)))
                      (declare (not safe))
                      (__bind-method!
                       __tmp98582
                       _%id94167%_
                       _%proc94175%_
                       _%rebind?94164%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass94161%_)))))))
    (define __bind-method!__0
      (lambda (_%klass94198%_ _%id94199%_ _%proc94200%_)
        (let ((_%rebind?94202%_ '#f))
          (__bind-method!__%
           _%klass94198%_
           _%id94199%_
           _%proc94200%_
           _%rebind?94202%_))))
    (define __bind-method!
      (lambda _g98584_
        (let ((_g98583_ (let () (declare (not safe)) (##length _g98584_))))
          (cond ((let () (declare (not safe)) (##fx= _g98583_ 3))
                 (apply __bind-method!__0 _g98584_))
                ((let () (declare (not safe)) (##fx= _g98583_ 4))
                 (apply __bind-method!__% _g98584_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g98584_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint94141%_ _%seed94143%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint94141%_
           procedure-hash
           eq?
           _%seed94143%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint94149%_ '#f) (_%seed94151%_ '0))
          (make-method-specializer-table__%
           _%size-hint94149%_
           _%seed94151%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint94153%_)
        (let ((_%seed94155%_ '0))
          (make-method-specializer-table__%
           _%size-hint94153%_
           _%seed94155%_))))
    (define make-method-specializer-table
      (lambda _g98586_
        (let ((_g98585_ (let () (declare (not safe)) (##length _g98586_))))
          (cond ((let () (declare (not safe)) (##fx= _g98585_ 0))
                 (apply make-method-specializer-table__0 _g98586_))
                ((let () (declare (not safe)) (##fx= _g98585_ 1))
                 (apply make-method-specializer-table__1 _g98586_))
                ((let () (declare (not safe)) (##fx= _g98585_ 2))
                 (apply make-method-specializer-table__% _g98586_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g98586_))))))
    (define method-specializer-table-ref
      (lambda (_%tab94094%_ _%key94095%_ _%default94096%_)
        (let ((_%table94098%_
               (let () (declare (not safe)) (&raw-table-table _%tab94094%_)))
              (_%seed94099%_
               (let () (declare (not safe)) (&raw-table-seed _%tab94094%_))))
          (let* ((_%h94101%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key94095%_))
                         _%seed94099%_))
                 (_%size94104%_ (vector-length _%table94098%_))
                 (_%entries94107%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size94104%_ '2)))
                 (_%start94110%_
                  (let ((__tmp98587
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h94101%_ _%entries94107%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98587 '1))))
            (let _%loop94114%_ ((_%probe94117%_ _%start94110%_)
                                (_%i94119%_ '1)
                                (_%deleted94121%_ '#f))
              (let ((_%k94124%_ (vector-ref _%table94098%_ _%probe94117%_)))
                (if (eq? _%k94124%_ (macro-unused-obj))
                    _%default94096%_
                    (if (eq? _%k94124%_ (macro-deleted-obj))
                        (_%loop94114%_
                         (let ((_%next-probe94129%_
                                (fx+ _%start94110%_
                                     _%i94119%_
                                     (fx* _%i94119%_ _%i94119%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe94129%_ _%size94104%_))
                         (let () (declare (not safe)) (##fx+ _%i94119%_ '1))
                         (let ((_%$e94132%_ _%deleted94121%_))
                           (if _%$e94132%_ _%$e94132%_ _%probe94117%_)))
                        (if (eq? _%key94095%_ _%k94124%_)
                            (vector-ref
                             _%table94098%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe94117%_ '1)))
                            (_%loop94114%_
                             (let ((_%next-probe94137%_
                                    (fx+ _%start94110%_
                                         _%i94119%_
                                         (fx* _%i94119%_ _%i94119%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe94137%_ _%size94104%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i94119%_ '1))
                             _%deleted94121%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab94090%_ _%key94091%_ _%value94092%_)
        (if (let ((__tmp98590
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab94090%_)))
                  (__tmp98588
                   (let ((__tmp98589
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab94090%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp98589 '4))))
              (declare (not safe))
              (##fx< __tmp98590 __tmp98588))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab94090%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab94090%_
         _%key94091%_
         _%value94092%_)))
    (define __method-specializer-table-set!
      (lambda (_%tab94041%_ _%key94042%_ _%value94043%_)
        (let ((_%table94046%_
               (let () (declare (not safe)) (&raw-table-table _%tab94041%_)))
              (_%seed94047%_
               (let () (declare (not safe)) (&raw-table-seed _%tab94041%_))))
          (let* ((_%h94049%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key94042%_))
                         _%seed94047%_))
                 (_%size94052%_ (vector-length _%table94046%_))
                 (_%entries94055%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size94052%_ '2)))
                 (_%start94058%_
                  (let ((__tmp98591
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h94049%_ _%entries94055%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98591 '1))))
            (let _%loop94062%_ ((_%probe94065%_ _%start94058%_)
                                (_%i94067%_ '1)
                                (_%deleted94069%_ '#f))
              (let ((_%k94072%_ (vector-ref _%table94046%_ _%probe94065%_)))
                (if (eq? _%k94072%_ (macro-unused-obj))
                    (if _%deleted94069%_
                        (begin
                          (vector-set!
                           _%table94046%_
                           _%deleted94069%_
                           _%key94042%_)
                          (vector-set!
                           _%table94046%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted94069%_ '1))
                           _%value94043%_)
                          ((lambda ()
                             (let ((__tmp98592
                                    (let ((__tmp98593
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab94041%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp98593 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab94041%_
                                __tmp98592)))))
                        (begin
                          (vector-set!
                           _%table94046%_
                           _%probe94065%_
                           _%key94042%_)
                          (vector-set!
                           _%table94046%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe94065%_ '1))
                           _%value94043%_)
                          ((lambda ()
                             (let ((__tmp98594
                                    (let ((__tmp98595
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab94041%_))))
                                      (declare (not safe))
                                      (##fx- __tmp98595 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab94041%_ __tmp98594))
                             (let ((__tmp98596
                                    (let ((__tmp98597
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab94041%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp98597 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab94041%_
                                __tmp98596))))))
                    (if (eq? _%k94072%_ (macro-deleted-obj))
                        (_%loop94062%_
                         (let ((_%next-probe94079%_
                                (fx+ _%start94058%_
                                     _%i94067%_
                                     (fx* _%i94067%_ _%i94067%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe94079%_ _%size94052%_))
                         (let () (declare (not safe)) (##fx+ _%i94067%_ '1))
                         (let ((_%$e94082%_ _%deleted94069%_))
                           (if _%$e94082%_ _%$e94082%_ _%probe94065%_)))
                        (if (eq? _%key94042%_ _%k94072%_)
                            (let ()
                              (vector-set!
                               _%table94046%_
                               _%probe94065%_
                               _%key94042%_)
                              (vector-set!
                               _%table94046%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe94065%_ '1))
                               _%value94043%_))
                            (_%loop94062%_
                             (let ((_%next-probe94087%_
                                    (fx+ _%start94058%_
                                         _%i94067%_
                                         (fx* _%i94067%_ _%i94067%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe94087%_ _%size94052%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i94067%_ '1))
                             _%deleted94069%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab94036%_
               _%key94037%_
               _%method-specializer-table-update!94038%_
               _%default94039%_)
        (if (let ((__tmp98600
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab94036%_)))
                  (__tmp98598
                   (let ((__tmp98599
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab94036%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp98599 '4))))
              (declare (not safe))
              (##fx< __tmp98600 __tmp98598))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab94036%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab94036%_
         _%key94037%_
         _%method-specializer-table-update!94038%_
         _%default94039%_)))
    (define __method-specializer-table-update!
      (lambda (_%tab93986%_
               _%key93987%_
               _%method-specializer-table-update!93988%_
               _%default93989%_)
        (let ((_%table93992%_
               (let () (declare (not safe)) (&raw-table-table _%tab93986%_)))
              (_%seed93993%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93986%_))))
          (let* ((_%h93995%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93987%_))
                         _%seed93993%_))
                 (_%size93998%_ (vector-length _%table93992%_))
                 (_%entries94001%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93998%_ '2)))
                 (_%start94004%_
                  (let ((__tmp98601
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93995%_ _%entries94001%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98601 '1))))
            (let _%loop94008%_ ((_%probe94011%_ _%start94004%_)
                                (_%i94013%_ '1)
                                (_%deleted94015%_ '#f))
              (let ((_%k94018%_ (vector-ref _%table93992%_ _%probe94011%_)))
                (if (eq? _%k94018%_ (macro-unused-obj))
                    (if _%deleted94015%_
                        (begin
                          (vector-set!
                           _%table93992%_
                           _%deleted94015%_
                           _%key93987%_)
                          (vector-set!
                           _%table93992%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted94015%_ '1))
                           (_%method-specializer-table-update!93988%_
                            _%default93989%_))
                          ((lambda ()
                             (let ((__tmp98602
                                    (let ((__tmp98603
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab93986%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp98603 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab93986%_
                                __tmp98602)))))
                        (begin
                          (vector-set!
                           _%table93992%_
                           _%probe94011%_
                           _%key93987%_)
                          (vector-set!
                           _%table93992%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe94011%_ '1))
                           (_%method-specializer-table-update!93988%_
                            _%default93989%_))
                          ((lambda ()
                             (let ((__tmp98604
                                    (let ((__tmp98605
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab93986%_))))
                                      (declare (not safe))
                                      (##fx- __tmp98605 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab93986%_ __tmp98604))
                             (let ((__tmp98606
                                    (let ((__tmp98607
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab93986%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp98607 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab93986%_
                                __tmp98606))))))
                    (if (eq? _%k94018%_ (macro-deleted-obj))
                        (_%loop94008%_
                         (let ((_%next-probe94025%_
                                (fx+ _%start94004%_
                                     _%i94013%_
                                     (fx* _%i94013%_ _%i94013%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe94025%_ _%size93998%_))
                         (let () (declare (not safe)) (##fx+ _%i94013%_ '1))
                         (let ((_%$e94028%_ _%deleted94015%_))
                           (if _%$e94028%_ _%$e94028%_ _%probe94011%_)))
                        (if (eq? _%key93987%_ _%k94018%_)
                            (let ()
                              (vector-set!
                               _%table93992%_
                               _%probe94011%_
                               _%key93987%_)
                              (vector-set!
                               _%table93992%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe94011%_ '1))
                               (_%method-specializer-table-update!93988%_
                                (vector-ref
                                 _%table93992%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe94011%_ '1))))))
                            (_%loop94008%_
                             (let ((_%next-probe94033%_
                                    (fx+ _%start94004%_
                                         _%i94013%_
                                         (fx* _%i94013%_ _%i94013%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe94033%_ _%size93998%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i94013%_ '1))
                             _%deleted94015%_))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab93941%_ _%key93943%_)
        (let ((_%table93946%_
               (let () (declare (not safe)) (&raw-table-table _%tab93941%_)))
              (_%seed93948%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93941%_))))
          (let* ((_%h93951%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key93943%_))
                         _%seed93948%_))
                 (_%size93954%_ (vector-length _%table93946%_))
                 (_%entries93957%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93954%_ '2)))
                 (_%start93960%_
                  (let ((__tmp98608
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93951%_ _%entries93957%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98608 '1))))
            (let _%loop93964%_ ((_%probe93967%_ _%start93960%_)
                                (_%i93969%_ '1))
              (let ((_%k93972%_ (vector-ref _%table93946%_ _%probe93967%_)))
                (if (eq? _%k93972%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93972%_ (macro-deleted-obj))
                        (_%loop93964%_
                         (let ((_%next-probe93977%_
                                (fx+ _%start93960%_
                                     _%i93969%_
                                     (fx* _%i93969%_ _%i93969%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe93977%_ _%size93954%_))
                         (let () (declare (not safe)) (##fx+ _%i93969%_ '1)))
                        (if (eq? _%key93943%_ _%k93972%_)
                            (let ()
                              (vector-set!
                               _%table93946%_
                               _%probe93967%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93946%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93967%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp98609
                                        (let ((__tmp98610
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab93941%_))))
                                          (declare (not safe))
                                          (##fx- __tmp98610 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab93941%_
                                    __tmp98609)))))
                            (_%loop93964%_
                             (let ((_%next-probe93983%_
                                    (fx+ _%start93960%_
                                         _%i93969%_
                                         (fx* _%i93969%_ _%i93969%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe93983%_ _%size93954%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i93969%_ '1))))))))))))
    (define __method-specializers (make-method-specializer-table__% '#f '0))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc93932%_ _%specializer93933%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93937%_ ()
            (if (let ((__tmp98611
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp98611 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again93937%_)))))
        (method-specializer-table-set!
         __method-specializers
         _%method-proc93932%_
         _%specializer93933%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc93922%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93926%_ ()
            (if (let ((__tmp98612
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp98612 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again93926%_)))))
        (let ((_%specializer93930%_
               (method-specializer-table-ref
                __method-specializers
                _%proc93922%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer93930%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass93920%_)
        (let ((__tmp98613
               (let () (declare (not safe)) (##type-id _%klass93920%_))))
          (declare (not safe))
          (symbolic-hash __tmp98613))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint93901%_ _%seed93903%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint93901%_
           __class-specializer-hash-key
           eq?
           _%seed93903%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint93909%_ '#f) (_%seed93911%_ '0))
          (make-class-specializer-table__% _%size-hint93909%_ _%seed93911%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint93913%_)
        (let ((_%seed93915%_ '0))
          (make-class-specializer-table__% _%size-hint93913%_ _%seed93915%_))))
    (define make-class-specializer-table
      (lambda _g98615_
        (let ((_g98614_ (let () (declare (not safe)) (##length _g98615_))))
          (cond ((let () (declare (not safe)) (##fx= _g98614_ 0))
                 (apply make-class-specializer-table__0 _g98615_))
                ((let () (declare (not safe)) (##fx= _g98614_ 1))
                 (apply make-class-specializer-table__1 _g98615_))
                ((let () (declare (not safe)) (##fx= _g98614_ 2))
                 (apply make-class-specializer-table__% _g98615_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g98615_))))))
    (define class-specializer-table-ref
      (lambda (_%tab93854%_ _%key93855%_ _%default93856%_)
        (let ((_%table93858%_
               (let () (declare (not safe)) (&raw-table-table _%tab93854%_)))
              (_%seed93859%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93854%_))))
          (let* ((_%h93861%_
                  (fxxor (__class-specializer-hash-key _%key93855%_)
                         _%seed93859%_))
                 (_%size93864%_ (vector-length _%table93858%_))
                 (_%entries93867%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93864%_ '2)))
                 (_%start93870%_
                  (let ((__tmp98616
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93861%_ _%entries93867%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98616 '1))))
            (let _%loop93874%_ ((_%probe93877%_ _%start93870%_)
                                (_%i93879%_ '1)
                                (_%deleted93881%_ '#f))
              (let ((_%k93884%_ (vector-ref _%table93858%_ _%probe93877%_)))
                (if (eq? _%k93884%_ (macro-unused-obj))
                    _%default93856%_
                    (if (eq? _%k93884%_ (macro-deleted-obj))
                        (_%loop93874%_
                         (let ((_%next-probe93889%_
                                (fx+ _%start93870%_
                                     _%i93879%_
                                     (fx* _%i93879%_ _%i93879%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe93889%_ _%size93864%_))
                         (let () (declare (not safe)) (##fx+ _%i93879%_ '1))
                         (let ((_%$e93892%_ _%deleted93881%_))
                           (if _%$e93892%_ _%$e93892%_ _%probe93877%_)))
                        (if (eq? _%key93855%_ _%k93884%_)
                            (vector-ref
                             _%table93858%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe93877%_ '1)))
                            (_%loop93874%_
                             (let ((_%next-probe93897%_
                                    (fx+ _%start93870%_
                                         _%i93879%_
                                         (fx* _%i93879%_ _%i93879%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe93897%_ _%size93864%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i93879%_ '1))
                             _%deleted93881%_))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab93850%_ _%key93851%_ _%value93852%_)
        (if (let ((__tmp98619
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93850%_)))
                  (__tmp98617
                   (let ((__tmp98618
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93850%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp98618 '4))))
              (declare (not safe))
              (##fx< __tmp98619 __tmp98617))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93850%_))
            '#!void)
        (__class-specializer-table-set!
         _%tab93850%_
         _%key93851%_
         _%value93852%_)))
    (define __class-specializer-table-set!
      (lambda (_%tab93801%_ _%key93802%_ _%value93803%_)
        (let ((_%table93806%_
               (let () (declare (not safe)) (&raw-table-table _%tab93801%_)))
              (_%seed93807%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93801%_))))
          (let* ((_%h93809%_
                  (fxxor (__class-specializer-hash-key _%key93802%_)
                         _%seed93807%_))
                 (_%size93812%_ (vector-length _%table93806%_))
                 (_%entries93815%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93812%_ '2)))
                 (_%start93818%_
                  (let ((__tmp98620
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93809%_ _%entries93815%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98620 '1))))
            (let _%loop93822%_ ((_%probe93825%_ _%start93818%_)
                                (_%i93827%_ '1)
                                (_%deleted93829%_ '#f))
              (let ((_%k93832%_ (vector-ref _%table93806%_ _%probe93825%_)))
                (if (eq? _%k93832%_ (macro-unused-obj))
                    (if _%deleted93829%_
                        (begin
                          (vector-set!
                           _%table93806%_
                           _%deleted93829%_
                           _%key93802%_)
                          (vector-set!
                           _%table93806%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted93829%_ '1))
                           _%value93803%_)
                          ((lambda ()
                             (let ((__tmp98621
                                    (let ((__tmp98622
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab93801%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp98622 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab93801%_
                                __tmp98621)))))
                        (begin
                          (vector-set!
                           _%table93806%_
                           _%probe93825%_
                           _%key93802%_)
                          (vector-set!
                           _%table93806%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe93825%_ '1))
                           _%value93803%_)
                          ((lambda ()
                             (let ((__tmp98623
                                    (let ((__tmp98624
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab93801%_))))
                                      (declare (not safe))
                                      (##fx- __tmp98624 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab93801%_ __tmp98623))
                             (let ((__tmp98625
                                    (let ((__tmp98626
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab93801%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp98626 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab93801%_
                                __tmp98625))))))
                    (if (eq? _%k93832%_ (macro-deleted-obj))
                        (_%loop93822%_
                         (let ((_%next-probe93839%_
                                (fx+ _%start93818%_
                                     _%i93827%_
                                     (fx* _%i93827%_ _%i93827%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe93839%_ _%size93812%_))
                         (let () (declare (not safe)) (##fx+ _%i93827%_ '1))
                         (let ((_%$e93842%_ _%deleted93829%_))
                           (if _%$e93842%_ _%$e93842%_ _%probe93825%_)))
                        (if (eq? _%key93802%_ _%k93832%_)
                            (let ()
                              (vector-set!
                               _%table93806%_
                               _%probe93825%_
                               _%key93802%_)
                              (vector-set!
                               _%table93806%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93825%_ '1))
                               _%value93803%_))
                            (_%loop93822%_
                             (let ((_%next-probe93847%_
                                    (fx+ _%start93818%_
                                         _%i93827%_
                                         (fx* _%i93827%_ _%i93827%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe93847%_ _%size93812%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i93827%_ '1))
                             _%deleted93829%_))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab93796%_
               _%key93797%_
               _%class-specializer-table-update!93798%_
               _%default93799%_)
        (if (let ((__tmp98629
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab93796%_)))
                  (__tmp98627
                   (let ((__tmp98628
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab93796%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp98628 '4))))
              (declare (not safe))
              (##fx< __tmp98629 __tmp98627))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab93796%_))
            '#!void)
        (__class-specializer-table-update!
         _%tab93796%_
         _%key93797%_
         _%class-specializer-table-update!93798%_
         _%default93799%_)))
    (define __class-specializer-table-update!
      (lambda (_%tab93746%_
               _%key93747%_
               _%class-specializer-table-update!93748%_
               _%default93749%_)
        (let ((_%table93752%_
               (let () (declare (not safe)) (&raw-table-table _%tab93746%_)))
              (_%seed93753%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93746%_))))
          (let* ((_%h93755%_
                  (fxxor (__class-specializer-hash-key _%key93747%_)
                         _%seed93753%_))
                 (_%size93758%_ (vector-length _%table93752%_))
                 (_%entries93761%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93758%_ '2)))
                 (_%start93764%_
                  (let ((__tmp98630
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93755%_ _%entries93761%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98630 '1))))
            (let _%loop93768%_ ((_%probe93771%_ _%start93764%_)
                                (_%i93773%_ '1)
                                (_%deleted93775%_ '#f))
              (let ((_%k93778%_ (vector-ref _%table93752%_ _%probe93771%_)))
                (if (eq? _%k93778%_ (macro-unused-obj))
                    (if _%deleted93775%_
                        (begin
                          (vector-set!
                           _%table93752%_
                           _%deleted93775%_
                           _%key93747%_)
                          (vector-set!
                           _%table93752%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted93775%_ '1))
                           (_%class-specializer-table-update!93748%_
                            _%default93749%_))
                          ((lambda ()
                             (let ((__tmp98631
                                    (let ((__tmp98632
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab93746%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp98632 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab93746%_
                                __tmp98631)))))
                        (begin
                          (vector-set!
                           _%table93752%_
                           _%probe93771%_
                           _%key93747%_)
                          (vector-set!
                           _%table93752%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe93771%_ '1))
                           (_%class-specializer-table-update!93748%_
                            _%default93749%_))
                          ((lambda ()
                             (let ((__tmp98633
                                    (let ((__tmp98634
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab93746%_))))
                                      (declare (not safe))
                                      (##fx- __tmp98634 '1))))
                               (declare (not safe))
                               (&raw-table-free-set! _%tab93746%_ __tmp98633))
                             (let ((__tmp98635
                                    (let ((__tmp98636
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count _%tab93746%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp98636 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab93746%_
                                __tmp98635))))))
                    (if (eq? _%k93778%_ (macro-deleted-obj))
                        (_%loop93768%_
                         (let ((_%next-probe93785%_
                                (fx+ _%start93764%_
                                     _%i93773%_
                                     (fx* _%i93773%_ _%i93773%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe93785%_ _%size93758%_))
                         (let () (declare (not safe)) (##fx+ _%i93773%_ '1))
                         (let ((_%$e93788%_ _%deleted93775%_))
                           (if _%$e93788%_ _%$e93788%_ _%probe93771%_)))
                        (if (eq? _%key93747%_ _%k93778%_)
                            (let ()
                              (vector-set!
                               _%table93752%_
                               _%probe93771%_
                               _%key93747%_)
                              (vector-set!
                               _%table93752%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93771%_ '1))
                               (_%class-specializer-table-update!93748%_
                                (vector-ref
                                 _%table93752%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe93771%_ '1))))))
                            (_%loop93768%_
                             (let ((_%next-probe93793%_
                                    (fx+ _%start93764%_
                                         _%i93773%_
                                         (fx* _%i93773%_ _%i93773%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe93793%_ _%size93758%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i93773%_ '1))
                             _%deleted93775%_))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab93701%_ _%key93703%_)
        (let ((_%table93706%_
               (let () (declare (not safe)) (&raw-table-table _%tab93701%_)))
              (_%seed93708%_
               (let () (declare (not safe)) (&raw-table-seed _%tab93701%_))))
          (let* ((_%h93711%_
                  (fxxor (__class-specializer-hash-key _%key93703%_)
                         _%seed93708%_))
                 (_%size93714%_ (vector-length _%table93706%_))
                 (_%entries93717%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size93714%_ '2)))
                 (_%start93720%_
                  (let ((__tmp98637
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h93711%_ _%entries93717%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp98637 '1))))
            (let _%loop93724%_ ((_%probe93727%_ _%start93720%_)
                                (_%i93729%_ '1))
              (let ((_%k93732%_ (vector-ref _%table93706%_ _%probe93727%_)))
                (if (eq? _%k93732%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k93732%_ (macro-deleted-obj))
                        (_%loop93724%_
                         (let ((_%next-probe93737%_
                                (fx+ _%start93720%_
                                     _%i93729%_
                                     (fx* _%i93729%_ _%i93729%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe93737%_ _%size93714%_))
                         (let () (declare (not safe)) (##fx+ _%i93729%_ '1)))
                        (if (eq? _%key93703%_ _%k93732%_)
                            (let ()
                              (vector-set!
                               _%table93706%_
                               _%probe93727%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table93706%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe93727%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp98638
                                        (let ((__tmp98639
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab93701%_))))
                                          (declare (not safe))
                                          (##fx- __tmp98639 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab93701%_
                                    __tmp98638)))))
                            (_%loop93724%_
                             (let ((_%next-probe93743%_
                                    (fx+ _%start93720%_
                                         _%i93729%_
                                         (fx* _%i93729%_ _%i93729%_))))
                               (declare (not safe))
                               (##fxmodulo _%next-probe93743%_ _%size93714%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i93729%_ '1))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers (make-class-specializer-table__% '#f '0))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass93687%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass93687%_ 'class))
            (let ((_%klass93691%_ _%klass93687%_))
              (__specialize-class _%klass93691%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1020.25-1020.30"
               'contract:
               'class-type?
               'value:
               _%klass93687%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass93669%_)
        (let* ((_%klass93672%_ _%klass93669%_)
               (_%$e93681%_ (__lookup-class-specializer _%klass93672%_)))
          (if _%$e93681%_
              _%$e93681%_
              (let ((_%method-table93685%_
                     (___specialize-class _%klass93672%_)))
                (__bind-class-specializer!
                 _%klass93672%_
                 _%method-table93685%_)
                _%method-table93685%_)))))
    (define __lookup-class-specializer
      (lambda (_%klass93659%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93663%_ ()
            (if (let ((__tmp98640
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp98640 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again93663%_)))))
        (let ((_%method-table93667%_
               (class-specializer-table-ref
                __class-specializers
                _%klass93659%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table93667%_)))
    (define __bind-class-specializer!
      (lambda (_%klass93650%_ _%method-table93651%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again93655%_ ()
            (if (let ((__tmp98641
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp98641 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again93655%_)))))
        (class-specializer-table-set!
         __class-specializers
         _%klass93650%_
         _%method-table93651%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass93634%_
               _%method-table93635%_
               _%method93636%_
               _%proc93637%_)
        (let ((_%$e93639%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table93635%_
                  _%method93636%_
                  '#f))))
          (if _%$e93639%_
              _%$e93639%_
              (let ((_%$e93642%_ (__lookup-method-specializer _%proc93637%_)))
                (if _%$e93642%_
                    ((lambda (_%specialize93645%_)
                       (let ((_%specialized-proc93647%_
                              (_%specialize93645%_
                               _%klass93634%_
                               _%method-table93635%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table93635%_
                          _%method93636%_
                          _%specialized-proc93647%_)))
                     _%$e93642%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table93635%_
                       _%method93636%_
                       _%proc93637%_))))))))
    (define ___specialize-class
      (lambda (_%klass93576%_)
        (if (not (let ()
                   (declare (not safe))
                   (##structure-instance-of? _%klass93576%_ 'class)))
            (if (let () (declare (not safe)) (##type? _%klass93576%_))
                (__specialize-class (__shadow-class _%klass93576%_))
                (error '"bad class; cannot specialize" _%klass93576%_))
            (if (class-type-metaclass? _%klass93576%_)
                (let ((__method98486
                       (__method-ref _%klass93576%_ 'specialize-class)))
                  (if __method98486
                      (let ()
                        (declare (not safe))
                        (__method98486 _%klass93576%_))
                      (begin
                        (error '"Missing method"
                               _%klass93576%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp98642
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass93576%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp98642))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass93576%_)
                    (let ((_%method-table93582%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop93584%_ ((_%rest93586%_
                                           (class-precedence-list
                                            _%klass93576%_)))
                        (let* ((_%rest9358793595%_ _%rest93586%_)
                               (_%else9358993603%_
                                (lambda () _%method-table93582%_))
                               (_%K9359193622%_
                                (lambda (_%rest93606%_ _%xklass93607%_)
                                  (let ((_%xmethod-table9360893610%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass93607%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table9360893610%_
                                        (let* ((_%xmethod-table93613%_
                                                _%xmethod-table9360893610%_)
                                               (__tmp98643
                                                (lambda (_%g9361493617%_
                                                         _%g9361593619%_)
                                                  (__specialize-method
                                                   _%klass93576%_
                                                   _%method-table93582%_
                                                   _%g9361493617%_
                                                   _%g9361593619%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table93613%_
                                           __tmp98643))
                                        '#f))
                                  (_%loop93584%_ _%rest93606%_))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9358793595%_))
                              (let ((_%hd9359293625%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9358793595%_)))
                                    (_%tl9359393627%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9358793595%_))))
                                (let* ((_%xklass93630%_ _%hd9359293625%_)
                                       (_%rest93632%_ _%tl9359393627%_))
                                  (_%K9359193622%_
                                   _%rest93632%_
                                   _%xklass93630%_)))
                              (_%else9358993603%_))))))))))
    (define seal-class!
      (lambda (_%klass93562%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass93562%_ 'class))
            (let ((_%klass93566%_ _%klass93562%_))
              (__seal-class! _%klass93566%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1077.20-1077.25"
               'contract:
               'class-type?
               'value:
               _%klass93562%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass93545%_)
        (let ((_%klass93548%_ _%klass93545%_))
          (if (__class-type-sealed? _%klass93548%_)
              '#!void
              (begin
                (if (__class-type-final? _%klass93548%_)
                    '#!void
                    (error '"cannot seal non-final class" _%klass93548%_))
                (if (__class-type-metaclass? _%klass93548%_)
                    (let ((__method98487
                           (__method-ref _%klass93548%_ 'seal-class!)))
                      (if __method98487
                          (let ()
                            (declare (not safe))
                            (__method98487 _%klass93548%_))
                          (begin
                            (error '"Missing method"
                                   _%klass93548%_
                                   'seal-class!)
                            '#!void)))
                    (if (let ((__tmp98644
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass93548%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp98644))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass93548%_)
                        (let ((_%method-table93560%_
                               (__specialize-class _%klass93548%_)))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass93548%_
                           _%method-table93560%_
                           '11
                           '#f
                           '#f))))
                (__class-type-seal! _%klass93548%_))))))
    (define next-method
      (lambda (_%subklass93519%_ _%obj93520%_ _%id93521%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass93519%_ 'class))
            (let ((_%subklass93525%_ _%subklass93519%_))
              (if (symbol? _%id93521%_)
                  (let ((_%id93535%_ _%id93521%_))
                    (__next-method _%subklass93525%_ _%obj93520%_ _%id93535%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1101.44-1101.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id93521%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1101.20-1101.28"
               'contract:
               'class-type?
               'value:
               _%subklass93519%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass93456%_ _%obj93457%_ _%id93458%_)
        (let* ((_%subklass93461%_ _%subklass93456%_) (_%id93469%_ _%id93458%_))
          (letrec ((_%find-next-method93478%_
                    (lambda (_%klass93480%_)
                      (let _%lp93482%_ ((_%rest93484%_
                                         (class-precedence-list
                                          _%klass93480%_)))
                        (let* ((_%rest9348593493%_ _%rest93484%_)
                               (_%else9348793501%_ (lambda () '#f))
                               (_%K9348993507%_
                                (lambda (_%rest93504%_ _%klass93505%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass93461%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass93505%_)))
                                      (__mixin-find-method
                                       _%rest93504%_
                                       _%obj93457%_
                                       _%id93469%_)
                                      (_%lp93482%_ _%rest93504%_)))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9348593493%_))
                              (let ((_%hd9349093510%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9348593493%_)))
                                    (_%tl9349193512%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9348593493%_))))
                                (let* ((_%klass93515%_ _%hd9349093510%_)
                                       (_%rest93517%_ _%tl9349193512%_))
                                  (_%K9348993507%_
                                   _%rest93517%_
                                   _%klass93515%_)))
                              (_%else9348793501%_)))))))
            (_%find-next-method93478%_ (class-of _%obj93457%_))))))
    (define call-next-method
      (lambda (_%subklass93429%_ _%obj93430%_ _%id93431%_ . _%args93432%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass93429%_ 'class))
            (let ((_%subklass93436%_ _%subklass93429%_))
              (if (symbol? _%id93431%_)
                  (let ((_%id93446%_ _%id93431%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass93436%_
                             _%obj93430%_
                             _%id93446%_
                             _%args93432%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1112.49-1112.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id93431%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1112.25-1112.33"
               'contract:
               'class-type?
               'value:
               _%subklass93429%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass93400%_ _%obj93401%_ _%id93402%_ . _%args93403%_)
        (let* ((_%subklass93406%_ _%subklass93400%_)
               (_%id93414%_ _%id93402%_)
               (_%$e93423%_
                (__next-method _%subklass93406%_ _%obj93401%_ _%id93414%_)))
          (if _%$e93423%_
              ((lambda (_%methodf93426%_)
                 (apply _%methodf93426%_ _%obj93401%_ _%args93403%_))
               _%$e93423%_)
              (error '"cannot find next method"
                     'object:
                     _%obj93401%_
                     'method:
                     _%id93414%_)))))
    (define write-style
      (lambda (_%we93398%_) (macro-writeenv-style _%we93398%_)))
    (define write-object
      (lambda (_%we93389%_ _%obj93390%_)
        (let ((_%$e93392%_ (__method-ref _%obj93390%_ ':wr)))
          (if _%$e93392%_
              ((lambda (_%method93395%_)
                 (_%method93395%_ _%obj93390%_ _%we93389%_))
               _%$e93392%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we93389%_ _%obj93390%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type93304%_)
        (letrec ((_%shadow-type-id93306%_
                  (lambda (_%type93387%_)
                    (let ((__tmp98645
                           (let ()
                             (declare (not safe))
                             (##type-name _%type93387%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp98645 '"::t"))))
                 (_%shadow-type-name93307%_
                  (lambda (_%type93385%_)
                    (let () (declare (not safe)) (##type-name _%type93385%_))))
                 (_%make-shadow-class93308%_
                  (lambda (_%type93377%_ _%precedence-list93378%_)
                    (let* ((_%super93380%_
                            (if (pair? _%precedence-list93378%_)
                                (cons (car _%precedence-list93378%_) '())
                                '()))
                           (_%klass93382%_
                            (make-class-type
                             (_%shadow-type-id93306%_ _%type93377%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type93377%_))
                             _%super93380%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (if (__type-extensible? _%type93377%_)
                                             '()
                                             (cons (cons 'final: '#t) '()))))
                             '#f)))
                      (let ((__tmp98646
                             (let ()
                               (declare (not safe))
                               (##type-id _%type93377%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp98646
                         _%klass93382%_))
                      _%klass93382%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again93312%_ ()
              (if (let ((__tmp98647
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp98647 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (_%again93312%_)))))
          (let ((_%$e93316%_
                 (let ((__tmp98648
                        (let ()
                          (declare (not safe))
                          (##type-id _%type93304%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp98648 '#f))))
            (if _%$e93316%_
                ((lambda (_%klass93319%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass93319%_)
                 _%$e93316%_)
                (let _%loop93322%_ ((_%super93324%_
                                     (let ()
                                       (declare (not safe))
                                       (##type-super _%type93304%_)))
                                    (_%hierarchy93325%_ '()))
                  (if (not _%super93324%_)
                      (let _%loop93328%_ ((_%rest93330%_ _%hierarchy93325%_)
                                          (_%precedence-list93331%_ '()))
                        (let* ((_%rest9333293340%_ _%rest93330%_)
                               (_%else9333493350%_
                                (lambda ()
                                  (let ((_%klass93348%_
                                         (_%make-shadow-class93308%_
                                          _%type93304%_
                                          _%precedence-list93331%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass93348%_)))
                               (_%K9333693364%_
                                (lambda (_%rest93353%_ _%type93354%_)
                                  (let ((_%$e93356%_
                                         (let ((__tmp98649
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type93354%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp98649
                                            '#f))))
                                    (if _%$e93356%_
                                        ((lambda (_%klass93359%_)
                                           (_%loop93328%_
                                            _%rest93353%_
                                            (cons _%klass93359%_
                                                  _%precedence-list93331%_)))
                                         _%$e93356%_)
                                        (let ((_%klass93362%_
                                               (_%make-shadow-class93308%_
                                                _%type93354%_
                                                _%precedence-list93331%_)))
                                          (_%loop93328%_
                                           _%rest93353%_
                                           (cons _%klass93362%_
                                                 _%precedence-list93331%_))))))))
                          (if (let ()
                                (declare (not safe))
                                (##pair? _%rest9333293340%_))
                              (let ((_%hd9333793367%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest9333293340%_)))
                                    (_%tl9333893369%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest9333293340%_))))
                                (let* ((_%type93372%_ _%hd9333793367%_)
                                       (_%rest93374%_ _%tl9333893369%_))
                                  (_%K9333693364%_
                                   _%rest93374%_
                                   _%type93372%_)))
                              (_%else9333493350%_))))
                      (_%loop93322%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super93324%_))
                       (cons _%super93324%_ _%hierarchy93325%_)))))))))
    (define class-of
      (lambda (_%obj93277%_)
        (let ()
          (declare (not interrupts-enabled))
          (let ((_%t93281%_
                 (let () (declare (not safe)) (##type _%obj93277%_))))
            (if (fx= _%t93281%_ (macro-type-subtyped))
                (let ((_%st93284%_
                       (let () (declare (not safe)) (##subtype _%obj93277%_))))
                  (if (fx= _%st93284%_ (macro-subtype-structure))
                      (let ((_%klass93287%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj93277%_))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of? _%klass93287%_ 'class))
                            _%klass93287%_
                            (__shadow-class _%klass93287%_)))
                      (if (fx= _%st93284%_ (macro-subtype-boxvalues))
                          (if (let ((__tmp98650
                                     (let ()
                                       (declare (not safe))
                                       (##vector-length _%obj93277%_))))
                                (declare (not safe))
                                (##fx= __tmp98650 '1))
                              (__system-class 'box)
                              (__system-class 'values))
                          (let ((_%$e93290%_
                                 (let ()
                                   (declare (not safe))
                                   (##vector-ref __subtype-id _%st93284%_))))
                            (if _%$e93290%_
                                (__system-class _%$e93290%_)
                                (error '"unknown class"
                                       'subtype:
                                       _%st93284%_
                                       'object:
                                       _%obj93277%_))))))
                (if (fx= _%t93281%_ (macro-type-mem2))
                    (__system-class 'pair)
                    (if (fx= _%t93281%_ (macro-type-fixnum))
                        (__system-class 'fixnum)
                        (if (char? _%obj93277%_)
                            (__system-class 'char)
                            (if (eq? _%obj93277%_ '())
                                (__system-class 'null)
                                (if (eq? _%obj93277%_ '#f)
                                    (__system-class 'boolean)
                                    (if (eq? _%obj93277%_ '#t)
                                        (__system-class 'boolean)
                                        (if (eq? _%obj93277%_ '#!void)
                                            (__system-class 'void)
                                            (if (eq? _%obj93277%_ '#!eof)
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
      (lambda (_%id93271%_)
        (let ((_%$e93273%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id93271%_ '#f))))
          (if _%$e93273%_
              _%$e93273%_
              (error '"unknown system class" _%id93271%_)))))
    (define __make-system-class
      (lambda (_%id93266%_ _%super93267%_)
        (let ((_%klass93269%_
               (make-class-type
                _%id93266%_
                _%id93266%_
                _%super93267%_
                '()
                '((system: . #t))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set! __system-classes _%id93266%_ _%klass93269%_))
          _%klass93269%_)))))
