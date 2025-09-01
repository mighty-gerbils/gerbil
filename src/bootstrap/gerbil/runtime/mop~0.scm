(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1756715351)
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
      (let ((_%flags107954%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties107955%_ '((direct-slots:) (system: . #t)))
            (_%slot-table107956%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags107954%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table107956%_
           _%properties107955%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots107930%_
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
             (_%slot-vector107932%_ (list->vector (cons '#f _%slots107930%_)))
             (_%slot-table107939%_
              (let ((_%slot-table107934%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp109397
                       (lambda (_%slot107936%_ _%field107937%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107934%_
                            _%slot107936%_
                            _%field107937%_))
                         (let ((__tmp109398
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot107936%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107934%_
                            __tmp109398
                            _%field107937%_))))
                      (__tmp109395
                       (let ((__tmp109396
                              (let ()
                                (declare (not safe))
                                (##length _%slots107930%_))))
                         (declare (not safe))
                         (##iota __tmp109396 '1))))
                  (declare (not safe))
                  (##for-each __tmp109397 _%slots107930%_ __tmp109395))
                _%slot-table107934%_))
             (_%flags107941%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields107947%_
              (list->vector
               (let ((__tmp109399
                      (map (lambda (_%g107942107944%_)
                             (list _%g107942107944%_ '5 '#f))
                           (drop _%slots107930%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp109399))))
             (_%properties107949%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots107930%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t107951%_
              (let ((__tmp109400 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags107941%_
                 ##type-type
                 _%fields107947%_
                 __tmp109400
                 _%slot-vector107932%_
                 _%slot-table107939%_
                 _%properties107949%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t107951%_ _%t107951%_))
        _%t107951%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags107926%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties107927%_ '((direct-slots:) (system: . #t)))
            (_%slot-table107928%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp109401 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags107926%_
           '#f
           '#()
           __tmp109401
           '#(#f)
           _%slot-table107928%_
           _%properties107927%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj107924%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj107924%_ 'class))))
    (define class-type=?
      (lambda (_%x107899%_ _%y107900%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x107899%_ 'class))
            (let ((_%x107904%_ _%x107899%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y107900%_ 'class))
                  (let ((_%y107914%_ _%y107900%_))
                    (__class-type=? _%x107904%_ _%y107914%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y107900%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x107899%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x107878%_ _%y107879%_)
        (let* ((_%x107882%_ _%x107878%_) (_%y107890%_ _%y107879%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x107882%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y107890%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type107864%_)
        (if (let () (declare (not safe)) (##type? _%type107864%_))
            (let ((_%type107868%_ _%type107864%_))
              (__type-opaque? _%type107868%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type107864%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type107852%_)
        (let* ((_%type107855%_ _%type107852%_)
               (__tmp109402
                (let ((__tmp109403
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type107855%_))))
                  (declare (not safe))
                  (##fxand __tmp109403 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp109402 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type107838%_)
        (if (let () (declare (not safe)) (##type? _%type107838%_))
            (let ((_%type107842%_ _%type107838%_))
              (__type-extensible? _%type107842%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type107838%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type107826%_)
        (let* ((_%type107829%_ _%type107826%_)
               (__tmp109404
                (let ((__tmp109405
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type107829%_))))
                  (declare (not safe))
                  (##fxand __tmp109405 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp109404 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type107812%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type107812%_ 'class))
            (let ((_%type107816%_ _%type107812%_))
              (__class-type-final? _%type107816%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type107812%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type107800%_)
        (let* ((_%type107803%_ _%type107800%_)
               (__tmp109406
                (let ((__tmp109407
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type107803%_))))
                  (declare (not safe))
                  (##fxand __tmp109407 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp109406 '0))))
    (define class-type-struct?
      (lambda (_%klass107786%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107786%_ 'class))
            (let ((_%klass107790%_ _%klass107786%_))
              (__class-type-struct? _%klass107790%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass107786%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass107774%_)
        (let* ((_%klass107777%_ _%klass107774%_)
               (__tmp109408
                (let ((__tmp109409
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass107777%_))))
                  (declare (not safe))
                  (##fxand __tmp109409 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp109408 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass107760%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107760%_ 'class))
            (let ((_%klass107764%_ _%klass107760%_))
              (__class-type-sealed? _%klass107764%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass107760%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass107748%_)
        (let* ((_%klass107751%_ _%klass107748%_)
               (__tmp109410
                (let ((__tmp109411
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass107751%_))))
                  (declare (not safe))
                  (##fxand __tmp109411 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp109410 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass107734%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107734%_ 'class))
            (let ((_%klass107738%_ _%klass107734%_))
              (__class-type-metaclass? _%klass107738%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass107734%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass107722%_)
        (let* ((_%klass107725%_ _%klass107722%_)
               (__tmp109412
                (let ((__tmp109413
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass107725%_))))
                  (declare (not safe))
                  (##fxand __tmp109413 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp109412 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass107708%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107708%_ 'class))
            (let ((_%klass107712%_ _%klass107708%_))
              (__class-type-system? _%klass107712%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass107708%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass107696%_)
        (let* ((_%klass107699%_ _%klass107696%_)
               (__tmp109414
                (let ((__tmp109415
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass107699%_))))
                  (declare (not safe))
                  (##fxand __tmp109415 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp109414 class-type-flag-system))))
    (define make-class-type-descriptor
      (lambda (_%type-id107578%_
               _%type-name107579%_
               _%type-super107580%_
               _%precedence-list107581%_
               _%slot-vector107582%_
               _%properties107583%_
               _%constructor107584%_
               _%slot-table107585%_
               _%methods107586%_)
        (letrec ((_%make-props!107589%_
                  (lambda (_%key107665%_)
                    (letrec* ((_%ht107667%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!107668%_
                               (lambda (_%ht107689%_ _%slots107690%_)
                                 (for-each
                                  (lambda (_%g107691107693%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht107689%_
                                       _%g107691107693%_
                                       '#t)))
                                  _%slots107690%_)))
                              (_%put-alist!107669%_
                               (lambda (_%ht107678%_
                                        _%key107679%_
                                        _%alist107680%_)
                                 (let ((_%$e107682%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key107679%_
                                           _%alist107680%_))))
                                   (if _%$e107682%_
                                       ((lambda (_%g107684107686%_)
                                          (_%put-slots!107668%_
                                           _%ht107678%_
                                           _%g107684107686%_))
                                        _%$e107682%_)
                                       '#!void)))))
                      (_%put-alist!107669%_
                       _%ht107667%_
                       _%key107665%_
                       _%properties107583%_)
                      (for-each
                       (lambda (_%mixin107671%_)
                         (let ((_%alist107673%_
                                (##structure-ref
                                 _%mixin107671%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist107673%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key107665%_
                                           _%alist107673%_))))
                               (_%put-slots!107668%_
                                _%ht107667%_
                                (class-type-slot-list _%mixin107671%_))
                               (_%put-alist!107669%_
                                _%ht107667%_
                                _%key107665%_
                                _%alist107673%_))))
                       _%precedence-list107581%_)
                      _%ht107667%_))))
          (let* ((_%transparent?107591%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties107583%_)))
                 (_%all-slots-printable?107596%_
                  (let ((_%$e107593%_ _%transparent?107591%_))
                    (if _%$e107593%_
                        _%$e107593%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties107583%_))))))
                 (_%printable107598%_
                  (if (not _%all-slots-printable?107596%_)
                      (_%make-props!107589%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?107603%_
                  (let ((_%$e107600%_ _%transparent?107591%_))
                    (if _%$e107600%_
                        _%$e107600%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties107583%_))))))
                 (_%equalable107605%_
                  (if (not _%all-slots-equalable?107603%_)
                      (_%make-props!107589%_ 'equal:)
                      '#f))
                 (_%first-new-field107607%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super107580%_ 'class))
                      (let ((__tmp109416
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super107580%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp109416))
                      '1))
                 (_%field-info-length107609%_
                  (let ((__tmp109417
                         (let ((__tmp109418
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector107582%_))))
                           (declare (not safe))
                           (##fx- __tmp109418 _%first-new-field107607%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp109417)))
                 (_%field-info107611%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length107609%_ '#f)))
                 (_%struct?107613%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties107583%_)))
                 (_%final?107615%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties107583%_)))
                 (_%metaclass107623%_
                  (let ((_%metaclass107616107618%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties107583%_))))
                    (if _%metaclass107616107618%_
                        (let ((_%metaclass107621%_ _%metaclass107616107618%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass107621%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id107578%_
                                     'metaclass:
                                     _%metaclass107621%_))
                          _%metaclass107621%_)
                        '#f)))
                 (_%system?107625%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties107583%_)))
                 (_%opaque?107633%_
                  (if (or _%transparent?107591%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties107583%_)))
                      '#f
                      (let ((_%$e107630%_ (not _%type-super107580%_)))
                        (if _%$e107630%_
                            _%$e107630%_
                            (__type-opaque? _%type-super107580%_)))))
                 (_%type-flags107635%_
                  (let ((__tmp109423
                         (if _%final?107615%_ '0 type-flag-extensible))
                        (__tmp109422
                         (if _%opaque?107633%_ type-flag-opaque '0))
                        (__tmp109421
                         (if _%struct?107613%_ class-type-flag-struct '0))
                        (__tmp109420
                         (if _%metaclass107623%_ class-type-flag-metaclass '0))
                        (__tmp109419
                         (if _%system?107625%_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp109423
                             __tmp109422
                             __tmp109421
                             __tmp109420
                             __tmp109419)))
                 (_%precedence-list107643%_
                  (let ((_%$e107637%_ (memq t::t _%precedence-list107581%_)))
                    (if _%$e107637%_
                        ((lambda (_%tail107640%_)
                           (if (null? (cdr _%tail107640%_))
                               _%precedence-list107581%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list107581%_)))
                         _%$e107637%_)
                        (let ((__tmp109424 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list107581%_ __tmp109424))))))
            (let _%loop107646%_ ((_%i107648%_ _%first-new-field107607%_)
                                 (_%j107649%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j107649%_ _%field-info-length107609%_))
                  (let* ((_%slot107651%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector107582%_ _%i107648%_)))
                         (_%flags107659%_
                          (if _%transparent?107591%_
                              '0
                              (let ((__tmp109426
                                     (if (or _%all-slots-printable?107596%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable107598%_
                                                _%slot107651%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp109425
                                     (if (or _%all-slots-equalable?107603%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable107605%_
                                                _%slot107651%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp109426 __tmp109425)))))
                    (vector-set!
                     _%field-info107611%_
                     _%j107649%_
                     _%slot107651%_)
                    (vector-set!
                     _%field-info107611%_
                     (let () (declare (not safe)) (##fx+ _%j107649%_ '1))
                     _%flags107659%_)
                    (_%loop107646%_
                     (let () (declare (not safe)) (##fx+ _%i107648%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j107649%_ '3))))
                  '#!void))
            (if _%metaclass107623%_
                (let ((_%val107662%_
                       (make-instance
                        _%metaclass107623%_
                        _%type-id107578%_
                        _%type-name107579%_
                        _%type-flags107635%_
                        _%type-super107580%_
                        _%field-info107611%_
                        _%precedence-list107643%_
                        _%slot-vector107582%_
                        _%slot-table107585%_
                        _%properties107583%_
                        _%constructor107584%_
                        _%methods107586%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val107662%_ 'class))
                      _%val107662%_
                      (error '"bad cast" class::t _%val107662%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id107578%_
                   _%type-name107579%_
                   _%type-flags107635%_
                   _%type-super107580%_
                   _%field-info107611%_
                   _%precedence-list107643%_
                   _%slot-vector107582%_
                   _%slot-table107585%_
                   _%properties107583%_
                   _%constructor107584%_
                   _%methods107586%_)))))))
    (define class-type-id
      (lambda (_%klass107576%_)
        (##structure-ref _%klass107576%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass107574%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass107574%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass107571%_ _%val107572%_)
        (##structure-set! _%klass107571%_ _%val107572%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass107566%_ _%val107568%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107566%_
           _%val107568%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass107564%_)
        (##structure-ref _%klass107564%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass107562%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass107562%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass107559%_ _%val107560%_)
        (##structure-set! _%klass107559%_ _%val107560%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass107554%_ _%val107556%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107554%_
           _%val107556%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass107552%_)
        (##structure-ref _%klass107552%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass107550%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass107550%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass107547%_ _%val107548%_)
        (##structure-set! _%klass107547%_ _%val107548%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass107542%_ _%val107544%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107542%_
           _%val107544%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass107540%_)
        (##structure-ref _%klass107540%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass107538%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass107538%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass107535%_ _%val107536%_)
        (##structure-set! _%klass107535%_ _%val107536%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass107530%_ _%val107532%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107530%_
           _%val107532%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass107528%_)
        (##structure-ref _%klass107528%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass107526%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass107526%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass107523%_ _%val107524%_)
        (##structure-set! _%klass107523%_ _%val107524%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass107518%_ _%val107520%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107518%_
           _%val107520%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass107516%_)
        (##structure-ref _%klass107516%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass107514%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass107514%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass107511%_ _%val107512%_)
        (##structure-set!
         _%klass107511%_
         _%val107512%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass107506%_ _%val107508%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107506%_
           _%val107508%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass107504%_)
        (##structure-ref _%klass107504%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass107502%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass107502%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass107499%_ _%val107500%_)
        (##structure-set!
         _%klass107499%_
         _%val107500%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass107494%_ _%val107496%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107494%_
           _%val107496%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass107492%_)
        (##structure-ref _%klass107492%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass107490%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass107490%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass107487%_ _%val107488%_)
        (##structure-set!
         _%klass107487%_
         _%val107488%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass107482%_ _%val107484%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107482%_
           _%val107484%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass107480%_)
        (##structure-ref _%klass107480%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass107478%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass107478%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass107475%_ _%val107476%_)
        (##structure-set!
         _%klass107475%_
         _%val107476%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass107470%_ _%val107472%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107470%_
           _%val107472%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass107468%_)
        (##structure-ref _%klass107468%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass107466%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass107466%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass107463%_ _%val107464%_)
        (##structure-set!
         _%klass107463%_
         _%val107464%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass107458%_ _%val107460%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107458%_
           _%val107460%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass107456%_)
        (##structure-ref _%klass107456%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass107454%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass107454%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass107451%_ _%val107452%_)
        (##structure-set!
         _%klass107451%_
         _%val107452%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass107446%_ _%val107448%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107446%_
           _%val107448%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass107432%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107432%_ 'class))
            (let ((_%klass107436%_ _%klass107432%_))
              (__class-type-slot-list _%klass107436%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass107432%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass107420%_)
        (let ((_%klass107423%_ _%klass107420%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass107423%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass107406%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107406%_ 'class))
            (let ((_%klass107410%_ _%klass107406%_))
              (__class-type-field-count _%klass107410%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass107406%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass107394%_)
        (let* ((_%klass107397%_ _%klass107394%_)
               (__tmp109427
                (let ((__tmp109428
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass107397%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp109428))))
          (declare (not safe))
          (##fx- __tmp109427 '1))))
    (define class-type-seal!
      (lambda (_%klass107380%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107380%_ 'class))
            (let ((_%klass107384%_ _%klass107380%_))
              (__class-type-seal! _%klass107384%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass107380%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass107368%_)
        (let ((_%klass107371%_ _%klass107368%_))
          (let ((__tmp109429
                 (let ((__tmp109430
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass107371%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp109430))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass107371%_
             __tmp109429
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct107343%_ _%maybe-super-struct107344%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct107343%_ 'class))
            (let ((_%maybe-sub-struct107348%_ _%maybe-sub-struct107343%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct107344%_
                     'class))
                  (let ((_%maybe-super-struct107358%_
                         _%maybe-super-struct107344%_))
                    (__substruct?
                     _%maybe-sub-struct107348%_
                     _%maybe-super-struct107358%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct107344%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct107343%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct107312%_ _%maybe-super-struct107313%_)
        (let* ((_%maybe-sub-struct107316%_ _%maybe-sub-struct107312%_)
               (_%maybe-super-struct107324%_ _%maybe-super-struct107313%_)
               (_%maybe-super-struct-id107333%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct107324%_))))
          (let _%lp107335%_ ((_%super-struct107337%_
                              _%maybe-sub-struct107316%_))
            (if (not _%super-struct107337%_)
                '#f
                (if (eq? _%maybe-super-struct-id107333%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct107337%_)))
                    '#t
                    (_%lp107335%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct107337%_)))))))))
    (define base-struct/1
      (lambda (_%klass107307%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107307%_ 'class))
            (if (__class-type-struct? _%klass107307%_)
                _%klass107307%_
                (let () (declare (not safe)) (##type-super _%klass107307%_)))
            (if (not _%klass107307%_)
                '#f
                (error '"not a class or false" _%klass107307%_)))))
    (define base-struct/2
      (lambda (_%klass1107292%_ _%klass2107293%_)
        (let ((_%s1107295%_ (base-struct/1 _%klass1107292%_))
              (_%s2107296%_ (base-struct/1 _%klass2107293%_)))
          (if (or (not _%s1107295%_)
                  (and _%s2107296%_ (substruct? _%s1107295%_ _%s2107296%_)))
              _%s2107296%_
              (if (or (not _%s2107296%_)
                      (and _%s1107295%_
                           (substruct? _%s2107296%_ _%s1107295%_)))
                  _%s1107295%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1107292%_
                         _%klass2107293%_
                         _%s1107295%_
                         _%s2107296%_))))))
    (define base-struct/list
      (lambda (_%all-supers107176%_)
        (let* ((_%all-supers107177107202%_ _%all-supers107176%_)
               (_%E107182107206%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers107177107202%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K107200107289%_ (lambda () '#f))
                (_%K107197107275%_
                 (lambda (_%x107273%_) (base-struct/1 _%x107273%_)))
                (_%K107192107252%_
                 (lambda (_%y107249%_ _%x107250%_)
                   (base-struct/2 _%x107250%_ _%y107249%_)))
                (_%K107183107213%_
                 (lambda (_%y107210%_ _%x107211%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x107211%_ _%y107210%_)))))
            (let* ((_%__match109389109390%_
                    (lambda (_%hd107184107216%_ _%tl107185107218%_)
                      (let ((_%x107221%_ _%hd107184107216%_))
                        (letrec ((_%splice-rest107187107223%_
                                  (lambda (_%rest107191107230%_ _%y107232%_)
                                    (if (null? _%rest107191107230%_)
                                        (_%K107183107213%_
                                         _%y107232%_
                                         _%x107221%_)
                                        (_%E107182107206%_))))
                                 (_%splice-try107189107225%_
                                  (lambda (_%hd107190107234%_
                                           _%rest107191107236%_
                                           _%y107186107237%_)
                                    (let ((_%y107240%_ _%hd107190107234%_))
                                      (_%splice-loop107188107227%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest107191107236%_))
                                       (cons _%y107240%_ _%y107186107237%_)))))
                                 (_%splice-loop107188107227%_
                                  (lambda (_%rest107191107242%_
                                           _%y107186107243%_)
                                    (if (pair? _%rest107191107242%_)
                                        (_%splice-try107189107225%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest107191107242%_))
                                         _%rest107191107242%_
                                         _%y107186107243%_)
                                        (_%splice-rest107187107223%_
                                         _%rest107191107242%_
                                         (reverse _%y107186107243%_))))))
                          (_%splice-loop107188107227%_
                           _%tl107185107218%_
                           '())))))
                   (_%try-match107179107285%_
                    (lambda ()
                      (if (pair? _%all-supers107177107202%_)
                          (let ((_%tl107199107280%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers107177107202%_)))
                                (_%hd107198107278%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers107177107202%_))))
                            (if (null? _%tl107199107280%_)
                                (let ((_%x107283%_ _%hd107198107278%_))
                                  (base-struct/1 _%x107283%_))
                                (if (pair? _%tl107199107280%_)
                                    (let ((_%tl107196107264%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl107199107280%_)))
                                          (_%hd107195107262%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl107199107280%_))))
                                      (if (null? _%tl107196107264%_)
                                          (let ((_%x107260%_
                                                 _%hd107198107278%_)
                                                (_%y107267%_
                                                 _%hd107195107262%_))
                                            (_%K107192107252%_
                                             _%y107267%_
                                             _%x107260%_))
                                          (_%__match109389109390%_
                                           _%hd107198107278%_
                                           _%tl107199107280%_)))
                                    (_%__match109389109390%_
                                     _%hd107198107278%_
                                     _%tl107199107280%_))))
                          (_%E107182107206%_)))))
              (if (null? _%all-supers107177107202%_)
                  (_%K107200107289%_)
                  (_%try-match107179107285%_)))))))
    (define base-struct
      (lambda _%all-supers107174%_ (base-struct/list _%all-supers107174%_)))
    (define find-super-constructor
      (lambda (_%super107125%_)
        (let _%lp107127%_ ((_%rest107129%_ _%super107125%_)
                           (_%constructor107130%_ '#f))
          (let* ((_%rest107131107139%_ _%rest107129%_)
                 (_%else107133107147%_ (lambda () _%constructor107130%_))
                 (_%K107135107162%_
                  (lambda (_%rest107150%_ _%hd107151%_)
                    (let ((_%$e107153%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd107151%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e107153%_
                          ((lambda (_%xconstructor107156%_)
                             (if (or (not _%constructor107130%_)
                                     (eq? _%constructor107130%_
                                          _%xconstructor107156%_))
                                 (_%lp107127%_
                                  _%rest107150%_
                                  _%xconstructor107156%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor107130%_
                                        _%xconstructor107156%_)))
                           _%$e107153%_)
                          (_%lp107127%_
                           _%rest107150%_
                           _%constructor107130%_))))))
            (if (pair? _%rest107131107139%_)
                (let ((_%hd107136107165%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest107131107139%_)))
                      (_%tl107137107167%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest107131107139%_))))
                  (let* ((_%hd107170%_ _%hd107136107165%_)
                         (_%rest107172%_ _%tl107137107167%_))
                    (_%K107135107162%_ _%rest107172%_ _%hd107170%_)))
                (_%else107133107147%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list107101%_ _%direct-slots107102%_)
        (let* ((_%next-slot107104%_ '1)
               (_%slot-table107106%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots107108%_ '(__class))
               (_%process-slot107112%_
                (lambda (_%slot107110%_)
                  (if (symbol? _%slot107110%_)
                      '#!void
                      (error '"invalid slot name" _%slot107110%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table107106%_
                              _%slot107110%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table107106%_
                           _%slot107110%_
                           _%next-slot107104%_))
                        (let ((__tmp109431
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot107110%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table107106%_
                           __tmp109431
                           _%next-slot107104%_))
                        (set! _%r-slots107108%_
                              (cons _%slot107110%_ _%r-slots107108%_))
                        (set! _%next-slot107104%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot107104%_ '1))))
                      '#!void)))
               (_%process-slots107118%_
                (lambda (_%g107113107115%_)
                  (for-each _%process-slot107112%_ _%g107113107115%_))))
          (let ((__tmp109433
                 (lambda (_%mixin107121%_)
                   (_%process-slots107118%_
                    (let ((__tmp109434
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin107121%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp109434 '())))))
                (__tmp109432 (reverse _%class-precedence-list107101%_)))
            (declare (not safe))
            (##for-each __tmp109433 __tmp109432))
          (_%process-slots107118%_ _%direct-slots107102%_)
          (let ((_%slot-vector107123%_
                 (list->vector
                  (let ()
                    (declare (not safe))
                    (##reverse _%r-slots107108%_)))))
            (values _%slot-vector107123%_ _%slot-table107106%_)))))
    (define make-class-type
      (lambda (_%id107026%_
               _%name107027%_
               _%direct-supers107028%_
               _%direct-slots107029%_
               _%properties107030%_
               _%constructor107031%_)
        (if (symbol? _%id107026%_)
            (let ((_%id107035%_ _%id107026%_))
              (if (symbol? _%name107027%_)
                  (let ((_%name107045%_ _%name107027%_))
                    (if (list? _%direct-supers107028%_)
                        (let ((_%direct-supers107055%_
                               _%direct-supers107028%_))
                          (if (list? _%direct-slots107029%_)
                              (let ((_%direct-slots107065%_
                                     _%direct-slots107029%_))
                                (if (list? _%properties107030%_)
                                    (let ((_%properties107075%_
                                           _%properties107030%_))
                                      (if ((lambda (_%$obj107084%_)
                                             (or (not _%$obj107084%_)
                                                 (symbol? _%$obj107084%_)))
                                           _%constructor107031%_)
                                          (let ((_%constructor107091%_
                                                 _%constructor107031%_))
                                            (__make-class-type
                                             _%id107035%_
                                             _%name107045%_
                                             _%direct-supers107055%_
                                             _%direct-slots107065%_
                                             _%properties107075%_
                                             _%constructor107091%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor107031%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties107030%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots107029%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers107028%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name107027%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id107026%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id106895%_
               _%name106896%_
               _%direct-supers106897%_
               _%direct-slots106898%_
               _%properties106899%_
               _%constructor106900%_)
        (let* ((_%id106903%_ _%id106895%_)
               (_%name106911%_ _%name106896%_)
               (_%direct-supers106919%_ _%direct-supers106897%_)
               (_%direct-slots106927%_ _%direct-slots106898%_)
               (_%properties106935%_ _%properties106899%_)
               (_%constructor106943%_ _%constructor106900%_))
          (let ((_%$e106955%_
                 (let ((__tmp109435
                        (lambda (_%$obj106952%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj106952%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp109435 _%direct-supers106919%_))))
            (if _%$e106955%_
                ((lambda (_%g106957106959%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g106957106959%_))
                 _%$e106955%_)
                (let ((_%$e106962%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final?
                                 _%direct-supers106919%_))))
                  (if _%$e106962%_
                      ((lambda (_%g106964106966%_)
                         (error '"Cannot extend final class"
                                _%g106964106966%_))
                       _%$e106962%_)
                      '#!void))))
          (let ((_g109436_ (compute-precedence-list _%direct-supers106919%_)))
            (begin
              (let ((_g109437_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g109436_)
                           (##values-length _g109436_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g109437_ 2)))
                    (error "Context expects 2 values" _g109437_)))
              (let ((_%precedence-list106969%_
                     (let () (declare (not safe)) (##values-ref _g109436_ 0)))
                    (_%struct-super106970%_
                     (let () (declare (not safe)) (##values-ref _g109436_ 1))))
                (let ((_g109438_
                       (compute-class-slots
                        _%precedence-list106969%_
                        _%direct-slots106927%_)))
                  (begin
                    (let ((_g109439_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g109438_)
                                 (##values-length _g109438_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g109439_ 2)))
                          (error "Context expects 2 values" _g109439_)))
                    (let ((_%slot-vector106972%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g109438_ 0)))
                          (_%slot-table106973%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g109438_ 1))))
                      (let* ((_%properties106975%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots106927%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers106919%_)
                                          _%properties106935%_)))
                             (_%constructor*106980%_
                              (let ((_%$e106977%_ _%constructor106943%_))
                                (if _%$e106977%_
                                    _%$e106977%_
                                    (find-super-constructor
                                     _%direct-supers106919%_))))
                             (_%precedence-list107023%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties106975%_))
                                      (memq object::t
                                            _%precedence-list106969%_))
                                  _%precedence-list106969%_
                                  (let _%loop106985%_ ((_%tail106987%_
                                                        _%precedence-list106969%_)
                                                       (_%head106988%_ '()))
                                    (let* ((_%tail106989106997%_
                                            _%tail106987%_)
                                           (_%else106991107005%_
                                            (lambda ()
                                              (let ((__tmp109440
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp109440
                                                 _%head106988%_))))
                                           (_%K106993107011%_
                                            (lambda (_%rest107008%_
                                                     _%hd107009%_)
                                              (if (eq? _%hd107009%_ t::t)
                                                  (let ((__tmp109441
                                                         (cons object::t
                                                               _%tail106987%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp109441
                                                     _%head106988%_))
                                                  (_%loop106985%_
                                                   _%rest107008%_
                                                   (cons _%hd107009%_
                                                         _%head106988%_))))))
                                      (if (pair? _%tail106989106997%_)
                                          (let ((_%hd106994107014%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail106989106997%_)))
                                                (_%tl106995107016%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail106989106997%_))))
                                            (let* ((_%hd107019%_
                                                    _%hd106994107014%_)
                                                   (_%rest107021%_
                                                    _%tl106995107016%_))
                                              (_%K106993107011%_
                                               _%rest107021%_
                                               _%hd107019%_)))
                                          (_%else106991107005%_)))))))
                        (make-class-type-descriptor
                         _%id106903%_
                         _%name106911%_
                         _%struct-super106970%_
                         _%precedence-list107023%_
                         _%slot-vector106972%_
                         _%properties106975%_
                         _%constructor*106980%_
                         _%slot-table106973%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass106881%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106881%_ 'class))
            (let ((_%klass106885%_ _%klass106881%_))
              (__class-precedence-list _%klass106885%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass106881%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass106869%_)
        (let ((_%klass106872%_ _%klass106869%_))
          (cons _%klass106872%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass106872%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers106866%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers106866%_))))
    (define make-class-predicate
      (lambda (_%klass106852%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106852%_ 'class))
            (let ((_%klass106856%_ _%klass106852%_))
              (__make-class-predicate _%klass106856%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass106852%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass106823%_)
        (let* ((_%klass106826%_ _%klass106823%_)
               (_%tid106835%_
                (let () (declare (not safe)) (##type-id _%klass106826%_))))
          (if (__class-type-final? _%klass106826%_)
              (lambda (_%g106837106839%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g106837106839%_
                   _%tid106835%_)))
              (if (__class-type-struct? _%klass106826%_)
                  (lambda (_%g106842106844%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%g106842106844%_
                       _%tid106835%_)))
                  (lambda (_%g106847106849%_)
                    (__class-instance? _%klass106826%_ _%g106847106849%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass106798%_ _%slot106799%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106798%_ 'class))
            (let ((_%klass106803%_ _%klass106798%_))
              (if (symbol? _%slot106799%_)
                  (let ((_%slot106813%_ _%slot106799%_))
                    (__make-class-slot-accessor
                     _%klass106803%_
                     _%slot106813%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot106799%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass106798%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass106766%_ _%slot106767%_)
        (let* ((_%klass106770%_ _%klass106766%_)
               (_%slot106778%_ _%slot106767%_)
               (_%field106787%_
                (let ((__tmp109442
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass106770%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp109442 _%slot106778%_ '#f))))
          (if (not _%field106787%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass106770%_
                       'slot:
                       _%slot106778%_)
                '#!void)
              (if (__class-type-final? _%klass106770%_)
                  (make-final-slot-accessor
                   _%klass106770%_
                   _%slot106778%_
                   _%field106787%_)
                  (if (__class-type-struct? _%klass106770%_)
                      (make-struct-slot-accessor
                       _%klass106770%_
                       _%slot106778%_
                       _%field106787%_)
                      (if (let ((_%strukt106793%_
                                 (base-struct/1 _%klass106770%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt106793%_
                                    'class))
                                 (let ((__tmp109443
                                        (let ((__tmp109444
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt106793%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp109444))))
                                   (declare (not safe))
                                   (##fx< _%field106787%_ __tmp109443))))
                          (make-struct-subclass-slot-accessor
                           _%klass106770%_
                           _%slot106778%_
                           _%field106787%_)
                          (make-class-cached-slot-accessor
                           _%klass106770%_
                           _%slot106778%_
                           _%field106787%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass106741%_ _%slot106742%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106741%_ 'class))
            (let ((_%klass106746%_ _%klass106741%_))
              (if (symbol? _%slot106742%_)
                  (let ((_%slot106756%_ _%slot106742%_))
                    (__make-class-slot-mutator _%klass106746%_ _%slot106756%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot106742%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass106741%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass106709%_ _%slot106710%_)
        (let* ((_%klass106713%_ _%klass106709%_)
               (_%slot106721%_ _%slot106710%_)
               (_%field106730%_
                (let ((__tmp109445
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass106713%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp109445 _%slot106721%_ '#f))))
          (if (not _%field106730%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass106713%_
                       'slot:
                       _%slot106721%_)
                '#!void)
              (if (__class-type-final? _%klass106713%_)
                  (make-final-slot-mutator
                   _%klass106713%_
                   _%slot106721%_
                   _%field106730%_)
                  (if (__class-type-struct? _%klass106713%_)
                      (make-struct-slot-mutator
                       _%klass106713%_
                       _%slot106721%_
                       _%field106730%_)
                      (if (let ((_%strukt106736%_
                                 (base-struct/1 _%klass106713%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt106736%_
                                    'class))
                                 (let ((__tmp109446
                                        (let ((__tmp109447
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt106736%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp109447))))
                                   (declare (not safe))
                                   (##fx< _%field106730%_ __tmp109446))))
                          (make-struct-subclass-slot-mutator
                           _%klass106713%_
                           _%slot106721%_
                           _%field106730%_)
                          (make-class-cached-slot-mutator
                           _%klass106713%_
                           _%slot106721%_
                           _%field106730%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass106684%_ _%slot106685%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106684%_ 'class))
            (let ((_%klass106689%_ _%klass106684%_))
              (if (symbol? _%slot106685%_)
                  (let ((_%slot106699%_ _%slot106685%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass106689%_
                     _%slot106699%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot106685%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass106684%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass106652%_ _%slot106653%_)
        (let* ((_%klass106656%_ _%klass106652%_)
               (_%slot106664%_ _%slot106653%_)
               (_%field106673%_
                (let ((__tmp109448
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass106656%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp109448 _%slot106664%_ '#f))))
          (if (not _%field106673%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass106656%_
                       'slot:
                       _%slot106664%_)
                '#!void)
              (if (__class-type-final? _%klass106656%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass106656%_
                   _%slot106664%_
                   _%field106673%_)
                  (if (__class-type-struct? _%klass106656%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass106656%_
                       _%slot106664%_
                       _%field106673%_)
                      (if (let ((_%strukt106679%_
                                 (base-struct/1 _%klass106656%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt106679%_
                                    'class))
                                 (let ((__tmp109449
                                        (let ((__tmp109450
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt106679%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp109450))))
                                   (declare (not safe))
                                   (##fx< _%field106673%_ __tmp109449))))
                          (make-struct-slot-unchecked-accessor
                           _%klass106656%_
                           _%slot106664%_
                           _%field106673%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass106656%_
                           _%slot106664%_
                           _%field106673%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass106627%_ _%slot106628%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106627%_ 'class))
            (let ((_%klass106632%_ _%klass106627%_))
              (if (symbol? _%slot106628%_)
                  (let ((_%slot106642%_ _%slot106628%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass106632%_
                     _%slot106642%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot106628%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass106627%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass106595%_ _%slot106596%_)
        (let* ((_%klass106599%_ _%klass106595%_)
               (_%slot106607%_ _%slot106596%_)
               (_%field106616%_
                (let ((__tmp109451
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass106599%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp109451 _%slot106607%_ '#f))))
          (if (not _%field106616%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass106599%_
                       'slot:
                       _%slot106607%_)
                '#!void)
              (if (__class-type-final? _%klass106599%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass106599%_
                   _%slot106607%_
                   _%field106616%_)
                  (if (__class-type-struct? _%klass106599%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass106599%_
                       _%slot106607%_
                       _%field106616%_)
                      (if (let ((_%strukt106622%_
                                 (base-struct/1 _%klass106599%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt106622%_
                                    'class))
                                 (let ((__tmp109452
                                        (let ((__tmp109453
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt106622%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp109453))))
                                   (declare (not safe))
                                   (##fx< _%field106616%_ __tmp109452))))
                          (make-struct-slot-unchecked-mutator
                           _%klass106599%_
                           _%slot106607%_
                           _%field106616%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass106599%_
                           _%slot106607%_
                           _%field106616%_))))))))
    (define not-an-instance__%
      (lambda (_%object106579%_ _%class106580%_ _%slot106581%_)
        (apply error
               '"not an instance"
               'object:
               _%object106579%_
               'class:
               _%class106580%_
               (if _%slot106581%_
                   (cons 'slot: (cons _%slot106581%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object106586%_ _%class106587%_)
        (let ((_%slot106589%_ '#f))
          (not-an-instance__%
           _%object106586%_
           _%class106587%_
           _%slot106589%_))))
    (define not-an-instance
      (lambda _g109454_
        (let ((_g109455_ (let () (declare (not safe)) (##length _g109454_))))
          (cond ((let () (declare (not safe)) (##fx= _g109455_ 2))
                 (apply not-an-instance__0 _g109454_))
                ((let () (declare (not safe)) (##fx= _g109455_ 3))
                 (apply not-an-instance__% _g109454_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g109454_))))))
    (define make-final-slot-accessor
      (lambda (_%klass106572%_ _%slot106573%_ _%field106574%_)
        (lambda (_%obj106576%_)
          (##direct-structure-ref
           _%obj106576%_
           _%field106574%_
           _%klass106572%_
           _%slot106573%_))))
    (define make-final-slot-mutator
      (lambda (_%klass106565%_ _%slot106566%_ _%field106567%_)
        (lambda (_%obj106569%_ _%val106570%_)
          (##direct-structure-set!
           _%obj106569%_
           _%val106570%_
           _%field106567%_
           _%klass106565%_
           _%slot106566%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass106559%_ _%slot106560%_ _%field106561%_)
        (lambda (_%obj106563%_)
          (##structure-ref
           _%obj106563%_
           _%field106561%_
           _%klass106559%_
           _%slot106560%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass106552%_ _%slot106553%_ _%field106554%_)
        (lambda (_%obj106556%_ _%val106557%_)
          (##structure-set!
           _%obj106556%_
           _%val106557%_
           _%field106554%_
           _%klass106552%_
           _%slot106553%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass106546%_ _%slot106547%_ _%field106548%_)
        (lambda (_%obj106550%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj106550%_
             _%field106548%_
             _%klass106546%_
             _%slot106547%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass106539%_ _%slot106540%_ _%field106541%_)
        (lambda (_%obj106543%_ _%val106544%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj106543%_
             _%val106544%_
             _%field106541%_
             _%klass106539%_
             _%slot106540%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass106533%_ _%slot106534%_ _%field106535%_)
        (lambda (_%obj106537%_)
          (if (class-instance? _%klass106533%_ _%obj106537%_)
              (unchecked-slot-ref _%obj106537%_ _%field106535%_)
              (not-an-instance__%
               _%obj106537%_
               _%klass106533%_
               _%slot106534%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass106526%_ _%slot106527%_ _%field106528%_)
        (lambda (_%obj106530%_ _%val106531%_)
          (if (class-instance? _%klass106526%_ _%obj106530%_)
              (unchecked-field-set!
               _%obj106530%_
               _%field106528%_
               _%val106531%_)
              (not-an-instance__%
               _%obj106530%_
               _%klass106526%_
               _%slot106527%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass106517%_ _%slot106518%_ _%field106519%_)
        (lambda (_%obj106521%_)
          (if (let ((__tmp109456
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass106517%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj106521%_ __tmp109456))
              (unchecked-field-ref _%obj106521%_ _%field106519%_)
              (if (class-instance? _%klass106517%_ _%obj106521%_)
                  (unchecked-slot-ref _%obj106521%_ _%slot106518%_)
                  (not-an-instance__%
                   _%obj106521%_
                   _%klass106517%_
                   _%slot106518%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass106507%_ _%slot106508%_ _%field106509%_)
        (lambda (_%obj106511%_ _%val106512%_)
          (if (let ((__tmp109457
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass106507%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj106511%_ __tmp109457))
              (unchecked-field-set!
               _%obj106511%_
               _%field106509%_
               _%val106512%_)
              (if (class-instance? _%klass106507%_ _%obj106511%_)
                  (unchecked-slot-set!
                   _%obj106511%_
                   _%slot106508%_
                   _%val106512%_)
                  (not-an-instance__%
                   _%obj106511%_
                   _%klass106507%_
                   _%slot106508%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass106501%_ _%slot106502%_ _%field106503%_)
        (lambda (_%obj106505%_)
          (if (let ((__tmp109458
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass106501%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj106505%_ __tmp109458))
              (unchecked-field-ref _%obj106505%_ _%field106503%_)
              (unchecked-slot-ref _%obj106505%_ _%slot106502%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass106494%_ _%slot106495%_ _%field106496%_)
        (lambda (_%obj106498%_ _%val106499%_)
          (if (let ((__tmp109459
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass106494%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj106498%_ __tmp109459))
              (unchecked-field-set!
               _%obj106498%_
               _%field106496%_
               _%val106499%_)
              (unchecked-slot-set!
               _%obj106498%_
               _%slot106495%_
               _%val106499%_)))))
    (define class-slot-offset
      (lambda (_%klass106469%_ _%slot106470%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106469%_ 'class))
            (let ((_%klass106474%_ _%klass106469%_))
              (if (let () (declare (not safe)) (symbolic? _%slot106470%_))
                  (let ((_%slot106484%_ _%slot106470%_))
                    (__class-slot-offset _%klass106474%_ _%slot106484%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot106470%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass106469%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass106448%_ _%slot106449%_)
        (let* ((_%klass106452%_ _%klass106448%_)
               (_%slot106460%_ _%slot106449%_)
               (__tmp109460
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass106452%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp109460 _%slot106460%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass106422%_ _%obj106423%_ _%slot106424%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106422%_ 'class))
            (let ((_%klass106428%_ _%klass106422%_))
              (if (let () (declare (not safe)) (symbolic? _%slot106424%_))
                  (let ((_%slot106438%_ _%slot106424%_))
                    (__class-slot-ref
                     _%klass106428%_
                     _%obj106423%_
                     _%slot106438%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot106424%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass106422%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass106398%_ _%obj106399%_ _%slot106400%_)
        (let* ((_%klass106403%_ _%klass106398%_)
               (_%slot106411%_ _%slot106400%_))
          (if (__class-instance? _%klass106403%_ _%obj106399%_)
              (let ((_%off106420%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj106399%_))
                      _%slot106411%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj106399%_
                 _%off106420%_
                 _%klass106403%_
                 _%slot106411%_))
              (not-an-instance__0 _%obj106399%_ _%klass106403%_)))))
    (define class-slot-set!
      (lambda (_%klass106371%_ _%obj106372%_ _%slot106373%_ _%val106374%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106371%_ 'class))
            (let ((_%klass106378%_ _%klass106371%_))
              (if (let () (declare (not safe)) (symbolic? _%slot106373%_))
                  (let ((_%slot106388%_ _%slot106373%_))
                    (__class-slot-set!
                     _%klass106378%_
                     _%obj106372%_
                     _%slot106388%_
                     _%val106374%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot106373%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass106371%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass106346%_ _%obj106347%_ _%slot106348%_ _%val106349%_)
        (let* ((_%klass106352%_ _%klass106346%_)
               (_%slot106360%_ _%slot106348%_))
          (if (__class-instance? _%klass106352%_ _%obj106347%_)
              (let ((_%off106369%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj106347%_))
                      _%slot106360%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj106347%_
                 _%val106349%_
                 _%off106369%_
                 _%klass106352%_
                 _%slot106360%_))
              (not-an-instance__0 _%obj106347%_ _%klass106352%_)))))
    (define unchecked-field-ref
      (lambda (_%obj106343%_ _%off106344%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj106343%_ _%off106344%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj106339%_ _%off106340%_ _%val106341%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj106339%_
           _%val106341%_
           _%off106340%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj106336%_ _%slot106337%_)
        (unchecked-field-ref
         _%obj106336%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj106336%_))
          _%slot106337%_))))
    (define unchecked-slot-set!
      (lambda (_%obj106332%_ _%slot106333%_ _%val106334%_)
        (unchecked-field-set!
         _%obj106332%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj106332%_))
          _%slot106333%_)
         _%val106334%_)))
    (define slot-ref__%
      (lambda (_%obj106294%_ _%slot106295%_ _%E106296%_)
        (if (symbol? _%slot106295%_)
            (let ((_%slot106300%_ _%slot106295%_))
              (if (procedure? _%E106296%_)
                  (let ((_%E106310%_ _%E106296%_))
                    (__slot-ref__% _%obj106294%_ _%slot106300%_ _%E106310%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E106296%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot106295%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj106323%_ _%slot106324%_)
        (let ((_%E106326%_ __slot-error))
          (slot-ref__% _%obj106323%_ _%slot106324%_ _%E106326%_))))
    (define slot-ref
      (lambda _g109461_
        (let ((_g109462_ (let () (declare (not safe)) (##length _g109461_))))
          (cond ((let () (declare (not safe)) (##fx= _g109462_ 2))
                 (apply slot-ref__0 _g109461_))
                ((let () (declare (not safe)) (##fx= _g109462_ 3))
                 (apply slot-ref__% _g109461_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g109461_))))))
    (define __slot-ref__%
      (lambda (_%obj106250%_ _%slot106251%_ _%E106252%_)
        (let* ((_%slot106255%_ _%slot106251%_)
               (_%E106263%_ _%E106252%_)
               (_%klass106272%_ (class-of _%obj106250%_))
               (_%$e106275%_
                (__class-slot-offset _%klass106272%_ _%slot106255%_)))
          (if _%$e106275%_
              ((lambda (_%off106278%_)
                 (unchecked-field-ref _%obj106250%_ _%off106278%_))
               _%$e106275%_)
              (let ()
                (declare (not safe))
                (_%E106263%_ _%obj106250%_ _%slot106255%_))))))
    (define __slot-ref__0
      (lambda (_%obj106284%_ _%slot106285%_)
        (let ((_%E106287%_ __slot-error))
          (__slot-ref__% _%obj106284%_ _%slot106285%_ _%E106287%_))))
    (define __slot-ref
      (lambda _g109463_
        (let ((_g109464_ (let () (declare (not safe)) (##length _g109463_))))
          (cond ((let () (declare (not safe)) (##fx= _g109464_ 2))
                 (apply __slot-ref__0 _g109463_))
                ((let () (declare (not safe)) (##fx= _g109464_ 3))
                 (apply __slot-ref__% _g109463_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g109463_))))))
    (define slot-set!__%
      (lambda (_%obj106208%_ _%slot106209%_ _%val106210%_ _%E106211%_)
        (if (symbol? _%slot106209%_)
            (let ((_%slot106215%_ _%slot106209%_))
              (if (procedure? _%E106211%_)
                  (let ((_%E106225%_ _%E106211%_))
                    (__slot-set!__%
                     _%obj106208%_
                     _%slot106215%_
                     _%val106210%_
                     _%E106225%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E106211%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot106209%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj106238%_ _%slot106239%_ _%val106240%_)
        (let ((_%E106242%_ __slot-error))
          (slot-set!__%
           _%obj106238%_
           _%slot106239%_
           _%val106240%_
           _%E106242%_))))
    (define slot-set!
      (lambda _g109465_
        (let ((_g109466_ (let () (declare (not safe)) (##length _g109465_))))
          (cond ((let () (declare (not safe)) (##fx= _g109466_ 3))
                 (apply slot-set!__0 _g109465_))
                ((let () (declare (not safe)) (##fx= _g109466_ 4))
                 (apply slot-set!__% _g109465_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g109465_))))))
    (define __slot-set!__%
      (lambda (_%obj106161%_ _%slot106162%_ _%val106163%_ _%E106164%_)
        (let* ((_%slot106167%_ _%slot106162%_)
               (_%E106175%_ _%E106164%_)
               (_%klass106184%_ (class-of _%obj106161%_))
               (_%$e106187%_
                (__class-slot-offset _%klass106184%_ _%slot106167%_)))
          (if _%$e106187%_
              ((lambda (_%off106190%_)
                 (unchecked-field-set!
                  _%obj106161%_
                  _%off106190%_
                  _%val106163%_))
               _%$e106187%_)
              (let ()
                (declare (not safe))
                (_%E106175%_ _%obj106161%_ _%slot106167%_))))))
    (define __slot-set!__0
      (lambda (_%obj106196%_ _%slot106197%_ _%val106198%_)
        (let ((_%E106200%_ __slot-error))
          (__slot-set!__%
           _%obj106196%_
           _%slot106197%_
           _%val106198%_
           _%E106200%_))))
    (define __slot-set!
      (lambda _g109467_
        (let ((_g109468_ (let () (declare (not safe)) (##length _g109467_))))
          (cond ((let () (declare (not safe)) (##fx= _g109468_ 3))
                 (apply __slot-set!__0 _g109467_))
                ((let () (declare (not safe)) (##fx= _g109468_ 4))
                 (apply __slot-set!__% _g109467_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g109467_))))))
    (define __slot-error
      (lambda (_%obj106157%_ _%slot106158%_)
        (error '"Cannot find slot"
               'object:
               _%obj106157%_
               'slot:
               _%slot106158%_)))
    (define subclass?
      (lambda (_%maybe-sub-class106132%_ _%maybe-super-class106133%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class106132%_ 'class))
            (let ((_%maybe-sub-class106137%_ _%maybe-sub-class106132%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class106133%_
                     'class))
                  (let ((_%maybe-super-class106147%_
                         _%maybe-super-class106133%_))
                    (__subclass?
                     _%maybe-sub-class106137%_
                     _%maybe-super-class106147%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class106133%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class106132%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class106104%_ _%maybe-super-class106105%_)
        (let* ((_%maybe-sub-class106108%_ _%maybe-sub-class106104%_)
               (_%maybe-super-class106116%_ _%maybe-super-class106105%_)
               (_%maybe-super-class-id106125%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class106116%_)))
               (_%$e106127%_
                (eq? _%maybe-super-class-id106125%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class106108%_)))))
          (if _%$e106127%_
              _%$e106127%_
              (let ((__tmp109470
                     (lambda (_%super-class106130%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class106130%_))
                            _%maybe-super-class-id106125%_)))
                    (__tmp109469
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class106108%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp109470 __tmp109469))))))
    (define object?
      (lambda (_%o106101%_)
        (if (let () (declare (not safe)) (##structure? _%o106101%_))
            (let ((__tmp109471
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o106101%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp109471 'class))
            '#f)))
    (define object-type
      (lambda (_%o106096%_)
        (if (let () (declare (not safe)) (##structure? _%o106096%_))
            (let ((_%klass106099%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o106096%_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass106099%_ 'class))
                  _%klass106099%_
                  (begin
                    (error '"not an object" _%o106096%_ _%klass106099%_)
                    '#!void)))
            (begin (error '"not an object" _%o106096%_) '#!void))))
    (define direct-instance?
      (lambda (_%klass106081%_ _%obj106082%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106081%_ 'class))
            (let ((_%klass106086%_ _%klass106081%_))
              (__direct-instance? _%klass106086%_ _%obj106082%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass106081%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass106068%_ _%obj106069%_)
        (let* ((_%klass106072%_ _%klass106068%_)
               (__tmp109472
                (let () (declare (not safe)) (##type-id _%klass106072%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj106069%_ __tmp109472))))
    (define immediate-instance-of?
      (lambda (_%klass106064%_ _%obj106065%_)
        (if (let () (declare (not safe)) (##structure? _%obj106065%_))
            (eq? _%klass106064%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj106065%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass106049%_ _%obj106050%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106049%_ 'class))
            (let ((_%klass106054%_ _%klass106049%_))
              (__struct-instance? _%klass106054%_ _%obj106050%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass106049%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass106036%_ _%obj106037%_)
        (let* ((_%klass106040%_ _%klass106036%_)
               (__tmp109473
                (let () (declare (not safe)) (##type-id _%klass106040%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj106037%_ __tmp109473))))
    (define class-instance?
      (lambda (_%klass106021%_ _%obj106022%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106021%_ 'class))
            (let ((_%klass106026%_ _%klass106021%_))
              (__class-instance? _%klass106026%_ _%obj106022%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass106021%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass106006%_ _%obj106007%_)
        (let* ((_%klass106010%_ _%klass106006%_)
               (_%type106019%_ (class-of _%obj106007%_)))
          (__subclass? _%type106019%_ _%klass106010%_))))
    (define make-object
      (lambda (_%klass105981%_ _%k105982%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105981%_ 'class))
            (let ((_%klass105986%_ _%klass105981%_))
              (if (fixnum? _%k105982%_)
                  (let ((_%k105996%_ _%k105982%_))
                    (__make-object _%klass105986%_ _%k105996%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k105982%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass105981%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass105958%_ _%k105959%_)
        (let* ((_%klass105962%_ _%klass105958%_) (_%k105970%_ _%k105959%_))
          (if (__class-type-system? _%klass105962%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass105962%_)
                '#!void)
              (let ((_%obj105979%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass105962%_ _%k105970%_))))
                (object-fill! _%obj105979%_ '#f))))))
    (define object-fill!
      (lambda (_%obj105943%_ _%fill105944%_)
        (if '#t
            (let ((_%obj105948%_ _%obj105943%_))
              (__object-fill! _%obj105948%_ _%fill105944%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj105943%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj105925%_ _%fill105926%_)
        (let ((_%obj105929%_ _%obj105925%_))
          (let _%loop105938%_ ((_%i105940%_
                                (let ((__tmp109474
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj105929%_))))
                                  (declare (not safe))
                                  (##fx- __tmp109474 '1))))
            (if (let () (declare (not safe)) (##fx> _%i105940%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj105929%_
                     _%fill105926%_
                     _%i105940%_
                     '#f
                     '#f))
                  (_%loop105938%_
                   (let () (declare (not safe)) (##fx- _%i105940%_ '1))))
                _%obj105929%_)))))
    (define new-instance
      (lambda (_%klass105911%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105911%_ 'class))
            (let ((_%klass105915%_ _%klass105911%_))
              (__new-instance _%klass105915%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass105911%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass105899%_)
        (let* ((_%klass105902%_ _%klass105899%_)
               (__obj109391
                (let ((__tmp109475
                       (let ((__tmp109476
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass105902%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp109476))))
                  (declare (not safe))
                  (##make-structure _%klass105902%_ __tmp109475))))
          (object-fill! __obj109391 '#f)
          __obj109391)))
    (define make-instance
      (lambda (_%klass105884%_ . _%args105885%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105884%_ 'class))
            (let ((_%klass105889%_ _%klass105884%_))
              (declare (not safe))
              (##apply __make-instance _%klass105889%_ _%args105885%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass105884%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass105856%_ . _%args105857%_)
        (let* ((_%klass105860%_ _%klass105856%_)
               (_%$e105869%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass105860%_ '10 '#f '#f))))
          (if _%$e105869%_
              ((lambda (_%kons-id105872%_)
                 (let ((_%obj105874%_ (__new-instance _%klass105860%_)))
                   (___constructor-init!
                    _%klass105860%_
                    _%kons-id105872%_
                    _%obj105874%_
                    _%args105857%_)
                   _%obj105874%_))
               _%$e105869%_)
              (if (__class-type-metaclass? _%klass105860%_)
                  (let ((_%obj105877%_ (__new-instance _%klass105860%_)))
                    (__metaclass-instance-init!
                     _%klass105860%_
                     _%obj105877%_
                     _%args105857%_)
                    _%obj105877%_)
                  (if (__class-type-struct? _%klass105860%_)
                      (if (let ((__tmp109478
                                 (__class-type-field-count _%klass105860%_))
                                (__tmp109477
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args105857%_))))
                            (declare (not safe))
                            (##fx= __tmp109478 __tmp109477))
                          (apply ##structure _%klass105860%_ _%args105857%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass105860%_
                                   'slots:
                                   (__class-type-slot-list _%klass105860%_)
                                   'args:
                                   _%args105857%_)
                            '#!void))
                      (let ((_%obj105880%_ (__new-instance _%klass105860%_)))
                        (___class-instance-init!
                         _%klass105860%_
                         _%obj105880%_
                         _%args105857%_)
                        _%obj105880%_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj105841%_ . _%args105842%_)
        (if '#t
            (let ((_%obj105846%_ _%obj105841%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj105846%_ _%args105842%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj105841%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj105828%_ . _%args105829%_)
        (let ((_%obj105832%_ _%obj105828%_))
          (if (let ((__tmp109480
                     (let () (declare (not safe)) (##length _%args105829%_)))
                    (__tmp109479
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj105832%_))))
                (declare (not safe))
                (##fx< __tmp109480 __tmp109479))
              (___struct-instance-init! _%obj105832%_ _%args105829%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj105832%_
                     'args:
                     _%args105829%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj105787%_ _%args105788%_)
        (let _%lp105790%_ ((_%k105792%_ '1) (_%rest105793%_ _%args105788%_))
          (let* ((_%rest105794105802%_ _%rest105793%_)
                 (_%else105796105810%_ (lambda () _%obj105787%_))
                 (_%K105798105816%_
                  (lambda (_%rest105813%_ _%hd105814%_)
                    (unchecked-field-set!
                     _%obj105787%_
                     _%k105792%_
                     _%hd105814%_)
                    (_%lp105790%_
                     (let () (declare (not safe)) (##fx+ _%k105792%_ '1))
                     _%rest105813%_))))
            (if (pair? _%rest105794105802%_)
                (let ((_%hd105799105819%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest105794105802%_)))
                      (_%tl105800105821%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest105794105802%_))))
                  (let* ((_%hd105824%_ _%hd105799105819%_)
                         (_%rest105826%_ _%tl105800105821%_))
                    (_%K105798105816%_ _%rest105826%_ _%hd105824%_)))
                (_%else105796105810%_))))))
    (define class-instance-init!
      (lambda (_%obj105772%_ . _%args105773%_)
        (if '#t
            (let ((_%obj105777%_ _%obj105772%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj105777%_ _%args105773%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj105772%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj105759%_ . _%args105760%_)
        (let ((_%obj105763%_ _%obj105759%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj105763%_))
           _%obj105763%_
           _%args105760%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass105701%_ _%obj105702%_ _%args105703%_)
        (let _%lp105705%_ ((_%rest105707%_ _%args105703%_))
          (let* ((_%rest105708105718%_ _%rest105707%_)
                 (_%else105710105726%_
                  (lambda ()
                    (if (null? _%rest105707%_)
                        _%obj105702%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass105701%_
                               'rest:
                               _%rest105707%_))))
                 (_%K105712105740%_
                  (lambda (_%rest105729%_ _%val105730%_ _%key105731%_)
                    (if (keyword? _%key105731%_)
                        (let ((_%$e105734%_
                               (__class-slot-offset
                                _%klass105701%_
                                _%key105731%_)))
                          (if _%$e105734%_
                              ((lambda (_%off105737%_)
                                 (unchecked-field-set!
                                  _%obj105702%_
                                  _%off105737%_
                                  _%val105730%_)
                                 (_%lp105705%_ _%rest105729%_))
                               _%$e105734%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass105701%_
                                     'slot:
                                     _%key105731%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key105731%_)))))
            (if (pair? _%rest105708105718%_)
                (let ((_%hd105713105743%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest105708105718%_)))
                      (_%tl105714105745%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest105708105718%_))))
                  (let ((_%key105748%_ _%hd105713105743%_))
                    (if (pair? _%tl105714105745%_)
                        (let ((_%hd105715105750%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl105714105745%_)))
                              (_%tl105716105752%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl105714105745%_))))
                          (let* ((_%val105755%_ _%hd105715105750%_)
                                 (_%rest105757%_ _%tl105716105752%_))
                            (_%K105712105740%_
                             _%rest105757%_
                             _%val105755%_
                             _%key105748%_)))
                        (_%else105710105726%_))))
                (_%else105710105726%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass105697%_ _%obj105698%_ _%args105699%_)
        (apply call-method
               _%klass105697%_
               'instance-init!
               _%obj105698%_
               _%args105699%_)))
    (define constructor-init!
      (lambda (_%klass105660%_
               _%kons-id105661%_
               _%obj105662%_
               .
               _%args105663%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105660%_ 'class))
            (let ((_%klass105667%_ _%klass105660%_))
              (if (symbol? _%kons-id105661%_)
                  (let ((_%kons-id105677%_ _%kons-id105661%_))
                    (if '#t
                        (let ((_%obj105687%_ _%obj105662%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass105667%_
                                   _%kons-id105677%_
                                   _%obj105687%_
                                   _%args105663%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                           'contract:
                           'true
                           'value:
                           _%obj105662%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id105661%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass105660%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass105629%_
               _%kons-id105630%_
               _%obj105631%_
               .
               _%args105632%_)
        (let* ((_%klass105635%_ _%klass105629%_)
               (_%kons-id105643%_ _%kons-id105630%_)
               (_%obj105651%_ _%obj105631%_))
          (___constructor-init!
           _%klass105635%_
           _%kons-id105643%_
           _%obj105651%_
           _%args105632%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass105618%_ _%kons-id105619%_ _%obj105620%_ _%args105621%_)
        (let ((_%$e105623%_
               (__find-method
                _%klass105618%_
                _%obj105620%_
                _%kons-id105619%_)))
          (if _%$e105623%_
              ((lambda (_%kons105626%_)
                 (apply _%kons105626%_ _%obj105620%_ _%args105621%_)
                 _%obj105620%_)
               _%$e105623%_)
              (error '"missing constructor"
                     'class:
                     _%klass105618%_
                     'method:
                     _%kons-id105619%_)))))
    (define struct-copy
      (lambda (_%struct105604%_)
        (if '#t
            (let ((_%struct105608%_ _%struct105604%_))
              (__struct-copy _%struct105608%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct105604%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct105592%_)
        (let ((_%struct105595%_ _%struct105592%_))
          (declare (not safe))
          (##structure-copy _%struct105595%_))))
    (define struct->list
      (lambda (_%obj105578%_)
        (if '#t
            (let ((_%obj105582%_ _%obj105578%_))
              (__struct->list _%obj105582%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj105578%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj105559%_)
        (let* ((_%obj105562%_ _%obj105559%_)
               (_%len105571%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj105562%_))))
          (let _%recur105573%_ ((_%i105575%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i105575%_ _%len105571%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj105562%_
                         _%i105575%_
                         '#f
                         '#f))
                      (_%recur105573%_
                       (let () (declare (not safe)) (##fx+ _%i105575%_ '1))))
                '())))))
    (define class->list
      (lambda (_%obj105545%_)
        (if '#t
            (let ((_%obj105549%_ _%obj105545%_)) (__class->list _%obj105549%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@842.20-842.23"
               'contract:
               'true
               'value:
               _%obj105545%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj105521%_)
        (let* ((_%obj105524%_ _%obj105521%_)
               (_%klass105533%_
                (let () (declare (not safe)) (##structure-type _%obj105524%_)))
               (_%slot-vector105535%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass105533%_ '7 '#f '#f))))
          (let _%loop105537%_ ((_%index105539%_
                                (let ((__tmp109481
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector105535%_))))
                                  (declare (not safe))
                                  (##fx- __tmp109481 '1)))
                               (_%plist105540%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index105539%_ '1))
                (cons _%klass105533%_ _%plist105540%_)
                (let ((_%slot105543%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector105535%_
                          _%index105539%_))))
                  (_%loop105537%_
                   (let () (declare (not safe)) (##fx- _%index105539%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot105543%_))
                         (cons (unchecked-field-ref
                                _%obj105524%_
                                _%index105539%_)
                               _%plist105540%_)))))))))
    (define call-method
      (lambda (_%obj105505%_ _%id105506%_ . _%args105507%_)
        (if (symbol? _%id105506%_)
            (let ((_%id105511%_ _%id105506%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj105505%_
                       _%id105511%_
                       _%args105507%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@857.24-857.26"
               'contract:
               'symbol?
               'value:
               _%id105506%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj105474%_ _%id105475%_ . _%args105476%_)
        (let* ((_%id105479%_ _%id105475%_)
               (_%$e105488%_ (__method-ref _%obj105474%_ _%id105479%_)))
          (if _%$e105488%_
              ((lambda (_%method105491%_)
                 (let ((_%method105493%_ _%method105491%_))
                   (apply _%method105493%_ _%obj105474%_ _%args105476%_)))
               _%$e105488%_)
              (error '"cannot find method"
                     'object:
                     _%obj105474%_
                     'method:
                     _%id105479%_)))))
    (define method-ref
      (lambda (_%obj105459%_ _%id105460%_)
        (if (symbol? _%id105460%_)
            (let ((_%id105464%_ _%id105460%_))
              (__method-ref _%obj105459%_ _%id105464%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@884.23-884.25"
               'contract:
               'symbol?
               'value:
               _%id105460%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj105446%_ _%id105447%_)
        (let ((_%id105450%_ _%id105447%_))
          (__find-method
           (class-of _%obj105446%_)
           _%obj105446%_
           _%id105450%_))))
    (define checked-method-ref
      (lambda (_%obj105439%_ _%id105440%_)
        (let ((_%$e105443%_ (method-ref _%obj105439%_ _%id105440%_)))
          (if _%$e105443%_
              _%$e105443%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj105439%_
                       'method:
                       _%id105440%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj105424%_ _%id105425%_)
        (if (symbol? _%id105425%_)
            (let ((_%id105429%_ _%id105425%_))
              (__bound-method-ref _%obj105424%_ _%id105429%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@892.29-892.31"
               'contract:
               'symbol?
               'value:
               _%id105425%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj105392%_ _%id105393%_)
        (let* ((_%id105396%_ _%id105393%_)
               (_%$e105405%_ (__method-ref _%obj105392%_ _%id105396%_)))
          (if _%$e105405%_
              ((lambda (_%method105408%_)
                 (let ((_%method105410%_ _%method105408%_))
                   (lambda _%args105421%_
                     (apply _%method105410%_ _%obj105392%_ _%args105421%_))))
               _%$e105405%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj105377%_ _%id105378%_)
        (if (symbol? _%id105378%_)
            (let ((_%id105382%_ _%id105378%_))
              (__checked-bound-method-ref _%obj105377%_ _%id105382%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@901.37-901.39"
               'contract:
               'symbol?
               'value:
               _%id105378%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj105360%_ _%id105361%_)
        (let* ((_%id105364%_ _%id105361%_)
               (_%method105373%_
                (checked-method-ref _%obj105360%_ _%id105364%_)))
          (lambda _%args105375%_
            (apply _%method105373%_ _%obj105360%_ _%args105375%_)))))
    (define find-method
      (lambda (_%klass105334%_ _%obj105335%_ _%id105336%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105334%_ 'class))
            (let ((_%klass105340%_ _%klass105334%_))
              (if (symbol? _%id105336%_)
                  (let ((_%id105350%_ _%id105336%_))
                    (__find-method _%klass105340%_ _%obj105335%_ _%id105350%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@906.41-906.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id105336%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@906.20-906.25"
               'contract:
               'class-type?
               'value:
               _%klass105334%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass105307%_ _%obj105308%_ _%id105309%_)
        (let* ((_%klass105312%_ _%klass105307%_)
               (_%id105320%_ _%id105309%_)
               (_%$e105329%_
                (__direct-method-ref
                 _%klass105312%_
                 _%obj105308%_
                 _%id105320%_)))
          (if _%$e105329%_
              _%$e105329%_
              (if (__class-type-sealed? _%klass105312%_)
                  '#f
                  (__mixin-method-ref
                   _%klass105312%_
                   _%obj105308%_
                   _%id105320%_))))))
    (define mixin-find-method
      (lambda (_%mixins105291%_ _%obj105292%_ _%id105293%_)
        (if (symbol? _%id105293%_)
            (let ((_%id105297%_ _%id105293%_))
              (__mixin-find-method
               _%mixins105291%_
               _%obj105292%_
               _%id105297%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@914.37-914.39"
               'contract:
               'symbol?
               'value:
               _%id105293%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins105273%_ _%obj105274%_ _%id105275%_)
        (let* ((_%id105278%_ _%id105275%_)
               (__tmp109482
                (lambda (_%g105286105288%_)
                  (direct-method-ref
                   _%g105286105288%_
                   _%obj105274%_
                   _%id105278%_))))
          (declare (not safe))
          (__ormap1 __tmp109482 _%mixins105273%_))))
    (define direct-method-ref
      (lambda (_%klass105247%_ _%obj105248%_ _%id105249%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105247%_ 'class))
            (let ((_%klass105253%_ _%klass105247%_))
              (if (symbol? _%id105249%_)
                  (let ((_%id105263%_ _%id105249%_))
                    (__direct-method-ref
                     _%klass105253%_
                     _%obj105248%_
                     _%id105263%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@917.47-917.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id105249%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@917.26-917.31"
               'contract:
               'class-type?
               'value:
               _%klass105247%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass105201%_ _%obj105202%_ _%id105203%_)
        (let* ((_%klass105206%_ _%klass105201%_) (_%id105214%_ _%id105203%_))
          (letrec ((_%metaclass-resolve-method105223%_
                    (lambda ()
                      (let ((__method109392
                             (__method-ref
                              _%klass105206%_
                              'direct-method-ref)))
                        (if __method109392
                            (let ()
                              (declare (not safe))
                              (__method109392
                               _%klass105206%_
                               _%obj105202%_
                               _%id105214%_))
                            (begin
                              (error '"Missing method"
                                     _%klass105206%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!105224%_
                    (lambda ()
                      (let ((_%method105244%_
                             (_%metaclass-resolve-method105223%_)))
                        (let ((__tmp109484
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass105206%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp109483
                               (if _%method105244%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp109484
                           _%id105214%_
                           __tmp109483))
                        _%method105244%_))))
            (let ((_%$e105226%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass105206%_ '11 '#f '#f))))
              (if _%$e105226%_
                  ((lambda (_%ht105229%_)
                     (let ((_%method105231%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht105229%_
                               _%id105214%_
                               '#f))))
                       (if (procedure? _%method105231%_)
                           _%method105231%_
                           (if (__class-type-metaclass? _%klass105206%_)
                               (let ((_%$e105235%_ _%method105231%_))
                                 (if (eq? 'resolved _%$e105235%_)
                                     (_%metaclass-resolve-method105223%_)
                                     (if (eq? 'unknown _%$e105235%_)
                                         '#f
                                         (_%metaclass-resolve-method!105224%_))))
                               '#f))))
                   _%$e105226%_)
                  (if (__class-type-metaclass? _%klass105206%_)
                      (let ((_%tab105240%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass105206%_
                           _%tab105240%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!105224%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass105175%_ _%obj105176%_ _%id105177%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105175%_ 'class))
            (let ((_%klass105181%_ _%klass105175%_))
              (if (symbol? _%id105177%_)
                  (let ((_%id105191%_ _%id105177%_))
                    (__mixin-method-ref
                     _%klass105181%_
                     _%obj105176%_
                     _%id105191%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@947.46-947.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id105177%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@947.25-947.30"
               'contract:
               'class-type?
               'value:
               _%klass105175%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass105153%_ _%obj105154%_ _%id105155%_)
        (let* ((_%klass105158%_ _%klass105153%_) (_%id105166%_ _%id105155%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass105158%_ '6 '#f '#f))
           _%obj105154%_
           _%id105166%_))))
    (define bind-method!__%
      (lambda (_%klass105112%_ _%id105113%_ _%proc105114%_ _%rebind?105115%_)
        (if (symbol? _%id105113%_)
            (let ((_%id105119%_ _%id105113%_))
              (if (procedure? _%proc105114%_)
                  (let ((_%proc105129%_ _%proc105114%_))
                    (__bind-method!__%
                     _%klass105112%_
                     _%id105119%_
                     _%proc105129%_
                     _%rebind?105115%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@950.42-950.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc105114%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@950.27-950.29"
               'contract:
               'symbol?
               'value:
               _%id105113%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass105142%_ _%id105143%_ _%proc105144%_)
        (let ((_%rebind?105146%_ '#f))
          (bind-method!__%
           _%klass105142%_
           _%id105143%_
           _%proc105144%_
           _%rebind?105146%_))))
    (define bind-method!
      (lambda _g109485_
        (let ((_g109486_ (let () (declare (not safe)) (##length _g109485_))))
          (cond ((let () (declare (not safe)) (##fx= _g109486_ 3))
                 (apply bind-method!__0 _g109485_))
                ((let () (declare (not safe)) (##fx= _g109486_ 4))
                 (apply bind-method!__% _g109485_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g109485_))))))
    (define __bind-method!__%
      (lambda (_%klass105063%_ _%id105064%_ _%proc105065%_ _%rebind?105066%_)
        (let* ((_%id105069%_ _%id105064%_) (_%proc105077%_ _%proc105065%_))
          (letrec ((_%bind!105086%_
                    (lambda (_%ht105095%_)
                      (if (and (not _%rebind?105066%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht105095%_
                                  _%id105069%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass105063%_
                                 'method:
                                 _%id105069%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht105095%_
                               _%id105069%_
                               _%proc105077%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass105063%_ 'class))
                (let ((_%ht105089%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass105063%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht105089%_
                      (_%bind!105086%_ _%ht105089%_)
                      (let ((_%ht105091%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass105063%_
                           _%ht105091%_
                           '11
                           '#f
                           '#f))
                        (_%bind!105086%_ _%ht105091%_))))
                (if (let () (declare (not safe)) (##type? _%klass105063%_))
                    (__bind-method!__%
                     (__shadow-class _%klass105063%_)
                     _%id105069%_
                     _%proc105077%_
                     _%rebind?105066%_)
                    (error '"bad class; expected class or builtin type"
                           _%klass105063%_)))))))
    (define __bind-method!__0
      (lambda (_%klass105100%_ _%id105101%_ _%proc105102%_)
        (let ((_%rebind?105104%_ '#f))
          (__bind-method!__%
           _%klass105100%_
           _%id105101%_
           _%proc105102%_
           _%rebind?105104%_))))
    (define __bind-method!
      (lambda _g109487_
        (let ((_g109488_ (let () (declare (not safe)) (##length _g109487_))))
          (cond ((let () (declare (not safe)) (##fx= _g109488_ 3))
                 (apply __bind-method!__0 _g109487_))
                ((let () (declare (not safe)) (##fx= _g109488_ 4))
                 (apply __bind-method!__% _g109487_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g109487_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint105043%_ _%seed105045%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint105043%_
           procedure-hash
           eq?
           _%seed105045%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint105051%_ '#f) (_%seed105053%_ '0))
          (make-method-specializer-table__%
           _%size-hint105051%_
           _%seed105053%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint105055%_)
        (let ((_%seed105057%_ '0))
          (make-method-specializer-table__%
           _%size-hint105055%_
           _%seed105057%_))))
    (define make-method-specializer-table
      (lambda _g109489_
        (let ((_g109490_ (let () (declare (not safe)) (##length _g109489_))))
          (cond ((let () (declare (not safe)) (##fx= _g109490_ 0))
                 (apply make-method-specializer-table__0 _g109489_))
                ((let () (declare (not safe)) (##fx= _g109490_ 1))
                 (apply make-method-specializer-table__1 _g109489_))
                ((let () (declare (not safe)) (##fx= _g109490_ 2))
                 (apply make-method-specializer-table__% _g109489_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g109489_))))))
    (define method-specializer-table-ref
      (lambda (_%tab104996%_ _%key104997%_ _%default104998%_)
        (let ((_%table105000%_
               (let () (declare (not safe)) (&raw-table-table _%tab104996%_)))
              (_%seed105001%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104996%_))))
          (let* ((_%h105003%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key104997%_))
                         _%seed105001%_))
                 (_%size105006%_ (vector-length _%table105000%_))
                 (_%entries105009%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105006%_ '2)))
                 (_%start105012%_
                  (let ((__tmp109491
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105003%_ _%entries105009%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109491 '1))))
            (let _%loop105016%_ ((_%probe105019%_ _%start105012%_)
                                 (_%i105021%_ '1)
                                 (_%deleted105023%_ '#f))
              (let ((_%k105026%_ (vector-ref _%table105000%_ _%probe105019%_)))
                (if (eq? _%k105026%_ (macro-unused-obj))
                    _%default104998%_
                    (if (eq? _%k105026%_ (macro-deleted-obj))
                        (_%loop105016%_
                         (let ((_%next-probe105031%_
                                (fx+ _%start105012%_
                                     _%i105021%_
                                     (fx* _%i105021%_ _%i105021%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105031%_ _%size105006%_))
                         (let () (declare (not safe)) (##fx+ _%i105021%_ '1))
                         (let ((_%$e105034%_ _%deleted105023%_))
                           (if _%$e105034%_ _%$e105034%_ _%probe105019%_)))
                        (if (eq? _%key104997%_ _%k105026%_)
                            (vector-ref
                             _%table105000%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe105019%_ '1)))
                            (_%loop105016%_
                             (let ((_%next-probe105039%_
                                    (fx+ _%start105012%_
                                         _%i105021%_
                                         (fx* _%i105021%_ _%i105021%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105039%_
                                _%size105006%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105021%_ '1))
                             _%deleted105023%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab104992%_ _%key104993%_ _%value104994%_)
        (if (let ((__tmp109494
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab104992%_)))
                  (__tmp109492
                   (let ((__tmp109493
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab104992%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp109493 '4))))
              (declare (not safe))
              (##fx< __tmp109494 __tmp109492))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab104992%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab104992%_
         _%key104993%_
         _%value104994%_)))
    (define __method-specializer-table-set!
      (lambda (_%tab104943%_ _%key104944%_ _%value104945%_)
        (let ((_%table104948%_
               (let () (declare (not safe)) (&raw-table-table _%tab104943%_)))
              (_%seed104949%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104943%_))))
          (let* ((_%h104951%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key104944%_))
                         _%seed104949%_))
                 (_%size104954%_ (vector-length _%table104948%_))
                 (_%entries104957%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104954%_ '2)))
                 (_%start104960%_
                  (let ((__tmp109495
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104951%_ _%entries104957%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109495 '1))))
            (let _%loop104964%_ ((_%probe104967%_ _%start104960%_)
                                 (_%i104969%_ '1)
                                 (_%deleted104971%_ '#f))
              (let ((_%k104974%_ (vector-ref _%table104948%_ _%probe104967%_)))
                (if (eq? _%k104974%_ (macro-unused-obj))
                    (if _%deleted104971%_
                        (begin
                          (vector-set!
                           _%table104948%_
                           _%deleted104971%_
                           _%key104944%_)
                          (vector-set!
                           _%table104948%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted104971%_ '1))
                           _%value104945%_)
                          ((lambda ()
                             (let ((__tmp109496
                                    (let ((__tmp109497
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104943%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109497 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104943%_
                                __tmp109496)))))
                        (begin
                          (vector-set!
                           _%table104948%_
                           _%probe104967%_
                           _%key104944%_)
                          (vector-set!
                           _%table104948%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe104967%_ '1))
                           _%value104945%_)
                          ((lambda ()
                             (let ((__tmp109498
                                    (let ((__tmp109499
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab104943%_))))
                                      (declare (not safe))
                                      (##fx- __tmp109499 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab104943%_
                                __tmp109498))
                             (let ((__tmp109500
                                    (let ((__tmp109501
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104943%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109501 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104943%_
                                __tmp109500))))))
                    (if (eq? _%k104974%_ (macro-deleted-obj))
                        (_%loop104964%_
                         (let ((_%next-probe104981%_
                                (fx+ _%start104960%_
                                     _%i104969%_
                                     (fx* _%i104969%_ _%i104969%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104981%_ _%size104954%_))
                         (let () (declare (not safe)) (##fx+ _%i104969%_ '1))
                         (let ((_%$e104984%_ _%deleted104971%_))
                           (if _%$e104984%_ _%$e104984%_ _%probe104967%_)))
                        (if (eq? _%key104944%_ _%k104974%_)
                            (let ()
                              (vector-set!
                               _%table104948%_
                               _%probe104967%_
                               _%key104944%_)
                              (vector-set!
                               _%table104948%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104967%_ '1))
                               _%value104945%_))
                            (_%loop104964%_
                             (let ((_%next-probe104989%_
                                    (fx+ _%start104960%_
                                         _%i104969%_
                                         (fx* _%i104969%_ _%i104969%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104989%_
                                _%size104954%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104969%_ '1))
                             _%deleted104971%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab104938%_
               _%key104939%_
               _%method-specializer-table-update!104940%_
               _%default104941%_)
        (if (let ((__tmp109504
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab104938%_)))
                  (__tmp109502
                   (let ((__tmp109503
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab104938%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp109503 '4))))
              (declare (not safe))
              (##fx< __tmp109504 __tmp109502))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab104938%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab104938%_
         _%key104939%_
         _%method-specializer-table-update!104940%_
         _%default104941%_)))
    (define __method-specializer-table-update!
      (lambda (_%tab104888%_
               _%key104889%_
               _%method-specializer-table-update!104890%_
               _%default104891%_)
        (let ((_%table104894%_
               (let () (declare (not safe)) (&raw-table-table _%tab104888%_)))
              (_%seed104895%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104888%_))))
          (let* ((_%h104897%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key104889%_))
                         _%seed104895%_))
                 (_%size104900%_ (vector-length _%table104894%_))
                 (_%entries104903%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104900%_ '2)))
                 (_%start104906%_
                  (let ((__tmp109505
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104897%_ _%entries104903%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109505 '1))))
            (let _%loop104910%_ ((_%probe104913%_ _%start104906%_)
                                 (_%i104915%_ '1)
                                 (_%deleted104917%_ '#f))
              (let ((_%k104920%_ (vector-ref _%table104894%_ _%probe104913%_)))
                (if (eq? _%k104920%_ (macro-unused-obj))
                    (if _%deleted104917%_
                        (begin
                          (vector-set!
                           _%table104894%_
                           _%deleted104917%_
                           _%key104889%_)
                          (vector-set!
                           _%table104894%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted104917%_ '1))
                           (_%method-specializer-table-update!104890%_
                            _%default104891%_))
                          ((lambda ()
                             (let ((__tmp109506
                                    (let ((__tmp109507
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104888%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109507 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104888%_
                                __tmp109506)))))
                        (begin
                          (vector-set!
                           _%table104894%_
                           _%probe104913%_
                           _%key104889%_)
                          (vector-set!
                           _%table104894%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe104913%_ '1))
                           (_%method-specializer-table-update!104890%_
                            _%default104891%_))
                          ((lambda ()
                             (let ((__tmp109508
                                    (let ((__tmp109509
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab104888%_))))
                                      (declare (not safe))
                                      (##fx- __tmp109509 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab104888%_
                                __tmp109508))
                             (let ((__tmp109510
                                    (let ((__tmp109511
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104888%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109511 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104888%_
                                __tmp109510))))))
                    (if (eq? _%k104920%_ (macro-deleted-obj))
                        (_%loop104910%_
                         (let ((_%next-probe104927%_
                                (fx+ _%start104906%_
                                     _%i104915%_
                                     (fx* _%i104915%_ _%i104915%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104927%_ _%size104900%_))
                         (let () (declare (not safe)) (##fx+ _%i104915%_ '1))
                         (let ((_%$e104930%_ _%deleted104917%_))
                           (if _%$e104930%_ _%$e104930%_ _%probe104913%_)))
                        (if (eq? _%key104889%_ _%k104920%_)
                            (let ()
                              (vector-set!
                               _%table104894%_
                               _%probe104913%_
                               _%key104889%_)
                              (vector-set!
                               _%table104894%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104913%_ '1))
                               (_%method-specializer-table-update!104890%_
                                (vector-ref
                                 _%table104894%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe104913%_ '1))))))
                            (_%loop104910%_
                             (let ((_%next-probe104935%_
                                    (fx+ _%start104906%_
                                         _%i104915%_
                                         (fx* _%i104915%_ _%i104915%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104935%_
                                _%size104900%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104915%_ '1))
                             _%deleted104917%_))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab104843%_ _%key104845%_)
        (let ((_%table104848%_
               (let () (declare (not safe)) (&raw-table-table _%tab104843%_)))
              (_%seed104850%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104843%_))))
          (let* ((_%h104853%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key104845%_))
                         _%seed104850%_))
                 (_%size104856%_ (vector-length _%table104848%_))
                 (_%entries104859%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104856%_ '2)))
                 (_%start104862%_
                  (let ((__tmp109512
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104853%_ _%entries104859%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109512 '1))))
            (let _%loop104866%_ ((_%probe104869%_ _%start104862%_)
                                 (_%i104871%_ '1))
              (let ((_%k104874%_ (vector-ref _%table104848%_ _%probe104869%_)))
                (if (eq? _%k104874%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k104874%_ (macro-deleted-obj))
                        (_%loop104866%_
                         (let ((_%next-probe104879%_
                                (fx+ _%start104862%_
                                     _%i104871%_
                                     (fx* _%i104871%_ _%i104871%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104879%_ _%size104856%_))
                         (let () (declare (not safe)) (##fx+ _%i104871%_ '1)))
                        (if (eq? _%key104845%_ _%k104874%_)
                            (let ()
                              (vector-set!
                               _%table104848%_
                               _%probe104869%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table104848%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104869%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp109513
                                        (let ((__tmp109514
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab104843%_))))
                                          (declare (not safe))
                                          (##fx- __tmp109514 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab104843%_
                                    __tmp109513)))))
                            (_%loop104866%_
                             (let ((_%next-probe104885%_
                                    (fx+ _%start104862%_
                                         _%i104871%_
                                         (fx* _%i104871%_ _%i104871%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104885%_
                                _%size104856%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104871%_ '1))))))))))))
    (define __method-specializers (make-method-specializer-table__% '#f '0))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc104834%_ _%specializer104835%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again104839%_ ()
            (if (let ((__tmp109515
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp109515 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again104839%_)))))
        (method-specializer-table-set!
         __method-specializers
         _%method-proc104834%_
         _%specializer104835%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc104824%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again104828%_ ()
            (if (let ((__tmp109516
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp109516 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again104828%_)))))
        (let ((_%specializer104832%_
               (method-specializer-table-ref
                __method-specializers
                _%proc104824%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer104832%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass104822%_)
        (let ((__tmp109517
               (let () (declare (not safe)) (##type-id _%klass104822%_))))
          (declare (not safe))
          (##symbol-hash __tmp109517))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint104803%_ _%seed104805%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint104803%_
           __class-specializer-hash-key
           eq?
           _%seed104805%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint104811%_ '#f) (_%seed104813%_ '0))
          (make-class-specializer-table__%
           _%size-hint104811%_
           _%seed104813%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint104815%_)
        (let ((_%seed104817%_ '0))
          (make-class-specializer-table__%
           _%size-hint104815%_
           _%seed104817%_))))
    (define make-class-specializer-table
      (lambda _g109518_
        (let ((_g109519_ (let () (declare (not safe)) (##length _g109518_))))
          (cond ((let () (declare (not safe)) (##fx= _g109519_ 0))
                 (apply make-class-specializer-table__0 _g109518_))
                ((let () (declare (not safe)) (##fx= _g109519_ 1))
                 (apply make-class-specializer-table__1 _g109518_))
                ((let () (declare (not safe)) (##fx= _g109519_ 2))
                 (apply make-class-specializer-table__% _g109518_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g109518_))))))
    (define class-specializer-table-ref
      (lambda (_%tab104756%_ _%key104757%_ _%default104758%_)
        (let ((_%table104760%_
               (let () (declare (not safe)) (&raw-table-table _%tab104756%_)))
              (_%seed104761%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104756%_))))
          (let* ((_%h104763%_
                  (fxxor (__class-specializer-hash-key _%key104757%_)
                         _%seed104761%_))
                 (_%size104766%_ (vector-length _%table104760%_))
                 (_%entries104769%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104766%_ '2)))
                 (_%start104772%_
                  (let ((__tmp109520
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104763%_ _%entries104769%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109520 '1))))
            (let _%loop104776%_ ((_%probe104779%_ _%start104772%_)
                                 (_%i104781%_ '1)
                                 (_%deleted104783%_ '#f))
              (let ((_%k104786%_ (vector-ref _%table104760%_ _%probe104779%_)))
                (if (eq? _%k104786%_ (macro-unused-obj))
                    _%default104758%_
                    (if (eq? _%k104786%_ (macro-deleted-obj))
                        (_%loop104776%_
                         (let ((_%next-probe104791%_
                                (fx+ _%start104772%_
                                     _%i104781%_
                                     (fx* _%i104781%_ _%i104781%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104791%_ _%size104766%_))
                         (let () (declare (not safe)) (##fx+ _%i104781%_ '1))
                         (let ((_%$e104794%_ _%deleted104783%_))
                           (if _%$e104794%_ _%$e104794%_ _%probe104779%_)))
                        (if (eq? _%key104757%_ _%k104786%_)
                            (vector-ref
                             _%table104760%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe104779%_ '1)))
                            (_%loop104776%_
                             (let ((_%next-probe104799%_
                                    (fx+ _%start104772%_
                                         _%i104781%_
                                         (fx* _%i104781%_ _%i104781%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104799%_
                                _%size104766%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104781%_ '1))
                             _%deleted104783%_))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab104752%_ _%key104753%_ _%value104754%_)
        (if (let ((__tmp109523
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab104752%_)))
                  (__tmp109521
                   (let ((__tmp109522
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab104752%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp109522 '4))))
              (declare (not safe))
              (##fx< __tmp109523 __tmp109521))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab104752%_))
            '#!void)
        (__class-specializer-table-set!
         _%tab104752%_
         _%key104753%_
         _%value104754%_)))
    (define __class-specializer-table-set!
      (lambda (_%tab104703%_ _%key104704%_ _%value104705%_)
        (let ((_%table104708%_
               (let () (declare (not safe)) (&raw-table-table _%tab104703%_)))
              (_%seed104709%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104703%_))))
          (let* ((_%h104711%_
                  (fxxor (__class-specializer-hash-key _%key104704%_)
                         _%seed104709%_))
                 (_%size104714%_ (vector-length _%table104708%_))
                 (_%entries104717%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104714%_ '2)))
                 (_%start104720%_
                  (let ((__tmp109524
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104711%_ _%entries104717%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109524 '1))))
            (let _%loop104724%_ ((_%probe104727%_ _%start104720%_)
                                 (_%i104729%_ '1)
                                 (_%deleted104731%_ '#f))
              (let ((_%k104734%_ (vector-ref _%table104708%_ _%probe104727%_)))
                (if (eq? _%k104734%_ (macro-unused-obj))
                    (if _%deleted104731%_
                        (begin
                          (vector-set!
                           _%table104708%_
                           _%deleted104731%_
                           _%key104704%_)
                          (vector-set!
                           _%table104708%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted104731%_ '1))
                           _%value104705%_)
                          ((lambda ()
                             (let ((__tmp109525
                                    (let ((__tmp109526
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104703%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109526 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104703%_
                                __tmp109525)))))
                        (begin
                          (vector-set!
                           _%table104708%_
                           _%probe104727%_
                           _%key104704%_)
                          (vector-set!
                           _%table104708%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe104727%_ '1))
                           _%value104705%_)
                          ((lambda ()
                             (let ((__tmp109527
                                    (let ((__tmp109528
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab104703%_))))
                                      (declare (not safe))
                                      (##fx- __tmp109528 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab104703%_
                                __tmp109527))
                             (let ((__tmp109529
                                    (let ((__tmp109530
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104703%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109530 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104703%_
                                __tmp109529))))))
                    (if (eq? _%k104734%_ (macro-deleted-obj))
                        (_%loop104724%_
                         (let ((_%next-probe104741%_
                                (fx+ _%start104720%_
                                     _%i104729%_
                                     (fx* _%i104729%_ _%i104729%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104741%_ _%size104714%_))
                         (let () (declare (not safe)) (##fx+ _%i104729%_ '1))
                         (let ((_%$e104744%_ _%deleted104731%_))
                           (if _%$e104744%_ _%$e104744%_ _%probe104727%_)))
                        (if (eq? _%key104704%_ _%k104734%_)
                            (let ()
                              (vector-set!
                               _%table104708%_
                               _%probe104727%_
                               _%key104704%_)
                              (vector-set!
                               _%table104708%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104727%_ '1))
                               _%value104705%_))
                            (_%loop104724%_
                             (let ((_%next-probe104749%_
                                    (fx+ _%start104720%_
                                         _%i104729%_
                                         (fx* _%i104729%_ _%i104729%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104749%_
                                _%size104714%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104729%_ '1))
                             _%deleted104731%_))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab104698%_
               _%key104699%_
               _%class-specializer-table-update!104700%_
               _%default104701%_)
        (if (let ((__tmp109533
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab104698%_)))
                  (__tmp109531
                   (let ((__tmp109532
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab104698%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp109532 '4))))
              (declare (not safe))
              (##fx< __tmp109533 __tmp109531))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab104698%_))
            '#!void)
        (__class-specializer-table-update!
         _%tab104698%_
         _%key104699%_
         _%class-specializer-table-update!104700%_
         _%default104701%_)))
    (define __class-specializer-table-update!
      (lambda (_%tab104648%_
               _%key104649%_
               _%class-specializer-table-update!104650%_
               _%default104651%_)
        (let ((_%table104654%_
               (let () (declare (not safe)) (&raw-table-table _%tab104648%_)))
              (_%seed104655%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104648%_))))
          (let* ((_%h104657%_
                  (fxxor (__class-specializer-hash-key _%key104649%_)
                         _%seed104655%_))
                 (_%size104660%_ (vector-length _%table104654%_))
                 (_%entries104663%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104660%_ '2)))
                 (_%start104666%_
                  (let ((__tmp109534
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104657%_ _%entries104663%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109534 '1))))
            (let _%loop104670%_ ((_%probe104673%_ _%start104666%_)
                                 (_%i104675%_ '1)
                                 (_%deleted104677%_ '#f))
              (let ((_%k104680%_ (vector-ref _%table104654%_ _%probe104673%_)))
                (if (eq? _%k104680%_ (macro-unused-obj))
                    (if _%deleted104677%_
                        (begin
                          (vector-set!
                           _%table104654%_
                           _%deleted104677%_
                           _%key104649%_)
                          (vector-set!
                           _%table104654%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted104677%_ '1))
                           (_%class-specializer-table-update!104650%_
                            _%default104651%_))
                          ((lambda ()
                             (let ((__tmp109535
                                    (let ((__tmp109536
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104648%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109536 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104648%_
                                __tmp109535)))))
                        (begin
                          (vector-set!
                           _%table104654%_
                           _%probe104673%_
                           _%key104649%_)
                          (vector-set!
                           _%table104654%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe104673%_ '1))
                           (_%class-specializer-table-update!104650%_
                            _%default104651%_))
                          ((lambda ()
                             (let ((__tmp109537
                                    (let ((__tmp109538
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab104648%_))))
                                      (declare (not safe))
                                      (##fx- __tmp109538 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab104648%_
                                __tmp109537))
                             (let ((__tmp109539
                                    (let ((__tmp109540
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104648%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109540 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104648%_
                                __tmp109539))))))
                    (if (eq? _%k104680%_ (macro-deleted-obj))
                        (_%loop104670%_
                         (let ((_%next-probe104687%_
                                (fx+ _%start104666%_
                                     _%i104675%_
                                     (fx* _%i104675%_ _%i104675%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104687%_ _%size104660%_))
                         (let () (declare (not safe)) (##fx+ _%i104675%_ '1))
                         (let ((_%$e104690%_ _%deleted104677%_))
                           (if _%$e104690%_ _%$e104690%_ _%probe104673%_)))
                        (if (eq? _%key104649%_ _%k104680%_)
                            (let ()
                              (vector-set!
                               _%table104654%_
                               _%probe104673%_
                               _%key104649%_)
                              (vector-set!
                               _%table104654%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104673%_ '1))
                               (_%class-specializer-table-update!104650%_
                                (vector-ref
                                 _%table104654%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe104673%_ '1))))))
                            (_%loop104670%_
                             (let ((_%next-probe104695%_
                                    (fx+ _%start104666%_
                                         _%i104675%_
                                         (fx* _%i104675%_ _%i104675%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104695%_
                                _%size104660%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104675%_ '1))
                             _%deleted104677%_))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab104603%_ _%key104605%_)
        (let ((_%table104608%_
               (let () (declare (not safe)) (&raw-table-table _%tab104603%_)))
              (_%seed104610%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104603%_))))
          (let* ((_%h104613%_
                  (fxxor (__class-specializer-hash-key _%key104605%_)
                         _%seed104610%_))
                 (_%size104616%_ (vector-length _%table104608%_))
                 (_%entries104619%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104616%_ '2)))
                 (_%start104622%_
                  (let ((__tmp109541
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104613%_ _%entries104619%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109541 '1))))
            (let _%loop104626%_ ((_%probe104629%_ _%start104622%_)
                                 (_%i104631%_ '1))
              (let ((_%k104634%_ (vector-ref _%table104608%_ _%probe104629%_)))
                (if (eq? _%k104634%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k104634%_ (macro-deleted-obj))
                        (_%loop104626%_
                         (let ((_%next-probe104639%_
                                (fx+ _%start104622%_
                                     _%i104631%_
                                     (fx* _%i104631%_ _%i104631%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104639%_ _%size104616%_))
                         (let () (declare (not safe)) (##fx+ _%i104631%_ '1)))
                        (if (eq? _%key104605%_ _%k104634%_)
                            (let ()
                              (vector-set!
                               _%table104608%_
                               _%probe104629%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table104608%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104629%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp109542
                                        (let ((__tmp109543
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab104603%_))))
                                          (declare (not safe))
                                          (##fx- __tmp109543 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab104603%_
                                    __tmp109542)))))
                            (_%loop104626%_
                             (let ((_%next-probe104645%_
                                    (fx+ _%start104622%_
                                         _%i104631%_
                                         (fx* _%i104631%_ _%i104631%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104645%_
                                _%size104616%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104631%_ '1))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers (make-class-specializer-table__% '#f '0))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass104589%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass104589%_ 'class))
            (let ((_%klass104593%_ _%klass104589%_))
              (__specialize-class _%klass104593%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1025.25-1025.30"
               'contract:
               'class-type?
               'value:
               _%klass104589%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass104571%_)
        (let* ((_%klass104574%_ _%klass104571%_)
               (_%$e104583%_ (__lookup-class-specializer _%klass104574%_)))
          (if _%$e104583%_
              _%$e104583%_
              (let ((_%method-table104587%_
                     (___specialize-class _%klass104574%_)))
                (__bind-class-specializer!
                 _%klass104574%_
                 _%method-table104587%_)
                _%method-table104587%_)))))
    (define __lookup-class-specializer
      (lambda (_%klass104561%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again104565%_ ()
            (if (let ((__tmp109544
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp109544 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again104565%_)))))
        (let ((_%method-table104569%_
               (class-specializer-table-ref
                __class-specializers
                _%klass104561%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table104569%_)))
    (define __bind-class-specializer!
      (lambda (_%klass104552%_ _%method-table104553%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again104557%_ ()
            (if (let ((__tmp109545
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp109545 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again104557%_)))))
        (class-specializer-table-set!
         __class-specializers
         _%klass104552%_
         _%method-table104553%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass104536%_
               _%method-table104537%_
               _%method104538%_
               _%proc104539%_)
        (let ((_%$e104541%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table104537%_
                  _%method104538%_
                  '#f))))
          (if _%$e104541%_
              _%$e104541%_
              (let ((_%$e104544%_
                     (__lookup-method-specializer _%proc104539%_)))
                (if _%$e104544%_
                    ((lambda (_%specialize104547%_)
                       (let ((_%specialized-proc104549%_
                              (_%specialize104547%_
                               _%klass104536%_
                               _%method-table104537%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table104537%_
                          _%method104538%_
                          _%specialized-proc104549%_)))
                     _%$e104544%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table104537%_
                       _%method104538%_
                       _%proc104539%_))))))))
    (define ___specialize-class
      (lambda (_%klass104478%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass104478%_ 'class))
            (if (__class-type-metaclass? _%klass104478%_)
                (let ((__method109393
                       (__method-ref _%klass104478%_ 'specialize-class)))
                  (if __method109393
                      (let ()
                        (declare (not safe))
                        (__method109393 _%klass104478%_))
                      (begin
                        (error '"Missing method"
                               _%klass104478%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp109546
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass104478%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp109546))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass104478%_)
                    (let ((_%method-table104484%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop104486%_ ((_%rest104488%_
                                            (__class-precedence-list
                                             _%klass104478%_)))
                        (let* ((_%rest104489104497%_ _%rest104488%_)
                               (_%else104491104505%_
                                (lambda () _%method-table104484%_))
                               (_%K104493104524%_
                                (lambda (_%rest104508%_ _%xklass104509%_)
                                  (let ((_%xmethod-table104510104512%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass104509%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table104510104512%_
                                        (let* ((_%xmethod-table104515%_
                                                _%xmethod-table104510104512%_)
                                               (__tmp109547
                                                (lambda (_%g104516104519%_
                                                         _%g104517104521%_)
                                                  (__specialize-method
                                                   _%klass104478%_
                                                   _%method-table104484%_
                                                   _%g104516104519%_
                                                   _%g104517104521%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table104515%_
                                           __tmp109547))
                                        '#f))
                                  (_%loop104486%_ _%rest104508%_))))
                          (if (pair? _%rest104489104497%_)
                              (let ((_%hd104494104527%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest104489104497%_)))
                                    (_%tl104495104529%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest104489104497%_))))
                                (let* ((_%xklass104532%_ _%hd104494104527%_)
                                       (_%rest104534%_ _%tl104495104529%_))
                                  (_%K104493104524%_
                                   _%rest104534%_
                                   _%xklass104532%_)))
                              (_%else104491104505%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass104478%_))
                (__specialize-class (__shadow-class _%klass104478%_))
                (error '"bad class; cannot specialize" _%klass104478%_)))))
    (define seal-class!
      (lambda (_%klass104464%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass104464%_ 'class))
            (let ((_%klass104468%_ _%klass104464%_))
              (__seal-class! _%klass104468%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1082.20-1082.25"
               'contract:
               'class-type?
               'value:
               _%klass104464%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass104447%_)
        (let ((_%klass104450%_ _%klass104447%_))
          (if (__class-type-sealed? _%klass104450%_)
              '#!void
              (begin
                (if (__class-type-final? _%klass104450%_)
                    '#!void
                    (error '"cannot seal non-final class" _%klass104450%_))
                (if (__class-type-metaclass? _%klass104450%_)
                    (let ((__method109394
                           (__method-ref _%klass104450%_ 'seal-class!)))
                      (if __method109394
                          (let ()
                            (declare (not safe))
                            (__method109394 _%klass104450%_))
                          (begin
                            (error '"Missing method"
                                   _%klass104450%_
                                   'seal-class!)
                            '#!void)))
                    (if (let ((__tmp109548
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass104450%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp109548))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass104450%_)
                        (let ((_%method-table104462%_
                               (__specialize-class _%klass104450%_)))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass104450%_
                           _%method-table104462%_
                           '11
                           '#f
                           '#f))))
                (__class-type-seal! _%klass104450%_))))))
    (define next-method
      (lambda (_%subklass104421%_ _%obj104422%_ _%id104423%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass104421%_ 'class))
            (let ((_%subklass104427%_ _%subklass104421%_))
              (if (symbol? _%id104423%_)
                  (let ((_%id104437%_ _%id104423%_))
                    (__next-method
                     _%subklass104427%_
                     _%obj104422%_
                     _%id104437%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1106.44-1106.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id104423%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1106.20-1106.28"
               'contract:
               'class-type?
               'value:
               _%subklass104421%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass104358%_ _%obj104359%_ _%id104360%_)
        (let* ((_%subklass104363%_ _%subklass104358%_)
               (_%id104371%_ _%id104360%_))
          (letrec ((_%find-next-method104380%_
                    (lambda (_%klass104382%_)
                      (let _%lp104384%_ ((_%rest104386%_
                                          (class-precedence-list
                                           _%klass104382%_)))
                        (let* ((_%rest104387104395%_ _%rest104386%_)
                               (_%else104389104403%_ (lambda () '#f))
                               (_%K104391104409%_
                                (lambda (_%rest104406%_ _%klass104407%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass104363%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass104407%_)))
                                      (__mixin-find-method
                                       _%rest104406%_
                                       _%obj104359%_
                                       _%id104371%_)
                                      (_%lp104384%_ _%rest104406%_)))))
                          (if (pair? _%rest104387104395%_)
                              (let ((_%hd104392104412%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest104387104395%_)))
                                    (_%tl104393104414%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest104387104395%_))))
                                (let* ((_%klass104417%_ _%hd104392104412%_)
                                       (_%rest104419%_ _%tl104393104414%_))
                                  (_%K104391104409%_
                                   _%rest104419%_
                                   _%klass104417%_)))
                              (_%else104389104403%_)))))))
            (_%find-next-method104380%_ (class-of _%obj104359%_))))))
    (define call-next-method
      (lambda (_%subklass104331%_ _%obj104332%_ _%id104333%_ . _%args104334%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass104331%_ 'class))
            (let ((_%subklass104338%_ _%subklass104331%_))
              (if (symbol? _%id104333%_)
                  (let ((_%id104348%_ _%id104333%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass104338%_
                             _%obj104332%_
                             _%id104348%_
                             _%args104334%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1117.49-1117.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id104333%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1117.25-1117.33"
               'contract:
               'class-type?
               'value:
               _%subklass104331%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass104302%_ _%obj104303%_ _%id104304%_ . _%args104305%_)
        (let* ((_%subklass104308%_ _%subklass104302%_)
               (_%id104316%_ _%id104304%_)
               (_%$e104325%_
                (__next-method _%subklass104308%_ _%obj104303%_ _%id104316%_)))
          (if _%$e104325%_
              ((lambda (_%methodf104328%_)
                 (apply _%methodf104328%_ _%obj104303%_ _%args104305%_))
               _%$e104325%_)
              (error '"cannot find next method"
                     'object:
                     _%obj104303%_
                     'method:
                     _%id104316%_)))))
    (define write-style
      (lambda (_%we104300%_) (values (macro-writeenv-style _%we104300%_))))
    (define write-object
      (lambda (_%we104291%_ _%obj104292%_)
        (let ((_%$e104294%_ (__method-ref _%obj104292%_ ':wr)))
          (if _%$e104294%_
              ((lambda (_%method104297%_)
                 (_%method104297%_ _%obj104292%_ _%we104291%_))
               _%$e104294%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we104291%_ _%obj104292%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type104206%_)
        (letrec ((_%shadow-type-id104208%_
                  (lambda (_%type104289%_)
                    (let ((__tmp109549
                           (let ()
                             (declare (not safe))
                             (##type-name _%type104289%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp109549 '"::t"))))
                 (_%shadow-type-name104209%_
                  (lambda (_%type104287%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type104287%_))))
                 (_%make-shadow-class104210%_
                  (lambda (_%type104279%_ _%precedence-list104280%_)
                    (let* ((_%super104282%_
                            (if (pair? _%precedence-list104280%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list104280%_))
                                      '())
                                '()))
                           (_%klass104284%_
                            (make-class-type
                             (_%shadow-type-id104208%_ _%type104279%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type104279%_))
                             _%super104282%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (if (__type-extensible?
                                              _%type104279%_)
                                             '()
                                             (cons (cons 'final: '#t) '()))))
                             '#f)))
                      (let ((__tmp109550
                             (let ()
                               (declare (not safe))
                               (##type-id _%type104279%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp109550
                         _%klass104284%_))
                      _%klass104284%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again104214%_ ()
              (if (let ((__tmp109551
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp109551 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (_%again104214%_)))))
          (let ((_%$e104218%_
                 (let ((__tmp109552
                        (let ()
                          (declare (not safe))
                          (##type-id _%type104206%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp109552 '#f))))
            (if _%$e104218%_
                ((lambda (_%klass104221%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass104221%_)
                 _%$e104218%_)
                (let _%loop104224%_ ((_%super104226%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type104206%_)))
                                     (_%hierarchy104227%_ '()))
                  (if (not _%super104226%_)
                      (let _%loop104230%_ ((_%rest104232%_ _%hierarchy104227%_)
                                           (_%precedence-list104233%_ '()))
                        (let* ((_%rest104234104242%_ _%rest104232%_)
                               (_%else104236104252%_
                                (lambda ()
                                  (let ((_%klass104250%_
                                         (_%make-shadow-class104210%_
                                          _%type104206%_
                                          _%precedence-list104233%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass104250%_)))
                               (_%K104238104266%_
                                (lambda (_%rest104255%_ _%type104256%_)
                                  (let ((_%$e104258%_
                                         (let ((__tmp109553
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type104256%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp109553
                                            '#f))))
                                    (if _%$e104258%_
                                        ((lambda (_%klass104261%_)
                                           (_%loop104230%_
                                            _%rest104255%_
                                            (cons _%klass104261%_
                                                  _%precedence-list104233%_)))
                                         _%$e104258%_)
                                        (let ((_%klass104264%_
                                               (_%make-shadow-class104210%_
                                                _%type104256%_
                                                _%precedence-list104233%_)))
                                          (_%loop104230%_
                                           _%rest104255%_
                                           (cons _%klass104264%_
                                                 _%precedence-list104233%_))))))))
                          (if (pair? _%rest104234104242%_)
                              (let ((_%hd104239104269%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest104234104242%_)))
                                    (_%tl104240104271%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest104234104242%_))))
                                (let* ((_%type104274%_ _%hd104239104269%_)
                                       (_%rest104276%_ _%tl104240104271%_))
                                  (_%K104238104266%_
                                   _%rest104276%_
                                   _%type104274%_)))
                              (_%else104236104252%_))))
                      (_%loop104224%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super104226%_))
                       (cons _%super104226%_ _%hierarchy104227%_)))))))))
    (define __type
      (let* ((_%tb104195%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e104197%_ _%tb104195%_))
        (if (eq? '2 _%$e104197%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e104197%_)
                (let ((_%flonum-self-tagging-tags104200%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits104201%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e104203%_ _%flonum-self-tagging-tags104200%_))
                    (if (eq? '0 _%$e104203%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits104201%_ '2))
                            '#(fixnum
                               subtyped
                               special
                               vector
                               fixnum
                               pair
                               undefined
                               flonum)
                            '#(fixnum
                               subtyped
                               undefined
                               vector
                               special
                               pair
                               undefined
                               flonum))
                        (if (eq? '1 _%$e104203%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits104201%_ '2))
                                '#(fixnum
                                   subtyped
                                   special
                                   vector
                                   fixnum
                                   pair
                                   flonum
                                   flonum)
                                '#(fixnum
                                   subtyped
                                   undefined
                                   vector
                                   special
                                   pair
                                   flonum
                                   flonum))
                            (if (eq? '2 _%$e104203%_)
                                '#(fixnum
                                   subtyped
                                   flonum
                                   flonum
                                   special
                                   pair
                                   flonum
                                   undefined)
                                (if (eq? '3 _%$e104203%_)
                                    '#(fixnum
                                       subtyped
                                       flonum
                                       flonum
                                       special
                                       pair
                                       flonum
                                       flonum)
                                    (if (eq? '4 _%$e104203%_)
                                        '#(fixnum
                                           subtyped
                                           flonum
                                           flonum
                                           special
                                           pair
                                           flonum
                                           flonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags104200%_))))))))
                (error '"unexpected tag width" _%tb104195%_)))))
    (define __class
      (let* ((_%len104148%_
              (let () (declare (not safe)) (##vector-length __type)))
             (_%cv104150%_
              (let () (declare (not safe)) (##make-vector _%len104148%_ '#f))))
        (let _%loop104153%_ ((_%i104155%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i104155%_ _%len104148%_))
              (let* ((_%t104157%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i104155%_)))
                     (_%f104192%_
                      (if (eq? _%t104157%_ 'undefined)
                          (lambda (_%obj104160%_)
                            (error '"object type is undefined" _%obj104160%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t104157%_
                                        '(fixnum flonum pair vector)))
                              (lambda (_%obj104163%_)
                                (declare (not interrupts-enabled) (not safe))
                                (__system-class _%t104157%_))
                              (if (eq? _%t104157%_ 'subtyped)
                                  (lambda (_%obj104167%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st104170%_
                                           (##subtype _%obj104167%_)))
                                      (if (##fx= _%st104170%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass104173%_
                                                 (##structure-type
                                                  _%obj104167%_)))
                                            (if (##structure-instance-of?
                                                 _%klass104173%_
                                                 'class)
                                                _%klass104173%_
                                                (__shadow-class
                                                 _%klass104173%_)))
                                          (if (##fx= _%st104170%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj104167%_)
                                                         '1)
                                                  (__system-class 'box)
                                                  (__system-class 'values))
                                              (let ((_%$e104176%_
                                                     (##vector-ref
                                                      __subtype-id
                                                      _%st104170%_)))
                                                (if _%$e104176%_
                                                    (__system-class
                                                     _%$e104176%_)
                                                    (error '"unknown class"
                                                           'subtype:
                                                           _%st104170%_
                                                           'object:
                                                           _%obj104167%_)))))))
                                  (if (eq? _%t104157%_ 'special)
                                      (lambda (_%obj104181%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (if (char? _%obj104181%_)
                                            (__system-class 'char)
                                            (if (eq? _%obj104181%_ '())
                                                (__system-class 'null)
                                                (if (eq? _%obj104181%_ '#f)
                                                    (__system-class 'boolean)
                                                    (if (eq? _%obj104181%_ '#t)
                                                        (__system-class
                                                         'boolean)
                                                        (if (eq? _%obj104181%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void)
                    (__system-class 'void)
                    (if (eq? _%obj104181%_ '#!eof)
                        (__system-class 'eof)
                        (__system-class 'special))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t104157%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv104150%_ _%i104155%_ _%f104192%_))
                (_%loop104153%_
                 (let () (declare (not safe)) (##fx+ _%i104155%_ '1))))
              _%cv104150%_))))
    (define type-of
      (lambda (_%obj104144%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj104144%_)))))
    (define class-of
      (lambda (_%obj104135%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t104139%_ (##type _%obj104135%_))
                 (_%f104141%_ (##vector-ref __class _%t104139%_)))
            (_%f104141%_ _%obj104135%_)))))
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
      (lambda (_%id104129%_)
        (let ((_%$e104131%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id104129%_ '#f))))
          (if _%$e104131%_
              _%$e104131%_
              (error '"unknown system class" _%id104129%_)))))
    (define __make-system-class
      (lambda (_%id104124%_ _%super104125%_)
        (let ((_%klass104127%_
               (make-class-type
                _%id104124%_
                _%id104124%_
                _%super104125%_
                '()
                '((system: . #t))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id104124%_
             _%klass104127%_))
          _%klass104127%_)))))
