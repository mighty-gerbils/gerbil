(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1756721294)
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
      (let ((_%flags107952%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties107953%_ '((direct-slots:) (system: . #t)))
            (_%slot-table107954%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags107952%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table107954%_
           _%properties107953%_
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots107928%_
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
             (_%slot-vector107930%_ (list->vector (cons '#f _%slots107928%_)))
             (_%slot-table107937%_
              (let ((_%slot-table107932%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp109395
                       (lambda (_%slot107934%_ _%field107935%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107932%_
                            _%slot107934%_
                            _%field107935%_))
                         (let ((__tmp109396
                                (let ()
                                  (declare (not safe))
                                  (symbol->keyword _%slot107934%_))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table107932%_
                            __tmp109396
                            _%field107935%_))))
                      (__tmp109393
                       (let ((__tmp109394
                              (let ()
                                (declare (not safe))
                                (##length _%slots107928%_))))
                         (declare (not safe))
                         (##iota __tmp109394 '1))))
                  (declare (not safe))
                  (##for-each __tmp109395 _%slots107928%_ __tmp109393))
                _%slot-table107932%_))
             (_%flags107939%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields107945%_
              (list->vector
               (let ((__tmp109397
                      (map (lambda (_%g107940107942%_)
                             (list _%g107940107942%_ '5 '#f))
                           (drop _%slots107928%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp109397))))
             (_%properties107947%_
              (cons (cons 'direct-slots:
                          (let ()
                            (declare (not safe))
                            (__foldr1 cons '() _%slots107928%_)))
                    (cons (cons 'struct: '#t) '())))
             (_%t107949%_
              (let ((__tmp109398 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags107939%_
                 ##type-type
                 _%fields107945%_
                 __tmp109398
                 _%slot-vector107930%_
                 _%slot-table107937%_
                 _%properties107947%_
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t107949%_ _%t107949%_))
        _%t107949%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags107924%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties107925%_ '((direct-slots:) (system: . #t)))
            (_%slot-table107926%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp109399 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags107924%_
           '#f
           '#()
           __tmp109399
           '#(#f)
           _%slot-table107926%_
           _%properties107925%_
           '#f
           '#f))))
    (define class-type?
      (lambda (_%obj107922%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj107922%_ 'class))))
    (define class-type=?
      (lambda (_%x107897%_ _%y107898%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x107897%_ 'class))
            (let ((_%x107902%_ _%x107897%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y107898%_ 'class))
                  (let ((_%y107912%_ _%y107898%_))
                    (__class-type=? _%x107902%_ _%y107912%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@157.34-157.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y107898%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@157.21-157.22"
               'contract:
               'class-type?
               'value:
               _%x107897%_)
              '#!void))))
    (define __class-type=?
      (lambda (_%x107876%_ _%y107877%_)
        (let* ((_%x107880%_ _%x107876%_) (_%y107888%_ _%y107877%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x107880%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y107888%_ '1 '#f '#f))))))
    (define type-opaque?
      (lambda (_%type107862%_)
        (if (let () (declare (not safe)) (##type? _%type107862%_))
            (let ((_%type107866%_ _%type107862%_))
              (__type-opaque? _%type107866%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@171.21-171.25"
               'contract:
               '##type?
               'value:
               _%type107862%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type107850%_)
        (let* ((_%type107853%_ _%type107850%_)
               (__tmp109400
                (let ((__tmp109401
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type107853%_))))
                  (declare (not safe))
                  (##fxand __tmp109401 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp109400 type-flag-opaque))))
    (define type-extensible?
      (lambda (_%type107836%_)
        (if (let () (declare (not safe)) (##type? _%type107836%_))
            (let ((_%type107840%_ _%type107836%_))
              (__type-extensible? _%type107840%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@173.25-173.29"
               'contract:
               '##type?
               'value:
               _%type107836%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type107824%_)
        (let* ((_%type107827%_ _%type107824%_)
               (__tmp109402
                (let ((__tmp109403
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type107827%_))))
                  (declare (not safe))
                  (##fxand __tmp109403 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp109402 type-flag-extensible))))
    (define class-type-final?
      (lambda (_%type107810%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type107810%_ 'class))
            (let ((_%type107814%_ _%type107810%_))
              (__class-type-final? _%type107814%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.26-175.30"
               'contract:
               'class-type?
               'value:
               _%type107810%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type107798%_)
        (let* ((_%type107801%_ _%type107798%_)
               (__tmp109404
                (let ((__tmp109405
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type107801%_))))
                  (declare (not safe))
                  (##fxand __tmp109405 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp109404 '0))))
    (define class-type-struct?
      (lambda (_%klass107784%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107784%_ 'class))
            (let ((_%klass107788%_ _%klass107784%_))
              (__class-type-struct? _%klass107788%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@177.27-177.32"
               'contract:
               'class-type?
               'value:
               _%klass107784%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass107772%_)
        (let* ((_%klass107775%_ _%klass107772%_)
               (__tmp109406
                (let ((__tmp109407
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass107775%_))))
                  (declare (not safe))
                  (##fxand __tmp109407 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp109406 class-type-flag-struct))))
    (define class-type-sealed?
      (lambda (_%klass107758%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107758%_ 'class))
            (let ((_%klass107762%_ _%klass107758%_))
              (__class-type-sealed? _%klass107762%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@179.27-179.32"
               'contract:
               'class-type?
               'value:
               _%klass107758%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass107746%_)
        (let* ((_%klass107749%_ _%klass107746%_)
               (__tmp109408
                (let ((__tmp109409
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass107749%_))))
                  (declare (not safe))
                  (##fxand __tmp109409 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp109408 class-type-flag-sealed))))
    (define class-type-metaclass?
      (lambda (_%klass107732%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107732%_ 'class))
            (let ((_%klass107736%_ _%klass107732%_))
              (__class-type-metaclass? _%klass107736%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@181.30-181.35"
               'contract:
               'class-type?
               'value:
               _%klass107732%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass107720%_)
        (let* ((_%klass107723%_ _%klass107720%_)
               (__tmp109410
                (let ((__tmp109411
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass107723%_))))
                  (declare (not safe))
                  (##fxand __tmp109411 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp109410 class-type-flag-metaclass))))
    (define class-type-system?
      (lambda (_%klass107706%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107706%_ 'class))
            (let ((_%klass107710%_ _%klass107706%_))
              (__class-type-system? _%klass107710%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@183.27-183.32"
               'contract:
               'class-type?
               'value:
               _%klass107706%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass107694%_)
        (let* ((_%klass107697%_ _%klass107694%_)
               (__tmp109412
                (let ((__tmp109413
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass107697%_))))
                  (declare (not safe))
                  (##fxand __tmp109413 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp109412 class-type-flag-system))))
    (define make-class-type-descriptor
      (lambda (_%type-id107576%_
               _%type-name107577%_
               _%type-super107578%_
               _%precedence-list107579%_
               _%slot-vector107580%_
               _%properties107581%_
               _%constructor107582%_
               _%slot-table107583%_
               _%methods107584%_)
        (letrec ((_%make-props!107587%_
                  (lambda (_%key107663%_)
                    (letrec* ((_%ht107665%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!107666%_
                               (lambda (_%ht107687%_ _%slots107688%_)
                                 (for-each
                                  (lambda (_%g107689107691%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht107687%_
                                       _%g107689107691%_
                                       '#t)))
                                  _%slots107688%_)))
                              (_%put-alist!107667%_
                               (lambda (_%ht107676%_
                                        _%key107677%_
                                        _%alist107678%_)
                                 (let ((_%$e107680%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key107677%_
                                           _%alist107678%_))))
                                   (if _%$e107680%_
                                       ((lambda (_%g107682107684%_)
                                          (_%put-slots!107666%_
                                           _%ht107676%_
                                           _%g107682107684%_))
                                        _%$e107680%_)
                                       '#!void)))))
                      (_%put-alist!107667%_
                       _%ht107665%_
                       _%key107663%_
                       _%properties107581%_)
                      (for-each
                       (lambda (_%mixin107669%_)
                         (let ((_%alist107671%_
                                (##structure-ref
                                 _%mixin107669%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (or (let ()
                                     (declare (not safe))
                                     (agetq__0 'transparent: _%alist107671%_))
                                   (eq? '#t
                                        (let ()
                                          (declare (not safe))
                                          (agetq__0
                                           _%key107663%_
                                           _%alist107671%_))))
                               (_%put-slots!107666%_
                                _%ht107665%_
                                (class-type-slot-list _%mixin107669%_))
                               (_%put-alist!107667%_
                                _%ht107665%_
                                _%key107663%_
                                _%alist107671%_))))
                       _%precedence-list107579%_)
                      _%ht107665%_))))
          (let* ((_%transparent?107589%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'transparent: _%properties107581%_)))
                 (_%all-slots-printable?107594%_
                  (let ((_%$e107591%_ _%transparent?107589%_))
                    (if _%$e107591%_
                        _%$e107591%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'print: _%properties107581%_))))))
                 (_%printable107596%_
                  (if (not _%all-slots-printable?107594%_)
                      (_%make-props!107587%_ 'print:)
                      '#f))
                 (_%all-slots-equalable?107601%_
                  (let ((_%$e107598%_ _%transparent?107589%_))
                    (if _%$e107598%_
                        _%$e107598%_
                        (eq? '#t
                             (let ()
                               (declare (not safe))
                               (agetq__0 'equal: _%properties107581%_))))))
                 (_%equalable107603%_
                  (if (not _%all-slots-equalable?107601%_)
                      (_%make-props!107587%_ 'equal:)
                      '#f))
                 (_%first-new-field107605%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super107578%_ 'class))
                      (let ((__tmp109414
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super107578%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp109414))
                      '1))
                 (_%field-info-length107607%_
                  (let ((__tmp109415
                         (let ((__tmp109416
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector107580%_))))
                           (declare (not safe))
                           (##fx- __tmp109416 _%first-new-field107605%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp109415)))
                 (_%field-info107609%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length107607%_ '#f)))
                 (_%struct?107611%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties107581%_)))
                 (_%final?107613%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties107581%_)))
                 (_%metaclass107621%_
                  (let ((_%metaclass107614107616%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties107581%_))))
                    (if _%metaclass107614107616%_
                        (let ((_%metaclass107619%_ _%metaclass107614107616%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass107619%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id107576%_
                                     'metaclass:
                                     _%metaclass107619%_))
                          _%metaclass107619%_)
                        '#f)))
                 (_%system?107623%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties107581%_)))
                 (_%opaque?107631%_
                  (if (or _%transparent?107589%_
                          (let ()
                            (declare (not safe))
                            (agetq__0 'equal: _%properties107581%_)))
                      '#f
                      (let ((_%$e107628%_ (not _%type-super107578%_)))
                        (if _%$e107628%_
                            _%$e107628%_
                            (__type-opaque? _%type-super107578%_)))))
                 (_%type-flags107633%_
                  (let ((__tmp109421
                         (if _%final?107613%_ '0 type-flag-extensible))
                        (__tmp109420
                         (if _%opaque?107631%_ type-flag-opaque '0))
                        (__tmp109419
                         (if _%struct?107611%_ class-type-flag-struct '0))
                        (__tmp109418
                         (if _%metaclass107621%_ class-type-flag-metaclass '0))
                        (__tmp109417
                         (if _%system?107623%_ class-type-flag-system '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp109421
                             __tmp109420
                             __tmp109419
                             __tmp109418
                             __tmp109417)))
                 (_%precedence-list107641%_
                  (let ((_%$e107635%_ (memq t::t _%precedence-list107579%_)))
                    (if _%$e107635%_
                        ((lambda (_%tail107638%_)
                           (if (null? (cdr _%tail107638%_))
                               _%precedence-list107579%_
                               (error '"BUG: t::t is not last in the precedence list"
                                      'precedence-list:
                                      _%precedence-list107579%_)))
                         _%$e107635%_)
                        (let ((__tmp109422 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list107579%_ __tmp109422))))))
            (let _%loop107644%_ ((_%i107646%_ _%first-new-field107605%_)
                                 (_%j107647%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j107647%_ _%field-info-length107607%_))
                  (let* ((_%slot107649%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector107580%_ _%i107646%_)))
                         (_%flags107657%_
                          (if _%transparent?107589%_
                              '0
                              (let ((__tmp109424
                                     (if (or _%all-slots-printable?107594%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%printable107596%_
                                                _%slot107649%_
                                                '#f)))
                                         '0
                                         '1))
                                    (__tmp109423
                                     (if (or _%all-slots-equalable?107601%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%equalable107603%_
                                                _%slot107649%_
                                                '#f)))
                                         '0
                                         '4)))
                                (declare (not safe))
                                (##fxior __tmp109424 __tmp109423)))))
                    (vector-set!
                     _%field-info107609%_
                     _%j107647%_
                     _%slot107649%_)
                    (vector-set!
                     _%field-info107609%_
                     (let () (declare (not safe)) (##fx+ _%j107647%_ '1))
                     _%flags107657%_)
                    (_%loop107644%_
                     (let () (declare (not safe)) (##fx+ _%i107646%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j107647%_ '3))))
                  '#!void))
            (if _%metaclass107621%_
                (let ((_%val107660%_
                       (make-instance
                        _%metaclass107621%_
                        _%type-id107576%_
                        _%type-name107577%_
                        _%type-flags107633%_
                        _%type-super107578%_
                        _%field-info107609%_
                        _%precedence-list107641%_
                        _%slot-vector107580%_
                        _%slot-table107583%_
                        _%properties107581%_
                        _%constructor107582%_
                        _%methods107584%_)))
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%val107660%_ 'class))
                      _%val107660%_
                      (error '"bad cast" class::t _%val107660%_)))
                (let ()
                  (declare (not safe))
                  (##structure
                   class::t
                   _%type-id107576%_
                   _%type-name107577%_
                   _%type-flags107633%_
                   _%type-super107578%_
                   _%field-info107609%_
                   _%precedence-list107641%_
                   _%slot-vector107580%_
                   _%slot-table107583%_
                   _%properties107581%_
                   _%constructor107582%_
                   _%methods107584%_)))))))
    (define class-type-id
      (lambda (_%klass107574%_)
        (##structure-ref _%klass107574%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass107572%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass107572%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass107569%_ _%val107570%_)
        (##structure-set! _%klass107569%_ _%val107570%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass107564%_ _%val107566%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107564%_
           _%val107566%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass107562%_)
        (##structure-ref _%klass107562%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass107560%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass107560%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass107557%_ _%val107558%_)
        (##structure-set! _%klass107557%_ _%val107558%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass107552%_ _%val107554%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107552%_
           _%val107554%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass107550%_)
        (##structure-ref _%klass107550%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass107548%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass107548%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass107545%_ _%val107546%_)
        (##structure-set! _%klass107545%_ _%val107546%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass107540%_ _%val107542%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107540%_
           _%val107542%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass107538%_)
        (##structure-ref _%klass107538%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass107536%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass107536%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass107533%_ _%val107534%_)
        (##structure-set! _%klass107533%_ _%val107534%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass107528%_ _%val107530%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107528%_
           _%val107530%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass107526%_)
        (##structure-ref _%klass107526%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass107524%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass107524%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass107521%_ _%val107522%_)
        (##structure-set! _%klass107521%_ _%val107522%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass107516%_ _%val107518%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107516%_
           _%val107518%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass107514%_)
        (##structure-ref _%klass107514%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass107512%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass107512%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass107509%_ _%val107510%_)
        (##structure-set!
         _%klass107509%_
         _%val107510%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass107504%_ _%val107506%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107504%_
           _%val107506%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass107502%_)
        (##structure-ref _%klass107502%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass107500%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass107500%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass107497%_ _%val107498%_)
        (##structure-set!
         _%klass107497%_
         _%val107498%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass107492%_ _%val107494%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107492%_
           _%val107494%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass107490%_)
        (##structure-ref _%klass107490%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass107488%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass107488%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass107485%_ _%val107486%_)
        (##structure-set!
         _%klass107485%_
         _%val107486%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass107480%_ _%val107482%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107480%_
           _%val107482%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass107478%_)
        (##structure-ref _%klass107478%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass107476%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass107476%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass107473%_ _%val107474%_)
        (##structure-set!
         _%klass107473%_
         _%val107474%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass107468%_ _%val107470%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107468%_
           _%val107470%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass107466%_)
        (##structure-ref _%klass107466%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass107464%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass107464%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass107461%_ _%val107462%_)
        (##structure-set!
         _%klass107461%_
         _%val107462%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass107456%_ _%val107458%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107456%_
           _%val107458%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass107454%_)
        (##structure-ref _%klass107454%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass107452%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass107452%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass107449%_ _%val107450%_)
        (##structure-set!
         _%klass107449%_
         _%val107450%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass107444%_ _%val107446%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass107444%_
           _%val107446%_
           '11
           class::t
           'methods))))
    (define class-type-slot-list
      (lambda (_%klass107430%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107430%_ 'class))
            (let ((_%klass107434%_ _%klass107430%_))
              (__class-type-slot-list _%klass107434%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@317.29-317.34"
               'contract:
               'class-type?
               'value:
               _%klass107430%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass107418%_)
        (let ((_%klass107421%_ _%klass107418%_))
          (cdr (vector->list
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass107421%_ '7 '#f '#f)))))))
    (define class-type-field-count
      (lambda (_%klass107404%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107404%_ 'class))
            (let ((_%klass107408%_ _%klass107404%_))
              (__class-type-field-count _%klass107408%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@320.31-320.36"
               'contract:
               'class-type?
               'value:
               _%klass107404%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass107392%_)
        (let* ((_%klass107395%_ _%klass107392%_)
               (__tmp109425
                (let ((__tmp109426
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass107395%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp109426))))
          (declare (not safe))
          (##fx- __tmp109425 '1))))
    (define class-type-seal!
      (lambda (_%klass107378%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107378%_ 'class))
            (let ((_%klass107382%_ _%klass107378%_))
              (__class-type-seal! _%klass107382%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@323.25-323.30"
               'contract:
               'class-type?
               'value:
               _%klass107378%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass107366%_)
        (let ((_%klass107369%_ _%klass107366%_))
          (let ((__tmp109427
                 (let ((__tmp109428
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass107369%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp109428))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass107369%_
             __tmp109427
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define substruct?
      (lambda (_%maybe-sub-struct107341%_ _%maybe-super-struct107342%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct107341%_ 'class))
            (let ((_%maybe-sub-struct107346%_ _%maybe-sub-struct107341%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct107342%_
                     'class))
                  (let ((_%maybe-super-struct107356%_
                         _%maybe-super-struct107342%_))
                    (__substruct?
                     _%maybe-sub-struct107346%_
                     _%maybe-super-struct107356%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@330.47-330.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct107342%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@330.19-330.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct107341%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct107310%_ _%maybe-super-struct107311%_)
        (let* ((_%maybe-sub-struct107314%_ _%maybe-sub-struct107310%_)
               (_%maybe-super-struct107322%_ _%maybe-super-struct107311%_)
               (_%maybe-super-struct-id107331%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct107322%_))))
          (let _%lp107333%_ ((_%super-struct107335%_
                              _%maybe-sub-struct107314%_))
            (if (not _%super-struct107335%_)
                '#f
                (if (eq? _%maybe-super-struct-id107331%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct107335%_)))
                    '#t
                    (_%lp107333%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct107335%_)))))))))
    (define base-struct/1
      (lambda (_%klass107305%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass107305%_ 'class))
            (if (__class-type-struct? _%klass107305%_)
                _%klass107305%_
                (let () (declare (not safe)) (##type-super _%klass107305%_)))
            (if (not _%klass107305%_)
                '#f
                (error '"not a class or false" _%klass107305%_)))))
    (define base-struct/2
      (lambda (_%klass1107290%_ _%klass2107291%_)
        (let ((_%s1107293%_ (base-struct/1 _%klass1107290%_))
              (_%s2107294%_ (base-struct/1 _%klass2107291%_)))
          (if (or (not _%s1107293%_)
                  (and _%s2107294%_ (substruct? _%s1107293%_ _%s2107294%_)))
              _%s2107294%_
              (if (or (not _%s2107294%_)
                      (and _%s1107293%_
                           (substruct? _%s2107294%_ _%s1107293%_)))
                  _%s1107293%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1107290%_
                         _%klass2107291%_
                         _%s1107293%_
                         _%s2107294%_))))))
    (define base-struct/list
      (lambda (_%all-supers107174%_)
        (let* ((_%all-supers107175107200%_ _%all-supers107174%_)
               (_%E107180107204%_
                (lambda ()
                  (error '"No clause matching"
                         _%all-supers107175107200%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%K107198107287%_ (lambda () '#f))
                (_%K107195107273%_
                 (lambda (_%x107271%_) (base-struct/1 _%x107271%_)))
                (_%K107190107250%_
                 (lambda (_%y107247%_ _%x107248%_)
                   (base-struct/2 _%x107248%_ _%y107247%_)))
                (_%K107181107211%_
                 (lambda (_%y107208%_ _%x107209%_)
                   (let ()
                     (declare (not safe))
                     (__foldr1 base-struct/2 _%x107209%_ _%y107208%_)))))
            (let* ((_%__match109387109388%_
                    (lambda (_%hd107182107214%_ _%tl107183107216%_)
                      (let ((_%x107219%_ _%hd107182107214%_))
                        (letrec ((_%splice-rest107185107221%_
                                  (lambda (_%rest107189107228%_ _%y107230%_)
                                    (if (null? _%rest107189107228%_)
                                        (_%K107181107211%_
                                         _%y107230%_
                                         _%x107219%_)
                                        (_%E107180107204%_))))
                                 (_%splice-try107187107223%_
                                  (lambda (_%hd107188107232%_
                                           _%rest107189107234%_
                                           _%y107184107235%_)
                                    (let ((_%y107238%_ _%hd107188107232%_))
                                      (_%splice-loop107186107225%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%rest107189107234%_))
                                       (cons _%y107238%_ _%y107184107235%_)))))
                                 (_%splice-loop107186107225%_
                                  (lambda (_%rest107189107240%_
                                           _%y107184107241%_)
                                    (if (pair? _%rest107189107240%_)
                                        (_%splice-try107187107223%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%rest107189107240%_))
                                         _%rest107189107240%_
                                         _%y107184107241%_)
                                        (_%splice-rest107185107221%_
                                         _%rest107189107240%_
                                         (reverse _%y107184107241%_))))))
                          (_%splice-loop107186107225%_
                           _%tl107183107216%_
                           '())))))
                   (_%try-match107177107283%_
                    (lambda ()
                      (if (pair? _%all-supers107175107200%_)
                          (let ((_%tl107197107278%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%all-supers107175107200%_)))
                                (_%hd107196107276%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%all-supers107175107200%_))))
                            (if (null? _%tl107197107278%_)
                                (let ((_%x107281%_ _%hd107196107276%_))
                                  (base-struct/1 _%x107281%_))
                                (if (pair? _%tl107197107278%_)
                                    (let ((_%tl107194107262%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%tl107197107278%_)))
                                          (_%hd107193107260%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%tl107197107278%_))))
                                      (if (null? _%tl107194107262%_)
                                          (let ((_%x107258%_
                                                 _%hd107196107276%_)
                                                (_%y107265%_
                                                 _%hd107193107260%_))
                                            (_%K107190107250%_
                                             _%y107265%_
                                             _%x107258%_))
                                          (_%__match109387109388%_
                                           _%hd107196107276%_
                                           _%tl107197107278%_)))
                                    (_%__match109387109388%_
                                     _%hd107196107276%_
                                     _%tl107197107278%_))))
                          (_%E107180107204%_)))))
              (if (null? _%all-supers107175107200%_)
                  (_%K107198107287%_)
                  (_%try-match107177107283%_)))))))
    (define base-struct
      (lambda _%all-supers107172%_ (base-struct/list _%all-supers107172%_)))
    (define find-super-constructor
      (lambda (_%super107123%_)
        (let _%lp107125%_ ((_%rest107127%_ _%super107123%_)
                           (_%constructor107128%_ '#f))
          (let* ((_%rest107129107137%_ _%rest107127%_)
                 (_%else107131107145%_ (lambda () _%constructor107128%_))
                 (_%K107133107160%_
                  (lambda (_%rest107148%_ _%hd107149%_)
                    (let ((_%$e107151%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd107149%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e107151%_
                          ((lambda (_%xconstructor107154%_)
                             (if (or (not _%constructor107128%_)
                                     (eq? _%constructor107128%_
                                          _%xconstructor107154%_))
                                 (_%lp107125%_
                                  _%rest107148%_
                                  _%xconstructor107154%_)
                                 (error '"conflicting implicit constructors"
                                        _%constructor107128%_
                                        _%xconstructor107154%_)))
                           _%$e107151%_)
                          (_%lp107125%_
                           _%rest107148%_
                           _%constructor107128%_))))))
            (if (pair? _%rest107129107137%_)
                (let ((_%hd107134107163%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest107129107137%_)))
                      (_%tl107135107165%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest107129107137%_))))
                  (let* ((_%hd107168%_ _%hd107134107163%_)
                         (_%rest107170%_ _%tl107135107165%_))
                    (_%K107133107160%_ _%rest107170%_ _%hd107168%_)))
                (_%else107131107145%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list107099%_ _%direct-slots107100%_)
        (let* ((_%next-slot107102%_ '1)
               (_%slot-table107104%_
                (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
               (_%r-slots107106%_ '(__class))
               (_%process-slot107110%_
                (lambda (_%slot107108%_)
                  (if (symbol? _%slot107108%_)
                      '#!void
                      (error '"invalid slot name" _%slot107108%_))
                  (if (eq? (let ()
                             (declare (not safe))
                             (symbolic-table-ref
                              _%slot-table107104%_
                              _%slot107108%_
                              absent-value))
                           absent-value)
                      (begin
                        (let ()
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table107104%_
                           _%slot107108%_
                           _%next-slot107102%_))
                        (let ((__tmp109429
                               (let ()
                                 (declare (not safe))
                                 (symbol->keyword _%slot107108%_))))
                          (declare (not safe))
                          (symbolic-table-set!
                           _%slot-table107104%_
                           __tmp109429
                           _%next-slot107102%_))
                        (set! _%r-slots107106%_
                              (cons _%slot107108%_ _%r-slots107106%_))
                        (set! _%next-slot107102%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%next-slot107102%_ '1))))
                      '#!void)))
               (_%process-slots107116%_
                (lambda (_%g107111107113%_)
                  (for-each _%process-slot107110%_ _%g107111107113%_))))
          (let ((__tmp109431
                 (lambda (_%mixin107119%_)
                   (_%process-slots107116%_
                    (let ((__tmp109432
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%mixin107119%_
                              '9
                              '#f
                              '#f))))
                      (declare (not safe))
                      (agetq__% 'direct-slots: __tmp109432 '())))))
                (__tmp109430 (reverse _%class-precedence-list107099%_)))
            (declare (not safe))
            (##for-each __tmp109431 __tmp109430))
          (_%process-slots107116%_ _%direct-slots107100%_)
          (let ((_%slot-vector107121%_
                 (list->vector
                  (let ()
                    (declare (not safe))
                    (##reverse _%r-slots107106%_)))))
            (values _%slot-vector107121%_ _%slot-table107104%_)))))
    (define make-class-type
      (lambda (_%id107024%_
               _%name107025%_
               _%direct-supers107026%_
               _%direct-slots107027%_
               _%properties107028%_
               _%constructor107029%_)
        (if (symbol? _%id107024%_)
            (let ((_%id107033%_ _%id107024%_))
              (if (symbol? _%name107025%_)
                  (let ((_%name107043%_ _%name107025%_))
                    (if (list? _%direct-supers107026%_)
                        (let ((_%direct-supers107053%_
                               _%direct-supers107026%_))
                          (if (list? _%direct-slots107027%_)
                              (let ((_%direct-slots107063%_
                                     _%direct-slots107027%_))
                                (if (list? _%properties107028%_)
                                    (let ((_%properties107073%_
                                           _%properties107028%_))
                                      (if ((lambda (_%$obj107082%_)
                                             (or (not _%$obj107082%_)
                                                 (symbol? _%$obj107082%_)))
                                           _%constructor107029%_)
                                          (let ((_%constructor107089%_
                                                 _%constructor107029%_))
                                            (__make-class-type
                                             _%id107033%_
                                             _%name107043%_
                                             _%direct-supers107053%_
                                             _%direct-slots107063%_
                                             _%properties107073%_
                                             _%constructor107089%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@427.24-427.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor107029%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@426.24-426.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties107028%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@425.24-425.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots107027%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@424.24-424.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers107026%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@423.24-423.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name107025%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@422.24-422.26"
               'contract:
               'symbol?
               'value:
               _%id107024%_)
              '#!void))))
    (define __make-class-type
      (lambda (_%id106893%_
               _%name106894%_
               _%direct-supers106895%_
               _%direct-slots106896%_
               _%properties106897%_
               _%constructor106898%_)
        (let* ((_%id106901%_ _%id106893%_)
               (_%name106909%_ _%name106894%_)
               (_%direct-supers106917%_ _%direct-supers106895%_)
               (_%direct-slots106925%_ _%direct-slots106896%_)
               (_%properties106933%_ _%properties106897%_)
               (_%constructor106941%_ _%constructor106898%_))
          (let ((_%$e106953%_
                 (let ((__tmp109433
                        (lambda (_%$obj106950%_)
                          (not (let ()
                                 (declare (not safe))
                                 (##structure-instance-of?
                                  _%$obj106950%_
                                  'class))))))
                   (declare (not safe))
                   (__find __tmp109433 _%direct-supers106917%_))))
            (if _%$e106953%_
                ((lambda (_%g106955106957%_)
                   (error '"Illegal super class; not a class descriptor"
                          _%g106955106957%_))
                 _%$e106953%_)
                (let ((_%$e106960%_
                       (let ()
                         (declare (not safe))
                         (__find __class-type-final?
                                 _%direct-supers106917%_))))
                  (if _%$e106960%_
                      ((lambda (_%g106962106964%_)
                         (error '"Cannot extend final class"
                                _%g106962106964%_))
                       _%$e106960%_)
                      '#!void))))
          (let ((_g109434_ (compute-precedence-list _%direct-supers106917%_)))
            (begin
              (let ((_g109435_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g109434_)
                           (##values-length _g109434_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g109435_ 2)))
                    (error "Context expects 2 values" _g109435_)))
              (let ((_%precedence-list106967%_
                     (let () (declare (not safe)) (##values-ref _g109434_ 0)))
                    (_%struct-super106968%_
                     (let () (declare (not safe)) (##values-ref _g109434_ 1))))
                (let ((_g109436_
                       (compute-class-slots
                        _%precedence-list106967%_
                        _%direct-slots106925%_)))
                  (begin
                    (let ((_g109437_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g109436_)
                                 (##values-length _g109436_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g109437_ 2)))
                          (error "Context expects 2 values" _g109437_)))
                    (let ((_%slot-vector106970%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g109436_ 0)))
                          (_%slot-table106971%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g109436_ 1))))
                      (let* ((_%properties106973%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots106925%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers106917%_)
                                          _%properties106933%_)))
                             (_%constructor*106978%_
                              (let ((_%$e106975%_ _%constructor106941%_))
                                (if _%$e106975%_
                                    _%$e106975%_
                                    (find-super-constructor
                                     _%direct-supers106917%_))))
                             (_%precedence-list107021%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties106973%_))
                                      (memq object::t
                                            _%precedence-list106967%_))
                                  _%precedence-list106967%_
                                  (let _%loop106983%_ ((_%tail106985%_
                                                        _%precedence-list106967%_)
                                                       (_%head106986%_ '()))
                                    (let* ((_%tail106987106995%_
                                            _%tail106985%_)
                                           (_%else106989107003%_
                                            (lambda ()
                                              (let ((__tmp109438
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (__foldl1
                                                 cons
                                                 __tmp109438
                                                 _%head106986%_))))
                                           (_%K106991107009%_
                                            (lambda (_%rest107006%_
                                                     _%hd107007%_)
                                              (if (eq? _%hd107007%_ t::t)
                                                  (let ((__tmp109439
                                                         (cons object::t
                                                               _%tail106985%_)))
                                                    (declare (not safe))
                                                    (__foldl1
                                                     cons
                                                     __tmp109439
                                                     _%head106986%_))
                                                  (_%loop106983%_
                                                   _%rest107006%_
                                                   (cons _%hd107007%_
                                                         _%head106986%_))))))
                                      (if (pair? _%tail106987106995%_)
                                          (let ((_%hd106992107012%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%tail106987106995%_)))
                                                (_%tl106993107014%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%tail106987106995%_))))
                                            (let* ((_%hd107017%_
                                                    _%hd106992107012%_)
                                                   (_%rest107019%_
                                                    _%tl106993107014%_))
                                              (_%K106991107009%_
                                               _%rest107019%_
                                               _%hd107017%_)))
                                          (_%else106989107003%_)))))))
                        (make-class-type-descriptor
                         _%id106901%_
                         _%name106909%_
                         _%struct-super106968%_
                         _%precedence-list107021%_
                         _%slot-vector106970%_
                         _%properties106973%_
                         _%constructor*106978%_
                         _%slot-table106971%_
                         '#f)))))))))))
    (define class-precedence-list
      (lambda (_%klass106879%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106879%_ 'class))
            (let ((_%klass106883%_ _%klass106879%_))
              (__class-precedence-list _%klass106883%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@460.30-460.35"
               'contract:
               'class-type?
               'value:
               _%klass106879%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass106867%_)
        (let ((_%klass106870%_ _%klass106867%_))
          (cons _%klass106870%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass106870%_ '6 '#f '#f))))))
    (define compute-precedence-list
      (lambda (_%direct-supers106864%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers106864%_))))
    (define make-class-predicate
      (lambda (_%klass106850%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106850%_ 'class))
            (let ((_%klass106854%_ _%klass106850%_))
              (__make-class-predicate _%klass106854%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@472.29-472.34"
               'contract:
               'class-type?
               'value:
               _%klass106850%_)
              '#!void))))
    (define __make-class-predicate
      (lambda (_%klass106821%_)
        (let* ((_%klass106824%_ _%klass106821%_)
               (_%tid106833%_
                (let () (declare (not safe)) (##type-id _%klass106824%_))))
          (if (__class-type-final? _%klass106824%_)
              (lambda (_%g106835106837%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%g106835106837%_
                   _%tid106833%_)))
              (if (__class-type-struct? _%klass106824%_)
                  (lambda (_%g106840106842%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%g106840106842%_
                       _%tid106833%_)))
                  (lambda (_%g106845106847%_)
                    (__class-instance? _%klass106824%_ _%g106845106847%_)))))))
    (define make-class-slot-accessor
      (lambda (_%klass106796%_ _%slot106797%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106796%_ 'class))
            (let ((_%klass106801%_ _%klass106796%_))
              (if (symbol? _%slot106797%_)
                  (let ((_%slot106811%_ _%slot106797%_))
                    (__make-class-slot-accessor
                     _%klass106801%_
                     _%slot106811%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@503.50-503.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot106797%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@503.33-503.38"
               'contract:
               'class-type?
               'value:
               _%klass106796%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass106764%_ _%slot106765%_)
        (let* ((_%klass106768%_ _%klass106764%_)
               (_%slot106776%_ _%slot106765%_)
               (_%field106785%_
                (let ((__tmp109440
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass106768%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp109440 _%slot106776%_ '#f))))
          (if (not _%field106785%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass106768%_
                       'slot:
                       _%slot106776%_)
                '#!void)
              (if (__class-type-final? _%klass106768%_)
                  (make-final-slot-accessor
                   _%klass106768%_
                   _%slot106776%_
                   _%field106785%_)
                  (if (__class-type-struct? _%klass106768%_)
                      (make-struct-slot-accessor
                       _%klass106768%_
                       _%slot106776%_
                       _%field106785%_)
                      (if (let ((_%strukt106791%_
                                 (base-struct/1 _%klass106768%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt106791%_
                                    'class))
                                 (let ((__tmp109441
                                        (let ((__tmp109442
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt106791%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp109442))))
                                   (declare (not safe))
                                   (##fx< _%field106785%_ __tmp109441))))
                          (make-struct-subclass-slot-accessor
                           _%klass106768%_
                           _%slot106776%_
                           _%field106785%_)
                          (make-class-cached-slot-accessor
                           _%klass106768%_
                           _%slot106776%_
                           _%field106785%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass106739%_ _%slot106740%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106739%_ 'class))
            (let ((_%klass106744%_ _%klass106739%_))
              (if (symbol? _%slot106740%_)
                  (let ((_%slot106754%_ _%slot106740%_))
                    (__make-class-slot-mutator _%klass106744%_ _%slot106754%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@511.49-511.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot106740%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@511.32-511.37"
               'contract:
               'class-type?
               'value:
               _%klass106739%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass106707%_ _%slot106708%_)
        (let* ((_%klass106711%_ _%klass106707%_)
               (_%slot106719%_ _%slot106708%_)
               (_%field106728%_
                (let ((__tmp109443
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass106711%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp109443 _%slot106719%_ '#f))))
          (if (not _%field106728%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass106711%_
                       'slot:
                       _%slot106719%_)
                '#!void)
              (if (__class-type-final? _%klass106711%_)
                  (make-final-slot-mutator
                   _%klass106711%_
                   _%slot106719%_
                   _%field106728%_)
                  (if (__class-type-struct? _%klass106711%_)
                      (make-struct-slot-mutator
                       _%klass106711%_
                       _%slot106719%_
                       _%field106728%_)
                      (if (let ((_%strukt106734%_
                                 (base-struct/1 _%klass106711%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt106734%_
                                    'class))
                                 (let ((__tmp109444
                                        (let ((__tmp109445
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt106734%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp109445))))
                                   (declare (not safe))
                                   (##fx< _%field106728%_ __tmp109444))))
                          (make-struct-subclass-slot-mutator
                           _%klass106711%_
                           _%slot106719%_
                           _%field106728%_)
                          (make-class-cached-slot-mutator
                           _%klass106711%_
                           _%slot106719%_
                           _%field106728%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass106682%_ _%slot106683%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106682%_ 'class))
            (let ((_%klass106687%_ _%klass106682%_))
              (if (symbol? _%slot106683%_)
                  (let ((_%slot106697%_ _%slot106683%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass106687%_
                     _%slot106697%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@519.60-519.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot106683%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@519.43-519.48"
               'contract:
               'class-type?
               'value:
               _%klass106682%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass106650%_ _%slot106651%_)
        (let* ((_%klass106654%_ _%klass106650%_)
               (_%slot106662%_ _%slot106651%_)
               (_%field106671%_
                (let ((__tmp109446
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass106654%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp109446 _%slot106662%_ '#f))))
          (if (not _%field106671%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass106654%_
                       'slot:
                       _%slot106662%_)
                '#!void)
              (if (__class-type-final? _%klass106654%_)
                  (make-struct-slot-unchecked-accessor
                   _%klass106654%_
                   _%slot106662%_
                   _%field106671%_)
                  (if (__class-type-struct? _%klass106654%_)
                      (make-struct-slot-unchecked-accessor
                       _%klass106654%_
                       _%slot106662%_
                       _%field106671%_)
                      (if (let ((_%strukt106677%_
                                 (base-struct/1 _%klass106654%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt106677%_
                                    'class))
                                 (let ((__tmp109447
                                        (let ((__tmp109448
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt106677%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp109448))))
                                   (declare (not safe))
                                   (##fx< _%field106671%_ __tmp109447))))
                          (make-struct-slot-unchecked-accessor
                           _%klass106654%_
                           _%slot106662%_
                           _%field106671%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass106654%_
                           _%slot106662%_
                           _%field106671%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass106625%_ _%slot106626%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106625%_ 'class))
            (let ((_%klass106630%_ _%klass106625%_))
              (if (symbol? _%slot106626%_)
                  (let ((_%slot106640%_ _%slot106626%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass106630%_
                     _%slot106640%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@527.59-527.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot106626%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@527.42-527.47"
               'contract:
               'class-type?
               'value:
               _%klass106625%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass106593%_ _%slot106594%_)
        (let* ((_%klass106597%_ _%klass106593%_)
               (_%slot106605%_ _%slot106594%_)
               (_%field106614%_
                (let ((__tmp109449
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass106597%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp109449 _%slot106605%_ '#f))))
          (if (not _%field106614%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass106597%_
                       'slot:
                       _%slot106605%_)
                '#!void)
              (if (__class-type-final? _%klass106597%_)
                  (make-struct-slot-unchecked-mutator
                   _%klass106597%_
                   _%slot106605%_
                   _%field106614%_)
                  (if (__class-type-struct? _%klass106597%_)
                      (make-struct-slot-unchecked-mutator
                       _%klass106597%_
                       _%slot106605%_
                       _%field106614%_)
                      (if (let ((_%strukt106620%_
                                 (base-struct/1 _%klass106597%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt106620%_
                                    'class))
                                 (let ((__tmp109450
                                        (let ((__tmp109451
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt106620%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp109451))))
                                   (declare (not safe))
                                   (##fx< _%field106614%_ __tmp109450))))
                          (make-struct-slot-unchecked-mutator
                           _%klass106597%_
                           _%slot106605%_
                           _%field106614%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass106597%_
                           _%slot106605%_
                           _%field106614%_))))))))
    (define not-an-instance__%
      (lambda (_%object106577%_ _%class106578%_ _%slot106579%_)
        (apply error
               '"not an instance"
               'object:
               _%object106577%_
               'class:
               _%class106578%_
               (if _%slot106579%_
                   (cons 'slot: (cons _%slot106579%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object106584%_ _%class106585%_)
        (let ((_%slot106587%_ '#f))
          (not-an-instance__%
           _%object106584%_
           _%class106585%_
           _%slot106587%_))))
    (define not-an-instance
      (lambda _g109452_
        (let ((_g109453_ (let () (declare (not safe)) (##length _g109452_))))
          (cond ((let () (declare (not safe)) (##fx= _g109453_ 2))
                 (apply not-an-instance__0 _g109452_))
                ((let () (declare (not safe)) (##fx= _g109453_ 3))
                 (apply not-an-instance__% _g109452_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g109452_))))))
    (define make-final-slot-accessor
      (lambda (_%klass106570%_ _%slot106571%_ _%field106572%_)
        (lambda (_%obj106574%_)
          (##direct-structure-ref
           _%obj106574%_
           _%field106572%_
           _%klass106570%_
           _%slot106571%_))))
    (define make-final-slot-mutator
      (lambda (_%klass106563%_ _%slot106564%_ _%field106565%_)
        (lambda (_%obj106567%_ _%val106568%_)
          (##direct-structure-set!
           _%obj106567%_
           _%val106568%_
           _%field106565%_
           _%klass106563%_
           _%slot106564%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass106557%_ _%slot106558%_ _%field106559%_)
        (lambda (_%obj106561%_)
          (##structure-ref
           _%obj106561%_
           _%field106559%_
           _%klass106557%_
           _%slot106558%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass106550%_ _%slot106551%_ _%field106552%_)
        (lambda (_%obj106554%_ _%val106555%_)
          (##structure-set!
           _%obj106554%_
           _%val106555%_
           _%field106552%_
           _%klass106550%_
           _%slot106551%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass106544%_ _%slot106545%_ _%field106546%_)
        (lambda (_%obj106548%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj106548%_
             _%field106546%_
             _%klass106544%_
             _%slot106545%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass106537%_ _%slot106538%_ _%field106539%_)
        (lambda (_%obj106541%_ _%val106542%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj106541%_
             _%val106542%_
             _%field106539%_
             _%klass106537%_
             _%slot106538%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass106531%_ _%slot106532%_ _%field106533%_)
        (lambda (_%obj106535%_)
          (if (class-instance? _%klass106531%_ _%obj106535%_)
              (unchecked-slot-ref _%obj106535%_ _%field106533%_)
              (not-an-instance__%
               _%obj106535%_
               _%klass106531%_
               _%slot106532%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass106524%_ _%slot106525%_ _%field106526%_)
        (lambda (_%obj106528%_ _%val106529%_)
          (if (class-instance? _%klass106524%_ _%obj106528%_)
              (unchecked-field-set!
               _%obj106528%_
               _%field106526%_
               _%val106529%_)
              (not-an-instance__%
               _%obj106528%_
               _%klass106524%_
               _%slot106525%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass106515%_ _%slot106516%_ _%field106517%_)
        (lambda (_%obj106519%_)
          (if (let ((__tmp109454
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass106515%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj106519%_ __tmp109454))
              (unchecked-field-ref _%obj106519%_ _%field106517%_)
              (if (class-instance? _%klass106515%_ _%obj106519%_)
                  (unchecked-slot-ref _%obj106519%_ _%slot106516%_)
                  (not-an-instance__%
                   _%obj106519%_
                   _%klass106515%_
                   _%slot106516%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass106505%_ _%slot106506%_ _%field106507%_)
        (lambda (_%obj106509%_ _%val106510%_)
          (if (let ((__tmp109455
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass106505%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj106509%_ __tmp109455))
              (unchecked-field-set!
               _%obj106509%_
               _%field106507%_
               _%val106510%_)
              (if (class-instance? _%klass106505%_ _%obj106509%_)
                  (unchecked-slot-set!
                   _%obj106509%_
                   _%slot106506%_
                   _%val106510%_)
                  (not-an-instance__%
                   _%obj106509%_
                   _%klass106505%_
                   _%slot106506%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass106499%_ _%slot106500%_ _%field106501%_)
        (lambda (_%obj106503%_)
          (if (let ((__tmp109456
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass106499%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj106503%_ __tmp109456))
              (unchecked-field-ref _%obj106503%_ _%field106501%_)
              (unchecked-slot-ref _%obj106503%_ _%slot106500%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass106492%_ _%slot106493%_ _%field106494%_)
        (lambda (_%obj106496%_ _%val106497%_)
          (if (let ((__tmp109457
                     (let ()
                       (declare (not safe))
                       (##type-id _%klass106492%_))))
                (declare (not safe))
                (##structure-direct-instance-of? _%obj106496%_ __tmp109457))
              (unchecked-field-set!
               _%obj106496%_
               _%field106494%_
               _%val106497%_)
              (unchecked-slot-set!
               _%obj106496%_
               _%slot106493%_
               _%val106497%_)))))
    (define class-slot-offset
      (lambda (_%klass106467%_ _%slot106468%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106467%_ 'class))
            (let ((_%klass106472%_ _%klass106467%_))
              (if (let () (declare (not safe)) (symbolic? _%slot106468%_))
                  (let ((_%slot106482%_ _%slot106468%_))
                    (__class-slot-offset _%klass106472%_ _%slot106482%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@589.43-589.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot106468%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@589.26-589.31"
               'contract:
               'class-type?
               'value:
               _%klass106467%_)
              '#!void))))
    (define __class-slot-offset
      (lambda (_%klass106446%_ _%slot106447%_)
        (let* ((_%klass106450%_ _%klass106446%_)
               (_%slot106458%_ _%slot106447%_)
               (__tmp109458
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass106450%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp109458 _%slot106458%_ '#f))))
    (define class-slot-ref
      (lambda (_%klass106420%_ _%obj106421%_ _%slot106422%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106420%_ 'class))
            (let ((_%klass106426%_ _%klass106420%_))
              (if (let () (declare (not safe)) (symbolic? _%slot106422%_))
                  (let ((_%slot106436%_ _%slot106422%_))
                    (__class-slot-ref
                     _%klass106426%_
                     _%obj106421%_
                     _%slot106436%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@592.44-592.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot106422%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@592.23-592.28"
               'contract:
               'class-type?
               'value:
               _%klass106420%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass106396%_ _%obj106397%_ _%slot106398%_)
        (let* ((_%klass106401%_ _%klass106396%_)
               (_%slot106409%_ _%slot106398%_))
          (if (__class-instance? _%klass106401%_ _%obj106397%_)
              (let ((_%off106418%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj106397%_))
                      _%slot106409%_)))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj106397%_
                 _%off106418%_
                 _%klass106401%_
                 _%slot106409%_))
              (not-an-instance__0 _%obj106397%_ _%klass106401%_)))))
    (define class-slot-set!
      (lambda (_%klass106369%_ _%obj106370%_ _%slot106371%_ _%val106372%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106369%_ 'class))
            (let ((_%klass106376%_ _%klass106369%_))
              (if (let () (declare (not safe)) (symbolic? _%slot106371%_))
                  (let ((_%slot106386%_ _%slot106371%_))
                    (__class-slot-set!
                     _%klass106376%_
                     _%obj106370%_
                     _%slot106386%_
                     _%val106372%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@598.45-598.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot106371%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@598.24-598.29"
               'contract:
               'class-type?
               'value:
               _%klass106369%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass106344%_ _%obj106345%_ _%slot106346%_ _%val106347%_)
        (let* ((_%klass106350%_ _%klass106344%_)
               (_%slot106358%_ _%slot106346%_))
          (if (__class-instance? _%klass106350%_ _%obj106345%_)
              (let ((_%off106367%_
                     (class-slot-offset
                      (let ()
                        (declare (not safe))
                        (##structure-type _%obj106345%_))
                      _%slot106358%_)))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj106345%_
                 _%val106347%_
                 _%off106367%_
                 _%klass106350%_
                 _%slot106358%_))
              (not-an-instance__0 _%obj106345%_ _%klass106350%_)))))
    (define unchecked-field-ref
      (lambda (_%obj106341%_ _%off106342%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj106341%_ _%off106342%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj106337%_ _%off106338%_ _%val106339%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj106337%_
           _%val106339%_
           _%off106338%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj106334%_ _%slot106335%_)
        (unchecked-field-ref
         _%obj106334%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj106334%_))
          _%slot106335%_))))
    (define unchecked-slot-set!
      (lambda (_%obj106330%_ _%slot106331%_ _%val106332%_)
        (unchecked-field-set!
         _%obj106330%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj106330%_))
          _%slot106331%_)
         _%val106332%_)))
    (define slot-ref__%
      (lambda (_%obj106292%_ _%slot106293%_ _%E106294%_)
        (if (symbol? _%slot106293%_)
            (let ((_%slot106298%_ _%slot106293%_))
              (if (procedure? _%E106294%_)
                  (let ((_%E106308%_ _%E106294%_))
                    (__slot-ref__% _%obj106292%_ _%slot106298%_ _%E106308%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@621.38-621.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E106294%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@621.21-621.25"
               'contract:
               'symbol?
               'value:
               _%slot106293%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj106321%_ _%slot106322%_)
        (let ((_%E106324%_ __slot-error))
          (slot-ref__% _%obj106321%_ _%slot106322%_ _%E106324%_))))
    (define slot-ref
      (lambda _g109459_
        (let ((_g109460_ (let () (declare (not safe)) (##length _g109459_))))
          (cond ((let () (declare (not safe)) (##fx= _g109460_ 2))
                 (apply slot-ref__0 _g109459_))
                ((let () (declare (not safe)) (##fx= _g109460_ 3))
                 (apply slot-ref__% _g109459_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g109459_))))))
    (define __slot-ref__%
      (lambda (_%obj106248%_ _%slot106249%_ _%E106250%_)
        (let* ((_%slot106253%_ _%slot106249%_)
               (_%E106261%_ _%E106250%_)
               (_%klass106270%_ (class-of _%obj106248%_))
               (_%$e106273%_
                (__class-slot-offset _%klass106270%_ _%slot106253%_)))
          (if _%$e106273%_
              ((lambda (_%off106276%_)
                 (unchecked-field-ref _%obj106248%_ _%off106276%_))
               _%$e106273%_)
              (let ()
                (declare (not safe))
                (_%E106261%_ _%obj106248%_ _%slot106253%_))))))
    (define __slot-ref__0
      (lambda (_%obj106282%_ _%slot106283%_)
        (let ((_%E106285%_ __slot-error))
          (__slot-ref__% _%obj106282%_ _%slot106283%_ _%E106285%_))))
    (define __slot-ref
      (lambda _g109461_
        (let ((_g109462_ (let () (declare (not safe)) (##length _g109461_))))
          (cond ((let () (declare (not safe)) (##fx= _g109462_ 2))
                 (apply __slot-ref__0 _g109461_))
                ((let () (declare (not safe)) (##fx= _g109462_ 3))
                 (apply __slot-ref__% _g109461_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g109461_))))))
    (define slot-set!__%
      (lambda (_%obj106206%_ _%slot106207%_ _%val106208%_ _%E106209%_)
        (if (symbol? _%slot106207%_)
            (let ((_%slot106213%_ _%slot106207%_))
              (if (procedure? _%E106209%_)
                  (let ((_%E106223%_ _%E106209%_))
                    (__slot-set!__%
                     _%obj106206%_
                     _%slot106213%_
                     _%val106208%_
                     _%E106223%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@623.43-623.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E106209%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.22-623.26"
               'contract:
               'symbol?
               'value:
               _%slot106207%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj106236%_ _%slot106237%_ _%val106238%_)
        (let ((_%E106240%_ __slot-error))
          (slot-set!__%
           _%obj106236%_
           _%slot106237%_
           _%val106238%_
           _%E106240%_))))
    (define slot-set!
      (lambda _g109463_
        (let ((_g109464_ (let () (declare (not safe)) (##length _g109463_))))
          (cond ((let () (declare (not safe)) (##fx= _g109464_ 3))
                 (apply slot-set!__0 _g109463_))
                ((let () (declare (not safe)) (##fx= _g109464_ 4))
                 (apply slot-set!__% _g109463_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g109463_))))))
    (define __slot-set!__%
      (lambda (_%obj106159%_ _%slot106160%_ _%val106161%_ _%E106162%_)
        (let* ((_%slot106165%_ _%slot106160%_)
               (_%E106173%_ _%E106162%_)
               (_%klass106182%_ (class-of _%obj106159%_))
               (_%$e106185%_
                (__class-slot-offset _%klass106182%_ _%slot106165%_)))
          (if _%$e106185%_
              ((lambda (_%off106188%_)
                 (unchecked-field-set!
                  _%obj106159%_
                  _%off106188%_
                  _%val106161%_))
               _%$e106185%_)
              (let ()
                (declare (not safe))
                (_%E106173%_ _%obj106159%_ _%slot106165%_))))))
    (define __slot-set!__0
      (lambda (_%obj106194%_ _%slot106195%_ _%val106196%_)
        (let ((_%E106198%_ __slot-error))
          (__slot-set!__%
           _%obj106194%_
           _%slot106195%_
           _%val106196%_
           _%E106198%_))))
    (define __slot-set!
      (lambda _g109465_
        (let ((_g109466_ (let () (declare (not safe)) (##length _g109465_))))
          (cond ((let () (declare (not safe)) (##fx= _g109466_ 3))
                 (apply __slot-set!__0 _g109465_))
                ((let () (declare (not safe)) (##fx= _g109466_ 4))
                 (apply __slot-set!__% _g109465_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g109465_))))))
    (define __slot-error
      (lambda (_%obj106155%_ _%slot106156%_)
        (error '"Cannot find slot"
               'object:
               _%obj106155%_
               'slot:
               _%slot106156%_)))
    (define subclass?
      (lambda (_%maybe-sub-class106130%_ _%maybe-super-class106131%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class106130%_ 'class))
            (let ((_%maybe-sub-class106135%_ _%maybe-sub-class106130%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class106131%_
                     'class))
                  (let ((_%maybe-super-class106145%_
                         _%maybe-super-class106131%_))
                    (__subclass?
                     _%maybe-sub-class106135%_
                     _%maybe-super-class106145%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@631.45-631.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class106131%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@631.18-631.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class106130%_)
              '#!void))))
    (define __subclass?
      (lambda (_%maybe-sub-class106102%_ _%maybe-super-class106103%_)
        (let* ((_%maybe-sub-class106106%_ _%maybe-sub-class106102%_)
               (_%maybe-super-class106114%_ _%maybe-super-class106103%_)
               (_%maybe-super-class-id106123%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class106114%_)))
               (_%$e106125%_
                (eq? _%maybe-super-class-id106123%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class106106%_)))))
          (if _%$e106125%_
              _%$e106125%_
              (let ((__tmp109468
                     (lambda (_%super-class106128%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class106128%_))
                            _%maybe-super-class-id106123%_)))
                    (__tmp109467
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class106106%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (__ormap1 __tmp109468 __tmp109467))))))
    (define object?
      (lambda (_%o106099%_)
        (if (let () (declare (not safe)) (##structure? _%o106099%_))
            (let ((__tmp109469
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o106099%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp109469 'class))
            '#f)))
    (define object-type
      (lambda (_%o106094%_)
        (if (let () (declare (not safe)) (##structure? _%o106094%_))
            (let ((_%klass106097%_
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o106094%_))))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%klass106097%_ 'class))
                  _%klass106097%_
                  (begin
                    (error '"not an object" _%o106094%_ _%klass106097%_)
                    '#!void)))
            (begin (error '"not an object" _%o106094%_) '#!void))))
    (define direct-instance?
      (lambda (_%klass106079%_ _%obj106080%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106079%_ 'class))
            (let ((_%klass106084%_ _%klass106079%_))
              (__direct-instance? _%klass106084%_ _%obj106080%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@654.25-654.30"
               'contract:
               'class-type?
               'value:
               _%klass106079%_)
              '#!void))))
    (define __direct-instance?
      (lambda (_%klass106066%_ _%obj106067%_)
        (let* ((_%klass106070%_ _%klass106066%_)
               (__tmp109470
                (let () (declare (not safe)) (##type-id _%klass106070%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj106067%_ __tmp109470))))
    (define immediate-instance-of?
      (lambda (_%klass106062%_ _%obj106063%_)
        (if (let () (declare (not safe)) (##structure? _%obj106063%_))
            (eq? _%klass106062%_
                 (let ()
                   (declare (not safe))
                   (##structure-type _%obj106063%_)))
            '#f)))
    (define struct-instance?
      (lambda (_%klass106047%_ _%obj106048%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106047%_ 'class))
            (let ((_%klass106052%_ _%klass106047%_))
              (__struct-instance? _%klass106052%_ _%obj106048%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@684.25-684.30"
               'contract:
               'class-type?
               'value:
               _%klass106047%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass106034%_ _%obj106035%_)
        (let* ((_%klass106038%_ _%klass106034%_)
               (__tmp109471
                (let () (declare (not safe)) (##type-id _%klass106038%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj106035%_ __tmp109471))))
    (define class-instance?
      (lambda (_%klass106019%_ _%obj106020%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass106019%_ 'class))
            (let ((_%klass106024%_ _%klass106019%_))
              (__class-instance? _%klass106024%_ _%obj106020%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@689.24-689.29"
               'contract:
               'class-type?
               'value:
               _%klass106019%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass106004%_ _%obj106005%_)
        (let* ((_%klass106008%_ _%klass106004%_)
               (_%type106017%_ (class-of _%obj106005%_)))
          (__subclass? _%type106017%_ _%klass106008%_))))
    (define make-object
      (lambda (_%klass105979%_ _%k105980%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105979%_ 'class))
            (let ((_%klass105984%_ _%klass105979%_))
              (if (fixnum? _%k105980%_)
                  (let ((_%k105994%_ _%k105980%_))
                    (__make-object _%klass105984%_ _%k105994%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@694.37-694.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k105980%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@694.20-694.25"
               'contract:
               'class-type?
               'value:
               _%klass105979%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass105956%_ _%k105957%_)
        (let* ((_%klass105960%_ _%klass105956%_) (_%k105968%_ _%k105957%_))
          (if (__class-type-system? _%klass105960%_)
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass105960%_)
                '#!void)
              (let ((_%obj105977%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass105960%_ _%k105968%_))))
                (object-fill! _%obj105977%_ '#f))))))
    (define object-fill!
      (lambda (_%obj105941%_ _%fill105942%_)
        (if '#t
            (let ((_%obj105946%_ _%obj105941%_))
              (__object-fill! _%obj105946%_ _%fill105942%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@714.21-714.24"
               'contract:
               'true
               'value:
               _%obj105941%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj105923%_ _%fill105924%_)
        (let ((_%obj105927%_ _%obj105923%_))
          (let _%loop105936%_ ((_%i105938%_
                                (let ((__tmp109472
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj105927%_))))
                                  (declare (not safe))
                                  (##fx- __tmp109472 '1))))
            (if (let () (declare (not safe)) (##fx> _%i105938%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj105927%_
                     _%fill105924%_
                     _%i105938%_
                     '#f
                     '#f))
                  (_%loop105936%_
                   (let () (declare (not safe)) (##fx- _%i105938%_ '1))))
                _%obj105927%_)))))
    (define new-instance
      (lambda (_%klass105909%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105909%_ 'class))
            (let ((_%klass105913%_ _%klass105909%_))
              (__new-instance _%klass105913%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@725.21-725.26"
               'contract:
               'class-type?
               'value:
               _%klass105909%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass105897%_)
        (let* ((_%klass105900%_ _%klass105897%_)
               (__obj109389
                (let ((__tmp109473
                       (let ((__tmp109474
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%klass105900%_
                                 '7
                                 '#f
                                 '#f))))
                         (declare (not safe))
                         (##vector-length __tmp109474))))
                  (declare (not safe))
                  (##make-structure _%klass105900%_ __tmp109473))))
          (object-fill! __obj109389 '#f)
          __obj109389)))
    (define make-instance
      (lambda (_%klass105882%_ . _%args105883%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105882%_ 'class))
            (let ((_%klass105887%_ _%klass105882%_))
              (declare (not safe))
              (##apply __make-instance _%klass105887%_ _%args105883%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@728.22-728.27"
               'contract:
               'class-type?
               'value:
               _%klass105882%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass105854%_ . _%args105855%_)
        (let* ((_%klass105858%_ _%klass105854%_)
               (_%$e105867%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass105858%_ '10 '#f '#f))))
          (if _%$e105867%_
              ((lambda (_%kons-id105870%_)
                 (let ((_%obj105872%_ (__new-instance _%klass105858%_)))
                   (___constructor-init!
                    _%klass105858%_
                    _%kons-id105870%_
                    _%obj105872%_
                    _%args105855%_)
                   _%obj105872%_))
               _%$e105867%_)
              (if (__class-type-metaclass? _%klass105858%_)
                  (let ((_%obj105875%_ (__new-instance _%klass105858%_)))
                    (__metaclass-instance-init!
                     _%klass105858%_
                     _%obj105875%_
                     _%args105855%_)
                    _%obj105875%_)
                  (if (__class-type-struct? _%klass105858%_)
                      (if (let ((__tmp109476
                                 (__class-type-field-count _%klass105858%_))
                                (__tmp109475
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args105855%_))))
                            (declare (not safe))
                            (##fx= __tmp109476 __tmp109475))
                          (apply ##structure _%klass105858%_ _%args105855%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass105858%_
                                   'slots:
                                   (__class-type-slot-list _%klass105858%_)
                                   'args:
                                   _%args105855%_)
                            '#!void))
                      (let ((_%obj105878%_ (__new-instance _%klass105858%_)))
                        (___class-instance-init!
                         _%klass105858%_
                         _%obj105878%_
                         _%args105855%_)
                        _%obj105878%_)))))))
    (define make-class-instance make-instance)
    (define struct-instance-init!
      (lambda (_%obj105839%_ . _%args105840%_)
        (if '#t
            (let ((_%obj105844%_ _%obj105839%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj105844%_ _%args105840%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@753.30-753.33"
               'contract:
               'true
               'value:
               _%obj105839%_)
              '#!void))))
    (define __struct-instance-init!
      (lambda (_%obj105826%_ . _%args105827%_)
        (let ((_%obj105830%_ _%obj105826%_))
          (if (let ((__tmp109478
                     (let () (declare (not safe)) (##length _%args105827%_)))
                    (__tmp109477
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj105830%_))))
                (declare (not safe))
                (##fx< __tmp109478 __tmp109477))
              (___struct-instance-init! _%obj105830%_ _%args105827%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj105830%_
                     'args:
                     _%args105827%_))
          '#!void)))
    (define ___struct-instance-init!
      (lambda (_%obj105785%_ _%args105786%_)
        (let _%lp105788%_ ((_%k105790%_ '1) (_%rest105791%_ _%args105786%_))
          (let* ((_%rest105792105800%_ _%rest105791%_)
                 (_%else105794105808%_ (lambda () _%obj105785%_))
                 (_%K105796105814%_
                  (lambda (_%rest105811%_ _%hd105812%_)
                    (unchecked-field-set!
                     _%obj105785%_
                     _%k105790%_
                     _%hd105812%_)
                    (_%lp105788%_
                     (let () (declare (not safe)) (##fx+ _%k105790%_ '1))
                     _%rest105811%_))))
            (if (pair? _%rest105792105800%_)
                (let ((_%hd105797105817%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest105792105800%_)))
                      (_%tl105798105819%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest105792105800%_))))
                  (let* ((_%hd105822%_ _%hd105797105817%_)
                         (_%rest105824%_ _%tl105798105819%_))
                    (_%K105796105814%_ _%rest105824%_ _%hd105822%_)))
                (_%else105794105808%_))))))
    (define class-instance-init!
      (lambda (_%obj105770%_ . _%args105771%_)
        (if '#t
            (let ((_%obj105775%_ _%obj105770%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj105775%_ _%args105771%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@793.29-793.32"
               'contract:
               'true
               'value:
               _%obj105770%_)
              '#!void))))
    (define __class-instance-init!
      (lambda (_%obj105757%_ . _%args105758%_)
        (let ((_%obj105761%_ _%obj105757%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj105761%_))
           _%obj105761%_
           _%args105758%_)
          '#!void)))
    (define ___class-instance-init!
      (lambda (_%klass105699%_ _%obj105700%_ _%args105701%_)
        (let _%lp105703%_ ((_%rest105705%_ _%args105701%_))
          (let* ((_%rest105706105716%_ _%rest105705%_)
                 (_%else105708105724%_
                  (lambda ()
                    (if (null? _%rest105705%_)
                        _%obj105700%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass105699%_
                               'rest:
                               _%rest105705%_))))
                 (_%K105710105738%_
                  (lambda (_%rest105727%_ _%val105728%_ _%key105729%_)
                    (if (keyword? _%key105729%_)
                        (let ((_%$e105732%_
                               (__class-slot-offset
                                _%klass105699%_
                                _%key105729%_)))
                          (if _%$e105732%_
                              ((lambda (_%off105735%_)
                                 (unchecked-field-set!
                                  _%obj105700%_
                                  _%off105735%_
                                  _%val105728%_)
                                 (_%lp105703%_ _%rest105727%_))
                               _%$e105732%_)
                              (error '"unknown slot"
                                     'class:
                                     _%klass105699%_
                                     'slot:
                                     _%key105729%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key105729%_)))))
            (if (pair? _%rest105706105716%_)
                (let ((_%hd105711105741%_
                       (let ()
                         (declare (not safe))
                         (##car _%rest105706105716%_)))
                      (_%tl105712105743%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%rest105706105716%_))))
                  (let ((_%key105746%_ _%hd105711105741%_))
                    (if (pair? _%tl105712105743%_)
                        (let ((_%hd105713105748%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%tl105712105743%_)))
                              (_%tl105714105750%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%tl105712105743%_))))
                          (let* ((_%val105753%_ _%hd105713105748%_)
                                 (_%rest105755%_ _%tl105714105750%_))
                            (_%K105710105738%_
                             _%rest105755%_
                             _%val105753%_
                             _%key105746%_)))
                        (_%else105708105724%_))))
                (_%else105708105724%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass105695%_ _%obj105696%_ _%args105697%_)
        (apply call-method
               _%klass105695%_
               'instance-init!
               _%obj105696%_
               _%args105697%_)))
    (define constructor-init!
      (lambda (_%klass105658%_
               _%kons-id105659%_
               _%obj105660%_
               .
               _%args105661%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105658%_ 'class))
            (let ((_%klass105665%_ _%klass105658%_))
              (if (symbol? _%kons-id105659%_)
                  (let ((_%kons-id105675%_ _%kons-id105659%_))
                    (if '#t
                        (let ((_%obj105685%_ _%obj105660%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass105665%_
                                   _%kons-id105675%_
                                   _%obj105685%_
                                   _%args105661%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@817.63-817.66"
                           'contract:
                           'true
                           'value:
                           _%obj105660%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@817.43-817.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id105659%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@817.26-817.31"
               'contract:
               'class-type?
               'value:
               _%klass105658%_)
              '#!void))))
    (define __constructor-init!
      (lambda (_%klass105627%_
               _%kons-id105628%_
               _%obj105629%_
               .
               _%args105630%_)
        (let* ((_%klass105633%_ _%klass105627%_)
               (_%kons-id105641%_ _%kons-id105628%_)
               (_%obj105649%_ _%obj105629%_))
          (___constructor-init!
           _%klass105633%_
           _%kons-id105641%_
           _%obj105649%_
           _%args105630%_)
          '#!void)))
    (define ___constructor-init!
      (lambda (_%klass105616%_ _%kons-id105617%_ _%obj105618%_ _%args105619%_)
        (let ((_%$e105621%_
               (__find-method
                _%klass105616%_
                _%obj105618%_
                _%kons-id105617%_)))
          (if _%$e105621%_
              ((lambda (_%kons105624%_)
                 (apply _%kons105624%_ _%obj105618%_ _%args105619%_)
                 _%obj105618%_)
               _%$e105621%_)
              (error '"missing constructor"
                     'class:
                     _%klass105616%_
                     'method:
                     _%kons-id105617%_)))))
    (define struct-copy
      (lambda (_%struct105602%_)
        (if '#t
            (let ((_%struct105606%_ _%struct105602%_))
              (__struct-copy _%struct105606%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@831.20-831.26"
               'contract:
               'true
               'value:
               _%struct105602%_)
              '#!void))))
    (define __struct-copy
      (lambda (_%struct105590%_)
        (let ((_%struct105593%_ _%struct105590%_))
          (declare (not safe))
          (##structure-copy _%struct105593%_))))
    (define struct->list
      (lambda (_%obj105576%_)
        (if '#t
            (let ((_%obj105580%_ _%obj105576%_))
              (__struct->list _%obj105580%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@834.21-834.24"
               'contract:
               'true
               'value:
               _%obj105576%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj105557%_)
        (let* ((_%obj105560%_ _%obj105557%_)
               (_%len105569%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj105560%_))))
          (let _%recur105571%_ ((_%i105573%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i105573%_ _%len105569%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj105560%_
                         _%i105573%_
                         '#f
                         '#f))
                      (_%recur105571%_
                       (let () (declare (not safe)) (##fx+ _%i105573%_ '1))))
                '())))))
    (define class->list
      (lambda (_%obj105543%_)
        (if '#t
            (let ((_%obj105547%_ _%obj105543%_)) (__class->list _%obj105547%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@842.20-842.23"
               'contract:
               'true
               'value:
               _%obj105543%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj105519%_)
        (let* ((_%obj105522%_ _%obj105519%_)
               (_%klass105531%_
                (let () (declare (not safe)) (##structure-type _%obj105522%_)))
               (_%slot-vector105533%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass105531%_ '7 '#f '#f))))
          (let _%loop105535%_ ((_%index105537%_
                                (let ((__tmp109479
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector105533%_))))
                                  (declare (not safe))
                                  (##fx- __tmp109479 '1)))
                               (_%plist105538%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index105537%_ '1))
                (cons _%klass105531%_ _%plist105538%_)
                (let ((_%slot105541%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector105533%_
                          _%index105537%_))))
                  (_%loop105535%_
                   (let () (declare (not safe)) (##fx- _%index105537%_ '1))
                   (cons (let ()
                           (declare (not safe))
                           (symbol->keyword _%slot105541%_))
                         (cons (unchecked-field-ref
                                _%obj105522%_
                                _%index105537%_)
                               _%plist105538%_)))))))))
    (define call-method
      (lambda (_%obj105503%_ _%id105504%_ . _%args105505%_)
        (if (symbol? _%id105504%_)
            (let ((_%id105509%_ _%id105504%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj105503%_
                       _%id105509%_
                       _%args105505%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@857.24-857.26"
               'contract:
               'symbol?
               'value:
               _%id105504%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj105472%_ _%id105473%_ . _%args105474%_)
        (let* ((_%id105477%_ _%id105473%_)
               (_%$e105486%_ (__method-ref _%obj105472%_ _%id105477%_)))
          (if _%$e105486%_
              ((lambda (_%method105489%_)
                 (let ((_%method105491%_ _%method105489%_))
                   (apply _%method105491%_ _%obj105472%_ _%args105474%_)))
               _%$e105486%_)
              (error '"cannot find method"
                     'object:
                     _%obj105472%_
                     'method:
                     _%id105477%_)))))
    (define method-ref
      (lambda (_%obj105457%_ _%id105458%_)
        (if (symbol? _%id105458%_)
            (let ((_%id105462%_ _%id105458%_))
              (__method-ref _%obj105457%_ _%id105462%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@884.23-884.25"
               'contract:
               'symbol?
               'value:
               _%id105458%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj105444%_ _%id105445%_)
        (let ((_%id105448%_ _%id105445%_))
          (__find-method
           (class-of _%obj105444%_)
           _%obj105444%_
           _%id105448%_))))
    (define checked-method-ref
      (lambda (_%obj105437%_ _%id105438%_)
        (let ((_%$e105441%_ (method-ref _%obj105437%_ _%id105438%_)))
          (if _%$e105441%_
              _%$e105441%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj105437%_
                       'method:
                       _%id105438%_)
                '#!void)))))
    (define bound-method-ref
      (lambda (_%obj105422%_ _%id105423%_)
        (if (symbol? _%id105423%_)
            (let ((_%id105427%_ _%id105423%_))
              (__bound-method-ref _%obj105422%_ _%id105427%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@892.29-892.31"
               'contract:
               'symbol?
               'value:
               _%id105423%_)
              '#!void))))
    (define __bound-method-ref
      (lambda (_%obj105390%_ _%id105391%_)
        (let* ((_%id105394%_ _%id105391%_)
               (_%$e105403%_ (__method-ref _%obj105390%_ _%id105394%_)))
          (if _%$e105403%_
              ((lambda (_%method105406%_)
                 (let ((_%method105408%_ _%method105406%_))
                   (lambda _%args105419%_
                     (apply _%method105408%_ _%obj105390%_ _%args105419%_))))
               _%$e105403%_)
              '#f))))
    (define checked-bound-method-ref
      (lambda (_%obj105375%_ _%id105376%_)
        (if (symbol? _%id105376%_)
            (let ((_%id105380%_ _%id105376%_))
              (__checked-bound-method-ref _%obj105375%_ _%id105380%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@901.37-901.39"
               'contract:
               'symbol?
               'value:
               _%id105376%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj105358%_ _%id105359%_)
        (let* ((_%id105362%_ _%id105359%_)
               (_%method105371%_
                (checked-method-ref _%obj105358%_ _%id105362%_)))
          (lambda _%args105373%_
            (apply _%method105371%_ _%obj105358%_ _%args105373%_)))))
    (define find-method
      (lambda (_%klass105332%_ _%obj105333%_ _%id105334%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105332%_ 'class))
            (let ((_%klass105338%_ _%klass105332%_))
              (if (symbol? _%id105334%_)
                  (let ((_%id105348%_ _%id105334%_))
                    (__find-method _%klass105338%_ _%obj105333%_ _%id105348%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@906.41-906.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id105334%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@906.20-906.25"
               'contract:
               'class-type?
               'value:
               _%klass105332%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass105305%_ _%obj105306%_ _%id105307%_)
        (let* ((_%klass105310%_ _%klass105305%_)
               (_%id105318%_ _%id105307%_)
               (_%$e105327%_
                (__direct-method-ref
                 _%klass105310%_
                 _%obj105306%_
                 _%id105318%_)))
          (if _%$e105327%_
              _%$e105327%_
              (if (__class-type-sealed? _%klass105310%_)
                  '#f
                  (__mixin-method-ref
                   _%klass105310%_
                   _%obj105306%_
                   _%id105318%_))))))
    (define mixin-find-method
      (lambda (_%mixins105289%_ _%obj105290%_ _%id105291%_)
        (if (symbol? _%id105291%_)
            (let ((_%id105295%_ _%id105291%_))
              (__mixin-find-method
               _%mixins105289%_
               _%obj105290%_
               _%id105295%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@914.37-914.39"
               'contract:
               'symbol?
               'value:
               _%id105291%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins105271%_ _%obj105272%_ _%id105273%_)
        (let* ((_%id105276%_ _%id105273%_)
               (__tmp109480
                (lambda (_%g105284105286%_)
                  (direct-method-ref
                   _%g105284105286%_
                   _%obj105272%_
                   _%id105276%_))))
          (declare (not safe))
          (__ormap1 __tmp109480 _%mixins105271%_))))
    (define direct-method-ref
      (lambda (_%klass105245%_ _%obj105246%_ _%id105247%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105245%_ 'class))
            (let ((_%klass105251%_ _%klass105245%_))
              (if (symbol? _%id105247%_)
                  (let ((_%id105261%_ _%id105247%_))
                    (__direct-method-ref
                     _%klass105251%_
                     _%obj105246%_
                     _%id105261%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@917.47-917.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id105247%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@917.26-917.31"
               'contract:
               'class-type?
               'value:
               _%klass105245%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass105199%_ _%obj105200%_ _%id105201%_)
        (let* ((_%klass105204%_ _%klass105199%_) (_%id105212%_ _%id105201%_))
          (letrec ((_%metaclass-resolve-method105221%_
                    (lambda ()
                      (let ((__method109390
                             (__method-ref
                              _%klass105204%_
                              'direct-method-ref)))
                        (if __method109390
                            (let ()
                              (declare (not safe))
                              (__method109390
                               _%klass105204%_
                               _%obj105200%_
                               _%id105212%_))
                            (begin
                              (error '"Missing method"
                                     _%klass105204%_
                                     'direct-method-ref)
                              '#!void)))))
                   (_%metaclass-resolve-method!105222%_
                    (lambda ()
                      (let ((_%method105242%_
                             (_%metaclass-resolve-method105221%_)))
                        (let ((__tmp109482
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass105204%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp109481
                               (if _%method105242%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp109482
                           _%id105212%_
                           __tmp109481))
                        _%method105242%_))))
            (let ((_%$e105224%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass105204%_ '11 '#f '#f))))
              (if _%$e105224%_
                  ((lambda (_%ht105227%_)
                     (let ((_%method105229%_
                            (let ()
                              (declare (not safe))
                              (symbolic-table-ref
                               _%ht105227%_
                               _%id105212%_
                               '#f))))
                       (if (procedure? _%method105229%_)
                           _%method105229%_
                           (if (__class-type-metaclass? _%klass105204%_)
                               (let ((_%$e105233%_ _%method105229%_))
                                 (if (eq? 'resolved _%$e105233%_)
                                     (_%metaclass-resolve-method105221%_)
                                     (if (eq? 'unknown _%$e105233%_)
                                         '#f
                                         (_%metaclass-resolve-method!105222%_))))
                               '#f))))
                   _%$e105224%_)
                  (if (__class-type-metaclass? _%klass105204%_)
                      (let ((_%tab105238%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass105204%_
                           _%tab105238%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!105222%_))
                      '#f)))))))
    (define mixin-method-ref
      (lambda (_%klass105173%_ _%obj105174%_ _%id105175%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass105173%_ 'class))
            (let ((_%klass105179%_ _%klass105173%_))
              (if (symbol? _%id105175%_)
                  (let ((_%id105189%_ _%id105175%_))
                    (__mixin-method-ref
                     _%klass105179%_
                     _%obj105174%_
                     _%id105189%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@947.46-947.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id105175%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@947.25-947.30"
               'contract:
               'class-type?
               'value:
               _%klass105173%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass105151%_ _%obj105152%_ _%id105153%_)
        (let* ((_%klass105156%_ _%klass105151%_) (_%id105164%_ _%id105153%_))
          (__mixin-find-method
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass105156%_ '6 '#f '#f))
           _%obj105152%_
           _%id105164%_))))
    (define bind-method!__%
      (lambda (_%klass105110%_ _%id105111%_ _%proc105112%_ _%rebind?105113%_)
        (if (symbol? _%id105111%_)
            (let ((_%id105117%_ _%id105111%_))
              (if (procedure? _%proc105112%_)
                  (let ((_%proc105127%_ _%proc105112%_))
                    (__bind-method!__%
                     _%klass105110%_
                     _%id105117%_
                     _%proc105127%_
                     _%rebind?105113%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@950.42-950.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc105112%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@950.27-950.29"
               'contract:
               'symbol?
               'value:
               _%id105111%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass105140%_ _%id105141%_ _%proc105142%_)
        (let ((_%rebind?105144%_ '#f))
          (bind-method!__%
           _%klass105140%_
           _%id105141%_
           _%proc105142%_
           _%rebind?105144%_))))
    (define bind-method!
      (lambda _g109483_
        (let ((_g109484_ (let () (declare (not safe)) (##length _g109483_))))
          (cond ((let () (declare (not safe)) (##fx= _g109484_ 3))
                 (apply bind-method!__0 _g109483_))
                ((let () (declare (not safe)) (##fx= _g109484_ 4))
                 (apply bind-method!__% _g109483_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g109483_))))))
    (define __bind-method!__%
      (lambda (_%klass105061%_ _%id105062%_ _%proc105063%_ _%rebind?105064%_)
        (let* ((_%id105067%_ _%id105062%_) (_%proc105075%_ _%proc105063%_))
          (letrec ((_%bind!105084%_
                    (lambda (_%ht105093%_)
                      (if (and (not _%rebind?105064%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht105093%_
                                  _%id105067%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass105061%_
                                 'method:
                                 _%id105067%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht105093%_
                               _%id105067%_
                               _%proc105075%_))
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass105061%_ 'class))
                (let ((_%ht105087%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass105061%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht105087%_
                      (_%bind!105084%_ _%ht105087%_)
                      (let ((_%ht105089%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass105061%_
                           _%ht105089%_
                           '11
                           '#f
                           '#f))
                        (_%bind!105084%_ _%ht105089%_))))
                (if (let () (declare (not safe)) (##type? _%klass105061%_))
                    (__bind-method!__%
                     (__shadow-class _%klass105061%_)
                     _%id105067%_
                     _%proc105075%_
                     _%rebind?105064%_)
                    (error '"bad class; expected class or builtin type"
                           _%klass105061%_)))))))
    (define __bind-method!__0
      (lambda (_%klass105098%_ _%id105099%_ _%proc105100%_)
        (let ((_%rebind?105102%_ '#f))
          (__bind-method!__%
           _%klass105098%_
           _%id105099%_
           _%proc105100%_
           _%rebind?105102%_))))
    (define __bind-method!
      (lambda _g109485_
        (let ((_g109486_ (let () (declare (not safe)) (##length _g109485_))))
          (cond ((let () (declare (not safe)) (##fx= _g109486_ 3))
                 (apply __bind-method!__0 _g109485_))
                ((let () (declare (not safe)) (##fx= _g109486_ 4))
                 (apply __bind-method!__% _g109485_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g109485_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint105041%_ _%seed105043%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint105041%_
           procedure-hash
           eq?
           _%seed105043%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint105049%_ '#f) (_%seed105051%_ '0))
          (make-method-specializer-table__%
           _%size-hint105049%_
           _%seed105051%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint105053%_)
        (let ((_%seed105055%_ '0))
          (make-method-specializer-table__%
           _%size-hint105053%_
           _%seed105055%_))))
    (define make-method-specializer-table
      (lambda _g109487_
        (let ((_g109488_ (let () (declare (not safe)) (##length _g109487_))))
          (cond ((let () (declare (not safe)) (##fx= _g109488_ 0))
                 (apply make-method-specializer-table__0 _g109487_))
                ((let () (declare (not safe)) (##fx= _g109488_ 1))
                 (apply make-method-specializer-table__1 _g109487_))
                ((let () (declare (not safe)) (##fx= _g109488_ 2))
                 (apply make-method-specializer-table__% _g109487_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g109487_))))))
    (define method-specializer-table-ref
      (lambda (_%tab104994%_ _%key104995%_ _%default104996%_)
        (let ((_%table104998%_
               (let () (declare (not safe)) (&raw-table-table _%tab104994%_)))
              (_%seed104999%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104994%_))))
          (let* ((_%h105001%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key104995%_))
                         _%seed104999%_))
                 (_%size105004%_ (vector-length _%table104998%_))
                 (_%entries105007%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size105004%_ '2)))
                 (_%start105010%_
                  (let ((__tmp109489
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h105001%_ _%entries105007%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109489 '1))))
            (let _%loop105014%_ ((_%probe105017%_ _%start105010%_)
                                 (_%i105019%_ '1)
                                 (_%deleted105021%_ '#f))
              (let ((_%k105024%_ (vector-ref _%table104998%_ _%probe105017%_)))
                (if (eq? _%k105024%_ (macro-unused-obj))
                    _%default104996%_
                    (if (eq? _%k105024%_ (macro-deleted-obj))
                        (_%loop105014%_
                         (let ((_%next-probe105029%_
                                (fx+ _%start105010%_
                                     _%i105019%_
                                     (fx* _%i105019%_ _%i105019%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe105029%_ _%size105004%_))
                         (let () (declare (not safe)) (##fx+ _%i105019%_ '1))
                         (let ((_%$e105032%_ _%deleted105021%_))
                           (if _%$e105032%_ _%$e105032%_ _%probe105017%_)))
                        (if (eq? _%key104995%_ _%k105024%_)
                            (vector-ref
                             _%table104998%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe105017%_ '1)))
                            (_%loop105014%_
                             (let ((_%next-probe105037%_
                                    (fx+ _%start105010%_
                                         _%i105019%_
                                         (fx* _%i105019%_ _%i105019%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe105037%_
                                _%size105004%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i105019%_ '1))
                             _%deleted105021%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab104990%_ _%key104991%_ _%value104992%_)
        (if (let ((__tmp109492
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab104990%_)))
                  (__tmp109490
                   (let ((__tmp109491
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab104990%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp109491 '4))))
              (declare (not safe))
              (##fx< __tmp109492 __tmp109490))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab104990%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab104990%_
         _%key104991%_
         _%value104992%_)))
    (define __method-specializer-table-set!
      (lambda (_%tab104941%_ _%key104942%_ _%value104943%_)
        (let ((_%table104946%_
               (let () (declare (not safe)) (&raw-table-table _%tab104941%_)))
              (_%seed104947%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104941%_))))
          (let* ((_%h104949%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key104942%_))
                         _%seed104947%_))
                 (_%size104952%_ (vector-length _%table104946%_))
                 (_%entries104955%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104952%_ '2)))
                 (_%start104958%_
                  (let ((__tmp109493
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104949%_ _%entries104955%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109493 '1))))
            (let _%loop104962%_ ((_%probe104965%_ _%start104958%_)
                                 (_%i104967%_ '1)
                                 (_%deleted104969%_ '#f))
              (let ((_%k104972%_ (vector-ref _%table104946%_ _%probe104965%_)))
                (if (eq? _%k104972%_ (macro-unused-obj))
                    (if _%deleted104969%_
                        (begin
                          (vector-set!
                           _%table104946%_
                           _%deleted104969%_
                           _%key104942%_)
                          (vector-set!
                           _%table104946%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted104969%_ '1))
                           _%value104943%_)
                          ((lambda ()
                             (let ((__tmp109494
                                    (let ((__tmp109495
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104941%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109495 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104941%_
                                __tmp109494)))))
                        (begin
                          (vector-set!
                           _%table104946%_
                           _%probe104965%_
                           _%key104942%_)
                          (vector-set!
                           _%table104946%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe104965%_ '1))
                           _%value104943%_)
                          ((lambda ()
                             (let ((__tmp109496
                                    (let ((__tmp109497
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab104941%_))))
                                      (declare (not safe))
                                      (##fx- __tmp109497 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab104941%_
                                __tmp109496))
                             (let ((__tmp109498
                                    (let ((__tmp109499
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104941%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109499 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104941%_
                                __tmp109498))))))
                    (if (eq? _%k104972%_ (macro-deleted-obj))
                        (_%loop104962%_
                         (let ((_%next-probe104979%_
                                (fx+ _%start104958%_
                                     _%i104967%_
                                     (fx* _%i104967%_ _%i104967%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104979%_ _%size104952%_))
                         (let () (declare (not safe)) (##fx+ _%i104967%_ '1))
                         (let ((_%$e104982%_ _%deleted104969%_))
                           (if _%$e104982%_ _%$e104982%_ _%probe104965%_)))
                        (if (eq? _%key104942%_ _%k104972%_)
                            (let ()
                              (vector-set!
                               _%table104946%_
                               _%probe104965%_
                               _%key104942%_)
                              (vector-set!
                               _%table104946%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104965%_ '1))
                               _%value104943%_))
                            (_%loop104962%_
                             (let ((_%next-probe104987%_
                                    (fx+ _%start104958%_
                                         _%i104967%_
                                         (fx* _%i104967%_ _%i104967%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104987%_
                                _%size104952%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104967%_ '1))
                             _%deleted104969%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab104936%_
               _%key104937%_
               _%method-specializer-table-update!104938%_
               _%default104939%_)
        (if (let ((__tmp109502
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab104936%_)))
                  (__tmp109500
                   (let ((__tmp109501
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab104936%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp109501 '4))))
              (declare (not safe))
              (##fx< __tmp109502 __tmp109500))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab104936%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab104936%_
         _%key104937%_
         _%method-specializer-table-update!104938%_
         _%default104939%_)))
    (define __method-specializer-table-update!
      (lambda (_%tab104886%_
               _%key104887%_
               _%method-specializer-table-update!104888%_
               _%default104889%_)
        (let ((_%table104892%_
               (let () (declare (not safe)) (&raw-table-table _%tab104886%_)))
              (_%seed104893%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104886%_))))
          (let* ((_%h104895%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key104887%_))
                         _%seed104893%_))
                 (_%size104898%_ (vector-length _%table104892%_))
                 (_%entries104901%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104898%_ '2)))
                 (_%start104904%_
                  (let ((__tmp109503
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104895%_ _%entries104901%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109503 '1))))
            (let _%loop104908%_ ((_%probe104911%_ _%start104904%_)
                                 (_%i104913%_ '1)
                                 (_%deleted104915%_ '#f))
              (let ((_%k104918%_ (vector-ref _%table104892%_ _%probe104911%_)))
                (if (eq? _%k104918%_ (macro-unused-obj))
                    (if _%deleted104915%_
                        (begin
                          (vector-set!
                           _%table104892%_
                           _%deleted104915%_
                           _%key104887%_)
                          (vector-set!
                           _%table104892%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted104915%_ '1))
                           (_%method-specializer-table-update!104888%_
                            _%default104889%_))
                          ((lambda ()
                             (let ((__tmp109504
                                    (let ((__tmp109505
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104886%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109505 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104886%_
                                __tmp109504)))))
                        (begin
                          (vector-set!
                           _%table104892%_
                           _%probe104911%_
                           _%key104887%_)
                          (vector-set!
                           _%table104892%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe104911%_ '1))
                           (_%method-specializer-table-update!104888%_
                            _%default104889%_))
                          ((lambda ()
                             (let ((__tmp109506
                                    (let ((__tmp109507
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab104886%_))))
                                      (declare (not safe))
                                      (##fx- __tmp109507 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab104886%_
                                __tmp109506))
                             (let ((__tmp109508
                                    (let ((__tmp109509
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104886%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109509 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104886%_
                                __tmp109508))))))
                    (if (eq? _%k104918%_ (macro-deleted-obj))
                        (_%loop104908%_
                         (let ((_%next-probe104925%_
                                (fx+ _%start104904%_
                                     _%i104913%_
                                     (fx* _%i104913%_ _%i104913%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104925%_ _%size104898%_))
                         (let () (declare (not safe)) (##fx+ _%i104913%_ '1))
                         (let ((_%$e104928%_ _%deleted104915%_))
                           (if _%$e104928%_ _%$e104928%_ _%probe104911%_)))
                        (if (eq? _%key104887%_ _%k104918%_)
                            (let ()
                              (vector-set!
                               _%table104892%_
                               _%probe104911%_
                               _%key104887%_)
                              (vector-set!
                               _%table104892%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104911%_ '1))
                               (_%method-specializer-table-update!104888%_
                                (vector-ref
                                 _%table104892%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe104911%_ '1))))))
                            (_%loop104908%_
                             (let ((_%next-probe104933%_
                                    (fx+ _%start104904%_
                                         _%i104913%_
                                         (fx* _%i104913%_ _%i104913%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104933%_
                                _%size104898%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104913%_ '1))
                             _%deleted104915%_))))))))))
    (define method-specializer-table-delete!
      (lambda (_%tab104841%_ _%key104843%_)
        (let ((_%table104846%_
               (let () (declare (not safe)) (&raw-table-table _%tab104841%_)))
              (_%seed104848%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104841%_))))
          (let* ((_%h104851%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key104843%_))
                         _%seed104848%_))
                 (_%size104854%_ (vector-length _%table104846%_))
                 (_%entries104857%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104854%_ '2)))
                 (_%start104860%_
                  (let ((__tmp109510
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104851%_ _%entries104857%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109510 '1))))
            (let _%loop104864%_ ((_%probe104867%_ _%start104860%_)
                                 (_%i104869%_ '1))
              (let ((_%k104872%_ (vector-ref _%table104846%_ _%probe104867%_)))
                (if (eq? _%k104872%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k104872%_ (macro-deleted-obj))
                        (_%loop104864%_
                         (let ((_%next-probe104877%_
                                (fx+ _%start104860%_
                                     _%i104869%_
                                     (fx* _%i104869%_ _%i104869%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104877%_ _%size104854%_))
                         (let () (declare (not safe)) (##fx+ _%i104869%_ '1)))
                        (if (eq? _%key104843%_ _%k104872%_)
                            (let ()
                              (vector-set!
                               _%table104846%_
                               _%probe104867%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table104846%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104867%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp109511
                                        (let ((__tmp109512
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab104841%_))))
                                          (declare (not safe))
                                          (##fx- __tmp109512 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab104841%_
                                    __tmp109511)))))
                            (_%loop104864%_
                             (let ((_%next-probe104883%_
                                    (fx+ _%start104860%_
                                         _%i104869%_
                                         (fx* _%i104869%_ _%i104869%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104883%_
                                _%size104854%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104869%_ '1))))))))))))
    (define __method-specializers (make-method-specializer-table__% '#f '0))
    (define __method-specializers-mx (vector '0))
    (define bind-specializer!
      (lambda (_%method-proc104832%_ _%specializer104833%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again104837%_ ()
            (if (let ((__tmp109513
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp109513 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again104837%_)))))
        (method-specializer-table-set!
         __method-specializers
         _%method-proc104832%_
         _%specializer104833%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __method-specializers-mx '0 '0 '1))))
    (define __lookup-method-specializer
      (lambda (_%proc104822%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again104826%_ ()
            (if (let ((__tmp109514
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __method-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp109514 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again104826%_)))))
        (let ((_%specializer104830%_
               (method-specializer-table-ref
                __method-specializers
                _%proc104822%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __method-specializers-mx '0 '0 '1))
          _%specializer104830%_)))
    (define __class-specializer-hash-key
      (lambda (_%klass104820%_)
        (let ((__tmp109515
               (let () (declare (not safe)) (##type-id _%klass104820%_))))
          (declare (not safe))
          (##symbol-hash __tmp109515))))
    (define make-class-specializer-table__%
      (lambda (_%size-hint104801%_ _%seed104803%_)
        (let ()
          (declare (not safe))
          (make-raw-table__%
           _%size-hint104801%_
           __class-specializer-hash-key
           eq?
           _%seed104803%_))))
    (define make-class-specializer-table__0
      (lambda ()
        (let* ((_%size-hint104809%_ '#f) (_%seed104811%_ '0))
          (make-class-specializer-table__%
           _%size-hint104809%_
           _%seed104811%_))))
    (define make-class-specializer-table__1
      (lambda (_%size-hint104813%_)
        (let ((_%seed104815%_ '0))
          (make-class-specializer-table__%
           _%size-hint104813%_
           _%seed104815%_))))
    (define make-class-specializer-table
      (lambda _g109516_
        (let ((_g109517_ (let () (declare (not safe)) (##length _g109516_))))
          (cond ((let () (declare (not safe)) (##fx= _g109517_ 0))
                 (apply make-class-specializer-table__0 _g109516_))
                ((let () (declare (not safe)) (##fx= _g109517_ 1))
                 (apply make-class-specializer-table__1 _g109516_))
                ((let () (declare (not safe)) (##fx= _g109517_ 2))
                 (apply make-class-specializer-table__% _g109516_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-class-specializer-table
                  _g109516_))))))
    (define class-specializer-table-ref
      (lambda (_%tab104754%_ _%key104755%_ _%default104756%_)
        (let ((_%table104758%_
               (let () (declare (not safe)) (&raw-table-table _%tab104754%_)))
              (_%seed104759%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104754%_))))
          (let* ((_%h104761%_
                  (fxxor (__class-specializer-hash-key _%key104755%_)
                         _%seed104759%_))
                 (_%size104764%_ (vector-length _%table104758%_))
                 (_%entries104767%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104764%_ '2)))
                 (_%start104770%_
                  (let ((__tmp109518
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104761%_ _%entries104767%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109518 '1))))
            (let _%loop104774%_ ((_%probe104777%_ _%start104770%_)
                                 (_%i104779%_ '1)
                                 (_%deleted104781%_ '#f))
              (let ((_%k104784%_ (vector-ref _%table104758%_ _%probe104777%_)))
                (if (eq? _%k104784%_ (macro-unused-obj))
                    _%default104756%_
                    (if (eq? _%k104784%_ (macro-deleted-obj))
                        (_%loop104774%_
                         (let ((_%next-probe104789%_
                                (fx+ _%start104770%_
                                     _%i104779%_
                                     (fx* _%i104779%_ _%i104779%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104789%_ _%size104764%_))
                         (let () (declare (not safe)) (##fx+ _%i104779%_ '1))
                         (let ((_%$e104792%_ _%deleted104781%_))
                           (if _%$e104792%_ _%$e104792%_ _%probe104777%_)))
                        (if (eq? _%key104755%_ _%k104784%_)
                            (vector-ref
                             _%table104758%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe104777%_ '1)))
                            (_%loop104774%_
                             (let ((_%next-probe104797%_
                                    (fx+ _%start104770%_
                                         _%i104779%_
                                         (fx* _%i104779%_ _%i104779%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104797%_
                                _%size104764%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104779%_ '1))
                             _%deleted104781%_))))))))))
    (define class-specializer-table-set!
      (lambda (_%tab104750%_ _%key104751%_ _%value104752%_)
        (if (let ((__tmp109521
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab104750%_)))
                  (__tmp109519
                   (let ((__tmp109520
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab104750%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp109520 '4))))
              (declare (not safe))
              (##fx< __tmp109521 __tmp109519))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab104750%_))
            '#!void)
        (__class-specializer-table-set!
         _%tab104750%_
         _%key104751%_
         _%value104752%_)))
    (define __class-specializer-table-set!
      (lambda (_%tab104701%_ _%key104702%_ _%value104703%_)
        (let ((_%table104706%_
               (let () (declare (not safe)) (&raw-table-table _%tab104701%_)))
              (_%seed104707%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104701%_))))
          (let* ((_%h104709%_
                  (fxxor (__class-specializer-hash-key _%key104702%_)
                         _%seed104707%_))
                 (_%size104712%_ (vector-length _%table104706%_))
                 (_%entries104715%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104712%_ '2)))
                 (_%start104718%_
                  (let ((__tmp109522
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104709%_ _%entries104715%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109522 '1))))
            (let _%loop104722%_ ((_%probe104725%_ _%start104718%_)
                                 (_%i104727%_ '1)
                                 (_%deleted104729%_ '#f))
              (let ((_%k104732%_ (vector-ref _%table104706%_ _%probe104725%_)))
                (if (eq? _%k104732%_ (macro-unused-obj))
                    (if _%deleted104729%_
                        (begin
                          (vector-set!
                           _%table104706%_
                           _%deleted104729%_
                           _%key104702%_)
                          (vector-set!
                           _%table104706%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted104729%_ '1))
                           _%value104703%_)
                          ((lambda ()
                             (let ((__tmp109523
                                    (let ((__tmp109524
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104701%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109524 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104701%_
                                __tmp109523)))))
                        (begin
                          (vector-set!
                           _%table104706%_
                           _%probe104725%_
                           _%key104702%_)
                          (vector-set!
                           _%table104706%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe104725%_ '1))
                           _%value104703%_)
                          ((lambda ()
                             (let ((__tmp109525
                                    (let ((__tmp109526
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab104701%_))))
                                      (declare (not safe))
                                      (##fx- __tmp109526 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab104701%_
                                __tmp109525))
                             (let ((__tmp109527
                                    (let ((__tmp109528
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104701%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109528 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104701%_
                                __tmp109527))))))
                    (if (eq? _%k104732%_ (macro-deleted-obj))
                        (_%loop104722%_
                         (let ((_%next-probe104739%_
                                (fx+ _%start104718%_
                                     _%i104727%_
                                     (fx* _%i104727%_ _%i104727%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104739%_ _%size104712%_))
                         (let () (declare (not safe)) (##fx+ _%i104727%_ '1))
                         (let ((_%$e104742%_ _%deleted104729%_))
                           (if _%$e104742%_ _%$e104742%_ _%probe104725%_)))
                        (if (eq? _%key104702%_ _%k104732%_)
                            (let ()
                              (vector-set!
                               _%table104706%_
                               _%probe104725%_
                               _%key104702%_)
                              (vector-set!
                               _%table104706%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104725%_ '1))
                               _%value104703%_))
                            (_%loop104722%_
                             (let ((_%next-probe104747%_
                                    (fx+ _%start104718%_
                                         _%i104727%_
                                         (fx* _%i104727%_ _%i104727%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104747%_
                                _%size104712%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104727%_ '1))
                             _%deleted104729%_))))))))))
    (define class-specializer-table-update!
      (lambda (_%tab104696%_
               _%key104697%_
               _%class-specializer-table-update!104698%_
               _%default104699%_)
        (if (let ((__tmp109531
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab104696%_)))
                  (__tmp109529
                   (let ((__tmp109530
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab104696%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp109530 '4))))
              (declare (not safe))
              (##fx< __tmp109531 __tmp109529))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab104696%_))
            '#!void)
        (__class-specializer-table-update!
         _%tab104696%_
         _%key104697%_
         _%class-specializer-table-update!104698%_
         _%default104699%_)))
    (define __class-specializer-table-update!
      (lambda (_%tab104646%_
               _%key104647%_
               _%class-specializer-table-update!104648%_
               _%default104649%_)
        (let ((_%table104652%_
               (let () (declare (not safe)) (&raw-table-table _%tab104646%_)))
              (_%seed104653%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104646%_))))
          (let* ((_%h104655%_
                  (fxxor (__class-specializer-hash-key _%key104647%_)
                         _%seed104653%_))
                 (_%size104658%_ (vector-length _%table104652%_))
                 (_%entries104661%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104658%_ '2)))
                 (_%start104664%_
                  (let ((__tmp109532
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104655%_ _%entries104661%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109532 '1))))
            (let _%loop104668%_ ((_%probe104671%_ _%start104664%_)
                                 (_%i104673%_ '1)
                                 (_%deleted104675%_ '#f))
              (let ((_%k104678%_ (vector-ref _%table104652%_ _%probe104671%_)))
                (if (eq? _%k104678%_ (macro-unused-obj))
                    (if _%deleted104675%_
                        (begin
                          (vector-set!
                           _%table104652%_
                           _%deleted104675%_
                           _%key104647%_)
                          (vector-set!
                           _%table104652%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted104675%_ '1))
                           (_%class-specializer-table-update!104648%_
                            _%default104649%_))
                          ((lambda ()
                             (let ((__tmp109533
                                    (let ((__tmp109534
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104646%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109534 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104646%_
                                __tmp109533)))))
                        (begin
                          (vector-set!
                           _%table104652%_
                           _%probe104671%_
                           _%key104647%_)
                          (vector-set!
                           _%table104652%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe104671%_ '1))
                           (_%class-specializer-table-update!104648%_
                            _%default104649%_))
                          ((lambda ()
                             (let ((__tmp109535
                                    (let ((__tmp109536
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-free _%tab104646%_))))
                                      (declare (not safe))
                                      (##fx- __tmp109536 '1))))
                               (declare (not safe))
                               (&raw-table-free-set!
                                _%tab104646%_
                                __tmp109535))
                             (let ((__tmp109537
                                    (let ((__tmp109538
                                           (let ()
                                             (declare (not safe))
                                             (&raw-table-count
                                              _%tab104646%_))))
                                      (declare (not safe))
                                      (##fx+ __tmp109538 '1))))
                               (declare (not safe))
                               (&raw-table-count-set!
                                _%tab104646%_
                                __tmp109537))))))
                    (if (eq? _%k104678%_ (macro-deleted-obj))
                        (_%loop104668%_
                         (let ((_%next-probe104685%_
                                (fx+ _%start104664%_
                                     _%i104673%_
                                     (fx* _%i104673%_ _%i104673%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104685%_ _%size104658%_))
                         (let () (declare (not safe)) (##fx+ _%i104673%_ '1))
                         (let ((_%$e104688%_ _%deleted104675%_))
                           (if _%$e104688%_ _%$e104688%_ _%probe104671%_)))
                        (if (eq? _%key104647%_ _%k104678%_)
                            (let ()
                              (vector-set!
                               _%table104652%_
                               _%probe104671%_
                               _%key104647%_)
                              (vector-set!
                               _%table104652%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104671%_ '1))
                               (_%class-specializer-table-update!104648%_
                                (vector-ref
                                 _%table104652%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe104671%_ '1))))))
                            (_%loop104668%_
                             (let ((_%next-probe104693%_
                                    (fx+ _%start104664%_
                                         _%i104673%_
                                         (fx* _%i104673%_ _%i104673%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104693%_
                                _%size104658%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104673%_ '1))
                             _%deleted104675%_))))))))))
    (define class-specializer-table-delete!
      (lambda (_%tab104601%_ _%key104603%_)
        (let ((_%table104606%_
               (let () (declare (not safe)) (&raw-table-table _%tab104601%_)))
              (_%seed104608%_
               (let () (declare (not safe)) (&raw-table-seed _%tab104601%_))))
          (let* ((_%h104611%_
                  (fxxor (__class-specializer-hash-key _%key104603%_)
                         _%seed104608%_))
                 (_%size104614%_ (vector-length _%table104606%_))
                 (_%entries104617%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size104614%_ '2)))
                 (_%start104620%_
                  (let ((__tmp109539
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h104611%_ _%entries104617%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp109539 '1))))
            (let _%loop104624%_ ((_%probe104627%_ _%start104620%_)
                                 (_%i104629%_ '1))
              (let ((_%k104632%_ (vector-ref _%table104606%_ _%probe104627%_)))
                (if (eq? _%k104632%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k104632%_ (macro-deleted-obj))
                        (_%loop104624%_
                         (let ((_%next-probe104637%_
                                (fx+ _%start104620%_
                                     _%i104629%_
                                     (fx* _%i104629%_ _%i104629%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe104637%_ _%size104614%_))
                         (let () (declare (not safe)) (##fx+ _%i104629%_ '1)))
                        (if (eq? _%key104603%_ _%k104632%_)
                            (let ()
                              (vector-set!
                               _%table104606%_
                               _%probe104627%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table104606%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe104627%_ '1))
                               (macro-absent-obj))
                              ((lambda ()
                                 (let ((__tmp109540
                                        (let ((__tmp109541
                                               (let ()
                                                 (declare (not safe))
                                                 (&raw-table-count
                                                  _%tab104601%_))))
                                          (declare (not safe))
                                          (##fx- __tmp109541 '1))))
                                   (declare (not safe))
                                   (&raw-table-count-set!
                                    _%tab104601%_
                                    __tmp109540)))))
                            (_%loop104624%_
                             (let ((_%next-probe104643%_
                                    (fx+ _%start104620%_
                                         _%i104629%_
                                         (fx* _%i104629%_ _%i104629%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe104643%_
                                _%size104614%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i104629%_ '1))))))))))))
    (define __class-specializers-mx (vector '0))
    (define __class-specializers (make-class-specializer-table__% '#f '0))
    (define __class-specializers-key (cons '#f '#f))
    (define specialize-class
      (lambda (_%klass104587%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass104587%_ 'class))
            (let ((_%klass104591%_ _%klass104587%_))
              (__specialize-class _%klass104591%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1025.25-1025.30"
               'contract:
               'class-type?
               'value:
               _%klass104587%_)
              '#!void))))
    (define __specialize-class
      (lambda (_%klass104569%_)
        (let* ((_%klass104572%_ _%klass104569%_)
               (_%$e104581%_ (__lookup-class-specializer _%klass104572%_)))
          (if _%$e104581%_
              _%$e104581%_
              (let ((_%method-table104585%_
                     (___specialize-class _%klass104572%_)))
                (__bind-class-specializer!
                 _%klass104572%_
                 _%method-table104585%_)
                _%method-table104585%_)))))
    (define __lookup-class-specializer
      (lambda (_%klass104559%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again104563%_ ()
            (if (let ((__tmp109542
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp109542 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again104563%_)))))
        (let ((_%method-table104567%_
               (class-specializer-table-ref
                __class-specializers
                _%klass104559%_
                '#f)))
          (let ()
            (declare (not safe))
            (##vector-cas! __class-specializers-mx '0 '0 '1))
          _%method-table104567%_)))
    (define __bind-class-specializer!
      (lambda (_%klass104550%_ _%method-table104551%_)
        (let ()
          (declare (not interrupts-enabled))
          (let _%again104555%_ ()
            (if (let ((__tmp109543
                       (let ()
                         (declare (not safe))
                         (##vector-cas! __class-specializers-mx '0 '1 '0))))
                  (declare (not safe))
                  (##fx= __tmp109543 '0))
                '#!void
                (begin
                  (let () (declare (not safe)) (##thread-yield!))
                  (_%again104555%_)))))
        (class-specializer-table-set!
         __class-specializers
         _%klass104550%_
         _%method-table104551%_)
        (let ()
          (declare (not safe))
          (##vector-cas! __class-specializers-mx '0 '0 '1))))
    (define __specialize-method
      (lambda (_%klass104534%_
               _%method-table104535%_
               _%method104536%_
               _%proc104537%_)
        (let ((_%$e104539%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table104535%_
                  _%method104536%_
                  '#f))))
          (if _%$e104539%_
              _%$e104539%_
              (let ((_%$e104542%_
                     (__lookup-method-specializer _%proc104537%_)))
                (if _%$e104542%_
                    ((lambda (_%specialize104545%_)
                       (let ((_%specialized-proc104547%_
                              (_%specialize104545%_
                               _%klass104534%_
                               _%method-table104535%_)))
                         (declare (not safe))
                         (symbolic-table-set!
                          _%method-table104535%_
                          _%method104536%_
                          _%specialized-proc104547%_)))
                     _%$e104542%_)
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table104535%_
                       _%method104536%_
                       _%proc104537%_))))))))
    (define ___specialize-class
      (lambda (_%klass104476%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass104476%_ 'class))
            (if (__class-type-metaclass? _%klass104476%_)
                (let ((__method109391
                       (__method-ref _%klass104476%_ 'specialize-class)))
                  (if __method109391
                      (let ()
                        (declare (not safe))
                        (__method109391 _%klass104476%_))
                      (begin
                        (error '"Missing method"
                               _%klass104476%_
                               'specialize-class)
                        '#!void)))
                (if (let ((__tmp109544
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%klass104476%_
                              '6
                              '#f
                              '#f))))
                      (declare (not safe))
                      (__find class-type-metaclass? __tmp109544))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass104476%_)
                    (let ((_%method-table104482%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop104484%_ ((_%rest104486%_
                                            (__class-precedence-list
                                             _%klass104476%_)))
                        (let* ((_%rest104487104495%_ _%rest104486%_)
                               (_%else104489104503%_
                                (lambda () _%method-table104482%_))
                               (_%K104491104522%_
                                (lambda (_%rest104506%_ _%xklass104507%_)
                                  (let ((_%xmethod-table104508104510%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass104507%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%xmethod-table104508104510%_
                                        (let* ((_%xmethod-table104513%_
                                                _%xmethod-table104508104510%_)
                                               (__tmp109545
                                                (lambda (_%g104514104517%_
                                                         _%g104515104519%_)
                                                  (__specialize-method
                                                   _%klass104476%_
                                                   _%method-table104482%_
                                                   _%g104514104517%_
                                                   _%g104515104519%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table104513%_
                                           __tmp109545))
                                        '#f))
                                  (_%loop104484%_ _%rest104506%_))))
                          (if (pair? _%rest104487104495%_)
                              (let ((_%hd104492104525%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest104487104495%_)))
                                    (_%tl104493104527%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest104487104495%_))))
                                (let* ((_%xklass104530%_ _%hd104492104525%_)
                                       (_%rest104532%_ _%tl104493104527%_))
                                  (_%K104491104522%_
                                   _%rest104532%_
                                   _%xklass104530%_)))
                              (_%else104489104503%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass104476%_))
                (__specialize-class (__shadow-class _%klass104476%_))
                (error '"bad class; cannot specialize" _%klass104476%_)))))
    (define seal-class!
      (lambda (_%klass104462%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass104462%_ 'class))
            (let ((_%klass104466%_ _%klass104462%_))
              (__seal-class! _%klass104466%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1082.20-1082.25"
               'contract:
               'class-type?
               'value:
               _%klass104462%_)
              '#!void))))
    (define __seal-class!
      (lambda (_%klass104445%_)
        (let ((_%klass104448%_ _%klass104445%_))
          (if (__class-type-sealed? _%klass104448%_)
              '#!void
              (begin
                (if (__class-type-final? _%klass104448%_)
                    '#!void
                    (error '"cannot seal non-final class" _%klass104448%_))
                (if (__class-type-metaclass? _%klass104448%_)
                    (let ((__method109392
                           (__method-ref _%klass104448%_ 'seal-class!)))
                      (if __method109392
                          (let ()
                            (declare (not safe))
                            (__method109392 _%klass104448%_))
                          (begin
                            (error '"Missing method"
                                   _%klass104448%_
                                   'seal-class!)
                            '#!void)))
                    (if (let ((__tmp109546
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass104448%_
                                  '6
                                  '#f
                                  '#f))))
                          (declare (not safe))
                          (__find class-type-metaclass? __tmp109546))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass104448%_)
                        (let ((_%method-table104460%_
                               (__specialize-class _%klass104448%_)))
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass104448%_
                           _%method-table104460%_
                           '11
                           '#f
                           '#f))))
                (__class-type-seal! _%klass104448%_))))))
    (define next-method
      (lambda (_%subklass104419%_ _%obj104420%_ _%id104421%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass104419%_ 'class))
            (let ((_%subklass104425%_ _%subklass104419%_))
              (if (symbol? _%id104421%_)
                  (let ((_%id104435%_ _%id104421%_))
                    (__next-method
                     _%subklass104425%_
                     _%obj104420%_
                     _%id104435%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1106.44-1106.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id104421%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1106.20-1106.28"
               'contract:
               'class-type?
               'value:
               _%subklass104419%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass104356%_ _%obj104357%_ _%id104358%_)
        (let* ((_%subklass104361%_ _%subklass104356%_)
               (_%id104369%_ _%id104358%_))
          (letrec ((_%find-next-method104378%_
                    (lambda (_%klass104380%_)
                      (let _%lp104382%_ ((_%rest104384%_
                                          (class-precedence-list
                                           _%klass104380%_)))
                        (let* ((_%rest104385104393%_ _%rest104384%_)
                               (_%else104387104401%_ (lambda () '#f))
                               (_%K104389104407%_
                                (lambda (_%rest104404%_ _%klass104405%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass104361%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass104405%_)))
                                      (__mixin-find-method
                                       _%rest104404%_
                                       _%obj104357%_
                                       _%id104369%_)
                                      (_%lp104382%_ _%rest104404%_)))))
                          (if (pair? _%rest104385104393%_)
                              (let ((_%hd104390104410%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest104385104393%_)))
                                    (_%tl104391104412%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest104385104393%_))))
                                (let* ((_%klass104415%_ _%hd104390104410%_)
                                       (_%rest104417%_ _%tl104391104412%_))
                                  (_%K104389104407%_
                                   _%rest104417%_
                                   _%klass104415%_)))
                              (_%else104387104401%_)))))))
            (_%find-next-method104378%_ (class-of _%obj104357%_))))))
    (define call-next-method
      (lambda (_%subklass104329%_ _%obj104330%_ _%id104331%_ . _%args104332%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass104329%_ 'class))
            (let ((_%subklass104336%_ _%subklass104329%_))
              (if (symbol? _%id104331%_)
                  (let ((_%id104346%_ _%id104331%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass104336%_
                             _%obj104330%_
                             _%id104346%_
                             _%args104332%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1117.49-1117.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id104331%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1117.25-1117.33"
               'contract:
               'class-type?
               'value:
               _%subklass104329%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass104300%_ _%obj104301%_ _%id104302%_ . _%args104303%_)
        (let* ((_%subklass104306%_ _%subklass104300%_)
               (_%id104314%_ _%id104302%_)
               (_%$e104323%_
                (__next-method _%subklass104306%_ _%obj104301%_ _%id104314%_)))
          (if _%$e104323%_
              ((lambda (_%methodf104326%_)
                 (apply _%methodf104326%_ _%obj104301%_ _%args104303%_))
               _%$e104323%_)
              (error '"cannot find next method"
                     'object:
                     _%obj104301%_
                     'method:
                     _%id104314%_)))))
    (define write-style
      (lambda (_%we104298%_) (values (macro-writeenv-style _%we104298%_))))
    (define write-object
      (lambda (_%we104289%_ _%obj104290%_)
        (let ((_%$e104292%_ (__method-ref _%obj104290%_ ':wr)))
          (if _%$e104292%_
              ((lambda (_%method104295%_)
                 (_%method104295%_ _%obj104290%_ _%we104289%_))
               _%$e104292%_)
              (let ()
                (declare (not safe))
                (##default-wr _%we104289%_ _%obj104290%_))))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-mx (vector '0))
    (define __shadow-class
      (lambda (_%type104204%_)
        (letrec ((_%shadow-type-id104206%_
                  (lambda (_%type104287%_)
                    (let ((__tmp109547
                           (let ()
                             (declare (not safe))
                             (##type-name _%type104287%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp109547 '"::t"))))
                 (_%shadow-type-name104207%_
                  (lambda (_%type104285%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type104285%_))))
                 (_%make-shadow-class104208%_
                  (lambda (_%type104277%_ _%precedence-list104278%_)
                    (let* ((_%super104280%_
                            (if (pair? _%precedence-list104278%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list104278%_))
                                      '())
                                '()))
                           (_%klass104282%_
                            (make-class-type
                             (_%shadow-type-id104206%_ _%type104277%_)
                             (let ()
                               (declare (not safe))
                               (##type-name _%type104277%_))
                             _%super104280%_
                             '()
                             (cons (cons 'struct: '#t)
                                   (cons (cons 'system: '#t)
                                         (if (__type-extensible?
                                              _%type104277%_)
                                             '()
                                             (cons (cons 'final: '#t) '()))))
                             '#f)))
                      (let ((__tmp109548
                             (let ()
                               (declare (not safe))
                               (##type-id _%type104277%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp109548
                         _%klass104282%_))
                      _%klass104282%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again104212%_ ()
              (if (let ((__tmp109549
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-mx '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp109549 '0))
                  '#!void
                  (begin
                    (let () (declare (not safe)) (##thread-yield!))
                    (_%again104212%_)))))
          (let ((_%$e104216%_
                 (let ((__tmp109550
                        (let ()
                          (declare (not safe))
                          (##type-id _%type104204%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp109550 '#f))))
            (if _%$e104216%_
                ((lambda (_%klass104219%_)
                   (let ()
                     (declare (not safe))
                     (##vector-cas! __shadow-classes-mx '0 '0 '1))
                   _%klass104219%_)
                 _%$e104216%_)
                (let _%loop104222%_ ((_%super104224%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type104204%_)))
                                     (_%hierarchy104225%_ '()))
                  (if (not _%super104224%_)
                      (let _%loop104228%_ ((_%rest104230%_ _%hierarchy104225%_)
                                           (_%precedence-list104231%_ '()))
                        (let* ((_%rest104232104240%_ _%rest104230%_)
                               (_%else104234104250%_
                                (lambda ()
                                  (let ((_%klass104248%_
                                         (_%make-shadow-class104208%_
                                          _%type104204%_
                                          _%precedence-list104231%_)))
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __shadow-classes-mx
                                       '0
                                       '0
                                       '1))
                                    _%klass104248%_)))
                               (_%K104236104264%_
                                (lambda (_%rest104253%_ _%type104254%_)
                                  (let ((_%$e104256%_
                                         (let ((__tmp109551
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type104254%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp109551
                                            '#f))))
                                    (if _%$e104256%_
                                        ((lambda (_%klass104259%_)
                                           (_%loop104228%_
                                            _%rest104253%_
                                            (cons _%klass104259%_
                                                  _%precedence-list104231%_)))
                                         _%$e104256%_)
                                        (let ((_%klass104262%_
                                               (_%make-shadow-class104208%_
                                                _%type104254%_
                                                _%precedence-list104231%_)))
                                          (_%loop104228%_
                                           _%rest104253%_
                                           (cons _%klass104262%_
                                                 _%precedence-list104231%_))))))))
                          (if (pair? _%rest104232104240%_)
                              (let ((_%hd104237104267%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%rest104232104240%_)))
                                    (_%tl104238104269%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%rest104232104240%_))))
                                (let* ((_%type104272%_ _%hd104237104267%_)
                                       (_%rest104274%_ _%tl104238104269%_))
                                  (_%K104236104264%_
                                   _%rest104274%_
                                   _%type104272%_)))
                              (_%else104234104250%_))))
                      (_%loop104222%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super104224%_))
                       (cons _%super104224%_ _%hierarchy104225%_)))))))))
    (define __type
      (let* ((_%tb104193%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e104195%_ _%tb104193%_))
        (if (eq? '2 _%$e104195%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e104195%_)
                (let ((_%flonum-self-tagging-tags104198%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits104199%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e104201%_ _%flonum-self-tagging-tags104198%_))
                    (if (eq? '0 _%$e104201%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits104199%_ '2))
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
                        (if (eq? '1 _%$e104201%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits104199%_ '2))
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
                            (if (eq? '2 _%$e104201%_)
                                '#(fixnum
                                   subtyped
                                   flonum
                                   flonum
                                   special
                                   pair
                                   flonum
                                   undefined)
                                (if (eq? '3 _%$e104201%_)
                                    '#(fixnum
                                       subtyped
                                       flonum
                                       flonum
                                       special
                                       pair
                                       flonum
                                       flonum)
                                    (if (eq? '4 _%$e104201%_)
                                        '#(fixnum
                                           subtyped
                                           flonum
                                           flonum
                                           special
                                           pair
                                           flonum
                                           flonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags104198%_))))))))
                (error '"unexpected tag width" _%tb104193%_)))))
    (define __class
      (let* ((_%len104146%_
              (let () (declare (not safe)) (##vector-length __type)))
             (_%cv104148%_
              (let () (declare (not safe)) (##make-vector _%len104146%_ '#f))))
        (let _%loop104151%_ ((_%i104153%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i104153%_ _%len104146%_))
              (let* ((_%t104155%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i104153%_)))
                     (_%f104190%_
                      (if (eq? _%t104155%_ 'undefined)
                          (lambda (_%obj104158%_)
                            (error '"object type is undefined" _%obj104158%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t104155%_
                                        '(fixnum flonum pair vector)))
                              (lambda (_%obj104161%_)
                                (declare (not interrupts-enabled) (not safe))
                                (__system-class _%t104155%_))
                              (if (eq? _%t104155%_ 'subtyped)
                                  (lambda (_%obj104165%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st104168%_
                                           (##subtype _%obj104165%_)))
                                      (if (##fx= _%st104168%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass104171%_
                                                 (##structure-type
                                                  _%obj104165%_)))
                                            (if (##structure-instance-of?
                                                 _%klass104171%_
                                                 'class)
                                                _%klass104171%_
                                                (__shadow-class
                                                 _%klass104171%_)))
                                          (if (##fx= _%st104168%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj104165%_)
                                                         '1)
                                                  (__system-class 'box)
                                                  (__system-class 'values))
                                              (let ((_%$e104174%_
                                                     (##vector-ref
                                                      __subtype-id
                                                      _%st104168%_)))
                                                (if _%$e104174%_
                                                    (__system-class
                                                     _%$e104174%_)
                                                    (error '"unknown class"
                                                           'subtype:
                                                           _%st104168%_
                                                           'object:
                                                           _%obj104165%_)))))))
                                  (if (eq? _%t104155%_ 'special)
                                      (lambda (_%obj104179%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (if (char? _%obj104179%_)
                                            (__system-class 'char)
                                            (if (eq? _%obj104179%_ '())
                                                (__system-class 'null)
                                                (if (eq? _%obj104179%_ '#f)
                                                    (__system-class 'boolean)
                                                    (if (eq? _%obj104179%_ '#t)
                                                        (__system-class
                                                         'boolean)
                                                        (if (eq? _%obj104179%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '#!void)
                    (__system-class 'void)
                    (if (eq? _%obj104179%_ '#!eof)
                        (__system-class 'eof)
                        (__system-class 'special))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t104155%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv104148%_ _%i104153%_ _%f104190%_))
                (_%loop104151%_
                 (let () (declare (not safe)) (##fx+ _%i104153%_ '1))))
              _%cv104148%_))))
    (define type-of
      (lambda (_%obj104142%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj104142%_)))))
    (define class-of
      (lambda (_%obj104133%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t104137%_ (##type _%obj104133%_))
                 (_%f104139%_ (##vector-ref __class _%t104137%_)))
            (_%f104139%_ _%obj104133%_)))))
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
      (lambda (_%id104127%_)
        (let ((_%$e104129%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id104127%_ '#f))))
          (if _%$e104129%_
              _%$e104129%_
              (error '"unknown system class" _%id104127%_)))))
    (define __make-system-class
      (lambda (_%id104122%_ _%super104123%_)
        (let ((_%klass104125%_
               (make-class-type
                _%id104122%_
                _%id104122%_
                _%super104123%_
                '()
                '((system: . #t))
                '#f)))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id104122%_
             _%klass104125%_))
          _%klass104125%_)))))
